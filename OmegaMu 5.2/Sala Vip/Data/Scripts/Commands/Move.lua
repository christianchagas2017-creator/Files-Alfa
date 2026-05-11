Move = {}

function Move.Init(aIndex)

    if Move_Config.Enabled then
        for i in ipairs (Move_Config.Command) do
            Commands.Register(Move_Config.Command[i], Move.CommandMove)
        end

        for i in ipairs (Move_Config.CommandMovePlayer) do
            Commands.Register(Move_Config.CommandMovePlayer[i], Move.CommandMovePlayer)
        end

        for i in ipairs (Move_Config.CommandMoveMap) do
            Commands.Register(Move_Config.CommandMoveMap[i], Move.CommandMoveMap)
        end

        for i in ipairs (Move_Config.CommandMoveAll) do
            Commands.Register(Move_Config.CommandMoveAll[i], Move.CommandMoveAll)
        end
    end
end

function Move.CommandMove(aIndex, Arguments)
    local player = User.new(aIndex)
    local Language = player:getLanguage()

    local mapOrPlayer = Cmd:getString(Arguments, 1, 0)

    if Move_Config.Gate[string.lower(mapOrPlayer)] ~= nil then
        local gate = Move_Config.Gate[string.lower(mapOrPlayer)]
        local playerInfo = Utils.GetPlayerInfo(player)

        --if gate.Authority > player:getAuthority()  then return end

        local permition = false

        if CharacterPermition.Enabled then
            for i in ipairs (CharacterPermition.Permition_Players) do
                if player:getName() == CharacterPermition.Permition_Players[i] then
                    permition = true
                end
            end
        end

        if not permition and gate.Authority > player:getAuthority()  then return end

        --if not StaffManager.IsPlayerAuthorized(player:getName(), 1) and not permition then
        --    return
        --end

        if player:getLevel() < gate.Level then
            --SendMessage(Move_Config.Message[playerInfo[3]][1]:format(gate.Level), aIndex, 1)
            return
        end

        if playerInfo[4] < gate.Vip then
            --SendMessage(Move_Config.Message[playerInfo[3]][2], aIndex, 1)
            return
        end

        if player:getPKLevel() > 4 and not gate.Pk then
            --SendMessage(Move_Config.Message[playerInfo[3]][3], aIndex, 1)
            return
        end

        if gate.MUpPoint > 0 then
            local MUpPoints = DataBase.GetNumberByString("Character", "MUpPoints", "Name", player:getName())
            if MUpPoints < gate.MUpPoint then
                --SendMessage(Move_Config.Message[playerInfo[4]][1]:format(gate.MUpPoint), aIndex, 1)
                return
            end
        end

        local x = GetRandomValue(gate.X, gate.MX)
        local y = GetRandomValue(gate.Y, gate.MY)
        Teleport(aIndex, gate.Map, x, y)
        return
    end

    local permition = false

    if CharacterPermition.Enabled then
        for i in ipairs (CharacterPermition.Permition_Players) do
            if player:getName() == CharacterPermition.Permition_Players[i] then
                permition = true
            end
        end
    end

	if not permition and player:getAuthority() <= 1 then return end

    --if player:getAuthority() <= 1 then return end

    if Move_Config.CheckMoveMaps.Enabled then
        local Maps = Move_Config.CheckMoveMaps.MapsMovesPermition

        local map = Cmd:getNumber(Arguments, 1)

        if map == nil or map < 0 then
            --SendMessage(Move_Config.Message[Language][7], aIndex, 1)
            return
        end

        local valid = false
        for i in ipairs(Maps) do
            if Maps[i] == map then
                valid = true
            end
        end

        if not valid then
            --SendMessage(Move_Config.Message[Language][7], aIndex, 1)
            return
        end
    end

    local targetIndex = Utils.GetPlayerIndex(mapOrPlayer)

    if targetIndex == -1 then
        local map = Cmd:getNumber(Arguments, 1)
        local x = Cmd:getNumber(Arguments, 2)
        local y = Cmd:getNumber(Arguments, 3)

        --[[ --TESTE MOVE CLASS ORIGINAL
         if map == 0 and x == 0 and y == 0 then
            for i in ipairs(Move_Config.MovePlayer) do
                if classe == ELF
                then
                    local MoveClass = Move_Config.MovePlayer[3]
                    local M = MoveClass.Map
                    local X = GetRandomValue(MoveClass.X, MoveClass.MX)
                    local Y = GetRandomValue(MoveClass.Y, MoveClass.MY)
                    Teleport(targetIndex, M, X, Y)
                else
                    local MoveClass = Move_Config.MovePlayer[2]
                    local M = MoveClass.Map
                    local X = GetRandomValue(MoveClass.X, MoveClass.MX)
                    local Y = GetRandomValue(MoveClass.Y, MoveClass.MY)
                    Teleport(targetIndex, M, X, Y)
                end
            end
        else
            Teleport(aIndex, map, x, y)
        end
        --]]

        if map == 0 and x == 0 and y == 0 then
            Teleport(targetIndex, Move_Config.MovePlayer.Mapa, Move_Config.MovePlayer.CordX, Move_Config.MovePlayer.CordY)
        else
            Teleport(aIndex, map, x, y)
        end
    else
        local map = Cmd:getNumber(Arguments, 2)
        local x = Cmd:getNumber(Arguments, 3)
        local y = Cmd:getNumber(Arguments, 4)

        if map == 0 and x == 0 and y == 0 then
            Teleport(targetIndex, Move_Config.MovePlayer.Mapa, Move_Config.MovePlayer.CordX, Move_Config.MovePlayer.CordY)
        else
            Teleport(targetIndex, map, x, y)
        end

    end

end

function Move.CommandMovePlayer(aIndex, Arguments)
    local player = User.new(aIndex)

    local permition = false

    if CharacterPermition.Enabled then
        for i in ipairs (CharacterPermition.Permition_Players) do
            if player:getName() == CharacterPermition.Permition_Players[i] then
                permition = true
            end
        end
    end

	if not permition and player:getAuthority() <= 1 then return end

    --if player:getAuthority() <= 1 then return end

    local targetMap = Cmd:getString(Arguments, 1, 0)
    local targetName1 = Cmd:getString(Arguments, 2, 0)
    local targetName2 = Cmd:getString(Arguments, 3, 0)
    local targetName3 = Cmd:getString(Arguments, 4, 0)

    if Move_Config.Gate[string.lower(targetMap)] ~= nil then
        local index1 = Utils.GetPlayerIndex(targetName1)
        local index2 = Utils.GetPlayerIndex(targetName2)
        local index3 = Utils.GetPlayerIndex(targetName3)

        local gate = Move_Config.Gate[string.lower(targetMap)]

        local x = GetRandomValue(gate.X, gate.MX)
        local y = GetRandomValue(gate.Y, gate.MY)

        if index1 ~= -1 then
            Teleport(index1, gate.Map, x, y)
        end
        if index2 ~= -1 then
            Teleport(index2, gate.Map, x, y)
        end
        if index3 ~= -1 then
            Teleport(index3, gate.Map, x, y)
        end
        if index1 == -1 and index2 == -1 and index3 == -1 then
            Teleport(aIndex, gate.Map, x, y)
        end
    end

end

function Move.CommandMoveMap(aIndex, Arguments)
    local player = User.new(aIndex)

    local permition = false

    if CharacterPermition.Enabled then
        for i in ipairs (CharacterPermition.Permition_Players) do
            if player:getName() == CharacterPermition.Permition_Players[i] then
                permition = true
            end
        end
    end

	if not permition and player:getAuthority() <= 1 then return end

    local map = Cmd:getNumber(Arguments, 1)

    for movemap = OBJECT_START_USER, MAX_OBJECT do
        if gObjIsConnectedGP(movemap) == 0
		then
			goto continue
		end

        if GetMapObject(movemap) ~= map
        then
            goto continue
        end

        for i in ipairs (Move_Config.Nicks) do
			if player:getAuthority() ~= 1 or player:getName() == Move_Config.Nicks[i]  then
				goto continue
			end
		end

        local mapOrPlayer = Cmd:getString(Arguments, 2, 0)
        
        if Move_Config.Gate[string.lower(mapOrPlayer)] ~= nil then
            local gate = Move_Config.Gate[string.lower(mapOrPlayer)]

            local x = GetRandomValue(gate.X, gate.MX)
            local y = GetRandomValue(gate.Y, gate.MY)

            Teleport(movemap, gate.Map, x, y)
        else
            local targetIndex = Utils.GetPlayerIndex(mapOrPlayer)

            if targetIndex == -1 or targetIndex == nil then
                local map = Cmd:getNumber(Arguments, 2)
                local x = Cmd:getNumber(Arguments, 3)
                local y = Cmd:getNumber(Arguments, 4)
    
                Teleport(movemap, map, x, y)
            end
        end

        ::continue::
    end

end

function Move.CommandMoveAll(aIndex, Arguments)
    local player = User.new(aIndex)
	local Language = player:getLanguage()

    local permition = false

    if CharacterPermition.Enabled then
        for i in ipairs (CharacterPermition.Permition_Players) do
            if player:getName() == CharacterPermition.Permition_Players[i] then
                permition = true
            end
        end
    end

	if not permition and player:getAuthority() <= 1 then return end

    for moveall = OBJECT_START_USER, MAX_OBJECT do
        if gObjIsConnectedGP(moveall) == 0
		then
			goto continue
		end

        for i in ipairs (Move_Config.Nicks) do
			if player:getAuthority() ~= 1 or player:getName() == Move_Config.Nicks[i]  then
				goto continue
			end
		end

        local mapOrPlayer = Cmd:getString(Arguments, 1, 0)

        if Move_Config.Gate[string.lower(mapOrPlayer)] ~= nil then

            local gate = Move_Config.Gate[string.lower(mapOrPlayer)]

            local x = GetRandomValue(gate.X, gate.MX)
            local y = GetRandomValue(gate.Y, gate.MY)

            if mapOrPlayer == 0 then
                if x == 0 then
                    if y == 0 then
                        return
                    end
                end
            end

            Teleport(moveall, gate.Map, x, y)
        else
            local targetIndex = Utils.GetPlayerIndex(mapOrPlayer)

            if targetIndex == -1 then
                local map = Cmd:getNumber(Arguments, 1)
                local x = Cmd:getNumber(Arguments, 2)
                local y = Cmd:getNumber(Arguments, 3)

                if map == 0 then
                    if x == 0 then
                        if y == 0 then
                            return
                        end
                    end
                end

                Teleport(moveall, map, x, y)
            end
        end

        ::continue::
    end

end

Move.Init()

return Move