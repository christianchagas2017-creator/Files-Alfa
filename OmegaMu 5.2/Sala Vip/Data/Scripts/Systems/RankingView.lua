RankingView_Config = {
    Enabled = true,
    Packet = 9,

    Categories = {
        [1] = {Table = "Character", PointsColumn = "ResetCount",       PlayerColumn = "Name", Title = "Resets",          Key = "ResetCount"},
        [2] = {Table = "Character", PointsColumn = "MasterResetCount", PlayerColumn = "Name", Title = "MResets",         Key = "MasterResetCount"},
        [3] = {Table = "MataMata",  PointsColumn = "MataMata",         PlayerColumn = "Name", Title = "Mata-Mata",       Key = "MataMata"},
    }
}

-- ============================
-- CONFIGURAÇÃO DE RECOMPENSAS
-- ============================
RankingView_Reward = {
    Enabled = true,
    IntervalDays = 7,

    RewardAmount = {  
        MataMata = { [1] = 5000, [2] = 3000, [3] = 2000 },
        MasterResetCount = { [1] = 3000, [2] = 2000, [3] = 1000 },
        ResetCount = { [1] = 2000, [2] = 1500, [3] = 1000 },
    },

    LastRewardTime = 0 
}

RankingView = {}

-- ===================================
-- INICIALIZAÇÃO
-- ===================================
function RankingView.Init()
    if not RankingView_Config.Enabled then return end
    GameServerFunctions.GameServerProtocol(RankingView.Protocol)
    GameServerFunctions.MonsterReload(RankingView.CheckWeeklyReward)
end

-- ===================================
-- PACOTE DO CLIENTE (REQUISIÇÃO)
-- ===================================
function RankingView.Protocol(aIndex, Packet, PacketName)
    if Packet ~= RankingView_Config.Packet then
        return false
    end

    local player = User.new(aIndex)
    local playerAccount = player:getAccountID()

    if not PacketName or not string.find(PacketName, "1%-") then 
        ClearPacket(PacketName)
        return true 
    end

    local requestType = GetBytePacket(PacketName, -1)
    local category = GetBytePacket(PacketName, -1)
    ClearPacket(PacketName)

    local cat = RankingView_Config.Categories[category]
    if not cat then return true end

    local query = string.format([[
        SELECT TOP 10 
            c.%s AS PlayerName, 
            c.%s AS PlayerPoints,
            ISNULL(gm.G_Name, 'Sem Guild') AS GuildName
        FROM %s AS c
        LEFT JOIN GuildMember AS gm ON gm.Name = c.Name
        WHERE c.CtlCode = 0
        ORDER BY c.%s DESC, c.%s ASC
    ]],
    cat.PlayerColumn, cat.PointsColumn, cat.Table, cat.PointsColumn, cat.PlayerColumn)

    local rankingData = {}
    local recordCount = 0

    local ret = db:exec(query)
    if ret ~= 0 then
        while db:fetch() ~= 100 do
            local name = db:getStr("PlayerName")
            local points = tonumber(db:getStr("PlayerPoints")) or 0
            local guild = db:getStr("GuildName")
            if not guild or guild == "" or guild == "nil" then guild = "Sem Guild" end
            table.insert(rankingData, { Name = name, Guild = guild, Points = points, Tempo = 0 })
            recordCount = recordCount + 1
        end
    end
    db:clear()

    local packetName = string.format("2-%s-%d", playerAccount, aIndex)
    CreatePacket(packetName, RankingView_Config.Packet)

    local title = cat.Title or "Ranking"
    local titleLen = string.len(title)
    SetBytePacket(packetName, titleLen)
    SetCharPacketLength(packetName, title, titleLen)

    SetBytePacket(packetName, recordCount)

    for _, data in ipairs(rankingData) do
        local name = data.Name or "N/A"
        local guild = data.Guild or "Sem Guild"
        local points = tonumber(data.Points) or 0
        local tempo = tonumber(data.Tempo) or 0

        local nameLen = string.len(name)
        local guildLen = string.len(guild)

        SetBytePacket(packetName, nameLen)
        SetCharPacketLength(packetName, name, nameLen)

        SetBytePacket(packetName, guildLen)
        SetCharPacketLength(packetName, guild, guildLen)

        SetDwordPacket(packetName, points)
        SetDwordPacket(packetName, tempo)
    end

    SendPacket(packetName, aIndex)
    ClearPacket(packetName)
    return true
end

-- ===================================
-- FUNÇÃO DE PREMIAÇÃO INDIVIDUAL
-- ===================================
function RankingView.GiveRewardForCategory(catIndex)
    if not RankingView_Reward.Enabled then return end

    local cat = RankingView_Config.Categories[catIndex]
    if not cat then return end

    local rewardConfig = RankingView_Reward.RewardAmount[cat.Key]
    if not rewardConfig then
        LogAdd(string.format("[RANKING PREMIO] Nenhuma recompensa configurada para '%s'", cat.Key))
        return
    end

    NoticeSendAll("==============================================")
    NoticeSendAll(string.format("🎖 Premiação Semanal: %s 🎖", cat.Title))
    NoticeSendAll("==============================================")

    local query = string.format([[
        SELECT TOP 3 
            c.%s AS PlayerName,
            ISNULL(gm.G_Name, 'Sem Guild') AS GuildName
        FROM %s AS c
        LEFT JOIN GuildMember AS gm ON gm.Name = c.Name
        WHERE c.CtlCode = 0
        ORDER BY c.%s DESC, c.%s ASC
    ]],
    cat.PlayerColumn, cat.Table, cat.PointsColumn, cat.PlayerColumn)

    local ret = db:exec(query)
    local rank = 0

    if ret ~= 0 then
        while db:fetch() ~= 100 do
            rank = rank + 1
            local name = db:getStr("PlayerName")
            local reward = rewardConfig[rank] or 0
            if reward > 0 then
                local updateQuery = string.format([[
                    UPDATE MEMB_INFO 
                    SET VCoin = VCoin + %d 
                    WHERE memb___id = (SELECT AccountID FROM Character WHERE Name = '%s')
                ]], reward, name)
                db:exec(updateQuery)
                LogAdd(string.format("[RANKING PREMIO] %dº lugar em '%s' - %s recebeu %d VCoin.", rank, cat.Title, name, reward))
                NoticeSendAll(string.format("%dº: %s recebeu %d VCoin!", rank, name, reward))
            end
        end
    end
    db:clear()
    NoticeSendAll("--------------------------------------------------")
end

-- ===================================
-- PREMIAÇÃO GLOBAL (TODOS OS RANKINGS)
-- ===================================
function RankingView.GiveWeeklyRewards()
    NoticeSendAll("==============================================")
    NoticeSendAll("🎉 Premiação Semanal de Ranking concluída! 🎉")
    NoticeSendAll("==============================================")

    for catIndex, _ in pairs(RankingView_Config.Categories) do
        RankingView.GiveRewardForCategory(catIndex)
    end
end

-- ===================================
-- VERIFICAÇÃO AUTOMÁTICA SEMANAL
-- ===================================
function RankingView.CheckWeeklyReward()
    if not RankingView_Reward.Enabled then return end
    local now = os.time()
    local elapsed = now - (RankingView_Reward.LastRewardTime or 0)

    if elapsed >= (RankingView_Reward.IntervalDays * 86400) then
        RankingView_Reward.LastRewardTime = now
        RankingView.GiveWeeklyRewards()
    end
end

RankingView.Init()
return RankingView
