OpenFolder("Definitions")

CUSTOM_TITLE_ITEM = {
    {Index = 1, Title = "Tier II - Dragon",   Bold = true,  Align = 2, Color = {255, 0, 0, 255},   Background = {50, 0, 0, 150},   Command = "/paladin",  DynamicTitle = true},
    {Index = 2, Title = "Refinary - Ceifador", Bold = true, Align = 3, Color = {255, 0, 0, 255},   Background = {24, 4, 117, 150}, Command = "/ceifador", DynamicTitle = true},
    {Index = 3, Title = "Refinary - God",     Bold = false, Align = 3, Color = {255, 30, 0, 255},  Background = {184, 71, 40, 100}, Command = "/ceifador", DynamicTitle = true},
    {Index = 4, Title = "DEVELOPER",          Bold = true,  Align = 2, Color = {0, 255, 0, 255},   Background = {0, 50, 0, 150},   Command = "/dev",     DynamicTitle = true}
}

function StartCustomTitleItem()
    for _, title in ipairs(CUSTOM_TITLE_ITEM) do
        local Bold = 0
        if title.Bold then Bold = 1 end
        local Dynamic = 0
        if title.DynamicTitle then Dynamic = 1 end
        local Color = title.Color
        local Background = title.Background

        SetCustomTitleItem(title.Index, Bold, Color[1], Color[2], Color[3], Color[4], Background[1], Background[2], Background[3], Background[4], title.Title, title.Command, title.Align, Dynamic)
    end
end

function GetDynamicTitle(charObj, titleIndex)
    local charInstance = Character.new(charObj)
    local name = charInstance:getName()
    charInstance = nil -- Libere a referência imediatamente

    if titleIndex == 1 then
        local text = " Tier II - (Level 1) "
        if name == "..." then
            text = string.format(" ADMINISTRADOR GERAL %s ", name)
        end
        return text
    end

    if titleIndex == 2 then
        local text = " Refinary - Ceifador "
        if name == "Admin" then
            text = string.format(" ADMINISTRADOR GERAL: %s ", name)
        end
        return text
    end

    if titleIndex == 3 then
        local text = " Refinary - God "
        if name == "..." then
            text = string.format(" PLAYER ALFA: %s ", name)
        end
        return text
    end

    if titleIndex == 4 then
        if name == "Waalzito" then
            return string.format(" DEVELOPER: %s ", name)
        end
    end

    return ""
end

function CheckCustomTitleItem(charObj)
    local charInstance = Character.new(charObj)
    local playerName = charInstance:getName()

    -- PRIORIDADE 1: Nick específico "Waalzito"
    if playerName == "Waalzito" then
        return 4 -- Retorna o Index 4 (DEVELOPER)
    end

    -- PRIORIDADE 2: Nome "Admin"
    if playerName == "Admin" then
        return 2 -- Refinary - Ceifador
    end

    -- Se não for Admin nem Waalzito, continua verificando armaduras
    local Player = {
        MonsterIndex = charInstance:getMonsterIndex(),
        SafeZone = charInstance:getSafeZone(),
        Class = charInstance:getClass(),
        Skin = charInstance:getSkin(),
        CtlCode = charInstance:getCtlCode(),
        Action = charInstance:getAction(),
        Level = charInstance:getLevel(),
        Name = playerName,
        Run = charInstance:getRun(),
        EtcPart = charInstance:getEtcPart(),
        Patente = charInstance:getPatente(),
        Itens = {
            [0] = charInstance:getSword(),
            [1] = charInstance:getShield(),
            [2] = charInstance:getHelm(),
            [3] = charInstance:getArmor(),
            [4] = charInstance:getPants(),
            [5] = charInstance:getGloves(),
            [6] = charInstance:getBoots(),
            [7] = charInstance:getWing(),
            [8] = charInstance:getHelper()          
        }
    }
    charInstance = nil -- Libera referência

    -- Armadura Leather
    local Leather = {
        [0] = GET_ITEM_MODEL(13, 109), -- Helm
        [1] = GET_ITEM_MODEL(13, 109), -- Armor
        [2] = GET_ITEM_MODEL(13, 109), -- Pants
        [3] = GET_ITEM_MODEL(13, 109), -- Gloves
        [4] = GET_ITEM_MODEL(13, 109)  -- Boots
    }

    if (Player.Itens[2] == Leather[0] and
        Player.Itens[3] == Leather[1] and
        Player.Itens[4] == Leather[2] and
        Player.Itens[5] == Leather[3] and
        Player.Itens[6] == Leather[4]) then
        return 1
    end

    -- Armadura Bronze
    local Bronze = {
        [0] = GET_ITEM_MODEL(07, 999), -- Helm
        [1] = GET_ITEM_MODEL(08, 999), -- Armor
        [2] = GET_ITEM_MODEL(09, 999), -- Pants
        [3] = GET_ITEM_MODEL(10, 999), -- Gloves
        [4] = GET_ITEM_MODEL(11, 999)  -- Boots
    }

    if (Player.Itens[2] == Bronze[0] and
        Player.Itens[3] == Bronze[1] and
        Player.Itens[4] == Bronze[2] and
        Player.Itens[5] == Bronze[3] and
        Player.Itens[6] == Bronze[4]) then
        return 1
    end

    -- Armadura Dragon
    local Dragon = {
        [0] = GET_ITEM_MODEL(07, 999), -- Helm
        [1] = GET_ITEM_MODEL(08, 999), -- Armor
        [2] = GET_ITEM_MODEL(09, 999), -- Pants
        [3] = GET_ITEM_MODEL(10, 999), -- Gloves
        [4] = GET_ITEM_MODEL(11, 999)  -- Boots
    }

    if (Player.Itens[2] == Dragon[0] and
        Player.Itens[3] == Dragon[1] and
        Player.Itens[4] == Dragon[2] and
        Player.Itens[5] == Dragon[3] and
        Player.Itens[6] == Dragon[4]) then
        return 1
    end
    
    return -1 -- Nenhuma condição satisfeita
end
