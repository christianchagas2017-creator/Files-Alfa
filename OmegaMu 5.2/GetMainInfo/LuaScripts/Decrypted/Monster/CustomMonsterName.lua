CUSTOM_MONSTER_NAME_INFO = {
   -- {Class = 600, Map = 0, CoordX = 130, CoordY = 130, NamePor = "CustomName", NameEng = "CustomName eng", NameSpn = "CustomName spn"},
}

function StartLoadCustomMonsterName()
    for _, monsterInfo in ipairs(CUSTOM_MONSTER_NAME_INFO) do
        SetCustomMonsterName(monsterInfo.Class, monsterInfo.Map, monsterInfo.CoordX, monsterInfo.CoordY, monsterInfo.NamePor, monsterInfo.NameEng, monsterInfo.NameSpn)
    end
end

StartLoadCustomMonsterName()