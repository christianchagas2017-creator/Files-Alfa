DropBox = {}

DropBox.BoxList = {}

function DropBox.Init()	
	if DropBox_Config.Ativado then
		GameServerFunctions.PlayerDropItem(DropBox.PlayerDrop)
	end
end

function DropBox.PlayerDrop(aIndex, x, y, slot)
	local player = User.new(aIndex)
	local pInv = Inventory.new(aIndex)
	local playerInfo = Utils.GetPlayerInfo(player)
	local map = player:getMapNumber()

	local index = pInv:getIndex(slot)
	local level = pInv:getLevel(slot)
	local Box = 0
	if DropBox_Config.Box[index] == nil then
		return 0
	else
		Box = DropBox_Config.Box[index]
	end

	if Box == 0 then return 0 end

	if player:getInterfaceUse() > 0 or player:getTeleport() ~= 0 or player:getDieRegen() ~= 0 then
		SendMessage(DropBox_Config.Message[playerInfo[3]][3], aIndex, 1)
		return DropBox.Return(aIndex)
	end

	if Box.Monster ~= -1 then
		if DropBox_Config.Monsters[Box.Monster] ~= nil then
			local atr = GetMapAttr(map, x, y, 1)

			if atr == 1 then
				SendMessage(DropBox_Config.Message[playerInfo[3]][8], aIndex, 1)
				return DropBox.Return(aIndex)
			end

			InventoryDeleteItem(aIndex, slot)
			SendInventoryDeleteItem(aIndex, slot)
			ItemListSend(aIndex)

			for i in ipairs(DropBox_Config.Monsters[Box.Monster]) do
				for c = 1, DropBox_Config.Monsters[Box.Monster][i].Quantity do
					local indexMonstro = AddMonster(map)

					if index == -1 then
						return DropBox.Return(aIndex)
					end
			
					SetPositionMonster(indexMonstro, map)
					SetMonster(indexMonstro, DropBox_Config.Monsters[Box.Monster][i].Class)

					SetMapMonster(indexMonstro,  map, x, y)
					BoxMonsterDrop.RegisterMonster(indexMonstro, DropBox_Config.Monsters[Box.Monster][i].Class,  DropBox_Config.Monsters[Box.Monster][i].Drop)
				end
			end
		end

		return DropBox.Return(aIndex)
	end

	if Box.Ranking ~= -1 then
		for i, ranking in ipairs(DropBox_Config.Rankings[Box.Ranking]) do
			DataBase.SetAddValue(ranking.Table, ranking.Column, 1, ranking.Where, playerInfo[ranking.IdType])
		end
	end

	if DropBox.BoxList[index] == nil then

		local Drops = {}
		local itens = {}
		if DropBox_Config.Itens[Box.Index] ~= nil then
			if DropBox_Config.Itens[Box.Index][level] ~= nil then
				itens = DropBox_Config.Itens[Box.Index][level]
			else
				itens = DropBox_Config.Itens[Box.Index][-1]
			end
		end

		local moedas = {}
		if DropBox_Config.Moedas[Box.Index] ~= nil then
			if DropBox_Config.Itens[Box.Index][level] ~= nil then
				moedas = DropBox_Config.Moedas[Box.Index][level]
			else
				moedas = DropBox_Config.Moedas[Box.Index][-1]
			end
		end

		if #itens > 0 then
			local listId = #Drops+1
			for i, item in ipairs(itens) do
				table.insert(Drops, {Id = listId, Tipo = 0, Item = item})
				listId = listId+1
			end
		end

		if #moedas > 0 then
			local listId = #Drops+1
			for i, moeda in ipairs(moedas) do
				table.insert(Drops, {Id = listId, Tipo = 1, Moeda = moeda})
				listId = listId+1
			end
		end

		DropBox.BoxList[index] = DropBox.FillDropTable(Drops)

		Utils.ShuffleTable(DropBox.BoxList[index])
		
	end

	local listaCompleta = DropBox.BoxList[index]
	

	local Drop = listaCompleta[GetRandomValue(1, #listaCompleta)]

	if Drop == nil then return 0 end

	map = player:getMapNumber()

	local permitioninventario = false

	for i in ipairs (DropBox_Config.Nicks) do
		if player:getName() == DropBox_Config.Nicks[i] then
			permitioninventario = true
		end
	end

	if Box.Inventario then
		if DropBox_Config.StaffDrop then
			if not StaffManager.IsPlayerAuthorized(player:getName(), DropBox_Config.GameMaster) and not permitioninventario then
				for p = 12, 75 do
					if p ~= slot then
						if pInv:isItem(p) ~= 0 then
							SendMessage(DropBox_Config.Message[playerInfo[3]][1], aIndex, 1)
							return DropBox.Return(aIndex)
						end
					end
				end
			end
		else
			for p = 12, 75 do
				if p ~= slot then
					if pInv:isItem(p) ~= 0 then
						SendMessage(DropBox_Config.Message[playerInfo[3]][1], aIndex, 1)
						return DropBox.Return(aIndex)
					end
				end
			end
		end

		x = 0
		y = 0
		map = 236
	end

	DeleteItemCount(aIndex, index, -1, 1)

	if Drop.Tipo == 0 then
		if Drop.Item.Quantidade == 0 then
			SendMessage(string.format(DropBox_Config.Message[playerInfo[3]][4], Box.Nome), aIndex, 1)

			if Drop.Item.AnunciarGlobal then
				SendMessageGlobal(string.format("-- %s --", Box.Nome), 0)
				SendMessageGlobal(string.format(DropBox_Config.Message[playerInfo[3]][5], playerInfo[1]), 0)
			end

			if Drop.Item.Fogos then
				FireWorks(aIndex, 0, 0, 0)
			end
		else

			for q = 1, Drop.Item.Quantidade do
				--ItemSerialCreateComplete(aIndex, map, x, y, Utils.GetItem(Drop.Item.Grupo, Drop.Item.Id), Drop.Item.Level, Drop.Item.Dur, Drop.Item.Skill, Drop.Item.Luck, Drop.Item.Opt, aIndex, Drop.Item.Exc, Drop.Item.Ancient, Drop.Item.Dias)
				CreateItemInventory(aIndex, Utils.GetItem(Drop.Item.Grupo, Drop.Item.Id), Drop.Item.Level, Drop.Item.Dur, Drop.Item.Skill, Drop.Item.Luck, Drop.Item.Opt, Drop.Item.Exc, Drop.Item.Ancient, Drop.Item.Harmony, 255, 255, 255, 255, 255, 255, Drop.Item.Dias)
			end

			if Drop.Item.Extras ~= -1 then
				if DropBox_Config.Extras[Drop.Item.Extras] ~= nil then
					local extra = DropBox_Config.Extras[Drop.Item.Extras]
					for i in ipairs(extra) do
						for q = 1, extra[i].Quantidade do
							--ItemSerialCreateComplete(aIndex, map, x, y, Utils.GetItem(extra[i].Grupo, extra[i].Id), extra[i].Level, extra[i].Dur, extra[i].Skill, extra[i].Luck, extra[i].Opt, aIndex, extra[i].Exc, extra[i].Ancient, extra[i].Dias)
							CreateItemInventory(aIndex, Utils.GetItem(extra[i].Grupo, extra[i].Id), extra[i].Level, extra[i].Dur, extra[i].Skill, extra[i].Luck, extra[i].Opt, extra[i].Exc, extra[i].Ancient, extra[i].Harmony, 255, 255, 255, 255, 255, 255, extra[i].Dias)
						end
					end
				end
			end

			if Drop.Item.AnunciarGlobal then
				SendMessageGlobal(string.format("-- %s --", Box.Nome), 0)
				SendMessageGlobal(string.format(DropBox_Config.Message[playerInfo[3]][7], player:getName()), 0)
				SendMessageGlobal(string.format("%d %s",  Drop.Item.Quantidade,  Drop.Item.Nome), 0)
			end
				
			if Drop.Item.Fogos then
				FireWorks(aIndex, 0, 0, 0)
			end

			ItemListSend(aIndex)
		end

		return DropBox.Return(aIndex)
	else
		DataBaseAsync.SetAddValue(Drop.Moeda.Table, Drop.Moeda.Column, Drop.Moeda.Value, Drop.Moeda.Where, playerInfo[Drop.Moeda.IdType])
		SendMessage(string.format(DropBox_Config.Message[playerInfo[3]][2], Drop.Moeda.Value, Drop.Moeda.Nome), aIndex, 1)

		if Drop.Moeda.AnunciarGlobal then
			SendMessageGlobal(string.format("-- %s --", Box.Nome), 0)
			SendMessageGlobal(string.format(DropBox_Config.Message[playerInfo[3]][6], playerInfo[1], Drop.Moeda.Value, Drop.Moeda.Nome), 0)
		end

		if Drop.Moeda.Fogos then
			FireWorks(aIndex, 0, 0, 0)
		end

		return DropBox.Return(aIndex)
	end

	return 0
end

function DropBox.GetPickedItem(pool)
	local poolsize = 0
	for k,v in ipairs(pool) do
		if v.Tipo == 0 then
	   		poolsize = poolsize + v.Item.Porcentagem
		else
			poolsize = poolsize + v.Moeda.Porcentagem
		end
	end
	local selection = GetRandomValue(1,poolsize)
	for k,v in ipairs(pool) do
		if v.Tipo == 0 then
			selection = selection - v.Item.Porcentagem
		else
			selection = selection - v.Moeda.Porcentagem
		end
	   if (selection <= 0) then
		  return v.Id
	   end
	end
end

function DropBox.Return(aIndex)
	Timer.TimeOut(1, ItemListSend, aIndex)
	return 1
end

function DropBox.FillDropTable(itemtable)
    local resultTable = {}

    for _, item in ipairs(itemtable) do
		local rate = 1
		if item.Tipo == 0 then
			rate = item.Item.Porcentagem
		else
			rate = item.Moeda.Porcentagem
		end
        local qtd = math.floor((rate / 100) * 10000)

        for k = 1, qtd do
			table.insert(resultTable, item)
        end
    end

    return resultTable
end

DropBox.Init()

return DropBox