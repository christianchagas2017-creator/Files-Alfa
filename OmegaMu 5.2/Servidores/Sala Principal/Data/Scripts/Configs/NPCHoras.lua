NPCHoras_Config = {
	Enabled = true,

	Packet = 121,


	HourEarned = {[0] = 1, [1] = 1, [2] = 1, [3] = 1},

	PlayerPartTime = {Table = "MEMB_INFO", Column = "HorasTemp", Where = "memb___id", IdType = 0},

	PlayerTime = {Table = "MEMB_INFO", Column = "HorasOn", Where = "memb___id", IdType = 0},

	Itens = {
		[1] = {
			{ListID = 1  , Price = 2,  Index = Utils.GetItem(14,   124), 	Level = 0 , Skill = 0, Luck = 0, Durability = 0, JoL = 0, Exc = 0, Pos = {X = 345, Y = 120, W = 30, H = 30}},
			--{ListID = 1  , Price = 150,  Index = Utils.GetItem(7,   46), 	Level = 0 , Skill = 1, Luck = 1, Durability = 255, JoL = 0, Exc = 63, Pos = {X = 340, Y = 95, W = 30, H = 30}},

		},
	},

	Message = {
		["Por"] = {
			[1] = "[Sistema] Você acumulou %d hora(s) online!",
		},
		["Eng"] = {
			[1] = "[System] You accumulate %d hour(s) online!",
		},
		["Spn"] = {
			[1] = "[Sistema] ¡Has acumulado %d hora(s) en línea!",
		},
	}
}

return NPCHoras_Config