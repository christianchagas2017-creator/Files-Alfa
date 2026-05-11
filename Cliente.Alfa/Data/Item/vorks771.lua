-----------------------------------------
	-- Script:		NPC Horas
	-- Criador:		Pedro Borges
	-- Skype:		live:ppborges93
	-- WhatsApp:	+55 51 99507-8287
-----------------------------------------

-- true ativa o sistema, false desativa
NPCHoras_Config = {
	Enabled = true,

	-- Id da janela
	WindowID = 54,

	-- Numero do packet usado pelo sistema (tem que ser o mesmo no servidor)
	Packet = 121,

	Images = {
		GB_Ponto = 590001,
	},

	Brindes = {
		{ListID = 1,   Valor = 1,       Grupo = 14,     Id = 414,  Nome = "Box Black",		               Level =  15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 2,   Valor = 250,     Grupo = 0,      Id = 240,  Nome = "Creature Mace",		           Level =  15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 3,   Valor = 250,     Grupo = 0,      Id = 241,  Nome = "Creature Sword",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 4,   Valor = 250,     Grupo = 6,      Id = 136,  Nome = "Creature Shield",		       Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 5,   Valor = 250,     Grupo = 7,      Id = 300,  Nome = "Creature Helm",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 6,   Valor = 250,     Grupo = 8,      Id = 300,  Nome = "Creature Armor",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 7,   Valor = 250,     Grupo = 9,      Id = 300,  Nome = "Creature Pants",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 8,   Valor = 250,     Grupo = 10,     Id = 300,  Nome = "Creature Gloves",		       Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 9,   Valor = 250,     Grupo = 11,     Id = 300,  Nome = "Creature Boots",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 10,  Valor = 350,     Grupo = 15,     Id = 104,  Nome = "Creature Ring",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 11,  Valor = 450,     Grupo = 15,     Id = 105,  Nome = "Creature Pendant",		       Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 12,  Valor = 550,     Grupo = 15,     Id = 110,  Nome = "Creature Earring  [L]",	       Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 13,  Valor = 550,     Grupo = 15,     Id = 111,  Nome = "Creature Earring  [R]",	       Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 14,  Valor = 550,     Grupo = 12,     Id = 379,  Nome = "Creature Wing",				   Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 15,  Valor = 600,     Grupo = 12,     Id = 380,  Nome = "Creature Cape",		           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 16,  Valor = 600,     Grupo = 15,     Id = 112,  Nome = "Creature Artifact",	           Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},
		{ListID = 17,  Valor = 700,     Grupo = 13,     Id = 304,  Nome = "Creature Mont",	               Level = 15, Dur = 255, Skill = 1, Luck = 1, Option = 7, Exc = 63, Pos = {X = 345, Y = 177, W = 20, H = 20}, ShowDescription = true},


		
		},

	-- textos usados no sistema
	Texts = {
		["Eng"] = {
			[1] = "Bônus por Horas",
			[2] = "Olá aventureiro!",
			[3] = "Aqui você poderá trocar o",
			[4] = "tempo que permaneceu online",
			[5] = "por brindes incríveis!",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Brinde",
			[9] = "Escolha um brinde",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Brinde retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
		},

		["Por"] = {
			[1] = "Bônus por Horas",
			[2] = "Olá aventureiro!",
			[3] = "Aqui você poderá trocar o",
			[4] = "tempo que permaneceu online",
			[5] = "por brindes incríveis!",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Brinde",
			[9] = "Escolha um brinde",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Brinde retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
		},

		["Spn"] = {
			[1] = "Bônus por Horas",
			[2] = "Olá aventureiro!",
			[3] = "Aqui você poderá trocar o",
			[4] = "tempo que permaneceu online",
			[5] = "por brindes incríveis!",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Brinde",
			[9] = "Escolha um brinde",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Brinde retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
		},
	},
}

return NPCHoras_Config