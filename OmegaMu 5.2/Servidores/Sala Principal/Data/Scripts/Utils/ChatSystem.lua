Commands = {}

local Handles = {}
local HandlesCalled = {}

function Commands.Chat(index, text)
	if string.len(text) <= 0
	then
		return 0
	end

	if string.sub(text, 1, 1) ~= '/'
	then
		return 0
	end

	local arguments = string.split(text, " ")
	local command = string.lower(arguments[1])

	if command == "/tradex" then
		local player = User.new(index)
		if arguments[2] == player:getName() then
			player = nil
			return 1
		end
		player = nil
	end

	if Commands.CallCheck(index, command, text) == 1
	then
		return 1
	end

	local getCommand = Handles[command]

	if getCommand ~= nil
	then
		getCommand.callback(index, text, unpack(getCommand.args))
		return 1
	end

	return 0
end

function Commands.Register(name, call, ...)
	if name == nil or call == nil
	then
		return
	end

	Handles[name] = {prefix = name, callback = call, args = {...}}
end

function Commands.CallCommand(call, ...)
	if call == nil
	then
		return
	end
	
	table.insert(HandlesCalled, {callback = call, args = {...}})
end

function Commands.CallCheck(index, command, text)
	if #HandlesCalled <= 0
	then
		return 0
	end

	for i = 1, #HandlesCalled do
		if HandlesCalled[i].callback(index, command, text, unpack(HandlesCalled[i].args)) == 1
		then
			return 1
		end
	end
	
	return 0
end

function ChatProc(index, text)
	local player = User.new(index)
	local name = player:getName()
	local pode = false

    for i in ipairs (ChatSystem_Config.Nicks) do
		if player:getName() == ChatSystem_Config.Nicks[i] then
			pode = true
		end
	end

	if string.sub(text, 0, 1) == ChatSystem_Config.Command[1]
	then
		if string.sub(text, 2, 2) == ChatSystem_Config.Command[6]
		then
			if player:getAuthority() ~= 1 or pode
			then
				SendMessageAllServer(string.format(ChatSystem_Config.Message[1], player:getName(), string.sub(text, 3, #text)), 0)
				return 1
			end

		elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[3]
		then
			if player:getAuthority() ~= 1 or pode
			then
				SendMessageAllServer(string.format(ChatSystem_Config.Message[2], player:getName()), 0)
				SendMessageAllServer(string.format(ChatSystem_Config.Message[3], string.sub(text, 3, #text)), 0)
				return 1
			end
		elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[2]
		then
			if player:getAuthority() ~= 1 or pode
			then
				SendMessageAllServer(string.format(ChatSystem_Config.Message[3], string.sub(text, 3, #text)), 0)
				return 1
			end
		end

	--FALA COM NICK EMCIMA TEXTO EMBAIXO ($)
	elseif string.sub(text, 0, 1) == ChatSystem_Config.Command[4]
	then
		if player:getAuthority() ~= 1 or pode
		then
			SendMessageGlobal(string.format(ChatSystem_Config.Message[2], player:getName()), 0)
			if ChatSystem_Config.BreakLines.Enabled then
				if #text > ChatSystem_Config.BreakLines.CaracterLines then
					local message = string.sub(text, 2, #text)
					local firstChunk = string.sub(message, 1, ChatSystem_Config.BreakLines.CaracterLines)
					local remainingChunk = string.sub(message, ChatSystem_Config.BreakLines.CaracterLines + 1)

					SendMessageGlobal(string.format(ChatSystem_Config.Message[3], firstChunk), 0)

					if remainingChunk and #remainingChunk > 0 then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[3], remainingChunk), 0)
					end
				else
					SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 2, #text)), 0)
				end
			else
				SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 2, #text)), 0)
			end
			return 1
		end

	--FALA COMO NOTICIA (!)
	elseif string.sub(text, 0, 1) == ChatSystem_Config.Command[5]
	then
		if player:getAuthority() ~= 1 or pode
		then
			if ChatSystem_Config.BreakLines.Enabled then
				if #text > ChatSystem_Config.BreakLines.CaracterLines then
					local message = string.sub(text, 2, #text)
					local firstChunk = string.sub(message, 1, ChatSystem_Config.BreakLines.CaracterLines)
					local remainingChunk = string.sub(message, ChatSystem_Config.BreakLines.CaracterLines + 1)

					SendMessageGlobal(string.format(ChatSystem_Config.Message[3], firstChunk), 0)

					if remainingChunk and #remainingChunk > 0 then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[3], remainingChunk), 0)
					end
				else
					SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 2, #text)), 0)
				end
			else
				SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 2, #text)), 0)
			end
			return 1
		end

	--FALA COM NICK DO LADO (%)
	elseif string.sub(text, 0, 1) == ChatSystem_Config.Command[6]
	then
		if player:getAuthority() ~= 1 or pode
		then
			if ChatSystem_Config.BreakLines.Enabled then
				if #text > ChatSystem_Config.BreakLines.CaracterLines then
					local message = string.sub(text, 2, #text)
					local firstChunk = string.sub(message, 1, ChatSystem_Config.BreakLines.CaracterLines)
					local remainingChunk = string.sub(message, ChatSystem_Config.BreakLines.CaracterLines + 1)

					SendMessageGlobal(string.format(ChatSystem_Config.Message[1], player:getName(), firstChunk), 0)

					if remainingChunk and #remainingChunk > 0 then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[3], remainingChunk), 0)
					end
				else
					SendMessageGlobal(string.format(ChatSystem_Config.Message[1], player:getName(), string.sub(text, 2, #text)), 0)
				end
			else
				SendMessageGlobal(string.format(ChatSystem_Config.Message[1], player:getName(), string.sub(text, 2, #text)), 0)
			end

			return 1
		end
	end

	if ChatSystem_Config.NickChange.Enabled then
		if ChatSystem_Config.NickChange.Nicks[name] ~= nil then
			if string.sub(text, 0, 1) == ChatSystem_Config.NickChange.Command
			then
				--FALA EM TODAS AS SALAS (/#)
				if string.sub(text, 0, 1) == ChatSystem_Config.Command[1]
				then
					--FALA EM TODAS AS SALAS (/#%)
					if string.sub(text, 2, 2) == ChatSystem_Config.Command[6]
					then
						if player:getAuthority() ~= 1 or pode
						then
							SendMessageAllServer(string.format(ChatSystem_Config.Message[1], ChatSystem_Config.NickChange.Nicks[name], string.sub(text, 4, #text)), 0)
							return 1
						end
					--FALA EM TODAS AS SALAS (/#$)
					elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[3]
					then
						if player:getAuthority() ~= 1 or pode
						then
							SendMessageAllServer(string.format(ChatSystem_Config.Message[2], ChatSystem_Config.NickChange.Nicks[name]), 0)
							SendMessageAllServer(string.format(ChatSystem_Config.Message[3], string.sub(text, 4, #text)), 0)
							return 1
						end
					--FALA EM TODAS AS SALAS (/#!)
					elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[2]
					then
						if player:getAuthority() ~= 1 or pode
						then
							SendMessageAllServer(string.format(ChatSystem_Config.Message[3], string.sub(text, 4, #text)), 0)
							return 1
						end
					end
				--FALA COMO NOTICIA (/$)
				elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[4]
				then
					if player:getAuthority() ~= 1 or pode
					then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[2], ChatSystem_Config.NickChange.Nicks[name]), 0)
						SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 3, #text)), 0)	
						return 1
					end

				--FALA COMO NOTICIA (/!)
				elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[5]
				then
					if player:getAuthority() ~= 1 or pode
					then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[3], string.sub(text, 3, #text)), 0)
						return 1
					end

				--FALA COM NICK DO LADO (/%)
				elseif string.sub(text, 2, 2) == ChatSystem_Config.Command[6]
				then
					if player:getAuthority() ~= 1 or pode
					then
						SendMessageGlobal(string.format(ChatSystem_Config.Message[1], ChatSystem_Config.NickChange.Nicks[name], string.sub(text, 3, #text)), 0)
						return 1
					end
				end
			end
		end
	end

	player = nil

	return Commands.Chat(index, text)
end

return Commands