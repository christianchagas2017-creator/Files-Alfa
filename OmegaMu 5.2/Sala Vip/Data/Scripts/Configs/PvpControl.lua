PvpControl_Config = {
    Enabled = true,
	
	    --[[
    -- Aqui mexe nas taxas de sucesso e outros valores nao relacionados ao dano como life e velocidade de ataque
        Life
        Defense
		MissRate
		Life
		Mana
		PhysicSpeed
		MagicSpeed
		FullDamageReflectRate
        AttackSuccessRate
		DamageReduction
		ShieldDamageReduction
        ExcellentDamageRate
		ResistExcellentDamageRate
        DoubleDamageRate
        ResistDoubleDamageRate
        CriticalDamageRate
		ResistCriticalDamageRate
        TripleDamageRate
        IgnoreShieldGaugeRate
        ResistIgnoreShieldGaugeRate

        -- Aqui mexe diretamente no dano
        NormalDamage
        PerfectDamage
        ExcellentDamage
        CriticalDamage
        ReflectDamage
        PoisonDamage
    ]]

    -- Visual = -1 (atributa nos dois)
    -- Visual = 0  (só atributa o full)
    -- Visual = 1  (só atributa o visual)
	
    Itens = {   
	
--================================================================
--===  CONTROL ( PARA TODOS OS LEVEIS )
--================================================================

        [Utils.GetItem(0, 55)] = {
            Visual = 0,
            LevelAdd = {
                Add =  { 
                    ExcellentDamageRate = 35,
                    DoubleDamageRate    = 3,
                    CriticalDamageRate  = 35,
                    TripleDamageRate    = 3,
                    NormalDamage        = 11000,
                    ExcellentDamage     = 2199,
                    CriticalDamage      = 32999
                },

                Multiply = {
                    ExcellentDamageRate = 1.00,
                    DoubleDamageRate    = 3,
                    CriticalDamageRate  = 1.00,
                    TripleDamageRate    = 3,
                    NormalDamage        = 1.00,
                    ExcellentDamage     = 1.00,
                    CriticalDamage      = 1.00
                },
            },  
        },

--================================================================
--===  CONTROL LEVEL , CONTROLE DE ITEM POR DETERMINADO LEVEL
--================================================================

        [Utils.GetItem(0, 5)] = {
            Visual = 0,
            LevelAdd = {
                [10] = {
                    ExcellentDamageRate = 5,
                    NormalDamage        = 1000,
                },
                [11] = {
                    ExcellentDamageRate = 10,
                    NormalDamage        = 2000,
                },
                [15] = {
                    ExcellentDamageRate = 30,
                    NormalDamage        = 5000,
                },
            },

            LevelMultiply = {
                [15] = { 
                    NormalDamage = 1.10,
                },
            },
        },
    },

--================================================================
--===  CONTROL SET , APENAS INDEX ( PUXARÁ AS DE MAIS PARTES )
--================================================================
    SetCombo = {
        [1] = {
            Visual = 0, 
            ComboBonus = {
                Add = {
                    Life = 125000,
                    Defense = 900,
                    MissRate = 23000,
                    DamageReduction = 0,
                    ResistExcellentDamageRate = 5,
                    ResistDoubleDamageRate = 0,
                    ResistCriticalDamageRate = 5,
                    ResistIgnoreShieldGaugeRate = 0,
                    ReflectDamage = 0
                },
                Multiply = {
                    Life = 1.0,
                    Defense = 1.00,
                    MissRate = 1.0,
                    DamageReduction = 1.0,
                    ResistExcellentDamageRate = 1.00,
                    ResistDoubleDamageRate = 1.0,
                    ResistCriticalDamageRate = 1.00,
                    ResistIgnoreShieldGaugeRate = 1.0,
                    ReflectDamage = 1.0
                }
            }
        },
    }                     
}

return PvpControl_Config
