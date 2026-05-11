-- true Ativa o sistema, false Desativa
JewelBank_Ativado = true

-- Numero do Packet usado no sistema (não pode ser igual ao de nenhum outro sistema
JewelBank_Packet = 032

-- Tabela onde fica registrado as informações
JewelBank_Table = {
	[0] = "MEMB_INFO",
	[1] = "Character"
}
--Where da conta onde fica as informações
JewelBank_Where = {
	[0] = "memb___id",
	[1] = "Name"
}
--JewelBank_Npc = 249

-- ListID (tem que ser o mesmo da configuração no cliente)(tem que começar no 1 e não pode pular)
-- Index da jóia unitaria
-- Index do bundle da jóia
-- Nome da jóia
-- Coluna do saldo da joia na MEMB_INFO


JewelBank_Jewels = {
[1]	= 	{Index = 6159,	BundleIndex = 6159,	Nome = "Jewel of Chaos",		Coluna = "ChaosPoints",      	 IdType = 0, Rate = 1, CacheName = "ChaosPoints"},
[2]	= 	{Index = 7181,	BundleIndex = 7181,	Nome = "Jewel of Bless",		Coluna = "BlessPoints",      	 IdType = 0, Rate = 1, CacheName = "BlessPoints"},
[3]	= 	{Index = 7182,	BundleIndex = 7182,	Nome = "Jewel of Soul",			Coluna = "SoulPoints",       	 IdType = 0, Rate = 1, CacheName = "SoulPoints"},
[4]	= 	{Index = 7184,	BundleIndex = 7184,	Nome = "Jewel of Life",			Coluna = "LifePoints",       	 IdType = 0, Rate = 1, CacheName = "LifePoints"},
[5]	= 	{Index = 7190,	BundleIndex = 7190,	Nome = "Jewel of Creation",		Coluna = "CreationPoints",   	 IdType = 0, Rate = 1, CacheName = "CreationPoints"},
--[6]	= 	{Index = 6691,	BundleIndex = 6691,	Nome = "Fragment Horn",			Coluna = "fragmenthorn",   	 	 IdType = 0, Rate = 1, CacheName = "fragmenthorn"},
--[7]	= 	{Index = 6692,	BundleIndex = 6692,	Nome = "Broken Horn",			Coluna = "fragmentbroken",       IdType = 0, Rate = 1, CacheName = "fragmentbroken"},

}


-- Valor unitario correspondente a cada level de um bundle
JewelBank_BundleValue = {[0] = 10 ,[1] = 20 ,[2] = 30 ,[3] = 40 ,[4] = 50 ,[5] = 60 ,[6] = 70 ,[7] = 80 ,[8] = 90 ,[9] = 100,[10] = 110,[11] = 120,[12] = 130,[13] = 140,[14] = 150,[15] = 160}

-- Level do item correspondente ao botão escolhido na interface
JewelBank_ButtonToLevel = {[3] = 0 ,[4] = 1 ,[5] = 2 ,[6] = 3 ,[7] = 4 ,[8] = 5 ,[9] = 6 ,[10] = 7 ,[11] = 8 ,[12] = 9,[13] = 10,[14] = 11,[15] = 12,[16] = 13,[17] = 14}

JewelBank_Messages = { }

JewelBank_Messages["Por"] = {
[1] = "Saldo de %s insuficiente",
[2] = "Não há espaço no inventário",
}

JewelBank_Messages["Eng"] = {
[1] = "Insufficient %s balance",
[2] = "There is no space in the inventory",
}

JewelBank_Messages["Spn"] = {
[1] = "Saldo de %s insuficiente",
[2] = "No hay espacio en el inventario",
}

-- INÍCIO DO CÓDIGO, SÓ MEXA SE SOUBER O QUE ESTÁ FAZENDO --
JewelBank = {}
JewelBank.Npc = {}

function JewelBank.Init()
	if not JewelBank_Ativado then return end

	GameServerFunctions.GameServerProtocol(JewelBank.Protocol)
	GameServerFunctions.EnterCharacter(JewelBank.EnterCharacter)
	GameServerFunctions.PlayerLogout(JewelBank.PlayerLogout)
	GameServerFunctions.QueryAsyncProcess(JewelBank.QueryAsyncProcess)

	--region NPC BANCO DE JOIAS
	GameServerFunctions.NpcTalk(JewelBank.NpcTalk)
	GameServerFunctions.MonsterReload(JewelBank.UpdateNpc)
	Timer.Interval(5, JewelBank.UpdateNpc)
	--#endregion
end

--#region NPC BANCO DE JOIAS
function JewelBank.UpdateNpc()
	for n = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do
		local monster = User.new(n)
		if monster:getConnected() > 0
		then
			if monster:getClass() == JewelBank_Npc
			then
				monster:setType(3)
			end
		end
	end
end

function JewelBank.NpcTalk(Npc, aIndex)

		
	local m = User.new(Npc)
	local class = m:getClass()

	if JewelBank_Npc == class then
		local p = User.new(aIndex)
		local nome = p:getName()
		if p:getInterfaceUse() ~= 0 then return 1 end
		local PacketName = string.format("JBOpe_%s",nome)		
		local t = JewelBank.GetBalance(aIndex)
		CreatePacket(PacketName, JewelBank_Packet)
		SetBytePacket(PacketName, #t)
		for i in ipairs(t) do
			SetBytePacket(PacketName, t[i].ListID)
			SetDwordPacket(PacketName, t[i].Saldo)
		end
		SendPacket(PacketName, aIndex)
		ClearPacket(PacketName)
		return 1
	end

	return 0
end
--#endregion

function JewelBank.QueryAsyncProcess(queryName, identification, aIndex)
	if queryName == 'GetJewelBankValue'
	then
		if gObjIsConnectedGP(aIndex) ~= 0
		then
			local player = User.new(aIndex)

			for i = 1, #JewelBank_Jewels do
				local JewelValue = tonumber(QueryAsyncGetValue(identification, JewelBank_Jewels[i].Coluna))

				if JewelValue ~= nil
				then
					player:setCacheInt(JewelBank_Jewels[i].CacheName, JewelValue)
				end
			end

			player = nil
		end

		QueryAsyncDelete(identification)
		return 1
	end

	return 0
end

function JewelBank.PlayerLogout(aIndex)
	local player = User.new(aIndex)

	for i = 1, #JewelBank_Jewels do
		player:clearCacheInt(JewelBank_Jewels[i].CacheName)
	end

	player = nil
end

function JewelBank.EnterCharacter(aIndex)
	local player = User.new(aIndex)

	local query = "SELECT "

	for i in ipairs(JewelBank_Jewels) do
		if i == 1
		then
			if JewelBank_Jewels[i].IdType == 0 then
				query = query..string.format("m.%s", JewelBank_Jewels[i].Coluna)
			else
				query = query..string.format("c.%s", JewelBank_Jewels[i].Coluna)
			end
		else
			if JewelBank_Jewels[i].IdType == 0 then
				query = query..string.format(", m.%s", JewelBank_Jewels[i].Coluna)
			else
				query = query..string.format(", c.%s", JewelBank_Jewels[i].Coluna)
			end
		end

		player:setCacheInt(JewelBank_Jewels[i].CacheName, 0)
	end

	query = query..string.format(" from memb_info m left join character c on m.memb___id = c.accountid where m.memb___id = '%s' and c.name = '%s'", player:getAccountID(), player:getName())

	CreateAsyncQuery('GetJewelBankValue', query, player:getIndex(), 1)

	player = nil
end

function JewelBank.Protocol(aIndex, Packet, PacketName)

    if Central.CheckPlayer(aIndex) == 1 then
        local player = User.new(aIndex)
        local Language = player:getLanguage()
        SendMessage("Computador não permitido na Central de Segurança!", aIndex, 25)
        return 1
    end
	
	
	if Packet == JewelBank_Packet then
		local player = User.new(aIndex)
		local nome = player:getName()
		if PacketName == string.format("JBOpe_%s",nome) then
			ClearPacket(PacketName)
			local t = JewelBank.GetBalance(aIndex)
			CreatePacket(PacketName, JewelBank_Packet)
			SetBytePacket(PacketName, #t)
			for i in ipairs(t) do
				SetBytePacket(PacketName, t[i].ListID)
				SetDwordPacket(PacketName, t[i].Saldo)
			end
			SendPacket(PacketName, aIndex)
			ClearPacket(PacketName)
			return true
		end

		if PacketName == string.format("JBDep_%s",nome) then
			local slot = GetBytePacket(PacketName, -1)		
			ClearPacket(PacketName)
			JewelBank.Deposit(aIndex, slot)
			return true
		end

		if PacketName == string.format("JBEnd_%s",nome) then
			ClearPacket(PacketName)
			player:setInterfaceUse(0)
			return true
		end

		if PacketName == string.format("JBSac_%s",nome) then
			local listid = GetBytePacket(PacketName, -1)
			local botao = GetBytePacket(PacketName, -1)		
			JewelBank.Withdraw(aIndex, listid, botao)			
			ClearPacket(PacketName)
			return true
		end
	end

	return false
end

function JewelBank.Withdraw(aIndex, ListID, Valor)
	local player =  User.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	local Item = JewelBank_Jewels[ListID]
	
	local saldo = DataBase.GetValue(JewelBank_Table[Item.IdType], Item.Coluna, JewelBank_Where[Item.IdType], playerInfo[Item.IdType])
	
	Index = Item.Index
	local Language = player:getLanguage()

	local valor = Valor*Item.Rate


	if saldo < valor then
		SendMessage(string.format(JewelBank_Messages[Language][1], Item.Nome), aIndex, 1)
		return
	end

	if InventoryCheckSpaceByItem(aIndex, Index) == 0 then
		SendMessage(string.format(JewelBank_Messages[Language][2]), aIndex, 1)
		return
	end

	ItemSerialCreateComplete(aIndex, 236, 0, 0, Index, 0, Valor, 0, 0, 0, aIndex, 0, 0, 0)

	saldo = saldo-valor
	DataBase.SetDecreaseValue(JewelBank_Table[Item.IdType], Item.Coluna, valor, JewelBank_Where[Item.IdType], playerInfo[Item.IdType])
	player:setCacheInt(Item.CacheName, saldo)
	JewelBank.SendBalance(aIndex, ListID, saldo)
end

function JewelBank.GetBalance(aIndex)
	local player =  User.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	local saldo = {}
	for i in ipairs(JewelBank_Jewels) do
		local valor = DataBase.GetValue(JewelBank_Table[JewelBank_Jewels[i].IdType], JewelBank_Jewels[i].Coluna, JewelBank_Where[JewelBank_Jewels[i].IdType], playerInfo[JewelBank_Jewels[i].IdType])
		player:setCacheInt(JewelBank_Jewels[i].CacheName, valor)
		table.insert(saldo, i)
		saldo[i] = {ListID = i, Saldo = valor}
	end
	return saldo
end

function JewelBank.Deposit(aIndex, Slot)
	local player =  User.new(aIndex)
	local pInv = Inventory.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	if pInv:isItem(Slot) ~= 0 then
		local Index = pInv:getIndex(Slot)
		local Level = pInv:getLevel(Slot)

		local change = 0

		for i in ipairs(JewelBank_Jewels) do
			local rate = JewelBank_Jewels[i].Rate
			if Index == JewelBank_Jewels[i].Index then
				local IsStack = GetStackItem(Index)
				local JewelsInsert = 1

				if IsStack ~= 0
				then
					JewelsInsert = pInv:getDurability(Slot)

					if JewelsInsert == 0
					then
						JewelsInsert = 1
					end
				end

				InventoryDeleteItem(aIndex, Slot)
				SendInventoryDeleteItem(aIndex, Slot)
				player:setCacheInt(JewelBank_Jewels[i].CacheName, player:getCacheInt(JewelBank_Jewels[i].CacheName) + (JewelsInsert*rate))
				DataBase.SetAddValue(JewelBank_Table[JewelBank_Jewels[i].IdType], JewelBank_Jewels[i].Coluna, (JewelsInsert*rate), JewelBank_Where[JewelBank_Jewels[i].IdType], playerInfo[JewelBank_Jewels[i].IdType])
				change = 1
			elseif Index == JewelBank_Jewels[i].BundleIndex then
				InventoryDeleteItem(aIndex, Slot)
				SendInventoryDeleteItem(aIndex, Slot)
				player:setCacheInt(JewelBank_Jewels[i].CacheName, player:getCacheInt(JewelBank_Jewels[i].CacheName) + JewelBank_BundleValue[Level])
				DataBase.SetAddValue(JewelBank_Table[JewelBank_Jewels[i].IdType], JewelBank_Jewels[i].Coluna, (JewelBank_BundleValue[Level]*rate), JewelBank_Where[JewelBank_Jewels[i].IdType], playerInfo[JewelBank_Jewels[i].IdType])
				change = 1
			end

			if change == 1 then
				local saldo = DataBase.GetValue(JewelBank_Table[JewelBank_Jewels[i].IdType], JewelBank_Jewels[i].Coluna, JewelBank_Where[JewelBank_Jewels[i].IdType], playerInfo[JewelBank_Jewels[i].IdType])
				JewelBank.SendBalance(aIndex, i, saldo)
				break
			end
		end
	end
end

function JewelBank.SendBalance(aIndex, ListID, Valor)
	local player = User.new(aIndex)
	local nome = player:getName()
	CreatePacket(string.format("JBBal_%s",nome), JewelBank_Packet)
	SetBytePacket(string.format("JBBal_%s",nome), ListID)
	SetDwordPacket(string.format("JBBal_%s",nome), Valor)
	SendPacket(string.format("JBBal_%s",nome), aIndex)
	ClearPacket(string.format("JBBal_%s",nome))
end

JewelBank.Init()

return JewelBank