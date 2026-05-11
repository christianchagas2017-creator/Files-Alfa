--[[
System Catch
]]--

PegaPega = {}

local Players = {}
local Participantes = {}
local idtimercheck = -1
local idtimer = -1
local timer = 0
local started = false
local open = false
local running = false
local firstplayer = ""
local secondplayer = ""
local thirdplayer = ""
local skinnumber = 0
local modopgpg = -1

function PegaPega.Init()
	if PegaPega_Config.Enabled then

		for i in ipairs(PegaPega_Config.Commands.Open) do
			Commands.Register(PegaPega_Config.Commands.Open[i], PegaPega.CommandOpen)
		end

		for i in ipairs(PegaPega_Config.EventMap.Sorte.Go) do
			Commands.Register(PegaPega_Config.EventMap.Sorte.Go[i], PegaPega.CommandGoSorte)
		end

		for i in ipairs(PegaPega_Config.Commands.Go) do
			Commands.Register(PegaPega_Config.Commands.Go[i], PegaPega.CommandGo)
		end

		for i in ipairs(PegaPega_Config.Commands.Init) do
			Commands.Register(PegaPega_Config.Commands.Init[i], PegaPega.CommandInit)
		end

		for i in ipairs(PegaPega_Config.Commands.Result) do
			Commands.Register(PegaPega_Config.Commands.Result[i], PegaPega.CommandResult)
		end

		for i in ipairs(PegaPega_Config.Commands.Cancel) do
			Commands.Register(PegaPega_Config.Commands.Cancel[i], PegaPega.CommandCancel)
		end

		for i in ipairs(PegaPega_Config.Commands.Finish) do
			Commands.Register(PegaPega_Config.Commands.Finish[i], PegaPega.CommandFinish)
		end

		GameServerFunctions.PlayerAttack(PegaPega.CheckAttack)
		GameServerFunctions.PlayerMove(PegaPega.Move)
	end
end

function PegaPega.Running()
	if timer == 0
	then
		for i, name in ipairs(Players) do
			local index = Players[name]
			local player = User.new(index)

			if player:getConnected() < PegaPega_Config.RequiredPlayer
			then
				RemoveKey(Players, i)
			else

				if modopgpg == 2 then
					local gate = PegaPega_Config.EventMap.Sorte
					local x = Utils.GetRandom(gate.CoordX, gate.CoordMX, GetRandomValue(1,10))
					local y = Utils.GetRandom(gate.CoordY, gate.CoordMY, GetRandomValue(1,10))
					Teleport(index, gate.Map, x, y)
				else
					if Move_Config.Gate ~= nil then
						local gate = Move_Config.Gate.pegapega
						local x = Utils.GetRandom(gate.X, gate.MX, GetRandomValue(1,10))
						local y = Utils.GetRandom(gate.Y, gate.MY, GetRandomValue(1,10))
						Teleport(index, gate.Map, x, y)
					end
				end

				--// SKIN DO EVENTO (GERAL FICAR IGUAL)
				if skinnumber ~= 0 then
					player:setSkin(skinnumber)
					ViewportCreate(index)
				end
				--//===================================

				InsertKey(Participantes, name)
				Participantes[name] = index
			end
		end

		open = false

		if modopgpg == 2 then
			Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 1, 0, PegaPega_Config.EventMap.Sorte.Go[1])
		else
			Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 1, 0, PegaPega_Config.Commands.Go[1])
		end

		if idtimercheck == -1
		then
			idtimercheck = Timer.Interval(5, PegaPega.CheckParticipantes)
		else
			Timer.Cancel(idtimercheck)

			idtimercheck = Timer.Interval(5, PegaPega.CheckParticipantes)
		end
		idtimer = -1
	else
		if modopgpg == 2 then
			Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 2, 0, PegaPega_Config.EventMap.Sorte.Go[1], timer)
		else
			Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 2, 0, PegaPega_Config.Commands.Go[1], timer)
		end
		timer = timer - 1
	end
end

function PegaPega.CheckParticipantes(sx, sy, sx, sy)
	for i, name in ipairs(Participantes) do 
		local index = Participantes[name]
		local player = User.new(index)
		local Language = player:getLanguage()

		 if player:getConnected() < PegaPega_Config.RequiredPlayer
		 then
			Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 3, 1, name)

			RemoveKey(Participantes, i)
		end

		local map = PegaPega_Config.EventMap.Normal

		if modopgpg == 2 then
			map  = PegaPega_Config.EventMap.Sorte
		end

		if player:getMapNumber() ~= map.Map
		then
			if player:getX() >= map.CoordX and player:getX() <= map.CoordMX and player:getY() >= map.CoordY and player:getY() <= map.CoordMY then
			else
				Teleport(index, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)

				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 4, 1, name)
					--// REMOVE A SKIN SELECIONADA QUANDO O CHAR É MOVIDO
					player:setSkin(-1)
					ViewportCreate(index)
					--//=================================================
				RemoveKey(Participantes, i)
			end
		end

		if modopgpg == 1 then

			local pInv = Inventory.new(index)

			for z, number in ipairs({0, 1, 2, 3, 4, 5, 7}) do
				if pInv:isItem(number) == 1
				then
					SendMessage(PegaPega_Config.Message[Language][6], index, 1)

					Teleport(index, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)

					--// REMOVE A SKIN SELECIONADA QUANDO O CHAR É MOVIDO
					player:setSkin(-1)
					ViewportCreate(index)
					--//=================================================

					Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 5, 1, name)
					RemoveKey(Participantes, i)
					return
				end
			end

			if pInv:isItem(8) == 1 or pInv:isItem(237) == 1
			then
				SendMessage(PegaPega_Config.Message[Language][6], index, 1)

				Teleport(index, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)

				--// REMOVE A SKIN SELECIONADA QUANDO O CHAR É MOVIDO
				player:setSkin(-1)
				ViewportCreate(index)
				--//=================================================

				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 5, 1, name)
				RemoveKey(Participantes, i)
				return
			end
		end

	end

	if CountTable(Participantes) < 1
	then
		Timer.Cancel(idtimercheck)
		idtimercheck = -1
	end
end

function PegaPega.CheckAttack(aIndex, TargetIndex)
	if not running then return 0 end

	for i, name in ipairs(Participantes) do
		local index = Participantes[name]

		if index == aIndex or index == TargetIndex then
			return 1
		end
	end

	return 0
end

function PegaPega.RunningStart()
	if timer == 0
	then
		Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 7, 0)
		Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 8, 0)
		
		started = true
	else
		Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 9, 0, timer)
		timer = timer - 1
	end
end

function PegaPega.CommandInit(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if player:getAuthority() == 1
	then
		return
	end

	if started == true
	then
		SendMessage(string.format(PegaPega_Config.Message[Language][10]), aIndex, 1)
		return
	end

	--local tempo = Cmd:getNumber(Arguments, 1)

	--if tempo == nil or tempo == 0  or tempo == "" then
	--	tempo = PegaPega_Config.Timer
	--end

	timer = PegaPega_Config.Timer

	idtimer = Timer.Repeater(1, timer, PegaPega.RunningStart)

end

function PegaPega.CommandOpen(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if player:getAuthority() == 1
	then
		return
	end

	if running then
		SendMessage(string.format(PegaPega_Config.Message[Language][10]), aIndex, 1)
		return
	end

	modopgpg = Cmd:getNumber(Arguments, 1)

	timer = Cmd:getNumber(Arguments, 2)

	if modopgpg == 1 then

	elseif modopgpg == 2 then

	else
		SendMessage(string.format(PegaPega_Config.Message[Language][37]), aIndex, 1)
		SendMessage(string.format(PegaPega_Config.Message[Language][38], PegaPega_Config.Commands.Open[1]), aIndex, 1)
		SendMessage(string.format(PegaPega_Config.Message[Language][39], PegaPega_Config.Commands.Open[1]), aIndex, 1)
		return
	end

	if timer == 0 then
		SendMessage(string.format(PegaPega_Config.Message[Language][11], PegaPega_Config.Commands.Open[1]), aIndex, 1)
		return
	else
		if modopgpg == 1 then
			Teleport(aIndex, PegaPega_Config.EventMap.Normal.Map, PegaPega_Config.EventMap.Normal.StaffX, PegaPega_Config.EventMap.Normal.StaffY)
			SendMessageGlobal(string.format(PegaPega_Config.Message[Language][12], player:getName(), PegaPega_Config.Commands.Go[1]), 1)

		elseif modopgpg == 2 then
			Teleport(aIndex, PegaPega_Config.EventMap.Sorte.Map, PegaPega_Config.EventMap.Sorte.StaffX, PegaPega_Config.EventMap.Sorte.StaffY)
			SendMessageGlobal(string.format(PegaPega_Config.Message[Language][12], player:getName(), PegaPega_Config.EventMap.Sorte.Go[1]), 1)
		end
	end

	skinnumber = Cmd:getNumber(Arguments, 3)
	if skinnumber == nil or skinnumber < 0 then
		skinnumber = 0
	end

	Players = {}
	Participantes = {}
	open = true
	started = false
	running = true
	firstplayer = PegaPega_Config.Position[Language][1]
	secondplayer = PegaPega_Config.Position[Language][2]
	thirdplayer = PegaPega_Config.Position[Language][3]

	idtimer = Timer.Repeater(1, timer, PegaPega.Running)

end

function PegaPega.CommandResult(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if player:getAuthority() == 1
	then
		return
	end

	if not running then return end

	SendMessageGlobal(string.format("===================="), 0)
	Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 13, 0)
	Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 14, 0, firstplayer)
	Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 15, 0, secondplayer)
	Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 16, 0, thirdplayer)
	SendMessageGlobal(string.format("===================="), 0)

end

function PegaPega.CommandCancel(aIndex, Arguments)
	local player = User.new(aIndex)

	if player:getAuthority() == 1
	then
		return
	end

	if not running then return end

	for i, name in ipairs(Participantes) do 
		local index = Participantes[name]
		local player = User.new(index)
		local Language = player:getLanguage()

		if player:getConnected() == PegaPega_Config.RequiredPlayer
		then
			Teleport(index, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)
		end
	end

	SendMessageGlobal(string.format("===================="), 0)
	Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 36, 0)
	SendMessageGlobal(string.format("===================="), 0)

	if idtimer ~= -1 then
		Timer.Cancel(idtimer)
	end
	idtimer = -1

	if idtimercheck ~= -1 then
		Timer.Cancel(idtimercheck)
	end
	idtimercheck = -1
	open = false
	started = false
	running = false
	Players = {}
	Participantes = {}

end

function PegaPega.CommandFinish(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if player:getAuthority() == 1
	then
		return
	end

	if not running then return end

	local indexUm = GetIndex(firstplayer)
	local indexDois = GetIndex(secondplayer)
	local indexTres = GetIndex(thirdplayer)

	if indexUm ~= -1 then
		local p = User.new(indexUm)
		DataBaseAsync.SetAddValue("MEMB_INFO", "EventPoint", 3, "memb___id", p:getAccountID())
		DataBaseAsync.SetAddValue("Character", "Eventinhos", 3, "Name", p:getName())
	end
	if indexDois ~= -1 then
		local p = User.new(indexDois)
		DataBaseAsync.SetAddValue("MEMB_INFO", "EventPoint", 2, "memb___id", p:getAccountID())
		DataBaseAsync.SetAddValue("Character", "Eventinhos", 2, "Name", p:getName())
	end
	if indexTres ~= -1 then
		local p = User.new(indexTres)
		DataBaseAsync.SetAddValue("MEMB_INFO", "EventPoint", 1, "memb___id", p:getAccountID())
		DataBaseAsync.SetAddValue("Character", "Eventinhos", 1, "Name", p:getName())
	end

	SendMessageGlobal(string.format("===================="), 0)
	Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 17, 0)
	SendMessageGlobal(string.format("===================="), 0)

	if idtimer ~= -1 then
		Timer.Cancel(idtimer)
	end
	idtimer = -1

	if idtimercheck ~= -1 then
		Timer.Cancel(idtimercheck)
	end

	Timer.Cancel(idtimercheck)
	idtimercheck = -1
	open = false
	started = false
	running = false
	Players = {}
	Participantes = {}
end

function PegaPega.CommandGo(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if open == false
	then
		SendMessage(string.format(PegaPega_Config.Message[Language][18], PegaPega_Config.Commands.Go[1]), aIndex, 1)
		return
	end

	local Name = player:getName()

	if player:getAuthority(aIndex) == 1
	then
		local pInv = Inventory.new(aIndex)

		for i, number in ipairs({0, 1, 2, 3, 4, 5, 7}) do
			if pInv:isItem(number) == 1
			then
				SendMessage(string.format(PegaPega_Config.Message[Language][23]), aIndex, 1)
				SendMessage(string.format(PegaPega_Config.Message[Language][24]), aIndex, 1)
				return
			end
		end

		if pInv:isItem(8) == 1 or pInv:isItem(237) == 1
		then
			SendMessage(string.format(PegaPega_Config.Message[Language][23]), aIndex, 1)
			SendMessage(string.format(PegaPega_Config.Message[Language][24]), aIndex, 1)
			return
		end
	else
		--SE FOR PLAYER VAI SER MOVIDO ALEATORIAMENTE SE FOR STAFF VAI SER MOVIDO PARA O MEIO
		if not StaffManager.IsPlayerAuthorized(player:getName(), PegaPega_Config.GMLevel) then
			if modopgpg == 1 then
				if Move_Config.Gate ~= nil then
					local gate = Move_Config.Gate.pegapega
					local x = Utils.GetRandom(gate.X, gate.MX, GetRandomValue(1,10))
					local y = Utils.GetRandom(gate.Y, gate.MY, GetRandomValue(1,10))
					Teleport(aIndex, gate.Map, x, y)
				end
			end
		else
			if modopgpg == 1 then
				Teleport(aIndex, PegaPega_Config.EventMap.Normal.Map, PegaPega_Config.EventMap.Normal.StaffX, PegaPega_Config.EventMap.Normal.StaffY)
			end
			return
		end

		return
	end

	if Players[player:getName()] == nil
	then
		InsertKey(Players, player:getName())

		Players[player:getName()] = aIndex

		SendMessage(string.format(PegaPega_Config.Message[Language][25]), aIndex, 1)
		SendMessage(string.format(PegaPega_Config.Message[Language][26]), aIndex, 1)
	else
		SendMessage(string.format(PegaPega_Config.Message[Language][25]), aIndex, 1)
	end
end

function PegaPega.CommandGoSorte(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if open == false
	then
		SendMessage(string.format(PegaPega_Config.Message[Language][18], PegaPega_Config.EventMap.Sorte.Go[1]), aIndex, 1)
		return
	end

	local Name = player:getName()

	--SE FOR PLAYER VAI SER MOVIDO ALEATORIAMENTE SE FOR STAFF VAI SER MOVIDO PARA O MEIO
	if not StaffManager.IsPlayerAuthorized(player:getName(), PegaPega_Config.GMLevel) then
		local gate = PegaPega_Config.EventMap.Sorte
		local x = Utils.GetRandom(gate.CoordX, gate.CoordMX, GetRandomValue(1,10))
		local y = Utils.GetRandom(gate.CoordY, gate.CoordMY, GetRandomValue(1,10))
		Teleport(aIndex, gate.Map, x, y)
	else
		Teleport(aIndex, PegaPega_Config.EventMap.Sorte.Map, PegaPega_Config.EventMap.Sorte.StaffX, PegaPega_Config.EventMap.Sorte.StaffY)
		return
	end

	if Players[player:getName()] == nil
	then
		InsertKey(Players, player:getName())

		Players[player:getName()] = aIndex

		SendMessage(string.format(PegaPega_Config.Message[Language][25]), aIndex, 1)
		SendMessage(string.format(PegaPega_Config.Message[Language][26]), aIndex, 1)
	else
		SendMessage(string.format(PegaPega_Config.Message[Language][25]), aIndex, 1)
	end
end

function PegaPega.Move(aIndex, map, x, y, sx, sy)
	if started == false
	then
		return
	end

	local mode = PegaPega_Config.EventMap.Normal

	if modopgpg == 2 then
		mode  = PegaPega_Config.EventMap.Sorte
	end

	if map ~= mode.Map
	then
		return
	end

	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if sx < mode.CoordX or sy < mode.CoordY or sx > mode.CoordMX or sy > mode.CoordMY
	then
		SendMessage(string.format(PegaPega_Config.Message[Language][27]), aIndex, 1)
		Teleport(aIndex, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)

		--// REMOVE A SKIN SELECIONADA QUANDO O CHAR É MOVIDO
		player:setSkin(-1)
		ViewportCreate(aIndex)
		--//=================================================

		RemoverTable(Participantes, player:getName())
		return
	end

	if player:getAuthority() == 1
	then
		return
	end

	playercatch = {}

	for i = 0, 74 do
		if (player:getTargetState(i) == 1 or player:getTargetState(i) == 2) and player:getTargetType(i) == 1
		then
			local TargetIndex = player:getTargetNumber(i)
			local viewport_target = User.new(TargetIndex)

			if viewport_target:getAuthority() == 1
			then
				local distanc = Distance(player:getX(), viewport_target:getX(), player:getY(), viewport_target:getY())

				if distanc ~= 0 and distanc < 3
				then
					InsertKey(playercatch, viewport_target:getName())
					playercatch[viewport_target:getName()] = TargetIndex
				end
			end

			viewport_target = nil
		end
	end

	table.sort(playercatch)

	if CountTable(playercatch) > 0
	then
		local target = playercatch[1]
		local TargetIndex = playercatch[target]
		local target_player = User.new(TargetIndex)
		local target_Language = target_player:getLanguage()

		if Participantes[target] ~= nil
		then
			--//ANUNCIA QUANDO O PLAYER É PEGO PELO GM
			SendMessage(string.format(PegaPega_Config.Message[target_Language][28], player:getName()), TargetIndex, 1)

			--//ANUNCIA QUANDO O GM PEGA O PLAYER
			--SendMessage(string.format(PegaPega_Config.Message[Language][29], target), aIndex, 1)

			local total = CountTable(Participantes)

			for i in ipairs(PegaPega_Config.SkillEffect) do
				SkillSend(aIndex, PegaPega_Config.SkillEffect[i], TargetIndex, 1)
			end

			Teleport(TargetIndex, PegaPega_Config.EventMap.RemoveMap.Map, PegaPega_Config.EventMap.RemoveMap.CoordX, PegaPega_Config.EventMap.RemoveMap.CoordY)

			--// REMOVE A SKIN SELECIONADA QUANDO O CHAR É MOVIDO
			target_player:setSkin(-1)
			ViewportCreate(TargetIndex)
			--//=================================================

			RemoverTable(Participantes, target)

			if total > 3
			then
				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 30, 0, target, player:getName())
			elseif total == 3
			then
				Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 31, 0)
				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 32, 0, target, player:getName())

				thirdplayer = target

			elseif total == 2
			then
				Message.SendMessageGlobalMultLang(PegaPega_Config.Message, 33, 0)
				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 34, 0, target, player:getName())

				secondplayer = target

			elseif total == 1
			then
				SendMessageGlobal(string.format("===================="), 0)
				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 35, 0, target)
				SendMessageGlobal(string.format("===================="), 0)

				firstplayer = target
			else
				SendMessageGlobal(string.format("===================="), 0)
				Message.SendMessageGlobalMultLangArgs(PegaPega_Config.Message, 35, 0, target)
				SendMessageGlobal(string.format("===================="), 0)

				firstplayer = target
			end
		end
	end

end

PegaPega.Init()

return PegaPega