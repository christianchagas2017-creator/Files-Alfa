SkillManager = {}

function SkillManager.Init()
    if SkillManager_Config.Enabled then
        Commands.Register(SkillManager_Config.CommandAdd, SkillManager.CommandAdd)
        Commands.Register(SkillManager_Config.CommandDel, SkillManager.CommandDel)
        Commands.Register(SkillManager_Config.Command, SkillManager.SkillClass)
    end
end

function SkillManager.CommandAdd(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local autorizado = false

    for i in ipairs(SkillManager_Config.Nicks) do
        if string.lower(playerInfo[1]) == string.lower(SkillManager_Config.Nicks[i]) then
            autorizado = true
        end
    end

    if not StaffManager.IsPlayerAuthorized(playerInfo[1], SkillManager_Config.GMLevel) and not autorizado then
        return
    end

    local skill = Cmd:getNumber(Arguments, 1)

    if skill == nil or skill <= 0 then
        SendMessage("Skill inválido", aIndex, 1)
        return
    end

    local nick = Cmd:getString(Arguments, 2, 0)

    if nick:len() <= 0 then
        nick = playerInfo[1]
    end

    local index = Utils.GetPlayerIndex(nick)

    if index == -1 then
        SendMessage(string.format("%s não existe ou está offline", nick), aIndex, 1)
        return
    end

    if AddSkill(index, skill) == 0 then
        SendMessage(string.format("Falha ao adicionar skill %d para %s",skill, nick), aIndex, 1)
        return
    end

    SendMessage(string.format("Skill %d adicionada para %s",skill, nick), aIndex, 1)
end

function SkillManager.CommandDel(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local autorizado = false

    for i in ipairs(SkillManager_Config.Nicks) do
        if string.lower(playerInfo[1]) == string.lower(SkillManager_Config.Nicks[i]) then
            autorizado = true
        end
    end

    if not StaffManager.IsPlayerAuthorized(playerInfo[1], SkillManager_Config.GMLevel) and not autorizado then
        return
    end

    local skill = Cmd:getNumber(Arguments, 1)

    if skill == nil or skill <= 0 then
        SendMessage("Skill inválido", aIndex, 1)
        return
    end

    local nick = Cmd:getString(Arguments, 2, 0)

    if nick:len() <= 0 then
        nick = playerInfo[1]
    end

    local index = Utils.GetPlayerIndex(nick)

    if index == -1 then
        SendMessage(string.format("%s não existe ou está offline", nick), aIndex, 1)
        return
    end

    if RemoveSkill(index, skill) == 0 then
        SendMessage(string.format("Falha ao remover skill %d de %s",skill, nick), aIndex, 1)
        return
    end

    SendMessage(string.format("Skill %d removida de %s",skill, nick), aIndex, 1)
end

function SkillManager.SkillClass(aIndex, Arguments)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    AddSkill(aIndex, 41)
    AddSkill(aIndex, 42)
    AddSkill(aIndex, 43)
    AddSkill(aIndex, 48)

    SendMessage(string.format("FOI"), aIndex, 1)
end

SkillManager.Init()

return SkillManager