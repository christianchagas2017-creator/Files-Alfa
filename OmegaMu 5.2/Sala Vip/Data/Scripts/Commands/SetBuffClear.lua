SetBuff = {}

function SetBuff.Init()
    if SetBuff_Config.Enabled then
        Commands.Register(SetBuff_Config.Buff[1], SetBuff.SetBuff)

		for i in ipairs (SetBuff_Config.Clear) do
        	Commands.Register(SetBuff_Config.Clear[i], SetBuff.ClearBuff)
		end

		for i in ipairs (SetBuff_Config.Clear) do
       	 	Commands.Register(SetBuff_Config.ClearBuffAll[i], SetBuff.ClearBuffAll)
		end
    end
end

function SetBuff.SetBuff(aIndex, Arguments)
    local player = User.new(aIndex)
	local Language = player:getLanguage()
	local gmName = player:getName()
	local pode = false

	for i in ipairs (SetBuff_Config.Nicks) do
		if player:getName() == SetBuff_Config.Nicks[i] then
			pode = true
		end
	end

	if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.SetLevel) and not pode then
       return
    end

    local nick = Cmd:getString(Arguments, 1, 0)

    local bIndex = Utils.GetPlayerIndex(nick)
    local tplayer = nil
    if bIndex ~= -1 then
        if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.Advanced) and not pode then
            return
        end
        tplayer = User.new(bIndex)
    end

    if tplayer ~= nil then
        player = tplayer
    end

	if nick == "" then
		--SendMessage(string.format(SetBuff_Config.Message[Language][4], gmName), aIndex, 1)
		for i in ipairs(SetBuff_Config.BuffsTable) do
			AddEffect(aIndex, 1, SetBuff_Config.BuffsTable[i], os.time() + (1 * 60), 0, 0, 0, 0)
		end
		ViewportCreate(aIndex)
		CalCharacter(aIndex)
		RefreshCharacter(aIndex)
		return
	end

	--/setbuff <player>
	if bIndex ~= -1
	then
		--SendMessage(string.format(SetBuff_Config.Message[Language][2], nick), aIndex, 26)
		--SendMessage(string.format(SetBuff_Config.Message[Language][4], gmName), bIndex, 26)

		for i in ipairs(SetBuff_Config.BuffsTable) do
			AddEffect(bIndex, 1, SetBuff_Config.BuffsTable[i], os.time() + (1 * 60), 0, 0, 0, 0)
		end
		ViewportCreate(bIndex)
		CalCharacter(bIndex)
		RefreshCharacter(bIndex)
		return
	else
		--SendMessage(string.format(SetBuff_Config.Message[Language][1], nick), aIndex, 1)
		return
	end
end

function SetBuff.ClearBuff(aIndex, Arguments)
    local player = User.new(aIndex)
	local Language = player:getLanguage()
	local gmName = player:getName()
	local pode = false

	for i in ipairs (SetBuff_Config.Nicks) do
		if player:getName() == SetBuff_Config.Nicks[i] then
			pode = true
		end
	end

	--if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.SetLevel) and not pode then
    --    return
    --end

    local nick = Cmd:getString(Arguments, 1, 0)

    local bIndex = Utils.GetPlayerIndex(nick)
    local tplayer = nil
    if bIndex ~= -1 then
        if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.Advanced) and not pode then
            return
        end
        tplayer = User.new(bIndex)
    end

    if tplayer ~= nil then
        player = tplayer
    end

	local mensagemEnviada = false

	if nick == "" then
		for i in ipairs(SetBuff_Config.BuffsTable) do
			if CheckBuffPlayer(player:getIndex(), SetBuff_Config.BuffsTable[i]) == 1 then
				if not mensagemEnviada then
					--SendMessage(string.format(SetBuff_Config.Message[Language][6], gmName), aIndex, 27)
					mensagemEnviada = true
				end
				RemoveEffect(aIndex, SetBuff_Config.BuffsTable[i])
			end
		end
		if mensagemEnviada then
			ViewportCreate(aIndex)
		end
		return
	end

	--/clearbuff <player>
	if bIndex ~= -1 then
		if not mensagemEnviada then
			--SendMessage(string.format(SetBuff_Config.Message[Language][3], nick), aIndex, 1)
			--SendMessage(string.format(SetBuff_Config.Message[Language][5], gmName), bIndex, 27)
			mensagemEnviada = true
		end

		for i in ipairs(SetBuff_Config.BuffsTable) do
			RemoveEffect(bIndex, SetBuff_Config.BuffsTable[i])
		end

		if mensagemEnviada then
			ViewportCreate(bIndex)
		end

		return
	else
		--SendMessage(string.format(SetBuff_Config.Message[Language][1], nick), aIndex, 1)
		return
	end

end

function SetBuff.ClearBuffAll(aIndex, Arguments)
    local player = User.new(aIndex)
	local Language = player:getLanguage()
	local gmName = player:getName()
	local pode = false

	for i in ipairs (SetBuff_Config.Nicks) do
		if player:getName() == SetBuff_Config.Nicks[i] then
			pode = true
		end
	end

	if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.SetLevel) and not pode then
        return
    end

    local nick = Cmd:getString(Arguments, 1, 0)

    local bIndex = Utils.GetPlayerIndex(nick)
    local tplayer = nil
    if bIndex ~= -1 then
        if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.Advanced) then
            return
        end
        tplayer = User.new(bIndex)
    end

    if tplayer ~= nil then
        player = tplayer
    end

	local mensagemEnviada = false

	if nick == "" then
		if not mensagemEnviada then
			--SendMessage(string.format(SetBuff_Config.Message[Language][5], gmName), aIndex, 27)
			mensagemEnviada = true
		end

		if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.SetLevel) then
			RemoveEffect(aIndex, 18)
			RemoveEffect(aIndex, 28)
		end

		Timer.TimeOut(1, function()
			BlindEffect.Enabled = false
			local packetName = "blindeffectOFF"
			CreatePacket(packetName, BlindEffect_Config.Packet)
			SendPacket(packetName, aIndex)
			ClearPacket(packetName)
		end)

		for BuffList = 1, 17 do
			RemoveEffect(aIndex, BuffList)
		end

		for BuffList = 19, 27 do
			RemoveEffect(aIndex, BuffList)
		end

		for BuffList = 29, 204 do
			RemoveEffect(aIndex, BuffList)
		end

		if not StaffManager.IsPlayerAuthorized(gmName, 1) then
			RemoveEffect(aIndex, 28)
		end

		if mensagemEnviada then
			ViewportCreate(aIndex)
		end
		return
	end

	--/clearbuffall <player>
	if bIndex ~= -1
	then
		if not StaffManager.IsPlayerAuthorized(gmName, SetBuff_Config.SetLevel) then
			RemoveEffect(bIndex, 18)
			RemoveEffect(bIndex, 28)
		end

		Timer.TimeOut(1, function()
			BlindEffect.Enabled = false
			local packetName = "blindeffectOFF"
			CreatePacket(packetName, BlindEffect_Config.Packet)
			SendPacket(packetName, bIndex)
			ClearPacket(packetName)
		end)

		for BuffList = 1, 17 do
			RemoveEffect(bIndex, BuffList)
		end

		for BuffList = 19, 27 do
			RemoveEffect(bIndex, BuffList)
		end

		for BuffList = 29, 204 do
			RemoveEffect(bIndex, BuffList)
		end

		if not mensagemEnviada then
			--SendMessage(string.format(SetBuff_Config.Message[Language][3], nick), aIndex, 1)
			--SendMessage(string.format(SetBuff_Config.Message[Language][5], gmName), bIndex, 27)
			mensagemEnviada = true
			ViewportCreate(aIndex)
		end

		return
	else
		--SendMessage(string.format(SetBuff_Config.Message[Language][1], nick), aIndex, 1)
		return
	end
end

SetBuff.Init()

return SetBuff