OpenFolder("Definitions")

	--NOME PADRAO = Color = {200, 220, 255, 255}, Background = {60, 100, 0, 150}

CUSTOM_COLOR_NAME = {
    ["Admin"] = {
       --Player   = { Color = {-1, 171, 255, 255}, Background = {-1, 4, 117, 150}, Bold = false, Align = 3, Name = "Kit Nordic" },
       --Title    = { Color = {000, 255, 115, 255}, Background = {00, 20, 57, 150}, Bold = false, Align = 3, Name = "Administrador" },
        Guild    = { Color = {255, 171, 255, 255}, Background = {24, 4, 117, 150}, Bold = true,  Align = 3, },
        --Union    = { Color = {255, 171, 255, 255}, Background = {24, 4, 117, 150}, Bold = true,  Align = 3, },
        --Chat     = { Color = {000, 255, 100, 255}, Background = {-1, 4, 117, 150}, Bold = false, Align = 1, },
       ChatLeft = { Color = {000, 255, 100, 255}, Background = {60, 100, 0, 150}, Bold = true,  Name = "Admin"},
        Command = "/chatcolor",
    },
	
}

function StartCustomColorName()
    for playerName, Color in pairs(CUSTOM_COLOR_NAME) do
        SetCustomColorCommand(playerName, Color.Command)

        if Color.Player then
            local p = Color.Player
            local Bold = p.Bold and 1 or 0
            SetCustomColorPlayer(playerName, p.Name, Bold, p.Align, p.Color[1], p.Color[2], p.Color[3], p.Color[4], p.Background[1], p.Background[2], p.Background[3], p.Background[4])
        end

        if Color.Title then
            local t = Color.Title
            local Bold = t.Bold and 1 or 0
            SetCustomColorTitle(playerName, t.Name, Bold, t.Align, t.Color[1], t.Color[2], t.Color[3], t.Color[4], t.Background[1], t.Background[2], t.Background[3], t.Background[4])
        end

        if Color.Guild then
            local g = Color.Guild
            local Bold = g.Bold and 1 or 0
            SetCustomColorGuild(playerName, Bold, g.Align, g.Color[1], g.Color[2], g.Color[3], g.Color[4], g.Background[1], g.Background[2], g.Background[3], g.Background[4])
        end

        if Color.Union then
            local u = Color.Union
            local Bold = u.Bold and 1 or 0
            SetCustomColorUnion(playerName, Bold, u.Align, u.Color[1], u.Color[2], u.Color[3], u.Color[4], u.Background[1], u.Background[2], u.Background[3], u.Background[4])
        end

        if Color.Chat then
            local c = Color.Chat
            local Bold = c.Bold and 1 or 0
            SetCustomColorChat(playerName, Bold, c.Align, c.Color[1], c.Color[2], c.Color[3], c.Color[4], c.Background[1], c.Background[2], c.Background[3], c.Background[4])
        end

        if Color.ChatLeft then
            local cl = Color.ChatLeft
            local Bold = cl.Bold and 1 or 0
            SetCustomColorChatLeft(playerName, cl.Name, Bold, cl.Color[1], cl.Color[2], cl.Color[3], cl.Color[4], cl.Background[1], cl.Background[2], cl.Background[3], cl.Background[4])
        end
    end
end