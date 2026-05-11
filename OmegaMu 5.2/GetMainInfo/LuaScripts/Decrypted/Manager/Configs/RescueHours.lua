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
	WindowID = 83,

	-- Numero do packet usado pelo sistema (tem que ser o mesmo no servidor)
	Packet = 121,

	Images = {
		GB_Ponto = 40001,
	},

	-- textos usados no sistema
	Texts = {
		["Eng"] = {
			[1] = "Itens por Horas",
			[2] = "Troque suas horas acumuladas por itens!",
			[3] = "-",
			[4] = "-",
			[5] = "-",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Item",
			[9] = "Escolha um Item",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Item retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
			[17] = "Confirmar",
			[18] = "Cancelar",				
		},

		["Por"] = {
			[1] = "Itens por Horas",
			[2] = "Troque suas horas acumuladas por itens!",
			[3] = "-",
			[4] = "-",
			[5] = "-",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Item",
			[9] = "Escolha um Item",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Item retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
			[17] = "Confirmar",	
			[18] = "Cancelar",				
		},

		["Spn"] = {
			[1] = "Itens por Horas",
			[2] = "Troque suas horas acumuladas por itens!",
			[3] = "-",
			[4] = "-",
			[5] = "-",
			[6] = "Você possuí um total de %d Horas online",
			[7] = "Você possuí um total de %d Hora online",
			[8] = "Resgatar Item",
			[9] = "Escolha um Item",
			[10] = "Preço: %d Horas",
			[11] = "Serão descontados %d Horas da sua conta",
			[12] = "Clique OK para confirmar",
			[13] = "Item retirado com sucesso!",
			[14] = "Erro! Tente novamente ou contate o administrador",
			[15] = "Não há espaço no seu inventário!",
			[16] = "Não há saldo suficiente!",
			[17] = "Confirmar",			
			[18] = "Cancelar",			
		},
	},
}

return NPCHoras_Config