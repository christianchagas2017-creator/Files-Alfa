    Quest_Config = {
    Enabled = true,

    Packet = 48,

    NPC = 544,

    MaxQuest = 63,

    Requirements = {

		--#region LORENCIA
        [1] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 01",
				["Eng"] = "Quest 01",
				["Spn"] = "Quest 01",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
				{Column = "Monster1", Class = 295,  Name = "Erohim", 	   Quantity = 5},
				{Column = "Monster2", Class = 309,  Name = "Hell Maine",   Quantity = 5},
			},
			Itens = {
				{Name = "Jewel Of Creation", Section = 14, Index = 22, Quantity = 10, Level = 0},
			},
			
			Coins = {
				{Name = "Reset", 	  	      Quantity = 30,     Table = "Character", Column = "ResetCount",   		Where = "Name",      IdType = 1},					
				--{Name = "Statue Of Saint", 	  Quantity = 15,     Table = "MEMB_INFO", Column = "vcoin",   		Where = "memb___id",      IdType = 1},					


			},
        },

        [2] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 02",
				["Eng"] = "Quest 02",
				["Spn"] = "Quest 02",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
				{Column = "Monster1", Class = 275,  Name = "Kundum", 	   Quantity = 5},
				{Column = "Monster2", Class = 79,  Name = "Golden Derkon",   Quantity = 40},
			},
			Itens = {
			
				{Name = "Jewel Of Creation", Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",     Section = 14, Index = 16, Quantity = 10, Level = 0},

			},
			Coins = {
				{Name = "Reset", 	  		  Quantity = 45,     Table = "Character", Column = "ResetCount",   			    Where = "Name",      IdType = 1},					
				{Name = "Master Reset", 	  Quantity = 5,      Table = "Character", Column = "MasterResetCount",   		Where = "Name",      IdType = 1},					


			},
        },

        [3] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1", Class = 295,  Name = "Erohim", 	      Quantity = 5},
				{Column = "Monster2", Class = 309,  Name = "Hell Maine",      Quantity = 5},			
				{Column = "Monster3", Class = 275,  Name = "Kundum", 	      Quantity = 5},
				{Column = "Monster4", Class = 79,   Name = "Golden Derkon",   Quantity = 40},
				{Column = "Monster5", Class = 78,   Name = "Golden Globin",   Quantity = 40},
			},
			Itens = {	
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {				
			    {Name = "Resets",   Quantity = 60,  Table = "Character", Column = "ResetCount",    	      Where = "Name",      IdType = 1},
				{Name = "MResets",  Quantity = 10,  Table = "Character", Column = "MasterResetCount",     Where = "Name",      IdType = 1},

			},
        },

        [4] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1", Class = 295,   Name = "Erohim", 	      	   Quantity = 5},
				{Column = "Monster2", Class = 309,   Name = "Hell Maine",      	   Quantity = 5},			
				{Column = "Monster3", Class = 275,   Name = "Kundum", 	      	   Quantity = 5},
				{Column = "Monster4", Class = 79,    Name = "Golden Derkon",   	   Quantity = 70},
				{Column = "Monster5", Class = 78,    Name = "Golden Globin",   	   Quantity = 70},
				{Column = "Monster6", Class = 80,    Name = "Golden Lizard King",  Quantity = 70},
				{Column = "Monster7", Class = 131,   Name = "Castle Gate",         Quantity = 5},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 70,  Table = "Character", Column = "ResetCount",    	      Where = "Name",      IdType = 1},
				{Name = "MResets",  Quantity = 15,  Table = "Character", Column = "MasterResetCount",     Where = "Name",      IdType = 1},

			},
        },

        [5] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1", Class = 295,   Name = "Erohim", 	      	   Quantity = 5},
				{Column = "Monster2", Class = 309,   Name = "Hell Maine",      	   Quantity = 5},			
				{Column = "Monster3", Class = 275,   Name = "Kundum", 	      	   Quantity = 5},
				{Column = "Monster4", Class = 79,    Name = "Golden Derkon",   	   Quantity = 95},
				{Column = "Monster5", Class = 78,    Name = "Golden Globin",   	   Quantity = 95},
				{Column = "Monster6", Class = 80,    Name = "Golden Lizard King",  Quantity = 95},
				{Column = "Monster7", Class = 131,   Name = "Castle Gate",         Quantity = 5},
				{Column = "Monster8", Class = 53,    Name = "Golden Titan",        Quantity = 95},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 100,  Table = "Character", Column = "ResetCount",    	      Where = "Name",      IdType = 1},
				{Name = "MResets",  Quantity = 20,   Table = "Character", Column = "MasterResetCount",        Where = "Name",      IdType = 1},

			},
        },

        [6] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1", Class = 295,   Name = "Erohim", 	      	    Quantity = 5},
				{Column = "Monster2", Class = 309,   Name = "Hell Maine",      	    Quantity = 5},			
				{Column = "Monster3", Class = 275,   Name = "Kundum", 	      	    Quantity = 5},
				{Column = "Monster4", Class = 79,    Name = "Golden Derkon",   	    Quantity = 120},
				{Column = "Monster5", Class = 78,    Name = "Golden Globin",   	    Quantity = 120},
				{Column = "Monster6", Class = 80,    Name = "Golden Lizard King",   Quantity = 120},
				{Column = "Monster7", Class = 131,   Name = "Castle Gate",          Quantity = 7},
				{Column = "Monster8", Class = 53,    Name = "Golden Titan",         Quantity = 120},
				{Column = "Monster9", Class = 494,    Name = "Golden Devil",        Quantity = 120},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 200,  Table = "Character", Column = "ResetCount",    	      Where = "Name",      IdType = 1},
				{Name = "MResets",  Quantity = 45,   Table = "Character", Column = "MasterResetCount",        Where = "Name",      IdType = 1},

			},
        },
		--#endregion

		--#region DUNGEON
        [7] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1",  Class = 295,     Name = "Erohim", 	      	     Quantity = 5},
				{Column = "Monster2",  Class = 309,     Name = "Hell Maine",      	     Quantity = 5},			
				{Column = "Monster3",  Class = 275,     Name = "Kundum", 	      	     Quantity = 5},
				{Column = "Monster4",  Class = 79,      Name = "Golden Derkon",   	     Quantity = 150},
				{Column = "Monster5",  Class = 78,      Name = "Golden Globin",   	     Quantity = 150},
				{Column = "Monster6",  Class = 80,      Name = "Golden Lizard King",     Quantity = 150},
				{Column = "Monster7",  Class = 131,     Name = "Castle Gate",            Quantity = 12},
				{Column = "Monster8",  Class = 53,      Name = "Golden Titan",           Quantity = 150},
				{Column = "Monster9",  Class = 494,     Name = "Golden Devil",           Quantity = 150},
				{Column = "Monster10", Class = 496,     Name = "Golden Crust",           Quantity = 150},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 210,  Table = "Character", Column = "ResetCount",    	      Where = "Name",      IdType = 1},
				{Name = "MResets",  Quantity = 50,   Table = "Character", Column = "MasterResetCount",        Where = "Name",      IdType = 1},

			},
        },

        [8] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1",  Class = 295,     Name = "Erohim", 	      	     Quantity = 5},
				{Column = "Monster2",  Class = 309,     Name = "Hell Maine",      	     Quantity = 5},			
				{Column = "Monster3",  Class = 275,     Name = "Kundum", 	      	     Quantity = 5},
				{Column = "Monster4",  Class = 79,      Name = "Golden Derkon",   	     Quantity = 170},
				{Column = "Monster5",  Class = 78,      Name = "Golden Globin",   	     Quantity = 170},
				{Column = "Monster6",  Class = 80,      Name = "Golden Lizard King",     Quantity = 170},
				{Column = "Monster7",  Class = 131,     Name = "Castle Gate",            Quantity = 12},
				{Column = "Monster8",  Class = 53,      Name = "Golden Titan",           Quantity = 170},
				{Column = "Monster9",  Class = 494,     Name = "Golden Devil",           Quantity = 170},
				{Column = "Monster10", Class = 496,     Name = "Golden Crust",           Quantity = 170},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 230,  Table = "Character", Column = "ResetCount",    	      Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 55,   Table = "Character", Column = "MasterResetCount",        Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 50,   Table = "Character", Column = "UpPoints",                Where = "AccountID",      IdType = 1},

			},
        },

        [9] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1",  Class = 295,     Name = "Erohim", 	      	     Quantity = 5},
				{Column = "Monster2",  Class = 309,     Name = "Hell Maine",      	     Quantity = 5},			
				{Column = "Monster3",  Class = 275,     Name = "Kundum", 	      	     Quantity = 5},
				{Column = "Monster4",  Class = 79,      Name = "Golden Derkon",   	     Quantity = 200},
				{Column = "Monster5",  Class = 78,      Name = "Golden Globin",   	     Quantity = 200},
				{Column = "Monster6",  Class = 80,      Name = "Golden Lizard King",     Quantity = 200},
				{Column = "Monster7",  Class = 131,     Name = "Castle Gate",            Quantity = 15},
				{Column = "Monster8",  Class = 53,      Name = "Golden Titan",           Quantity = 200},
				{Column = "Monster9",  Class = 494,     Name = "Golden Devil",           Quantity = 200},
				{Column = "Monster10", Class = 496,     Name = "Golden Crust",           Quantity = 200},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 250,  Table = "Character", Column = "ResetCount",    	      Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 70,   Table = "Character", Column = "MasterResetCount",        Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 70,   Table = "Character", Column = "UpPoints",                Where = "AccountID",      IdType = 1},
				{Name = "MResets",  Quantity = 35,   Table = "MEMB_INFO", Column = "vcoin",                   Where = "Memb___id",      IdType = 1},

			},
        },

        [10] = { --QUEST I - BUDGE DRAGON
			Name = {
				["Por"] = "Quest Inicio",
				["Eng"] = "Quest Start",
				["Spn"] = "Quest Start",
			},
			Description = {
				["Por"] = "Quest 03",
				["Eng"] = "Quest 03",
				["Spn"] = "Quest 03",
			},
			Validade = {
				["Por"] = "Disponível até:  13/04/2025",
				["Eng"] = "Available until: 13/04/2025",
				["Spn"] = "Disponével até:  13/04/2025"
			},
			Monsters = {
			
				{Column = "Monster1",  Class = 295,     Name = "Erohim", 	      	     Quantity = 5},
				{Column = "Monster2",  Class = 309,     Name = "Hell Maine",      	     Quantity = 5},			
				{Column = "Monster3",  Class = 275,     Name = "Kundum", 	      	     Quantity = 5},
				{Column = "Monster4",  Class = 79,      Name = "Golden Derkon",   	     Quantity = 200},
				{Column = "Monster5",  Class = 78,      Name = "Golden Globin",   	     Quantity = 200},
				{Column = "Monster6",  Class = 80,      Name = "Golden Lizard King",     Quantity = 200},
				{Column = "Monster7",  Class = 131,     Name = "Castle Gate",            Quantity = 15},
				{Column = "Monster8",  Class = 53,      Name = "Golden Titan",           Quantity = 200},
				{Column = "Monster9",  Class = 494,     Name = "Golden Devil",           Quantity = 200},
				{Column = "Monster10", Class = 496,     Name = "Golden Crust",           Quantity = 200},
			},
			Itens = {
			
				{Name = "Jewel Of Creation",  Section = 14, Index = 22, Quantity = 10, Level = 0},
				{Name = "Jewel Of Life",      Section = 14, Index = 16, Quantity = 10, Level = 0},
				{Name = "Jewel Of Bless",     Section = 14, Index = 13, Quantity = 10, Level = 0},
				{Name = "Jewel Of Soul",      Section = 14, Index = 14, Quantity = 10, Level = 0},

			},
			Coins = {
			    {Name = "Resets",   Quantity = 410,   Table = "Character", Column = "ResetCount",    	       Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 150,   Table = "Character", Column = "MasterResetCount",        Where = "Name",           IdType = 1},
				{Name = "MResets",  Quantity = 150,   Table = "Character", Column = "UpPoints",                Where = "AccountID",      IdType = 1},
				{Name = "MResets",  Quantity = 70,    Table = "MEMB_INFO", Column = "vcoin",                   Where = "Memb___id",      IdType = 1},

			},
        },

	},

    Reward = {
        [1]  = {
            Itens = {
				{Nome = "Hyon Helm",   Index = Utils.GetItem(7, 62), Level = 0, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [2]  = {
            Itens = {
				{Nome = "Hyon Armor",   Index = Utils.GetItem(8, 62), Level = 15, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [3]  = {
            Itens = {
				{Nome = "Hyon Pants",   Index = Utils.GetItem(9, 62), Level = 15, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [4]  = {
            Itens = {
				{Nome = "Hyon Gloves",   Index = Utils.GetItem(10, 62), Level = 15, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [5]  = {
            Itens = {
				{Nome = "Hyon Boots",   Index = Utils.GetItem(1, 62), Level = 15, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [6]  = {
            Itens = {
				{Nome = "Hyon Sword",   Index = Utils.GetItem(0, 43), Level = 0, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [7]  = {
            Itens = {
				{Nome = "Fragment Horn",   Index = Utils.GetItem(13, 35), Level = 0, Skill = 0, Luck = 0, Opt = 0, Excelente = 0, Tempo = 0, Dur = 1},
				{Nome = "Broken Horn",     Index = Utils.GetItem(13, 36), Level = 0, Skill = 0, Luck = 0, Opt = 0, Excelente = 0, Tempo = 0, Dur = 1},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [8]  = {
            Itens = {
				{Nome = "Hyon Shield",   Index = Utils.GetItem(6, 43), Level = 0, Skill = 1, Luck = 1, Opt = 0, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [9]  = {
            Itens = {
				{Nome = "Fragment Horn",   Index = Utils.GetItem(13, 35), Level = 0, Skill = 0, Luck = 0, Opt = 0, Excelente = 0, Tempo = 0, Dur = 1},
				{Nome = "Broken Horn",     Index = Utils.GetItem(13, 36), Level = 0, Skill = 0, Luck = 0, Opt = 0, Excelente = 0, Tempo = 0, Dur = 1},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },
		
        [10]  = {
            Itens = {
				{Nome = "Small Wing Satan",   Index = Utils.GetItem(12, 134), Level = 15, Skill = 1, Luck = 1, Opt = 7, Excelente = 63, Tempo = 0, Dur = 255},
            },
            Coins = {
                --{Name = "VGold",         Quantity = 3, Table = "MEMB_INFO", Column = "HGold",     Where = "memb___id", IdType = 0},
            },
        },

    },

    Message = {
        ["Por"] = {
            [1] = "Não consegui achar sua quest, volte mais tarde",
            [2] = "Não há quests disponíveis, volte mais tarde",
        },
        ["Eng"] = {
            [1] = "I couldn't find your quest, come back later",
            [2] = "No quests available, come back later",
        },
        ["Spn"] = {
            [1] = "No pude encontrar tu quest, vuelve más tarde",
            [2] = "No hay quest disponibles, vuelve más tarde",
        }
    }
}

return Quest_Config