LuckyEvent_Config = {
    Enabled = true,

    Packet = 215,

    Expiration = 22710039600,

    Ranking = {
        [0] = {Table = "Character", Column = "LuckyPointsFree", Where = "Name", IdType = 1},
        [1] = {Table = "Character", Column = "LuckyPointsDonate", Where = "Name", IdType = 1},
    },

    Coin = {
        [0] = {ItemIndex = Utils.GetItem(14, 221), Valor = 60},
        [1] = {ItemIndex = Utils.GetItem(14, 222), Valor = 10},
    },

    Prizes = {
        [0] = {
           {ListID = 01, ItemIndex = GET_ITEM(12, 495), Level = 0,  Dur = 01,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 05.00}, --HORSE MIDNIGHT
           {ListID = 02, ItemIndex = GET_ITEM(12, 495), Level = 0,  Dur = 01,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 00.10}, --ROYAL DARKNESS CAPE [V]
           {ListID = 03, ItemIndex = GET_ITEM(12, 495), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 1, Rate = 00.70}, --HORSE HOLY
           {ListID = 04, ItemIndex = GET_ITEM(12, 496), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 1, Rate = 00.70}, --EARRING REAPER LEFT
           {ListID = 05, ItemIndex = GET_ITEM(7,  370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --EARRING REAPER RIGHT
           {ListID = 06, ItemIndex = GET_ITEM(8,  370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --WINGS HEAT [SKIN D] [V]
           {ListID = 07, ItemIndex = GET_ITEM(9,  370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --ANGEL WINGS [V]
           {ListID = 08, ItemIndex = GET_ITEM(10, 370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SWORD OF STYLE
           {ListID = 09, ItemIndex = GET_ITEM(11, 370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK HELM [V]
           {ListID = 10, ItemIndex = GET_ITEM(7,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK ARMOR [V]
           {ListID = 11, ItemIndex = GET_ITEM(8,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK PANTS [V]
           {ListID = 12, ItemIndex = GET_ITEM(9,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK GLOVES [V]
           {ListID = 13, ItemIndex = GET_ITEM(10, 371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK BOOTS [V]
           {ListID = 14, ItemIndex = GET_ITEM(11, 371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --PHANTOM MACE MACE [V]
           {ListID = 15, ItemIndex = GET_ITEM(0,  376), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --CHAOS SHIELD BLACK [V]
           {ListID = 16, ItemIndex = GET_ITEM(0,  377), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK HELM [V]
           {ListID = 17, ItemIndex = GET_ITEM(0,  378), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK ARMOR [V]
           {ListID = 18, ItemIndex = GET_ITEM(0,  379), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK PANTS [V]
           {ListID = 19, ItemIndex = GET_ITEM(6,  192), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK GLOVES [V]
           {ListID = 20, ItemIndex = GET_ITEM(13, 393), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 00, Ancient = 0, Harmony = 1, Rate = 00.50}, --SET GRAND SOUL BLACK BOOTS [V]
           {ListID = 21, ItemIndex = GET_ITEM(12,  36), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --STAFF KUNDUN BLACK [V]
           {ListID = 22, ItemIndex = GET_ITEM(12,  37), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --SHIELD GRANDSOUL BLACK [V]
           {ListID = 23, ItemIndex = GET_ITEM(12,  38), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --LIGHT SABER BLACK [V]
           {ListID = 24, ItemIndex = GET_ITEM(12,  39), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --LIGHT SABER BLACK [V]
           {ListID = 25, ItemIndex = GET_ITEM(14,  70), Level = 0,  Dur = 255, Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 15.00}, --LIGHT SABER BLACK [V]
           {ListID = 26, ItemIndex = GET_ITEM(14,  35), Level = 0,  Dur = 20,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 15.00}, --LIGHT SABER BLACK [V]
        },
    

        [1] = {
           {ListID = 01, ItemIndex = GET_ITEM(14, 189), Level = 0,  Dur = 01,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 05.00}, --HORSE MIDNIGHT
           {ListID = 02, ItemIndex = GET_ITEM(14, 225), Level = 0,  Dur = 01,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 00.10}, --ROYAL DARKNESS CAPE [V]
           {ListID = 03, ItemIndex = GET_ITEM(12, 495), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 1, Rate = 00.70}, --HORSE HOLY
           {ListID = 04, ItemIndex = GET_ITEM(12, 496), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 1, Rate = 00.70}, --EARRING REAPER LEFT
           {ListID = 05, ItemIndex = GET_ITEM(7,370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --EARRING REAPER RIGHT
           {ListID = 06, ItemIndex = GET_ITEM(8,  370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --WINGS HEAT [SKIN D] [V]
           {ListID = 07, ItemIndex = GET_ITEM(9,  370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --ANGEL WINGS [V]
           {ListID = 08, ItemIndex = GET_ITEM(10, 370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SWORD OF STYLE
           {ListID = 09, ItemIndex = GET_ITEM(11, 370), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK HELM [V]
           {ListID = 10, ItemIndex = GET_ITEM(7,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK ARMOR [V]
           {ListID = 11, ItemIndex = GET_ITEM(8,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK PANTS [V]
           {ListID = 12, ItemIndex = GET_ITEM(9,  371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK GLOVES [V]
           {ListID = 13, ItemIndex = GET_ITEM(10, 371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET DRAGON BLACK BOOTS [V]
           {ListID = 14, ItemIndex = GET_ITEM(11, 371), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --PHANTOM MACE MACE [V]
           {ListID = 15, ItemIndex = GET_ITEM(0,   376), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --CHAOS SHIELD BLACK [V]
           {ListID = 16, ItemIndex = GET_ITEM(0,   377), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK HELM [V]
           {ListID = 17, ItemIndex = GET_ITEM(0,   378), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK ARMOR [V]
           {ListID = 18, ItemIndex = GET_ITEM(0,   379), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK PANTS [V]
           {ListID = 19, ItemIndex = GET_ITEM(6,   192), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 63, Ancient = 0, Harmony = 1, Rate = 01.00}, --SET GRAND SOUL BLACK GLOVES [V]
           {ListID = 20, ItemIndex = GET_ITEM(13, 393), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 00, Ancient = 0, Harmony = 1, Rate = 00.50}, --SET GRAND SOUL BLACK BOOTS [V]
           {ListID = 21, ItemIndex = GET_ITEM(12,  36), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --STAFF KUNDUN BLACK [V]
           {ListID = 22, ItemIndex = GET_ITEM(12,  37), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --SHIELD GRANDSOUL BLACK [V]
           {ListID = 23, ItemIndex = GET_ITEM(12,  38), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --LIGHT SABER BLACK [V]
           {ListID = 24, ItemIndex = GET_ITEM(12,  39), Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 47, Ancient = 0, Harmony = 0, Rate = 07.00}, --LIGHT SABER BLACK [V]
           {ListID = 25, ItemIndex = GET_ITEM(14,  70), Level = 0,  Dur = 255, Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 15.00}, --LIGHT SABER BLACK [V]
           {ListID = 26, ItemIndex = GET_ITEM(14,  35), Level = 0,  Dur = 20,  Skill = 0, Luck = 0, Opt = 0, Exc = 00, Ancient = 0, Harmony = 0, Rate = 15.00}, --LIGHT SABER BLACK [V]
        },

    },

    Message = {
        ["Por"] = {
            [1] = "O evento não está mais disponível",
        },
        ["Eng"] = {
            [1] = "The event is no longer available",
        },
        ["Spn"] = {
            [1] = "El evento ya no está disponible",
        },
    }

}

return LuckyEvent