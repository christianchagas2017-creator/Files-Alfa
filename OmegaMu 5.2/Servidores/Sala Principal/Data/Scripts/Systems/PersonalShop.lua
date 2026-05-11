PersonalShop = {
    Coins = {
        [1] = {Name = "VCoin"     , Table = "MEMB_INFO", Column = "vcoin"     , Where = "memb___id", IdType = 0},
    }
}

function CheckPersonalShopValue(quemcompra, quemvende, slot)
    local comprador = User.new(quemcompra)
    local compradorInfo = Utils.GetPlayerInfo(comprador)

    local vendedorInv = Inventory.new(quemvende)

    for coin = 1, 4 do
        local valor = vendedorInv:getPersonalShopValue(slot, coin)

        if valor > 0 then
            local saldo = DataBase.GetValue(PersonalShop.Coins[coin].Table, PersonalShop.Coins[coin].Column, PersonalShop.Coins[coin].Where, compradorInfo[PersonalShop.Coins[coin].IdType])
            if saldo < valor then
                return coin
            end
        end
    end

    -- return 5 para erro de taxa
	return 0
end

function PersonalShopAddValue(aIndex, Coin1, Coin2, Coin3, Coin4)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local CoinAmount = {Coin1, Coin2, Coin3, Coin4}

    for i, amount in ipairs(CoinAmount) do
        if amount > 0 then
            DataBase.SetAddValue(PersonalShop.Coins[i].Table, PersonalShop.Coins[i].Column, amount, PersonalShop.Coins[i].Where, playerInfo[PersonalShop.Coins[i].IdType])
        end
    end
end

function PersonalShopDecreaseValue(aIndex, Coin1, Coin2, Coin3, Coin4)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local CoinAmount = {Coin1, Coin2, Coin3, Coin4}

    for i, amount in ipairs(CoinAmount) do
        if amount > 0 then
            DataBase.SetDecreaseValue(PersonalShop.Coins[i].Table, PersonalShop.Coins[i].Column, amount, PersonalShop.Coins[i].Where, playerInfo[PersonalShop.Coins[i].IdType])
        end
    end
end