AddBrinde_Config = {
	Enabled = true,
	Log     = true,

	Command = {
		[1] = "/addbrinde",
		[2] = "/brinde",
	},

	CommandBox = "/addbrindebox",

	Permition = {
		["Admin"]	= 5,
	},

	Message = {
		["Por"] = {
			[1] = "[Sistema] O pacote informado é inválido",
			[2] = "[Sistema] %s não existe",
			[3] = "[Sistema] Você não tem permissão para adicionar esse pacote",
			[4] = "[Sistema] O nick informado é inválido",
			[5] = "[Sistema] Não foi possível localizar o personagem %s",
			[6] = "[Sistema] Erro no sistema, contate o administrador",
			[7] = "[Sistema] %s foi adicionado para %s",
			[8] = "[Sistema] %s adicionou %s para %s",
			[9] = "[Sistema] %d %s foi adicionado para %s",

		},
		["Eng"] = {
			[1] = "[System] The provided package is invalid",
			[2] = "[System] %s does not exist",
			[3] = "[System] You do not have permission to add this package",
			[4] = "[System] The provided nickname is invalid",
			[5] = "[System] Unable to locate the character %s",
			[6] = "[System] System error, contact the administrator",
			[7] = "[System] %s has been added for %s",
			[8] = "[System] %s added %s for %s",
			[9] = "[System] %d %s has been added for %s",

		},
		["Spn"] = {
			[1] = "[Sistema] El paquete proporcionado no es válido",
			[2] = "[Sistema] %s no existe",
			[3] = "[Sistema] No tienes permiso para agregar este paquete",
			[4] = "[Sistema] El apodo proporcionado no es válido",
			[5] = "[Sistema] No se pudo localizar al personaje %s",
			[6] = "[Sistema] Error en el sistema, contacta al administrador",
			[7] = "[Sistema] Se ha agregado %s para %s",
			[8] = "[Sistema] %s agregó %s para %s",
			[9] = "[Sistema] Se ha agregado %d %s para %s",
			
		},
	},

	Box = {
		--["box_chronus"] 			= {Brinde = "Chronus Box - Gold",        	Nome = "Chronus Box - Gold",        					NivelPermissao = 5, Enabled = true , Amount = 01, Section =  15, Id = 215,  Level = 0, Durabilidade = 0, Skill = 0, Luck = 0, Opt = 0, Excelente = 0, Dias = 0},
	},

	Promotions = {
		["all_bk"] 				= {Brinde = "Bonus Blade Knight",        		 Nome = "Bonus Temporario Blade Knight"  	 			,IdPremio = 1, NivelPermissao = 4, TemValidade = 1, Dias = 30},
		["all_sm"] 				= {Brinde = "Bonus Soul Master",     			 Nome = "Bonus Temporario Soul Master"	 				,IdPremio = 2, NivelPermissao = 3, TemValidade = 1, Dias = 30},
		["all_elf"] 			= {Brinde = "Bonus Mouse Elf",     				 Nome = "Bonus Temporario Mouse Elf"	 				,IdPremio = 3, NivelPermissao = 3, TemValidade = 1, Dias = 30},
		["all_mg"] 				= {Brinde = "Bonus Magic Gladiator",       		 Nome = "Bonus Temporario Magic Gladiator"  	 		,IdPremio = 4, NivelPermissao = 3, TemValidade = 1, Dias = 30},
	},

	Reward = {
		[1] = { -- BONUS BLADE KNIGHT
			{Nome = "Wings Of Satan",     	    	Enabled = true , Amount = 01, Section =  12,   Id =  2,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Slayer Shield",     	Enabled = true , Amount = 01, Section =  6,    Id =  5,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Kriss",     					Enabled = true , Amount = 01, Section =  0,    Id =  0,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Helm",     				Enabled = true , Amount = 01, Section =  7,    Id =  1,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Armor",     			Enabled = true , Amount = 01, Section =  8,    Id =  1,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Pants",     			Enabled = true , Amount = 01, Section =  9,    Id =  1,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Gloves",     			Enabled = true , Amount = 01, Section =  10,   Id =  1,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Dragon Boots",     			Enabled = true , Amount = 01, Section =  11,   Id =  1,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},

		},
		[2] = { -- BONUS SOUL MASTER
			{Nome = "Wings Of Heaven",     	    	Enabled = true , Amount = 01, Section =  12,   Id =  1,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Shield",     		Enabled = true , Amount = 01, Section =  6,    Id =  14,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Staff",     			Enabled = true , Amount = 01, Section =  5,    Id =  5,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Helm",     			Enabled = true , Amount = 01, Section =  7,    Id =  3,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Armor",     			Enabled = true , Amount = 01, Section =  8,    Id =  3,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Pants",     			Enabled = true , Amount = 01, Section =  9,    Id =  3,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Gloves",     		Enabled = true , Amount = 01, Section =  10,   Id =  3,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Boots",     			Enabled = true , Amount = 01, Section =  11,   Id =  3,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},

		},
		[3] = { -- BONUS MOUSE ELF
			{Nome = "Wings Of Elf",     	    	Enabled = true , Amount = 01, Section =  12,   Id =  0,    Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Elven Shield",     		    Enabled = true , Amount = 01, Section =  6,    Id =  3,    Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Crossbow",     				Enabled = true , Amount = 01, Section =  4,    Id =  8,    Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Vine Helm",     				Enabled = true , Amount = 01, Section =  7,    Id =  10,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Vine Armor",     				Enabled = true , Amount = 01, Section =  8,    Id =  10,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Vine Pants",     				Enabled = true , Amount = 01, Section =  9,    Id =  10,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Vine Gloves",     				Enabled = true , Amount = 01, Section =  10,   Id =  10,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Vine Boots",     				Enabled = true , Amount = 01, Section =  11,   Id =  10,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},

		},
		[4] = { -- BONUS MAGIC GLADIATOR
			{Nome = "Wings Of Satan",     	    	Enabled = true , Amount = 01, Section =  12,   Id =  2,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Staff",     			Enabled = true , Amount = 01, Section =  5,    Id =  9,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Legendary Staff",     			Enabled = true , Amount = 01, Section =  5,    Id =  9,   Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Storm Crow Helm",     			Enabled = true , Amount = 01, Section =  7,    Id =  15,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Storm Crow Armor",     		Enabled = true , Amount = 01, Section =  8,    Id =  15,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Storm Crow Pants",     		Enabled = true , Amount = 01, Section =  9,    Id =  15,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Storm Crow Gloves",     		Enabled = true , Amount = 01, Section =  10,   Id =  15,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},
			{Nome = "Storm Crow Boots",     		Enabled = true , Amount = 01, Section =  11,   Id =  15,  Level = 7, Durabilidade = 255, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Dias = 3},


		},

	},
}

return AddBrinde_Config