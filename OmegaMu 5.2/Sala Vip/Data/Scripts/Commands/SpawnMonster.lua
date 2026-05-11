SpawnMonster = {}

function SpawnMonster.Init()
    if SpawnMonster_Config.Enabled then
        Commands.Register(SpawnMonster_Config.Command, SpawnMonster.Command)
    end
end

function SpawnMonster.Command(aIndex, Arguments)
    LUA_BUSY = true
    local player = User.new(aIndex)
    local name = player:getName()

    if not StaffManager.IsPlayerAuthorized(player:getName(), SpawnMonster_Config.SetLevel) then
        LUA_BUSY = false
        return
    end

    local class = Cmd:getNumber(Arguments, 1)
    local qtd = Cmd:getNumber(Arguments, 2)

	local map = Cmd:getNumber(Arguments, 3)
	local x = Cmd:getNumber(Arguments, 4)
    local y = Cmd:getNumber(Arguments, 5)

    if qtd == 0 then
        qtd = 1
    end

    if map == 0 and x == 0 and y == 0 then
        for l = 1, qtd do

            local index = AddMonster(map)

            if index == -1
            then
                LogAdd(string.format("Problema ao criar o monstro :%d", class))
                return
            end

            local monster = User.new(index)
            local map = player:getMapNumber()
            local x = player:getX()
            local y = player:getY()

            SetPositionMonster(index, map)
            SetMonster(index, class)

            monster:setX(x)
            monster:setY(y)

            monster = nil
        end
    else
        for l = 1, qtd do

            local index = AddMonster(map)

            if index == -1
            then
                LogAdd(string.format("Problema ao criar o monstro :%d", class))
                return
            end

            local monster = User.new(index)

            SetPositionMonster(index, map)
            SetMonster(index, class)

            monster:setX(x)
            monster:setY(y)

            monster = nil
        end
    end

    LUA_BUSY = false
end

SpawnMonster.Init()

return SpawnMonster