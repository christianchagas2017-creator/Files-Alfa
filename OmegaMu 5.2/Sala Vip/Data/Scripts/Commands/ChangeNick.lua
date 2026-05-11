ChangeNick = {}

local ColunsAccountCharacter = {}

ColunsAccountCharacter[1]  = 'GameID1'
ColunsAccountCharacter[2]  = 'GameID2'
ColunsAccountCharacter[3]  = 'GameID3'
ColunsAccountCharacter[4]  = 'GameID4'
ColunsAccountCharacter[5]  = 'GameID5'
ColunsAccountCharacter[6]  = 'GameID6'
ColunsAccountCharacter[7]  = 'GameID7'
ColunsAccountCharacter[8]  = 'GameID8'
ColunsAccountCharacter[9]  = 'GameID9'
ColunsAccountCharacter[10] = 'GameID10'

function ChangeNick.Init()
	if ChangeNick_Configs.Enabled then
		for i in ipairs(ChangeNick_Configs.CommandNick) do
			Commands.Register(ChangeNick_Configs.CommandNick[i], ChangeNick.CommandNick)
		end

		for i in ipairs(ChangeNick_Configs.TrocarNick) do
			Commands.Register(ChangeNick_Configs.TrocarNick[i], ChangeNick.TrocarNick)
		end

	end
end

function ChangeNick.checkNameExist(name)
	local str = string.format("Select count(*) as countFind FROM Character WHERE Name='%s'", name)
	-- local db = DataBase.getDb()

	if db:exec(str) == 0
	then
		LogAdd('Error when execute ChangeNick:checkNameExist')
		db:clear()
		return 0
	end

	if db:fetch() == SQL_NO_DATA
	then
		LogAdd('Error when fetch ChangeNick:checkNameExist')
		db:clear()
		return 0
	end

	local val = db:getInt('countFind')
	db:clear()
	return val
end

function ChangeNick.ChangeCharacterNick(newnick, account, name)
	local str = string.format("UPDATE CHARACTER SET Name='%s' where AccountID='%s' and Name='%s'", newnick, account, name)
	-- local db = DataBase.getDb()

	if db:exec(str) == 0
	then
		LogAdd('Error when exec ChangeNick:ChangeCharacterNick')
		db:clear()
		return 0
	end

	db:clear()
	return 1
end

function ChangeNick.ChangeAccountCharacterNick(newnick, account, name, position)
	local str = string.format("UPDATE AccountCharacter SET %s='%s' where id='%s' and %s='%s'", ColunsAccountCharacter[position], newnick, account, ColunsAccountCharacter[position], name)
	-- local db = DataBase.getDb()

	if db:exec(str) == 0
	then
		LogAdd('Error when exec ChangeNick:ChangeAccountCharacterNick')
		db:clear()
		return 0
	end

	db:clear()
	return 1
end

function ChangeNick.getPositionCharacter(account, name)
	local str = string.format("Select GameID1, GameID2, GameID3, GameID4, GameID5, GameID6, GameID7, GameID8, GameID9, GameID10 FROM AccountCharacter WHERE Id='%s'", account)
	-- local db = DataBase.getDb()

	if db:exec(str) == 0
	then
		LogAdd('Error when execute ChangeNick:getPositionCharacter')
		db:clear()
		return 0
	end

	if db:fetch() == SQL_NO_DATA
	then
		LogAdd('Error when fetch ChangeNick:getPositionCharacter')
		db:clear()
		return 0
	end

	local result = 0
	local GameID1  = db:getStr('GameID1')
	local GameID2  = db:getStr('GameID2')
	local GameID3  = db:getStr('GameID3')
	local GameID4  = db:getStr('GameID4')
	local GameID5  = db:getStr('GameID5')
	local GameID6  = db:getStr('GameID6')
	local GameID7  = db:getStr('GameID7')
	local GameID8  = db:getStr('GameID8')
	local GameID9  = db:getStr('GameID9')
	local GameID10 = db:getStr('GameID10')

	if GameID1 == name
	then
		result = 1
	elseif GameID2 == name
	then
		result = 2
	elseif GameID3 == name
	then
		result = 3
	elseif GameID4 == name
	then
		result = 4
	elseif GameID5 == name
	then
		result = 5
	elseif GameID6 == name
	then
		result = 6
	elseif GameID7 == name
	then
		result = 7
	elseif GameID8 == name
	then
		result = 8
	elseif GameID9 == name
	then
		result = 9
	elseif GameID10 == name
	then
		result = 10
	end

	db:clear()
	return result
end

function ChangeNick.ExecQuery(newnick, name)
	local str = string.format("EXEC OGOCX_CHANGE_NEWNICK '%s', '%s'", newnick, name)
	-- local db = DataBase.getDb()

	if db:exec(str) == 0
	then
		LogAdd('Error when exec ChangeNick:ExecQuery')
		db:clear()
		return 0
	end

	db:clear()
	return 1
end

function ChangeNick.CommandNick(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if ChangeNick_Configs.OnlyStaffs then
		local permition = false

		for i in ipairs (ChangeNick_Configs.Nicks) do
			if player:getName() == ChangeNick_Configs.Nicks[i] then
				permition = true
			end
		end
	
		if not permition then
			return
		end
	
		if not StaffManager.IsPlayerAuthorized(player:getName(), ChangeNick_Configs.GameMaster) then
			return
		end
	end
	
	if player:getVip() < ChangeNick_Configs.Vip
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][1]), aIndex, 1)
		return
	end

	if player:getGuildNumber() ~= 0
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][10]), aIndex, 1)
		return
	end

	local Name = player:getName()

	if player:getReset() < ChangeNick_Configs.Reset
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][2], ChangeNick_Configs.Reset), aIndex, 1)
		return
	end

	if player:getMasterReset() < ChangeNick_Configs.MasterReset
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][3], ChangeNick_Configs.MasterReset), aIndex, 1)
		return
	end

	local NewNick = Cmd:getString(Arguments, 1, 0)

	if #NewNick <= 0 or #NewNick > 10
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][4]), aIndex, 1)
		return
	end

	if #NewNick < ChangeNick_Configs.MinimoLetra
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][5], ChangeNick_Configs.MinimoLetra), aIndex, 1)
		return
	end

	if ChangeNick_Configs.CheckSymbol == 1
	then
		if string.match(NewNick, '%W') ~= nil
		then
			SendMessage(string.format(ChangeNick_Configs.Message[Language][6]), aIndex, 1)
			return
		end
	end
	

	if ChangeNick.checkNameExist(NewNick) == 1
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][7], NewNick), aIndex, 1)
		return
	end


	local positionCharacter = ChangeNick.getPositionCharacter(player:getAccountID(), player:getName())

	if positionCharacter == 0
	then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][9]), aIndex, 1)
		return
	end

	ChangeNick.ChangeAccountCharacterNick(NewNick, player:getAccountID(), player:getName(), positionCharacter)

	ChangeNick.ChangeCharacterNick(NewNick, player:getAccountID(), player:getName())

	ChangeNick.ExecQuery(NewNick, player:getName())

	player:setName(NewNick)

	SendMessage(string.format(ChangeNick_Configs.Message[Language][8]), aIndex, 1)

	CloseChar(aIndex, 1)

	player = nil
end

function ChangeNick.TrocarNick(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	local permition = false

	for i in ipairs (ChangeNick_Configs.Nicks) do
		if player:getName() == ChangeNick_Configs.Nicks[i] then
			permition = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(player:getName(), ChangeNick_Configs.GameMaster) and not permition then
        return
    end

	local Name = player:getName()

	local OldNick = Cmd:getString(Arguments, 1, 0)
	local NewNick = Cmd:getString(Arguments, 2, 0)
	local TargetIndex = Utils.GetPlayerIndex(OldNick)
	local TargetPlayer = User.new(TargetIndex)

	if OldNick == "" or OldNick == -1 or OldNick == " " or OldNick == nil then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][4]), aIndex, 1)
		return
	end

	if TargetIndex == "" or TargetIndex == -1 or TargetIndex == " " or TargetIndex == nil then
		SendMessage(string.format(ChangeNick_Configs.Message[Language][11], OldNick), aIndex, 1)
		return
	else
		if #NewNick <= 0 or #NewNick > 10
		then
			SendMessage(string.format(ChangeNick_Configs.Message[Language][4]), aIndex, 1)
			SendMessage(string.format(ChangeNick_Configs.Message[Language][16], ChangeNick_Configs.TrocarNick[3]), aIndex, 1)
			return
		end

		if ChangeNick.checkNameExist(NewNick) == 1
		then
			SendMessage(string.format(ChangeNick_Configs.Message[Language][13], OldNick, NewNick), aIndex, 1)
			return
		end

		if TargetPlayer:getGuildNumber() ~= 0
		then
			SendMessage(string.format(ChangeNick_Configs.Message[Language][14], OldNick), aIndex, 1)
			SendMessage(string.format(ChangeNick_Configs.Message[Language][10]), TargetPlayer, 1)
			return
		end

		local positionCharacter = ChangeNick.getPositionCharacter(TargetPlayer:getAccountID(), TargetPlayer:getName())

		if positionCharacter == 0
		then
			SendMessage(string.format(ChangeNick_Configs.Message[Language][9]), aIndex, 1)
			return
		end

		ChangeNick.ChangeAccountCharacterNick(NewNick, TargetPlayer:getAccountID(), TargetPlayer:getName(), positionCharacter)

		ChangeNick.ChangeCharacterNick(NewNick, TargetPlayer:getAccountID(), TargetPlayer:getName())

		ChangeNick.ExecQuery(NewNick, TargetPlayer:getName())

		TargetPlayer:setName(NewNick)

		SendMessage(string.format(ChangeNick_Configs.Message[Language][15], OldNick, NewNick), aIndex, 1)
		SendMessage(string.format(ChangeNick_Configs.Message[Language][8]), TargetIndex, 1)

		CloseChar(TargetIndex, 1)
	end

end

ChangeNick.Init()

return ChangeNick