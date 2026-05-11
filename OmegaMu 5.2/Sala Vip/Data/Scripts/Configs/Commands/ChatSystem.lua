ChatSystem_Config = {
	BreakLines = {
		Enabled = false,
		CaracterLines = 24,
	},

	Command = {
		--CHAT GLOBAL ALL
		[1] = '#',  --PRIMEIRA LETRA ANTES DO GLOBAL ALL
		[2] = '!',  --SEM NICK
		[3] = '$',  --NICK DO LADO

		--CHAT GLOBAL
		[4] = '$',  --NICK EMCIMA
		[5] = '!',  --SEM NICK
		[6] = '%',  --NICK DO LADO
	},

	Message = {
		[1] = '[%s] %s',
		[2] = '[%s]',
		[3] = '%s',
	},

	NickChange = {
		Enabled  = true,
		Command  = "/",

		Nicks = {
       		["VITAS"] 	  = "o vitin resolve",
       		["ADM-NEGAN"] = "o vitin resolve",
       		["vitinhosl"] = "o vitin resolve",
       		["ADMIN"]     = "o vitin resolve",
			["LuaSubADM"] = "The Moon",
		},
    },

    Nicks = {
        [1] = "VITAS",
        [2] = "EuSouRica",
        [3] = "VOIDMU",    --ACC STREAMER
        [4] = "STREAMERS", --ACC STREAMER
		[5] = "ADMIN"
    },

}

return ChatSystem_Config