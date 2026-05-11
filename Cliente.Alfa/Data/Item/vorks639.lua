CUSTOM_MONSTER_EFFECT = {}

--[MonsterID]
CUSTOM_MONSTER_EFFECT[5555] = { 
    { Type = 1, EffectID = 32060, EffectLv = 0, Bone = 13, Size = 0.60, ColorR = 1.00, ColorG = 0.00, ColorB = 0.00, Black = 0, RandTime = 100 }, 
    { Type = 1, EffectID = 32060, EffectLv = 0, Bone = 22, Size = 0.60, ColorR = 1.00, ColorG = 0.00, ColorB = 0.00, Black = 0, RandTime = 100 }, 
    { Type = 1, EffectID = 32060, EffectLv = 0, Bone = 21, Size = 0.60, ColorR = 1.00, ColorG = 0.00, ColorB = 0.00, Black = 0, RandTime = 100 }, 
    { Type = 0, EffectID = 32003, EffectLv = 0, Bone = 21, Size = 1.50, ColorR = 1.00, ColorG = 0.00, ColorB = 0.00, Black = 0, RandTime = 100 }, 
} 

function StartLoadCustomMonsterEffect()
    for monsterID in pairs(CUSTOM_MONSTER_EFFECT) do 
        local monsterEffect = CUSTOM_MONSTER_EFFECT[monsterID]

        for n = 1, #monsterEffect do 
            local effect = monsterEffect[n]
            SetMonsterEffect(monsterID, effect.Type, effect.EffectID, effect.EffectLv, effect.Bone, effect.Size, effect.ColorR, effect.ColorG, effect.ColorB, effect.Black, effect.RandTime)
        end
    end
end

StartLoadCustomMonsterEffect()