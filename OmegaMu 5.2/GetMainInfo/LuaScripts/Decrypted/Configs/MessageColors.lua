--[[
type: 0 Global
type: 1 Mensagem
--]]

CUSTOM_MESSAGES_COLOR = {
{ MessageID = 25, Type = 1, TextR = 255, TextG = 255, TextB = 255, TextA = 255, BgR = 206, BgG = 112, BgB = 255, BgA = 180 }, --POST ROSA LETRA BRANCA
{ MessageID = 26, Type = 1, TextR = 010, TextG = 200, TextB = 010, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --SISTEMA ON VERDE MAIS CLARO
{ MessageID = 27, Type = 0, TextR = 240, TextG = 030, TextB = 030, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --SISTEMA OFF VERMELHO MAIS CLARO
{ MessageID = 28, Type = 0, TextR = 000, TextG = 240, TextB = 000, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --SISTEMA ON VERDE MAIS ESCURO
{ MessageID = 29, Type = 1, TextR = 000, TextG = 000, TextB = 000, TextA = 255, BgR = 206, BgG = 112, BgB = 255, BgA = 180 }, --POST ROSA LETRA PRETA
{ MessageID = 30, Type = 1, TextR = 000, TextG = 136, TextB = 255, TextA = 255, BgR = 038, BgG = 142, BgB = 166, BgA = 255 }, --POST AZUL EMCIMA
{ MessageID = 31, Type = 0, TextR = 000, TextG = 000, TextB = 000, TextA = 255, BgR = 255, BgG = 136, BgB = 000, BgA = 255 }, --POST LARANJA NOTICE
{ MessageID = 32, Type = 0, TextR = 240, TextG = 020, TextB = 020, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --SISTEMA OFF VERMELHO MAIS ESCURO
{ MessageID = 33, Type = 0, TextR = 150, TextG = 050, TextB = 255, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --FUNDO PRETO LETRA ROXA  
{ MessageID = 34, Type = 1, TextR = 255, TextG = 255, TextB = 255, TextA = 255, BgR = 038, BgG = 140, BgB = 170, BgA = 255 }, --POST AZUL EMCIMA
{ MessageID = 35, Type = 1, TextR = 251, TextG = 030, TextB = 000, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --SISTEMA OFF VERMELHO NÃO PERMITIDO EMBAIXO
{ MessageID = 36, Type = 1, TextR = 000, TextG = 000, TextB = 000, TextA = 255, BgR = 255, BgG = 252, BgB = 000, BgA = 255 }, --ACUMO HORAS AMARELO EMCIMA
{ MessageID = 37, Type = 1, TextR = 000, TextG = 000, TextB = 000, TextA = 255, BgR = 008, BgG = 093, BgB = 115, BgA = 255 }, --POST COMPRO
{ MessageID = 38, Type = 1, TextR = 000, TextG = 000, TextB = 000, TextA = 255, BgR = 066, BgG = 209, BgB = 245, BgA = 255 }, --POST VENDO
{ MessageID = 39, Type = 0, TextR = 250, TextG = 200, TextB = 050, TextA = 255, BgR = 000, BgG = 000, BgB = 000, BgA = 160 }, --DIGITAR DE STAFF / JAH
{ MessageID = 40, Type = 1, TextR = 255, TextG = 119, TextB = 000, TextA = 255, BgR = 20, BgG = 20, BgB = 20, BgA = 160 }, -- LARANJA

}

function StartLoadCustomMessageColors()
	for i = 1, #CUSTOM_MESSAGES_COLOR do
		local info = CUSTOM_MESSAGES_COLOR[i]
		SetCustomMessageColor(info.MessageID, info.Type, info.TextR, info.TextG, info.TextB, info.TextA, info.BgR, info.BgG, info.BgB, info.BgA)
	end
end