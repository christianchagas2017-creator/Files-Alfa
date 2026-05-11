MataMata = {}

function MataMata.Init()
    	
    if MataMata_Config.Enabled then
        Commands.Register(MataMata_Config.Command["Eng"].Open, MataMata.CommandOpen)
        Commands.Register(MataMata_Config.Command["Por"].Open, MataMata.CommandOpen)
        Commands.Register(MataMata_Config.Command["Spn"].Open, MataMata.CommandOpen)
        Commands.Register(MataMata_Config.Command["Eng"].Go, MataMata.CommandGo)
        Commands.Register(MataMata_Config.Command["Por"].Go, MataMata.CommandGo)
        Commands.Register(MataMata_Config.Command["Spn"].Go, MataMata.CommandGo)
        Commands.Register(MataMata_Config.Command["Eng"].Cancel, MataMata.CommandCancel)
        Commands.Register(MataMata_Config.Command["Por"].Cancel, MataMata.CommandCancel)
        Commands.Register(MataMata_Config.Command["Spn"].Cancel, MataMata.CommandCancel)

        GameServerFunctions.PlayerAttack(MataMata.PlayerAttack)
        GameServerFunctions.PlayerDie(MataMata.PlayerDie)
        GameServerFunctions.PlayerLogout(MataMata.PlayerLogout)
        GameServerFunctions.EnterCharacter(MataMata.EnterCharacter)

        MataMata.Define()

        for i in ipairs(MataMata_Config.Cron) do
            if MataMata_Config.Cron[i].DayOfWeek ~= -1 then
                Schedule.SetDayOfWeek(MataMata_Config.Cron[i].DayOfWeek, MataMata_Config.Cron[i].Hour, MataMata_Config.Cron[i].Minute, MataMata.Announce, MataMata_Config.TimeAnnounce, MataMata_Config.Cron[i].Type, MataMata_Config.Cron[i].AnnounceName)
            elseif MataMata_Config.Cron[i].DayOfMonth ~= -1 then
                Schedule.SetDayAndHourAndMinute(MataMata_Config.Cron[i].DayOfMonth, MataMata_Config.Cron[i].Hour, MataMata_Config.Cron[i].Minute, MataMata.Announce, MataMata_Config.TimeAnnounce, MataMata_Config.Cron[i].Type, MataMata_Config.Cron[i].AnnounceName)
            else
                Schedule.SetHourAndMinute(MataMata_Config.Cron[i].Hour, MataMata_Config.Cron[i].Minute, MataMata.Announce, MataMata_Config.TimeAnnounce, MataMata_Config.Cron[i].Type, MataMata_Config.Cron[i].AnnounceName)
            end
        end
    end
end

function MataMata.Define()
    MataMata.Counter = {
        Open = 0,
    }
    MataMata.Timer = {
        Open = -1,
        CheckEvent = -1,
        CheckPvPArea = -1,
        CheckItems = -1,
    }
    MataMata.Status = {
        Running = false,
        Open = false,
        Started = false,
        Luta = false,
    }
    MataMata.EventType = 0
    MataMata.Fase = 1
    MataMata.CurrentArea = 1
    MataMata.SemiFinal = 200
    MataMata.Final = 201
    MataMata.Participantes = {}
    MataMata.Vencedores = {}
    MataMata.Lutando = {
        [1] = {Info = {[1] = "", [2] = -1}},
        [2] = {Info = {[1] = "", [2] = -1}},
    }
    MataMata.CurrentRound = 1
    MataMata.GMIndex = -1
    -- NOVA: Lista de jogadores banidos por itens proibidos
    MataMata.JogadoresBanidos = {}
    -- NOVA: Sistema de ranking PDL
    MataMata.RankedStats = {
        Player1Wins = 0,
        Player1Loses = 0,
        Player2Wins = 0,
        Player2Loses = 0,
        Player1PDL = 0,
        Player2PDL = 0,
        IsRankedEvent = false
    }
end

function MataMata.Announce(tempo, tipo, name)
    if tempo == 0 then
        local t = MataMata_Config.TimeOpen

        MataMata.EventType = tipo
        -- NOVA: Define se é evento rankeado
        if tipo > 0 and MataMata_Config.Types[tipo] and MataMata_Config.Types[tipo].IsRanked then
            MataMata.RankedStats.IsRankedEvent = true
            LogAddC(2, string.format("[MataMata] Evento rankeado iniciado: Tipo %d", tipo))
        else
            MataMata.RankedStats.IsRankedEvent = false
        end

        MataMata.Counter.Open = t

        MataMata.Status.Running = true
        MataMata.Status.Open = true

        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 3, 1)
        if MataMata.EventType > 0 then
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, MataMata_Config.Types[MataMata.EventType].Name, 0)
        else
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 4, 0)
        end
        MataMata.Timer.Open = Timer.Repeater(1, t, MataMata.AnnounceEventOpen)
        MataMata.Timer.CheckEvent = Timer.Interval(1, MataMata.CheckEvent)
        MataMata.Timer.CheckPvPArea = Timer.Interval(1, MataMata.CheckPvPArea)
        MataMata.Timer.CheckItems = Timer.Interval(1, MataMata.CheckContinuousItems)
        return
    else
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, name, 0, tempo)
        tempo = tempo - 1
        Timer.TimeOut(60, MataMata.Announce, tempo, tipo, name)
    end
end

function MataMata.CheckEvent()
    if not MataMata.Status.Running then 
        if MataMata.Timer.CheckEvent ~= -1 then
            Timer.Cancel(MataMata.Timer.CheckEvent)
            MataMata.Timer.CheckEvent = -1
        end
        return
    end

    for aIndex = 13000, 13999 do
        local player = User.new(aIndex)
        if player:getConnected() == 3 then 
            local nome = player:getName()
            if MataMata.CheckIfIsPlayer(nome) then
                local map = player:getMapNumber()
                local x = player:getX()
                local y = player:getY()
                local noEvento = false
                for a = 1, 2 do
                    local area = MataMata_Config.Area[a].Total
                    if map == area.Map then
                        if x >= area.X1 and x <= area.X2 and y >= area.Y1 and y <= area.Y2 then
                            noEvento = true
                            LogAddC(2, string.format("%s no evento", player:getName()))
                        end
                    end
                end

                if not noEvento then
                    for i in ipairs(MataMata.Participantes) do
                        if MataMata.Participantes[i] ~= nil then
                            if MataMata.Participantes[i].Active then
                                if MataMata.Participantes[i].Info[1] == nome then
                                    if MataMata.Participantes[i].Lutando then
                                        local vencedor = {}
                                        local perdedor = {}

                                        if MataMata.Lutando[1].Info[1] == nome then
                                            perdedor = MataMata.Lutando[1]
                                            vencedor = MataMata.Lutando[2]
                                        else
                                            perdedor = MataMata.Lutando[2]
                                            vencedor = MataMata.Lutando[1]
                                        end
                                        MataMata.Participantes[i].Active = false
                                        MataMata.Participantes[i].Removed = true
                                        MataMata.WinByDefault(vencedor.Info[2], perdedor.Info[2])
                                    else
                                        MataMata.RemoverPlayer(nome)
                                    end
                                end
                            end
                        end
                    end
                    LogAddC(2, string.format("%s fora do evento", player:getName()))
                end
            end
        end
    end
end

function MataMata.CheckPvPArea()
    if not MataMata.Status.Running then 
        if MataMata.Timer.CheckEvent ~= -1 then
            Timer.Cancel(MataMata.Timer.CheckEvent)
            MataMata.Timer.Check = -1
        end
        return
    end

    for aIndex = 13000, 13999 do
        if gObjIsConnectedGP(aIndex) == 0 then goto segue end

        local player = User.new(aIndex)
        local nome = player:getName()
        if MataMata.CheckIfIsPlayer(nome) then
            if MataMata.Lutando[1].Info[1] == nome or MataMata.Lutando[2].Info[1] == nome then goto segue end

            local map = player:getMapNumber()
            local x = player:getX()
            local y = player:getY()
            local intruder = false
            for a = 1, 2 do
                local area = MataMata_Config.Area[a].PvP
                if map == area.Map then
                    if x >= area.X1 and x <= area.X2 and y >= area.Y1 and y <= area.Y2 then
                        intruder = true
                    end
                end
            end

            if intruder then
                local intruderCount = MataMata.GetIntruderCount(nome)
                if intruderCount >= 5 then
                    MataMata.RemoverPlayer(nome)
                else
                    intruderCount = intruderCount+1
                    MataMata.SetIntruderCount(nome, intruderCount)
                end
            else
                MataMata.SetIntruderCount(nome, 0)
            end
        end

        ::segue::
    end
end

function MataMata.EnterCharacter(aIndex)
    if not MataMata.Status.Running then return end

    local player = User.new(aIndex)
    local name = player:getName()
    if not MataMata_Config.LogoutExitEvent then
        local was, fase = MataMata.CheckIfWasPlayer(name)
        if was then
            if fase == MataMata.Fase then
                for i in ipairs(MataMata.Participantes) do
                    if not MataMata.Participantes[i].Active and not MataMata.Participantes[i].Removed then
                        if MataMata.Participantes[i].Info[1] == name then
                            MataMata.Participantes[i].Active = true
                        end
                    end
                end
            else
                for i in ipairs(MataMata.Participantes) do
                    if not MataMata.Participantes[i].Active and not MataMata.Participantes[i].Removed then
                        if MataMata.Participantes[i].Info[1] == name then
                            MataMata.Participantes[i].Removed = true
                            Teleport(aIndex, 0, 125, 125)
                        end
                    end
                end
            end
        end
    end
end

function MataMata.PlayerLogout(aIndex, Name, Account)
    if not MataMata.Status.Running then return end
	if MataMata.GMIndex ~= -1 then
		if MataMata.GMIndex == aIndex then
			MataMata.GMIndex = -1
		end
	end
    if MataMata.CheckIfIsPlayer(Name) then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i] ~= nil then
                if MataMata.Participantes[i].Active then
                    if MataMata.Participantes[i].Info[1] == Name then
                        if MataMata.Participantes[i].Lutando then
                            local vencedor = {}
                            local perdedor = {}

                            if MataMata.Lutando[1].Info[1] == Name then
                                perdedor = MataMata.Lutando[1]
                                vencedor = MataMata.Lutando[2]
                            else
                                perdedor = MataMata.Lutando[2]
                                vencedor = MataMata.Lutando[1]
                            end
                            MataMata.Participantes[i].Active = false
                            MataMata.Participantes[i].Removed = true
                            MataMata.WinByDefault(vencedor.Info[2], perdedor.Info[2])
                        else
                            if MataMata_Config.LogoutExitEvent then
                                Teleport(aIndex, 0, 125, 125)
                                MataMata.Participantes[i].Removed = true
                            end
                            MataMata.Participantes[i].Active = false
                        end
                    end
                end
            end
        end
    end
end

function MataMata.WinByDefault(aIndex, bIndex)
    if not MataMata.Status.Started then return end

    -- CORREÇÃO CRÍTICA: Verifica se os jogadores estão lutando antes de processar
    if not MataMata.Lutando[1].Info or not MataMata.Lutando[2].Info or 
       MataMata.Lutando[1].Info[2] == -1 or MataMata.Lutando[2].Info[2] == -1 then
        LogAddC(2, "[MataMata] WinByDefault: Jogadores não estão lutando, pulando processamento")
        return
    end

    if aIndex ~= MataMata.Lutando[1].Info[2] and bIndex ~= MataMata.Lutando[1].Info[2] then return end
    local vencedor = {}
    local perdedor = {}

    if aIndex == MataMata.Lutando[1].Info[2] then
        -- CORREÇÃO: Incrementa o placar do vencedor (igual ao PlayerDie normal)
        MataMata.Lutando[1].Placar = MataMata.Lutando[1].Placar + 1
        vencedor = MataMata.Lutando[1]
        perdedor = MataMata.Lutando[2]
    end
    
    if aIndex == MataMata.Lutando[2].Info[2] then
        -- CORREÇÃO: Incrementa o placar do vencedor (igual ao PlayerDie normal)
        MataMata.Lutando[2].Placar = MataMata.Lutando[2].Placar + 1
        vencedor = MataMata.Lutando[2]
        perdedor = MataMata.Lutando[1]
    end

    MataMata.Status.Luta = false

    -- CORREÇÃO: Verifica se precisa de mais rounds (igual ao PlayerDie normal)
    local totalrounds = 1
    if MataMata.Fase < MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Normal
    end

    if MataMata.Fase == MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Semi
    end

    if MataMata.Fase == MataMata.Final then
        totalrounds = MataMata_Config.Rounds.Final
    end

    -- CORREÇÃO: Se ainda não venceu todos os rounds necessários, continua a batalha
    if totalrounds > 1 then
        local precisaparavencer = math.ceil(totalrounds/2)    
        if vencedor.Placar < precisaparavencer then
            LogAddC(2, string.format("[MataMata] WinByDefault: %s venceu round mas precisa de %d para vencer a batalha", vencedor.Info[1], precisaparavencer))
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 31, 0, MataMata.Lutando[1].Info[1], MataMata.Lutando[1].Placar, MataMata.Lutando[2].Placar, MataMata.Lutando[2].Info[1])
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            MataMata.CurrentRound = MataMata.CurrentRound + 1
            Timer.TimeOut(MataMata_Config.RoundDelay, MataMata.Contar, 4)
            return
        end
    end

    -- CORREÇÃO: Anuncia vencedor (igual ao PlayerDie normal)
    local player = User.new(vencedor.Info[2])
    local guild = player:getGuildName()
    if guild ~= nil and type(guild) == "string" and guild:len() > 0 then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 26, 0, vencedor.Info[1], guild)
    else
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 21, 0, vencedor.Info[1])
    end

    -- CORREÇÃO: Processa próxima fase (igual ao PlayerDie normal)
    if MataMata.Fase < MataMata.SemiFinal then    
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                LogAddC(2, string.format("[MataMata] WinByDefault: %s avançou para fase %d", vencedor.Info[1], MataMata.Participantes[i].Fase))
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true
                LogAddC(2, string.format("[MataMata] WinByDefault: %s eliminado da fase %d", perdedor.Info[1], MataMata.Fase))
                MataMata.MoverParaLorencia(perdedor.Info)
            end
        end

        Timer.TimeOut(2, MataMata.Chamar)
        return
    end

    -- CORREÇÃO: Processa semifinal (igual ao PlayerDie normal)
    if MataMata.Fase == MataMata.SemiFinal then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                LogAddC(2, string.format("[MataMata] WinByDefault: %s avançou para FINAL", vencedor.Info[1]))
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 3
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] WinByDefault: %s adicionado aos vencedores na posição 3", perdedor.Info[1]))
                MataMata.MoverParaLorencia(perdedor.Info)
                SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 3), perdedor.Info[2], 1)
            end
        end

        Timer.TimeOut(2, MataMata.Chamar)
    end

    -- CORREÇÃO: Processa final (igual ao PlayerDie normal)
    if MataMata.Fase == MataMata.Final then
        LogAddC(2, string.format("[MataMata] WinByDefault: Processando vitória na FINAL para %s", vencedor.Info[1]))
        
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 1
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] WinByDefault: %s adicionado aos vencedores na posição 1", vencedor.Info[1]))
                
                -- Move o vencedor para Lorencia
                MataMata.MoverParaLorencia(vencedor.Info)
                
                -- Envia mensagem de vitória
                if MataMata_Config.Message[vencedor.Info[3]] and MataMata_Config.Message[vencedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[vencedor.Info[3]][33], 1), vencedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você é o CAMPEÃO do evento MataMata!", vencedor.Info[2], 1)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 2
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] WinByDefault: %s adicionado aos vencedores na posição 2", perdedor.Info[1]))
                
                -- Move o perdedor para Lorencia
                MataMata.MoverParaLorencia(perdedor.Info)
                
                -- Envia mensagem de 2º lugar
                if MataMata_Config.Message[perdedor.Info[3]] and MataMata_Config.Message[perdedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 2), perdedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você ficou em 2º lugar no evento MataMata!", perdedor.Info[2], 1)
                end
            end
        end

        LogAddC(2, "[MataMata] WinByDefault: Final processada, chamando MataMata.Finalizar()")
        MataMata.Finalizar()
        return
    end
end

function MataMata.PlayerAttack(aIndex, bIndex)
    if not MataMata.Status.Started then return 0 end

    if MataMata.Lutando[1].Info ~= nil and MataMata.Lutando[2].Info ~= nil then
        if aIndex == MataMata.Lutando[1].Info[2] or bIndex == MataMata.Lutando[1].Info[2] then
            if MataMata.Status.Luta then return 0 else return 1 end
        end

        if aIndex == MataMata.Lutando[2].Info[2] or bIndex == MataMata.Lutando[2].Info[2] then
            if MataMata.Status.Luta then return 0 else return 1 end
        end
    end

    return 0
end

function MataMata.PlayerDie(aIndex, bIndex)
    if not MataMata.Status.Started then return end

    -- CORREÇÃO CRÍTICA: Verifica se os jogadores estão lutando antes de processar
    if not MataMata.Lutando[1].Info or not MataMata.Lutando[2].Info or 
       MataMata.Lutando[1].Info[2] == -1 or MataMata.Lutando[2].Info[2] == -1 then
        LogAddC(2, "[MataMata] PlayerDie: Jogadores não estão lutando, pulando processamento")
        return
    end

    if aIndex ~= MataMata.Lutando[1].Info[2] and bIndex ~= MataMata.Lutando[1].Info[2] then return end
    local vencedor = {}
    local perdedor = {}

    if aIndex == MataMata.Lutando[1].Info[2] then
        MataMata.Lutando[1].Placar = MataMata.Lutando[1].Placar + 1
        vencedor = MataMata.Lutando[1]
        perdedor = MataMata.Lutando[2]
    end
    
    if aIndex == MataMata.Lutando[2].Info[2] then
        MataMata.Lutando[2].Placar = MataMata.Lutando[2].Placar + 1
        vencedor = MataMata.Lutando[2]
        perdedor = MataMata.Lutando[1]
    end

    MataMata.Status.Luta = false

    --#region CONTADOR DA MORTE
    if gObjIsConnectedGP(aIndex) > 0 then
        local aInv = Inventory.new(aIndex)
        local aWeapon = aInv:getIndex(0)

        if MataMata_Config.CounterItem[aWeapon] ~= nil then
            if MataMata_Config.Version >= 6 then
                InsertCounter(aIndex, 0, MataMata_Config.CounterItem[aWeapon].Add)
	            UpdateCounter(aIndex)
            else
                InsertDeath(aIndex, 0, MataMata_Config.CounterItem[aWeapon].Add)
	            UpdateDeath(aIndex)
            end
        end
    end

    if gObjIsConnectedGP(bIndex) > 0 then
        local bInv = Inventory.new(bIndex)
        local bWeapon = bInv:getIndex(0)
        local bSerial = bInv:getSerial(0)

        if MataMata_Config.CounterItem[bWeapon] ~= nil then
            local remover = MataMata_Config.CounterItem[bWeapon].Remove
            local mortes = DataBase.GetNumberByNumber("DeathSystem", "Deaths", "m_Serial", bSerial)
            if mortes < remover then remover = mortes end
            if MataMata_Config.Version >= 6 then
                DecreaseCounter(bIndex, 0, remover)
	            UpdateCounter(bIndex)
            else
                DecreaseDeath(bIndex, 0, remover)
	            UpdateDeath(bIndex)
            end
        end
    end
    --#endregion

    local totalrounds = 1
    if MataMata.Fase < MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Normal
    end

    if MataMata.Fase == MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Semi
    end

    if MataMata.Fase == MataMata.Final then
        totalrounds = MataMata_Config.Rounds.Final
    end

    if totalrounds > 1 then
        local precisaparavencer = math.ceil(totalrounds/2)    
        if vencedor.Placar < precisaparavencer then
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 31, 0, MataMata.Lutando[1].Info[1], MataMata.Lutando[1].Placar, MataMata.Lutando[2].Placar, MataMata.Lutando[2].Info[1])
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            MataMata.CurrentRound = MataMata.CurrentRound + 1
            Timer.TimeOut(MataMata_Config.RoundDelay, MataMata.Contar, 4)
            return
        end
    end

    local player = User.new(vencedor.Info[2])
    local guild = player:getGuildName()
    if guild ~= nil and type(guild) == "string" and guild:len() > 0 then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 26, 0, vencedor.Info[1], guild)
    else
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 21, 0, vencedor.Info[1])
    end

    -- NOVA: Sistema de PDL para eventos rankeados
    if MataMata.RankedStats and MataMata.RankedStats.IsRankedEvent then
        local winnerIndex = (vencedor.Info[1] == MataMata.Lutando[1].Info[1]) and 1 or 2
        local loserIndex = (winnerIndex == 1) and 2 or 1
        
        -- SIMPLIFICADO: PDL fixo para vencedor e perdedor
        local pdlGain = 20  -- Vencedor ganha 20 PDL
        local pdlLoss = 15  -- Perdedor perde 15 PDL
        
        -- Atualiza WinsPVP/LosePVP
        DataBaseAsync.SetAddValue("Character", "WinsPVP", 1, "Name", vencedor.Info[1])
        DataBaseAsync.SetAddValue("Character", "LosePVP", 1, "Name", perdedor.Info[1])
        
        -- Atualiza PDL
        DataBaseAsync.SetAddValue("Character", "RankedPVP", pdlGain, "Name", vencedor.Info[1])
        DataBaseAsync.SetAddValue("Character", "RankedPVP", -pdlLoss, "Name", perdedor.Info[1])
        
        -- Anuncia resultado
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 43, 0, vencedor.Info[1], pdlGain, perdedor.Info[1], pdlLoss)
        
        LogAddC(2, string.format("[MataMata] PDL SIMPLES: %s (+%d PDL, +1 WinsPVP), %s (-%d PDL, +1 LosePVP)", 
            vencedor.Info[1], pdlGain, perdedor.Info[1], pdlLoss))
    end

    if MataMata.Fase < MataMata.SemiFinal then    
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true
                MataMata.MoverParaLorencia(perdedor.Info)
            end
        end

        Timer.TimeOut(2, MataMata.Chamar)
        return
    end

    if MataMata.Fase == MataMata.SemiFinal then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 3
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                MataMata.MoverParaLorencia(perdedor.Info)
                SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 3), perdedor.Info[2], 1)
            end
        end

        Timer.TimeOut(2, MataMata.Chamar)
    end

    if MataMata.Fase == MataMata.Final then
        LogAddC(2, string.format("[MataMata] PlayerDie: Processando vitória na FINAL para %s", vencedor.Info[1]))
        
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 1
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] PlayerDie: %s adicionado aos vencedores na posição 1", vencedor.Info[1]))
                
                -- CORREÇÃO: Move o vencedor para Lorencia
                MataMata.MoverParaLorencia(vencedor.Info)
                
                -- CORREÇÃO: Envia mensagem de vitória
                if MataMata_Config.Message[vencedor.Info[3]] and MataMata_Config.Message[vencedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[vencedor.Info[3]][33], 1), vencedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você é o CAMPEÃO do evento MataMata!", vencedor.Info[2], 1)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 2
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] PlayerDie: %s adicionado aos vencedores na posição 2", perdedor.Info[1]))
                
                -- Move o perdedor para Lorencia
                MataMata.MoverParaLorencia(perdedor.Info)
                
                -- Envia mensagem de 2º lugar
                if MataMata_Config.Message[perdedor.Info[3]] and MataMata_Config.Message[perdedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 2), perdedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você ficou em 2º lugar no evento MataMata!", perdedor.Info[2], 1)
                end
            end
        end

        LogAddC(2, "[MataMata] PlayerDie: Final processada, chamando MataMata.Finalizar()")
        MataMata.Finalizar()
        return
    end
end

function MataMata.CommandOpen(aIndex, Arguments)
    local player = User.new(aIndex)

    if player:getAuthority() <= 1 then return end

    local lang = player:getLanguage()

    if MataMata.Status.Running then
        SendMessage(string.format(MataMata_Config.Message[lang][1], MataMata_Config.Command[lang].Cancel), aIndex, 1)
        return
    end

    local t = Cmd:getNumber(Arguments, 1)

    if t == nil or t < 5 then
        SendMessage(string.format(MataMata_Config.Message[lang][2], MataMata_Config.Command[lang].Open), aIndex, 1)
        return
    end

    MataMata.EventType = 0

    local tipo = Cmd:getNumber(Arguments, 2)

    if tipo > 0 then
        if MataMata_Config.Types[tipo] == nil then
            SendMessage(MataMata_Config.Message[lang][27], aIndex, 1)
            return
        end

        MataMata.EventType = tipo
        
        -- NOVA: Define se é evento rankeado
        if MataMata_Config.Types[tipo].IsRanked then
            MataMata.RankedStats.IsRankedEvent = true
            LogAddC(2, string.format("[MataMata] Evento rankeado iniciado via comando: Tipo %d", tipo))
        else
            MataMata.RankedStats.IsRankedEvent = false
        end
    end
    
    MataMata.Counter.Open = t

    MataMata.Status.Running = true
    MataMata.Status.Open = true

    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 3, 1)
    if MataMata.EventType > 0 then
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, MataMata_Config.Types[MataMata.EventType].Name, 0)
    else
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 4, 0)
    end
    MataMata.Timer.Open = Timer.Repeater(1, t, MataMata.AnnounceEventOpen)
    MataMata.Timer.CheckEvent = Timer.Interval(1, MataMata.CheckEvent)
    MataMata.Timer.CheckPvPArea = Timer.Interval(1, MataMata.CheckPvPArea)
    MataMata.Timer.CheckItems = Timer.Interval(1, MataMata.CheckContinuousItems)
    local area =  MataMata_Config.Area[MataMata.CurrentArea].Watch
    MataMata.GMIndex = aIndex
    Teleport(aIndex, area.Map, area.X, area.Y)
end

function MataMata.AnnounceEventOpen()
    if MataMata.Counter.Open <= 0 then
        MataMata.Status.Open = false

        if MataMata.CountPlayers(MataMata.Fase) < 4 then
            for i in ipairs(MataMata.Participantes) do
                if MataMata.Participantes[i].Active then
                    Teleport(MataMata.Participantes[i].Info[2], 0, 125, 125)
                end
            end

            if MataMata.Timer.CheckEvent ~= -1 then
                Timer.Cancel(MataMata.Timer.CheckEvent)
            end
        
            if MataMata.Timer.CheckPvPArea ~= -1 then
                Timer.Cancel(MataMata.Timer.CheckPvPArea)
            end

            if MataMata.Timer.CheckItems ~= -1 then
                Timer.Cancel(MataMata.Timer.CheckItems)
                MataMata.Timer.CheckItems = -1
            end

            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 17, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)

            MataMata.Define()
            return
        end

        if MataMata.CountPlayers(MataMata.Fase) == 4 then
            MataMata.Fase = MataMata.SemiFinal
            for i in ipairs(MataMata.Participantes) do
                if MataMata.Participantes[i].Active then
                    MataMata.Participantes[i].Fase = MataMata.SemiFinal
                end
            end
        end

        MataMata.Status.Started = true
        if MataMata.Fase < 200 then
            MataMata.AnunciarFaseNumerica(MataMata.Fase)
        else
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 24, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        end
        Timer.TimeOut(3, MataMata.Chamar)
    else
        if MataMata.Counter.Open > 1 then
            MataMata.SendMessageOpen(5, MataMata.Counter.Open)
        else
            MataMata.SendMessageOpen(6, MataMata.Counter.Open)
        end
        MataMata.Counter.Open = MataMata.Counter.Open - 1
    end
end

function MataMata.AnunciarFaseNumerica(fase)
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
    SendMessageGlobal("", 0)
    Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 16, 0, fase)
    SendMessageGlobal("", 0)
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
end

function MataMata.Chamar(tipo)
    if tipo ~= nil and tipo == 1 then
        if MataMata.CountPlayers(MataMata.Fase) <= 2 then
            for i in ipairs(MataMata.Participantes) do
                if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
                    if MataMata.Fase < 201 then
                        if MataMata.Participantes[i].Fase == MataMata.Fase then
                            MataMata.Participantes[i].Fase = MataMata.Fase+1
                            if MataMata.CurrentArea == 1 then
                                MataMata.MovePlayer(2, MataMata.Participantes[i].Info)
                            else
                                MataMata.MovePlayer(1, MataMata.Participantes[i].Info)
                            end
                            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 15, 0, MataMata.Participantes[i].Info[1])
                        end
                    end
                end
            end
        end
        Timer.TimeOut(3, MataMata.MudarFase)
        return
    end

    if MataMata.CountPlayers(MataMata.Fase) < 2 then     
            for i in ipairs(MataMata.Participantes) do
                if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
                    if MataMata.Fase < 201 then
                        if MataMata.Participantes[i].Fase == MataMata.Fase then
                            MataMata.Participantes[i].Fase = MataMata.Fase+1
                            if MataMata.CurrentArea == 1 then
                                MataMata.MovePlayer(2, MataMata.Participantes[i].Info)
                            else
                                MataMata.MovePlayer(1, MataMata.Participantes[i].Info)
                            end
                            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 15, 0, MataMata.Participantes[i].Info[1])
                        end
                    end
                end
            end
            Timer.TimeOut(3, MataMata.MudarFase)
    else
        local totalrounds = 1
        if MataMata.Fase < MataMata.SemiFinal then
            totalrounds = MataMata_Config.Rounds.Normal
        end

        if MataMata.Fase == MataMata.SemiFinal then
            totalrounds = MataMata_Config.Rounds.Semi
        end

        if MataMata.Fase == MataMata.Final then
            totalrounds = MataMata_Config.Rounds.Final
        end

        local p1 = MataMata.PickPlayer(MataMata.Fase)
        local p2 = MataMata.PickPlayer(MataMata.Fase)

        if MataMata.EventType > 0 then
            if MataMata_Config.Types[MataMata.EventType].AllowedItem > 0 then
                if MataMata_Config.AllowedItens[MataMata_Config.Types[MataMata.EventType].AllowedItem] ~= nil then
                    while not MataMata.CheckAllowedItens(p1.Info[2], MataMata_Config.Types[MataMata.EventType].AllowedItem) do
                        MataMata.RemoverPlayer(p1.Info[1])
                        p1 = MataMata.PickPlayer(MataMata.Fase)
                    end

                    while not MataMata.CheckAllowedItens(p2.Info[2],MataMata_Config.Types[MataMata.EventType].AllowedItem) do
                        MataMata.RemoverPlayer(p2.Info[1])
                        p2 = MataMata.PickPlayer(MataMata.Fase)
                    end
                end
            end
        end

        MataMata.Lutando[1] = p1
        MataMata.Lutando[2] = p2

        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 12, 0, p1.Info[1])
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 13, 0)
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 12, 0, p2.Info[1])
        if totalrounds > 1 then
            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 32, 0, totalrounds)
        else
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        end
        Teleport(p1.Info[2], MataMata_Config.Area[MataMata.CurrentArea].Spot[1].Map, MataMata_Config.Area[MataMata.CurrentArea].Spot[1].X, MataMata_Config.Area[MataMata.CurrentArea].Spot[1].Y)
        Teleport(p2.Info[2], MataMata_Config.Area[MataMata.CurrentArea].Spot[2].Map, MataMata_Config.Area[MataMata.CurrentArea].Spot[2].X, MataMata_Config.Area[MataMata.CurrentArea].Spot[2].Y)
        MataMata.CurrentRound = 1
        Timer.TimeOut(2, MataMata.Contar, 4)
    end
end

function MataMata.Contar(n)
    if n == 4 then
        if MataMata_Config.Version >= 6 then
            if MataMata_Config.RemoveBuffBeforeFight then
                ClearAllBuff(MataMata.Lutando[1].Info[2])
                ClearAllBuff(MataMata.Lutando[2].Info[2])
            end
        end

        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 18, 0)
        n = n-1
        Timer.TimeOut(2, MataMata.Contar, n)
        return
    end

    if n == 0 then
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 19, 0)
        MataMata.Status.Luta = true
        return
    end
    Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 20, 0, n)
    n = n-1
    Timer.TimeOut(1, MataMata.Contar, n)
end

function MataMata.Finalizar()
    LogAddC(2, "[MataMata] Iniciando finalização do evento")
    
    -- CORREÇÃO CRÍTICA: Cancela TODOS os timers ativos
    if MataMata.Timer.Open ~= -1 then
        Timer.Cancel(MataMata.Timer.Open)
        MataMata.Timer.Open = -1
        LogAddC(2, "[MataMata] Timer Open cancelado")
    end

    if MataMata.Timer.CheckEvent ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckEvent)
        MataMata.Timer.CheckEvent = -1
        LogAddC(2, "[MataMata] Timer CheckEvent cancelado")
    end

    if MataMata.Timer.CheckPvPArea ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckPvPArea)
        MataMata.Timer.CheckPvPArea = -1
        LogAddC(2, "[MataMata] Timer CheckPvPArea cancelado")
    end

    if MataMata.Timer.CheckItems ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckItems)
        MataMata.Timer.CheckItems = -1
        LogAddC(2, "[MataMata] Timer CheckItems cancelado")
    end
    
    -- CORREÇÃO CRÍTICA: Define o evento como NÃO rodando
    MataMata.Status.Running = false
    MataMata.Status.Open = false
    MataMata.Status.Started = false
    MataMata.Status.Luta = false
    LogAddC(2, "[MataMata] Status do evento definido como finalizado")
    
    -- NOVA: Limpa a lista de jogadores banidos quando o evento termina
    MataMata.JogadoresBanidos = {}
    LogAddC(2, "[MataMata] Lista de jogadores banidos limpa")

    -- CORREÇÃO CRÍTICA: Verifica se há vencedores antes de processar
    if #MataMata.Vencedores == 0 then
        LogAddC(2, "[MataMata] AVISO: Nenhum vencedor encontrado para classificação")
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 35, 1)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 4, 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 22, 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        
        -- Reinicia o sistema
        MataMata.Define()
        return
    end

    -- CORREÇÃO CRÍTICA: Organiza vencedores por posição de forma segura
    local vencedor = {
        [1] = nil,
        [2] = nil,
        [3] = nil,
    }

    for i in ipairs(MataMata.Vencedores) do
        if MataMata.Vencedores[i] and MataMata.Vencedores[i].Pos and 
           MataMata.Vencedores[i].Pos >= 1 and MataMata.Vencedores[i].Pos <= 3 then
            vencedor[MataMata.Vencedores[i].Pos] = MataMata.Vencedores[i]
            LogAddC(2, string.format("[MataMata] Vencedor posição %d: %s", 
                MataMata.Vencedores[i].Pos, MataMata.Vencedores[i].Info[1]))
        end
    end

    -- CORREÇÃO CRÍTICA: Anuncia classificação de forma segura
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 35, 1)
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 4, 0)
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 22, 0)
    
    -- Anuncia apenas vencedores válidos
    if vencedor[1] and vencedor[1].Info and vencedor[1].Info[1] then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 23, 0, 1, vencedor[1].Info[1])
        LogAddC(2, string.format("[MataMata] 1º Lugar: %s", vencedor[1].Info[1]))
    else
        LogAddC(2, "[MataMata] AVISO: 1º lugar não encontrado")
    end
    
    if vencedor[2] and vencedor[2].Info and vencedor[2].Info[1] then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 23, 0, 2, vencedor[2].Info[1])
        LogAddC(2, string.format("[MataMata] 2º Lugar: %s", vencedor[2].Info[1]))
    else
        LogAddC(2, "[MataMata] AVISO: 2º lugar não encontrado")
    end
    
    if vencedor[3] and vencedor[3].Info and vencedor[3].Info[1] then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 23, 0, 3, vencedor[3].Info[1])
        LogAddC(2, string.format("[MataMata] 3º Lugar: %s", vencedor[3].Info[1]))
    else
        LogAddC(2, "[MataMata] AVISO: 3º lugar não encontrado")
    end
    
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)

    -- CORREÇÃO CRÍTICA: Processa prêmios apenas para vencedores válidos
    for w = 1, 3 do
        if vencedor[w] and vencedor[w].Info and MataMata_Config.Prize[w] ~= nil then
            for i in ipairs(MataMata_Config.Prize[w]) do
                local coin = MataMata_Config.Prize[w][i]
                if coin and coin.Table and coin.Column and coin.Amount and coin.Where and coin.IdType then
                    DataBaseAsync.SetAddValue(coin.Table, coin.Column, coin.Amount, coin.Where, vencedor[w].Info[coin.IdType])
                    if coin.Announce then
                        SendMessage(string.format(MataMata_Config.Message[vencedor[w].Info[3]][34], coin.Amount, coin.Name), vencedor[w].Info[2], 1)		
                    end
                    LogAddC(2, string.format("[MataMata] Prêmio %s entregue para %s", coin.Name, vencedor[w].Info[1]))
                end
            end
        end
    end
	
    -- CORREÇÃO CRÍTICA: Processa itens apenas para vencedores válidos
    for w = 1, 3 do
        if vencedor[w] and vencedor[w].Info and MataMata_Config.PrizeItem[w] ~= nil then
            for i in ipairs(MataMata_Config.PrizeItem[w]) do
                local item = MataMata_Config.PrizeItem[w][i]
                if item and item.ItemIndex then
                    NpcRescueItem.InsertItem(vencedor[w].Info[0], item.ItemIndex, item.Level, item.Op1, item.Op2, item.Life, item.Exc, item.Ancient, item.JoH, item.SocketBonus, item.Sock1, item.Sock2, item.Sock3, item.Sock4, item.Sock5, item.DaysExpire, item.ItemTime)
                    LogAddC(2, string.format("[MataMata] Item %d entregue para %s", item.ItemIndex, vencedor[w].Info[1]))
                end
            end
        end
    end

    -- NOVA: Processa prêmios rankeados se for evento rankeado
    if MataMata.RankedStats and MataMata.RankedStats.IsRankedEvent and MataMata_Config.PrizeRanked then
        LogAddC(2, "[MataMata] Processando prêmios rankeados")
        for w = 1, 3 do
            if vencedor[w] and vencedor[w].Info and MataMata_Config.PrizeRanked[w] ~= nil then
                for i in ipairs(MataMata_Config.PrizeRanked[w]) do
                    local coin = MataMata_Config.PrizeRanked[w][i]
                    if coin and coin.Table and coin.Column and coin.Amount and coin.Where and coin.IdType then
                        DataBaseAsync.SetAddValue(coin.Table, coin.Column, coin.Amount, coin.Where, vencedor[w].Info[coin.IdType])
                        if coin.Announce then
                            SendMessage(string.format(MataMata_Config.Message[vencedor[w].Info[3]][34], coin.Amount, coin.Name), vencedor[w].Info[2], 1)		
                        end
                        LogAddC(2, string.format("[MataMata] Prêmio Rankeado %s entregue para %s", coin.Name, vencedor[w].Info[1]))
                    end
                end
            end
        end
        -- Reseta o flag de evento rankeado
        MataMata.RankedStats.IsRankedEvent = false
        LogAddC(2, "[MataMata] Flag de evento rankeado resetado")
    end

    LogAddC(2, "[MataMata] Evento finalizado com sucesso, reiniciando sistema")
    
    -- CORREÇÃO CRÍTICA: Reinicia o sistema completamente
    MataMata.Define()
end

function MataMata.MovePlayer(area, player)
    Teleport(player[2], MataMata_Config.Area[area].Respawn.Map, MataMata_Config.Area[area].Respawn.X, MataMata_Config.Area[area].Respawn.Y)
end

function MataMata.MoverParaLorencia(player)
    Teleport(player[2], 0, 125, 125)
end

function MataMata.RemoverPlayer(Name)
    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            if MataMata.Participantes[i].Info[1] == Name then
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true
                MataMata.MoverParaLorencia(MataMata.Participantes[i].Info)
                SendMessage(MataMata_Config.Message[MataMata.Participantes[i].Info[3]][36], MataMata.Participantes[i].Info[2], 1)
            end
        end
    end
end

function MataMata.CheckContinuousItems()
    if not MataMata.Status.Running then 
        if MataMata.Timer.CheckItems ~= -1 then
            Timer.Cancel(MataMata.Timer.CheckItems)
            MataMata.Timer.CheckItems = -1
        end
        return
    end

    -- Só verifica itens se o evento tem verificação habilitada
    if MataMata.EventType <= 0 or not MataMata_Config.Types[MataMata.EventType] or 
       not MataMata_Config.Types[MataMata.EventType].AllowedItem or 
       MataMata_Config.Types[MataMata.EventType].AllowedItem <= 0 then
        return
    end

    local allowedItemId = MataMata_Config.Types[MataMata.EventType].AllowedItem
    
    -- CORREÇÃO CRÍTICA: Itera de trás para frente para evitar problemas de índice
    for i = #MataMata.Participantes, 1, -1 do
        if MataMata.Participantes[i] and MataMata.Participantes[i].Active and not MataMata.Participantes[i].Removed then
            local aIndex = MataMata.Participantes[i].Info[2]
            local nome = MataMata.Participantes[i].Info[1]
            
            -- CORREÇÃO CRÍTICA: Verifica se o jogador ainda está conectado
            if not gObjIsConnectedGP(aIndex) or gObjIsConnectedGP(aIndex) == 0 then
                LogAddC(2, string.format("[MataMata] %s não está mais conectado, removendo da lista", nome))
                table.remove(MataMata.Participantes, i)
                goto continue_loop
            end
            
            -- Verifica se o jogador não está na lista de banidos
            if not MataMata.JogadoresBanidos[nome] then
                -- Verifica se o jogador tem itens proibidos
                if not MataMata.CheckAllowedItens(aIndex, allowedItemId) then
                    LogAddC(2, string.format("[MataMata] %s (Index: %d) detectado com itens proibidos durante o evento", nome, aIndex))
                    -- CORREÇÃO: Chama eliminação diretamente para evitar loops
                    MataMata.EliminatePlayerForForbiddenItems(aIndex, allowedItemId)
                    -- CORREÇÃO: Sai do loop após eliminar um jogador para evitar múltiplas eliminações
                    break
                end
            end
        end
        ::continue_loop::
    end
end

function MataMata.EliminatePlayerForForbiddenItems(aIndex, allowedItemId)
    local player = User.new(aIndex)
    local nome = player:getName()
    
    -- CORREÇÃO: Proteção contra chamadas múltiplas para o mesmo jogador
    if MataMata.JogadoresBanidos[nome] then
        return
    end
    
    LogAddC(2, string.format("[MataMata] Eliminando %s (Index: %d) por item proibido", nome, aIndex))
    
    -- CORREÇÃO CRÍTICA: Verifica se o jogador ainda está conectado
    if not gObjIsConnectedGP(aIndex) or gObjIsConnectedGP(aIndex) == 0 then
        LogAddC(2, string.format("[MataMata] Jogador %s não está mais conectado, pulando eliminação", nome))
        return
    end
    
    -- Procura o jogador na lista de participantes
    local jogadorEncontrado = false
    local indiceJogador = -1
    local jogadorData = nil
    
    -- CORREÇÃO: Itera de trás para frente para remoção segura
    for i = #MataMata.Participantes, 1, -1 do
        if MataMata.Participantes[i] ~= nil and MataMata.Participantes[i].Active and 
           MataMata.Participantes[i].Info[1] == nome then
            jogadorEncontrado = true
            indiceJogador = i
            jogadorData = MataMata.Participantes[i]
            break
        end
    end
    
    if not jogadorEncontrado then
        LogAddC(2, string.format("[MataMata] Jogador %s não encontrado na lista de participantes", nome))
        return
    end
    
    LogAddC(2, string.format("[MataMata] Processando eliminação de %s (Índice: %d)", nome, indiceJogador))
    
    -- NOVA FUNCIONALIDADE: Determina a posição na classificação baseada na fase atual
    local posicaoClassificacao = nil
    if MataMata.Fase == MataMata.SemiFinal then
        posicaoClassificacao = 3  -- 3º lugar se eliminado na semifinal
        LogAddC(2, string.format("[MataMata] %s será classificado como 3º lugar (eliminado na semifinal)", nome))
    elseif MataMata.Fase == MataMata.Final then
        posicaoClassificacao = 2  -- 2º lugar se eliminado na final
        LogAddC(2, string.format("[MataMata] %s será classificado como 2º lugar (eliminado na final)", nome))
    else
        posicaoClassificacao = nil  -- Sem classificação se eliminado nas fases normais
        LogAddC(2, string.format("[MataMata] %s eliminado na fase %d (sem classificação)", nome, MataMata.Fase))
    end
    
    -- NOVA FUNCIONALIDADE: Adiciona à lista de vencedores se deve ser classificado
    if posicaoClassificacao then
        -- Copia os dados do jogador antes de removê-lo
        local jogadorClassificado = {
            Info = jogadorData.Info,
            Active = false,
            Removed = true,
            Pos = posicaoClassificacao,
            Fase = jogadorData.Fase,
            Placar = jogadorData.Placar
        }
        
        -- Adiciona à lista de vencedores com a posição apropriada
        table.insert(MataMata.Vencedores, jogadorClassificado)
        LogAddC(2, string.format("[MataMata] %s adicionado aos vencedores na posição %d", nome, posicaoClassificacao))
        
        -- Envia mensagem de classificação para o jogador
        if MataMata_Config.Message[jogadorData.Info[3]] and MataMata_Config.Message[jogadorData.Info[3]][33] then
            SendMessage(string.format(MataMata_Config.Message[jogadorData.Info[3]][33], posicaoClassificacao), jogadorData.Info[2], 1)
        else
            local mensagemClassificacao = ""
            if posicaoClassificacao == 2 then
                mensagemClassificacao = "Parabéns! Você ficou em 2º lugar no evento MataMata!"
            elseif posicaoClassificacao == 3 then
                mensagemClassificacao = "Parabéns! Você ficou em 3º lugar no evento MataMata!"
            end
            SendMessage(mensagemClassificacao, jogadorData.Info[2], 1)
        end
    end
    
    -- CORREÇÃO CRÍTICA: Remove o jogador da lista de participantes ANTES de processar outras lógicas
    table.remove(MataMata.Participantes, indiceJogador)
    LogAddC(2, string.format("[MataMata] %s removido da lista de participantes", nome))
    
    -- NOVA: Adiciona o jogador à lista de banidos para evitar verificações futuras
    MataMata.JogadoresBanidos[nome] = true
    LogAddC(2, string.format("[MataMata] %s adicionado à lista de banidos", nome))
    
    -- CORREÇÃO CRÍTICA: Marca o jogador como completamente eliminado
    if jogadorData.Info and jogadorData.Info[2] then
        -- Força o jogador a sair do evento completamente
        local playerIndex = jogadorData.Info[2]
        if gObjIsConnectedGP(playerIndex) > 0 then
            -- Limpa todos os buffs
            ClearAllBuff(playerIndex)
            
            -- Força logout do evento (simula morte)
            if MataMata.Status.Started then
                LogAddC(2, string.format("[MataMata] Forçando saída do evento para %s", nome))
                -- Simula morte para forçar saída
                MataMata.PlayerLogout(playerIndex, nome, "")
            end
        end
    end
    
    -- CORREÇÃO CRÍTICA: Se o jogador estava lutando, declara o outro como vencedor
    if jogadorData.Lutando then
        local vencedor = {}
        local perdedor = {}

        if MataMata.Lutando[1] and MataMata.Lutando[1].Info and MataMata.Lutando[1].Info[1] == nome then
            perdedor = MataMata.Lutando[1]
            vencedor = MataMata.Lutando[2]
        elseif MataMata.Lutando[2] and MataMata.Lutando[2].Info and MataMata.Lutando[2].Info[1] == nome then
            perdedor = MataMata.Lutando[2]
            vencedor = MataMata.Lutando[1]
        end
        
        if vencedor.Info and perdedor.Info then
            LogAddC(2, string.format("[MataMata] %s estava lutando, declarando %s como vencedor", nome, vencedor.Info[1]))
            
            -- CORREÇÃO: Cancela a contagem atual se estiver ativa
            if MataMata.Timer.Contagem then
                Timer.Cancel(MataMata.Timer.Contagem)
                MataMata.Timer.Contagem = -1
            end
            
            -- CORREÇÃO: Limpa a posição do jogador eliminado na batalha
            if MataMata.Lutando[1] and MataMata.Lutando[1].Info and MataMata.Lutando[1].Info[1] == nome then
                MataMata.Lutando[1] = {Info = {[1] = "", [2] = -1}}
            elseif MataMata.Lutando[2] and MataMata.Lutando[2].Info and MataMata.Lutando[2].Info[1] == nome then
                MataMata.Lutando[2] = {Info = {[1] = "", [2] = -1}}
            end
            
            -- CORREÇÃO CRÍTICA: Se for a final, processa vitória diretamente aqui
            if MataMata.Fase == MataMata.Final then
                LogAddC(2, string.format("[MataMata] FINAL: Processando vitória direta de %s sobre %s", vencedor.Info[1], perdedor.Info[1]))
                
                -- Adiciona o vencedor como 1º lugar
                local vencedorData = {
                    Info = vencedor.Info,
                    Active = false,
                    Removed = true,
                    Pos = 1,
                    Fase = MataMata.Final,
                    Placar = vencedor.Placar or 0
                }
                table.insert(MataMata.Vencedores, vencedorData)
                LogAddC(2, string.format("[MataMata] %s adicionado aos vencedores na posição 1", vencedor.Info[1]))
                
                -- Move o vencedor para Lorencia
                MataMata.MoverParaLorencia(vencedor.Info)
                
                -- Envia mensagem de vitória
                if MataMata_Config.Message[vencedor.Info[3]] and MataMata_Config.Message[vencedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[vencedor.Info[3]][33], 1), vencedor.Info[2], 1)
                else
                    SendMessage("🏆 Parabéns! Você é o CAMPEÃO do evento MataMata!", vencedor.Info[2], 1)
                end
                
                -- Anuncia o campeão globalmente
                Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 23, 0, 1, vencedor.Info[1])
                
                LogAddC(2, "[MataMata] FINAL processada, chamando MataMata.Finalizar()")
                Timer.TimeOut(1, MataMata.Finalizar)
                return
            else
                -- CORREÇÃO CRÍTICA: Para outras fases, processa vitória normalmente
                Timer.TimeOut(0.5, function()
                    if vencedor.Info and vencedor.Info[2] and perdedor.Info and perdedor.Info[2] then
                        LogAddC(2, string.format("[MataMata] Processando vitória direta de %s sobre %s", vencedor.Info[1], perdedor.Info[1]))
                        
                        -- CORREÇÃO: Processa vitória diretamente para evitar problemas
                        -- Jogador com itens proibidos é tratado como "morto", oponente vence
                        MataMata.ProcessarVitoriaDireta(vencedor.Info[2], perdedor.Info[2])
                    end
                end)
            end
        end
    end
    
    -- CORREÇÃO CRÍTICA: Move o jogador para Lorencia IMEDIATAMENTE usando o índice correto
    if gObjIsConnectedGP(aIndex) > 0 then
        -- Força teleporte para Lorencia
        Teleport(aIndex, 0, 125, 125)
        LogAddC(2, string.format("[MataMata] %s teleportado para Lorencia por itens proibidos (Index: %d)", nome, aIndex))
        
        -- CORREÇÃO: Teleporte adicional após 0.5 segundos para garantir
        Timer.TimeOut(0.5, function()
            if gObjIsConnectedGP(aIndex) > 0 then
                local player = User.new(aIndex)
                local currentMap = player:getMapNumber()
                if currentMap ~= 0 then
                    LogAddC(2, string.format("[MataMata] %s ainda não foi teleportado (Mapa: %d), forçando novamente", nome, currentMap))
                    Teleport(aIndex, 0, 125, 125)
                end
            end
        end)
    else
        LogAddC(2, string.format("[MataMata] ERRO: %s não está conectado para teleporte (Index: %d)", nome, aIndex))
    end
    
    -- Envia mensagem para o jogador
    local playerLang = jogadorData.Info[3]
    if MataMata_Config.Message[playerLang] and MataMata_Config.Message[playerLang][30] then
        SendMessage(MataMata_Config.Message[playerLang][30], aIndex, 1)
    else
        SendMessage("❌ Você foi eliminado do evento por usar equipamentos PROIBIDOS!", aIndex, 1)
    end
    
    -- Anuncia globalmente
    Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 29, 0, nome)
    
    LogAddC(2, string.format("[MataMata] %s eliminado com sucesso por itens proibidos", nome))
    
    -- NOVA: Log detalhado para debug
    LogAddC(2, string.format("[MataMata] DEBUG - Status após eliminação:"))
    LogAddC(2, string.format("[MataMata] - Jogador removido da lista: %s", nome))
    LogAddC(2, string.format("[MataMata] - Adicionado à lista de banidos: %s", nome))
    LogAddC(2, string.format("[MataMata] - Total de participantes restantes: %d", #MataMata.Participantes))
    
    -- Conta jogadores banidos
    local totalBanidos = 0
    for _ in pairs(MataMata.JogadoresBanidos) do
        totalBanidos = totalBanidos + 1
    end
    LogAddC(2, string.format("[MataMata] - Total de banidos: %d", totalBanidos))
    
    -- CORREÇÃO CRÍTICA: Verificação final para garantir eliminação
    Timer.TimeOut(1, function()
        -- Verifica se o jogador ainda está sendo verificado
        if MataMata.CheckIfIsPlayer(nome) then
            LogAddC(2, string.format("[MataMata] ALERTA: %s ainda está sendo verificado após eliminação!", nome))
            -- Força remoção novamente
            for i = #MataMata.Participantes, 1, -1 do
                if MataMata.Participantes[i] and MataMata.Participantes[i].Info and 
                   MataMata.Participantes[i].Info[1] == nome then
                    table.remove(MataMata.Participantes, i)
                    LogAddC(2, string.format("[MataMata] %s removido novamente da lista (forçado)", nome))
                    break
                end
            end
        else
            LogAddC(2, string.format("[MataMata] CONFIRMADO: %s foi completamente eliminado do evento", nome))
        end
    end)
    
    -- CORREÇÃO CRÍTICA: Verificação adicional após 3 segundos
    Timer.TimeOut(3, function()
        -- Verifica se o jogador ainda está na lista de banidos
        if not MataMata.JogadoresBanidos[nome] then
            LogAddC(2, string.format("[MataMata] ERRO CRÍTICO: %s não está na lista de banidos!", nome))
            -- Adiciona novamente
            MataMata.JogadoresBanidos[nome] = true
        end
        
        -- Verifica se o jogador ainda está sendo verificado
        if MataMata.CheckIfIsPlayer(nome) then
            LogAddC(2, string.format("[MataMata] ERRO CRÍTICO: %s ainda está sendo verificado após 3 segundos!", nome))
            -- Força eliminação completa
            MataMata.ForcarEliminacaoCompleta(nome)
        end
    end)
end

-- NOVA FUNÇÃO: Processa vitória diretamente para jogadores eliminados por itens proibidos
function MataMata.ProcessarVitoriaDireta(aIndex, bIndex)
    LogAddC(2, string.format("[MataMata] Processando vitória direta: %d vs %d", aIndex, bIndex))
    
    -- Determina vencedor e perdedor
    local vencedor = {}
    local perdedor = {}
    
    if aIndex == MataMata.Lutando[1].Info[2] then
        vencedor = MataMata.Lutando[1]
        perdedor = MataMata.Lutando[2]
    elseif aIndex == MataMata.Lutando[2].Info[2] then
        vencedor = MataMata.Lutando[2]
        perdedor = MataMata.Lutando[1]
    else
        LogAddC(2, "[MataMata] ERRO: Não foi possível determinar vencedor/perdedor")
        return
    end
    
    LogAddC(2, string.format("[MataMata] Vencedor: %s, Perdedor: %s", vencedor.Info[1], perdedor.Info[1]))
    
    -- CORREÇÃO: Processa vitória usando a lógica IDÊNTICA ao matamata normal
    MataMata.Status.Luta = false
    
    -- CORREÇÃO: Incrementa o placar do vencedor (igual ao PlayerDie normal)
    vencedor.Placar = vencedor.Placar + 1
    LogAddC(2, string.format("[MataMata] %s venceu, placar atualizado para %d", vencedor.Info[1], vencedor.Placar))
    
    -- CORREÇÃO: Anuncia vencedor (igual ao PlayerDie normal)
    local player = User.new(vencedor.Info[2])
    local guild = player:getGuildName()
    if guild ~= nil and type(guild) == "string" and guild:len() > 0 then
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 26, 0, vencedor.Info[1], guild)
    else
        Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 21, 0, vencedor.Info[1])
    end
    
    -- CORREÇÃO: Verifica se precisa de mais rounds (igual ao PlayerDie normal)
    local totalrounds = 1
    if MataMata.Fase < MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Normal
    end

    if MataMata.Fase == MataMata.SemiFinal then
        totalrounds = MataMata_Config.Rounds.Semi
    end

    if MataMata.Fase == MataMata.Final then
        totalrounds = MataMata_Config.Rounds.Final
    end

    -- CORREÇÃO: Se ainda não venceu todos os rounds necessários, continua a batalha
    if totalrounds > 1 then
        local precisaparavencer = math.ceil(totalrounds/2)    
        if vencedor.Placar < precisaparavencer then
            LogAddC(2, string.format("[MataMata] %s venceu round mas precisa de %d para vencer a batalha", vencedor.Info[1], precisaparavencer))
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 31, 0, MataMata.Lutando[1].Info[1], MataMata.Lutando[1].Placar, MataMata.Lutando[2].Placar, MataMata.Lutando[2].Info[1])
            SendMessageGlobal("", 0)
            Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
            MataMata.CurrentRound = MataMata.CurrentRound + 1
            Timer.TimeOut(MataMata_Config.RoundDelay, MataMata.Contar, 4)
            return
        end
    end
    
    -- CORREÇÃO: Processa próxima fase (igual ao PlayerDie normal)
    if MataMata.Fase < MataMata.SemiFinal then    
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                LogAddC(2, string.format("[MataMata] %s avançou para fase %d", vencedor.Info[1], MataMata.Participantes[i].Fase))
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true
                LogAddC(2, string.format("[MataMata] %s eliminado da fase %d", perdedor.Info[1], MataMata.Fase))
                MataMata.MoverParaLorencia(perdedor.Info)
            end
        end
        
        -- Continua com próxima batalha
        Timer.TimeOut(2, MataMata.Chamar)
        return
    end
    
    -- CORREÇÃO: Processa semifinal (igual ao PlayerDie normal)
    if MataMata.Fase == MataMata.SemiFinal then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Placar = 0
                MataMata.Participantes[i].Fase = MataMata.Participantes[i].Fase + 1
                LogAddC(2, string.format("[MataMata] %s avançou para FINAL", vencedor.Info[1]))
                if MataMata.CurrentArea == 1 then
                    MataMata.MovePlayer(2, vencedor.Info)
                else
                    MataMata.MovePlayer(1, vencedor.Info)
                end
            end

            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 3
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] %s adicionado aos vencedores na posição 3", perdedor.Info[1]))
                MataMata.MoverParaLorencia(perdedor.Info)
                SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 3), perdedor.Info[2], 1)
            end
        end
        
        -- Continua com próxima batalha
        Timer.TimeOut(2, MataMata.Chamar)
        return
    end
    
    -- CORREÇÃO: Processa final (igual ao PlayerDie normal)
    if MataMata.Fase == MataMata.Final then
        LogAddC(2, string.format("[MataMata] Processando vitória na FINAL para %s", vencedor.Info[1]))
        
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == vencedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 1
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] %s adicionado aos vencedores na posição 1", vencedor.Info[1]))
                
                -- Move o vencedor para Lorencia
                MataMata.MoverParaLorencia(vencedor.Info)
                
                -- Envia mensagem de vitória
                if MataMata_Config.Message[vencedor.Info[3]] and MataMata_Config.Message[vencedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[vencedor.Info[3]][33], 1), vencedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você é o CAMPEÃO do evento MataMata!", vencedor.Info[2], 1)
                end
                
                break
            end
        end
        
        -- CORREÇÃO CRÍTICA: Processa o perdedor da final
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Lutando and MataMata.Participantes[i].Info[1] == perdedor.Info[1] then
                MataMata.Participantes[i].Lutando = false
                MataMata.Participantes[i].Active = false
                MataMata.Participantes[i].Removed = true     
                MataMata.Participantes[i].Pos = 2
                table.insert(MataMata.Vencedores, MataMata.Participantes[i])
                LogAddC(2, string.format("[MataMata] %s adicionado aos vencedores na posição 2", perdedor.Info[1]))
                
                -- Move o perdedor para Lorencia
                MataMata.MoverParaLorencia(perdedor.Info)
                
                -- Envia mensagem de 2º lugar
                if MataMata_Config.Message[perdedor.Info[3]] and MataMata_Config.Message[perdedor.Info[3]][33] then
                    SendMessage(string.format(MataMata_Config.Message[perdedor.Info[3]][33], 2), perdedor.Info[2], 1)
                else
                    SendMessage("Parabéns! Você ficou em 2º lugar no evento MataMata!", perdedor.Info[2], 1)
                end
                
                break
            end
        end
        
        LogAddC(2, "[MataMata] Final processada, chamando MataMata.Finalizar()")
        MataMata.Finalizar()
        return
    end
    
    LogAddC(2, string.format("[MataMata] Vitória direta processada com sucesso para %s", vencedor.Info[1]))
end

-- NOVA FUNÇÃO: Força eliminação completa de um jogador
function MataMata.ForcarEliminacaoCompleta(nome)
    LogAddC(2, string.format("[MataMata] FORÇANDO eliminação completa de %s", nome))
    
    -- Remove de todas as listas possíveis
    for i = #MataMata.Participantes, 1, -1 do
        if MataMata.Participantes[i] and MataMata.Participantes[i].Info and 
           MataMata.Participantes[i].Info[1] == nome then
            table.remove(MataMata.Participantes, i)
            LogAddC(2, string.format("[MataMata] %s removido forçadamente da lista de participantes", nome))
        end
    end
    
    -- Adiciona à lista de banidos
    MataMata.JogadoresBanidos[nome] = true
    
    -- Remove das batalhas se estiver lutando
    if MataMata.Lutando[1] and MataMata.Lutando[1].Info and MataMata.Lutando[1].Info[1] == nome then
        MataMata.Lutando[1] = {Info = {[1] = "", [2] = -1}}
        LogAddC(2, string.format("[MataMata] %s removido da batalha 1", nome))
    end
    
    if MataMata.Lutando[2] and MataMata.Lutando[2].Info and MataMata.Lutando[2].Info[1] == nome then
        MataMata.Lutando[2] = {Info = {[1] = "", [2] = -1}}
        LogAddC(2, string.format("[MataMata] %s removido da batalha 2", nome))
    end
    
    LogAddC(2, string.format("[MataMata] Eliminação forçada de %s concluída", nome))
end

function MataMata.MudarFase()
    local tempfase = MataMata.Fase+1

    local quatidadeDePlayersNaFase = MataMata.CountPlayers(tempfase)

    if quatidadeDePlayersNaFase > 4 then
        MataMata.Fase = MataMata.Fase + 1
        MataMata.AnunciarFaseNumerica(MataMata.Fase)
    end

    if quatidadeDePlayersNaFase >= 3 and quatidadeDePlayersNaFase <= 4 then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
                if MataMata.Participantes[i].Fase == MataMata.Fase or MataMata.Participantes[i].Fase == tempfase then
                    MataMata.Participantes[i].Fase = MataMata.SemiFinal
                end
            end
        end
        
        MataMata.Fase = MataMata.SemiFinal
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        SendMessageGlobal("", 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 24, 0)
        SendMessageGlobal("", 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
    end

    if quatidadeDePlayersNaFase == 2 then
        for i in ipairs(MataMata.Participantes) do
            if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
                if MataMata.Participantes[i].Fase == MataMata.Fase or  MataMata.Participantes[i].Fase == tempfase then
                    MataMata.Participantes[i].Fase = MataMata.Final
                end
            end
        end
        
        MataMata.Fase = MataMata.Final
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
        SendMessageGlobal("", 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 14, 0)
        SendMessageGlobal("", 0)
        Message.SendMessageGlobalMultLang(MataMata_Config.Message, 11, 0)
    end


    if MataMata.CurrentArea == 1 then MataMata.CurrentArea = 2 else MataMata.CurrentArea = 1 end
    if MataMata.GMIndex ~= -1 then
        local area =  MataMata_Config.Area[MataMata.CurrentArea].Watch
        Teleport(MataMata.GMIndex, area.Map, area.X, area.Y)
    end
    Timer.TimeOut(3, MataMata.Chamar)
end

function MataMata.CommandCancel(aIndex)
    local player = User.new(aIndex)

    if player:getAuthority()  <= 1 then return end

    local lang = player:getLanguage()

    if not MataMata.Status.Running then
        SendMessage(string.format(MataMata_Config.Message[lang][7], MataMata_Config.Command[lang].Open), aIndex, 1)
        return
    end

    if MataMata.Timer.Open ~= -1 then
        Timer.Cancel(MataMata.Timer.Open)
        MataMata.Timer.Open = -1
    end

     if MataMata.Timer.CheckEvent ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckEvent)
    end

    if MataMata.Timer.CheckPvPArea ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckPvPArea)
    end

    if MataMata.Timer.CheckItems ~= -1 then
        Timer.Cancel(MataMata.Timer.CheckItems)
        MataMata.Timer.CheckItems = -1
    end

    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            Teleport(MataMata.Participantes[i].Info[2], 0, 125, 125)
        end
    end

    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 8, 1)
    Message.SendMessageGlobalMultLang(MataMata_Config.Message, 8, 0)
    
    -- NOVA: Limpa a lista de jogadores banidos quando o evento é cancelado
    MataMata.JogadoresBanidos = {}
    LogAddC(2, "[MataMata] Lista de jogadores banidos limpa (evento cancelado)")

    MataMata.Define()
end

function MataMata.SendMessageOpen(key, t)
	for i = OBJECT_START_USER, MAX_OBJECT
	do
		if gObjIsConnectedGP(i) == 0
		then
			goto continue_send_message
		end
        local lang = GetLanguageObject(i)
		SendMessagePlayer(i, 0, string.format(MataMata_Config.Message[lang][key], MataMata_Config.Command[lang].Go, t))
		
		::continue_send_message::
	end
	
	collectgarbage()
end

function MataMata.CommandGo(aIndex)
    local player = User.new(aIndex)
    local playerInfo = {[0] = player:getAccountID(), [1] = player:getName(), [2] = aIndex, [3] = player:getLanguage()}

    if not MataMata.Status.Open then
        SendMessage(MataMata_Config.Message[playerInfo[3]][9], aIndex, 1)
        return
    end

    if MataMata.EventType > 0 then
		local eventconfig = MataMata_Config.Types[MataMata.EventType]
        if eventconfig.AllowedClass > 0 then
            local class = player:getClass()

            if MataMata_Config.AllowedClasses[eventconfig.AllowedClass] ~= nil then
                if not MataMata_Config.AllowedClasses[eventconfig.AllowedClass][class] then
                    SendMessage(MataMata_Config.Message[playerInfo[3]][28], aIndex, 1)
                    return
                end
            end
        end

        if eventconfig.AllowedItem > 0 then
            if MataMata_Config.AllowedItens[eventconfig.AllowedItem] ~= nil then
                if not MataMata.CheckAllowedItens(aIndex, eventconfig.AllowedItem) then
                    -- Log da tentativa de registro com itens proibidos
                    LogAddC(2, string.format("MataMata: Jogador %s tentou se registrar com itens proibidos", playerInfo[1]))
                    
                    SendMessage("❌ Você possui equipamentos PROIBIDOS! Remova-os antes de se registrar no evento.", aIndex, 1)
                    return
                end
            end
        end

        if eventconfig.Invite > 0 then
            if MataMata_Config.Invite[eventconfig.Invite] ~= nil then
                if not MataMata.CollectInvite(aIndex, eventconfig.Invite) then
                    SendMessage(MataMata_Config.Message[playerInfo[3]][30], aIndex, 1)
                    return
                end
            end
        end
    end
    
    MataMata.MovePlayer(MataMata.CurrentArea, playerInfo)

    if not MataMata.CheckIfIsPlayer(playerInfo[1]) then
        local temp = {Active = true, Lutando = false, Pos = 0, Intruder = 0, Placar = 0, Removed = false, Fase = MataMata.Fase, Info = playerInfo}
        table.insert(MataMata.Participantes, temp)
        
        -- Log do registro bem-sucedido
        LogAddC(2, string.format("MataMata: Jogador %s registrado com sucesso no evento (itens verificados)", playerInfo[1]))
    end

    SendMessage(MataMata_Config.Message[playerInfo[3]][10], aIndex, 1)
end

function MataMata.CollectInvite(aIndex, InviteId)
    local pInv = Inventory.new(aIndex)
    local invite = GET_ITEM(MataMata_Config.Invite[InviteId].Section, MataMata_Config.Invite[InviteId].Index)
    local inviteCount = GetInventoryItemCount(aIndex, invite, MataMata_Config.Invite[InviteId].Level)
    
    if inviteCount < MataMata_Config.Invite[InviteId].Amount then
        return false
    end

    DeleteItemCount(aIndex, invite, MataMata_Config.Invite[InviteId].Level, MataMata_Config.Invite[InviteId].Amount)

    return true
end

function MataMata.CheckAllowedItens(aIndex, AllowedItem)
    -- Verificações de segurança
    if not aIndex or not AllowedItem then
        LogAddC(2, string.format("[MataMata] CheckAllowedItens: Parâmetros inválidos - aIndex: %s, AllowedItem: %s", tostring(aIndex), tostring(AllowedItem)))
        return false
    end
    
    -- Verifica se a lista de itens permitidos existe
    if not MataMata_Config.AllowedItens or not MataMata_Config.AllowedItens[AllowedItem] then
        LogAddC(2, string.format("[MataMata] CheckAllowedItens: Lista de itens permitidos não encontrada para AllowedItem: %d", AllowedItem))
        return false
    end
    
    local pInv = Inventory.new(aIndex)
    if not pInv then
        LogAddC(2, string.format("[MataMata] CheckAllowedItens: Não foi possível criar inventário para Index: %d", aIndex))
        return false
    end
    
    local allowed = true
    
    -- Verificar slots do inventário principal (0-11)
    for slot = 0, 11 do
        if pInv:isItem(slot) ~= 0 then
            local isItemList = false
            local itemIndex = pInv:getIndex(slot)
            
            -- Verificar se o item é válido
            if itemIndex and itemIndex > 0 then
                -- Verificar se o item está na lista de permitidos
                for i in ipairs(MataMata_Config.AllowedItens[AllowedItem]) do
                    local item = MataMata_Config.AllowedItens[AllowedItem][i]
                    if item and item.Section and item.Index then
                        if itemIndex == GET_ITEM(item.Section, item.Index) then
                            isItemList = true
                            break
                        end
                    end
                end

                if not isItemList then
                    LogAddC(2, string.format("[MataMata] CheckAllowedItens: Item proibido detectado - Slot %d, Item %d (AllowedItem: %d)", slot, itemIndex, AllowedItem))
                    allowed = false
                    break
                end
            end
        end
    end

    -- Verificar slots de elemento se ainda permitido
    if allowed then
        if MataMata_Config.Version == 6 then
            -- Verificar slots de elemento para versão 6 (236-239)
            for slot = 236, 239 do
                if pInv:isItem(slot) ~= 0 then
                    local isItemList = false
                    local itemIndex = pInv:getIndex(slot)
                    
                    if itemIndex and itemIndex > 0 then
                        for i in ipairs(MataMata_Config.AllowedItens[AllowedItem]) do
                            local item = MataMata_Config.AllowedItens[AllowedItem][i]
                            if item and item.Section and item.Index then
                                if itemIndex == GET_ITEM(item.Section, item.Index) then
                                    isItemList = true
                                    break
                                end
                            end
                        end

                        if not isItemList then
                            LogAddC(2, string.format("[MataMata] CheckAllowedItens: Item proibido detectado (Slot Expandido %d) - Item %d (AllowedItem: %d)", slot, itemIndex, AllowedItem))
                            allowed = false
                            break
                        end
                    end
                end
            end
        else
            -- Verificar slots de elemento para outras versões (0-1)
            local pElementSlot = ElementSlot.new(aIndex)
            if pElementSlot then
                for slot = 0, 1 do
                    if pElementSlot:isItem(slot) ~= 0 then
                        local isItemList = false
                        local itemIndex = pElementSlot:getIndex(slot)
                        
                        if itemIndex and itemIndex > 0 then
                            for i in ipairs(MataMata_Config.AllowedItens[AllowedItem]) do
                                local item = MataMata_Config.AllowedItens[AllowedItem][i]
                                if item and item.Section and item.Index then
                                    if itemIndex == GET_ITEM(item.Section, item.Index) then
                                        isItemList = true
                                        break
                                    end
                                end
                            end

                            if not isItemList then
                                LogAddC(2, string.format("[MataMata] CheckAllowedItens: Item proibido detectado (Element Slot %d) - Item %d (AllowedItem: %d)", slot, itemIndex, AllowedItem))
                                allowed = false
                                break
                            end
                        end
                    end
                end
            end
        end
    end

    return allowed
end

function MataMata.PickPlayer(fase)
    local players = {}
    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Fase == fase then
            if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
                table.insert(players, MataMata.Participantes[i])
            end
        end
    end

    local player = players[Utils.GetRandom(1, #players, math.random(1,10))]

    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            if MataMata.Participantes[i].Fase == fase then
                if MataMata.Participantes[i].Info[1] == player.Info[1] then
                    MataMata.Participantes[i].Lutando = true
                end
            end
        end
    end

    return player
end

function MataMata.CheckIfIsPlayer(Name)
    if #MataMata.Participantes == 0 then return false end

    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            if MataMata.Participantes[i].Info[1] == Name then
                return true
            end
        end
    end

    return false
end

function MataMata.GetIntruderCount(Name)
    if #MataMata.Participantes == 0 then return 0 end
    local count = 0
    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            if MataMata.Participantes[i].Info[1] == Name then
                return MataMata.Participantes[i].Intruder
            end
        end
    end

    return count
end

function MataMata.SetIntruderCount(Name, count)
    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active then
            if MataMata.Participantes[i].Info[1] == Name then
                MataMata.Participantes[i].Intruder = count
            end
        end
    end
end

function MataMata.CheckIfWasPlayer(Name)
    if #MataMata.Participantes == 0 then return false end

    for i in ipairs(MataMata.Participantes) do
        if not MataMata.Participantes[i].Active and not MataMata.Participantes[i].Removed then
            if MataMata.Participantes[i].Info[1] == Name then
                return true, MataMata.Participantes[i].Fase
            end
        end
    end

    return false, -1
end

function MataMata.CountPlayers(fase)
    if #MataMata.Participantes == 0 then return 0 end
    local count = 0
    for i in ipairs(MataMata.Participantes) do
        if MataMata.Participantes[i].Active and not MataMata.Participantes[i].Lutando then
            if MataMata.Participantes[i].Fase == fase then
                count = count + 1
            end
        end
    end

    return count
end

-- NOVA: Função para calcular PDL baseado no winrate dos jogadores
function MataMata.CalculatePDL(winnerIndex, loserIndex)
    if not MataMata_Config.RankedMode.Enabled or not MataMata.RankedStats.IsRankedEvent then
        return 0, 0
    end
    
    -- Busca estatísticas dos jogadores no banco de dados
    local winnerWins = DataBase.GetNumberByNumber("Character", "WinsPVP", "Name", MataMata.Lutando[winnerIndex].Info[1])
    local winnerLoses = DataBase.GetNumberByNumber("Character", "LosePVP", "Name", MataMata.Lutando[winnerIndex].Info[1])
    local winnerPDL = DataBase.GetNumberByNumber("Character", "RankedPVP", "Name", MataMata.Lutando[winnerIndex].Info[1])
    
    local loserWins = DataBase.GetNumberByNumber("Character", "WinsPVP", "Name", MataMata.Lutando[loserIndex].Info[1])
    local loserLoses = DataBase.GetNumberByNumber("Character", "LosePVP", "Name", MataMata.Lutando[loserIndex].Info[1])
    local loserPDL = DataBase.GetNumberByNumber("Character", "RankedPVP", "Name", MataMata.Lutando[loserIndex].Info[1])
    
    -- Calcula winrate
    local winnerWinrate = (winnerWins + winnerLoses > 0) and (winnerWins / (winnerWins + winnerLoses)) or 0.5
    local loserWinrate = (loserWins + loserLoses > 0) and (loserWins / (loserWins + loserLoses)) or 0.5
    
    -- Calcula PDL baseado na diferença de winrate
    local basePDL = MataMata_Config.PDLBaseValue
    local pdlGain, pdlLoss
    
    if winnerWinrate < loserWinrate then
        -- Jogador com menor winrate venceu (upset)
        pdlGain = math.floor(basePDL * MataMata_Config.PDLModifier.Bonus)
        pdlLoss = math.floor(basePDL * MataMata_Config.PDLModifier.Reduced)
    else
        -- Jogador com maior winrate venceu (esperado)
        pdlGain = math.floor(basePDL * MataMata_Config.PDLModifier.Reduced)
        pdlLoss = math.floor(basePDL * MataMata_Config.PDLModifier.Bonus)
    end
    
    -- Garante valores mínimos
    pdlGain = math.max(1, pdlGain)
    pdlLoss = math.max(1, pdlLoss)
    
    return pdlGain, pdlLoss
end

-- NOVA: Função para atualizar estatísticas PvP dos jogadores
function MataMata.UpdatePvPStats(winnerIndex, loserIndex, pdlGain, pdlLoss)
    if not MataMata_Config.RankedMode.Enabled or not MataMata.RankedStats.IsRankedEvent then
        return
    end
    
    local winnerName = MataMata.Lutando[winnerIndex].Info[1]
    local loserName = MataMata.Lutando[loserIndex].Info[1]
    
    -- Atualiza Wins/Loses
    if MataMata_Config.RankedMode.UpdateStats then
        DataBaseAsync.SetAddValue("Character", "WinsPVP", 1, "Name", winnerName)
        DataBaseAsync.SetAddValue("Character", "LosePVP", 1, "Name", loserName)
        LogAddC(2, string.format("[MataMata] Estatísticas atualizadas: %s +1 Win, %s +1 Lose", winnerName, loserName))
    end
    
    -- Atualiza PDL
    if MataMata_Config.RankedMode.UpdatePDL then
        DataBaseAsync.SetAddValue("Character", "RankedPVP", pdlGain, "Name", winnerName)
        DataBaseAsync.SetAddValue("Character", "RankedPVP", -pdlLoss, "Name", loserName)
        LogAddC(2, string.format("[MataMata] PDL atualizado: %s +%d, %s -%d", winnerName, pdlGain, loserName, pdlLoss))
    end
    
    -- Armazena estatísticas para uso posterior
    MataMata.RankedStats.Player1Wins = (winnerIndex == 1) and pdlGain or pdlLoss
    MataMata.RankedStats.Player1Loses = (winnerIndex == 1) and 0 or 1
    MataMata.RankedStats.Player2Wins = (winnerIndex == 2) and pdlGain or pdlLoss
    MataMata.RankedStats.Player2Loses = (winnerIndex == 2) and 0 or 1
    MataMata.RankedStats.Player1PDL = (winnerIndex == 1) and pdlGain or -pdlLoss
    MataMata.RankedStats.Player2PDL = (winnerIndex == 2) and pdlGain or -pdlLoss
end

-- NOVA: Função para anunciar resultado rankeado
function MataMata.AnnounceRankedResult(winnerIndex, loserIndex, pdlGain, pdlLoss)
    if not MataMata_Config.RankedMode.Enabled or not MataMata.RankedStats.IsRankedEvent then
        return
    end
    
    local winnerName = MataMata.Lutando[winnerIndex].Info[1]
    local loserName = MataMata.Lutando[loserIndex].Info[1]
    
    -- Anuncia resultado rankeado globalmente
    Message.SendMessageGlobalMultLangArgs(MataMata_Config.Message, 43, 0, winnerName, pdlGain, loserName, pdlLoss)
    LogAddC(2, string.format("[MataMata] Resultado rankeado anunciado: %s (+%d PDL) venceu %s (-%d PDL)", winnerName, pdlGain, loserName, pdlLoss))
end

MataMata.Init()

return MataMata