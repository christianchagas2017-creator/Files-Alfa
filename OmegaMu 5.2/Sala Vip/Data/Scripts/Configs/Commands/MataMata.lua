MataMata_Config = {
    Enabled = true,

    -- Version = 2 (season 2)
    -- Version = 6 (season 6)
    Version = 6,

    Command = {
        ["Eng"] = {
            Open = "/abrirmtmt",
            Go = "/matamata",
            Cancel = "/cancelarmtmt"
        },
        ["Por"] = {
            Open = "/abrirmtmt", -- /comando tempo type, se nao digitar type será um mata-mata normal
            Go = "/matamata",
            Cancel = "/cancelarmtmt"
        },
        ["Spn"] = {
            Open = "/abrirmtmt",
            Go = "/matamata",
            Cancel = "/cancelarmtmt"
        },
    },

    Cron = {
		--Mata Mata /bonus de 1 em 1 hora 10a.m as 02.am
		--[[
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 00,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 01,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 02,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 10,  Minute = 00,  Type = 1, AnnounceName = 38},
        {DayOfMonth = -1, DayOfWeek = -1, Hour = 11,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 12,  Minute = 00,  Type = 1, AnnounceName = 38},
        {DayOfMonth = -1, DayOfWeek = -1, Hour = 13, Minute = 00, Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 14, Minute = 00, Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 15,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 16,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 17,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 18,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 19,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 20,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 21,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 22,  Minute = 00,  Type = 1, AnnounceName = 38},
		{DayOfMonth = -1, DayOfWeek = -1, Hour = 23,  Minute = 00,  Type = 1, AnnounceName = 38},
		]]--
		
    },

    TimeAnnounce = 1, -- tempo em minutos que avisa que vai haver o evento

    TimeOpen = 30, -- tempo em segundo que o comando entrar fica aberto

    Area = { -- Somente dois mapas
        [1] = {
            Total = {Map  = 6, X1 = 185, X2 = 247, Y1 = 144, Y2 = 246},
            Wait = {Map  = 6, X1 = 185, X2 = 247, Y1 = 144, Y2 = 246},
            PvP = {Map  = 6, X1 = 198, X2 = 234, Y1 = 165, Y2 = 224},
            Spot = {
                [1] = {Map  = 6, X = 216, Y = 195},
                [2] = {Map  = 6, X = 217, Y = 195},
            },
            Watch = {Map  = 6, X = 216, Y = 192},
            Respawn = {Map  = 6, X = 195, Y = 195},
        },

        [2] = {
            Total = {Map  = 6, X1 = 185, X2 = 247, Y1 = 144, Y2 = 246},
            Wait = {Map  = 6, X1 = 185, X2 = 247, Y1 = 144, Y2 = 246},
            PvP = {Map  = 6, X1 = 198, X2 = 234, Y1 = 165, Y2 = 224},
            Spot = {
                [1] = {Map  = 6, X = 216, Y = 195},
                [2] = {Map  = 6, X = 217, Y = 195},
            },
            Watch = {Map  = 6, X = 216, Y = 192},
            Respawn = {Map  = 6, X = 242, Y = 195},
        }
    },

    Rounds = { -- a quantidade de rounds deve ser sempre IMPAR (1, 3, 5, etc) 
        Normal = 1, -- quantidades de rounds a ser disputados em lutas normais
        Semi = 1, -- quantidade de rounds a ser disputados na semi-final
        Final = 3 -- quantidade de rounds a ser disputados na final
    },
	
	RoundDelay = 10, -- segundos que demora entre uma luta e outra

    LogoutExitEvent = true, -- true = ? removido do evento se relogar, false pode voltar ao evento se ainda estiver na mesma fase

    RemoveBuffBeforeFight = true, -- true remove todos so buffs do char antes de lutar, false nao remove

    Prize = {
        [1] = {
            {Name = "JcPoints", Amount = 300, Table = "MEMB_INFO", Column = "JcPoints", Where = "memb___id", IdType = 0, Announce = true},
            {Name = "MataMata", Amount = 3, Table = "Character", Column = "matamata", Where = "Name", IdType = 1, Announce = false},		
        },
        [2] = {
            {Name = "JcPoints", Amount = 200, Table = "MEMB_INFO", Column = "JcPoints", Where = "memb___id", IdType = 0, Announce = true},
			{Name = "MataMata", Amount = 2, Table = "Character", Column = "matamata", Where = "Name", IdType = 1, Announce = false},
        },
        [3] = {
            {Name = "JcPoints", Amount = 100, Table = "MEMB_INFO", Column = "JcPoints", Where = "memb___id", IdType = 0, Announce = true},
			{Name = "MataMata", Amount = 1, Table = "Character", Column = "matamata", Where = "Name", IdType = 1, Announce = false},
        }  	
    },
	
	PrizeItem = {
		[1] = {
            { ItemIndex = GET_ITEM(14, 222), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 0, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Luck Events Reward', Count = 1},		
        },
	},

    CounterItem = { -- Remove = mortes removidas quando perde, Add = mortes adicionadas quando ganha, so funciona para itens no slot 0
        [324] = {Remove = 0, Add = 1},
        [325] = {Remove = 0, Add = 1},
        [326] = {Remove = 0, Add = 1},
        [163] = {Remove = 0, Add = 1},
        [164] = {Remove = 0, Add = 1},
        [165] = {Remove = 0, Add = 1},
        [224] = {Remove = 0, Add = 1},
        [225] = {Remove = 0, Add = 1},
        [226] = {Remove = 0, Add = 1},
        [227] = {Remove = 0, Add = 1},
        [278] = {Remove = 0, Add = 1},
        [279] = {Remove = 0, Add = 1},
		
        [293] = {Remove = 0, Add = 1},
        [294] = {Remove = 0, Add = 1},
        [295] = {Remove = 0, Add = 1},
        [296] = {Remove = 0, Add = 1},

    },

    Types = {
        [1] = {Name = 38, AllowedItem = 1, AllowedClass = 1, Invite = -1},
        [2] = {Name = 39, AllowedItem = -1, AllowedClass = -1, Invite = 1},
        [3] = {Name = 40, AllowedItem = 2, AllowedClass = 2, Invite = -1}, -- Evento Intermediário
        -- NOVO: Evento Rankeado
        [4] = {Name = 41, AllowedItem = -1, AllowedClass = -1, Invite = -1, IsRanked = true}, -- Evento Rankeado
    },

    Invite = {
        [1] = {Amount = 1, Section = 14, Index = 32, Level = -1},
    },

    AllowedClasses = {
        [1] = {
            [0] = false, -- SM
            [1] = true,  -- BK
            [2] = false, -- ELF
            [3] = false, -- MG
            [4] = false, -- DL
            [5] = false, -- SUM
            [6] = false, -- RF
        },
        [2] = {
            [0] = false, -- SM
            [1] = true,  -- BK
            [2] = true,  -- ELF
            [3] = true,  -- MG
            [4] = false, -- DL
            [5] = false, -- SUM
            [6] = false, -- RF
        }
    },

    AllowedItens = {
        [1] = { -- Evento Iniciante (BK's)
			--ALL Abaddon
			--Armas
            {Section = 0, Index = 81},
            {Section = 0, Index = 82},
			--Shield
			{Section = 6, Index = 65},
			--Set
			{Section = 7, Index = 218},
			{Section = 8, Index = 218},
			{Section = 9, Index = 218},
			{Section = 10, Index = 218},
			{Section = 11, Index = 218},
			--Asas
			{Section = 12, Index = 232},
			{Section = 12, Index = 233},
			--Pets
			{Section = 13, Index = 219},
			{Section = 13, Index = 220},
			{Section = 13, Index = 224},
			--Acessorios
			{Section = 15, Index = 424},
			{Section = 15, Index = 425},
			{Section = 15, Index = 430},
			{Section = 15, Index = 431},
		
			--ALL Cherub
			--Armas
            {Section = 0, Index = 149},
            {Section = 0, Index = 150},
            {Section = 0, Index = 151},
			--Shield
			{Section = 6, Index = 95},
			--Set
			{Section = 7, Index = 252},
			{Section = 8, Index = 252},
			{Section = 9, Index = 252},
			{Section = 10, Index = 252},
			{Section = 11, Index = 252},
			--Asas
			{Section = 12, Index = 297},
			{Section = 12, Index = 298},
			--Pets
			{Section = 13, Index = 253},
			--Acessorios
			{Section = 15, Index = 480},
			{Section = 15, Index = 481},
			{Section = 15, Index = 482},
			{Section = 15, Index = 483},
			{Section = 15, Index = 488},
			
			--Artefato Anubis
			{Section = 15, Index = 447},
        },
        [2] = { -- Evento Intermediário (BK, ELF, MG)
            -- Espadas de BK
            {Section = 7, Index = 221},
            {Section = 8, Index = 221},
            {Section = 9, Index = 221},
            {Section = 10, Index = 221},
            {Section = 11, Index = 221},
            
            -- Arcos de ELF
            {Section = 4, Index = 221},
            {Section = 5, Index = 221},
            
            -- Cajados de MG
            {Section = 2, Index = 221},
            {Section = 3, Index = 221},
            
            -- Aneis
            {Section = 0, Index = 87},
            {Section = 0, Index = 88},
            
            -- Asas
            {Section = 12, Index = 238},
            {Section = 12, Index = 239},
            
            -- Escudos
            {Section = 6, Index = 68},
            
            -- Armaduras
            {Section = 13, Index = 209},
            {Section = 13, Index = 227},
            
            -- Luvas
            {Section = 15, Index = 434},
            {Section = 15, Index = 435},
        },
    },

    -- NOVA: Configurações para o sistema de ranking PDL
    PDLBaseValue = 20, -- Quantidade de PDL para uma luta perfeitamente equilibrada
    PDLModifier = {
        Bonus = 1.5, -- Multiplicador quando o jogador com menor pdl vence
        Reduced = 0.7  -- Multiplicador quando o jogador com maior pdl vence
    },

    -- NOVA: Prêmios PDL para o evento rankeado
    RankedPrize = {
        [1] = { -- 1º Lugar
            {Name = "PDL", Amount = 10, Table = "Character", Column = "RankedPVP", Where = "Name", IdType = 1, Announce = true},
        },
        [2] = { -- 2º Lugar
            {Name = "PDL", Amount = 5, Table = "Character", Column = "RankedPVP", Where = "Name", IdType = 1, Announce = true},
        },
        [3] = { -- 3º Lugar
            {Name = "PDL", Amount = 3, Table = "Character", Column = "RankedPVP", Where = "Name", IdType = 1, Announce = true},
        }
    },

    -- NOVA: Configuração para ativar o modo rankeado
    RankedMode = {
        Enabled = true, -- true = modo rankeado ativo, false = modo normal
        UpdateStats = true, -- true = atualiza WinsPVP/LosePVP, false = não atualiza
        UpdatePDL = true, -- true = atualiza RankedPVP, false = não atualiza
    },

    Message = {
        ["Eng"] = {
            [1] = "There is already an open Deathmatch, use %s to cancel",
			[2] = "Minimum time 5 seconds, use %s <time>",
			[3] = " Deathmatch Event has been opened",
			[4] = ">>>>>>   Deathmatch Event   <<<<<<",
			[5] = "%s closes in %d seconds",
			[6] = "%s closes in %d second",
			[7] = "There is no open Deathmatch, use %s to open",
			[8] = "Deathmatch Event has been canceled",
			[9] = "There is no Deathmatch event open at the moment",
			[10] = "You have been moved to the event",
			[11] = "==================================",
			[12] = "%s",
			[13] = "X",
			[14] = "Final Stage Started",
			[15] = "%s advanced to the next stage due to lack of opponent",
			[16] = "%d° Stage Started",
			[17] = "Deathmatch canceled",
			[18] = "ATTENTION!",
			[19] = "YAAH!",
			[20] = "%d",
			[21] = "%s Win",
			[22] = "WINNERS:",
			[23] = "%d° - %s",
			[24] = "Semi-Final Stage Started",
			[25] = "Final 3 Stage Started",
			[26] = "%s[%s] Win",
			[27] = "Event type does not exist",
			[28] = " Your class is not allowed in this event",
			[29] = " %s excluded for using prohibited items!",
			[30] = " You need to have the invitation in your inventory to participate",
			[31] = "%s %d X %d %s",
			[32] = "=========== Best of %d ===========",
			[33] = " Congratulations, you finished in %d° place",
			[34] = " You received %d %s",
			[35] = " Deathmatch Event has ended",
			[36] = " You have been removed from the event",
			[37] = " Deathmatch starts in %d minute(s)",
			[38] = ">>>>>>   Deathmatch Event /bonus (BK's)   <<<<<<",
			[39] = ">>>>>>   Private Deathmatch Event   <<<<<<",
			[40] = "Private Deathmatch starts in %d minute(s)",
            -- NOVAS: Mensagens para evento rankeado
            [41] = ">>>>>>   Ranked Deathmatch Event   <<<<<<",
            [42] = "Ranked Deathmatch starts in %d minute(s)",
            [43] = "Ranked PvP: %s (+%d PDL) defeated %s (-%d PDL)!",
            [44] = "Ranked PvP: %s (+%d PDL) defeated %s (-%d PDL)!",
            [45] = "Ranked PvP: %s (+%d PDL) defeated %s (-%d PDL)!",
            [46] = "Ranked PvP: %s (+%d PDL) defeated %s (-%d PDL)!"

        },

        ["Por"] = {
            [1] = "Jão existe um Mata-Mata aberto, use %s para cancelar",
            [2] = "Tempo mínimo 5 segundos, use %s <tempo>",
            [3] = " Evento Mata-Mata foi aberto",
            [4] = ">>>>>>   Evento Mata-Mata   <<<<<<",
            [5] = "%s fecha em %d segundos",
            [6] = "%s fecha em %d segundo",
            [7] = "Não existe um Mata-Mata aberto, use %s para abrir",
            [8] = "Evento Mata-Mata foi cancelado",
            [9] = "Não há evento Mata-mata aberto no momento",
            [10] = "Você foi movido ao evento",
            [11] = "==================================",
            [12] = "%s",
            [13] = "X",
            [14] = "Fase Final Iniciada",
            [15] = "%s passou de fase por falta de oponente",
            [16] = "%d° Fase Iniciada",
            [17] = "Mata-Mata cancelado",
            [18] = "ATENÇÃO!",
            [19] = "JAAH!",
            [20] = "%d",
            [21] = "%s Win",
            [22] = "VENCEDORES:",
            [23] = "%d° - %s",
            [24] = "Fase Semi Final Iniciada",
            [25] = "Fase Final de 3 Iniciada",
            [26] = "%s[%s] Win",
            [27] = "Tipo de evento não existe",
            [28] = " Sua classe não é permitida nesse evento",
            [29] = " %s eliminado por usar itens proibidos!",
            [30] = " Você precisa ter o convite no seu inventário para participar",
            [31] = "%s %d X %d %s",
            [32] = "=========== Melhor de %d ===========",
            [33] = " Parabêns, você foi o %d° colocado",
            [34] = " Você recebeu %d %s",
            [35] = " Evento Mata-Mata finalizado",
            [36] = " Você foi removido do evento",
            [37] = " Mata-Mata inicia em %d minuto(s)",
            [38] = ">>>>>>   Evento Mata-Mata /bonus (BK's)   <<<<<<",
            [39] = ">>>>>>   Evento Mata-Mata Privado   <<<<<<",
            [40] = "Mata-Mata Privado inicia em %d minuto(s)",
            -- NOVAS: Mensagens para evento rankeado
            [41] = ">>>>>>   Evento Mata-Mata Rankeado   <<<<<<",
            [42] = "Mata-Mata Rankeado inicia em %d minuto(s)",
            [43] = "PvP Rankeado: %s (+%d PDL) venceu %s (-%d PDL)!",
            [44] = "PvP Rankeado: %s (+%d PDL) venceu %s (-%d PDL)!",
            [45] = "PvP Rankeado: %s (+%d PDL) venceu %s (-%d PDL)!",
            [46] = "PvP Rankeado: %s (+%d PDL) venceu %s (-%d PDL)!"
        },

        ["Spn"] = {
            [1] = "Ya existe un Mata-Mata abierto, usa %s para cancelar",
			[2] = "Tiempo mínimo 5 segundos, usa %s <tiempo>",
			[3] = " Evento Mata-Mata ha sido abierto",
			[4] = ">>>>>>   Evento Mata-Mata   <<<<<<",
			[5] = "%s cierra en %d segundos",
			[6] = "%s cierra en %d segundo",
			[7] = "No existe un Mata-Mata abierto, usa %s para abrir",
			[8] = "Evento Mata-Mata ha sido cancelado",
			[9] = "No hay evento Mata-Mata abierto en este momento",
			[10] = "Has sido movido al evento",
			[11] = "==================================",
			[12] = "%s",
			[13] = "X",
			[14] = "Fase Final Iniciada",
			[15] = "%s avanzó de fase por falta de oponente",
			[16] = "%d° Fase Iniciada",
			[17] = "Mata-Mata cancelado",
			[18] = "ATENCIÓN!",
			[19] = "?YAAH!",
			[20] = "%d",
			[21] = "%s Ganó",
			[22] = "GANADORES:",
			[23] = "%d° - %s",
			[24] = "Fase Semifinal Iniciada",
			[25] = "Fase Final de 3 Iniciada",
			[26] = "%s[%s] Ganó",
			[27] = "Tipo de evento no existe",
			[28] = " Tu clase no está permitida en este evento",
			[29] = " ?%s Excluido por utilizar artículos prohibidos!",
			[30] = " Necesitas tener la invitación en tu inventario para participar",
			[31] = "%s %d X %d %s",
			[32] = "=========== Mejor de %d ===========",
			[33] = " Felicidades, quedaste en la posición %d°",
			[34] = " Recibiste %d %s",
			[35] = " Evento Mata-Mata finalizado",
			[36] = " Has sido removido del evento",
			[37] = " Mata-Mata inicia en %d minuto(s)",
			[38] = ">>>>>>   Evento Mata-Mata /bonus (BK's)   <<<<<<",
			[39] = ">>>>>>   Evento Mata-Mata Privado   <<<<<<",
			[40] = "Mata-Mata Privado inicia en %d minuto(s)",
            -- NOVAS: Mensagens para evento rankeado
            [41] = ">>>>>>   Evento Mata-Mata Rankeado   <<<<<<",
            [42] = "Mata-Mata Rankeado inicia en %d minuto(s)",
            [43] = "PvP Rankeado: %s (+%d PDL) venció a %s (-%d PDL)!",
            [44] = "PvP Rankeado: %s (+%d PDL) venció a %s (-%d PDL)!",
            [45] = "PvP Rankeado: %s (+%d PDL) venció a %s (-%d PDL)!",
            [46] = "PvP Rankeado: %s (+%d PDL) venció a %s (-%d PDL)!"

        },
    }
}

return MataMata_Config