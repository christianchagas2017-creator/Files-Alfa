SkillManager_Config = {
    Enabled = true,

    Command    = "/skill",
    CommandAdd = "/addskill",
    CommandDel = "/delskill",

    GMLevel = 5,

    Nicks = {
        [1] = "foxx",
        [2] = "EuSouRica",
        [3] = "GTR",
		[4] = "ADMIN",
        [5] = "TestBK"
    },

    SkillAdd = {
        --SOUL MASTER
        [0] = {
            1 , --Skill of Poison
            2 , --Skill of Meteorite
            3 , --Skill of Lighting
            4 , --Skill of Fire Ball
            5 , --Skill of Flame
            6 , --Skill of Teleport
            7 , --Skill of Ice
            8 , --Skill of Twister
            9 , --Skill of Evil Spirit
            10, --Skill of Hellfire
            11, --Skill of Power Wave
            12, --Skill of Aqua Beam
            13, --Skill of Cometfall/Blast
            14, --Skill of Inferno
            15, --Skill of Teleport Ally
            16, --Skill of Soul Barrier/Mana Shield
            38, --Skill of Decay
            39, --Skill of Ice Storm
            40, --Skill of Nova
            233,--Skill of Wizardry Enhance/Magic Circle  
        },

        --BLADE KNIGHT
        [1] = {
            41, --Skill Twisting Slash
            42, --Skill Rageful Blow
            43, --Skill Death Stab
            48, --Skill Greater Fortitude/Life
        },

        --FAIRY ELF
        [2] = {
            24, --Skill of Triple-Shot
            26, --Skill Healing 
            27, --Skill of Greater Defense
            28, --Skill of Greater Damage
            30, --Skill of Summon Goblin
            31, --Skill of Summon Stone Golem
            32, --Skill of Summon Assassin
            33, --Skill of Summon Elite Yeti
            34, --Skill of Summon Dark Knight
            35, --Skill of Summon Bali
            36, --Skill of Summon Soldier
            51, --Skill of Ice Arrow
            52, --Skill of Penetration
            77, --Skill of Infinity Arrow
            235,--Skill of Multi-Shot
        },

        --MAGIC GLADIATOR
        [3] = {
            1 , --Skill of Poison
            2 , --Skill of Meteorite
            3 , --Skill of Lighting
            4 , --Skill of Fire Ball
            5 , --Skill of Flame
            6 , --Skill of Teleport
            7 , --Skill of Ice
            8 , --Skill of Twister
            9 , --Skill of Evil Spirit
            10, --Skill of Hellfire
            11, --Skill of Power Wave
            12, --Skill of Aqua Beam
            13, --Skill of Cometfall/Blast
            14, --Skill of Inferno
            16, --Skill of Soul Barrier/Mana Shield
            38, --Skill of Decay
            39, --Skill of Ice Storm
            41, --Skill Twisting Slash
            55, --Skill Fire Slash
            56, --Skill Power Slash
            237,--Skill of Gigantic Storm

            --OPCIONAIS
            --16, --Skill of Soul Barrier/Mana Shield
            --48, --Skill Greater Fortitude/Life
        },
    }

}

return SkillManager_Config