Shop = {}

function Shop.Init()
    if Shop_Config.Enabled then
        GameServerFunctions.GameServerProtocol(Shop.Protocol)
    end
end

function Shop.Checkout(aIndex, playerInfo, CoinID, TotalPrice, ItemList)
    local PacketName = string.format("4-%s-%d", playerInfo[1], aIndex)
    CreatePacket(PacketName, Shop_Config.Packet)
    local checkoutReturn = 3
    if Shop_Config.Coins[CoinID] == nil then
        checkoutReturn = 2
    else
        local coin = Shop_Config.Coins[CoinID]
        local saldo = DataBase.GetValue(coin.Table, coin.Column, coin.Where, playerInfo[coin.IdType])

        if saldo < TotalPrice then
            checkoutReturn = 2
            goto fim
        end

        local codigo = GuardiaoBrindes.GerarCodigo()
        if codigo == "-1" then
            checkoutReturn = 4
            goto fim
        end

        GuardiaoBrindes.RegistrarCodigo(Shop_Config.Message[playerInfo[2]][1], playerInfo[0], codigo, 0, 0)
	    GuardiaoBrindes.RegistrarItens(codigo, ItemList)

        DataBaseAsync.SetDecreaseValue(coin.Table, coin.Column, TotalPrice, coin.Where, playerInfo[coin.IdType])
    
        checkoutReturn = 3
    end

    ::fim::
    SetBytePacket(PacketName, checkoutReturn)
    SendPacket(PacketName, aIndex)
    ClearPacket(PacketName)
end

function Shop.Protocol(aIndex, Packet, PacketName)
    if Packet ~= Shop_Config.Packet then return false end

    local player = User.new(aIndex)
    local playerInfo = {[0] = player:getAccountID(), [1] = player:getName(), [2] = player:getLanguage()}

    if PacketName == string.format("1-%s-%d", playerInfo[1], aIndex) then
        ClearPacket(PacketName)
        local map = player:getMapNumber()
		local x = player:getX()
		local y = player:getY()
		local atr = GetMapAttr(map, x, y, 1)
        local tp = 0
		if atr == 0 then
			tp = 1
		end

        local packetName = string.format("2-%s-%d", playerInfo[1], aIndex)
        CreatePacket(packetName, Shop_Config.Packet)
        SetBytePacket(packetName, tp)
        SendPacket(packetName, aIndex)
        ClearPacket(packetName)
        return true
    end

    

    if PacketName == string.format("3-%s-%d", playerInfo[1], aIndex) then
        local itemList = {}
        local coin = GetBytePacket(PacketName, -1)
        local price = GetDwordPacket(PacketName, -1)
        local qtd = GetBytePacket(PacketName, -1)

        for x = 1, qtd do
            local len = GetBytePacket(PacketName, -1)
            local name = GetCharPacketLength(PacketName, -1, len)
            local section = GetBytePacket(PacketName, -1)
            local index = GetWordPacket(PacketName, -1)
            local level = GetBytePacket(PacketName, -1)
            local skill = GetBytePacket(PacketName, -1)
            local luck = GetBytePacket(PacketName, -1)
            local option = GetBytePacket(PacketName, -1)
            local exc = 0
            local excCount = 1
            for z = 1, 6 do
                local temp = GetBytePacket(PacketName, -1)
                if temp == 1 then
                    exc = exc + excCount
                end
                excCount = excCount*2
            end

            local item = {Nome = name, Section = section, Id = index, Level = level, Durabilidade = 255, Skill = skill, Luck = luck, Opt = option, Excelente = exc, Dias = 0}
            table.insert(itemList, item)
        end

        ClearPacket(PacketName)
        Shop.Checkout(aIndex, playerInfo, coin, price, itemList)
        return true
    end
end

Shop.Init()

return Shop