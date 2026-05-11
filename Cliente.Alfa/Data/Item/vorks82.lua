CUSTOM_MONSTER_NAME_INFO = {

    { Class = 579, Map = 0, CoordX = 125, CoordY = 125, Name = "Npc Quest - 1" },
    { Class = 579, Map = 0, CoordX = 135, CoordY = 135, Name = "Npc Quest - 2" },
    { Class = 400, Map = 0, CoordX = 125, CoordY = 125, Name = "Guardião dos Tesouros" },
    { Class = 401, Map = 0, CoordX = 125, CoordY = 125, Name = "Guardião de Brindes" },
    { Class = 410, Map = 0, CoordX = 125, CoordY = 125, Name = "Spooky Monster" },
    { Class = 411, Map = 0, CoordX = 125, CoordY = 125, Name = "Panic Monster" },
    { Class = 247, Map = 0, CoordX = 125, CoordY = 125, Name = "Freedom Quests" },
    { Class = 413, Map = 0, CoordX = 125, CoordY = 125, Name = "Crazzy Santa" },
    { Class = 414, Map = 0, CoordX = 125, CoordY = 125, Name = "Armaggedon Mix" },
    { Class = 415, Map = 0, CoordX = 125, CoordY = 125, Name = "GamePlay Keeper" },
    { Class = 416, Map = 0, CoordX = 125, CoordY = 125, Name = "Clock" },
}


function StartLoadCustomMonsterName()
    for i = 1, #CUSTOM_MONSTER_NAME_INFO do
        monsterInfo = CUSTOM_MONSTER_NAME_INFO[i]

        SetCustomMonsterName(monsterInfo.Class, monsterInfo.Map, monsterInfo.CoordX, monsterInfo.CoordY, monsterInfo.Name)
    end
end

StartLoadCustomMonsterName()