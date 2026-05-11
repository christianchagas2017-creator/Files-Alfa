Skin = {}

function Skin.Init()
    if Skin_Config.Enabled then
        for i in ipairs (Skin_Config.Command) do
            Commands.Register(Skin_Config.Command[i],  Skin.Command)
        end

        for i in ipairs (Skin_Config.SkinAll) do
            Commands.Register(Skin_Config.SkinAll[i],  Skin.SkinAll)
        end

        for i in ipairs (Skin_Config.SkinMap) do
            Commands.Register(Skin_Config.SkinMap[i],  Skin.SkinMap)
        end
    end
end

function Skin.Command(aIndex, Arguments)
    LUA_BUSY = true
    local player = User.new(aIndex)
    local gmName = player:getName()
    local pode = false

    for i in ipairs (Skin_Config.Nicks) do
		if player:getName() == Skin_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(gmName, Skin_Config.UseLevel) and not pode then
        LUA_BUSY = false
        return
    end

    local names = {}
    local skin = Cmd:getNumber(Arguments, 1)
    local Name = Cmd:getString(Arguments, 2, 0)

    if Name == "" then
        player:setSkin(skin)
        ViewportCreate(aIndex)
		return
    else
        for i = 2, 6 do
            local nome = Cmd:getString(Arguments, i, 0)
            if nome ~= nil and nome ~= "" then
                 table.insert(names, nome)
            end
        end

        for i in ipairs(names) do
            local TargetIndex = Utils.GetPlayerIndex(names[i])
            if TargetIndex ~= -1 then
                local player_target = User.new(TargetIndex)
                player_target:setSkin(skin)
                ViewportCreate(TargetIndex)
                player_target = nil
            end
        end
	end


--[[
    local names = {}
    local skin = Cmd:getNumber(Arguments, 1)

    for i = 2, 6 do
        local nome = Cmd:getString(Arguments, i, 0)
        if nome ~= nil and nome ~= "" then
             table.insert(names, nome)
        end
    end

    for i in ipairs(names) do
        local TargetIndex = GetIndex(names[i])
        if TargetIndex ~= -1 then
            local player_target = User.new(TargetIndex)
            player_target:setSkin(skin)
            ViewportCreate(TargetIndex)
            player_target = nil
	    end

    end
--]]
    
    LUA_BUSY = false
    player = nil
end

function Skin.SkinAll(aIndex, Arguments)
    LUA_BUSY = true
    local player = User.new(aIndex)
    local gmName = player:getName()
    local pode = false

    for i in ipairs (Skin_Config.Nicks) do
		if player:getName() == Skin_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(gmName, Skin_Config.Advanced) and not pode then
        LUA_BUSY = false
        return
    end

    local skin = Cmd:getNumber(Arguments, 1)

    for skinall = OBJECT_START_USER, MAX_OBJECT do
        local player = User.new(skinall)
        if gObjIsConnectedGP(skinall) == 0
		then
			goto continue
		end

        player:setSkin(skin)
        ViewportCreate(skinall)
        player = nil

        ::continue::
    end

    LUA_BUSY = false
    player = nil
end

function Skin.SkinMap(aIndex, Arguments)
    LUA_BUSY = true
    local player = User.new(aIndex)
    local gmName = player:getName()
    local pode = false

    for i in ipairs (Skin_Config.Nicks) do
		if player:getName() == Skin_Config.Nicks[i] then
			pode = true
		end
	end

    if not StaffManager.IsPlayerAuthorized(gmName, Skin_Config.Advanced) and not pode then
        LUA_BUSY = false
        return
    end

    local map = Cmd:getNumber(Arguments, 1)
    local skin = Cmd:getNumber(Arguments, 2)

    for skinmap = OBJECT_START_USER, MAX_OBJECT do

        local player = User.new(skinmap)
        if gObjIsConnectedGP(skinmap) == 0
		then
			goto continue
		end

        if GetMapObject(skinmap) ~= map
        then
            goto continue
        end

        player:setSkin(skin)
        ViewportCreate(skinmap)
        player = nil

        ::continue::
    end
    
    LUA_BUSY = false
    player = nil
end

Skin.Init()

return Skin