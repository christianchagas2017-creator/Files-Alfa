NPCHoras = {}

function NPCHoras.Init()
	if NPCHoras_Config.Enabled then
		GameServerFunctions.EnterCharacter(NPCHoras.EnterCharacter)
		GameServerFunctions.NpcTalk(NPCHoras.NpcTalk)
		GameServerFunctions.PlayerLogout(NPCHoras.PlayerLogout)
		GameServerFunctions.GameServerProtocol(NPCHoras.Protocol)
		Timer.Interval(30, NPCHoras.UpdateNPC)
		Timer.Interval(1, NPCHoras.CountTime)
	end
end

function NPCHoras.EnterCharacter(aIndex)
	local player = User.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)

	local tempTime = DataBase.GetValue(NPCHoras_Config.PlayerPartTime.Table, NPCHoras_Config.PlayerPartTime.Column, NPCHoras_Config.PlayerPartTime.Where, playerInfo[NPCHoras_Config.PlayerPartTime.IdType])
	local saldo = DataBase.GetValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])

	player:setCacheInt("HorasOn", tempTime)
	player:setCacheInt("SaldoHorasOn", saldo)
end

function NPCHoras.PlayerLogout(aIndex)
	local player = User.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	local tempTime = player:getCacheInt("HorasOn")
	DataBase.SetValue(NPCHoras_Config.PlayerPartTime.Table, NPCHoras_Config.PlayerPartTime.Column, tempTime, NPCHoras_Config.PlayerPartTime.Where, playerInfo[NPCHoras_Config.PlayerPartTime.IdType])
end

function NPCHoras.CountTime()
	for aIndex = 13000, 13999 do
		if gObjIsConnectedGP(aIndex) == 0 then goto continue end
		
		local player = User.new(aIndex)

		if player:getConnected() ~= 3 then goto continue end

		local tempTime = player:getCacheInt("HorasOn")

		tempTime = tempTime + 1

		if tempTime % 3600 == 0 then
			local playerInfo = Utils.GetPlayerInfo(player)
			local saldo = player:getCacheInt("SaldoHorasOn")
			saldo = saldo+NPCHoras_Config.HourEarned[playerInfo[4]]
			player:setCacheInt("SaldoHorasOn", saldo)
			DataBaseAsync.SetAddValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, NPCHoras_Config.HourEarned[playerInfo[4]], NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])
			SendMessage(string.format(NPCHoras_Config.Message[playerInfo[3]][1], saldo), aIndex, 36)
			tempTime = 0
		end

		player:setCacheInt("HorasOn", tempTime)

		::continue::
	end
end

function NPCHoras.NpcTalk(aIndex, bIndex)


	local Npc = User.new(aIndex)

	if Npc:getClass() ~= NPCHoras_Config.Class then return 0 end

	local player = User.new(bIndex)

	if player:getInterfaceUse() ~= 0 then return 1 end

	local ret = NPCHoras.SendInfo(Npc, player)

	return ret
end

function NPCHoras.SendOpen(player)

		
	local itens = 1
	if NPCHoras_Config.Itens[itens] == nil then return 0 end

	local playerInfo = Utils.GetPlayerInfo(player)

	local horas = DataBase.GetValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])

	local PacketName = string.format("1-%s-%d", playerInfo[1], playerInfo[2])
	CreatePacket(PacketName, NPCHoras_Config.Packet)
	SetDwordPacket(PacketName, horas)
	SetBytePacket(PacketName, itens)
	SetBytePacket(PacketName, #NPCHoras_Config.Itens[itens])
	for i in ipairs(NPCHoras_Config.Itens[itens]) do
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].ListID)
		SetDwordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Price)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Index)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Level)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Skill)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Luck)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Durability)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].JoL)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Exc)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.X)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.Y)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.W)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.H)
	end
	SendPacket(PacketName, playerInfo[2])
	ClearPacket(PacketName)
end

function NPCHoras.SendInfo(Npc, player)

	local map = Npc:getMapNumber()
	local x = Npc:getX()
	local y = Npc:getY()

	local itens = 0

	for i in ipairs(NPCHoras_Config.Location) do
		if map == NPCHoras_Config.Location[i].Map then
			if x == NPCHoras_Config.Location[i].X and y == NPCHoras_Config.Location[i].Y then
				itens = NPCHoras_Config.Location[i].Itens
			end
		end
	end

	if itens == 0 then return 0 end

	if NPCHoras_Config.Itens[itens] == nil then return 0 end

	local playerInfo = Utils.GetPlayerInfo(player)

	local horas = DataBase.GetValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])

	local PacketName = string.format("1-%s-%d", playerInfo[1], playerInfo[2])
	CreatePacket(PacketName, NPCHoras_Config.Packet)
	SetDwordPacket(PacketName, horas)
	SetBytePacket(PacketName, itens)
	SetBytePacket(PacketName, #NPCHoras_Config.Itens[itens])
	for i in ipairs(NPCHoras_Config.Itens[itens]) do
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].ListID)
		SetDwordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Price)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Index)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Level)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Skill)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Luck)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Durability)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].JoL)
		SetBytePacket(PacketName, NPCHoras_Config.Itens[itens][i].Exc)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.X)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.Y)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.W)
		SetWordPacket(PacketName, NPCHoras_Config.Itens[itens][i].Pos.H)
	end
	SendPacket(PacketName, playerInfo[2])
	ClearPacket(PacketName)

	return 1
end

function NPCHoras.GiveItem(aIndex, itens, ListID)
	local player = User.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	if NPCHoras_Config.Itens[itens] == nil then
		local pname = string.format("4-%s-%d", playerInfo[1], aIndex)
		CreatePacket(pname, NPCHoras_Config.Packet)
		SendPacket(pname, aIndex)	
		ClearPacket(pname)
		return
	end

	local Item = -1
	for i in ipairs(NPCHoras_Config.Itens[itens]) do
		if NPCHoras_Config.Itens[itens][i].ListID == ListID then
			Item = NPCHoras_Config.Itens[itens][i]
		end
	end

	if Item == -1 then
		local pname = string.format("4-%s-%d", playerInfo[1], aIndex)
		CreatePacket(pname, NPCHoras_Config.Packet)
		SendPacket(pname, aIndex)	
		ClearPacket(pname)
		return
	end

	local saldo = DataBase.GetValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])

	if Item.Price > saldo then
		local pname = string.format("5-%s-%d", playerInfo[1], aIndex)
		CreatePacket(pname, NPCHoras_Config.Packet)
		SendPacket(pname, aIndex)	
		ClearPacket(pname)
		return
	end

	if InventoryCheckSpaceByItem(aIndex, Item.Index) == 0 then
		local pname = string.format("6-%s-%d", playerInfo[1], aIndex)
		CreatePacket(pname, NPCHoras_Config.Packet)
		SendPacket(pname, aIndex)	
		ClearPacket(pname)
		return
	end

	DataBaseAsync.SetDecreaseValue(NPCHoras_Config.PlayerTime.Table, NPCHoras_Config.PlayerTime.Column, Item.Price, NPCHoras_Config.PlayerTime.Where, playerInfo[NPCHoras_Config.PlayerTime.IdType])

	local novosaldo = saldo - Item.Price

	ItemSerialCreateComplete(aIndex, 236, 0, 0,  Item.Index, Item.Level, Item.Durability, Item.Skill, Item.Luck, Item.JoL, aIndex, Item.Exc, 0, 0)

	local pname = string.format("7-%s-%d", playerInfo[1], aIndex)
	CreatePacket(pname, NPCHoras_Config.Packet)
	SetDwordPacket(pname, novosaldo)
	SendPacket(pname, aIndex)
	ClearPacket(pname)

	local query = string.format("INSERT INTO NPCHORAS_LOG (TransactionDate, AccountID, SaldoAntes, SaldoApos, NpcID, ItemID) VALUES (GETDATE(), '%s', %d, %d, %d, %d)", playerInfo[0], saldo, novosaldo, itens, ListID)
	DataBaseAsync.Query(query)
end

function NPCHoras.Protocol(aIndex, Packet, PacketName)

    if Central.CheckPlayer(aIndex) == 1 then
        local player = User.new(aIndex)
        local Language = player:getLanguage()
        SendMessage("Computador não permitido na Central de Segurança!", aIndex, 25)
        return 1
    end
	
	
	if Packet ~= NPCHoras_Config.Packet then return false end

	if PacketName == string.format("3-%s-%d", GetNameObject(aIndex), aIndex) then
		local itens = GetBytePacket(PacketName, -1)
		local lid = GetBytePacket(PacketName, -1)
		ClearPacket(PacketName)
		NPCHoras.GiveItem(aIndex, itens, lid)
		return true
	end
	
	
	if PacketName == string.format("9-%s-%d", GetNameObject(aIndex), aIndex) then
		ClearPacket(PacketName)
		local player = User.new(aIndex)
		NPCHoras.SendOpen(player)
		return true
	end
	
	

	return false
end

function NPCHoras.UpdateNPC()
	for n = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do
		local monster = User.new(n)

		if monster:getConnected() > 0 then
			if monster:getClass() == NPCHoras_Config.Class then
				monster:setType(3)
			end
		end
	end
end

NPCHoras.Init()

return NPCHoras