OpenFolder("Definitions")

--#region EFEITO DOS BOWS
--[[------------------------------------------------------------------------
  Valid EffecID:
  265 = Efeito de Flechas Fogo
  266 = Efeito de Flechas Flechas Metal
  267 = Efeito de Flechas Raios e Flechas
  268 = Efeito de Flechas Setas Verde
  269 = Efeito de Flechas Setas
  270 = Efeito de Flechas Discos Azul
  271 = Efeito de Flechas Verdes com efeito de flores
  272 = Efeito de Flechas Bolas de Fogo curtas
  273 = Efeito de Flechas Grande Curta Azul Agua
  293 = Efeito de Flechas Estrelas Roxa Efeito Divino
  294 = Efeito de Flechas Level Up Flechas 3 Classe
  295 = Efeito de Flechas Amarelas Sagrada
  296 = Efeito de Flechas Verde
  297 = Efeito de Flechas Penas
  312 = Efeito de Flechas Tran�as Amarela
  320 = Efeito de Flechas Curvas Roxa
  323 = Efeito de Flechas Roxas com Fogo
  324 = Efeito de Combo BK
  332 = Efeito de Flechas de Energia Azul
  334 = Efeito de Flechas Rosa mas mas poucas
  344 = Efeito de Fogo estranho
  364 = Efeito de Flechas CS Joga Flecha pra cima e cai
  400 = Efeito de Flechas Rajad�o Azul (Sai do chão)
  399 = Efeito Colorido (Sai do chão)
  415 = Efeito FireScreem do DL
  508 = Efeito de Flechas de Gelo/Florest Esverdeado
----------------------------------------------------------------------------
  1 -> Bows
  2 -> Crossbows
--------------------------------------------------------------------------]]
--#endregion

CUSTOM_BOW_CROSS = {
  --{ ItemIndex = GET_ITEM(4, 109), Type = 1, Skill = 320, EffectLevel = 0, R = 1.0, G = 1.0, B = 1.0 }, --BOW DARK KNIGHT
  --{ ItemIndex = GET_ITEM(4, 108), Type = 1, Skill = 295, EffectLevel = 0, R = 1.0, G = 1.0, B = 1.0 }, --BOW REIA
  --{ ItemIndex = GET_ITEM(4, 107), Type = 1, Skill = 297, EffectLevel = 0, R = 1.0, G = 1.0, B = 1.0 }, --BOW RABBIT WARRIOR
  --{ ItemIndex = GET_ITEM(4, 106), Type = 1, Skill = 297, EffectLevel = 0, R = 1.0, G = 1.0, B = 1.0 }, --BOW CELESTIAL DRAGON
  --{ ItemIndex = GET_ITEM(4, 105), Type = 1, Skill = 334, EffectLevel = 0, R = 1.0, G = 1.0, B = 1.0 }, --BOW FANTASY
}

function StartLoadBowCross()
	for i = 1, #CUSTOM_BOW_CROSS do
		SetBowCross(CUSTOM_BOW_CROSS[i].ItemIndex, CUSTOM_BOW_CROSS[i].Type, CUSTOM_BOW_CROSS[i].Skill, CUSTOM_BOW_CROSS[i].EffectLevel, CUSTOM_BOW_CROSS[i].R, CUSTOM_BOW_CROSS[i].G, CUSTOM_BOW_CROSS[i].B)
	end
end