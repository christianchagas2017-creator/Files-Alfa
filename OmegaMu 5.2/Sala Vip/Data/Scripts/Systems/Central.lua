Central = {}

function Central.Init()
    if Central_Config.Enabled then
        GameServerFunctions.GameServerProtocol(Central.Protocol)
        GameServerFunctions.QueryAsyncProcess(Central.QueryProcess)
        GameServerFunctions.EnterCharacter(Central.EnterCharacter)
        GameServerFunctions.PlayerLogout(Central.PlayerLogout)
        GameServerFunctions.DeleteCharacter(Central.DeleteCharacter)
    end
end

function Central.EnterCharacter(aIndex)
    local player = User.new(aIndex)

    local ativado = Central.GetCurrentState(player)

    if ativado >= 1 then
        Central.SendDeviceList(player)

        if ativado == 1 then
            local first = DataBase.GetValue("MEMB_STAT", "FirstLogin", "memb___id", player:getAccountID())
            if first == 1 then
                DataBase.SetValue("MEMB_STAT", "FirstLogin", 0, "memb___id", player:getAccountID())
                local PacketName = string.format("12-%s-%d", player:getName(), aIndex)
                CreatePacket(PacketName, Central_Config.Packet)
                SendPacket(PacketName, aIndex)
                ClearPacket(PacketName)
            end
        end
    end
end

function Central.DeleteCharacter(aIndex, Name)
    if Central.CheckPlayer(aIndex) == 1 then
		return 1
	end

    return 0
end

function Central.PlayerLogout(aIndex)
    local player = User.new(aIndex)
    local ativado = Central.GetCurrentState(player)

    if ativado >= 1 then
        if ativado == 1 then
            Timer.TimeOut(30, Central.ResetLoginWarning, player:getAccountID())
        end
    end
end

function Central.ResetLoginWarning(login)
    DataBase.SetValue("MEMB_STAT", "FirstLogin", 1, "memb___id",login)
end

function Central.SendDeviceList(player)
    local playerInfo = Utils.GetPlayerInfo(player)

    local query = string.format("SELECT top 5 HWID, IP, APELIDO FROM CentralDevices WHERE AccountID = '%s'", playerInfo[0])
    
    CreateAsyncQuery('SendDeviceList', query, playerInfo[2], 1)
end

function Central.SendOpenCentral(player)
    local playerInfo = Utils.GetPlayerInfo(player)

    local query = string.format("SELECT top 5 HWID, IP, APELIDO FROM CentralDevices WHERE AccountID = '%s'", playerInfo[0])
    
    CreateAsyncQuery('SendOpenCentral', query, playerInfo[2], 1)
end

function Central.GetCurrentDevice(player)
    local hwid = DataBase.GetString("MEMB_STAT", "HWID", "memb___id", player:getAccountID())
    return hwid
end

function Central.CheckPlayer(aIndex)
    local player = User.new(aIndex)

   return Central.GetCurrentState(player)
end

function Central.QueryProcess(QueryName, QueryID, aIndex)
    if QueryName == "SendDeviceList" or QueryName == "SendOpenCentral" then
        local player = User.new(aIndex)
        if player:getConnected() < 3 then
            QueryAsyncDelete(QueryID)
            return 1
        end
        
        local playerInfo = Utils.GetPlayerInfo(player)
        local devices = {}

        for pc = 1, 5 do
            local hwid = QueryAsyncGetValue(QueryID, 'HWID')
            local ip = QueryAsyncGetValue(QueryID, 'IP')
            local apelido = QueryAsyncGetValue(QueryID, 'APELIDO')

            if hwid == nil or hwid == "nil" or ip == nil or ip== "nil" or apelido == nil or apelido == "nil" then
                break
            end

            table.insert(devices, {HWID = hwid, IP = ip, APELIDO = apelido, Current = 0})
        end

        QueryAsyncDelete(QueryID)

        local currentDevice = Central.GetCurrentDevice(player)

        for i in ipairs(devices) do
           if devices[i].HWID == currentDevice then
               devices[i].Current = 1
           end
        end

        local status = Central.GetCurrentState(player)

        local packetnumber = 3
        if QueryName == "SendOpenCentral" then
            packetnumber = 2
        end
        
        local PacketName = string.format("%d-%s-%d", packetnumber, playerInfo[1], aIndex)
        CreatePacket(PacketName, Central_Config.Packet)
        SetBytePacket(PacketName, status)
        SetBytePacket(PacketName, #devices)
        for i in ipairs(devices) do
            SetBytePacket(PacketName, devices[i].Current)
            local len = devices[i].HWID:len()
            SetBytePacket(PacketName, len)
            SetCharPacketLength(PacketName, devices[i].HWID, len)
            len = devices[i].IP:len()
            SetBytePacket(PacketName, len)
            SetCharPacketLength(PacketName, devices[i].IP, len)
            len = devices[i].APELIDO:len()
            SetBytePacket(PacketName, len)
            SetCharPacketLength(PacketName, devices[i].APELIDO, len)
        end
        SendPacket(PacketName, aIndex)
        ClearPacket(PacketName)

        return 1
    end

    return 0
end

function Central.GetCurrentState(player)
    local ativado = DataBase.GetValue("MEMB_INFO", "CentralAtivada", "memb___id", player:getAccountID())

    if ativado == 0 then return 0 end

    local currentDevice = Central.GetCurrentDevice(player)

    local isSafe = DataBase.QueryGetString(string.format("SELECT APELIDO FROM CentralDevices WHERE HWID = '%s' and AccountID = '%s'", currentDevice, player:getAccountID()), "APELIDO")

    if isSafe == nil or isSafe == "" then
        return 1
    else
        return 2
    end
end

function Central.RegisterPassword(player, playerInfo, senha)
    if Central.GetCurrentState(player) == 0 then
        DataBase.SetValue("MEMB_INFO", "CentralAtivada", 1, "memb___id", playerInfo[0])
    end
    DataBase.SetString("MEMB_INFO", "CentralSenha", senha, "memb___id", playerInfo[0])
end

function Central.ChangePassword(playerInfo, senhaantiga, novasenha)
    local senhaatual = DataBase.GetString("MEMB_INFO", "CentralSenha", "memb___id", playerInfo[0])

    local statuschange = 0
    if senhaatual == senhaantiga then
        DataBase.SetString("MEMB_INFO", "CentralSenha", novasenha, "memb___id", playerInfo[0])
        statuschange = 1
    end
    local PacketName = string.format("6-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, Central_Config.Packet)
    SetBytePacket(PacketName, statuschange)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function Central.RegisterDevice(player, playerInfo, apelido, senha)
    local currentDevice = Central.GetCurrentDevice(player)
    local ip = DataBase.GetString("MEMB_STAT", "IP", "memb___id", playerInfo[0])
    local senhaatual = DataBase.GetString("MEMB_INFO", "CentralSenha", "memb___id", playerInfo[0])

    local statuschange = 0

    if senha == senhaatual then        
        statuschange = 1
        DataBase.Query(string.format("IF NOT EXISTS(SELECT APELIDO FROM CentralDevices WHERE HWID = '%s' and AccountID = '%s') BEGIN INSERT INTO CentralDevices (AccountID, HWID, IP, Apelido) values ('%s', '%s', '%s', '%s') END", currentDevice, playerInfo[0], playerInfo[0], currentDevice, ip, apelido))
    end

    local PacketName = string.format("8-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, Central_Config.Packet)
    SetBytePacket(PacketName, statuschange)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function Central.DeleteDevice(playerInfo, hwid, senha)
    local senhaatual = DataBase.GetString("MEMB_INFO", "CentralSenha", "memb___id", playerInfo[0])

    local statuschange = 0

    if senha == senhaatual then 
        local hwidexistente = DataBase.GetString("CentralDevices", "APELIDO", "HWID", hwid)

        if hwidexistente == "We could not find" then
            statuschange = 0
        else
            DataBase.Query(string.format("DELETE FROM CentralDevices where HWID = '%s' and AccountID = '%s'", hwid, playerInfo[0]))
            statuschange = 1
        end
    end

    local PacketName = string.format("11-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, Central_Config.Packet)
    SetBytePacket(PacketName, statuschange)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function Central.Protocol(aIndex, Packet, PacketName)
    if Packet ~= Central_Config.Packet then return false end

    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if PacketName == string.format("1-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        Central.SendOpenCentral(player)
        return true
    end

    if PacketName == string.format("4-%s-%d", playerInfo[1], aIndex) then
        local len = GetBytePacket(PacketName, -1)
        local apelido = GetCharPacketLength(PacketName, -1, len)
        len = GetBytePacket(PacketName, -1)
        local senha = GetCharPacketLength(PacketName, -1, len)
        ClearPacket(PacketName)

        Central.RegisterPassword(player, playerInfo, senha)
        Central.RegisterDevice(player, playerInfo, apelido, senha)

        Central.SendDeviceList(player)
        return true
    end

    if PacketName == string.format("5-%s-%d", playerInfo[1], aIndex) then
        local len = GetBytePacket(PacketName, -1)
        local senhaantiga = GetCharPacketLength(PacketName, -1, len)
        len = GetBytePacket(PacketName, -1)
        local novasenha = GetCharPacketLength(PacketName, -1, len)
        ClearPacket(PacketName)

        Central.ChangePassword(playerInfo, senhaantiga, novasenha)
        return true
    end

    if PacketName == string.format("7-%s-%d", playerInfo[1], aIndex) then
        local len = GetBytePacket(PacketName, -1)
        local apelido = GetCharPacketLength(PacketName, -1, len)
        len = GetBytePacket(PacketName, -1)
        local senha = GetCharPacketLength(PacketName, -1, len)
        ClearPacket(PacketName)


        Central.RegisterDevice(player, playerInfo, apelido, senha)
        return true
    end

    if PacketName == string.format("9-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        Central.SendDeviceList(player)
        return true
    end

    if PacketName == string.format("10-%s-%d", playerInfo[1], aIndex) then
        local len = GetBytePacket(PacketName, -1)
        local senha = GetCharPacketLength(PacketName, -1, len)
        len = GetBytePacket(PacketName, -1)
        local hwid = GetCharPacketLength(PacketName, -1, len)
        ClearPacket(PacketName)

        Central.DeleteDevice(playerInfo, hwid, senha)
        return true
    end
end

Central.Init()

return Central