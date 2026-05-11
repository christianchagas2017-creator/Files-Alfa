Hide = {}

function Hide.Init()
    if Hide_Config.Enabled then
        Commands.Register(Hide_Config.Command, Hide.Command)
        Commands.Register(Hide_Config.All, Hide.CommandAll)
        Commands.Register(Hide_Config.Map, Hide.CommandMap)
    end
end

function Hide.Command(aIndex, Arguments)
    local player = User.new(aIndex)
    local Language = player:getLanguage()
    local name = player:getName()

    local permition = false

    if CharacterPermition.Enabled then
	    for i in ipairs (CharacterPermition.Permition_Players) do
	    	if player:getName() == CharacterPermition.Permition_Players[i] then
	    		permition = true
	    	end
	    end
    end

    if not StaffManager.IsPlayerAuthorized(player:getName(), Hide_Config.UseLevel) and not permition then
        return
    end

    local prefix = Cmd:getString(Arguments, 1, 0)
    local names = {}
    local nametext = Cmd:getString(Arguments, 2, 0)
    local nome = nametext

    for i = 2, 6 do
        nome = Cmd:getString(Arguments, i, 0)
        if nome ~= nil and nome ~= "" then
            table.insert(names, nome)
        end
    end

    if #names == 0 then
        table.insert(names, player:getName())
    end

    if prefix == "" then
        if CheckBuffPlayer(player:getIndex(), 18) == 0 then
            AddEffect(player:getIndex(), 0, 18, 0, 0, 0, 0, 0)
            ViewportDestroy(player:getIndex())
            --SendMessage(string.format(Hide_Config.Message[Language][2], player:getName()), aIndex, 1)
        else
            RemoveEffect(player:getIndex(), 18)
            ViewportCreate(player:getIndex())
            --SendMessage(string.format(Hide_Config.Message[Language][3], player:getName()), aIndex, 1)
        end
        return
    end

    for i = 1, #names do
        local TargetIndex = Utils.GetPlayerIndex(names[i])
        local tplayer = User.new(TargetIndex)
        if TargetIndex ~= -1 then
            if string.lower(prefix) == Hide_Config.on then
                if CheckBuffPlayer(tplayer:getIndex(), 18) == 0 then
                    AddEffect(tplayer:getIndex(), 0, 18, 0, 0, 0, 0, 0)
                    ViewportDestroy(tplayer:getIndex())
                    SendMessage(string.format(Hide_Config.Message[Language][2], names[i]), aIndex, 1)
                end
            end

            if string.lower(prefix) == Hide_Config.off then
                if CheckBuffPlayer(tplayer:getIndex(), 18) == 0 then
                    RemoveEffect(tplayer:getIndex(), 18)
                    ViewportCreate(tplayer:getIndex())
                else
                    RemoveEffect(tplayer:getIndex(), 18)
                    ViewportCreate(tplayer:getIndex())
                    --SendMessage(string.format(Hide_Config.Message[Language][3], names[i]), aIndex, 1)
                end
            end
        else
            --SendMessage(string.format(Hide_Config.Message[Language][1], names[i]), aIndex, 1)
            return
        end
    end

end

function Hide.CommandAll(aIndex, Arguments)
    local player = User.new(aIndex)
	local prefix = Cmd:getString(Arguments, 1, 0)

    local permition = false

    if CharacterPermition.Enabled then
	    for i in ipairs (CharacterPermition.Permition_Players) do
	    	if player:getName() == CharacterPermition.Permition_Players[i] then
	    		permition = true
	    	end
	    end
    end

    --/hideall
    if not StaffManager.IsPlayerAuthorized(player:getName(), Hide_Config.Advanced)  and not permition then
        return
    end

    for hideall = OBJECT_START_USER, MAX_OBJECT do
        local allplayer = User.new(hideall)
        if gObjIsConnectedGP(hideall) == 0
		then
			goto continue
		end

        --/hide on  (ATIVA O HIDE)
	    if string.lower(prefix) == Hide_Config.on
	    then
            AddEffect(allplayer:getIndex(hideall),0,18,0,0,0,0,0)
            ViewportDestroy(allplayer:getIndex(hideall))
	    end

        --/hideall off (DESATIVA O HIDE)
        if string.lower(prefix) == Hide_Config.off
        then
            RemoveEffect(allplayer:getIndex(hideall), 18)
            ViewportCreate(allplayer:getIndex(hideall))
        end

        ::continue::
    end

end

function Hide.CommandMap(aIndex, Arguments)
    local player = User.new(aIndex)
	local prefix = Cmd:getString(Arguments, 1, 0)

    local permition = false

    if CharacterPermition.Enabled then
	    for i in ipairs (CharacterPermition.Permition_Players) do
	    	if player:getName() == CharacterPermition.Permition_Players[i] then
	    		permition = true
	    	end
	    end
    end

    --/hidemap
    if not StaffManager.IsPlayerAuthorized(player:getName(), Hide_Config.Advanced) and not permition then
        return
    end

    local map = Cmd:getNumber(Arguments, 2)

    for hidemap = OBJECT_START_USER, MAX_OBJECT do
        local allplayermap = User.new(hidemap)
        if gObjIsConnectedGP(hidemap) == 0
		then
			goto continue
		end

        if GetMapObject(hidemap) ~= map
        then
            goto continue
        end

        --/hidemap on  (ATIVA O HIDE)
	    if string.lower(prefix) == Hide_Config.on
	    then
            AddEffect(allplayermap:getIndex(hidemap),0,18,0,0,0,0,0)
            ViewportDestroy(allplayermap:getIndex(hidemap))
	    end

        --/hidemap off (DESATIVA O HIDE)
        if string.lower(prefix) == Hide_Config.off
        then
            RemoveEffect(allplayermap:getIndex(hidemap), 18)
            ViewportCreate(allplayermap:getIndex(hidemap))
        end

        ::continue::
    end

end

Hide.Init()

return Hide