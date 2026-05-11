ManualMataMata = {}

local randomMap = GetRandomValue(1, 2)
local player1back = nil
local player2back = nil

function ManualMataMata.Init()
    if ManualMataMata_Config.Enabled then
        Commands.Register(ManualMataMata_Config.CommandGo["Por"], ManualMataMata.CommandGo)
        Commands.Register(ManualMataMata_Config.CommandGo["Eng"], ManualMataMata.CommandGo)
        Commands.Register(ManualMataMata_Config.CommandGo["Spn"], ManualMataMata.CommandGo)

        Commands.Register(ManualMataMata_Config.CommandEvent["Por"], ManualMataMata.Command)
        Commands.Register(ManualMataMata_Config.CommandEvent["Eng"], ManualMataMata.Command)
        Commands.Register(ManualMataMata_Config.CommandEvent["Spn"], ManualMataMata.Command)

        GameServerFunctions.PlayerLogout(ManualMataMata.PlayerLogout)
        GameServerFunctions.EnterCharacter(ManualMataMata.EnterCharacter)

        ManualMataMata.Define()
    end
end

function ManualMataMata.Define()
    ManualMataMata.Comandos = {
        [1]  = ManualMataMata.CommandOpen,
        [2]  = ManualMataMata.CommandCancel,
        [3]  = ManualMataMata.CommandInit,
        [4]  = ManualMataMata.CommandCall,
        [5]  = ManualMataMata.CommandWin,
        [6]  = ManualMataMata.CommandCorrect,
        [7]  = ManualMataMata.CommandStep,
        [8]  = ManualMataMata.CommandInfo,
        [9]  = ManualMataMata.CommandFinal,
        [10] = ManualMataMata.CommandSemiFinal,
        [11] = ManualMataMata.CommandRules,
        [12] = ManualMataMata.CommandCancelFight,
        [13] = ManualMataMata.CommandWinners,
        [14] = ManualMataMata.CommandReward,
        [15] = ManualMataMata.CommandEnd,
        [16] = ManualMataMata.CommandJah,
        [17] = ManualMataMata.CommandRefresh,
        [18] = ManualMataMata.CommandRefreshAll,
        [19] = ManualMataMata.CommandLugar,
        [20] = ManualMataMata.CommandCallBackFight,
    }
    ManualMataMata.Status = {
        Open = {
            Timer = -1,
            Count = 0,
            Status = false
        },
        TimerCheck = -1,
        Running = false,
        Started = false,
        Fight = false,
        Awarded = false
    }
    ManualMataMata.AllowedClass = -1
    ManualMataMata.Timestamp = {
        Start = -1,
        End = -1
    }
    ManualMataMata.CurrentFight = {}
    ManualMataMata.LastFight = {Winner = -1, Loser = -1}
    ManualMataMata.CurrentStep = 0
    ManualMataMata.NextStep = 1
    ManualMataMata.CurrentMap = 1
    ManualMataMata.NextMap = 1
    ManualMataMata.Players = {}
    ManualMataMata.Winners = {[1] = {Active = false}, [2] = {Active = false}, [3] = {Active = false}}
    ManualMataMata.SemiFinal = false
    ManualMataMata.Final = false
end

function ManualMataMata.Announce()
    if ManualMataMata.Status.Open.Count <= 0 then
        ManualMataMata.Status.Open.Timer = -1
        ManualMataMata.Status.Open.Status = false

        for i = OBJECT_START_USER, MAX_OBJECT do
		    if gObjIsConnectedGP(i) == 0 then
		    	goto continue
		    end
		    SendMessagePlayer(i, 0, string.format(ManualMataMata_Config.Texts[GetLanguageObject(i)][6], ManualMataMata_Config.CommandGo[GetLanguageObject(i)]))
		    ::continue::
	    end
    else
        for i = OBJECT_START_USER, MAX_OBJECT do
		    if gObjIsConnectedGP(i) == 0 then
		    	goto continue
		    end
		    SendMessagePlayer(i, 0, string.format(ManualMataMata_Config.Texts[GetLanguageObject(i)][2], ManualMataMata_Config.CommandGo[GetLanguageObject(i)], ManualMataMata.Status.Open.Count))
		    ::continue::
	    end

        ManualMataMata.Status.Open.Count = ManualMataMata.Status.Open.Count - 1
    end
end

function ManualMataMata.PlayerLogout(aIndex)
    if not ManualMataMata.Status.Running then return end
    local player = User.new(aIndex)

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == aIndex and ManualMataMata.Players[i].Active and ManualMataMata.Players[i].playerInfo[1] == player:getName() then
            --ManualMataMata.Players[i].Active = false
            --ManualMataMata.Players[i].TimeOut = 120
            ManualMataMata.Players[i].LeftEvent = true
            Teleport(aIndex, 0 , 125, 125)
            SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][33], aIndex, 1)
            break
        end
    end
end

function ManualMataMata.EnterCharacter(aIndex)
    if not ManualMataMata.Status.Running then return end

    local player = User.new(aIndex)

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[1] == player:getName() and not ManualMataMata.Players[i].Active and not ManualMataMata.Players[i].LeftEvent then
            if ManualMataMata.Players[i].playerInfo[2] ~= aIndex then
                ManualMataMata.Players[i].playerInfo[2] = aIndex
            end

            if ManualMataMata.Players[i].Step == ManualMataMata.CurrentStep then
                if ManualMataMata.Players[i].TimeOut > 0 then
                    ManualMataMata.Players[i].Active = true
                    ManualMataMata.Players[i].TimeOut = 0
                    return
                end
            end

            ManualMataMata.Players[i].LeftEvent = true
            Teleport(aIndex, 0 , 125, 125)
            SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][33], aIndex, 1)
            break
        end
    end
    
end

function ManualMataMata.RunCheck()
    ManualMataMata.CheckPlayerOnEvent()
    ManualMataMata.CheckEventArea()
end

function ManualMataMata.CheckPlayerOnEvent()
    if ManualMataMata.Final then return end

    for i in ipairs(ManualMataMata.Players) do
        if not ManualMataMata.Players[i].Active and not ManualMataMata.Players[i].LeftEvent then
            if ManualMataMata.Players[i].TimeOut <= 0 then
                ManualMataMata.Players[i].LeftEvent = true
                if gObjIsConnectedGP(ManualMataMata.Players[i].playerInfo[2]) ~= 0 then
                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                    SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][33], ManualMataMata.Players[i].playerInfo[2], 1)
                end
            else
                ManualMataMata.Players[i].TimeOut = ManualMataMata.Players[i].TimeOut - 1
            end
        end
    end
end

function ManualMataMata.CheckEventArea()
    if ManualMataMata.Final then return end

    for aIndex = 13000, 13999 do
        if gObjIsConnectedGP(aIndex) ~= 0 then
            local player = User.new(aIndex)
            local onEvent = false
            local map = player:getMapNumber()
            local x = player:getX()
            local y = player:getY()

            if player:getAuthority() < 2 then
                for i in ipairs(ManualMataMata.Players) do
                    if ManualMataMata.Players[i].playerInfo[1] == player:getName() and ManualMataMata.Players[i].Active then
                        onEvent = true
                    
                        local eventmap = ManualMataMata.CurrentMap
                        if ManualMataMata.CurrentStep >= 0 then
                            if ManualMataMata.Players[i].Step == ManualMataMata.NextStep then
                                eventmap = ManualMataMata.NextMap
                            end
                        end
                    
                        if map ~= ManualMataMata_Config.Area[eventmap].Total.Map then
                            ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
                            Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                            SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][34], ManualMataMata.Players[i].playerInfo[2], 1)
                        else
                            if x >= ManualMataMata_Config.Area[eventmap].Total.X1 and x <= ManualMataMata_Config.Area[eventmap].Total.X2 and y >= ManualMataMata_Config.Area[eventmap].Total.Y1 and y <= ManualMataMata_Config.Area[eventmap].Total.Y2 then
                                if ManualMataMata.Status.Fight then
                                    if ManualMataMata.Players[i].playerInfo[2] ~= ManualMataMata.CurrentFight[1].playerInfo[2] and ManualMataMata.Players[i].playerInfo[2] ~= ManualMataMata.CurrentFight[2].playerInfo[2] then
                                        if x >= ManualMataMata_Config.Area[eventmap].PvP.X1 and x <= ManualMataMata_Config.Area[eventmap].PvP.X2 and y >= ManualMataMata_Config.Area[eventmap].PvP.Y1 and y <= ManualMataMata_Config.Area[eventmap].PvP.Y2 then
                                            if ManualMataMata.Players[i].PvpInvader then
                                                if ManualMataMata.Players[i].TimeOut <= 0 then
                                                    ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
                                                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                                                    SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][33], ManualMataMata.Players[i].playerInfo[2], 1)
                                                else
                                                    ManualMataMata.Players[i].TimeOut = ManualMataMata.Players[i].TimeOut - 1
                                                    SendMessage(string.format(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][35], ManualMataMata.Players[i].TimeOut), ManualMataMata.Players[i].playerInfo[2], 1)
                                                end
                                            else
                                                ManualMataMata.Players[i].TimeOut = 5
                                                ManualMataMata.Players[i].PvpInvader = true
                                                SendMessage(string.format(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][35], ManualMataMata.Players[i].TimeOut), ManualMataMata.Players[i].playerInfo[2], 1)
                                            end    
                                        else
                                            if ManualMataMata.Players[i].PvpInvader then
                                                ManualMataMata.Players[i].PvpInvader = false
                                                ManualMataMata.Players[i].TimeOut = 0
                                            end
                                        end
                                    end
                                else
                                    if x >= ManualMataMata_Config.Area[eventmap].PvP.X1 and x <= ManualMataMata_Config.Area[eventmap].PvP.X2 and y >= ManualMataMata_Config.Area[eventmap].PvP.Y1 and y <= ManualMataMata_Config.Area[eventmap].PvP.Y2 then
                                        if ManualMataMata.Players[i].PvpInvader then
                                            if ManualMataMata.Players[i].TimeOut <= 0 then
                                                ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
                                                Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                                                SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][33], ManualMataMata.Players[i].playerInfo[2], 1)
                                            else
                                                ManualMataMata.Players[i].TimeOut = ManualMataMata.Players[i].TimeOut - 1
                                                SendMessage(string.format(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][35], ManualMataMata.Players[i].TimeOut), ManualMataMata.Players[i].playerInfo[2], 1)
                                            end
                                        else
                                            ManualMataMata.Players[i].TimeOut = 5
                                            ManualMataMata.Players[i].PvpInvader = true
                                            SendMessage(string.format(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][35], ManualMataMata.Players[i].TimeOut), ManualMataMata.Players[i].playerInfo[2], 1)
                                        end    
                                    else
                                        if ManualMataMata.Players[i].PvpInvader then
                                            ManualMataMata.Players[i].PvpInvader = false
                                            ManualMataMata.Players[i].TimeOut = 0
                                        end
                                    end
                                end
                            else
                                ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
                                Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                                SendMessage(ManualMataMata_Config.Texts[ManualMataMata.Players[i].playerInfo[3]][34], ManualMataMata.Players[i].playerInfo[2], 1)
                            end
                        end
                    end
                end

                if not onEvent then
                    if map == ManualMataMata_Config.Area[0].Total.Map then
                        if x >= ManualMataMata_Config.Area[0].Total.X1 and x <= ManualMataMata_Config.Area[0].Total.X2 and y >= ManualMataMata_Config.Area[0].Total.Y1 and y <= ManualMataMata_Config.Area[0].Total.Y2 then
                            Teleport(aIndex, 0, 125, 125)
                            SendMessage(ManualMataMata_Config.Texts[player:getLanguage()][36], aIndex, 1)
                        end
                    elseif map == ManualMataMata_Config.Area[1].Total.Map then
                        if x >= ManualMataMata_Config.Area[1].Total.X1 and x <= ManualMataMata_Config.Area[1].Total.X2 and y >= ManualMataMata_Config.Area[1].Total.Y1 and y <= ManualMataMata_Config.Area[1].Total.Y2 then
                            Teleport(aIndex, 0, 125, 125)
                            SendMessage(ManualMataMata_Config.Texts[player:getLanguage()][36], aIndex, 1)
                        end
                    end
                end
            end
        end
    end
end

function ManualMataMata.Command(aIndex, Arguments)
    local lang = GetLanguageObject(aIndex)
    local comando = Cmd:getString(Arguments, 1, 0)
    local funcExec = 0

    for i in ipairs(ManualMataMata_Config.Command[lang]) do
        if string.lower(ManualMataMata_Config.Command[lang][i]) == string.lower(comando) then
            funcExec = i
            break
        end
    end

    if funcExec == nil or funcExec <= 0 then
        SendMessage(ManualMataMata_Config.Texts[lang][5], aIndex, 1)
        return
    end

    ManualMataMata.Comandos[funcExec](aIndex, Arguments)
end

function ManualMataMata.CommandRefresh(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    local nick = Cmd:getString(Arguments, 2, 0)

    if nick == nil or type(nick) ~= "string" or nick:len() <= 0 then
        SendMessage("Nick inválido", aIndex, 1)
        return
    end

    local targetindex = Utils.GetPlayerIndex(nick)

    if targetindex == -1 then
        SendMessage("Nick incorreto ou esta offline", aIndex, 1)
        return
    end

    local target = User.new(targetindex)
    target:setCacheInt("mtmtRefreshSD", 1)

    SendMessage(string.format("SD de %s recuperado, aguarde 5 segundos para iniciar a luta", nick), aIndex, 1)
end

function ManualMataMata.CommandRefreshAll(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    --local language = player:getLanguage()

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active then
            local allplayer = User.new(ManualMataMata.Players[i].playerInfo[2])
            allplayer:setCacheInt("mtmtRefreshSD", 1)
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][78], player:getName()), ManualMataMata.Players[i].playerInfo[2], 28)
        end
    end

    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][77]), aIndex, 1)
end

function ManualMataMata.CommandOpen(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][22],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][3], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    local tempo = Cmd:getNumber(Arguments, 2)

    if tempo == nil or type(tempo) ~= 'number' or tempo <= 0 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][4], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    local tipo = Cmd:getNumber(Arguments, 3)

    if tipo  == nil or type(tipo) ~= 'number' or tipo <= 0 then
        tipo = -1
    else
        if ManualMataMata_Config.Class[tipo] == nil then
            tipo = -1
        end
    end

    ManualMataMata.AllowedClass = tipo

    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 1, 0)
    ManualMataMata.Status.Running = true
    ManualMataMata.Status.Open.Count = tempo
    ManualMataMata.Status.Open.Status = true
    ManualMataMata.Status.Open.Timer = Timer.Repeater(1, tempo, ManualMataMata.Announce)
    ManualMataMata.Status.TimerCheck = Timer.Interval(1, ManualMataMata.RunCheck)
    Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Y)
end

function ManualMataMata.CommandGo(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local hwid = Utils.UserGetHWID(playerInfo)

    if player:getAuthority() > 1 then
        Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Y)
        return
    end

    if not ManualMataMata.Status.Running or not ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][9], aIndex, 1)
        return
    end

    if not ManualMataMata_Config.Class[ManualMataMata.AllowedClass][player:getClass()] then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][76], aIndex, 1)
        return
    end

    if ManualMataMata.CountPlayersOnSameHwid(aIndex, hwid) > 0 then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][11], aIndex, 1)
        return
    elseif ManualMataMata.PlayerAlreadyInEvent(aIndex) then
        ManualMataMata.UpdatePlayerList(playerInfo)
    else
        local info = {playerInfo = playerInfo, Hwid = hwid, Active = true, Step = 1, TimeOut = 0, LeftEvent = false, PvpInvader = false}
        table.insert(ManualMataMata.Players, info)
    end

    local x1 = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.MX)
    local x2 = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.MX)

    local x
    local y

    if randomMap == 1 then
        x = x1
        y = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.Y, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.MY)
    else
        x = x2
        y = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.Y, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.MY)
    end

    Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Respawn.Map, x, y)

    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][10], aIndex, 1)
end

function ManualMataMata.CommandCancel(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end
    for i in ipairs(ManualMataMata.Players) do
        if gObjIsConnectedGP(ManualMataMata.Players[i].playerInfo[2]) ~= 0 then
            local p = User.new(ManualMataMata.Players[i].playerInfo[2])

            local map = p:getMapNumber()
            local x = p:getX()
            local y = p:getY()

            if map == ManualMataMata_Config.Area[1].Total.Map  then
                if x >= ManualMataMata_Config.Area[1].Total.X1 and x <= ManualMataMata_Config.Area[1].Total.X2 and y >= ManualMataMata_Config.Area[1].Total.Y1 and y <= ManualMataMata_Config.Area[1].Total.Y2 then
                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                end
            elseif  map == ManualMataMata_Config.Area[0].Total.Map then
                if x >= ManualMataMata_Config.Area[0].Total.X1 and x <= ManualMataMata_Config.Area[0].Total.X2 and y >= ManualMataMata_Config.Area[0].Total.Y1 and y <= ManualMataMata_Config.Area[0].Total.Y2 then
                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                end
            end
        end
    end

    if ManualMataMata.Status.Open.Timer ~= -1 then
        Timer.Cancel(ManualMataMata.Status.Open.Timer)
    end
    Timer.Cancel(ManualMataMata.Status.TimerCheck)

    SendMessageGlobal("", 0)
    SendMessageGlobal("-------------------------------------------", 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 8, 0)
    SendMessageGlobal("-------------------------------------------", 0)
    SendMessageGlobal("", 0)

    ManualMataMata.Define()
end

function ManualMataMata.CommandRules(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][18], aIndex, 1)
        return
    end

    local rules = Cmd:getNumber(Arguments, 2, 0)

    if rules == 1 then
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 1, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 2, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 3, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 4, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 5, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[1], 6, 0)
    elseif rules == 2 then
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 1, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 2, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 3, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 4, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 5, 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Rules[2], 6, 0)
    else
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][12], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][11]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][13]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][14]), aIndex, 1)
        return
    end

end

function ManualMataMata.CommandJah(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][75], aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active then
            if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.CurrentFight[1].playerInfo[2] or ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.CurrentFight[2].playerInfo[2] then
                local allplayer = User.new(ManualMataMata.Players[i].playerInfo[2])
                allplayer:setCacheInt("mtmtRefreshSD", 1)
                SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][78], player:getName()), ManualMataMata.Players[i].playerInfo[2], 28)
            end

            if ManualMataMata.Final then
                local allplayer = User.new(ManualMataMata.Players[i].playerInfo[2])
                allplayer:setCacheInt("mtmtRefreshSD", 1)
                SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][78], player:getName()), ManualMataMata.Players[i].playerInfo[2], 28)
            end
        end
    end

    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][77]), aIndex, 1)

    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 74, 0)
end

function ManualMataMata.CommandInit(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][22],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        return
    end

    local naFaseAtual = ManualMataMata.CountPlayersOnStep(1)

    if naFaseAtual < 4 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][42],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][2]), aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active then
            local x1 = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.MX)
            local x2 = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.MX)

            local x
            local y

            if randomMap == 2 then
                x = x1
                y = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.Y, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Fase.MY)
            else
                x = x2
                y = GetRandomValue(ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.Y, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Iniciar.MY)
            end

            Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Respawn.Map, x, y)
        end
    end

    ManualMataMata.Status.Started = true

    ManualMataMata.Timestamp.Start = os.time()

    --SendMessageGlobal(string.format("[%s]", player:getName()), 0)
    SendMessageGlobal("", 0)
    SendMessageGlobal("", 0)
    SendMessageGlobal("---------------------------------------------------", 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 20, 0)
    SendMessageGlobal("---------------------------------------------------", 0)
    SendMessageGlobal("", 0)
end

function ManualMataMata.CommandStep(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if ManualMataMata.Final then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][56], aIndex, 1)
        return
    end

    local delaystepannounce = false
    if ManualMataMata.CurrentStep > 0 then       
        local naFaseAtual = ManualMataMata.CountPlayersOnStep(ManualMataMata.CurrentStep)
        
        if naFaseAtual > 1 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][37], naFaseAtual, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][4]), aIndex, 1)
            return
        end

        if naFaseAtual == 1 then
            delaystepannounce = true
            for i in ipairs(ManualMataMata.Players) do
                if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step == ManualMataMata.CurrentStep then
                    ManualMataMata.Players[i].Step = ManualMataMata.NextStep
                    Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
                    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][39], ManualMataMata.Players[i].playerInfo[2], 1)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 19, 0)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 38, 0, ManualMataMata.Players[i].playerInfo[1])
                    SendMessageGlobal("", 0)
                    SendMessageGlobal("-----------------------------------------------------", 0)
                end
            end
        end

        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase <= 4 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
            SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][41], aIndex, 1)
            return
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
            return
        end
    else
        local naFaseAtual = ManualMataMata.CountPlayersOnStep(1)
        if naFaseAtual >= 5 and naFaseAtual <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naFaseAtual, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
            return
        end
    end

    ManualMataMata.CurrentStep = ManualMataMata.NextStep
    ManualMataMata.CurrentMap = ManualMataMata.CurrentStep%2
    ManualMataMata.NextStep = ManualMataMata.CurrentStep + 1
    ManualMataMata.NextMap = ManualMataMata.NextStep%2

    if ManualMataMata.CurrentStep > 1 then
        Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Y)
    end

    if delaystepannounce then
        Timer.TimeOut(3, ManualMataMata.SendDelayedStepAnnounce)
    else
        SendMessageGlobal("", 0)
        SendMessageGlobal("", 0)
        SendMessageGlobal("-----------------------------------------------------", 0)
        Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 25, 0, ManualMataMata.CurrentStep)
        SendMessageGlobal("-----------------------------------------------------", 0)
        SendMessageGlobal("", 0)
    end
end

function ManualMataMata.CommandSemiFinal(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if ManualMataMata.Final then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][56], aIndex, 1)
        return
    end

    local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

    if naProximaFase > 6 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][43], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        return
    elseif naProximaFase <= 4 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][41], aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step <= ManualMataMata.CurrentStep then
            ManualMataMata.Players[i].Step = ManualMataMata.NextStep
            Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
        end
    end

    ManualMataMata.CurrentStep = ManualMataMata.NextStep
    ManualMataMata.CurrentMap = ManualMataMata.CurrentStep%2
    ManualMataMata.NextStep = ManualMataMata.CurrentStep + 1
    ManualMataMata.NextMap = ManualMataMata.NextStep%2

    Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Y)

    SendMessageGlobal("", 0)
    SendMessageGlobal("", 0)
    SendMessageGlobal("-----------------------------------------------------", 0)
    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 26, 0, ManualMataMata.NextStep)
    SendMessageGlobal("-----------------------------------------------------", 0)
    SendMessageGlobal("", 0)

    ManualMataMata.SemiFinal = true
end

function ManualMataMata.CommandFinal(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    --if ManualMataMata.Final then
    --    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][56], aIndex, 1)
    --    return
    --end

    local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

    if naProximaFase > 6 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][43], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        return
    elseif naProximaFase == 5 or naProximaFase == 6 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step <= ManualMataMata.CurrentStep then
            ManualMataMata.Players[i].Step = ManualMataMata.NextStep
            Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
        end
    end

    ManualMataMata.CurrentStep = ManualMataMata.NextStep
    ManualMataMata.CurrentMap = ManualMataMata.CurrentStep%2
    ManualMataMata.NextStep = ManualMataMata.CurrentStep + 1
    ManualMataMata.NextMap = ManualMataMata.NextStep%2

    Teleport(aIndex, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Watch.Y)

    SendMessageGlobal("", 0)
    SendMessageGlobal("", 0)
    SendMessageGlobal("---------------------------------------------", 0)
    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 27, 0, ManualMataMata.NextStep)
    SendMessageGlobal("---------------------------------------------", 0)
    SendMessageGlobal("", 0)

    ManualMataMata.Final = true

end

function ManualMataMata.SendDelayedStepAnnounce()
    SendMessageGlobal("", 0)
    SendMessageGlobal("-----------------------------------------------------", 0)
    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 25, 0, ManualMataMata.NextStep)
    SendMessageGlobal("-----------------------------------------------------", 0)
    SendMessageGlobal("", 0)
end

function ManualMataMata.CommandCall(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep <= 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
            return
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
            return
        elseif naProximaFase < 5 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][73], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
            return
        end
        return
    --else
    --    --local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)
    --    local remaining = ManualMataMata.CountPlayersOnStep(ManualMataMata.CurrentStep)
    --    local playerSum = naProximaFase+remaining
    --    if playerSum >= 5 and playerSum <= 6 and naProximaFase > 0 then
    --        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], playerSum, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
    --        return
    --    elseif playerSum < 5 then
    --        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][73], playerSum, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
    --        return
    --    end
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    --if ManualMataMata.Final then
    --    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][56], aIndex, 1)
    --    return
    --end

    local remaining = ManualMataMata.CountPlayersOnStep(ManualMataMata.CurrentStep)

    if remaining <= 1 then
        if remaining == 1 then
            for i in ipairs(ManualMataMata.Players) do
                if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step == ManualMataMata.CurrentStep then
                    ManualMataMata.Players[i].Step = ManualMataMata.NextStep
                    Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
                    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][39], ManualMataMata.Players[i].playerInfo[2], 1)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 19, 0)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 38, 0, ManualMataMata.Players[i].playerInfo[1])
                    SendMessageGlobal("", 0)
                    SendMessageGlobal("-----------------------------------------------------", 0)
                end
            end
        end

        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        else
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
            SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][41], aIndex, 1)
        end
        return
    end

    if ManualMataMata.Final then
        for i in ipairs(ManualMataMata.Players) do
            if ManualMataMata.Players[i].Active then
                local map, x, y = ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Final.Map, 0, 0
                x, y = Utils.GetSafeLocation(map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Final.X-4, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Final.Y-4, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Final.X+4, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Final.Y+4)
                Teleport(ManualMataMata.Players[i].playerInfo[2], map, x, y)
            end

            --if ManualMataMata.Players[1].Active or ManualMataMata.Players[2].Active or ManualMataMata.Players[3].Active then
            --    SendMessageGlobal(string.format("[%s]", playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("»»» Mata-Mata Finalistas «««"), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[1].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[2].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[3].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("»»»»»»   =========   ««««««"), 0)
            --elseif ManualMataMata.Players[4].Active then
            --    SendMessageGlobal(string.format("»»» Mata-Mata Finalistas «««"), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[1].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[2].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[3].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("• %s •", ManualMataMata.Players[4].playerInfo[1]), 0)
            --    SendMessageGlobal(string.format("»»»»»»   =========   ««««««"), 0)
            --end
        end

    else
        local player1 = ManualMataMata.PickPlayer(ManualMataMata.CurrentStep, -1)
        if player1 == -1 then
            LogAdd("Deu merda na hora de escolher um player")
            return
        end

        local player2 = ManualMataMata.PickPlayer(ManualMataMata.CurrentStep, player1.playerInfo[2])

        ManualMataMata.CurrentFight[1] = player1
        ManualMataMata.CurrentFight[2] = player2

        Teleport(ManualMataMata.CurrentFight[1].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].Y)
        Teleport(ManualMataMata.CurrentFight[2].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].Y)

        SendMessageGlobal(string.format("[%s]", playerInfo[1]), 0)
        SendMessageGlobal(string.format("« %s •[VS]• %s »", ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), 0)

        if player:getAuthority() > 1 then
            local p = User.new(player1.playerInfo[2])
            p:setMonitored(1)
            local p2 = User.new(player2.playerInfo[2])
            p2:setMonitored(1)
        end

        ManualMataMata.Status.Fight = true
    end
end

function ManualMataMata.CommandCallBackFight(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep <= 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
            return
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
            return
        elseif naProximaFase < 5 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][73], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
            return
        end
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    local remaining = ManualMataMata.CountPlayersOnStep(ManualMataMata.CurrentStep)

    if remaining <= 1 then
        if remaining == 1 then
            for i in ipairs(ManualMataMata.Players) do
                if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step == ManualMataMata.CurrentStep then
                    ManualMataMata.Players[i].Step = ManualMataMata.NextStep
                    Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
                    SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][39], ManualMataMata.Players[i].playerInfo[2], 1)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 19, 0)
                    SendMessageGlobal("", 0)
                    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 38, 0, ManualMataMata.Players[i].playerInfo[1])
                    SendMessageGlobal("", 0)
                    SendMessageGlobal("-----------------------------------------------------", 0)
                end
            end
        end

        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        else
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][9]), aIndex, 1)
            SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][41], aIndex, 1)
        end
        return
    end

    Teleport(player1back.playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[1].Y)
    Teleport(player2back.playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Spot[2].Y)

    SendMessageGlobal("-------------------------------------------", 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 21, 0)
    SendMessageGlobal(string.format("« %s •[VS]• %s »", ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), 0)
    SendMessageGlobal("-------------------------------------------", 0)

    if player:getAuthority() > 1 then
        local p = User.new(player1back.playerInfo[2])
        p:setMonitored(1)
        local p2 = User.new(player2back.playerInfo[2])
        p2:setMonitored(1)
    end

    ManualMataMata.Status.Fight = true
end

function ManualMataMata.CommandWinners(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep <= 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if not ManualMataMata.Final then 
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][60], aIndex, 1)
        return
    end

    local pos = Cmd:getNumber(Arguments, 2)
    local name = Cmd:getString(Arguments, 3, 0)

    if pos == nil or pos <= 0 or pos > 3 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][59],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][13]), aIndex, 1)
        return
    end

    if name == nil or name:len() <= 0 then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][60],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][13]), aIndex, 1)
        return
    end

    local registered = false
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active and string.lower(ManualMataMata.Players[i].playerInfo[1]) == string.lower(name) then
            ManualMataMata.Winners[pos] = ManualMataMata.Players[i]
            registered = true
            break
        end
    end

    if registered then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][61],name, pos), aIndex, 1)
    else
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][62],name), aIndex, 1)
    end
end

function ManualMataMata.CommandReward(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep <= 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if not ManualMataMata.Final then 
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][60], aIndex, 1)
        return
    end

    for p = 1, 3 do
        if ManualMataMata.Winners[p].playerInfo == nil then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][63], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][13]), aIndex, 1)
            return
        end
    end

    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 19, 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 64, 0)
    for p = 1, 3 do
        if ManualMataMata.Winners[p].playerInfo ~= nil then
            Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 65, 0, p, ManualMataMata.Winners[p].playerInfo[1])
        else
            Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 65, 0, p, "-")
        end
    end
    SendMessageGlobal("-----------------------------------------------------", 0)


    for p = 1, 3 do
        if ManualMataMata.Winners[p].playerInfo ~= nil then
            for i in ipairs(ManualMataMata_Config.Reward[p]) do
                DataBaseAsync.SetAddValue(ManualMataMata_Config.Reward[p][i].Table, ManualMataMata_Config.Reward[p][i].Column, ManualMataMata_Config.Reward[p][i].Amount, ManualMataMata_Config.Reward[p][i].Where, ManualMataMata.Winners[p].playerInfo[ManualMataMata_Config.Reward[p][i].IdType])
                if ManualMataMata_Config.Reward[p][i].Announce then
                    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][66], ManualMataMata_Config.Reward[p][i].Amount, ManualMataMata_Config.Reward[p][i].Name), ManualMataMata.Winners[p].playerInfo[2], 1)
                end
            end
        end
    end

    ManualMataMata.Status.Awarded = true
end

function ManualMataMata.CommandEnd(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep < 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if not ManualMataMata.Final then 
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][60], aIndex, 1)
        return
    end

    if ManualMataMata.Winners[1].playerInfo == nil or ManualMataMata.Winners[2].playerInfo == nil or ManualMataMata.Winners[3].playerInfo == nil then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][63], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][13]), aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Awarded then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][67], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][14]), aIndex, 1)
        return
    end


    for i in ipairs(ManualMataMata.Players) do
        if gObjIsConnectedGP(ManualMataMata.Players[i].playerInfo[2]) ~= 0 then
            local p = User.new(ManualMataMata.Players[i].playerInfo[2])

            local map = p:getMapNumber()
            local x = p:getX()
            local y = p:getY()

            if map == ManualMataMata_Config.Area[1].Total.Map  then
                if x >= ManualMataMata_Config.Area[1].Total.X1 and x <= ManualMataMata_Config.Area[1].Total.X2 and y >= ManualMataMata_Config.Area[1].Total.Y1 and y <= ManualMataMata_Config.Area[1].Total.Y2 then
                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                end
            elseif  map == ManualMataMata_Config.Area[0].Total.Map then
                if x >= ManualMataMata_Config.Area[0].Total.X1 and x <= ManualMataMata_Config.Area[0].Total.X2 and y >= ManualMataMata_Config.Area[0].Total.Y1 and y <= ManualMataMata_Config.Area[0].Total.Y2 then
                    Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
                end
            end
        end
    end

    if ManualMataMata.Status.Open.Timer ~= -1 then
        Timer.Cancel(ManualMataMata.Status.Open.Timer)
    end

    Timer.Cancel(ManualMataMata.Status.TimerCheck)

    ManualMataMata.Timestamp.End = os.time()

    local timediff = ManualMataMata.Timestamp.End - ManualMataMata.Timestamp.Start

    local hora = math.floor(timediff / 3600)
    local minuto = math.floor((timediff/60) % 60)
    local segundo = math.floor(timediff % 60)


    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 19, 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 68, 0)
    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 69, 0, os.date("%H:%M:%S", ManualMataMata.Timestamp.Start))
    Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 70, 0, os.date("%H:%M:%S", ManualMataMata.Timestamp.End))
    if hora > 0 then
        Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 71, 0, hora, minuto, segundo)
    else
        Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 72, 0, minuto, segundo)
    end
    SendMessageGlobal("-----------------------------------------------------", 0)

    ManualMataMata.Define()
end

function ManualMataMata.CountPlayersOnStep(step)
    local qtd = 0
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Active and ManualMataMata.Players[i].Step == step then
            qtd = qtd + 1
        end
    end

    return qtd
end

function ManualMataMata.CommandWin(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][44], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][4]), aIndex, 1)
        return
    end

    if ManualMataMata.Final then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][56], aIndex, 1)
        return
    end

    local win = Cmd:getNumber(Arguments, 2)

    if win == nil or win <= 0 then
        win = 1
    end

    if win > 2 then
        win = 2
    end

    if win == 1 then
        ManualMataMata.LastFight = {
            Winner = ManualMataMata.CurrentFight[1],
            Loser = ManualMataMata.CurrentFight[2]
        }
    else
        ManualMataMata.LastFight = {
            Winner = ManualMataMata.CurrentFight[2],
            Loser = ManualMataMata.CurrentFight[1]
        }
    end

    local aInv = Inventory.new(ManualMataMata.LastFight.Winner.playerInfo[2])
    local bInv = Inventory.new(ManualMataMata.LastFight.Loser.playerInfo[2])


    if aInv:isItem(0) ~= 0 then
        if ManualMataMata_Config.CounterItem[aInv:getIndex(0)] ~= nil then
            local valor = ManualMataMata_Config.CounterItem[aInv:getIndex(0)].Add
            
            if aInv:isItem(237) ~= 0 then
                if aInv:getIndex(237) == Utils.GetItem(15, 45) then
                    valor = valor*2
                end
            end
            InsertCounter(ManualMataMata.LastFight.Winner.playerInfo[2], 0, valor)
            UpdateCounter(ManualMataMata.LastFight.Winner.playerInfo[2])
        end
    end

     if bInv:isItem(0) ~= 0 then
        if ManualMataMata_Config.CounterItem[bInv:getIndex(0)] ~= nil then 
            local valor = ManualMataMata_Config.CounterItem[bInv:getIndex(0)].Remove
            
            if bInv:isItem(237) ~= 0 then
                if bInv:getIndex(237) == Utils.GetItem(15, 45) then
                    valor = valor*2
                end
            end
            DecreaseCounter(ManualMataMata.LastFight.Loser.playerInfo[2], 0, valor)
            UpdateCounter(ManualMataMata.LastFight.Loser.playerInfo[2])        
        end
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.LastFight.Winner.playerInfo[2] then
            ManualMataMata.Players[i].Step = ManualMataMata.NextStep
            Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
        end
        if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.LastFight.Loser.playerInfo[2] then
            ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
            Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
        end
    end

    SendMessageGlobal(string.format("[%s]", player:getName()), 0)

    local vencedor = User.new(ManualMataMata.LastFight.Winner.playerInfo[2])
    local guild = vencedor:getGuildName()


    if guild ~= nil and type(guild) == "string" and guild:len() > 0 then
        Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 46, 0, ManualMataMata.LastFight.Winner.playerInfo[1], guild)
    else
        Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 45, 0, ManualMataMata.LastFight.Winner.playerInfo[1])
    end

    local p = User.new(ManualMataMata.LastFight.Winner.playerInfo[2])
    p:setMonitored(0)
    local p2 = User.new(ManualMataMata.LastFight.Loser.playerInfo[2])
    p2:setMonitored(0)

    ManualMataMata.Status.Fight = false
end

function ManualMataMata.CommandCorrect(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep < 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    if ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][29], ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][30], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][5]), aIndex, 1)
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][31], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][12]), aIndex, 1)
        return
    end

    if ManualMataMata.LastFight.Winner == -1 then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][51], aIndex, 1)
        return
    end
    local corrected = false
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.LastFight.Loser.playerInfo[2] then
            if gObjIsConnectedGP(ManualMataMata.Players[i].playerInfo[2]) ~= 0 then
                ManualMataMata.Players[i].Active = true
                ManualMataMata.Players[i].LeftEvent = false
                ManualMataMata.Players[i].Step = ManualMataMata.NextStep
                Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.NextMap].Respawn.Y)
                corrected = true
            end
        end
    end

    if corrected then
        for i in ipairs(ManualMataMata.Players) do
            if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.LastFight.Winner.playerInfo[2] then
                ManualMataMata.RemovePlayerFromEvent(ManualMataMata.Players[i].playerInfo[1])
                Teleport(ManualMataMata.Players[i].playerInfo[2], 0, 125, 125)
            end
        end

        SendMessageGlobal(string.format("[%s]", player:getName()), 0)
        Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 52, 0)

        local vencedor = User.new(ManualMataMata.LastFight.Loser.playerInfo[2])
        local guild = vencedor:getGuildName()

        if guild ~= nil and type(guild) == "string" and guild:len() > 0 then
            Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 46, 0, ManualMataMata.LastFight.Loser.playerInfo[1], guild)
        else
            Message.SendMessageGlobalMultLangArgs(ManualMataMata_Config.Texts, 45, 0, ManualMataMata.LastFight.Loser.playerInfo[1])
        end

        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][53], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][4]), aIndex, 1)
        return
    end

    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][54], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][4]), aIndex, 1)
end

function ManualMataMata.CommandCancelFight(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep < 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    if not ManualMataMata.Status.Fight then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][44], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][4]), aIndex, 1)
        return
    end

    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.CurrentFight[1].playerInfo[2] or ManualMataMata.Players[i].playerInfo[2] == ManualMataMata.CurrentFight[2].playerInfo[2] then
            Teleport(ManualMataMata.Players[i].playerInfo[2], ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Respawn.Map, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Respawn.X, ManualMataMata_Config.Area[ManualMataMata.CurrentMap].Respawn.Y)
        end
    end

    ManualMataMata.Status.Fight = false

    SendMessageGlobal("-------------------------------------------", 0)
    Message.SendMessageGlobalMultLang(ManualMataMata_Config.Texts, 55, 0)
    SendMessageGlobal(string.format("« %s •[VS]• %s »", ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1]), 0)
    SendMessageGlobal("-------------------------------------------", 0)

    player1back = ManualMataMata.CurrentFight[1]
    player2back = ManualMataMata.CurrentFight[2]
end

function ManualMataMata.CommandInfo(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if player:getAuthority() <= 1 then return end

    if not ManualMataMata.Status.Running then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][7],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][1]), aIndex, 1)
        return
    end

    if ManualMataMata.Status.Open.Status then
        SendMessage(ManualMataMata_Config.Texts[playerInfo[3]][23], aIndex, 1)
        return
    end

    if not ManualMataMata.Status.Started then
        SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][24],ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][3]), aIndex, 1)
        return
    end

    if ManualMataMata.CurrentStep <= 0 then
        local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

        if naProximaFase > 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][32], ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][7]), aIndex, 1)
        elseif naProximaFase >= 5 and naProximaFase <= 6 then
            SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][40], naProximaFase, ManualMataMata_Config.CommandEvent[playerInfo[3]], ManualMataMata_Config.Command[playerInfo[3]][10]), aIndex, 1)
        end
        return
    end

    local naFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.CurrentStep)
    local naProximaFase = ManualMataMata.CountPlayersOnStep(ManualMataMata.NextStep)

    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][47], ManualMataMata.CurrentStep), aIndex, 1)
    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][48], naFase), aIndex, 1)
    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][49], naProximaFase), aIndex, 1)

    local str = "-"
    if ManualMataMata.Status.Fight then
        str = string.format("(1) %s [VS] %s (2)", ManualMataMata.CurrentFight[1].playerInfo[1], ManualMataMata.CurrentFight[2].playerInfo[1])
    end

    SendMessage(string.format(ManualMataMata_Config.Texts[playerInfo[3]][50], str), aIndex, 1)
end

function ManualMataMata.PickPlayer(step, aIndex)
    local players = {}
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].Step == step and ManualMataMata.Players[i].Active then
            if aIndex == -1 or ManualMataMata.Players[i].playerInfo[2] ~= aIndex then
                table.insert(players, ManualMataMata.Players[i])
            end
        end
    end

    local selected = players[GetRandomValue(1, #players)]

    if selected ~= nil then
        return selected
    end

    return -1
end

function ManualMataMata.CountPlayersOnSameHwid(aIndex, hwid)
    local qtd = 0
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] ~= aIndex and ManualMataMata.Players[i].Hwid == hwid then
            qtd = qtd + 1
        end
    end

    return 0
end

function ManualMataMata.PlayerAlreadyInEvent(aIndex)
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == aIndex and ManualMataMata.Players[i].Active then
            return true
        end
    end

    return false
end

function ManualMataMata.UpdatePlayerList(playerInfo)
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[2] == playerInfo[2] then
            ManualMataMata.Players[i].playerInfo = playerInfo
        end
    end
end

function ManualMataMata.RemovePlayerFromEvent(name)
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[1] == name then
            ManualMataMata.Players[i].Active = false
            ManualMataMata.Players[i].LeftEvent = true
            break
        end
    end
end

function ManualMataMata.IsPlayerOnEvent(name)
    for i in ipairs(ManualMataMata.Players) do
        if ManualMataMata.Players[i].playerInfo[1] == name and ManualMataMata.Players[i].Active then
            return ManualMataMata.Players[i]
        end
    end

    return -1
end

ManualMataMata.Init()

return ManualMataMata