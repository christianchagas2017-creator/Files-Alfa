Move_Config = {
    WindowID = 111,

    GameMasterButton = 3,

    Pages = {
        [1] = "LORENCIA",
        [2] = "DUNGEON",
        [3] = "DEVIAS",
        [4] = "NORIA",
        [5] = "LOSTTOWER",
        [6] = "ARENA",
        [7] = "ATLANS",
        [8] = "TARKAN",
        [9] = "ICARUS",
        --[10] = "ESPECIAIS",
    },

    City = {
        [0] = 1,
        [1] = 2,
        [2] = 3,
        [3] = 4,
        [4] = 5,
        [6] = 6,
        [7] = 7,
        [8] = 8,
       -- [10] = 9,
    },

    Moves = {
        [1] = {
            {Type = 0, Name = "LORENCIA"              , Command = "/move lorencia"},
            {Type = 0, Name = "LORENCIA 2"            , Command = "/lorencia2"},
            {Type = 0, Name = "LORENCIA 3"            , Command = "/lorencia3"},
            {Type = 0, Name = "LORENCIA 4"            , Command = "/lorencia4"},
            {Type = 0, Name = "BAR"                   , Command = "/bar"},
            {Type = 0, Name = "PISTA"                 , Command = "/pista"},
            {Type = 0, Name = "CEMITERIO"             , Command = "/cemiterio"},
            {Type = 0, Name = "MAGO"                  , Command = "/mago"},
            {Type = 0, Name = "FERREIRO"              , Command = "/ferreiro"},
            --{Type = 0, Name = "NPC HORAS"             , Command = "/npchoras"},
            --{Type = 0, Name = "NPC SORTE"             , Command = "/npcsorte"},
            --{Type = 0, Name = "IR BAU"                , Command = "/irbau"},
        },

        [2] = {
            {Type = 0, Name = "MOVE DUNGEON"          , Command = "/move dungeon"},
            {Type = 0, Name = "MOVE DUNGEON 2"        , Command = "/move dungeon2"},
            {Type = 0, Name = "MOVE DUNGEON 3"        , Command = "/move dungeon3"},
            {Type = 0, Name = "DUNGEON 2"             , Command = "/dungeon2"},
            {Type = 0, Name = "DUNGEON 3"             , Command = "/dungeon3"},
            {Type = 0, Name = "DUNGEON 4"             , Command = "/dungeon4"},
        },

        [3] = {
            {Type = 0, Name = "MOVE DEVIAS"           , Command = "/move devias"},
            {Type = 0, Name = "MOVE DEVIAS 2"         , Command = "/devias2"},
            {Type = 0, Name = "MOVE DEVIAS 3"         , Command = "/move devias3"},
            {Type = 0, Name = "MOVE DEVIAS 4"         , Command = "/move devias4"},
            {Type = 0, Name = "DEVIAS 4"              , Command = "/devias4"},
            {Type = 0, Name = "IGREJA"                , Command = "/igreja"},
        },

        [4] = {
            {Type = 0, Name = "NORIA"                 , Command = "/move noria"},
            {Type = 0, Name = "NORIA 2"               , Command = "/move noria2"},
            {Type = 0, Name = "NORIA 3"               , Command = "/move noria3"},
           -- {Type = 0, Name = "NPC MR"                , Command = "/npcmr"},
        },

        [5] = {
            {Type = 0, Name = "LOSTTOWER"             , Command = "/move losttower"},
            {Type = 0, Name = "LOSTTOWER 2"           , Command = "/move losttower2"},
            {Type = 0, Name = "LOSTTOWER 3"           , Command = "/move losttower3"},
            {Type = 0, Name = "LOSTTOWER 4"           , Command = "/move losttower4"},
            {Type = 0, Name = "LOSTTOWER 5"           , Command = "/move losttower5"},
            {Type = 0, Name = "LOSTTOWER 6"           , Command = "/move losttower6"},
            {Type = 0, Name = "LOSTTOWER 7"           , Command = "/move losttower7"},
            {Type = 0, Name = "LOSTTOWER 8"           , Command = "/move losttower8"}
        },

        [6] = {
            {Type = 0, Name = "MOVE ARENA"            , Command = "/move arena"},
            {Type = 0, Name = "NPCPK"                 , Command = "/npcpk"},
            {Type = 0, Name = "ARENA"                 , Command = "/arena"},
            {Type = 0, Name = "ARENA 1"               , Command = "/arena1"},
            {Type = 0, Name = "ARENA 2"               , Command = "/arena2"},
            {Type = 0, Name = "ARENA 3"               , Command = "/arena3"},
            {Type = 0, Name = "ARENA 4"               , Command = "/arena4"},
            {Type = 0, Name = "ARENA 5"               , Command = "/arena5"},
            {Type = 0, Name = "ARENA 6"               , Command = "/arena6"},
            {Type = 0, Name = "ARENA 7"               , Command = "/arena7"},
            {Type = 0, Name = "ARENA 8"               , Command = "/arena8"},
            {Type = 0, Name = "ARENA 9"               , Command = "/arena9"},
            {Type = 0, Name = "ARENA 10"              , Command = "/arena10"},
            {Type = 0, Name = "ARENA 11"              , Command = "/arena11"},
        },

        [7] = {
            {Type = 0, Name = "ATLANS"                , Command = "/move atlans"},
            {Type = 0, Name = "ATLANS 2"              , Command = "/move atlans2"},
            {Type = 0, Name = "ATLANS 3"              , Command = "/move atlans3"},
        },

        [8] = {
            {Type = 0, Name = "MOVE TARKAN"           , Command = "/move tarkan"},
            {Type = 0, Name = "MOVE TARKAN )"         , Command = "/move tarkan2"},
            {Type = 0, Name = "TARKAN 2"              , Command = "/tarkan2"},
            {Type = 0, Name = "TARKAN 3"              , Command = "/tarkan3"},
            {Type = 0, Name = "TARKAN 4"              , Command = "/tarkan4"},
            {Type = 0, Name = "TARKAN 5"              , Command = "/tarkan5"},
        },

        [9] = {
            {Type = 0, Name = "ICARUS"                , Command = "/move icarus"},
            {Type = 0, Name = "ICARUS 2"              , Command = "/icarus2"},
            {Type = 0, Name = "ICARUS 3"              , Command = "/icarus3"},
            {Type = 0, Name = "ICARUS 4 "             , Command = "/icarus4"},
        },

        [10] = {
            {Type = 0, Name = "EVENTOS"               , Command = ""},
            {Type = 0, Name = "COMANDOS"              , Command = ""},
            {Type = 2, Name = "GAME MASTER"           , Command = ""},

        },

        [11] = {
            {Type = 1, Name = "VOID"                  , Command = "/void"},
            --{Type = 1, Name = "RAKLION"               , Command = "/raklion"},
            --{Type = 2, Name = "SANTA"                 , Command = "/santa"},
            {Type = 0, Name = "PEGA-PEGA"             , Command = "/pegapega"},
            {Type = 0, Name = "MATA-MATA"             , Command = "/novaarena"},
            {Type = 0, Name = "SOBREVIVÊNCIA"         , Command = "/sobre"},
            {Type = 0, Name = "RESTA 1"               , Command = "/resta1"},
            {Type = 0, Name = "GAIOLA"                , Command = "/gaiola"},
            {Type = 0, Name = "WARKILL"               , Command = "/warkill"},
            {Type = 0, Name = "X1 PREMIADO"           , Command = "/x1"},
        },

        [12] = {
            {Type = 0, Name = "GUARDIAN (1)"          , Command = "/guardian"},
            {Type = 0, Name = "GUARDIAN (2)"          , Command = "/guardian2"},
            {Type = 0, Name = "GENESIS MACHINE"       , Command = "/genesis"},
            {Type = 0, Name = "CHAOS MACHINE"         , Command = "/move cm"},
            {Type = 0, Name = "CAMBISTA"              , Command = "/cambista"},
        },

        [13] = {
            {Type = 0, Name = "BLOOD CASTLE (1)"      , Command = "/gmove bc1"},
            {Type = 0, Name = "BLOOD CASTLE (2)"      , Command = "/gmove bc2"},
            {Type = 0, Name = "BLOOD CASTLE (3)"      , Command = "/gmove bc3"},
            {Type = 0, Name = "BLOOD CASTLE (4)"      , Command = "/gmove bc4"},
            {Type = 0, Name = "BLOOD CASTLE (5)"      , Command = "/gmove bc5"},
            {Type = 0, Name = "BLOOD CASTLE (6)"      , Command = "/gmove bc6"},
            {Type = 0, Name = "BLOOD CASTLE (7)"      , Command = "/gmove bc7"},

            {Type = 0, Name = "DEVIL SQUARE (1)"      , Command = "/gmove ds1"},
            {Type = 0, Name = "DEVIL SQUARE (2)"      , Command = "/gmove ds2"},
            {Type = 0, Name = "DEVIL SQUARE (3)"      , Command = "/gmove ds3"},
            {Type = 0, Name = "DEVIL SQUARE (4)"      , Command = "/gmove ds4"},
            {Type = 0, Name = "DEVIL SQUARE (5)"      , Command = "/gmove ds5"},
            {Type = 0, Name = "DEVIL SQUARE (6)"      , Command = "/gmove ds6"},

            {Type = 0, Name = "NOVA ARENA INICIO"     , Command = "/gmove novaarena"},
            {Type = 0, Name = "NOVA ARENA MEIO"       , Command = "/gmove novaarena2"},
            {Type = 0, Name = "NOVA ARENA FIM"        , Command = "/gmove novaarena3"},

            {Type = 0, Name = "DARK ARENA INICIO"     , Command = "/gmove darkarena"},
            {Type = 0, Name = "DARK ARENA MEIO"       , Command = "/gmove darkarena2"},
            {Type = 0, Name = "DARK ARENA FIM"        , Command = "/gmove darkarena3"},

            {Type = 0, Name = "CASTLE SIEGE"          , Command = "/gmove cs"},
            {Type = 0, Name = "COLISEU"               , Command = "/gmove coliseu"},
            {Type = 0, Name = "MEDUSA"                , Command = "/gmove medusa"},

        },
    },

    Speciais = {
        {Type = 0, Name = {["Por"] = "ESPECIAIS"      , 	    ["Eng"] = "SPECIAIS"      , ["Spn"] = "ESPECIAIS"}},
        {Type = 0, Name = {["Por"] = "LEGEND INVASION" , 		["Eng"] = "LEGEND INVASION"        , ["Spn"] = "LEGEND INVASION"}},
        {Type = 0, Name = {["Por"] = "UTILITÁRIOS"    , 		["Eng"] = "UTILITIES"     , ["Spn"] = "UTILIDADES"}},
        {Type = 0, Name = {["Por"] = "GAME MASTER"    , 		["Eng"] = "GAME MASTER"   , ["Spn"] = "GAME MASTER"}},
        {Type = 0, Name = {["Por"] = "VOLTAR"         , 		["Eng"] = "BACK"          , ["Spn"] = "VOLVER"}},
    }

}

return Move_Config