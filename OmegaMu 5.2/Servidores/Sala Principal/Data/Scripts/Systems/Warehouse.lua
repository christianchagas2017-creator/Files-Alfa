Warehouse = {}

function Warehouse.Init()
    GameServerFunctions.RequestWarehouseCost(Warehouse.RequestCost)
    GameServerFunctions.PlayerBuyVaultOk(Warehouse.PlayerBuyVault)
end

function Warehouse.RequestCost(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local cost = -1
    local coin = "-"

    if Warehouse_Config.Info[playerInfo[4]] ~= nil then
        cost = Warehouse_Config.Info[playerInfo[4]].Price
        if Warehouse_Config.Coins[Warehouse_Config.Info[playerInfo[4]].Coin] ~= nil then
            coin = Warehouse_Config.Coins[Warehouse_Config.Info[playerInfo[4]].Coin].Name
        end
    end
    
    SendWarehouseCost(aIndex, cost, coin)

    player = nil
end

function Warehouse.PlayerBuyVault(aIndex)
    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    local info = nil
    local coin = nil

    if Warehouse_Config.Info[playerInfo[4]] ~= nil then
        info = Warehouse_Config.Info[playerInfo[4]]
        if Warehouse_Config.Coins[Warehouse_Config.Info[playerInfo[4]].Coin] ~= nil then
            coin = Warehouse_Config.Coins[Warehouse_Config.Info[playerInfo[4]].Coin]
        end
    end

    if info == -1 or coin == nil then
        SendMessage(Warehouse_Config.Message[playerInfo[3]][1], aIndex, 35)
        return
    end

    local count = player:getWarehouseCount()

    if count >= info.MaxVault then
        SendMessage(Warehouse_Config.Message[playerInfo[3]][2], aIndex, 35)
        return
    end

    local saldo = DataBase.GetValue(coin.Table, coin.Column, coin.Where, playerInfo[coin.IdType])

    if saldo < info.Price then
        SendMessage(Warehouse_Config.Message[playerInfo[3]][3], aIndex, 35)
        return
    end

    DataBase.SetDecreaseValue(coin.Table, coin.Column, info.Price, coin.Where, playerInfo[coin.IdType])
    DataBase.SetAddValue("Warehouse", "VaultCounts", 1, "AccountID", playerInfo[0])

    player:setWarehouseCount(count + 1)

    UpdateWarehouseCount(aIndex)

    SendMessage(Warehouse_Config.Message[playerInfo[3]][4], aIndex, 26)
end

Warehouse.Init()

return Warehouse