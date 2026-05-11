Shop_Config = {
    Enabled = true,

    Packet = 79,

    Coins = {
        [1] = {Name = "VCoin",  Table = "memb_info", Column = "vcoin", Where = "memb___id", IdType = 0},
    },

    Message = {
        ["Eng"] = {
            [1] = "Buy in Shopping",
        },
        ["Por"] = {
            [1] = "Compra No Shopping",
        },
        ["Spn"] = {
            [1] = "Compra No Shopping",
        },
    }
}



return Shop_Config