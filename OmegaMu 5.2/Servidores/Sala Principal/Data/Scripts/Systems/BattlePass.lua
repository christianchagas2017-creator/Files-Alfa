BattlePass = {}

function BattlePass.Init()
    if battlePassSwitch then
        GameServerFunctions.EnterCharacter(BattlePass.EnterCharacter)
        Commands.Register(battlePassCommand, BattlePass.CommandBuy)
        Commands.Register(battlePassAddXPCommand, BattlePass.CommandAddExpPlayer)
    end
end
 
function BattlePass.CommandAddExpPlayer(aIndex, params)
    local staff = User.new(aIndex)
    local namePlayer = Cmd:getString(params, 1, 0)
    local value = Cmd:getNumber(params, 2)
    local aIndexPlayer = GetIndex(namePlayer)

    local messages = battlePassMessages[staff:getLanguage()]

    if aIndexPlayer == -1 then
        SendMessage(string.format(messages[4], namePlayer), aIndex, 1)
        return
    end

    BattlePass.AddExpPlayer(aIndexPlayer, value)

    local player = User.new(aIndexPlayer)

    LogAddC(2, string.format('%s recebeu %d XP de passe, STAFF %s', player:getName(), value, staff:getName()))
end

function BattlePass.CommandBuy(aIndex, _)
    local player = User.new(aIndex)
    local language = player:getLanguage()
    local login = player:getAccountID()
    local name = player:getName()
    local messages = battlePassMessages[language]

    if BattlePass.CheckIsPremium(login) then
        return
    end

    local coin = DataBase.GetValue(battlePassTableCoin, battlePassColumnCoin, battlePassWhereCoin, login)
    local amount = battlePassAmountCoinVip[player:getVip()]

    if amount > coin then
        SendMessage(string.format(messages[5], amount, battlePassNameCoin), aIndex, 1)
        return
    end

    DataBase.SetValue('BattlePass', 'premiumPass', 1, 'memb___id', login)
    DataBase.SetDecreaseValue(battlePassTableCoin, battlePassColumnCoin, amount, battlePassWhereCoin, login)

    SendMessage(string.format(messages[1], name), aIndex, 26)

    local expPass = DataBase.GetValue("BattlePass", "xpPass", "memb___id", player:getAccountID())

	BattlePass.SendInfoPlayer(player, expPass, 1)
end


function BattlePass.EnterCharacter(aIndex)

    local player = User.new(aIndex)
    local login = player:getAccountID()

    local battlePassPremium = DataBase.GetValue("BattlePass", "premiumPass", "memb___id", login)

    if battlePassPremium == -1 then
        local datestring = string.format("%d-%d-%d", battlePassEndDate.Year, battlePassEndDate.Month, battlePassEndDate.Day)
        local query = string.format("INSERT INTO [dbo].[BattlePass] ([memb___id],[dateEndPass]) VALUES ('%s','%s')", login, datestring)
        DataBase.Query(query)
        
        BattlePass.SendInfoPlayer(player, 0, 0)
        return
    end
    
    local expPass = DataBase.GetValue("BattlePass", "xpPass", "memb___id", login)
    
    BattlePass.SendInfoPlayer(player, expPass, battlePassPremium)
end

function BattlePass.CheckIsPremium(login)
    local isPremium = DataBase.GetValue('BattlePass', 'premiumPass', 'memb___id', login)

    if isPremium == nil then
        return false
    end

    if isPremium == 1 then
        return true
    end

    return false
end

function BattlePass.SendInfoPlayer(player, Exp, Premium)

	
	local pNameEnter = string.format(battlePassPacketName, player:getName())
	CreatePacket(pNameEnter, battlePassPacket)   
    SetDwordPacket(pNameEnter, Exp)
    SetBytePacket(pNameEnter, Premium)
    SendPacket(pNameEnter, player:getIndex())
    ClearPacket(pNameEnter)
end

function BattlePass.AddExpPlayer(aIndex, value)
    local player = User.new(aIndex)
    
    DataBase.SetAddValue('BattlePass', 'xpPass', value, 'memb___id', player:getAccountID())
    
    local battlePassPremium = DataBase.GetValue("BattlePass", "premiumPass", "memb___id", player:getAccountID())
    local expPass = DataBase.GetValue("BattlePass", "xpPass", "memb___id", player:getAccountID())

	BattlePass.SendInfoPlayer(player, expPass, battlePassPremium)
	
	local level = 0
	for _, info in ipairs(battlePass_configXPFromLevel) do
		if expPass >= info.xpLevelPass then
			level = info.Level
		end
	end
	
	BattlePass.MakeItemByLevel(player, battlePassPremium, level)
	
	player = nil
end

function BattlePass.MakeItemByLevel(player, premium, level)
    local login = player:getAccountID()
    local lastItemReceived = DataBase.GetValue("BattlePass", "itemReceived", "memb___id", login)
    local lastItemReceivedPremium = DataBase.GetValue("BattlePass", "itemReceivedPremium", "memb___id", login)
	
	if lastItemReceived >= level and lastItemReceivedPremium >= level then return end
	
	local receivedFree = false
	for getLevel = 1, level do
		if lastItemReceived < getLevel then
			local item = battlePass_configItensDetailFree[getLevel]
			if item ~= nil then 
				for _ = 1, item.Count do
					NpcRescueItem.InsertItem(login, item.ItemIndex, item.Level, 0, item.Op1, item.Op2, item.Life, item.Exc, item.Ancient, item.JoH, item.ItemTime)
				end
				receivedFree = true
			end
		end
	end
	
	if receivedFree then
		DataBase.SetValue("BattlePass", "itemReceived", level, "memb___id", login)
	end
	
	local receivedPremium = false
		
	if premium > 0 then
		for getLevel = 1, level do
			if lastItemReceivedPremium < getLevel then
				local item = battlePass_configItensDetailPremium[getLevel]
				if item ~= nil then 
					for _ = 1, item.Count do
						NpcRescueItem.InsertItem(login, item.ItemIndex, item.Level, 0, item.Op1, item.Op2, item.Life, item.Exc, item.Ancient, item.JoH, item.ItemTime)
					end
					receivedPremium = true
				end
			end
		end
	end

	if receivedPremium then
		DataBase.SetValue("BattlePass", "itemReceivedPremium", level, "memb___id", login)
	end
   
	if receivedPremium or receivedFree then
		SendMessage('[Battle Pass] Você tem itens para retirar, Retire no Guardião de Brindes !', player:getIndex(), 1)
	end
end

BattlePass.Init()

return BattlePass