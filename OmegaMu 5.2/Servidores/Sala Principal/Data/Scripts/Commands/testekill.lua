
function testemessage(aIndex, Arguments)
    local arg = Cmd:getNumber(Arguments, 1)

	local player = User.new(aIndex)
	
	local lang = player:getLanguage()

	LogAdd(lang)

    local msg = string.format("Mensagem cor: %d", arg)
    SendMessageGlobal(msg, arg)
end

Commands.Register("/addkill", CommandSetDeath, 1)
Commands.Register("/delkill", CommandSetDeath, 0)

Commands.Register("/msg", testemessage)