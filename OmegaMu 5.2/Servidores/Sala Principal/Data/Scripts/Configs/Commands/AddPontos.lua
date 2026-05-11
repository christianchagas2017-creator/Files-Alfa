AddPontos_Config = {
    Enabled = true,

    CommandAuto = "/autoadd",

    CommandReAdd = "/readd",

    Command = {
        [1] = {"/addfor", "/f", "/addf", "/for", "/str", "/addstr"},
        [2] = {"/addagi", "/a", "/adda", "/agi", "/dex", "/adddex"},
        [3] = {"/addene", "/e", "/adde", "/ene"},
        [4] = {"/addvit", "/v", "/addv", "/vit"},
    },

    Max = 32767,

    Message = {
        ["Por"] = {
            [1] = "Você não tem pontos de up suficiente",
            [2] = "Pontos distribuidos com sucesso ( Relogue ) ",
            [3] = "Pontos redistribuidos com sucesso ( Relogue ) ",
        },
        ["Eng"] = {
            [1] = "You don't have enough LevelUp  points",
            [2] = "Points added successfully ( Reload ) ",
            [3] = "Points reditributed successfully ( Reload ) ",
        },
        ["Spn"] = {
            [1] = "Você não tem pontos de up suficiente",
            [2] = "Pontos distribuidos com sucesso ( Relogue )",
            [3] = "Pontos redistribuidos com sucesso ( Relogue )",
        },
    }
}

return AddPontos_Config