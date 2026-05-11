Post = {}

local TimerPost = {}

function Post.Init()
	if Post_Config.Enabled then
    	for i in ipairs (Post_Config.Command) do
    	   Commands.Register(Post_Config.Command[i], Post.Command)
    	end
    	if Post_Config.NickChange.Enabled then
    	   Commands.Register(Post_Config.NickChange.Command, Post.PostName)
    	end
    	Commands.Register(Post_Config.Extra[1], Post.Compro)
    	Commands.Register(Post_Config.Extra[2], Post.Vendo)
    	Commands.Register(Post_Config.Extra[3], Post.Staff)
		Commands.Register(Post_Config.Notice.Notice, Post.Notice)
		Commands.Register(Post_Config.LiberarPost, Post.Liberar)
    	Timer.Interval(1, Post.Running)
	end
end

function Post.Running()
	if #TimerPost == 0
	then
		return
	end

	local i=1
	while i <= #TimerPost do
		if math.floor(math.abs(GetTick() - TimerPost[TimerPost[i]]) / 1000) > Post_Config.Timer
		then
			RemoveKey(TimerPost, i)
		else
			i = i + 1
		end
	end
end

function Post.Liberar(aIndex, Arguments)
	local player = User.new(aIndex)
	local prefix = Cmd:getString(Arguments, 1, 0)

	for postall = OBJECT_START_USER, MAX_OBJECT do
        local allplayer = User.new(postall)

        if gObjIsConnectedGP(postall) == 0
		then
			goto continue
		end

		if player:getAuthority() < 1 then
			if string.lower(prefix) == "on" then
				if player:getCacheInt("PostLiberar") == 0 then
					return 1
				end
			end

			if string.lower(prefix) == "off" then
				if player:getCacheInt("PostLiberar") == 1 then
					return 1
				end
			end
		end

		::continue::
	end

	return 0
end

function Post.Command(aIndex, Arguments)
    local player = User.new(aIndex)
    local name = player:getName()
    local Language = player:getLanguage()
    local pode = false
    local vip = player:getVip()
    local msgColor = 38 -- Default color (green)
    
    -- Set color based on VIP status
    if vip == 1 then
        msgColor = 26 -- VIP 1 color
    elseif vip == 2 then
        msgColor = 40 -- VIP 2 color
    end

    local msg = Cmd:getString(Arguments, 1, 1)

    for i in ipairs (Post_Config.NickChange.Permittion) do
        if player:getName() == Post_Config.NickChange.Permittion[i] then
            pode = true
        end
    end

    --PLAYER STAFF
    if StaffManager.IsPlayerAuthorized(name, 1) then
        SendMessageGlobal(string.format(Post_Config.Text[2], name, msg), 38)
        return
    else
        if pode then
            SendMessageGlobal(string.format(Post_Config.Text[1], name, msg), msgColor)
            return
        else
            if player:getCacheInt("PostLiberar") == 0 then
                if player:getReset() < Post_Config.Reset then
                    SendMessage(string.format(Post_Config.Message[Language][1], Post_Config.Reset), aIndex, 1)
                    return
                end
            end
        end
    end

    if TimerPost[player:getName()] ~= nil then
        local tick = math.floor(math.abs(GetTick() - TimerPost[player:getName()]) / 1000)

        if tick < Post_Config.Timer then
            SendMessage(string.format(Post_Config.Message[Language][2], math.floor(Post_Config.Timer - tick)), aIndex, 1)
            SendMessage(string.format(Post_Config.Message[Language][3], Post_Config.Command[1]), aIndex, 1)
            return
        end
    end

    SendMessageGlobal(string.format(Post_Config.Text[1], name, msg), msgColor)

    if TimerPost[player:getName()] == nil then
        InsertKey(TimerPost, player:getName())
        TimerPost[player:getName()] = GetTick()
    else
        TimerPost[player:getName()] = GetTick()
    end
end

function Post.Staff(aIndex, Arguments)
    local player = User.new(aIndex)
    local name = player:getName()
    local Language = player:getLanguage()
    local pode = false
    local vip = player:getVip()
    local msgColor = 3 -- Default color
    
    -- Set color based on VIP status
    if vip == 1 then
        msgColor = 26
    elseif vip == 2 then
        msgColor = 40
    end

    local msg = Cmd:getString(Arguments, 1, 1)

    for i in ipairs (Post_Config.NickChange.Permittion) do
        if player:getName() == Post_Config.NickChange.Permittion[i] then
            pode = true
        end
    end

    --PLAYER STAFF
    if StaffManager.IsPlayerAuthorized(name, 1) or pode then
        SendMessageGlobal(string.format(Post_Config.Text[2], name, msg), 38)
        return
    end
end

function Post.PostName(aIndex, Arguments)
    local player = User.new(aIndex)
    local name = player:getName()
    local pode = false
    local vip = player:getVip()
    local msgColor = 3 -- Default color
    
    -- Set color based on VIP status
    if vip == 1 then
        msgColor = 40
    elseif vip == 2 then
        msgColor = 40
    end

    local msg = Cmd:getString(Arguments, 1, 1)

    for i in ipairs (Post_Config.NickChange.Permittion) do
        if player:getName() == Post_Config.NickChange.Permittion[i] then
            pode = true
        end
    end

    if StaffManager.IsPlayerAuthorized(name, 1) or pode then
        if Post_Config.NickChange.Nicks[name] ~= nil then
            SendMessageGlobal(string.format(Post_Config.Text[2], Post_Config.NickChange.Nicks[name], msg), 38)
        end
    end
end

function Post.Compro(aIndex, Arguments)
    local player = User.new(aIndex)
    local name = player:getName()
    local Language = player:getLanguage()
    local pode = false
    local vip = player:getVip()
    local msgColor = 26 -- Default color
    


    local msg = Cmd:getString(Arguments, 1, 1)

    for i in ipairs (Post_Config.NickChange.Permittion) do
        if player:getName() == Post_Config.NickChange.Permittion[i] then
            pode = true
        end
    end

    --PLAYER STAFF
    if StaffManager.IsPlayerAuthorized(name, 1) then
        SendMessageGlobal(string.format(Post_Config.Text[2], name, msg), 38)
        return
    else
         if pode then
            SendMessageGlobal(string.format(Post_Config.Text[3], Post_Config.Message[Language][4], name, msg), msgColor)
            return
         else
            if player:getReset() < Post_Config.Reset then
                SendMessage(string.format(Post_Config.Message[Language][1], Post_Config.Reset), aIndex, 1)
                return
            end
         end
    end

    if TimerPost[player:getName()] ~= nil then
        local tick = math.floor(math.abs(GetTick() - TimerPost[player:getName()]) / 1000)

        if tick < Post_Config.Timer
        then
            SendMessage(string.format(Post_Config.Message[Language][2], math.floor(Post_Config.Timer - tick)), aIndex, 1)
            SendMessage(string.format(Post_Config.Message[Language][3], Post_Config.Extra[1]), aIndex, 1)
            return
        end
    end

    SendMessageGlobal(string.format(Post_Config.Text[3], Post_Config.Message[Language][4], name, msg), msgColor)

    if TimerPost[player:getName()] == nil then
        InsertKey(TimerPost, player:getName())
        TimerPost[player:getName()] = GetTick()
    else
        TimerPost[player:getName()] = GetTick()
    end
end

function Post.Vendo(aIndex, Arguments)
    local player = User.new(aIndex)
    local name = player:getName()
    local Language = player:getLanguage()
    local pode = false
    local vip = player:getVip()
    local msgColor = 35 -- Default color
    

    local msg = Cmd:getString(Arguments, 1, 1)

    for i in ipairs (Post_Config.NickChange.Permittion) do
        if player:getName() == Post_Config.NickChange.Permittion[i] then
            pode = true
        end
    end

    --PLAYER STAFF
    if StaffManager.IsPlayerAuthorized(name, 1) then
        SendMessageGlobal(string.format(Post_Config.Text[2], name, msg), 38)
        return
    else
        if pode then
            SendMessageGlobal(string.format(Post_Config.Text[3], Post_Config.Message[Language][5], name, msg), msgColor)
            return
        else
            if player:getReset() < Post_Config.Reset then
                SendMessage(string.format(Post_Config.Message[Language][1], Post_Config.Reset), aIndex, 1)
                return
            end
        end
    end

    if TimerPost[player:getName()] ~= nil then
        local tick = math.floor(math.abs(GetTick() - TimerPost[player:getName()]) / 1000)

        if tick < Post_Config.Timer
        then
            SendMessage(string.format(Post_Config.Message[Language][2], math.floor(Post_Config.Timer - tick)), aIndex, 1)
            SendMessage(string.format(Post_Config.Message[Language][3], Post_Config.Extra[2]), aIndex, 1)
            return
        end
    end

    SendMessageGlobal(string.format(Post_Config.Text[3], Post_Config.Message[Language][5], name, msg), msgColor)

    if TimerPost[player:getName()] == nil then
        InsertKey(TimerPost, player:getName())
        TimerPost[player:getName()] = GetTick()
    else
        TimerPost[player:getName()] = GetTick()
    end
end

function Post.Notice(aIndex, Arguments)
    local player = User.new(aIndex)
    local guild = player:getGuildName()
    local name = player:getName()
    local vip = player:getVip()
    local msgColor = 33 -- Default notice color
    
    -- Set color based on VIP status if needed
    if vip == 1 then
        msgColor = 26
    elseif vip == 2 then
        msgColor = 40
    end

    if player:getAuthority() == 1 then
        return
    end

    local msg = Cmd:getString(Arguments, 1, 1)

    local newmsg = string.format(Post_Config.Text[2], name, msg)

    for p = 13000, 13500 do
        if gObjIsConnectedGP(p) ~= 0 then
            SendMessage(newmsg, p, msgColor)
        end
    end
end

Post.Init()

return Post