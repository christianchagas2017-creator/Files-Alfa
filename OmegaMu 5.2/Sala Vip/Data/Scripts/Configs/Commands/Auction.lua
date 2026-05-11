Auction_Config = {
    Enabled = true,

    Packet = 19,

    Moeda = {
        [1] = {Nome = "VCoin", Tabela = "MEMB_INFO", Coluna = "vcoin", Where = "memb___id", IdType = 0},
    },

    Leilao = {
        {Name = "1x Parte Set Zeus/Hera Full +15 (a escolha)", Type = 0, RewardType = 0, RewardId = 1, Coin = 2, Date = 1756875180, EndDate = 1756878780, InitialBid = 10000, Increment = 100},
    },

    Premio = {
        [1] = {
            {Nome = "Fenrir Abbadon [C][RL]",        Index = Utils.GetItem(13, 245),  Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 0, Ancient = 0, Harmony = 0, Quantidade = 1},
        },
        [2] = {
            {Nome = "Horse of Reaper [RL]",          Index = Utils.GetItem(13, 279),  Level = 15, Dur = 255, Skill = 1, Luck = 1, Opt = 7, Exc = 0, Ancient = 0, Harmony = 0, Quantidade = 1},
        },
    },

    Message = {
        ["Eng"] = {
            [1] = "[Leilão] Não existe leilão aberto",
            [2] = "[Leilão] Você já tem o lance atual",
            [3] = "[Leilão] O lance ja foi coberto",
            [4] = "[Leilão] Você não tem saldo suficiente para o lance",
            [5] = "======= LEILÃO =======",
            [6] = "%s fez um novo lance",
            [7] = " %d %s",
            [8] = "======================",
            [9] = "[Leilão] Seu lance foi registrado",
            [10] = "%s",
            [11] = "LANCE INICIAL:",
            [12] = "[Leilão] Já existe um leilão aberto",
            [13] = "[Leilão] Index do leilão inválida",
            [14] = "Leilão cancelado!",
            [15] = "[Leilão] Leilão cancelado!",            
            [16] = "Finaliza em %d segundos",
            [17] = "Dê um novo lance para parar a contagem!",
            [18] = "Leilão finalizado!",
            [19] = "VENCEDOR:",
            [20] = "[Leilão] Não são aceitos novos lances",
            [21] = "Leilão finalizado!",
        },

        ["Por"] = {
            [1] = "[Leilão] Não existe leilão aberto",
            [2] = "[Leilão] Você já tem o lance atual",
            [3] = "[Leilão] O lance ja foi coberto",
            [4] = "[Leilão] Você não tem saldo suficiente para o lance",
            [5] = "======= LEILÃO =======",
            [6] = "%s fez um novo lance",
            [7] = " %d %s",
            [8] = "======================",
            [9] = "[Leilão] Seu lance foi registrado",
            [10] = "%s",
            [11] = "LANCE INICIAL:",
            [12] = "[Leilão] Já existe um leilão aberto",
            [13] = "[Leilão] Index do leilão inválida",
            [14] = "Leilão cancelado!",
            [15] = "[Leilão] Leilão cancelado!",
            [16] = "Finaliza em %d segundos",
            [17] = "Dê um novo lance para parar a contagem!",
            [18] = "Leilão finalizado!",
            [19] = "VENCEDOR:",
            [20] = "[Leilão] Não são aceitos novos lances",
            [21] = "Leilão finalizado!",
        },

        ["Spn"] = {
            [1] = "[Leilão] Não existe leilão aberto",
            [2] = "[Leilão] Você já tem o lance atual",
            [3] = "[Leilão] O lance ja foi coberto",
            [4] = "[Leilão] Você não tem saldo suficiente para o lance",
            [5] = "======= LEILÃO =======",
            [6] = "%s fez um novo lance",
            [7] = " %d %s",
            [8] = "======================",
            [9] = "[Leilão] Seu lance foi registrado",
            [10] = "%s",
            [11] = "LANCE INICIAL:",
            [12] = "[Leilão] Já existe um leilão aberto",
            [13] = "[Leilão] Index do leilão inválida",
            [14] = "Leilão cancelado!",
            [15] = "[Leilão] Leilão cancelado!",
            [16] = "Finaliza em %d segundos",
            [17] = "Dê um novo lance para parar a contagem!",
            [18] = "Leilão finalizado!",
            [19] = "VENCEDOR:",
            [20] = "[Leilão] Não são aceitos novos lances",
            [21] = "Leilão finalizado!",
        },

    }
}

return Auction_Config