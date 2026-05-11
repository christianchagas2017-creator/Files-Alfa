PointsRanking = {}

function PointsRanking.Init()
    if PointsRanking_Config.Enabled then
        GameServerFunctions.GameServerProtocol(PointsRanking.Protocol)
    end
end

function PointsRanking.SendOpen(playerInfo)
    local saldo, acumulado = PointsRanking.GetSaldo(playerInfo)

    db:exec("SELECT TOP 3 Name, MasterResetCount from Character order by MasterResetCount desc, Name desc")


    local topTres = {}

    while db:fetch() ~= 100 do
        local nome = db:getStr("Name")
        local total = db:getInt("MasterResetCount")  
        table.insert(topTres, {Nome = nome, Total = total})
    end

    db:clear()
    local PacketName = string.format("2-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, PointsRanking_Config.Packet)
    SetDwordPacket(PacketName, saldo)
    SetDwordPacket(PacketName, acumulado)
	--SetBytePacket(PacketName, #PointsRanking_Config.Itens)
    --for k, item in ipairs(PointsRanking_Config.Itens) do
    --    SetWordPacket(PacketName, item.Price)
    --    SetWordPacket(PacketName, item.ItemIndex)
    --    SetBytePacket(PacketName, item.Level)
    --    SetBytePacket(PacketName, item.Dur)
    --    SetBytePacket(PacketName, item.Skill)
    --    SetBytePacket(PacketName, item.Luck)
    --    SetBytePacket(PacketName, item.Opt)
    --    SetBytePacket(PacketName, item.Exc)
    --    SetBytePacket(PacketName, item.Ancient)
    --    SetBytePacket(PacketName, item.Harmony)
    --    local nLen = item.Name:len()
    --    SetBytePacket(PacketName, nLen)
    --    SetCharPacketLength(PacketName, item.Name, nLen)
    --    SetBytePacket(PacketName, item.X)
    --    SetBytePacket(PacketName, item.Y)
    --    nLen = item.Size:len()
    --    SetBytePacket(PacketName, nLen)
    --    SetCharPacketLength(PacketName, item.Size, nLen)
    --end
    for i, info in ipairs(topTres) do
		local nLen = info.Nome:len()
		SetBytePacket(PacketName, nLen)
		SetCharPacketLength(PacketName, info.Nome, nLen)
		SetDwordPacket(PacketName, info.Total)
    end
		
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function PointsRanking.GetSaldo(playerInfo)
    local saldo = DataBase.GetValue("Character", PointsRanking_Config.Saldo, "Name", playerInfo[1])
    local acumulado = DataBase.GetValue("Character", PointsRanking_Config.Acumulado, "Name", playerInfo[1])

    return saldo, acumulado
end

function PointsRanking.Buy(playerInfo, itemId)
    local saldo, acumulado = PointsRanking.GetSaldo(playerInfo)

    local PacketName = string.format("4-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, PointsRanking_Config.Packet)

    local item = PointsRanking_Config.Itens[itemId]

    if item == nil then
        SetBytePacket(PacketName, 1)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
        return
    end

    if saldo < item.Price then
        SetBytePacket(PacketName, 0)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
        return
    end

    if InventoryCheckSpaceByItem(playerInfo[2], item.ItemIndex) == 0 then
		SetBytePacket(PacketName, 1)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
		return
	end

    DataBase.SetDecreaseValue("Character", PointsRanking_Config.Saldo, item.Price, "Name", playerInfo[1])

    CreateItemInventory(playerInfo[2], item.ItemIndex, item.Level, item.Dur, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, item.Harmony, 255, 255, 255, 255, 255, 255, 0)

    saldo = saldo - item.Price
    SetBytePacket(PacketName, 2)
    SetDwordPacket(PacketName, saldo)
    SetDwordPacket(PacketName, acumulado)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function PointsRanking.Protocol(aIndex, Packet, PacketName)

		
    if Packet ~= PointsRanking_Config.Packet then return end

    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if PacketName == string.format("1-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        PointsRanking.SendOpen(playerInfo)
        return true
    end

    if PacketName == string.format("3-%s-%d", playerInfo[1], aIndex) then
        local itemId = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        PointsRanking.Buy(playerInfo, itemId)
        return true
    end
end

PointsRanking.Init()

return PointsRanking