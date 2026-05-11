--[[ Command Zen ]]--

ZenSystem = {}

function ZenSystem.Command(aIndex, Arguments)
	if ZEN_SWITCH == 0
	then
		return
	end

	local player = User.new(aIndex)
	local Language = player:getLanguage()

	local valor = Cmd:getNumber(Arguments, 1)

	if valor >= ZEN_MAXMONEY then
		valor = ZEN_MAXMONEY
	end

	player:setMoney(valor)
	MoneySend(aIndex)

	--SendMessage(string.format(ZEN_MESSAGES[Language][1]), aIndex, 1)
end

Commands.Register(ZEN_COMMAND, ZenSystem.Command)

return ZenSystem