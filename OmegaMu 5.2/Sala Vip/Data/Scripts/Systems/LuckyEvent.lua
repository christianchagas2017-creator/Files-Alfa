LuckyEvent = {}
LuckyEvent.DropList = {}
function LuckyEvent.Init()
    if not LuckyEvent_Config.Enabled then return end

    GameServerFunctions.GameServerProtocol(LuckyEvent.Protocol)
end

function LuckyEvent.Protocol(aIndex, Packet, PacketName)
    if Packet ~= LuckyEvent_Config.Packet then return false end

    local player = User.new(aIndex)
    local playerInfo = Utils.GetPlayerInfo(player)

    if PacketName == string.format("1-%s-%d", playerInfo[1], playerInfo[2]) then
        local page = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)

        if LuckyEvent_Config.Expiration ~= -1 then
            if os.time() >= LuckyEvent_Config.Expiration then
                SendMessage(LuckyEvent_Config.Message[playerInfo[3]][1], aIndex, 1)
                return true
            end
        end

        LuckyEvent.SendInfo(playerInfo, page)
    end

    if PacketName == string.format("3-%s-%d", playerInfo[1], playerInfo[2]) then
        local page = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        LuckyEvent.Play(playerInfo, page)
    end

    player = nil
    return true
end

function LuckyEvent.Play(playerInfo, page)
    local Coin = LuckyEvent_Config.Coin[page]
    local Ranking = LuckyEvent_Config.Ranking[page]

    local itemCount = GetInventoryItemCount(playerInfo[2], Coin.ItemIndex, -1)

    local PacketName = string.format("4-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, LuckyEvent_Config.Packet)

    if itemCount < Coin.Valor then
        SetBytePacket(PacketName, 0)
        SendPacket(PacketName, playerInfo[2])
        ClearPacket(PacketName)
        return
    end

    DeleteItemCount(playerInfo[2], Coin.ItemIndex, -1, Coin.Valor)
    
    DataBase.SetAddValue(Ranking.Table, Ranking.Column, 1, Ranking.Where, playerInfo[Ranking.IdType])

    if LuckyEvent.DropList[page] == nil then
        local pickTable = LuckyEvent.FillDropTable(LuckyEvent_Config.Prizes[page])
        Utils.ShuffleTable(pickTable)
        LuckyEvent.DropList[page] = pickTable
    end

    local item = LuckyEvent.DropList[page][GetRandomValue(1, #LuckyEvent.DropList[page])]

    NpcRescueItem.InsertItem(playerInfo[0], item.ItemIndex, item.Level, item.Dur, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, item.Harmony, 0)

    SetBytePacket(PacketName, 1)
    SetBytePacket(PacketName, item.ListID)

    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)



    LuckyEvent.SendInfo(playerInfo, page)
end

function LuckyEvent.SendInfo(playerInfo, page)
    local Coin = LuckyEvent_Config.Coin[page]

    local itemCount = GetInventoryItemCount(playerInfo[2], Coin.ItemIndex, -1)

    db:exec("SELECT TOP 10 Name, LuckyPointsDonate from Character order by LuckyPointsDonate desc, LuckyPointsFree desc, Name desc")

    local topRanking = {}

    while db:fetch() ~= 100 do
        local nome = db:getStr("Name")
        local total = tonumber(db:getStr("LuckyPointsDonate"))
        if total <= 0 then nome = "-" end
        table.insert(topRanking, {Nome = nome, Total = total})
    end

    db:clear()

    if #topRanking == 0 then
        LogAddLua("LuckyEvent: Erro ao pegar ranking")
        return
    end

    local PacketName = string.format("2-%s-%d", playerInfo[1], playerInfo[2])
    CreatePacket(PacketName, LuckyEvent_Config.Packet)
    SetBytePacket(PacketName, page)
    SetDwordPacket(PacketName, itemCount)
    for _, player in ipairs(topRanking) do
        SetDwordPacket(PacketName, player.Total)
        local nLen = player.Nome:len()
        SetBytePacket(PacketName, nLen)
        SetCharPacketLength(PacketName, player.Nome, nLen)
    end

    SendPacket(PacketName, playerInfo[2])
    ClearPacket(PacketName)
end

function LuckyEvent.FillDropTable(itemtable)
    local resultTable = {}

    for _, item in ipairs(itemtable) do
        local qtd = math.floor((item.Rate / 100) * 10000)

        for k = 1, qtd do
			table.insert(resultTable, item)
        end
    end

    return resultTable
end

LuckyEvent.Init()

return LuckyEvent