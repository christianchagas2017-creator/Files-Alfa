-------------------------------------------------------------------------------------------------------------------------------------
--Configurações de Invasão
--Invasion Switch: 0 = desativado | 1 = ativado
local CONFIG_INVASION_SWITCH = 1

-------------------------------------------------------------------------------------------------------------------------------------
--Index é usado para identificar qual invasão está funcionando (Não utilize 0)
--Day of Week, Day, Hour, Minute
--Day of Week: 0 a 6: Domingo, segunda, terça, quarta, quinta, sexta, sabado
--Day of Week: -1 = Day
--Day = -1 = Horas e minutos.
--Exemplo: rodará todos os dias as 20h15min
--Exemplo 02: rodará todo dia 05 ás 15h00min
--Exemplo 03: rodará todo sábado as 15h00min
--Exemplo 03: rodará todos os dias as 15h00min
-------------------------------------------------------------------------------------------------------------------------------------
local CONFIG_INVASION_DATE = {


	---INVASÃO DOURADOS TARKAN 
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 23, _notification = 54, _minute = 59},
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 00, _notification = 35, _minute = 36},
	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 03, _notification = 54, _minute = 59},	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 04, _notification = 25, _minute = 30},
	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 07, _notification = 54, _minute = 59},	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 08, _notification = 25, _minute = 30},
	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 11, _notification = 54, _minute = 59},	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 12, _notification = 25, _minute = 30},

	{_index = 1, _dayofweek = -1, _day = -1, _hour = 19, _notification = 54, _minute = 59},	
	{_index = 1, _dayofweek = -1, _day = -1, _hour = 20, _notification = 25, _minute = 30},

	--INVASÃO DOURADOS  EM LORENCIA
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 00, _notification = 54, _minute = 59},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 01, _notification = 25, _minute = 30},
	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 04, _notification = 54, _minute = 59},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 05, _notification = 25, _minute = 30},
	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 08, _notification = 54, _minute = 59},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 09, _notification = 25, _minute = 30},
	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 12, _notification = 21, _minute = 22},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 13, _notification = 25, _minute = 30},
	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 16, _notification = 54, _minute = 59},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 17, _notification = 25, _minute = 30},
	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 20, _notification = 54, _minute = 59},	
	{_index = 2, _dayofweek = -1, _day = -1, _hour = 21, _notification = 25, _minute = 30},

	--INVASÃO BOSS HELL MAINE LOSTTOWER
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 01, _notification = 54, _minute = 59},	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 02, _notification = 25, _minute = 30},
	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 05, _notification = 54, _minute = 59},		
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 06, _notification = 25, _minute = 30},
	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 09, _notification = 54, _minute = 59},		
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 10, _notification = 25, _minute = 30},
	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 13, _notification = 54, _minute = 59},		
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 14, _notification = 25, _minute = 30},
	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 17, _notification = 54, _minute = 59},		
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 18, _notification = 25, _minute = 30},
	
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 21, _notification = 54, _minute = 59},		
	{_index = 3, _dayofweek = -1, _day = -1, _hour = 22, _notification = 12, _minute = 13},

	---INVASÃO DOURADOS DEVIAS 
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 02, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 03, _notification = 25, _minute = 30},
	
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 06, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 07, _notification = 25, _minute = 30},
	
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 10, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 11, _notification = 25, _minute = 30},
	
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 14, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 15, _notification = 25, _minute = 30},
	
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 18, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 19, _notification = 25, _minute = 30},
	
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 22, _notification = 54, _minute = 59},		
	{_index = 4, _dayofweek = -1, _day = -1, _hour = 23, _notification = 25, _minute = 30},
	
	---BOSS HARD -ATT 10/11/2025
	{_index = 5, _dayofweek = -1, _day = -1, _hour = 08, _notification = 54, _minute = 59},
	{_index = 5, _dayofweek = -1, _day = -1, _hour = 15, _notification = 54, _minute = 59},
	{_index = 5, _dayofweek = -1, _day = -1, _hour = 21, _notification = 54, _minute = 59},	
	


}

-------------------------------------------------------------------------------------------------------------------------------------
--Index (Invasion) (Não utilize 0)
--Nome da Invasão
--Duração (min)
--Anunciar no global os monstros vivos 1 = sim 0 = não
--Anunciar no global quem matou 1 = sim 0 = não
-------------------------------------------------------------------------------------------------------------------------------------
local CONFIG_INVASION_SYSTEM = {
	--- INVASÃO DE TARKAN -----------------------------------------------------------------------------------------------
{_index = 1, _name = "INVASÃO ~> TARKAN <~", 	 			_duration = 20 , _announce_global = 1, _announce_death = 1},

	--- INVASÃO DE LORENCIA -----------------------------------------------------------------------------------------------
{_index = 2, _name = "INVASÃO ~> LORENCIA <~", 	 		 	_duration = 20 , _announce_global = 1, _announce_death = 1},

	--- INVASÃO HELL MAINE -----------------------------------------------------------------------------------------------
{_index = 3, _name = "HELL MAINE LOSTTOWER", 	 			 	_duration = 40 , _announce_global = 1, _announce_death = 1},

	--- INVASÃO DE DEVIAS -----------------------------------------------------------------------------------------------
{_index = 4, _name = "INVASÃO ~> DEVIAS <~", 	 			_duration = 20 , _announce_global = 1, _announce_death = 1},

    --- BOSS HARD -----------------------------------------------------------------------------------------------
--{_index = 5, _name = "BOSS HARD ~> DEVIAS <~", 	 			_duration = 40 , _announce_global = 1, _announce_death = 1},


}

--Index (Invasion) (Não utilize 0)
--Class Monster
--Map
--Quantia
local INVASION_MONSTER_CREATE = {
	---INVASÃO DOURADOS TARKAN 
{ _index = 1, _class = 82  , _map = 8, _count = 30},		---TARKAN 30 BOSS

	--- INVASÃO DOURADOS LORENCIA
{ _index = 2, _class = 79  , _map = 0, _count = 30},		--LORENCIA 30 BOSS

	--- INVASÃO HELL MAINE
{ _index = 3, _class = 309  , _map = 4, _count = 10},		--LOST 10 BOSS HELL


	---INVASÃO DOURADOS DEVIAS 
{ _index = 4, _class = 53  , _map = 2, _count = 30},		---DEVIAS 30 BOSS

    ---BOSS HARD -ATT 11/11/2025
--{ _index = 5, _class = 275  , _map = 2, _count = 20},		---DEVIAS 10 BOSS



}

--Index (Invasion) (Não utilize 0)
--Class Monster
--Item Section
--Item Index
--Level
--Luck
--Skill
--Opt
--Exc
--Count
local MONSTER_DROP_CLASS = {
	---INVASÃO EM TARKAN 
{ _index = 1, _class = 82  , 	_section = 14, _item_index = 244 , _level = 0, _luck = 0, _skill = 0, _opt = 0, _exc = 0, _count = 2},

	--- INVASÃO EM LORENCIA
{ _index = 2, _class = 79 , 	_section = 14, _item_index = 244 , _level = 0, _luck = 0, _skill = 0, _opt = 0, _exc = 0, _count = 3},


	--- INVASÃO HELL MAINE
{ _index = 3, _class = 309  , 	_section = 14, _item_index = 123 , _level = 0, _luck = 0, _skill = 0, _opt = 0, _exc = 0, _count = 6},

	---INVASÃO EM DEVIAS 
{ _index = 4, _class = 53 , 	_section = 14, _item_index = 244 , _level = 0, _luck = 0, _skill = 0, _opt = 0, _exc = 0, _count = 2},

    ---BOSS HARD 
{ _index = 5, _class = 275 , 	_section = 14, _item_index = 252 , _level = 0, _luck = 0, _skill = 0, _opt = 0, _exc = 0, _count = 3},
{ _index = 5, _class = 275 , 	_section = 0,  _item_index = 55 ,  _level = 15, _luck = 1, _skill = 1, _opt = 6, _exc = 63, _count = 6},




}

local INVASION_MESSAGES = { }

INVASION_MESSAGES["Por"] = {
[1] = "A INVASÃO: %s, COMEÇOU!",
[2] = "A INVASÃO: %s ACABOU!!!",
[3] = "%s matou um %s",
[4] = "Restam %d monstros vivos!",
}

INVASION_MESSAGES["Eng"] = {
[1] = "A INVASÃO: %s, COMEÇOU!",
[2] = "A INVASÃO: %s ACABOU!!!",
[3] = "%s matou um %s",
[4] = "Restam %d monstros vivos!",
}

INVASION_MESSAGES["Spn"] = {
[1] = "A INVASÃO: %s, COMEÇOU!",
[2] = "A INVASÃO: %s ACABOU!!!",
[3] = "%s matou um %s",
[4] = "Restam %d monstros vivos!",
}


--Não mexer aqui configurações do sistema
InvasionSystem = {}
INVASION_MONSTERS = {}
INVASION_SYSTEM = {}
INVASION_ITEMS_RAND = {}

local TimerStartInvasion = 0

function InvasionSystem.Init()
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	GameServerFunctions.MonsterDie(InvasionSystem.MonsterDie)
	GameServerFunctions.MonsterDieGiveItem(InvasionSystem.MonsterDieGiveItem)

	Timer.Interval(1, InvasionSystem.Running)
	
	for i in ipairs(CONFIG_INVASION_DATE) do
		if CONFIG_INVASION_DATE[i]._dayofweek ~= -1
		then
			Schedule.SetDayOfWeek(CONFIG_INVASION_DATE[i]._dayofweek, CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._notification, InvasionSystem.StartNotificacion, CONFIG_INVASION_DATE[i]._index)
			TimerStartInvasion = 5
		elseif CONFIG_INVASION_DATE[i]._day ~= -1
		then
			Schedule.SetDayAndHourAndMinute(CONFIG_INVASION_DATE[i]._day, CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._notification, InvasionSystem.StartNotificacion, CONFIG_INVASION_DATE[i]._index)
			TimerStartInvasion = 5
		else
			Schedule.SetHourAndMinute(CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._notification, InvasionSystem.StartNotificacion, CONFIG_INVASION_DATE[i]._index)
			TimerStartInvasion = 5
		end
	end
	
	for i in ipairs(CONFIG_INVASION_DATE) do
		if CONFIG_INVASION_DATE[i]._dayofweek ~= -1
		then
			Schedule.SetDayOfWeek(CONFIG_INVASION_DATE[i]._dayofweek, CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._minute, InvasionSystem.Start, CONFIG_INVASION_DATE[i]._index)
		elseif CONFIG_INVASION_DATE[i]._day ~= -1
		then
			Schedule.SetDayAndHourAndMinute(CONFIG_INVASION_DATE[i]._day, CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._minute, InvasionSystem.Start, CONFIG_INVASION_DATE[i]._index)
		else
			Schedule.SetHourAndMinute(CONFIG_INVASION_DATE[i]._hour, CONFIG_INVASION_DATE[i]._minute, InvasionSystem.Start, CONFIG_INVASION_DATE[i]._index)
		end
	end
end

function InvasionSystem.StartNotificacion(index)
    for i in ipairs(CONFIG_INVASION_SYSTEM) do
	    if CONFIG_INVASION_SYSTEM[i]._index == index
		then
            InvasionSystem.NameInvasion = CONFIG_INVASION_SYSTEM[i]._name
			InvasionSystem.TimerStart()
			Timer.Repeater(60, TimerStartInvasion, InvasionSystem.TimerStart)
		end
	end 
end

function InvasionSystem.TimerStart()
    if TimerStartInvasion > 0 
    then
        SendMessageGlobal(string.format("A Invasão: %s iniciará em %d minuto(s)", InvasionSystem.NameInvasion, TimerStartInvasion),0)
		TimerStartInvasion = TimerStartInvasion - 1
    end
end

function InvasionSystem.Start(index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for i in ipairs(CONFIG_INVASION_SYSTEM) do
		if CONFIG_INVASION_SYSTEM[i]._index == index
		then
			Message.SendMessageGlobalMultLangArgs(INVASION_MESSAGES, 1, 0, CONFIG_INVASION_SYSTEM[i]._name)
			
			for n in ipairs(INVASION_MONSTER_CREATE) do
				if INVASION_MONSTER_CREATE[n]._index == index
				then
					InvasionSystem.CreateMonster(index, INVASION_MONSTER_CREATE[n]._class, INVASION_MONSTER_CREATE[n]._map, INVASION_MONSTER_CREATE[n]._count)
				end
			end
			
			INVASION_SYSTEM[index] = { _index = index, 
										_end = CONFIG_INVASION_SYSTEM[i]._duration * 60,
										_state = true,
										_running = true, 
										_Name = CONFIG_INVASION_SYSTEM[i]._name,
										_Announce_Death = CONFIG_INVASION_SYSTEM[i]._announce_death,
										_Announce_Global = CONFIG_INVASION_SYSTEM[i]._announce_global}
		end
	end
end

function InvasionSystem.Running()
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_SYSTEM) do
		if INVASION_SYSTEM[key]._running == true
		then
			if INVASION_SYSTEM[key]._end <= 0
			then
				InvasionSystem.InvasionEnd(key)
			else
				INVASION_SYSTEM[key]._end = INVASION_SYSTEM[key]._end - 1
			end
		end
	end
end

function InvasionSystem.CreateMonster(invasion, class, map, count)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for i = 1, count do
		local index = AddMonster(map)
		
		if index == -1
		then
			LogAdd(string.format("[Invasion] Problema ao criar o monstro :%d", class))
			return
		end
		
		local monster = User.new(index)
		
		SetPositionMonster(index, map)
		SetMonster(index, class)
		
		monster:setRegenTime(0)
		
		LogAdd(string.format("[Invasion] Class:%d Map:%d CoordX:%d CoordY:%d",class, monster:getMapNumber(), monster:getX(), monster:getY()))
		
		INVASION_MONSTERS[index] = {_index = index, _Invasion = invasion, _Class = class}
	end
end

function InvasionSystem.InvasionEnd(key)
	--Anunciar no global o fim da invasão
	Message.SendMessageGlobalMultLangArgs(INVASION_MESSAGES, 2, 0, INVASION_SYSTEM[key]._Name)
	
	--Remove os monstros
	InvasionSystem.ClearInvasionBy(key)
	
	--Limpar o sistema
	InvasionSystem.ClearSystemByInvasion(key)
end

function InvasionSystem.ClearInvasionBy(index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_SYSTEM) do
		if INVASION_SYSTEM[key]._index == index
		then
			--Remover monstros caso exista algum vivo
			InvasionSystem.ClearByMonster(INVASION_SYSTEM[key]._index)
		end
	end
end

function InvasionSystem.ClearByMonster(index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_MONSTERS) do
		if INVASION_MONSTERS[key]._Invasion == index
		then
			if INVASION_MONSTERS[key]._index ~= -1
			then
				gObjDel(INVASION_MONSTERS[key]._index)
				INVASION_MONSTERS[key] = nil
			end
		end
	end
end

function InvasionSystem.ClearSystemByInvasion(index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_SYSTEM) do
		if INVASION_SYSTEM[key]._index == index
		then
			INVASION_SYSTEM[key] = nil
		end
	end
end

function InvasionSystem.DelByMonster(invasion, index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_MONSTERS) do
		if INVASION_MONSTERS[key]._Invasion == invasion
		then
			if INVASION_MONSTERS[key]._index == index
			then
				if INVASION_MONSTERS[key]._index ~= -1
				then
					gObjDel(INVASION_MONSTERS[key]._index)
					
					INVASION_MONSTERS[key]._index = -1
				end
			end
		end
	end
end

function InvasionSystem.GetByMonster(invasion, index)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	if INVASION_MONSTERS[index] == nil
	then
		return -1
	end
	
	if INVASION_MONSTERS[index]._index == -1
	then
		return -1
	end
	
	if INVASION_MONSTERS[index]._Invasion == invasion
	then
		return INVASION_MONSTERS[index]._index
	end
	
	return -1
end

function InvasionSystem.GetCountMonsterByInvasion(invasion)
	local count = 0

	for key in pairs(INVASION_MONSTERS) do
		if INVASION_MONSTERS[key]._Invasion == invasion
		then
			if INVASION_MONSTERS[key]._index ~= -1
			then
				local monster = User.new(INVASION_MONSTERS[key]._index)
				
				if monster:getConnected() >= 2
				then
					count = count + 1
				end
			end
		end
	end
	
	return count
end

function InvasionSystem.InsertItens(item)
	InsertKey(INVASION_ITEMS_RAND, item)
end

function InvasionSystem.GetItemRand()
	if #INVASION_ITEMS_RAND > 0
	then
		return GetRand(1, #INVASION_ITEMS_RAND)
	end
	
	return -1
end

function InvasionSystem.DropItemByMonster(index, Player, Monster)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	INVASION_ITEMS_RAND = {}
	
	local player = User.new(Player)
	local monster = User.new(Monster)
	
	for i in ipairs(MONSTER_DROP_CLASS) do
		if MONSTER_DROP_CLASS[i]._index == index and MONSTER_DROP_CLASS[i]._class == monster:getClass()
		then
			InvasionSystem.InsertItens(MONSTER_DROP_CLASS[i])
		end
	end
	
	local key_rand = InvasionSystem.GetItemRand()
	
	if key_rand == -1
	then
		LogAdd("[Invasion] Existe uma má configuração no sistema de dropar item")
		return
	end
	
	local ItemDrop = INVASION_ITEMS_RAND[key_rand]
	
	for i = 1, ItemDrop._count do
		ItemSerialCreate(Player, player:getMapNumber(), player:getX(), player:getY(), GET_ITEM(ItemDrop._section, ItemDrop._item_index), ItemDrop._level, 255, ItemDrop._luck, ItemDrop._skill, ItemDrop._opt, ItemDrop._exc)
	end
end

function InvasionSystem.MonsterDie(Player, Monster)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	local player = User.new(Player)
	local monster = User.new(Monster)
	
	for key in pairs(INVASION_SYSTEM) do
		if INVASION_SYSTEM[key]._running == true
		then
			if InvasionSystem.GetByMonster(INVASION_SYSTEM[key]._index, Monster) == Monster
			then
				--Monstrar no global que o player X matou o monstro X
				if INVASION_SYSTEM[key]._Announce_Death == 1
				then
					Message.SendMessageGlobalMultLangArgs(INVASION_MESSAGES, 3, 0, player:getName(), monster:getName())
				end
				
				--Dizer quantos monstros restam
				if INVASION_SYSTEM[key]._Announce_Global == 1
				then
					local MonsterCount = math.floor(InvasionSystem.GetCountMonsterByInvasion(INVASION_SYSTEM[key]._index) - 1)
					if MonsterCount > 0
					then
						Message.SendMessageGlobalMultLangArgs(INVASION_MESSAGES, 4, 0, MonsterCount)
					else
						--Finalizar a invasão mataram todos monstros
						Timer.TimeOut(5, InvasionSystem.InvasionEnd, key)
					end
				end
			end
		end
	end
end

function InvasionSystem.MonsterDieGiveItem(Player, Monster)
	if CONFIG_INVASION_SWITCH == 0
	then
		return
	end
	
	for key in pairs(INVASION_SYSTEM) do
		if INVASION_SYSTEM[key]._running == true
		then
			if InvasionSystem.GetByMonster(INVASION_SYSTEM[key]._index, Monster) == Monster
			then
				--Sistema onde vai gerar 1 item aleatório
				InvasionSystem.DropItemByMonster(INVASION_SYSTEM[key]._index, Player, Monster)
				
				--Remover o monstro do sistema
				InvasionSystem.DelByMonster(INVASION_SYSTEM[key]._index, Monster)
				return 1
			end
		end
	end
	
	return
end



InvasionSystem.Init()

return InvasionSystem