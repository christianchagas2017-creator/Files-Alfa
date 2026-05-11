PacotePromo = {}

function PacotePromo.Init()
    if PacotePromo_Config.Enabled then
        GameServerFunctions.GameServerProtocol(PacotePromo.Protocol)
        GameServerFunctions.NpcTalk(PacotePromo.NpcTalk)
        GameServerFunctions.MonsterReload(PacotePromo.FixNpc)
        Timer.Interval(60, PacotePromo.FixNpc)
    end
end

function PacotePromo.IsGiroNpc(monster)
    for i in ipairs(PacotePromo_Config.Npc) do
        if monster:getClass() == PacotePromo_Config.Npc[i].Class then
            if monster:getMapNumber() == PacotePromo_Config.Npc[i].Map and monster:getX() == PacotePromo_Config.Npc[i].PosX and monster:getY() == PacotePromo_Config.Npc[i].PosY then
                return PacotePromo_Config.Npc[i].Pacote
            end
        end
    end

    return -1
end

function PacotePromo.FixNpc()
    for aIndex = 0, 12000 do
        local monster = User.new(aIndex)
        if monster:getConnected() > 0 then
            for i in ipairs(PacotePromo_Config.Npc) do
                if monster:getClass() == PacotePromo_Config.Npc[i].Class then
                    monster:setType(3)
                end
            end
        end
        monster = nil
    end
end

function PacotePromo.NpcTalk(NpcIndex, PlayerIndex)
    local monster = User.new(NpcIndex)

    local pacoteList = PacotePromo.IsGiroNpc(monster)

    if pacoteList == -1 then return 0 end

    local player = User.new(PlayerIndex)

    local lastclick = player:getCacheInt("promoNpcOpenLastClick")
    local currentTime = os.time()
    if currentTime-lastclick < 5 then
        ChatTargetSend(NpcIndex, "Aguarde alguns segundos", PlayerIndex)
        return 1
    end

    PacotePromo.SendOpen(player, pacoteList)
    return 1
end

function PacotePromo.Protocol(aIndex, Packet, PacketName)

    if Central.CheckPlayer(aIndex) == 1 then
        local player = User.new(aIndex)
        local Language = player:getLanguage()
        SendMessage("Computador não permitido na Central de Segurança!", aIndex, 25)
        return 1
    end
	
	
    if Packet ~= PacotePromo_Config.Packet then return false end

    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if PacketName == string.format("4-%d-%s", playerInfo[2], playerInfo[1]) then
        local pacoteIndex = GetBytePacket(PacketName, -1)
        local pacoteList = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        PacotePromo.SendItemList(player, pacoteIndex, pacoteList)
        return true
    end

    if PacketName == string.format("6-%d-%s", playerInfo[2], playerInfo[1]) then
        local pacoteIndex = GetBytePacket(PacketName, -1)
        local pacoteList = GetBytePacket(PacketName, -1)
        local quantidade = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        PacotePromo.BuyPackage(player, pacoteList, pacoteIndex, quantidade)
        return true
    end
	
	if PacketName == string.format("8-%d-%s", playerInfo[2], playerInfo[1]) then
        ClearPacket(PacketName)
        PacotePromo.SendOpen(player, 1)
        return true
    end
	
	
end

function PacotePromo.SendOpen(player, pacoteList)


    local playerInfo = Utils.GetPlayerInfo(player)
    local packetName = string.format("1-%d-%s", playerInfo[2], playerInfo[1])

    CreatePacket(packetName, PacotePromo_Config.Packet)
    SetBytePacket(packetName, pacoteList)
    SetBytePacket(packetName, #PacotePromo_Config.Pacotes[pacoteList])
    for i, pacote in ipairs(PacotePromo_Config.Pacotes[pacoteList]) do
        SetBytePacket(packetName, pacote.IndexPacote)       
        local len = pacote.Nome:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, pacote.Nome, len)
        len = pacote.Disponibilidade:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, pacote.Disponibilidade, len)
        len = pacote.Custo:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, pacote.Custo, len)
    end
    SendPacket(packetName, playerInfo[2])
    ClearPacket(packetName)
end

function PacotePromo.SendItemList(player, pacoteIndex, pacoteList)
    local playerInfo = Utils.GetPlayerInfo(player)
    local packetName = string.format("3-%d-%s", playerInfo[2], playerInfo[1])
    CreatePacket(packetName, PacotePromo_Config.Packet)
    SetBytePacket(packetName, pacoteList)
    SetBytePacket(packetName, #PacotePromo_Config.Itens[pacoteList][pacoteIndex])
    for i, item in ipairs(PacotePromo_Config.Itens[pacoteList][pacoteIndex]) do
        SetBytePacket(packetName, item.Qtd)
        SetWordPacket(packetName, item.ItemIndex)
        SetBytePacket(packetName, item.Level)
        SetBytePacket(packetName, item.Dur)
        SetBytePacket(packetName, item.Skill)
        SetBytePacket(packetName, item.Luck)
        SetBytePacket(packetName, item.JoL)
        SetBytePacket(packetName, item.Exc)
        SetBytePacket(packetName, item.Days)

        local len = item.PosX:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, item.PosX, len)

        len = item.PosY:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, item.PosY, len)

        len = item.Width:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, item.Width, len)

        len = item.Height:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, item.Height, len)

        len = item.Size:len()
        SetBytePacket(packetName, len)
        SetCharPacketLength(packetName, item.Size, len)
    end
    SendPacket(packetName, playerInfo[2])
    ClearPacket(packetName)
end

function PacotePromo.BuyPackage(player, pacoteList, pacoteIndex, quantidade)
    local playerInfo = Utils.GetPlayerInfo(player)
    local pacote = PacotePromo_Config.Pacotes[pacoteList][pacoteIndex]

    local saldo = DataBase.GetValue(PacotePromo_Config.Moeda.Tabela,PacotePromo_Config.Moeda.Coluna, PacotePromo_Config.Moeda.Where, playerInfo[PacotePromo_Config.Moeda.IdType])
    saldo = math.floor(saldo * 100 + 0.5) / 100

    if saldo < (tonumber(pacote.Custo)*quantidade) then
        local packetName = string.format("5-%d-%s", playerInfo[2], playerInfo[1])
        CreatePacket(packetName, PacotePromo_Config.Packet)
        SendPacket(packetName, playerInfo[2])
        ClearPacket(packetName)
        return
    end

    if pacote.UseAddPremio then
        local Codigo = GuardiaoBrindes.GerarCodigo()
	    if Codigo == "-1" then
	    	local packetName = string.format("5-%d-%s", playerInfo[2], playerInfo[1])
            CreatePacket(packetName, PacotePromo_Config.Packet)
            SendPacket(packetName, playerInfo[2])
            ClearPacket(packetName)
	    	return
	    end

        --for q = 1, quantidade do
	    --    GuardiaoBrindes.RegistrarCodigo(AddPremio_Config.Promotions[pacote.AddPremio].Nome, playerInfo[0], Codigo, AddPremio_Config.Promotions[pacote.AddPremio].TemValidade, AddPremio_Config.Promotions[pacote.AddPremio].Dias)
	    --    GuardiaoBrindes.RegistrarItens(Codigo, AddPremio_Config.Reward[AddPremio_Config.Promotions[pacote.AddPremio].IdPremio])
        --end
    else
        for q = 1, quantidade do
            for i, item in ipairs(PacotePromo_Config.Itens[pacoteList][pacote.IndexPacote]) do
                NpcRescueItem.InsertItem(playerInfo[0], item.ItemIndex, item.Level, item.Dur, item.Skill, item.Luck, item.JoL, item.Exc, item.Ancient, 0, item.Days)
            end
        end

    end

    DataBaseAsync.SetDecreaseValue(PacotePromo_Config.Moeda.Tabela,PacotePromo_Config.Moeda.Coluna, (tonumber(pacote.Custo)*quantidade), PacotePromo_Config.Moeda.Where, playerInfo[PacotePromo_Config.Moeda.IdType])

	--if AddPremio_Config.Log then
	--	local dia = os.date("%Y-%m-%d")
	--	local hora = os.date("%H:%M:%S")
	--	local file = io.open(string.format("LOGS\\PREMIOS_LOG\\PACOTE_LOG\\%s.txt", dia), 'a')
	--	file:write(string.format("\n%s [%s][%s] comprou %d pacote %s", hora, playerInfo[0], playerInfo[1], quantidade, pacote.Nome))
	--	file:close()
	--end

    local packetName = string.format("7-%d-%s", playerInfo[2], playerInfo[1])
    CreatePacket(packetName, PacotePromo_Config.Packet)
    if pacote.UseAddPremio then
        SetBytePacket(packetName, 1)
    else
        SetBytePacket(packetName, 2)
    end
    SendPacket(packetName, playerInfo[2])
    ClearPacket(packetName)
end

PacotePromo.Init()

return PacotePromo