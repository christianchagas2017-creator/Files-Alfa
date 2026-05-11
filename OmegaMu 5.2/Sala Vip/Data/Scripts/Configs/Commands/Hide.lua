Hide_Config = {
    Enabled = true,

    Command = "/hide",
    All     = "/hideall",
    Map     = "/hidemap",
    on      = "on",
    off     = "off",

    UseLevel = 1,
    Advanced = 5,

    Message = {
        ["Por"] = {
            [1] = "[Sistema] O jogador [%s] não existe ou não está online",
            [2] = "[Sistema] Hide ativado para %s",
            [3] = "[Sistema] Hide desativado para %s",
        },

        ["Eng"] = {
            [1] = "[System] Player [%s] does not exist or is not online",
            [2] = "[System] Hide enabled for %s",
            [3] = "[System] Hide disabled for %s",
        },

        ["Spn"] = {
            [1] = "[Sistema] Player [%s] no existe o no está en línea",
            [2] = "[Sistema] Hide habilitado para %s",
            [3] = "[Sistema] Hide deshabilitado para %s",
        },
    }
}

return Hide_Config