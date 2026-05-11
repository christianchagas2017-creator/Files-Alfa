OpenFile("Manager\\Customs\\Config\\MenuSettingsConfig.lua")

local MENU_MESSAGES = {}

MENU_MESSAGES['Por'] = {
[22] = 'Fechar',  
}

MENU_MESSAGES['Eng'] = {
[22] = 'Fechar',  
}

MENU_MESSAGES['Spn'] = {
[22] = 'Fechar',  
}

local Menu_Texts = {}

Menu_Texts["Eng"] ={
[1] = " Resolução ",
}

Menu_Texts["Por"] ={
[1] = " Resolução ",
}

Menu_Texts["Spn"] ={
[1] = " Resolução ",

}

local Menu_ResOptions = {
{ListID = 1, Value = 0, Nome = ""},
{ListID = 2, Value = 1, Nome = ""},
{ListID = 3, Value = 2, Nome = ""},
{ListID = 4, Value = 3, Nome = ""},
{ListID = 5, Value = 4, Nome = ""},
{ListID = 6, Value = 5, Nome = ""},
{ListID = 7, Value = 6, Nome = ""},
{ListID = 8, Value = 7, Nome = ""},
{ListID = 9, Value = 8, Nome = ""},
}


local Menu_WindowID = 2


Menu = {}
Menu_Buttons = {}
local Menu_CurrentRes = GetResolution()
local Menu_CurrentLang = GetLanguage()
local Menu_CurrentFont = GetFontValue()
local Menu_ResDropdown = {Show = false, Change = 0}
local Menu_LangDropdown = {Show = false, Change = 0}
local Menu_FontDropdown = {Show = false, Change = 0}
--local Menu_VolumeArea = {X1 = 375, Y1 = 265, X2 = 380, Y2 = 277}
--local Menu_VolumeSlider = {[0] = 275, [1] = 284, [2] = 393,[3] = 402,[4] = 411,[5] = 420,[6] = 429,[7] = 438,[8] = 447,[9] = 456,[10] = 465}
local Menu_VolumeArea = {X1 = 373, Y1 = 265, X2 = 473, Y2 = 280}
local Menu_VolumeSlider = {[0] = 375, [1] = 385, [2] = 393,[3] = 401,[4] = 409,[5] = 417,[6] = 425,[7] = 433,[8] = 441,[9] = 449,[10] = 460}
local Menu_VolumePosition = 0
local Menu_ResDropdownChange = 0
local Menu_ResDropdownCount = 0
local Menu_LangDropdownChange = 0
local Menu_LangDropdownCount = 0
local Menu_FontDropdownChange = 0
local Menu_FontDropdownCount = 0

local Menu_MonsterHealthBar = 0 
local Menu_StaticEffect = 0 
local Menu_DynamicEffect = 0  
local Menu_Glow = 0 
local Menu_Shadow = 0
local Menu_Object = 0
local Menu_Wings = 0  
local Menu_AutoCtrl = 0


function Menu.Open()
	if UICustomInterface ~= Menu_WindowID then
		Menu_CurrentRes = GetResolution()
		Menu_CurrentLang = GetLanguage()
		Menu_CurrentFont = GetFontValue()
		Menu_VolumePosition = GetVolume()
		UICustomInterface = Menu_WindowID
		CloseWindow(UIOptions)
		SetLockInterfaces()
	end
end

function Menu.Close()
	SetUnlockInterfaces()
	CloseWindow(UIOptions)
	UICustomInterface = 0
	Menu.SetLangDropdownOff()
	Menu.SetFontDropdownOff()
	Menu.SetResDropdownOff()
	Menu_ResDropdownChange = 0
	Menu_ResDropdownCount = 0
	Menu_LangDropdownChange = 0
	Menu_LangDropdownCount = 0
	Menu_FontDropdownChange = 0
	Menu_FontDropdownCount = 0
end

function Menu.CreateButton(IdBotao, X, Y, W, H)
	if Menu_Buttons[IdBotao] == nil then
		table.insert(Menu_Buttons, IdBotao)
	end
	Menu_Buttons[IdBotao] = {X1 = X, X2 = X+W, Y1 = Y, Y2 = Y+H}
end

function Menu.CheckButton(IdBotao, X, Y)
	if Menu_Buttons[IdBotao] == nil then return false end
	if X >= Menu_Buttons[IdBotao].X1 and X <= Menu_Buttons[IdBotao].X2 and Y >= Menu_Buttons[IdBotao].Y1 and Y <= Menu_Buttons[IdBotao].Y2 then
		return true
	end
	return false
	
		

end

function Menu.MainProc()
	if UICustomInterface == Menu_WindowID then
		EnableAlphaTest()

		RenderImage2(600124 , 140, 90, 500, 300, 0.0, 0.0, 0.99123456, 0.99123456, 1, 1, 1.0)
	
		
		
		DisableAlphaBlend()
		SetBlend()
		
	
	
		local PosX = (525 / 2) - (197 / 2)       
		local PosY = 150    
	
		local PosX2 = (1035 / 2) - (200 / 2)       
		local PosY2 = 146    
		
		for fonte = 1, 5 do
			if MousePosX() >= PosX and MousePosX() <= PosX+63 and MousePosY() >= PosY and MousePosY() <= PosY+12 then
				glColor4f(0.75, 0.15, 0.15, 1.0)
			else
				glColor4f(0.15, 0.15, 0.15, 1.0)
			end
			DrawBar(PosX, PosY, 63, 12, 0.0, 0)
			PosY = PosY + 15
		end
		
		PosY = 275
		for idioma = 1, 3 do
			if MousePosX() >= PosX and MousePosX() <= PosX+65 and MousePosY() >= PosY and MousePosY() <= PosY+12 then
				glColor4f(0.75, 0.15, 0.15, 1.0)
			else
				glColor4f(0.15, 0.15, 0.15, 1.0)
			end
			DrawBar(PosX, PosY, 65, 12, 0.0, 0)
			PosY = PosY + 15
		end
		
		PosY2 = 175
		for Resolucao = 1, 8 do
			if MousePosX() >= PosX2 and MousePosX() <= PosX2+65 and MousePosY() >= PosY2 and MousePosY() <= PosY2+12 then
				glColor4f(0.75, 0.15, 0.15, 1.0)
			else
				glColor4f(0.15, 0.15, 0.15, 1.0)
			end
			DrawBar(PosX2, PosY2, 65, 12, 0.0, 0)
			PosY2 = PosY2 + 15
		end
		
		EndDrawBar()
		EnableAlphaTest()

		-- RESOLUÇÃO DESATIVADA
		Menu.CreateButton(1, 2, 2, 2, 2)
		if not Menu_ResDropdown.Show then
			if Menu.CheckButton(1, MousePosX(), MousePosY()) then
			else
			end
		else
		end
		
		-- RESOLUÇÃO
		SetFontType(0)
		SetTextBg(0, 0, 0, 100)
		SetTextColor(232, 194, 118, 255)
		RenderText3(417, 158, string.format(Menu_Texts[GetLanguage()][1]), 65, 3) -- ( FRASE RESOLUÇÃO ) 
		--RenderImage2(31316, 380, 267, 87, 24, 0.7, 0.7, 1.0, 1.0, 1, 1, 1.0)
		Menu.CreateButton(1, 445, 267, 15, 15)
		if not Menu_FontDropdown.Show then
			if Menu.CheckButton(1, MousePosX(), MousePosY()) then
				--RenderImage2(31689, 445, 272, 16, 15, 0.0, 0.2141176470588235, 1.0, 0.2141176470588235, 1, 1, 1.0) -- CETA
			else
				--RenderImage2(31689, 445, 272, 16, 15, 0.0, 0.0, 1.0, 0.2141176470588235, 1, 1, 1.0) -- CETA
			end
		else
			--RenderImage2(31689, 445, 272, 16, 15, 0.0, 0.4129411764705882, 1.0, 0.2141176470588235, 1, 1, 1.0) -- BOTÃO CLICK
		end
		--RenderImage2(31648, 380, 267, 100, 47, 0.0, 0.0, 1.0, 1.0, 1, 1, 1.0) -- IMAGE BOX
		-- MAIOR LADO DIREITO
		-- MENOR LADO ESQUERDO
		
		-- MENOR SOBE
		-- MAIOR DESCE
		--for i in ipairs(Menu_ResOptions) do
		--	if Menu_ResOptions[i].Value == Menu_CurrentRes then
		--		SetTextBg(0, 0, 0, 0)
		--		SetTextColor(255, 255, 255, 255)
		--		RenderText3(390, 277, string.format(Menu_ResOptions[i].Nome), 65, 3)
		--	end
		--end 
		
		
		
		-- VOLUME [FEITO]
		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(255, 255, 255, 255)
		--RenderText3(392, 248, string.format(Menu_Textos[GetLanguage()][4], Menu_VolumePosition), 65, 3)
		--RenderImage(32209, 375, 265, 98, 13)		
	--	Menu.CreateButton(4, Menu_VolumeSlider[Menu_VolumePosition], 140, 13, 13)
		--RenderImage(32207, Menu_VolumeSlider[Menu_VolumePosition], 265, 13, 13)
		
	--	RenderImage2(31591, 230, 176, 175, 2, 0.0, 0.0, 0.589624962, 1.0, 1, 1, 1.0)  --(NÃO MEXER)
		
		local btnStartY = 160
		for b = 5, 14 do		
			Menu.CreateButton(b, 250,btnStartY, 13,13)
			btnStartY = btnStartY+20
		end
		
		SetFontType(1)
		SetTextBg(0, 0, 0, 100)
		SetTextColor(255, 255, 255, 255)
		
		RenderText2(266, 161, string.format(Menu_Textos[GetLanguage()][5]), 1)
		
		if Menu_MonsterHealthBar == 1 then
			RenderImage2(31743 , 250, 160, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 160, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end
		
		-------------------------------------------------------------------------
		
		RenderText2(266, 180, string.format(Menu_Textos[GetLanguage()][6]), 1)
		
		if Menu_StaticEffect == 1 then
			RenderImage2(31743 , 250, 180, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 180, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end
		
		-------------------------------------------------------------------------		
		
		RenderText2(266, 200, string.format(Menu_Textos[GetLanguage()][7]), 1)
		
		if Menu_DynamicEffect == 1 then
			RenderImage2(31743 , 250, 200, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 200, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end

		-------------------------------------------------------------------------
		
		RenderText2(266, 221, string.format(Menu_Textos[GetLanguage()][8]), 1)
		
		if Menu_Glow == 1 then
			RenderImage2(31743 , 250, 220, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 220, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end

		-------------------------------------------------------------------------
		
		RenderText2(266, 241, string.format(Menu_Textos[GetLanguage()][9]), 1)
		
		if Menu_Shadow == 1 then
			RenderImage2(31743 , 250, 240, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 240, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end
		
		RenderText2(266, 261, string.format(Menu_Textos[GetLanguage()][10]), 1)
		
		if Menu_Wings == 1 then
			RenderImage2(31743 , 250, 260, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 260, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end
		
		RenderText2(266, 280, string.format(Menu_Textos[GetLanguage()][11]), 1)
		
		if Menu_AutoCtrl == 1 then
			RenderImage2(31743 , 250, 280, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 280, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
		end
		
		RenderText2(266, 300, string.format(Menu_Textos[GetLanguage()][12]), 1)
		
		if Menu_Object == 1 then
			RenderImage2(31743 , 250, 300, 13, 13, 0.0, 0.5, 1.0, 0.5, 1, 1, 1.0)
		else                               
			RenderImage2(31743 , 250, 300, 13, 13, 0.0, 0.0, 1.0, 0.5, 1, 1, 1.0)
			
		end
		
		
		
		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(255, 255, 255, 255)
		
		local TextMenu = string.format(Menu_Textos[GetLanguage()][14])
		
		RenderText3(275, 105, TextMenu, 120-#TextMenu, 3)
		
		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(232, 194, 118, 255)
		
		
		local TextMenu1 = string.format(Menu_Textos[GetLanguage()][15])
		
		RenderText3(265, 143, TextMenu1, 120-#TextMenu, 3)
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][16])
		
		RenderText3(130, 260, TextMenu2, 120-#TextMenu, 3)
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][17])
		
		RenderText3(143, 137, TextMenu2, 120-#TextMenu, 3)
		
		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(255, 255, 255, 255)
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][18])
		
		RenderText3(143, 275, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][20])
		
		RenderText3(143, 290, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][21])
		
		RenderText3(143, 304, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][22])
		
		RenderText3(143, 151, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][23])
		
		RenderText3(143, 166, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][24])
		
		RenderText3(143, 182, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][25])
		
		RenderText3(143, 196, TextMenu2, 120-#TextMenu, 3)
		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][26])
		
		RenderText3(143, 211, TextMenu2, 120-#TextMenu, 3)

		
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][27])
		
		RenderText3(400, 177, TextMenu2, 120-#TextMenu, 3)


		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][28])
		
		RenderText3(400, 192, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][29])
		
		RenderText3(400, 207, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][30])
		
		RenderText3(400, 222, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][31])
		
		RenderText3(400, 237, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][32])
		
		RenderText3(400, 252, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][33])
		
		RenderText3(400, 266, TextMenu2, 120-#TextMenu, 3)
	
		
		local TextMenu2 = string.format(Menu_Textos[GetLanguage()][34])
		
		RenderText3(400, 281, TextMenu2, 120-#TextMenu, 3)

		
		
		
		Menu.CreateButton(13, 441, 60, 86, 78)
		
		if Menu.CheckButton(13, MousePosX(), MousePosY()) then
			glColor4f(255, 255, 255, 0.1)
			RenderImage2(590060,  441, 60, 86, 79, 0.028000, 0.002000, 0.837000, 0.876000, 1, 1, 1)
		else
			RenderImage2(590060,  441, 60, 86, 79, 0.028000, 0.002000, 0.837000, 0.876000, 1, 1, 1)
		end
		
		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(255, 255, 255, 255)
		
				-- Dropdown Resolução
		if Menu_ResDropdown.Show then
			--isableAlphaBlend()
			--etBlend()
			--ocal starty = 291			
			--or i in ipairs(Menu_ResOptions) do
			--	if Menu_ResDropdownChange >= i then
			--		if MousePosX() >= 396 and MousePosX() <= 455 and MousePosY() >= starty and MousePosY() <= starty+14 or Menu_ResOptions[i].Value == Menu_CurrentRes then
			--			glColor4f(0.36, 0.36, 0.36, 0.9)
			--		else
			--			glColor4f(0.20, 0.20, 0.20, 0.9)
			--		end
			--		DrawBar(388, starty, 63, 14)
			--		glColor4f(0.14, 0.14, 0.14, 0.9)
			--		DrawBar(388, starty, 1, 14)
			--		DrawBar(388, starty, 1, 14)
			--		DrawBar(388, starty+14, 63, 1)					
			--	end
			--	starty = starty+15
			--nd
			glColor4f(0.25, 0.25, 0.25, 0.0)
			glColor3f( 1.0, 1.0, 1.0)
			GLSwitchBlend()
			GLSwitch()
			EnableAlphaTest()			
			local starty = 291			
			for i in ipairs(Menu_ResOptions) do
				if Menu_ResDropdownChange >= i then
					SetFontType(0)
					SetTextBg(0, 0, 0, 0)
					SetTextColor(255, 255, 255, 255)
					RenderText3(388, starty+4, string.format(Menu_ResOptions[i].Nome), 65, 3)			
				end
				starty = starty+15
			end			
		end
		if Menu_ResDropdownCount == 1 then
			if Menu_ResDropdownChange < #Menu_ResOptions then
				Menu_ResDropdownChange = Menu_ResDropdownChange+1
				Menu_ResDropdownCount = 0
			end
		else
			Menu_ResDropdownCount = Menu_ResDropdownCount + 1
		end

		
		-- Dropdown Fonte
		if Menu_FontDropdown.Show then
			--DisableAlphaBlend()
			--SetBlend()
			--local starty = 183			
			--for i in ipairs(Menu_Fonte) do
			--	if Menu_FontDropdownChange >= i then
			--		if MousePosX() >= 392 and MousePosX() <= 455 and MousePosY() >= starty and MousePosY() <= starty+14 or Menu_Fonte[i].Value == Menu_CurrentFont then
			--			glColor4f(0.4422, 0.465, 0.67, 0.9)
			--		else
			--			glColor4f(0.36, 0.36, 0.36, 0.9)
			--		end
			--		DrawBar(392, starty, 63, 14)
			--		glColor4f(0.14, 0.14, 0.14, 0.9)
			--		DrawBar(392, starty, 1, 14)
			--		DrawBar(455, starty, 1, 14)
			--		DrawBar(392, starty+14, 63, 1)					
			--	end
			--	starty = starty+15
			--end
			glColor4f(0.3944, 0.5372, 0.68, 0.0)
			glColor3f( 1.0, 1.0, 1.0)
			GLSwitchBlend()
			GLSwitch()
			EnableAlphaTest()			
			local starty = 183			
			for i in ipairs(Menu_Fonte) do
				if Menu_FontDropdownChange >= i then
					SetFontType(0)
					SetTextBg(0, 0, 0, 0)
					SetTextColor(255, 255, 255, 255)
					RenderText3(392, starty+4, string.format(Menu_Fonte[i].Nome), 65, 3)					
				end
				starty = starty+15
			end			
		end
		if Menu_FontDropdownCount == 1 then
			if Menu_FontDropdownChange < #Menu_Fonte then
				Menu_FontDropdownChange = Menu_FontDropdownChange+1
				Menu_FontDropdownCount = 0
			end
		else
			Menu_FontDropdownCount = Menu_FontDropdownCount + 1
		end
		
		DisableAlphaBlend()
	end
end

function Menu.KeyListener(key)
	if key == 27 then
		if UICustomInterface == Menu_WindowID then
			Menu.Close()
		end
	end
end

function Menu.ClickEvent()
	if UICustomInterface == Menu_WindowID then		
	
			local starty = 170			
			for i in ipairs(Menu_ResOptions) do
				if MousePosX() >= 300 and MousePosX() <= 900 and MousePosY() >= starty and MousePosY() <= starty+14 then
					Menu_CurrentRes = Menu_ResOptions[i].Value
					SetResolution(Menu_CurrentRes)
					Menu.RegisterWindowSetKey("Resolution", Menu_CurrentRes)
					Menu_CurrentFont = GetFontValue()
					-- DEFINE A RESOLUÇÃO ESCOLHIDA NO DROPDOWN
					Menu.SetResDropdownOff()
					return
				end
				starty = starty+15
			end
		
		
			local starty = 280			
			for i in ipairs(Menu_Idioma) do
				if MousePosX() >= 100 and MousePosX() <= 250 and MousePosY() >= starty and MousePosY() <= starty+14 then
					Menu_CurrentLang = Menu_Idioma[i].Value
					Menu.RegisterWindowSetStringKey("LangSelection", Menu_CurrentLang)
					SetLanguage(Menu_CurrentLang)
					-- DEFINE O IDIOMA ESCOLHIDO NO DROPDOWN
					Menu.SetLangDropdownOff()
					return
				end
				starty = starty+15
			end
		
			local starty = 152			
			for i in ipairs(Menu_Fonte) do
				if MousePosX() >= 100 and MousePosX() <= 250 and MousePosY() >= starty and MousePosY() <= starty+14 then
					Menu_CurrentFont = Menu_Fonte[i].Value
					SetFontValue(Menu_CurrentFont)
					Menu.RegisterWindowSetKey("FontValue", Menu_CurrentFont)
					-- DEFINE A FONTE ESCOLHIDA NO DROPDOWN
					Menu.SetFontDropdownOff()
					return
				end
				starty = starty+14
			end
		
		if Menu.CheckButton(5, MousePosX(), MousePosY()) 
		then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_MonsterHealthBar == 1 
			then 
				Menu_MonsterHealthBar = 0 
			else 
				Menu_MonsterHealthBar = 1 
			end
			
			SetHealthBarSwitch(Menu_MonsterHealthBar)
			Menu.RegisterWindowSetKey("HealthBarDisabled", Menu_MonsterHealthBar)
			return
		end
		
		if Menu.CheckButton(6, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_StaticEffect == 1 
			then 
				Menu_StaticEffect = 0 
				MemorySetByte(0x771310, 0x55)
			else 
				Menu_StaticEffect = 1 
				MemorySetByte(0x771310, 0xC3)
			end
			
			Menu.RegisterWindowSetKey("StaticEffectDisabled", Menu_StaticEffect)
			return
		end
		
		if Menu.CheckButton(7, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_DynamicEffect == 1 
			then 
				Menu_DynamicEffect = 0
				MemorySetByte(0x74CD30, 0x55)
			else 
				Menu_DynamicEffect = 1 
				MemorySetByte(0x74CD30, 0xC3)
			end
			
			Menu.RegisterWindowSetKey("DynamicEffectDisabled", Menu_DynamicEffect)
			return
		end
		
		if Menu.CheckButton(8, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_Glow == 1 
			then 
				Menu_Glow = 0 
				SetGlowSwitch(5)
			else 
				Menu_Glow = 1 
				SetGlowSwitch(0)
			end
			
			Menu.RegisterWindowSetKey("GlowDisabled", Menu_Glow)
			return
		end
		
		if Menu.CheckButton(9, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_Shadow == 1 
			then 
				Menu_Shadow = 0 
				MemorySetByte(0x54A270, 0x55)
			else 
				Menu_Shadow = 1 
				MemorySetByte(0x54A270, 0xC3)
			end
			
			Menu.RegisterWindowSetKey("ShadowDisable", Menu_Shadow)
			return
		end
		
		if Menu.CheckButton(10, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			if Menu_Wings == 1 
			then 
				Menu_Wings = 0 
			else 
				Menu_Wings = 1 
			end
			
			Menu.RegisterWindowSetKey("WingDisable", Menu_Wings)
			SetWingSwitch(Menu_Wings)
			return
		end
		
		if Menu.CheckButton(11, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_AutoCtrl == 1
			then
				MemorySetByte(0x0059AF44, 0x7D)
				MemorySetByte(0x0059B239, 0x7D)
				Menu_AutoCtrl = 0 
			else
				MemorySetByte(0x0059AF44, 0xEB)
				MemorySetByte(0x0059B239, 0xEB)
				Menu_AutoCtrl = 1 
			end
			
			Menu.RegisterWindowSetKey("AutoCtrl", Menu_AutoCtrl)
			return
		end
		
		if Menu.CheckButton(12, MousePosX(), MousePosY()) then
			if Menu_FontDropdown.Show or Menu_ResDropdown.Show or Menu_LangDropdown.Show 
			then 
				return 
			end
			
			if Menu_Object == 1 
			then 
				Menu_Object = 0 
				MemorySetByte(0x005EDFE0, 0x55);
			else 
				MemorySetByte(0x005EDFE0, 0xC3);
				Menu_Object = 1 
				MemorySetByte(0x005EDFE0, 0xC3);
			end
			
			Menu.RegisterWindowSetKey("ObjectDisable", Menu_Object)
			return
		end
		
		if Menu.CheckButton(13, MousePosX(), MousePosY()) then
			Menu.Close()
			return
		end
		
		
		if MousePosX() >= Menu_VolumeArea.X1 and MousePosX() <= Menu_VolumeArea.X2 and MousePosY() >= Menu_VolumeArea.Y1 and MousePosY() <= Menu_VolumeArea.Y2 then
			if Menu_ResDropdown.Show or Menu_FontDropdown.Show or Menu_LangDropdown.Show then return end
			
			for i = 0, 10 do
				if MousePosX() >= Menu_VolumeSlider[i] and MousePosX() <= Menu_VolumeSlider[i] + 9 then
					Menu_VolumePosition = i
					-- DEFINE O VOLUME ESCOLHIDO COM CLIQUE DO MOUSE NA BARRA
					SetVolume(i)
					Menu.RegisterWindowSetKey("VolumeLevel", i)
					
					
					if i <= 0
					then
						Menu.RegisterWindowSetKey("SoundOnOff", 1)
						Menu.RegisterWindowSetKey("MusicOnOff", 1)
					else
						Menu.RegisterWindowSetKey("SoundOnOff", 0)
						Menu.RegisterWindowSetKey("MusicOnOff", 0)
					end
				end
			end
			return
		end		
	end
end

function Menu.SetResDropdownOff()
	Menu_ResDropdown = {Show = false, Change = 0}
end

function Menu.SetLangDropdownOff()
	Menu_LangDropdown = {Show = false, Change = 0}
end

function Menu.SetFontDropdownOff()
	Menu_FontDropdown = {Show = false, Change = 0}
end

function Menu.UpdateMouse()
	if UICustomInterface == Menu_WindowID then
		if MousePosX() >= 140 and MousePosX() <= 490 and MousePosY() >= 70 and MousePosY() <= 340 then
			DisableClickClient()
			return
		end
	end
end

--function Menu.UpdateProc()
--	if CheckWindowOpen(UIOptions) == 1 then
--		Menu.Open()
--	end
--end

function Menu.UpdateProc()
    if CheckPressedKey(Keys.End) == 1
    then
        Menu.Open()
    end
end

function Menu.ScrollMouse(Direction)
	if CheckWindowOpen(UIOptions) == 1 then
		if MousePosX() >= Menu_VolumeArea.X1 and MousePosX() <= Menu_VolumeArea.X2 and MousePosY() >= Menu_VolumeArea.Y1 and MousePosY() <= Menu_VolumeArea.Y2 then
			if Menu_ResDropdown.Show or Menu_FontDropdown.Show or Menu_LangDropdown.Show then return end
			
			if Direction > 0 then
				if Menu_VolumePosition < 10 then
					Menu_VolumePosition = Menu_VolumePosition + 1
					-- AUMENTA UM NIVEL DO VOLUME
				end
			else
				if Menu_VolumePosition > 0 then
					Menu_VolumePosition = Menu_VolumePosition - 1
					-- DIMINUI UM NIVEL DO VOLUME
				end
			end
			return
		end
	end
end

function Menu.RegisterWindowGetKey(keyValue)
	return getValueRegKey(keyValue)
end

function Menu.RegisterWindowSetKey(keyValue, value)
	setValueRegKey(keyValue, value)
end

function Menu.RegisterWindowGetStringKey(keyValue, size)
	return getStringRegKey(keyValue, size)
end

function Menu.RegisterWindowSetStringKey(keyValue, value)
	setStringRegKey(keyValue, value)
end

function Menu.FinalBoot()
	local getRegisterFontValue = Menu.RegisterWindowGetKey("FontValue")
	
	if (getRegisterFontValue ~= -1)
	then
		SetFontValue(getRegisterFontValue)
	end
	
	local getHealthBarDisabled = Menu.RegisterWindowGetKey("HealthBarDisabled")
	
	if (getHealthBarDisabled ~= -1)
	then
		Menu_MonsterHealthBar = getHealthBarDisabled
		SetHealthBarSwitch(Menu_MonsterHealthBar)
	else
		Menu_MonsterHealthBar = 0
		SetHealthBarSwitch(Menu_MonsterHealthBar)
	end
	
	local getStaticEffectDisabled = Menu.RegisterWindowGetKey("StaticEffectDisabled")
	
	if (getStaticEffectDisabled ~= -1)
	then
		Menu_StaticEffect = getStaticEffectDisabled
		
		if Menu_StaticEffect == 1
		then
			MemorySetByte(0x771310, 0xC3)
		else
			MemorySetByte(0x771310, 0x55)
		end
	else
		Menu_StaticEffect = 0
		MemorySetByte(0x771310, 0x55)
	end
	
	local getDynamicEffectDisabled = Menu.RegisterWindowGetKey("DynamicEffectDisabled")
	
	if (getDynamicEffectDisabled ~= -1)
	then
		Menu_DynamicEffect = getDynamicEffectDisabled
		
		if Menu_DynamicEffect == 1
		then
			MemorySetByte(0x74CD30, 0xC3)
		else
			MemorySetByte(0x74CD30, 0x55)
		end
	else
		Menu_DynamicEffect = 0
		MemorySetByte(0x74CD30, 0x55)
	end
	
	local getGlowDisabled = Menu.RegisterWindowGetKey("GlowDisabled")
	
	if (getGlowDisabled ~= -1)
	then
		Menu_Glow = getGlowDisabled
		
		if Menu_Glow == 1
		then
			SetGlowSwitch(0)
		else
			SetGlowSwitch(5)
		end
	else
		Menu_Glow = 0
		SetGlowSwitch(5)
	end
	
	local getShadowDisable = Menu.RegisterWindowGetKey("ShadowDisable")
	
	if (getShadowDisable ~= -1)
	then
		Menu_Shadow = getShadowDisable
		
		if Menu_Shadow == 1
		then
			MemorySetByte(0x54A270, 0xC3)
		else
			MemorySetByte(0x54A270, 0x55)
		end
	else
		Menu_Shadow = 0
		MemorySetByte(0x54A270, 0x55)
	end
	
	local getWingDisabled = Menu.RegisterWindowGetKey("WingDisable")
	
	if (getWingDisabled ~= -1)
	then
		Menu_Wings = getWingDisabled
		SetWingSwitch(Menu_Wings)
	else
		Menu_Wings = 0
		SetWingSwitch(Menu_Wings)
	end
	
	local getAutoCtrl = Menu.RegisterWindowGetKey("AutoCtrl")
	
	if (getAutoCtrl ~= -1)
	then
		Menu_AutoCtrl = getAutoCtrl
		
		if Menu_AutoCtrl == 1
		then
			MemorySetByte(0x0059AF44, 0xEB)
			MemorySetByte(0x0059B239, 0xEB)
		else
			MemorySetByte(0x0059AF44, 0x7D)
			MemorySetByte(0x0059B239, 0x7D)
		end
	else
		Menu_AutoCtrl = 0
		MemorySetByte(0x0059AF44, 0x7D)
		MemorySetByte(0x0059B239, 0x7D)
	end
	
	local getObjectDisable = Menu.RegisterWindowGetKey("ObjectDisable")
	
	if (getObjectDisable ~= -1)
	then
		Menu_Object = getObjectDisable
		
		if Menu_Object == 1
		then
			MemorySetByte(0x005EDFE0, 0xC3);
		else
			MemorySetByte(0x005EDFE0, 0x55);
		end
	else
		Menu_Object = 0
		MemorySetByte(0x005EDFE0, 0x55);
	end
end

function Menu.Start()
	if MENU_SETTINGS_SWITCH == 0
	then
		return
	end
	
	InterfaceController.MainProc(Menu.MainProc)
	InterfaceController.MainProcWorldKey(Menu.KeyListener)
	InterfaceController.InterfaceClickEvent(Menu.ClickEvent)
	InterfaceController.UpdateMouse(Menu.UpdateMouse)
	InterfaceController.UpdateProc(Menu.UpdateProc)
	InterfaceController.ScrollMouse(Menu.ScrollMouse)
	InterfaceController.FinalBoot(Menu.FinalBoot)
end

Menu.Start()

return Menu