Post_Config = {
    Enabled = true,
    Timer = 3,
    Reset = 0,

    LiberarPost = "/liberarpost",

    Command = {
       [1] = "/post",
       [2] = "/p",
       [3] = "/all",
    },

    Extra = {
        [1] = "/compro",
        [2] = "/vendo",
        [3] = "/poststaff"
    },

    Notice = {
      Notice = "/notice",
      NAll   = "/noticeall",
      PAll   = "/postall",
    },

    Text =   {
        [1] = "[Post] %s: %s ",
        [2] = "[STAFF] %s: %s ",
        [3] = "[Post][%s] %s: %s ",
    },

    ServerName = {
        [0] = "Trade",
        [2] = "Spots",
    },

    NickChange = {
		 Enabled = true,
		 Command = "/postname",

        Permittion = {
            [1] = "VITAS",
            [2] = "EuSouRica",
        },

		Nicks = {
            ["VITAS"] 	  = "o vitin resolve",
            ["ADM-NEGAN"] = "o vitin resolve",
            ["vitinhosl"] = "o vitin resolve",
            ["ADMIN"]     = "o vitin resolve",
            ["LuaSubADM"] = "The Moon",
		},
    },

    Message = {
        ["Por"] = {
            [1] = "[Sistema] Você precisa de %d Resets",
            [2] = "[Sistema] Você precisa aguardar %d segundo(s)",
            [3] = "para utilizar o %s novamente.",
            [4] = "Compro",
            [5] = "Vendo",
        },

        ["Eng"] = {
            [1] = "[System] You need %d Resets",
            [2] = "[System] You have to wait %d second(s)",
            [3] = "to use %s again.",
            [4] = "Buy",
            [5] = "Sell",
        },

        ["Spn"] = {
            [1] = "[Sistema] Necesita %d Resets",
            [2] = "[Sistema] Tienes que esperar %d segundo(s)",
            [3] = "para usar %s nuevamente",
            [4] = "Compro",
            [5] = "Vendo",
        },
    },

}


return Post_Config
