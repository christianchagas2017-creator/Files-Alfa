--[[ Compro System ]]--

Compro = {}

local TimerCompro = {}

function Compro.Running()
	if #TimerCompro == 0
	then
		return
	end

	local i=1
	while i <= #TimerCompro do
		if math.floor(math.abs(GetTick() - TimerCompro[TimerCompro[i]]) / 1000) > Compro_TIMER 
		then
			RemoveKey(TimerCompro, i)
		else
			i = i + 1
		end
	end
end

function Compro.Command(aIndex, Arguments)
	if Compro_SWITCH == 0
	then
		return
	end
	
	local player = User.new(aIndex)
	local Language = player:getLanguage()
	
	if TimerCompro[player:getName()] ~= nil
	then
		local tick = math.floor(math.abs(GetTick() - TimerCompro[player:getName()]) / 1000)

		if tick < Compro_TIMER
		then
			SendMessage(string.format(Compro_MESSAGES[Language][1], math.floor(Compro_TIMER - tick), Compro_COMMAND), aIndex, 1)
			return
		end
	end
	
	if player:getLevel() < Compro_LEVEL
	then
		SendMessage(string.format(Compro_MESSAGES[Language][2], Compro_LEVEL), aIndex, 1)
		return
	end
	
	local money = player:getMoney()
	
	if money < Compro_MONEY
	then
		SendMessage(string.format(Compro_MESSAGES[Language][3], Compro_MONEY), aIndex, 1)
		return
	end
	
	if DataBase.GetValue(TABLE_VIP, COLUMN_VIP, WHERE_VIP, player:getAccountID()) < Compro_VIP
	then
		SendMessage(string.format(Compro_MESSAGES[Language][4]), aIndex, 1)
		return
	end
	
	local Name = player:getName()

	if DataBase.GetValue(TABLE_RESET, COLUMN_RESET[0], WHERE_RESET, Name) < Compro_RESET
	then
		SendMessage(string.format(Compro_MESSAGES[Language][5], Compro_RESET), aIndex, 1)
		return
	end
	
	if DataBase.GetValue(TABLE_MRESET, COLUMN_MRESET[0], WHERE_MRESET, Name) < Compro_MRESET
	then
		SendMessage(string.format(Compro_MESSAGES[Language][6], Compro_MRESET), aIndex, 1)
		return
	end
	
	local setmoney = money - Compro_MONEY
	
	player:setMoney(setmoney)
	MoneySend(aIndex)
	SendMessageGlobal(string.format(Compro_STRING, player:getName(), Cmd:getString(Arguments, 1, 1)), Compro_COLOR)
	
	--[[Insert Timer Compro]]--
	
	if TimerCompro[player:getName()] == nil
	then
		InsertKey(TimerCompro, player:getName())
		TimerCompro[player:getName()] = GetTick()
	else
		TimerCompro[player:getName()] = GetTick()
	end
	
	
end

Commands.Register(Compro_COMMAND, Compro.Command)
Timer.Interval(1, Compro.Running)

return Compro