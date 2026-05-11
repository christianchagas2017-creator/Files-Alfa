DropBox_Config = {
	Ativado = true,
	StaffDrop = true,
	GameMaster = 4,

	Nicks = {
		[1] = "ViperGaming",
		[2] = "ViperGaming",
	},

	Box = {
		[Utils.GetItem(14, 123)] = {Index = 01, Nome = "Golden Box",				Inventario = true, Ranking = 1, Monster = -1},
		[Utils.GetItem(14, 124)] = {Index = 02, Nome = "Silver Box",				Inventario = true, Ranking = -1, Monster = -1},
		[Utils.GetItem(14, 200)] = {Index = 03, Nome = "Jewel Reward",				Inventario = true, Ranking = -1, Monster = -1},
		[Utils.GetItem(14, 201)] = {Index = 04, Nome = "Mistyck Reward",			Inventario = true, Ranking = -1, Monster = -1},
		[Utils.GetItem(14, 202)] = {Index = 05, Nome = "Green Reward",		    	Inventario = true, Ranking = -1, Monster = -1},
	},

	Rankings = {
		[1] = {
			{Table = "Character", Column = "UpPoints", Where = "Name", IdType = 1},

		},
	},

	Monsters = {
		[021] = { --QUEST I - GOLDEN STONE GOLEM
			{Class = 24, Quantity = 1, Drop = 1},
		},
	},

	Itens = {
	[01] = { -- GOLDEN BOX
		[-1] = {
			{Nome = "Jewel Of Bless" 			,Grupo = 14, Id = 13, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Soul" 		,Grupo = 14, Id = 14, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Soul" 		,Grupo = 14, Id = 14, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Life" 		,Grupo = 14, Id = 16, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Life" 		,Grupo = 14, Id = 16, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Chaos" 			,Grupo = 12, Id = 15, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 15 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			
			{Nome = "Majestyck Helm" 			,Grupo = 7,  Id = 347,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Armor" 			,Grupo = 8,  Id = 347,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Pants" 			,Grupo = 9,  Id = 347,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Gloves" 			,Grupo = 10, Id = 347,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Boots" 			,Grupo = 11, Id = 347,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			
			
		    {Nome = "Majestyck Sword [RL]" 			,Grupo = 0,  Id = 324,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Scepter  [RL]" 		,Grupo = 0,  Id = 325,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Spear  [RL]" 		,Grupo = 0,  Id = 326,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Shield [RL]" 		,Grupo = 6, Id = 170,   Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Wing [RL]" 			,Grupo = 12, Id = 449,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Cape [RL]" 			,Grupo = 12, Id = 450,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			
			
			{Nome = "Majestyck Horse [RL]" 			,Grupo = 13, Id = 369,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Eagle [RL]" 			,Grupo = 13, Id = 370,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Dragon [RL]" 	    ,Grupo = 13, Id = 371,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Majestyck Pet [RL]" 			,Grupo = 13, Id = 375,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Ring Of Majestyck [RL]" 		,Grupo = 15, Id = 229,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Pendant Majestyck [RL]" 		,Grupo = 15, Id = 230,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Earring Majestyck [RL]" 		,Grupo = 15, Id = 231,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Earring Majestyck [RL]" 		,Grupo = 15, Id = 232,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
		},
	},
	
	[02] = { -- SILVER BOX
		[-1] = {
			{Nome = "Jewel Of Bless" 			,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Chaos" 			,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			
			{Nome = "Morpheus Black Sword" 			,Grupo = 0,  Id = 297,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Shield" 		,Grupo = 0,  Id = 298,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Sword" 			,Grupo = 0,  Id = 299,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Shield" 	    ,Grupo = 6,  Id = 161,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Wing" 			,Grupo = 12,  Id = 427,  Level =  15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Cape" 			,Grupo = 12,  Id = 428,  Level =  15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			
			{Nome = "Morpheus Black Eagle" 			,Grupo = 13,  Id = 359,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},

			{Nome = "Morpheus Black Ring " 			,Grupo = 15,  Id = 208,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Pendant " 		,Grupo = 15,  Id = 209,  Level =  15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = true , Fogos = true, Extras = -1},


			{Nome = "Morpheus Black Helm" 			,Grupo = 7,  Id = 332,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Armor" 			,Grupo = 8,  Id = 332,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Pants" 			,Grupo = 9,  Id = 332,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Gloves"         ,Grupo = 10, Id = 332,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Morpheus Black Boots" 			,Grupo = 11, Id = 332,  Level = 15 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},

		},
	},
	
	[03] = { -- JEWEL BOX
		[-1] = {
			{Nome = "Jewel Of Bless" 			,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3) Jewel Of Bless" 		,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Chaos" 			,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Chaos" 		,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Creation" 		,Grupo = 14, Id = 22, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(2)Jewel Of Creation" 		,Grupo = 14, Id = 22, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 2, Dias = -1, Porcentagem = 20.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "(3)Jewel Of Creation" 		,Grupo = 14, Id = 22, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 3, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},

			
			{Nome = "Venom Mist Helm" 			,Grupo = 7,  Id = 30,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Venom Mist Armor" 			,Grupo = 8,  Id = 30,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Venom Mist Pants" 			,Grupo = 9,  Id = 30,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Venom Mist Gloves" 		,Grupo = 10, Id = 30,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Venom Mist Boots" 			,Grupo = 11, Id = 30,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 5.00, AnunciarGlobal = false , Fogos = true, Extras = -1},			
		},
	},
	
	[04] = { -- JEWEL BOX
		[-1] = {
			{Nome = "Jewel Of Bless" 			,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Chaos" 			,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},

			
			{Nome = "Sylphid Ray Helm" 			,Grupo = 7,  Id = 31,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 3.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Sylphid Ray Armor" 		,Grupo = 8,  Id = 31,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 3.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Sylphid Ray Pants" 		,Grupo = 9,  Id = 31,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 3.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Sylphid Ray Gloves" 		,Grupo = 10, Id = 31,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 3.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Sylphid Ray Boots" 		,Grupo = 11, Id = 31,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 3.00, AnunciarGlobal = false , Fogos = true, Extras = -1},	

			{Nome = "Hurricane Armor" 		    ,Grupo = 8,  Id = 23,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Hurricane Pants" 		    ,Grupo = 9,  Id = 23,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Hurricane Gloves" 		    ,Grupo = 10, Id = 23,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Hurricane Boots" 		    ,Grupo = 11, Id = 23,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},			
		},
	},
	
	[05] = { -- JEWEL BOX
		[-1] = {
			{Nome = "Jewel Of Bless" 			,Grupo = 14, Id = 13, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Soul" 			,Grupo = 14, Id = 14, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Life" 			,Grupo = 14, Id = 16, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Chaos" 			,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 60.00, AnunciarGlobal = false , Fogos = false, Extras = -1},
			{Nome = "Jewel Of Creation" 		,Grupo = 12, Id = 15, Level = 0 , Dur = 1  , Skill = 0, Luck = 0, Opt = 0, Exc = 0 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 10.00, AnunciarGlobal = false , Fogos = false, Extras = -1},

			{Nome = "Brave Sword" 				,Grupo = 0,  Id = 27,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 1.70, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Brave Shield" 				,Grupo = 6,  Id = 44,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 1.70, AnunciarGlobal = false , Fogos = true, Extras = -1},
			
			{Nome = "Brave Helm" 				,Grupo = 7,  Id = 46,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Brave Armor" 				,Grupo = 8,  Id = 46,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Brave Pants" 				,Grupo = 9,  Id = 46,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Brave Gloves" 				,Grupo = 10, Id = 46,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},
			{Nome = "Brave Boots" 				,Grupo = 11, Id = 46,  Level = 0 , Dur = 255  , Skill = 1, Luck = 1, Opt = 0, Exc = 63 , Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1, Porcentagem = 2.00, AnunciarGlobal = false , Fogos = true, Extras = -1},					
		},
	},
},

	Moedas = {
		--// GOLDEN BOX
		[0100] = {
			[-1] = {
			{Nome = "VCoin", Value = 100, Table = "MEMB_INFO", Column = "VCoin", Where = "memb___id", IdType = 0, Porcentagem = 20, AnunciarGlobal = false , Fogos = false},
			},
		},
	},

	Extras = {
		--JOIAS GERAIS
		[02] = {
			{Grupo = 12, Id = 15, Level = 0, Dur = 5, Skill = 0, Luck = 0, Opt = 0, Exc = 0, Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1},
			{Grupo = 14, Id = 14, Level = 0, Dur = 5, Skill = 0, Luck = 0, Opt = 0, Exc = 0, Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1},
			{Grupo = 14, Id = 16, Level = 0, Dur = 5, Skill = 0, Luck = 0, Opt = 0, Exc = 0, Ancient = 0, Harmony = 0, Quantidade = 1, Dias = -1},
		},
	},

	Message = {
	    ["Eng"] = {
			[1] = "Your inventory needs to be empty",
			[2] = "You received %d %s",
			[3] = "You are currently busy",
			[4] = "You were pranked by %s",
			[5] = "%s was pranked",
			[6] = "%s received %d %s",
			[7] = "%s dropped:",
			[8] = "You cannot drop in a safe zone"
	    },
	    ["Por"] = {
	        [1] = "Seu inventário precisa estar vázio",
	        [2] = "Você recebeu %d %s",
			[3] = "Você está ocupado no momento",
			[4] = "Você foi foi trolado pela %s",
			[5] = "%s foi trolado",
			[6] = "%s recebeu %d %s",
			[7] = "%s dropou:",
			[8] = "Você não pode dropar em uma safezone"
	    },
	    ["Spn"] = {
			[1] = "Tu inventario debe estar vacío",
			[2] = "Recibiste %d %s",
			[3] = "En este momento estás ocupado",
			[4] = "Fuiste engañado por %s",
			[5] = "%s fue engañado",
			[6] = "%s recibió %d %s",
			[7] = "%s dejó caer:",
			[8] = "No puedes soltar en una zona segura"
	    },
	},

}

return DropBox_Config