StartEvent = {}

function StartEvent.Init()
    if StartEvent_Config.Enabled then 
		Commands.Register(StartEvent_Config.Command, StartEvent.Command)
    end
end

function StartEvent.Command(aIndex, Arguments)
    LUA_BUSY = true
    local player = User.new(aIndex)
    local name = player:getName()

    if not StaffManager.IsPlayerAuthorized(name, StartEvent_Config.SetLevel) then
        LUA_BUSY = false
        return
    end
	
	local arg = Cmd:getString(Arguments, 1, 0)
	
	if arg == StartEvent_Config.BC
	then
		StartBC()
		SendMessage(string.format('[Sistema] Blood Castle foi iniciado', arg), aIndex, 1)
	elseif arg == StartEvent_Config.DS
	then
		StartDS()
		SendMessage(string.format('[Sistema] Devil Square foi iniciado', arg), aIndex, 1)
	elseif arg == StartEvent_Config.CC
	then
		StartCC()
		SendMessage(string.format('[Sistema] Chaos Castle foi iniciado', arg), aIndex, 1)
	elseif arg == StartEvent_Config.IT
	then
		StartIT()
		SendMessage(string.format('[Sistema] Illusion Temple foi iniciado', arg), aIndex, 1)
	end
	

	player = nil
	LUA_BUSY = false
end

StartEvent.Init()

return StartEvent