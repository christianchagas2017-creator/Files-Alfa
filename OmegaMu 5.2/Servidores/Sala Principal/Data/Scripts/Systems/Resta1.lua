-----------------------------------------
	-- Script:  Evento RESTA1vivência
	-- Criador: Pedro Borges
	-- Skype: live:ppborges93
-----------------------------------------

Resta1 = {}

local aberto = false
local iniciado = false
local Participantes = {}
local minutesToStart = nil
local secondsToClose = nil
local timer = nil
local timerCheck = nil
local realizador = nil

function Resta1.Init()
	if RESTA1_AUTO_SWITCH == 0
	then
		return
	end	
	for i in ipairs(RESTA1_DATA) do
		if RESTA1_DATA[i]._dayofweek ~= -1
		then
			Schedule.SetDayOfWeek(RESTA1_DATA[i]._dayofweek, RESTA1_DATA[i]._hour, RESTA1_DATA[i]._minute, Resta1.Start)
		elseif RESTA1_DATA[i]._day ~= -1
		then
			Schedule.SetDayAndHourAndMinute(RESTA1_DATA[i]._day, RESTA1_DATA[i]._hour, RESTA1_DATA[i]._minute, Resta1.Start)
		else
			Schedule.SetHourAndMinute(RESTA1_DATA[i]._hour, RESTA1_DATA[i]._minute, Resta1.Start)
		end
	end
end

function Resta1.Start()
	if RESTA1_AUTO_SWITCH == 0
	then
		return
	end
	
	SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
	SendMessageGlobal(string.format("Inicia em:"), 0)
	SendMessageGlobal(string.format("%d minuto(s)", RESTA1_ANNOUNCE_MINUTES), 0)
	SendMessageGlobal(string.format("==="), 0)
	SendMessageGlobal(string.format("Prepare-se!"), 0)
	SendMessageGlobal(string.format("= ============= = ============= ="), 0)

	minutesToStart = RESTA1_ANNOUNCE_MINUTES
	timer = Timer.Repeater(60, 	RESTA1_ANNOUNCE_MINUTES, Resta1.Running)
end

function Resta1.Running()
	minutesToStart = minutesToStart - 1
	if minutesToStart <= 0
	then
		Timer.Cancel(timer)
		timer = nil
		aberto = true
		Resta1.RemovePlayers()
		timerCheck = Timer.Interval(2, Resta1.CheckUser)
		SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
		SendMessageGlobal(string.format("Inicia em:"), 0)
		SendMessageGlobal(string.format("%d seg.", RESTA1_TIME_CLOSE), 0)
		SendMessageGlobal(string.format("Para participar digite:"), 0)
		SendMessageGlobal(string.format("%s",RESTA1_COMMAND_GO), 0)
		SendMessageGlobal(string.format("= ============= = ============= ="), 0)
		secondsToClose = RESTA1_TIME_CLOSE
		timer = Timer.Repeater(1, RESTA1_TIME_CLOSE, Resta1.ComandoIrTimer)	
	else
		SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
		SendMessageGlobal(string.format("Inicia em:"), 0)
		SendMessageGlobal(string.format("%d minuto(s)", minutesToStart), 0)
		SendMessageGlobal(string.format("==="), 0)
		SendMessageGlobal(string.format("Prepare-se!"), 0)
		SendMessageGlobal(string.format("= ============= = ============= ="), 0)
		
	end
end

function Resta1.ComandoAbrir(aIndex, Arguments)
	local staff = User.new(aIndex)
	
	if staff:getAuthority() == 1
	then
		return
	end
	
	if RESTA1_COMMAND_SWITCH == 0
	then
		return
	end
	
	if aberto == true or iniciado == true
	then
		SendMessage(string.format("[RESTA1]Aguarde o fim do evento atual.", RESTA1_COMMAND_OPEN), aIndex, 1)
		return
	end
	
	local tempo = Cmd:getNumber(Arguments, 1)
	
	if tempo <= 0 or tempo == nil
	then
		SendMessage(string.format("[RESTA1] Use %s <tempo>", RESTA1_COMMAND_OPEN), aIndex, 1)
		return
	end
	
	realizador = {Nome = staff:getName(), Account = staff:getAccountID(), Index = aIndex}
	
	aberto = true
	Resta1.RemovePlayers()
	timerCheck = Timer.Interval(2, Resta1.CheckUser)
	
	SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
	SendMessageGlobal(string.format("Inicia em:"), 0)
	SendMessageGlobal(string.format("%d seg.", tempo), 0)
	SendMessageGlobal(string.format("Para participar digite:"), 0)
	SendMessageGlobal(string.format("%s",RESTA1_COMMAND_GO), 0)
	SendMessageGlobal(string.format("= ========== = ========== ="), 0)

	
	secondsToClose = tempo
	
	timer = Timer.Repeater(1, tempo, Resta1.ComandoIrTimer)		
end

function Resta1.CheckUser()
	for i, name in ipairs(Participantes) do
		local index = Participantes[name].Index
		local pTemp = User.new(index)

		if pTemp:getConnected() ~= 3
		then
			RemoverTable(Participantes, name)
		end
		
		local userMap = pTemp:getMapNumber()
		if userMap ~= RESTA1_LOCATION.Map
		then
			RemoverTable(Participantes, name)
			SendMessage("[Resta1] Voce saiu do evento.", index, 1)
		end
		
		local userX = pTemp:getX()
		local userY = pTemp:getY()
		
		if userX < RESTA1_AREA.CoordX1 or userX > RESTA1_AREA.CoordX2 or userY < RESTA1_AREA.CoordY1 or userY > RESTA1_AREA.CoordY2 then
			RemoverTable(Participantes, name)
			Teleport(index, 0, 125, 125)
			SendMessage("[Resta1] Você saiu da area do evento.", index, 1)
			if #Participantes == 1 then
				Resta1.End()
				return
			end
		end	

		pTemp = nil
	end
	
	if aberto == false and iniciado == true
	then
		if CountTable(Participantes) == 1
		then
			if timerCheck ~= nil
			then
				Timer.Cancel(timerCheck)
				timerCheck = nil
			end
			
			Resta1.End()
		end
	end
end

function Resta1.RemovePlayers()

	for aIndex = OBJECT_START_USER, MAX_OBJECT do
		local pTemp = User.new(aIndex)
		if pTemp:getConnected() == 3
		then
			if pTemp:getAuthority() == 1
			then
				if pTemp:getMapNumber() == RESTA1_AREA.Map and pTemp:getX() >= RESTA1_AREA.CoordX1 and pTemp:getX() <= RESTA1_AREA.CoordX2 and pTemp:getY() >= RESTA1_AREA.CoordY1 and pTemp:getY() <= RESTA1_AREA.CoordY2
				then
					Teleport(aIndex, 0, 125, 125)
					SendMessage("[Resta1] Voce nao tem permissao para ficar nessa area.", aIndex, 1)
				end
			end
		end

		pTemp = nil
	end

end

function Resta1.End()	
	local Nome = nil
	local Index = nil
	local Account = nil
	local Mortes = nil
	
	for i, name in ipairs(Participantes) do
		Nome = Participantes[name].Name
		Index = Participantes[name].Index
		Account = Participantes[name].Account
		Mortes = Participantes[name].Mortes
	end
	
	SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
	SendMessageGlobal(string.format("==="), 0)
	SendMessageGlobal(string.format("  Vencedor: %s  ", Nome), 0)
	SendMessageGlobal(string.format("==="), 0)
	SendMessageGlobal(string.format("  Matou %d players  ", Mortes), 0)
	SendMessageGlobal(string.format("= ============= = ============= ="), 0)
	
	Teleport(Index, 0, 125, 125)
	
	DataBase.SetAddValue(RESTA1_PLAYER_REWARD.MoneyTable, RESTA1_PLAYER_REWARD.MoneyColumn, RESTA1_PLAYER_REWARD.MoneyAmmount, RESTA1_PLAYER_REWARD.MoneyWhere, Account)
	DataBase.SetAddValue(RESTA1_PLAYER_REWARD.PointsTable, RESTA1_PLAYER_REWARD.PointsColumn, RESTA1_PLAYER_REWARD.PointsAmmount, RESTA1_PLAYER_REWARD.PointsWhere, Nome)
	SendMessage(string.format("[Sistema] Voce recebeu %d %s.", RESTA1_PLAYER_REWARD.MoneyAmmount, RESTA1_PLAYER_REWARD.MoneyName ), Index, 1)
	
	Resta1.Clear()
end

function Resta1.Clear()
	aberto = false
	iniciado = false
	Participantes = {}
	minutesToStart = nil
	secondsToClose = nil
	realizador = nil
	
	if timer ~= nil
	then
		Timer.Cancel(timer)
		timer = nil
	end
	
	if timerCheck ~= nil
	then
		Timer.Cancel(timerCheck)
		timerCheck = nil
	end
	
	return
end

function Resta1.ComandoIrTimer()
	secondsToClose = secondsToClose - 1
	
	if secondsToClose <= 0
	then
		Timer.Cancel(timer)
		timer = nil
		aberto = false
		
		if CountTable(Participantes) < RESTA1_MIN_PLAYERS
		then
			SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
			SendMessageGlobal(string.format("  Evento Cancelado!  "), 0)
			SendMessageGlobal(string.format("  ..:  "), 0)
			SendMessageGlobal(string.format("[ .. ]"), 0)
			SendMessageGlobal(string.format("  Aguarde o proximo.  "), 0)
			SendMessageGlobal(string.format("= ============= = ============= ="), 0)		
			
			
			if #Participantes > 0 then
				for i, Nome in ipairs(Participantes) do
					Teleport(Participantes[Nome].Index, 0, 125, 125)
				end
			end
			
			Resta1.Clear()
			return
		end
		
		if realizador ~= nil then
			DataBase.SetAddValue(RESTA1_STAFF_REWARD.MoneyTable, RESTA1_STAFF_REWARD.MoneyColumn, RESTA1_STAFF_REWARD.MoneyAmmount, RESTA1_STAFF_REWARD.MoneyWhere, realizador.Account)
			DataBase.SetAddValue(RESTA1_STAFF_REWARD.PointsTable, RESTA1_STAFF_REWARD.PointsColumn, RESTA1_STAFF_REWARD.PointsAmmount, RESTA1_STAFF_REWARD.PointsWhere, realizador.Nome)
			SendMessage(string.format("[Sistema] Você recebeu %d %s.", RESTA1_STAFF_REWARD.MoneyAmmount, RESTA1_STAFF_REWARD.MoneyName), realizador.Index, 1)
		end
		
		SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
		SendMessageGlobal(string.format("==="), 0)
		SendMessageGlobal(string.format("Evento Iniciado!"), 0)
		SendMessageGlobal(string.format("==="), 0)
		SendMessageGlobal(string.format("Aguarde o Anuncio do  vencedor."), 0)
		SendMessageGlobal(string.format("= ============= = ============= ="), 0)
		iniciado = true
		
		return 0
	end
	
	SendMessageGlobal(string.format("= ===== Evento Resta1 ===== ="), 0)
	SendMessageGlobal(string.format("Inicia em:"), 0)
	SendMessageGlobal(string.format("%d seg.", secondsToClose), 0)
	SendMessageGlobal(string.format("Para participar digite:"), 0)
	SendMessageGlobal(string.format("%s",RESTA1_COMMAND_GO), 0)
	SendMessageGlobal(string.format("= ============= = ============= ="), 0)
end

function Resta1.ComandoIr(aIndex, Arguments)
	if aberto == false
	then
		SendMessage(string.format("[Resta1] Nenhum evento aberto"), aIndex, 1)
		return
	end	
	
	local player = User.new(aIndex)
	
	if player:getLevel() < RESTA1_LEVEL
	then
		SendMessage(string.format("[Resta1] Voce precisa estar acima do level %d", RESTA1_LEVEL), aIndex, 1)
		return
	end
	
	if DataBase.GetValue(TABLE_VIP, COLUMN_VIP, WHERE_VIP, player:getAccountID()) < RESTA1_VIP
	then
		SendMessage(string.format("[Resta1] Somente usuarios vip podem usar este comando!"), aIndex, 1)
		return
	end
	
	local Nome = player:getName()

	if DataBase.GetValue(TABLE_RESET, COLUMN_RESET[0], WHERE_RESET, Nome) < RESTA1_RESETS
	then
		SendMessage(string.format("[RESTA1vivência] Voce precisa de %d resets", RESTA1_RESETS), aIndex, 1)
		return
	end
	
	if DataBase.GetValue(TABLE_MRESET, COLUMN_MRESET[0], WHERE_MRESET, Nome) < RESTA1_MRESETS
	then
		SendMessage(string.format("[Resta1] Voce precisa de %d M.Resets", RESTA1_MRESETS), aIndex, 1)
		return
	end	
	
	local Login = player:getAccountID()
	
	if has_key(Participantes, Nome) == true
	then
		SendMessage("[Resta1] Voce ja esta participando.", aIndex, 1)
		return
	end	
	
	InsertKey(Participantes, Nome)
	Participantes[Nome] = {Name = Nome, Index = aIndex, Account = Login, Mortes = 0}
	Teleport(aIndex, RESTA1_LOCATION.Map, RESTA1_LOCATION.CoordX, RESTA1_LOCATION.CoordY)
	SendMessage("[Resta1] Voce foi movido.", aIndex, 1)
	SendMessage("[Resta1] Nao relogue ou sera desclassificado.", aIndex, 1)
end	

function Resta1.BlockAttack(aIndex, TargetIndex)	
	local player = User.new(aIndex)
	local pTarget = User.new(TargetIndex)

	if has_key(Participantes, player:getName()) == true and has_key(Participantes, pTarget:getName()) == true
	then
		if iniciado == false
		then
			SendMessage("[Resta1] Aguarde o inicio do evento.", aIndex, 1)
			return 1
		else
			return
		end
	end
	
	return
end

function Resta1.PlayerDie(aIndex, TargetIndex)
	if iniciado == false
	then
		return
	end
	
	local player = User.new(aIndex)
	local pTarget = User.new(TargetIndex)
	
	if has_key(Participantes, player:getName()) == true and has_key(Participantes, pTarget:getName()) == true
	then
		Participantes[player:getName()].Mortes = Participantes[pTarget:getName()].Mortes + 1
		RemoverTable(Participantes, pTarget:getName())		
		SendMessageGlobal(string.format(" [RESTA1] %s matou %s ", player:getName(), pTarget:getName()), 0)		
		SendMessage(string.format("[Resta1]Voce foi morto por %s", player:getName()), TargetIndex, 1)
	end
end

Resta1.Init()

Commands.Register(RESTA1_COMMAND_GO, Resta1.ComandoIr)
Commands.Register(RESTA1_COMMAND_OPEN, Resta1.ComandoAbrir)
GameServerFunctions.PlayerAttack(Resta1.BlockAttack)
GameServerFunctions.PlayerDie(Resta1.PlayerDie)

return Resta1