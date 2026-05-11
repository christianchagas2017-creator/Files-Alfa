--[[
Sistema Virar PK - By Vitinhosl
]]--

SETPKSystem = {}

function SETPKSystem.Init()

	if SetPK_Config.Enabled then
		for i in ipairs(SetPK_Config.Command) do
			Commands.Register(SetPK_Config.Command[i], SETPKSystem.VirarPK)
		end
		for i in ipairs(SetPK_Config.SetAll) do
			Commands.Register(SetPK_Config.SetAll[i], SETPKSystem.SetAll)
		end
		for i in ipairs(SetPK_Config.SetMap) do
			Commands.Register(SetPK_Config.SetMap[i], SETPKSystem.SetMap)
		end

    end

end

function SETPKSystem.VirarPK(aIndex, Arguments)
	local player = User.new(aIndex)

	local pode = false

    for i in ipairs (SetPK_Config.Nicks) do
		if player:getName() == SetPK_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(player:getName(), SetPK_Config.UseLevel) and not pode then
        return
    end

    local Language = player:getLanguage()

	local value = Cmd:getNumber(Arguments, 1)

    if value <= 0
    then
        --SendMessage(string.format(SET_PK_MESSAGES[Language][2]), aIndex, 1)
        return
    end

    local Name = Cmd:getString(Arguments, 2, 0)
	local TargetIndex = Utils.GetPlayerIndex(Name)
	local player_target = User.new(TargetIndex)

	if Name == "" then
		player:setPKLevel(value)

		if PkLevelSend(aIndex, player:getPKLevel())
		then
			SendMessage(string.format(SET_PK_MESSAGES[Language][3]), aIndex, 1)
			return
		end
	
		CalCharacter(aIndex)
		RefreshCharacter(aIndex)

		return
	end

	if TargetIndex == -1
	then
		--SendMessage(string.format(SET_PLAYER_COMMAND_MESSAGES[Language][1], Name), aIndex, 1)
		return
	else

		player_target:setPKLevel(value)

		if PkLevelSend(TargetIndex, player_target:getPKLevel())
		then
			SendMessage(string.format(SET_PK_MESSAGES[Language][3]), aIndex, 1)
			return
		end

		CalCharacter(TargetIndex)
		RefreshCharacter(TargetIndex)
	end

end

function SETPKSystem.SetAll(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	local pode = false

    for i in ipairs (SetPK_Config.Nicks) do
		if player:getName() == SetPK_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(player:getName(), SetPK_Config.Advanced) and not pode then
        return
    end

	local value = Cmd:getNumber(Arguments, 1)

    if value <= 0
    then
        SendMessage(string.format(SET_PK_MESSAGES[Language][2]), aIndex, 1)
        return
    end

    for setpkall = OBJECT_START_USER, MAX_OBJECT do
        local player = User.new(setpkall)
        if gObjIsConnectedGP(setpkall) == 0
		then
			goto continue
		end

		player:setPKLevel(value)

		if PkLevelSend(setpkall, player:getPKLevel())
		then
			return
		end

		SendMessage(string.format(SET_PK_MESSAGES[Language][3]), aIndex, 1)
		CalCharacter(setpkall)
		RefreshCharacter(setpkall)

        ::continue::
    end

end

function SETPKSystem.SetMap(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	local pode = false

    for i in ipairs (SetPK_Config.Nicks) do
		if player:getName() == SetPK_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(player:getName(), SetPK_Config.Advanced) and not pode then
        return
    end

	local value = Cmd:getNumber(Arguments, 1)
	local map = Cmd:getNumber(Arguments, 2)

    if value <= 0
    then
        SendMessage(string.format(SET_PK_MESSAGES[Language][2]), aIndex, 1)
        return
    end

	if map < 0
    then
        SendMessage(string.format(SET_PK_MESSAGES[Language][4]), aIndex, 1)
        return
    end

    for setpkmap = OBJECT_START_USER, MAX_OBJECT do
        local player = User.new(setpkmap)
        if gObjIsConnectedGP(setpkmap) == 0
		then
			goto continue
		end

		if GetMapObject(setpkmap) ~= map
        then
            goto continue
        end

		player:setPKLevel(value)

		if PkLevelSend(setpkmap, player:getPKLevel())
		then
			SendMessage(string.format(SET_PK_MESSAGES[Language][3]), aIndex, 1)
			return
		end

		CalCharacter(setpkmap)
		RefreshCharacter(setpkmap)

        ::continue::
    end

end

SETPKSystem.Init()

return SETPKSystem