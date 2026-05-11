--[[
type: 0 print in experience region
type: 1 print in chat region
--]]

CUSTOM_MESSAGES_COLOR = {
 { MessageID = 25, Type = 1, TextR = 150, TextG = 100, TextB = 180, TextA = 255, BgR = 0, BgG = 0, BgB = 0, BgA = 255 },
 { MessageID = 26, Type = 0, TextR = 10,  TextG = 200, TextB = 10,  TextA = 255, BgR = 0, BgG = 0, BgB = 0, BgA = 225 },
 { MessageID = 30, Type = 0, TextR = 0,   TextG = 0,   TextB = 0,   TextA = 255, BgR = 47, BgG = 168, BgB = 176, BgA = 255 }, -- AZUL POST 
}

function StartLoadCustomMessageColors()
	for i = 1, #CUSTOM_MESSAGES_COLOR do
		local info = CUSTOM_MESSAGES_COLOR[i]
		
		SetCustomMessageColor(info.MessageID, info.Type, info.TextR, info.TextG, info.TextB, info.TextA, info.BgR, info.BgG, info.BgB, info.BgA)
	end
end