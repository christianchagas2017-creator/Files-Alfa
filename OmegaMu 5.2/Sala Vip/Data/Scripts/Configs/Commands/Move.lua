Move_Config = {
    Enabled = true,

    Command = {
        [1] = "/move",
        [2] = "/warp",
        [3] = "/m",
    },

    CommandMovePlayer = {
        [1] = "/gmove",
        [2] = "/gmmove",
        [3] = "/gm",
    },

    CommandMoveMap ={
        [1] = "/movemap",
        [2] = "/gmovemap",
        [3] = "/gmmovemap",
    },

    CommandMoveAll = {
        [1] = "/moveall",
        [2] = "/moverall",
        [3] = "/movetodos",
        [4] = "/movertodos",
    },

    Nicks = {
        [1] = "VITAS",
        [2] = "EuSouRica",
    },

    MovePlayer = {
        Mapa = 0, CordX = 125, CordY = 125, --Bar

        --[1] = {Map = 0, X = 125, Y = 125}, --Bar
        --[2] = {Map = 0, X = 133, Y = 118, MX = 151, MY = 135}, --Lorencia
        --[3] = {Map = 3, X = 171, Y = 108, MX = 177, MY = 117}, --Noria
    },

    MoveGateSpecial = {
        Devias = {
            [1] = {X = 210, Y = 51, MX = 222, MY = 64},
            [2] = {X = 212, Y = 32, MX = 223, MY = 51},
            [3] = {X = 193, Y = 33, MX = 215, MY = 39},
            [4] = {X = 196, Y = 18, MX = 200, MY = 52},
            [5] = {X = 187, Y = 19, MX = 201, MY = 40},
        },
    },

    Gate = {
        --MOVES ORIGINAIS
        ["lorencia"]        = {Map = 0,  X = 133, Y = 118, MX = 151, MY = 135, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["dungeon"]         = {Map = 1,  X = 107, Y = 247, MX = 110, MY = 247, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["dungeon2"]        = {Map = 1,  X = 231, Y = 125, MX = 233, MY = 123, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["dungeon3"]        = {Map = 1,  X = 3  , Y = 83 , MX = 4  , MY = 86 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["devias"]          = {Map = 2,  X = 197, Y = 35 , MX = 218, MY = 50 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["devias2"]         = {Map = 2,  X = 23 , Y = 27 , MX = 27 , MY = 24 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["devias3"]         = {Map = 2,  X = 224, Y = 231, MX = 227, MY = 227, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["devias4"]         = {Map = 2,  X = 69 , Y = 181, MX = 72 , MY = 178, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["noria"]           = {Map = 3,  X = 171, Y = 108, MX = 177, MY = 117, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower"]       = {Map = 4,  X = 203, Y = 70,  MX = 213, MY = 81,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower1"]      = {Map = 4,  X = 203, Y = 70,  MX = 213, MY = 81,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower2"]      = {Map = 4,  X = 241, Y = 237, MX = 244, MY = 238, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower3"]      = {Map = 4,  X = 86,  Y = 166, MX = 87,  MY = 168, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower4"]      = {Map = 4,  X = 87,  Y = 86,  MX = 88 , MY = 89,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower5"]      = {Map = 4,  X = 128, Y = 53,  MX = 131, MY = 54,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower6"]      = {Map = 4,  X = 52 , Y = 53,  MX = 55 , MY = 54,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower7"]      = {Map = 4,  X = 8  , Y = 85,  MX = 9  , MY = 87,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["losttower8"]      = {Map = 4,  X = 44 , Y = 143, MX = 46 , MY = 161, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena"]           = {Map = 6,  X = 62,  Y = 115, MX = 62,  MY = 115, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["atlans"]          = {Map = 7,  X = 15,  Y = 11,  MX = 27,  MY = 23,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["atlans2"]         = {Map = 7,  X = 225, Y = 53,  MX = 228, MY = 50,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["atlans3"]         = {Map = 7,  X = 62,  Y = 163, MX = 68,  MY = 157, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["tarkan"]          = {Map = 8,  X = 187, Y = 54,  MX = 203, MY = 69,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["tarkan2"]         = {Map = 8,  X = 96,  Y = 143, MX = 100, MY = 146, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["icarus"]          = {Map = 10, X = 14,  Y = 13,  MX = 16,  MY = 13,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --MOVE SEM MOVE
        --LORENCIA
        ["bar"]             = {Map = 0,  X = 125, Y = 125, MX = 125, MY = 125, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["pista"]           = {Map = 0,  X = 122, Y =  83, MX = 122, MY =  83, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["cemiterio"]       = {Map = 0,  X = 140, Y = 225, MX = 140, MY = 225, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["irbau"]           = {Map = 0,  X = 147, Y = 144, MX = 147, MY = 144, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["ferreiro"]        = {Map = 0,  X = 118, Y = 141, MX = 118, MY = 141, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["mago"]            = {Map = 0,  X = 120, Y = 113, MX = 120, MY = 113, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["lorencia2"]       = {Map = 0,  X =  76, Y = 155, MX =  76, MY = 155, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["lorencia3"]       = {Map = 0,  X = 220, Y = 200, MX = 220, MY = 200, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["lorencia4"]       = {Map = 0,  X = 210, Y = 109, MX = 210, MY = 109, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --DEVIAS
        ["igreja"]          = {Map = 2,  X = 210, Y = 25 , MX = 210, MY = 25 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["guardian"]        = {Map = 2,  X = 197, Y = 53,  MX = 197, MY = 53,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --NORIA
        ["noria2"]          = {Map = 3,  X =  15, Y =  15, MX =  15, MY =  15, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["noria3"]          = {Map = 3,  X = 235, Y = 135, MX = 235, MY = 135, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["genesis"]         = {Map = 3,  X = 186, Y = 103, MX = 186, MY = 103, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["cm"]              = {Map = 3,  X = 180, Y = 101, MX = 180, MY = 101, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["chaosmachine"]    = {Map = 3,  X = 180, Y = 101, MX = 180, MY = 101, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["guardian2"]       = {Map = 3,  X = 169, Y =  99, MX = 169, MY =  99, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["npcpk"]           = {Map = 6,  X = 55,  Y = 161, MX =  69, MY = 178, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["npcmr"]           = {Map = 3,  X = 191, Y = 114, MX = 191, MY = 114, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["cambista"]        = {Map = 3,  X = 200, Y = 110, MX = 200, MY = 110, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --ARENA
        ["arena1"]          = {Map = 6,  X =  55, Y = 80 , MX =  55, MY = 80 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena2"]          = {Map = 6,  X =  38, Y = 44 , MX =  38, MY = 44 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena3"]          = {Map = 6,  X =  38, Y = 66 , MX =  38, MY = 66 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena4"]          = {Map = 6,  X =  38, Y = 84 , MX =  38, MY = 84 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena5"]          = {Map = 6,  X =  20, Y = 83 , MX =  20, MY = 83 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena6"]          = {Map = 6,  X =  20, Y = 65 , MX =  20, MY = 65 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena7"]          = {Map = 6,  X =  20, Y = 47 , MX =  20, MY = 47 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena8"]          = {Map = 6,  X =  40, Y = 10 , MX =  40, MY = 10 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena9"]          = {Map = 6,  X =  60, Y = 7  , MX =  60, MY = 7  , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena10"]         = {Map = 6,  X =  90, Y = 40 , MX =  90, MY = 40 , Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},
        ["arena11"]         = {Map = 6,  X =  90, Y = 115, MX =  90, MY = 115, Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --SANTA
        ["santa"]           = {Map = 62, X = 218, Y = 21,  MX = 218, MY = 21,  Level = 10, MUpPoint = 0, Vip = 0, Pk = false, Authority = 1},

        --MOVES STAFF
        ["novaarena"]       = {Map = 6,  X = 186, Y = 191, MX = 194, MY = 199, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["novaarena2"]      = {Map = 6,  X = 216, Y = 192, MX = 216, MY = 192, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["novaarena3"]      = {Map = 6,  X = 239, Y = 191, MX = 246, MY = 199, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        ["darkarena"]       = {Map = 6,  X = 186, Y = 087, MX = 194, MY = 095, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["darkarena2"]      = {Map = 6,  X = 216, Y = 088, MX = 216, MY = 088, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["darkarena3"]      = {Map = 6,  X = 237, Y = 087, MX = 245, MY = 095, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        ["cs"]              = {Map = 30, X = 164, Y = 198, MX = 187, MY = 209, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        --DEVIL SQUARE
        ["ds1"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["ds2"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["ds3"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["ds4"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["ds5"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["ds6"]             = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        ["pegapega"]        = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["pgpg"]            = {Map = 9,  X = 121, Y = 153, MX = 149, MY = 183, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        --BLOOD CASTLE
        ["bc1"]             = {Map = 11, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc2"]             = {Map = 12, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc3"]             = {Map = 13, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc4"]             = {Map = 14, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc5"]             = {Map = 15, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc6"]             = {Map = 16, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["bc7"]             = {Map = 17, X = 014, Y = 007, MX = 014, MY = 007, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        ["duelarena"]       = {Map = 64, X = 155, Y = 070, MX = 155, MY = 070, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["coliseu"]         = {Map = 64, X = 155, Y = 070, MX = 155, MY = 070, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},

        ["portao"]          = {Map = 57, X = 173, Y = 024, MX = 173, MY = 024, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},
        ["medusa"]          = {Map = 56, X = 133, Y = 104, MX = 143, MY = 113, Level = 00, MUpPoint = 0, Vip = 3, Pk = false, Authority = 2},   
    },

    CheckMoveMaps = {
        Enabled = true,

        MapsMovesPermition = {
            [1]  = 0,  --MAP LORENCIA
            [2]  = 1,  --MAP DUNGEON
            [3]  = 2,  --MAP DEVIAS
            [4]  = 3,  --MAP NORIA
            [5]  = 4,  --MAP LOSTTOWER
            [6]  = 5,  --MAP EXILED
            [7]  = 6,  --MAP ARENA
            [8]  = 7,  --MAP ATLANS
            [9]  = 8,  --MAP TARKAN
            [10] = 9,  --MAP DEVIL SQUARE
            [11] = 10, --MAP ICARUS
            [12] = 11, --MAP BLOOD CASTLE 1
            [13] = 12, --MAP BLOOD CASTLE 2
            [14] = 13, --MAP BLOOD CASTLE 3
            [15] = 14, --MAP BLOOD CASTLE 4
            [16] = 15, --MAP BLOOD CASTLE 5
            [17] = 16, --MAP BLOOD CASTLE 6
            [18] = 17, --MAP BLOOD CASTLE 7
            [19] = 18, --MAP CHAOS CASTLE 1
            [20] = 19, --MAP CHAOS CASTLE 2
            [21] = 20, --MAP CHAOS CASTLE 3
            [22] = 21, --MAP CHAOS CASTLE 4
            [23] = 22, --MAP CHAOS CASTLE 5
            [24] = 23, --MAP CHAOS CASTLE 6
            [25] = 30, --MAP VALLEY OF LOREN (CASTLE SIEG)
            [26] = 31, --MAP LAND OF TRIALS
            [27] = 32, --MAP DEVIL SQUARE
            [28] = 33, --MAP AIDA
            [29] = 34, --MAP CRYWOLF FORTRESS
            [30] = 52, --MAP BLOOD CASTLE 8
            [31] = 53, --MAP CHAOS CASTLE 7
            [32] = 45, --MAP ILLUSION TEMPLE 1
            [33] = 46, --MAP ILLUSION TEMPLE 2
            [34] = 47, --MAP ILLUSION TEMPLE 3
            [35] = 48, --MAP ILLUSION TEMPLE 4
            [36] = 49, --MAP ILLUSION TEMPLE 5
            [37] = 50, --MAP ILLUSION TEMPLE 6
            [38] = 56, --MAP MEDUSA
            [39] = 57, --MAP RAKLION
            [40] = 58, --MAP RAKLION BOSS
            [41] = 62, --MAP SANTA TOWN / VILLAGE SANTA
            [42] = 64, --MAP COLISEU / BATTLE ARENA
            [43] = 69, --MAP EMPIRE FORTRESS (GAION)
            [44] = 70, --MAP EMPIRE FORTRESS (GAION)
            [45] = 71, --MAP EMPIRE FORTRESS (GAION)
            [46] = 72, --MAP EMPIRE FORTRESS (GAION)
            [47] = 81, --MAP VOLCAN
            [48] = 82, --MAP VOID
            [49] = 83, --MAP SANTA TOWN / VILLAGE SANTE CUSTOM
            [50] = 84, --MAP THE MAZE OF VOID / LABIRINTO
        },
    },

    Message ={
        ["Eng"] = {
            [1] = "You need to be level %d",
            [2] = "Moves not available for your VIP level",
            [3] = "Assassins cannot use this move",
            [4] = "You need %d Master Points to move",
            [5] = "[System] All players have been moved to %s",
            [6] = "[System] All players have been moved to %d %d %d",
            [7] = "[System] Please enter a valid number",
        },
        ["Por"] = {
            [1] = "Você precisa estar no level %d",
            [2] = "Move não disponível para seu nível de Vip",
            [3] = "Assassinos não pode usar esse move",
            [4] = "Você precisa ter %d Master Points para mover",
            [5] = "[Sistema] Todos os player foram movidos para %s",
            [6] = "[Sistema] Todos os player foram movidos para %d %d %d",
            [7] = "[Sistema] Digite um número válido",
        },
        ["Spn"] = {
            [1] = "Você precisa estar no level %d",
            [2] = "Movimientos no disponibles para tu nivel VIP",
            [3] = "Los asesinos no pueden usar este movimiento",
            [4] = "Necesitas %d Puntos Maestros para moverte",
            [5] = "[Sistema] Todos los jugadores han sido movidos a %s",
            [6] = "[Sistema] Todos los jugadores han sido movidos a %d %d %d",
            [7] = "[Sistema] Ingrese un número válido",
        },
    }

}

return Move_Config