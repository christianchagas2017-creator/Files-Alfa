ReloadSystem_Config = {
    Enabled = true,
    Advanced = 5,
    Command      = "/reload",
    monster      = "monster",
    item         = "item",
    custom       = "custom",
    character    = "character",
    util         = "util",
    event        = "event",
    eventitembag = "itembag",
    skill        = "skill",
    hack         = "hack",
    common       = "common",
    mix          = "mix",
    shop         = "shop",
    cashshop     = "cashshop",
    move         = "move",
    quest        = "quest",
    lua          = "lua",
    all          = "all",

    Nicks = {
        [1] = "VITAS",
        [2] = "EuSouRica",
    },

    Message = {
        ["Por"] = {
            [1] = "[Servidor] Reload feito em %s com sucesso",
            [2] = "[Servidor] Usar: monster, item, custom, character, ",
            [3] = "event, itembag, skill, hack, common, shop,",
            [4] = "util, move, quest, lua, cashshop, mix, all",
        },

        ["Eng"] = {
            [1] = "[Server] Reload to %s successfully",
            [2] = "[Server] Use: monster, item, custom, character, ",
            [3] = "event, itembag, skill, hack, common, shop,",
            [4] = "util, move, quest, lua, cashshop, mix, all",
        },

        ["Spn"] = {
            [1] = "[Servidor] Reload feito em %s con éxito",
            [2] = "[Servidor] Usar: monster, item, custom, character, ",
            [3] = "event, itembag, skill, hack, common, shop,",
            [4] = "util, move, quest, lua, cashshop, mix, all",
        },
    },
}

return ReloadSystem_Config

