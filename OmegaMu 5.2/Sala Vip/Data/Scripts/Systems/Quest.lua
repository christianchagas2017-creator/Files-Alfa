Quest = {}

function Quest.Init()
    if Quest_Config.Enabled then
        GameServerFunctions.NpcTalk(Quest.NpcTalk)
        GameServerFunctions.GameServerProtocol(Quest.Protocol)
        GameServerFunctions.MonsterDie(Quest.MonsterDie)
        Commands.Register("/quest", Quest.Command)

        Timer.TimeOut(2, Quest.ResgiterNpc)
        Timer.Interval(30, Quest.ResgiterNpc)
    end
end

function Quest.NpcTalk(NpcIndex, PlayerIndex)
    local npc = User.new(NpcIndex)
    
    if npc:getClass() == Quest_Config.NPC then
        local player = User.new(PlayerIndex)
        if not Utils.IsPlayerBusy(player) then
            Quest.SendOpen(player, NpcIndex, 0)
            return 1
        end
    end

    return 0
end

function Quest.MonsterDie(aIndex, MonsterIndex)
    local player = User.new(aIndex)
    local monster = User.new(MonsterIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local currentQuest = DataBase.GetValue("Character", "CurrentQuest", "Name", playerInfo[1])
    if currentQuest == 0 then
        return
    end

    local questInfo = Quest_Config.Requirements[currentQuest]
    if questInfo == nil then
        return
    end

    DataBase.Query(string.format("IF NOT EXISTS(SELECT Name from QuestMonsters where AccountID = '%s' and Name = '%s' and QuestID = %d) INSERT INTO QuestMonsters (AccountID, Name, QuestID) values ('%s', '%s', %d)", playerInfo[0], playerInfo[1], currentQuest, playerInfo[0], playerInfo[1], currentQuest))

    local monsterClass = monster:getClass()

   if monsterClass == 84 
   or monsterClass == 90 
   or monsterClass == 96 
   or monsterClass == 113 
   or monsterClass == 119
   or monsterClass == 125
   or monsterClass == 138
   or monsterClass == 428
   then
       monsterClass = 138
   end

    if monsterClass == 85
    or monsterClass == 91
    or monsterClass == 97
    or monsterClass == 114
    or monsterClass == 120
    or monsterClass == 126
    or monsterClass == 139
    or monsterClass == 429
    then
        monsterClass = 139
    end

    if monsterClass == 86
    or monsterClass == 92
    or monsterClass == 98
    or monsterClass == 115
    or monsterClass == 121
    or monsterClass == 127
    or monsterClass == 140
    or monsterClass == 430
    then
        monsterClass = 140
    end

    if monsterClass == 87
    or monsterClass == 93
    or monsterClass == 99
    or monsterClass == 116
    or monsterClass == 122
    or monsterClass == 128
    or monsterClass == 141
    or monsterClass == 431
    then
        monsterClass = 141
    end

    if monsterClass == 88
    or monsterClass == 94
    or monsterClass == 111
    or monsterClass == 117
    or monsterClass == 123
    or monsterClass == 129
    or monsterClass == 142
    or monsterClass == 432
    then
        monsterClass = 142
    end

    if monsterClass == 89
    or monsterClass == 95
    or monsterClass == 112
    or monsterClass == 118
    or monsterClass == 124
    or monsterClass == 130
    or monsterClass == 143
    or monsterClass == 433
    then
        monsterClass = 143
    end

    for i in ipairs(questInfo.Monsters) do
        if questInfo.Monsters[i].Class == monsterClass then
            DataBase.Query(string.format("UPDATE QuestMonsters set %s = %s + 1 where AccountID = '%s' and Name = '%s' and QuestID =  %d", questInfo.Monsters[i].Column, questInfo.Monsters[i].Column, playerInfo[0], playerInfo[1], currentQuest))
            return
        end
    end
end

function Quest.Command(aIndex)
    local player = User.new(aIndex)
    if not Utils.IsPlayerBusy(player) then
        Quest.SendOpen(player, aIndex, 1)
        return 1
    end
end

function Quest.SendOpen(player, NpcIndex, tp)
    local playerInfo = Utils.GetPlayerInfo(player)
    local currentQuest = DataBase.GetValue("Character", "CurrentQuest", "Name", playerInfo[1])

    if currentQuest == 0 then
        currentQuest = 1
        DataBase.SetValue("Character", "CurrentQuest", currentQuest, "Name", playerInfo[1])
    end

    if currentQuest > Quest_Config.MaxQuest then
        if tp == 0 then
            ChatTargetSend(NpcIndex, Quest_Config.Message[playerInfo[3]][2], playerInfo[2])
        else
            SendMessage(Quest_Config.Message[playerInfo[3]][2], playerInfo[2], 1)
        end
        return
    end

    local questInfo = Quest_Config.Requirements[currentQuest]
    local questRewards = Quest_Config.Reward[currentQuest]
    if questInfo == nil or questRewards == nil then
        if tp == 0 then
            ChatTargetSend(NpcIndex, Quest_Config.Message[playerInfo[3]][1], playerInfo[2])
        else
            SendMessage(Quest_Config.Message[playerInfo[3]][1], playerInfo[2], 1)
        end
        return
    end

    DataBase.Query(string.format("IF NOT EXISTS(SELECT Name from QuestMonsters where AccountID = '%s' and Name = '%s' and QuestID = %d) INSERT INTO QuestMonsters (AccountID, Name, QuestID) values ('%s', '%s', %d)", playerInfo[0], playerInfo[1], currentQuest, playerInfo[0], playerInfo[1], currentQuest))

    local requirements = Quest.GetRequirements(questInfo, playerInfo, currentQuest)

    local rewards = Quest.GetRewards(questRewards)

    local rewardEnable = 0

    if Quest.CheckRequirements(questInfo, playerInfo, currentQuest) then
        rewardEnable = 1
    end

    local PacketName = string.format("1-%s-%d", playerInfo[1], playerInfo[2])

    CreatePacket(PacketName, Quest_Config.Packet)

    SetBytePacket(PacketName, rewardEnable)

    local len = questInfo.Name[playerInfo[3]]:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, questInfo.Name[playerInfo[3]], len)

    len = questInfo.Description[playerInfo[3]]:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, questInfo.Description[playerInfo[3]], len)

    len = questInfo.Validade[playerInfo[3]]:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, questInfo.Validade[playerInfo[3]], len)

    SetBytePacket(PacketName, #requirements)
    for i in ipairs(requirements) do
        SetDwordPacket(PacketName, requirements[i].Quantity.Have)
        SetDwordPacket(PacketName, requirements[i].Quantity.Need)
        len = requirements[i].Name:len()
        SetBytePacket(PacketName, len)
        SetCharPacketLength(PacketName, requirements[i].Name, len)
    end

    SetBytePacket(PacketName, #rewards)
    for i in ipairs(rewards) do
        SetDwordPacket(PacketName, rewards[i].Quantity)
        len = rewards[i].Name:len()
        SetBytePacket(PacketName, len)
        SetCharPacketLength(PacketName, rewards[i].Name, len)
    end

    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function Quest.GetRequirements(questInfo, playerInfo, currentQuest)
    local requirements = {}

    for i in ipairs(questInfo.Monsters) do
        local have = DataBase.QueryGetNumber(string.format("Select %s from QuestMonsters where AccountID = '%s' and Name = '%s' and QuestID = %d", questInfo.Monsters[i].Column, playerInfo[0], playerInfo[1], currentQuest), questInfo.Monsters[i].Column)
        local listitem = {Quantity = {Have = have, Need = questInfo.Monsters[i].Quantity}, Name = questInfo.Monsters[i].Name}
        table.insert(requirements, listitem)
    end

    if #questInfo.Itens > 0 then
        local pInv = Inventory.new(playerInfo[2])
        for i in ipairs(questInfo.Itens) do
            local item = questInfo.Itens[i]
            local quantity = 0
            for s = 12, 75 do
                if pInv:isItem(s) ~= 0 then
                    if pInv:getIndex(s) == Utils.GetItem(item.Section, item.Index) then
                        if item.Level == -1 or item.Level == pInv:getLevel(s) then
                            local IsStack = GetStackItem(pInv:getIndex(s))
                            if IsStack ~= 0 then
                                quantity = quantity + pInv:getDurability(s)
                            else
                                quantity = quantity + 1
                            end
                        end
                    end
                end
            end
            local listitem = {Quantity = {Have = quantity, Need = questInfo.Itens[i].Quantity}, Name = questInfo.Itens[i].Name}
            table.insert(requirements, listitem)
        end
    end

    for i in ipairs(questInfo.Coins) do
        local have = DataBase.GetValue(questInfo.Coins[i].Table, questInfo.Coins[i].Column, questInfo.Coins[i].Where, playerInfo[questInfo.Coins[i].IdType])
        local listitem = {Quantity = {Have = have, Need = questInfo.Coins[i].Quantity}, Name = questInfo.Coins[i].Name}
        table.insert(requirements, listitem)
    end

    return requirements
end

function Quest.GetRewards(questRewards)
    local rewards = {}

    for i in ipairs(questRewards.Itens) do
        local qtd = 1
        if GetStackItem(questRewards.Itens[i].Index) ~= 0 then
            qtd = questRewards.Itens[i].Dur
        end
        local listitem = {Quantity = qtd, Name = questRewards.Itens[i].Nome}
        table.insert(rewards, listitem)
    end

    for i in ipairs(questRewards.Coins) do
        local listitem = {Quantity = questRewards.Coins[i].Quantity, Name = questRewards.Coins[i].Name}
        table.insert(rewards, listitem)
    end

    return rewards
end

function Quest.CheckRequirements(questInfo, playerInfo, currentQuest)
    for i in ipairs(questInfo.Monsters) do
        local have = DataBase.QueryGetNumber(string.format("Select %s from QuestMonsters where AccountID = '%s' and Name = '%s' and QuestID = %d", questInfo.Monsters[i].Column, playerInfo[0], playerInfo[1], currentQuest), questInfo.Monsters[i].Column)
        if have < questInfo.Monsters[i].Quantity then
            return false
        end
    end

    if #questInfo.Itens > 0 then
        local pInv = Inventory.new(playerInfo[2])
        for i in ipairs(questInfo.Itens) do
            local item = questInfo.Itens[i]
            local quantity = 0
            for s = 12, 75 do
                if pInv:isItem(s) ~= 0 then
                    if pInv:getIndex(s) == Utils.GetItem(item.Section, item.Index) then
                        if item.Level == -1 or item.Level == pInv:getLevel(s) then
                            local IsStack = GetStackItem(pInv:getIndex(s))
                            if IsStack ~= 0 then
                                quantity = quantity + pInv:getDurability(s)
                            else
                                quantity = quantity + 1
                            end
                        end
                    end
                end
            end
            if quantity < questInfo.Itens[i].Quantity then
                return false
            end
        end
    end

    for i in ipairs(questInfo.Coins) do
        local have = DataBase.GetValue(questInfo.Coins[i].Table, questInfo.Coins[i].Column, questInfo.Coins[i].Where, playerInfo[questInfo.Coins[i].IdType])
        if have < questInfo.Coins[i].Quantity then
            return false
        end
    end

    return true
end

function Quest.ReceiveReward(questRewards, playerInfo)
    for i in ipairs(questRewards.Itens) do
        local item = questRewards.Itens[i]
        NpcRescueItem.InsertItem(playerInfo[0], item.Index, item.Level,  item.Dur, item.Skill, item.Luck, item.Opt, item.Excelente, 0, 0, item.Tempo)
    end

    for i in ipairs(questRewards.Coins) do
        local coin = questRewards.Coins[i]
        DataBase.SetAddValue(coin.Table, coin.Column, coin.Quantity, coin.Where, playerInfo[coin.IdType])
    end
end

function Quest.TryGetReward(playerInfo)
    local currentQuest = DataBase.GetValue("Character", "CurrentQuest", "Name", playerInfo[1])

    if currentQuest == 0 then
        currentQuest = 1
        DataBase.SetValue("Character", "CurrentQuest", currentQuest, "Name", playerInfo[1])
    end

    local PacketName = string.format("3-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, Quest_Config.Packet)
    
    local questInfo = Quest_Config.Requirements[currentQuest]
    local questRewards = Quest_Config.Reward[currentQuest]
    if questInfo == nil or questRewards == nil then
        SetBytePacket(PacketName, 1)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
        return
    end

    if not Quest.CheckRequirements(questInfo, playerInfo, currentQuest) then
        SetBytePacket(PacketName, 1)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
        return
    end

    for i in ipairs(questInfo.Coins) do
        DataBase.SetDecreaseValue(questInfo.Coins[i].Table, questInfo.Coins[i].Column, questInfo.Coins[i].Quantity, questInfo.Coins[i].Where, playerInfo[questInfo.Coins[i].IdType])
    end

    for i in ipairs(questInfo.Itens) do
        DeleteItemCount(playerInfo[2], Utils.GetItem(questInfo.Itens[i].Section, questInfo.Itens[i].Index), questInfo.Itens[i].Level, questInfo.Itens[i].Quantity)
    end

    SetBytePacket(PacketName, 2)
    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)

    DataBase.Query(string.format("DELETE FROM QuestMonsters  where AccountID = '%s' and Name = '%s' and QuestID = %d", playerInfo[0], playerInfo[1], currentQuest))
    Quest.ReceiveReward(questRewards, playerInfo)
    currentQuest = currentQuest + 1

    DataBase.SetValue("Character", "CurrentQuest", currentQuest, "Name", playerInfo[1])
end

function Quest.Protocol(aIndex, Packet, PacketName)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if Packet ~= Quest_Config.Packet then return false end

    -- Pacote para abrir a janela (vindo do clique no ícone)
    if PacketName == string.format("1-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        Quest.SendOpen(player, aIndex, 1)  -- Envia os dados para abrir a janela
        return true
    end

    if PacketName == string.format("2-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        Quest.TryGetReward(playerInfo)
        return true
    end
end

function Quest.RegisterNpc()
    for n = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do 
		local monster = User.new(n)
		if monster:getConnected() > 0 then
			if monster:getClass() == Quest_Config.NPC then
				monster:setType(3)
			end
		end
	end
end

Quest.Init()

return Quest