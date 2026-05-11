BattlePass_Config = {
    Enabled = false,
    Packet = 119,
    WindowId = 119,
    Period = "12/04/2025 - 12/05/2025",
    CommandBuy = "/comprarpasse",
    
    --====== DATA INICIO
    StartYear = 2025,    -- ANO
    StartMonth = 4,      -- MÊS
    StartDay = 12,       -- DIA

    --====== DATA TERMINO
    EndYear = 2025,      -- ANO
    EndMonth = 5,        -- MÊS
    EndDay = 12,         -- DIA

    Stages = {
	
        {
            Level = 1,
            MinExp = 0,
            MaxExp = 10000,
            FreeItem =    {Amount = 1, Index = GET_ITEM(13, 14),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 54, Y = 12},
            PremiumItem = {Amount = 2, Index = GET_ITEM(13, 52),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 58, Y = 12},
        },
		
        {
            Level = 2,
            MinExp = 10001,
            MaxExp = 20000,
            FreeItem =    {Amount = 1,  Index = GET_ITEM(13, 35),   Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.6, X = 50, Y = 19},
            PremiumItem = {Amount = 5,  Index = GET_ITEM(13, 35),   Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.6, X = 50, Y = 19},
        },
		
        {
            Level = 3,
            MinExp = 20001,
            MaxExp = 30000,
            FreeItem =    {Amount = 0},
            PremiumItem = {Amount = 10, Index = GET_ITEM(14, 22), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 55, Y = 25},
        },
		
        {
            Level = 4,
            MinExp = 30001,
            MaxExp = 40000,
            FreeItem =    {Amount = 1, Index = GET_ITEM(14, 22), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 55, Y = 25},
            PremiumItem = {Amount = 1, Index = GET_ITEM(13, 53), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 55, Y = 15},
        },
		
        {
            Level = 5,
            MinExp = 40001,
            MaxExp = 50000,
            FreeItem =    {Amount = 1,  Index = GET_ITEM(14, 13), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 10, Index = GET_ITEM(14, 13), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
        },

        {
            Level = 6,
            MinExp = 50001,
            MaxExp = 60000,
            FreeItem =    {Amount = 0},
            PremiumItem = {Amount = 1, Index = GET_ITEM(14, 206), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
        },

        {
            Level = 7,
            MinExp = 60001,
            MaxExp = 70000,
            FreeItem =    {Amount = 5, Index =  GET_ITEM(14, 14), Level = 0, Dur = 0,   Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 1, Index =  GET_ITEM(7, 33),  Level = 0, Dur = 255, Skill = 1, Luck = 1,JoL = 0, Exc = 63, Ancient = 0, Harmony = 0, Size = 0.7, X = 40, Y = 8},
        },
        {
            Level = 8,
            MinExp = 70001,
            MaxExp = 80000,
            FreeItem =    {Amount = 3, Index =  GET_ITEM(14, 16), Level = 0, Dur = 0,   Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 10, Index =  GET_ITEM(14, 16), Level = 0, Dur = 0,   Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
        },
        {
            Level = 9,
            MinExp = 80001,
            MaxExp = 90000,
            FreeItem =    {Amount = 2, Index =  GET_ITEM(12, 15),  Level = 0, Dur = 0,     Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 1, Index =  GET_ITEM(12, 132), Level = 0, Dur = 255,   Skill = 1, Luck = 1,JoL = 7, Exc = 63, Ancient = 0, Harmony = 0, Size = 0.7, X = 25, Y = 7},
        },
        {
            Level = 10,
            MinExp = 90001,
            MaxExp = 100000,
            FreeItem =    {Amount = 1, Index =  GET_ITEM(14, 201),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 3, Index =  GET_ITEM(14, 201),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
        },
        {
            Level = 11,
            MinExp = 100001,
            MaxExp = 110000,
            FreeItem =    {Amount = 1, Index =  GET_ITEM(13, 25),    Level = 15, Dur = 255,     Skill = 1, Luck = 1, JoL = 7, Exc = 63, Ancient = 0, Harmony = 0, Size = 0.7, X = 52, Y = 22},
            PremiumItem = {Amount = 2, Index =  GET_ITEM(14, 204),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 45, Y = 15},
        },
        {
            Level = 12,
            MinExp = 110001,
            MaxExp = 120000,
            FreeItem = {Amount = 1, Index =  GET_ITEM(14, 206),   Level = 0, Dur = 0,   Skill = 0, Luck = 0,JoL = 0, Exc = 0,  Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
            PremiumItem = {Amount = 1, Index =  GET_ITEM(8, 33),  Level = 0, Dur = 255, Skill = 1, Luck = 1,JoL = 0, Exc = 63, Ancient = 0, Harmony = 0, Size = 0.9, X = 48, Y = 8},
        },
        {
            Level = 13,
            MinExp = 120001,
            MaxExp = 130000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(13, 36),   Level = 0, Dur = 0,   Skill = 0, Luck = 0, JoL = 0, Exc = 0,  Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
            PremiumItem = {Amount = 3,  Index =  GET_ITEM(13, 36),   Level = 0, Dur = 0,   Skill = 0, Luck = 0, JoL = 0, Exc = 0,  Ancient = 0, Harmony = 0, Size = 0.9, X = 47, Y = 19},
        },
        
        {
            Level = 14,
            MinExp = 130001,
            MaxExp = 140000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(13, 8),     Level = 15, Dur = 255,   Skill = 1, Luck = 1, JoL = 7, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 57, Y = 23},
            PremiumItem = {Amount = 2,  Index =  GET_ITEM(14, 200),   Level = 0,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },
        
        {
            Level = 15,
            MinExp = 140001,
            MaxExp = 150000,
            FreeItem =    {Amount = 5,     Index =  GET_ITEM(14, 22),   Level = 0, Dur = 0,   Skill = 0, Luck = 0, JoL = 0, Exc = 0,  Ancient = 0, Harmony = 0, Size = 0.9, X = 57, Y = 23},
            PremiumItem = {Amount = 10,    Index =  GET_ITEM(14, 22),   Level = 0, Dur = 0,   Skill = 0, Luck = 0, JoL = 0, Exc = 0,  Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },
        
        
        {
            Level = 16,
            MinExp = 150001,
            MaxExp = 160000,
            FreeItem =    {Amount = 0,     Index =  GET_ITEM(14, 22),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.9, X = 57, Y = 23},
            PremiumItem = {Amount = 1,     Index =  GET_ITEM(1, 50),    Level = 0, Dur = 255,   Skill = 1, Luck = 1, JoL = 0, Exc = 63,  Ancient = 0, Harmony = 0, Size = 1.3, X = 65, Y = 22},
        },

        {
            Level = 17,
            MinExp = 160001,
            MaxExp = 170000,
            FreeItem =    {Amount = 0, Index = GET_ITEM(13, 14),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 54, Y = 12},
            PremiumItem = {Amount = 3, Index = GET_ITEM(13, 14),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 52, Y = 8},
        },
                
        {
            Level = 18,
            MinExp = 170001,
            MaxExp = 180000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(13, 8),     Level = 15, Dur = 255,   Skill = 1, Luck = 1, JoL = 7, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 57, Y = 23},
            PremiumItem = {Amount = 1,  Index =  GET_ITEM(9, 33),     Level = 0,  Dur = 255,   Skill = 1, Luck = 1, JoL = 0, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 46, Y = 20},
        },

               
        {
            Level = 19,
            MinExp = 180001,
            MaxExp = 190000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(14, 204),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 45, Y = 15},
            PremiumItem = {Amount = 3,  Index =   GET_ITEM(14, 204),   Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 45, Y = 15},
        },
             
        {
            Level = 20,
            MinExp = 190001,
            MaxExp = 200000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(13, 35),     Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 55, Y = 25},
            PremiumItem = {Amount = 5,  Index =   GET_ITEM(13, 35),     Level = 0, Dur = 0,     Skill = 0, Luck = 0, JoL = 0,Exc = 0, Ancient = 0, Harmony = 0, Size = 0.9, X = 55, Y = 25},
        },

        
        {
            Level = 21,
            MinExp = 200001,
            MaxExp = 210000,
            FreeItem =    {Amount = 0},
            PremiumItem = {Amount = 1, Index = GET_ITEM(14, 206), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
        },

        {
            Level = 22,
            MinExp = 210001,
            MaxExp = 220000,
            FreeItem =    {Amount = 3, Index = GET_ITEM(14, 22),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 57, Y = 25},
            PremiumItem = {Amount = 1, Index = GET_ITEM(14, 207), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
        },

        

        {
            Level = 23,
            MinExp = 220001,
            MaxExp = 230000,
            FreeItem =    {Amount = 0, Index = GET_ITEM(14, 22),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 57, Y = 25},
            PremiumItem = {Amount = 1, Index = GET_ITEM(10, 33),     Level = 0,  Dur = 255,   Skill = 1, Luck = 1, JoL = 0, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 48, Y = 18},
        },
        {
            Level = 24,
            MinExp = 230001,
            MaxExp = 240000,
            FreeItem = {Amount = 0,     Index =  GET_ITEM(13, 8),     Level = 15, Dur = 255,   Skill = 1, Luck = 1, JoL = 7, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 57, Y = 23},
            PremiumItem = {Amount = 2,  Index =  GET_ITEM(14, 200),   Level = 0,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },

        
        {
            Level = 25,
            MinExp = 240001,
            MaxExp = 250000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(14, 11),   Level = 10,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
            PremiumItem = {Amount = 2,  Index =  GET_ITEM(14, 11),   Level = 10,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },

        {
            Level = 26,
            MinExp = 250001,
            MaxExp = 260000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(14, 11),   Level = 11,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
            PremiumItem = {Amount = 3,  Index =  GET_ITEM(14, 11),   Level = 11,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },

        

        {
            Level = 27,
            MinExp = 260001,
            MaxExp = 270000,
            FreeItem = {Amount = 1,     Index =  GET_ITEM(14, 11),   Level = 12,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
            PremiumItem = {Amount = 3,  Index =  GET_ITEM(14, 11),   Level = 12,  Dur = 0,     Skill = 0, Luck = 0, JoL = 7, Exc = 0,   Ancient = 0, Harmony = 0, Size = 0.7, X = 53, Y = 22},
        },     
        {
            Level = 28,
            MinExp = 270001,
            MaxExp = 280000,
            FreeItem =    {Amount = 0},
            PremiumItem = {Amount = 1, Index = GET_ITEM(14, 206), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 47, Y = 19},
        },

        		
        {
            Level = 29,
            MinExp = 280001,
            MaxExp = 290000,
            FreeItem =    {Amount = 3, Index = GET_ITEM(14, 22), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 55, Y = 25},
            PremiumItem = {Amount = 2, Index = GET_ITEM(13, 53), Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 0.8, X = 55, Y = 15},
        },

        {
            Level = 30,
            MinExp = 290001,
            MaxExp = 300000,
            FreeItem =    {Amount = 10, Index = GET_ITEM(14, 14),  Level = 0, Dur = 0, Skill = 0, Luck = 0,JoL = 0, Exc = 0, Ancient = 0, Harmony = 0, Size = 1.0, X = 57, Y = 25},
            PremiumItem = {Amount = 1, Index = GET_ITEM(11, 33),     Level = 0,  Dur = 255,   Skill = 1, Luck = 1, JoL = 0, Exc = 63,  Ancient = 0, Harmony = 0, Size = 0.9, X = 48, Y = 18},
        },
    },

    Text = {
        ["Por"] = {
            [1] = "COMPRAR",
            [2] = "BattlePass",
            [3] = "Fechar (Esc)",
            [4] = "Sem Recompensa",
            [5] = "Exp: %d / %d",
            [6] = "Passe de Batalha",
        },
        ["Eng"] = {
            [1] = "COMPRAR",
            [2] = "BattlePass",
            [3] = "Fechar (Esc)",
            [4] = "Sem Recompensa",
            [5] = "Exp: %d / %d",
            [6] = "Passe de Batalha",
        },
        ["Spn"] = {
            [1] = "COMPRAR",
            [2] = "BattlePass",
            [3] = "Fechar (Esc)",
            [4] = "Sem Recompensa",
            [5] = "Exp: %d / %d",
            [6] = "Passe de Batalha",
        },
    }
}

return BattlePass_Config