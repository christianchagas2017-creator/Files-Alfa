CUSTOM_MONSTER_GLOW_INFO = {
    { MonsterID = 599, GlowLayer = 1, GlowType = 66, GlowR = 255, GlowG = 0, GlowB = 0 },
    { MonsterID = 599, GlowLayer = 1, GlowType = 70, GlowR = 255, GlowG = 0, GlowB = 0 },
    { MonsterID = 599, GlowLayer = 1, GlowType = 576, GlowR = 255, GlowG = 0, GlowB = 0 },
    { MonsterID = 599, GlowLayer = 1, GlowType = 65602, GlowR = 255, GlowG = 0, GlowB = 0 },
    
    { MonsterID = 599, GlowLayer = 2, GlowType = 66, GlowR = 060, GlowG = 060, GlowB = 060 },
    { MonsterID = 599, GlowLayer = 2, GlowType = 70, GlowR = 060, GlowG = 060, GlowB = 060 },
    { MonsterID = 599, GlowLayer = 2, GlowType = 576, GlowR = 060, GlowG = 060, GlowB = 060 },
    { MonsterID = 599, GlowLayer = 2, GlowType = 65602, GlowR = 060, GlowG = 060, GlowB = 060 },

    { MonsterID = 599, GlowLayer = 3, GlowType = 66, GlowR = 185, GlowG = 166, GlowB = 089 },
    { MonsterID = 599, GlowLayer = 3, GlowType = 70, GlowR = 185, GlowG = 166, GlowB = 089 },
    { MonsterID = 599, GlowLayer = 3, GlowType = 576, GlowR = 185, GlowG = 166, GlowB = 089 },
    { MonsterID = 599, GlowLayer = 3, GlowType = 65602, GlowR = 185, GlowG = 166, GlowB = 089 },
}

function StartLoadMonsterGlow()
    for i = 1, #CUSTOM_MONSTER_GLOW_INFO do 
        local monsterGlow = CUSTOM_MONSTER_GLOW_INFO[i]

        SetMonsterGlow(monsterGlow.MonsterID, monsterGlow.GlowLayer, monsterGlow.GlowType, monsterGlow.GlowR, monsterGlow.GlowG, monsterGlow.GlowB)
    end
end

StartLoadMonsterGlow()