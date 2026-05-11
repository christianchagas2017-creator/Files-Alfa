CUSTOM_MONSTER_EFFECT = {}

CUSTOM_MONSTER_EFFECT[601] = { 
    --{ Type = 2, EffectID = 387  , EffectLv = 4, Bone = 0, Size = 10, ColorR = 1.0, ColorG = 0.0, ColorB = 0.0, Black = false, RandTime = 5 },
}

function StartLoadCustomMonsterEffect()
    for monsterID in pairs(CUSTOM_MONSTER_EFFECT) do 
        local monsterEffect = CUSTOM_MONSTER_EFFECT[monsterID]

        for n = 1, #monsterEffect do 
            local effect = monsterEffect[n]

            local black = 0
            if effect.Black then black = 1 end

            SetMonsterEffect(monsterID, effect.Type, effect.EffectID, effect.EffectLv, effect.Bone, effect.Size, effect.ColorR, effect.ColorG, effect.ColorB, black, effect.RandTime)
        end
    end
end

StartLoadCustomMonsterEffect()