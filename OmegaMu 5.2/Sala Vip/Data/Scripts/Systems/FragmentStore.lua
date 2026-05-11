FragmentStore = {}

function FragmentStore.Init()
    if FragmentStore_Config.Enabled then
        GameServerFunctions.GameServerProtocol(FragmentStore.Protocol)
        GameServerFunctions.NpcTalk(FragmentStore.NpcTalk)
        FragmentStore.FixNpc()
        Timer.Interval(30, FragmentStore.FixNpc)
    end
end

function FragmentStore.NpcTalk(Npc, Player)
    local monster = User.new(Npc)

    local class = monster:getClass()

    if class ~= FragmentStore_Config.Npc.Class then return 0 end

    local map = monster:getMapNumber()

    if map ~= FragmentStore_Config.Npc.Map then return 0 end

    local x = monster:getX()

    if x < FragmentStore_Config.Npc.PosX or x > FragmentStore_Config.Npc.PosX then return 0 end

    local y = monster:getY()

    if y < FragmentStore_Config.Npc.PosY or y > FragmentStore_Config.Npc.PosY then return 0 end

    FragmentStore.SendOpen(Player)

    return 1
end

function FragmentStore.SendOpen(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local saldo = FragmentStore.GetSaldo(playerInfo)

    local PacketName = string.format("2-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, FragmentStore_Config.Packet)
    SetDwordPacket(PacketName, saldo)
    SetBytePacket(PacketName, #FragmentStore_Config.Itens)
    for k, item in ipairs(FragmentStore_Config.Itens) do
        SetWordPacket(PacketName, item.Price)
        SetWordPacket(PacketName, item.ItemIndex)
        SetBytePacket(PacketName, item.Level)
        SetBytePacket(PacketName, item.Dur)
        SetBytePacket(PacketName, item.Skill)
        SetBytePacket(PacketName, item.Luck)
        SetBytePacket(PacketName, item.Opt)
        SetBytePacket(PacketName, item.Exc)
        SetBytePacket(PacketName, item.Ancient)
        SetBytePacket(PacketName, item.Harmony)
        local nLen = item.Name:len()
        SetBytePacket(PacketName, nLen)
        SetCharPacketLength(PacketName, item.Name, nLen)
        SetBytePacket(PacketName, item.X)
        SetBytePacket(PacketName, item.Y)
        nLen = item.Size:len()
        SetBytePacket(PacketName, nLen)
        SetCharPacketLength(PacketName, item.Size, nLen)
    end
    --Item Register
    --SetWordPacket(PacketName, FragmentStore_Config.FragmentItem)
    SetWordPacket(PacketName, FragmentStore_Config.FragmentItem.ItemIndex)
    SetBytePacket(PacketName, FragmentStore_Config.FragmentItem.X)
    SetBytePacket(PacketName, FragmentStore_Config.FragmentItem.Y)
    local nLen = FragmentStore_Config.FragmentItem.Size:len()
    SetBytePacket(PacketName, nLen)
    SetCharPacketLength(PacketName, FragmentStore_Config.FragmentItem.Size, nLen)

    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function FragmentStore.GetSaldo(playerInfo)
    local saldo = DataBase.GetValue("MEMB_INFO", "Fragments", "memb___id", playerInfo[0])

    return saldo
end

function FragmentStore.Buy(playerInfo, itemId)
    local saldo = FragmentStore.GetSaldo(playerInfo)

    local PacketName = string.format("4-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, FragmentStore_Config.Packet)

    local item = FragmentStore_Config.Itens[itemId]

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

    DataBase.SetDecreaseValue("MEMB_INFO", "Fragments", item.Price, "memb___id", playerInfo[0])

    CreateItemInventory(playerInfo[2], item.ItemIndex, item.Level, item.Dur, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, item.Harmony, 255, 255, 255, 255, 255, 255, 0)

    saldo = saldo - item.Price
    SetBytePacket(PacketName, 2)
    SetDwordPacket(PacketName, saldo)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function FragmentStore.Protocol(aIndex, Packet, PacketName)

    if Central.CheckPlayer(aIndex) == 1 then
        local player = User.new(aIndex)
        local Language = player:getLanguage()
        SendMessage("Computador não permitido na Central de Segurança!", aIndex, 25)
        return 1
    end
	
	
    if Packet ~= FragmentStore_Config.Packet then return end

    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if PacketName == string.format("3-%s-%d", playerInfo[1], aIndex) then
        local itemId = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        FragmentStore.Buy(playerInfo, itemId)
        return true
    end
    if PacketName == string.format("5-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        FragmentStore.Register(player)
        return true
    end
end

function FragmentStore.Register(player)
    local pInv = Inventory.new(player:getIndex())
    local playerInfo = Utils.GetPlayerInfo(player)

    local valor = 0

    for slot = 12, 75 do
        if pInv:isItem(slot) ~= 0 then
            local index = pInv:getIndex(slot)
            if index == FragmentStore_Config.FragmentItem.ItemIndex then
                local multiplicador = 1
                if GetStackItem(index) ~= 0 then
                    multiplicador = pInv:getDurability(slot)
                end
                valor = valor + (1*multiplicador)
                InventoryDeleteItem(playerInfo[2], slot)
                SendInventoryDeleteItem(playerInfo[2], slot)
            end
        end
    end

    ItemListSend(playerInfo[2])

    if valor > 0 then
        DataBase.SetAddValue("MEMB_INFO", "Fragments", valor, "memb___id", playerInfo[0])
    end
    local saldo = FragmentStore.GetSaldo(playerInfo)

    local PacketName = string.format("4-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, FragmentStore_Config.Packet)
    SetBytePacket(PacketName, 2)
    SetDwordPacket(PacketName, saldo)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)

end

function FragmentStore.FixNpc()
    for n = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do
		local monster = User.new(n)

		if monster:getConnected() > 0 then
			if monster:getClass() == FragmentStore_Config.Npc.Class then
				monster:setType(3)
			end
		end
        monster = nil
	end
end

FragmentStore.Init()

return FragmentStore