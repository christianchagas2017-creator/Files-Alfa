Warehouse_Config = {
    Coins = {
        [1] = {Name = "VCoin", Table = "MEMB_INFO", Column = "vcoin", Where = "memb___id", IdType = 0},
    },

    Info = {
        [0] = {MaxVault = 100,    Price = 0, Coin = 1},
        [1] = {MaxVault = 100,   Price = 0, Coin = 1},
        [2] = {MaxVault = 250,   Price = 0, Coin = 1},
        [3] = {MaxVault = 2000, Price = 0,  Coin = 2},
        [4] = {MaxVault = 2000, Price = 0,  Coin = 2},
    },

    Message = {
        ["Por"] = {
            [1] = "Falha ao comprar baú, contate a administração.",
            [2] = "Máximo de baús atingido para seu tipo de vip",
            [3] = "Saldo insuficiente para comprar baú",
            [4] = "Baú comprado com sucesso!"
        },
		["Eng"] = {
            [1] = "Falha ao comprar baú, contate a administração.",
            [2] = "Máximo de baús atingido para seu tipo de vip",
            [3] = "Saldo insuficiente para comprar baú",
            [4] = "Baú comprado com sucesso!"
        },
		["Spn"] = {
            [1] = "Falha ao comprar baú, contate a administração.",
            [2] = "Máximo de baús atingido para seu tipo de vip",
            [3] = "Saldo insuficiente para comprar baú",
            [4] = "Baú comprado com sucesso!"
        },
    }
}

return Warehouse_Config

