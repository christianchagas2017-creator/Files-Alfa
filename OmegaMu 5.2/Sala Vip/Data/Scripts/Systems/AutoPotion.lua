AutoPotion = {}
AutoPotion.Enabled = true

function AutoPotion.Init()
    if AutoPotion.Enabled then
        GameServerFunctions.GameServerProtocol(AutoPotion.Protocol)
        GameServerFunctions.EnterCharacter(AutoPotion.EnterCharacter)
        GameServerFunctions.QueryAsyncProcess(AutoPotion.QueryAsync)

        AutoPotion.Messages = {
            ["Por"] = {
                [1] = "[Sistema] AutoPotion Ativado!",
                [2] = "[Sistema] AutoPotion Desativado!",
            },
            ["Eng"] = {
                [1] = "[System] AutoPotion Ativado!",
                [2] = "[System] AutoPotion Desativado!",
            },
            ["Spn"] = {
                [1] = "[Sistema] AutoPotion Ativado!",
                [2] = "[Sistema] AutoPotion Desativado!",
            },
        }
        AutoPotion.PotionList = {
            [1] = "HP",
            [2] = "MP",
            [3] = "SD",
            [4] = "PO",
            [5] = "PL",
        }
    end
end

function AutoPotion.EnterCharacter(aIndex)
    local st = GetAutoPotionStatus(aIndex)
    CreatePacket("AutoPotionRcv", 25)
    SetBytePacket("AutoPotionRcv", st)
    SendPacket("AutoPotionRcv", aIndex)
    ClearPacket("AutoPotionRcv")

    DataBase.Query(string.format("IF NOT EXISTS(SELECT HP from AutoPotionSettings where Name = '%s') INSERT INTO AutoPotionSettings (Name) values ('%s')", GetNameObject(aIndex), GetNameObject(aIndex)))

    local query = string.format("SELECT HP, MP, SD, PO, PL from AutoPotionSettings where Name = '%s'", GetNameObject(aIndex))
    CreateAsyncQuery('APSettings', query, aIndex, 1)

end

function AutoPotion.QueryAsync(queryName, identification, aIndex)
    if queryName == "APSettings" then
        local hp = tonumber(QueryAsyncGetValue(identification, 'HP'))
        local mp = tonumber(QueryAsyncGetValue(identification, 'MP'))
        local sd = tonumber(QueryAsyncGetValue(identification, 'SD'))
        local po = tonumber(QueryAsyncGetValue(identification, 'PO'))
        local pl = tonumber(QueryAsyncGetValue(identification, 'PL'))

        if hp == nil or mp == nil or sd == nil or po == nil or pl == nil then
            hp = 1
            mp = 0
            sd = 0
            po = 0
            pl = 0
        end

        if hp == 1 and pl == 1 then
            SetAutoPotionTable(aIndex, 5, 0, 80)
            pl = 0
        end

        SetAutoPotionTable(aIndex, 1, hp, 25)
        SetAutoPotionTable(aIndex, 2, mp, 100)
        SetAutoPotionTable(aIndex, 3, sd, 100)
        SetAutoPotionTable(aIndex, 4, po, 100)
        SetAutoPotionTable(aIndex, 5, pl, 20)
        QueryAsyncDelete(identification)
	    return 1
    end

    return 0
end

function AutoPotion.SendSettings(aIndex)
    local hp =  GetAutoPotionTable(aIndex, 1, 0)
    local mp =  GetAutoPotionTable(aIndex, 2, 0)
    local sd =  GetAutoPotionTable(aIndex, 3, 0)
    local po =  GetAutoPotionTable(aIndex, 4, 0)
    local pl =  GetAutoPotionTable(aIndex, 5, 0)

    if hp == 1 and pl == 1 then
        SetAutoPotionTable(aIndex, 5, 0, 80)
        pl = 0
    end

    CreatePacket("AutoPotionMen", 25)
    SetBytePacket("AutoPotionMen", hp)
    SetBytePacket("AutoPotionMen", mp)
    SetBytePacket("AutoPotionMen", sd)
    SetBytePacket("AutoPotionMen", po)
    SetBytePacket("AutoPotionMen", pl)
    SendPacket("AutoPotionMen", aIndex)
    ClearPacket("AutoPotionMen")
end

function AutoPotion.PotionSwitch(aIndex, potion, state)
    local player = User.new(aIndex)
    local delay = 100
    if potion == 5 and state == 1 then 
        if GetAutoPotionTable(aIndex, 1, 0) == 1 then
            SetAutoPotionTable(aIndex, 1, 0, delay)
            DataBase.Query(string.format("UPDATE AutoPotionSettings set %s = %d where Name = '%s'", AutoPotion.PotionList[1], 0, player:getName()))
        end
        delay = 80
    end
    if potion == 1 and state == 1 then 
        if GetAutoPotionTable(aIndex, 5, 0) == 1 then
            SetAutoPotionTable(aIndex, 5, 0, delay)
            DataBase.Query(string.format("UPDATE AutoPotionSettings set %s = %d where Name = '%s'", AutoPotion.PotionList[5], 0, player:getName()))
        end
        delay = 80
    end
    SetAutoPotionTable(aIndex, potion, state, delay)
    DataBase.Query(string.format("UPDATE AutoPotionSettings set %s = %d where Name = '%s'", AutoPotion.PotionList[potion], state, player:getName()))

    AutoPotion.SendSettings(aIndex)
end

function AutoPotion.Protocol(aIndex, Packet, PacketName, queryName)
    if Packet ~= 25 then return false end

    if PacketName == "AutoPotionSnd" then
        local st = GetBytePacket(PacketName,  -1)
        ClearPacket(PacketName)
        if st == 0 then
            if GetAutoPotionStatus(aIndex) ~= 0 then
                SetAutoPotionStatus(aIndex, 0)

                --DESATIVA O AUTO POTION
                SendMessage(AutoPotion.Messages[GetLanguageObject(aIndex)][2], aIndex, 27)
            end
        else
            if GetAutoPotionStatus(aIndex) ~= 1 then
                SetAutoPotionStatus(aIndex, 1)

                --ATIVA O AUTO POTION
                SendMessage(AutoPotion.Messages[GetLanguageObject(aIndex)][1], aIndex, 26)
            end
        end
        CreatePacket("AutoPotionRcv", 25)
        SetBytePacket("AutoPotionRcv", st)
        SendPacket("AutoPotionRcv", aIndex)
        ClearPacket("AutoPotionRcv")
        return true
    end

    if PacketName == "AutoPotionMenu" then
        ClearPacket(PacketName)
        AutoPotion.SendSettings(aIndex)
        return true
    end

    if PacketName == "APChange" then
        local potion = GetBytePacket("APChange", -1)
        local state = GetBytePacket("APChange", -1)
        ClearPacket(PacketName)
        AutoPotion.PotionSwitch(aIndex, potion, state)
        return true
    end

end

AutoPotion.Init()

return AutoPotion