PacotePromo_Config = {
    Enabled = true,

    Packet = 44,

    Npc = {
        --{Pacote = 1, Class = 249, Map = 2, PosX = 209, PosY = 055},
        --{Pacote = 2, Class = 712, Map = 3, PosX = 167, PosY = 098},
    },

    Moeda = {Tabela = "MEMB_INFO", Coluna = "vcoin", Where = "memb___id", IdType = 0},

    Pacotes = {
        [1] = {
            {IndexPacote = 1, Nome = "Stun",          Custo = "60",  Disponibilidade = "10/06/2025", UseAddBrinde =  false, AddBrinde = "espectroitens"},
            {IndexPacote = 2, Nome = "Destroyer",     Custo = "60",  Disponibilidade = "10/06/2025", UseAddBrinde =  false, AddBrinde = "espectroitens"},
            {IndexPacote = 3, Nome = "Espectro",      Custo = "60",  Disponibilidade = "10/06/2025", UseAddBrinde =  false, AddBrinde = "espectroitens"},
            {IndexPacote = 4, Nome = "Hades",      	  Custo = "60",  Disponibilidade = "10/06/2025", UseAddBrinde =  false, AddBrinde = "espectroitens"},
            {IndexPacote = 5, Nome = "Viking",        Custo = "60",  Disponibilidade = "10/06/2025", UseAddBrinde =  false, AddBrinde = "espectroitens"},

        },

    },

    --X -ESQUERDA + DIREITA
    --Y -CIMA +BAIXO

    Itens = {

        --#region NPC GUARDIÃ DOS DONATES (DEVIAS)
        [1] = {
            [1] = { -- SET STUN
                --{ListID = 01, ItemIndex = Utils.GetItem(2,   14),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "-8", Width = "30", Height = "100",Size = "0.8"},
                --{ListID = 02, ItemIndex = Utils.GetItem(6,   13),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
				
                {ListID = 03, ItemIndex = Utils.GetItem(7,   63),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 04, ItemIndex = Utils.GetItem(8,   63),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "40", Width = "30", Height = "75",Size = "0.8"},
                {ListID = 05, ItemIndex = Utils.GetItem(9,   63),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 06, ItemIndex = Utils.GetItem(10,  63),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 07, ItemIndex = Utils.GetItem(11,  63),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
				


            },
			
            [2] = { -- SET DESTROYER
				
                {ListID = 08, ItemIndex = Utils.GetItem(7,   64),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 09, ItemIndex = Utils.GetItem(8,   64),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "40", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 10, ItemIndex = Utils.GetItem(9,   64),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 11, ItemIndex = Utils.GetItem(10,  64),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 12, ItemIndex = Utils.GetItem(11,  64),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},


            },
			
            [3] = { -- SET DESTROYER
				
                {ListID = 08, ItemIndex = Utils.GetItem(7,   65),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 09, ItemIndex = Utils.GetItem(8,   65),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "40", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 10, ItemIndex = Utils.GetItem(9,   65),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 11, ItemIndex = Utils.GetItem(10,  65),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 12, ItemIndex = Utils.GetItem(11,  65),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},


            },
			
            [4] = { -- SET DESTROYER
				
                {ListID = 08, ItemIndex = Utils.GetItem(7,   66),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 09, ItemIndex = Utils.GetItem(8,   66),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "40", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 10, ItemIndex = Utils.GetItem(9,   66),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 11, ItemIndex = Utils.GetItem(10,  66),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 12, ItemIndex = Utils.GetItem(11,  66),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},


            },
			
            [5] = { -- SET DESTROYER
				
                {ListID = 08, ItemIndex = Utils.GetItem(7,   67),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 09, ItemIndex = Utils.GetItem(8,   67),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "40", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 10, ItemIndex = Utils.GetItem(9,   67),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 11, ItemIndex = Utils.GetItem(10,  67),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},
                {ListID = 12, ItemIndex = Utils.GetItem(11,  67),    Level = 0, Dur = 255, Skill = 1, Luck = 1, JoL = 0, Exc = 63, Ancient = 0, Days = 0, Qtd = 01, PosX = "000", PosY = "12", Width = "30", Height = "100",Size = "0.8"},


            },


            
        }
        --#endregion
    }
}

return PacotePromo_Config