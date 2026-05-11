AddPontos = {}

function AddPontos.Init()
    if AddPontos_Config.Enabled then
        Commands.Register(AddPontos_Config.CommandAuto, AddPontos.AutoAdd)
        Commands.Register(AddPontos_Config.CommandReAdd, AddPontos.ReAdd)
        for id = 1, 4 do
            for i in ipairs(AddPontos_Config.Command[id]) do
                Commands.Register(AddPontos_Config.Command[id][i], AddPontos.Add, id)
            end
        end
    end
end

function AddPontos.Add(aIndex, Arguments, Tipo)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local qtd = Cmd:getNumber(Arguments, 1)

    if qtd <= 0 then return end

    local pontos = player:getLevelUpPoint()
    local sobra = 0

    if qtd > pontos then
        qtd = pontos
    end

    if qtd > AddPontos_Config.Max then
        qtd = AddPontos_Config.Max
    end

    local ptn = 0
    if Tipo == 1 then
        ptn = player:getStrength()
    elseif Tipo == 2 then
        ptn = player:getDexterity()
    elseif Tipo == 3 then
        ptn = player:getEnergy()
    else
        ptn = player:getVitality()
    end
    if ptn+qtd > AddPontos_Config.Max then
        qtd = AddPontos_Config.Max-ptn
    end

    if Tipo == 1 then
        player:setStrength(ptn+qtd)
    elseif Tipo == 2 then
        player:setDexterity(ptn+qtd)
    elseif Tipo == 3 then
        player:setEnergy(ptn+qtd)
    else
        player:setVitality(ptn+qtd)
    end

    player:setLevelUpPoint(player:getLevelUpPoint()-qtd)

    SetBP(aIndex)
	CalCharacter(aIndex)
	RefreshCharacter(aIndex)
    SendMessage(AddPontos_Config.Message[playerInfo[3]][2], aIndex, 26)
end

function AddPontos.ReAdd(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local pontos = player:getLevelUpPoint()
    local pontosbkp = pontos
    local str = player:getStrength()
    local dex = player:getDexterity()
    local ene = player:getEnergy()
    local vit = player:getVitality()

    if str > 25 then
        pontos = pontos+str-25
        player:setStrength(25)
    end

    if dex > 25 then
        pontos = pontos+dex-25
        player:setDexterity(25)
    end

    if ene > 25 then
        pontos = pontos+ene-25
        player:setEnergy(25)
    end
    
    if vit > 25 then
        pontos = pontos+vit-25
        player:setVitality(25)
    end

    if pontos == pontosbkp then
        return
    end

    player:setLevelUpPoint(pontos)

    SetBP(aIndex)
	CalCharacter(aIndex)
	RefreshCharacter(aIndex)
    SendMessage(AddPontos_Config.Message[playerInfo[3]][3], aIndex, 26)
end

function AddPontos.AutoAdd(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)
    local pontos = player:getLevelUpPoint()

    if pontos < 4 then
        SendMessage(AddPontos_Config.Message[playerInfo[3]][1], aIndex, 35)
        return
    end

    local un = math.floor(pontos/4)


    pontos = pontos-un*4


    if un > AddPontos_Config.Max then
        local dif = un-AddPontos_Config.Max
        pontos = pontos+dif*4
        un = AddPontos_Config.Max
    end

    local str = player:getStrength()
    local dex = player:getDexterity()
    local ene = player:getEnergy()
    local vit = player:getVitality()


    str = str+un
    if str > AddPontos_Config.Max then
        local dif = str - AddPontos_Config.Max
        pontos = pontos+dif
        str = AddPontos_Config.Max
    end

    ene = ene+un

    if ene > AddPontos_Config.Max then
        local dif = ene - AddPontos_Config.Max
        pontos = pontos+dif
        ene = AddPontos_Config.Max
    end
    dex = dex+un
    if dex > AddPontos_Config.Max then
        local dif = dex - AddPontos_Config.Max
        pontos = pontos+dif
        dex = AddPontos_Config.Max
    end
    vit = vit+un
    if vit > AddPontos_Config.Max then
        local dif = vit - AddPontos_Config.Max
        pontos = pontos+dif
        vit = AddPontos_Config.Max
    end

    player:setLevelUpPoint(pontos)
    player:setStrength(str)
    player:setDexterity(dex)
    player:setEnergy(ene)
    player:setVitality(vit)

    SetBP(aIndex)
	CalCharacter(aIndex)
	RefreshCharacter(aIndex)

    SendMessage(AddPontos_Config.Message[playerInfo[3]][2], aIndex, 26)
end

AddPontos.Init()

return AddPontos