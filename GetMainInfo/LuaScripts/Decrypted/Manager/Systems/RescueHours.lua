NPCHoras = {}

--#region REGISTRA FUNÇÕES DO SISTEMA
function NPCHoras.Init()
	InterfaceController.BeforeMainProc(NPCHoras.Interface)
	InterfaceController.MainProc(NPCHoras.AfterInterface)
	InterfaceController.ClientProtocol(NPCHoras.Protocol)
	InterfaceController.MainProcWorldKey(NPCHoras.KeyListener)
	InterfaceController.InterfaceClickEvent(NPCHoras.ClickEvent)
	InterfaceController.ScrollMouse(NPCHoras.ScrollMouse)
	InterfaceController.UpdateMouse(NPCHoras.UpdateMouse)


	NPCHoras.Define()
end
--#endregion

--#region DEFINE VARIAVEIS
function NPCHoras.Define()
	NPCHoras_Config.Saldo = 0
	NPCHoras_Config.WorkArea = {X1 = 260, X2 = 450, Y1 = 0, Y2 = 429}
	NPCHoras_Config.WindowOffset = 0
	NPCHoras_Config.AlertWindow = {Show = false, Type = 0}
	NPCHoras_Config.Brindes = {}
	NPCHoras_Config.Itemid = 1
	NPCHoras_Config.ShortLista = {}
	NPCHoras_Config.ShortListaConfig = {Offset = 0, Count = 6, Steps = 0, CurrentStep = 0, Selected = {}}
	NPCHoras_Config.Area = {sx = 260, ex = 450}
	NPCHoras_Config.Button = {}
	NPCHoras_Config.ButtonID = {
		fechar = 1,
		acessar = 2,
		ok = 3,
		cancel = 4,
		up = 5,
		--down = 6,
	}
end
--#endregion

--#region ABRE A JANELA
function NPCHoras.Open()
	if	CheckWindowOpen(UIFriendList)		== 1	then	return							end
	if	CheckWindowOpen(UIMoveList)			== 1	then	return							end
	if	CheckWindowOpen(UIParty)			== 1	then	CloseWindow(UIParty)			end
	if	CheckWindowOpen(UIQuest)			== 1	then	return							end
	if	CheckWindowOpen(UIGuild)			== 1	then	CloseWindow(UIGuild)			end
	if	CheckWindowOpen(UIGuildNpc)			== 1	then	CloseWindow(UIGuild)			end
	if	CheckWindowOpen(UITrade)			== 1	then	return							end
	if	CheckWindowOpen(UIWarehouse)		== 1	then	return							end
	if	CheckWindowOpen(UIChaosBox)			== 1	then	return							end
	if	CheckWindowOpen(UICommandWindow)	== 1	then	return							end
	if	CheckWindowOpen(UIPetInfo)			== 1	then	return							end
	if	CheckWindowOpen(UIShop)				== 1	then	return							end
	if	CheckWindowOpen(UIStore)			== 1	then	CloseWindow(UIStore)			end
	if	CheckWindowOpen(UIOtherStore)		== 1	then	return							end
	if	CheckWindowOpen(UICharacter)		== 1	then	CloseWindow(UICharacter)		end
	if	CheckWindowOpen(UIOptions)			== 1	then	return							end
	if	CheckWindowOpen(UIHelp)				== 1	then	return							end
	if	CheckWindowOpen(UIFastDial)			== 1	then	return							end
	if	CheckWindowOpen(UISkillTree)		== 1	then	return							end
	if	CheckWindowOpen(UINPC_Titus)		== 1	then	return							end
	if	CheckWindowOpen(UICashShop)			== 1	then	return							end
	if	CheckWindowOpen(UIFullMap)			== 1	then	return							end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	return							end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	CloseWindow(UIGensInfo)			end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	return							end
	OpenWindow(UIInventory)
	UICustomInterface = NPCHoras_Config.WindowID
end
--#endregion

--#region FECHA A JANELA
function NPCHoras.Close()
	CloseWindow(UIInventory)
	UICustomInterface = 0
	NPCHoras.Define()
end
--#endregion

--#region VERIFICA JANELA ABERTA E AREA PROTEGIDA DA TELA
function NPCHoras.CheckOpen()
	if UICustomInterface == NPCHoras_Config.WindowID then return true else return false end
end

function NPCHoras.RequestOpen()
	local pname = string.format("9-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(pname, NPCHoras_Config.Packet)
	SendPacket(pname)
	ClearPacket(pname)
end

function NPCHoras.CheckArea(x)
	if x >= NPCHoras_Config.Area.sx-NPCHoras_Config.WindowOffset and x <= NPCHoras_Config.Area.ex-NPCHoras_Config.WindowOffset then
		return true
	end
	return false
end
--#endregion

--#region FUNÇÕES DE BOTÃO
function NPCHoras.CreateButton(ButtonID, x, y, w, h)
    -- Inicializa as tabelas se não existirem
    NPCHoras_Config = NPCHoras_Config or {}
    NPCHoras_Config.Button = NPCHoras_Config.Button or {}

    -- Verifica se ButtonID é válido
    if type(ButtonID) ~= "number" and type(ButtonID) ~= "string" then
        error("ButtonID deve ser um número ou string")
    end

    -- Cria ou atualiza o botão
    if NPCHoras_Config.Button[ButtonID] == nil then
        -- Se precisar manter uma lista de IDs, use um array separado
        -- table.insert(NPCHoras_Config.ButtonIDs, ButtonID)  -- Opcional

        NPCHoras_Config.Button[ButtonID] = {
            x = x,
            y = y,
            w = w,
            h = h,
            clicked = true,
            timer = 0
        }
    else
        -- Atualiza os valores se o botão já existe
        NPCHoras_Config.Button[ButtonID].x = x
        NPCHoras_Config.Button[ButtonID].y = y
        NPCHoras_Config.Button[ButtonID].w = w
        NPCHoras_Config.Button[ButtonID].h = h
    end
end

function NPCHoras.ButtonClicked(ButtonID)
	if NPCHoras_Config.Button[ButtonID] == nil then return false end
	if NPCHoras_Config.Button[ButtonID].clicked then
		if NPCHoras_Config.Button[ButtonID].timer >= 2 then
			NPCHoras_Config.Button[ButtonID].timer = 0
			NPCHoras_Config.Button[ButtonID].clicked = false
			return false
		end
		NPCHoras_Config.Button[ButtonID].timer = NPCHoras_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function NPCHoras.ButtonMouseOver(ButtonID, x, y)
	if NPCHoras_Config.Button[ButtonID] == nil then return false end
	if x >= NPCHoras_Config.Button[ButtonID].x and x <= (NPCHoras_Config.Button[ButtonID].x+NPCHoras_Config.Button[ButtonID].w) then
		if y >= NPCHoras_Config.Button[ButtonID].y and y <= (NPCHoras_Config.Button[ButtonID].y+NPCHoras_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end
--#endregion

--#region BARRA DE ROLAGEM ITENS
function NPCHoras.GerarScrollBarItem()
	NPCHoras_Config.ShortListaConfig.Steps = #NPCHoras_Config.Brindes-#NPCHoras_Config.ShortLista
end

function NPCHoras.GerarListaItem()
	local count = 1

	NPCHoras_Config.ShortLista = {}
	for i in ipairs(NPCHoras_Config.Brindes) do
		if i > NPCHoras_Config.ShortListaConfig.Offset then
			if count <= NPCHoras_Config.ShortListaConfig.Count then
				table.insert(NPCHoras_Config.ShortLista, NPCHoras_Config.Brindes[i])
				count = count + 1
			end
		end
	end
end
--#endregion

--#region INTERFACE AFTER
function NPCHoras.AfterInterface()
	if not NPCHoras.CheckOpen() then return end
	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.ok, 0, 0, 0,0)
	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.cancel, 0, 0, 0,0)
	--#region Check outras interfaces
	if	CheckWindowOpen(UIInventory) 		== 0	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFriendList) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIMoveList)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIParty) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIQuest) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGuild) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGuildNpc) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UITrade) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIWarehouse) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIChaosBox)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICommandWindow) 	== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIPetInfo)	 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIShop)				== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIStore) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIOtherStore) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICharacter) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIOptions) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIHelp)				== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFastDial)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UISkillTree) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Titus) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICashShop)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFullMap) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	NPCHoras.Close()	end
	--#endregion
	local offset = WindowGetWidth()-640
	DisableAlphaBlend()

	if NPCHoras_Config.ShortListaConfig.Selected.ListID ~= nil then
		local selected = NPCHoras_Config.ShortListaConfig.Selected
		
		
		local offset = offset or 0
		CreateItem(
			selected.Pos.X + offset - (NPCHoras_Config.WindowOffset or 0),
			selected.Pos.Y,
			selected.Pos.W,
			selected.Pos.H,
			selected.Index,
			selected.Level,
			0, 0, 1.0
		)
		EndDrawBar()
		
		local mouseX, mouseY = MousePosX() or 0, MousePosY() or 0
		if mouseX >= selected.Pos.X + offset and mouseX <= selected.Pos.X + offset + selected.Pos.W then
			if mouseY >= selected.Pos.Y and mouseY <= selected.Pos.Y + selected.Pos.H then
				SetBlend(1)
				ShowItemDescription(
					mouseX, mouseY,
					selected.Index,
					selected.Level,
					selected.Skill or 0,
					selected.Luck or 0,
					selected.Opt or 0,
					selected.Dur or 0,
					selected.Exc or 0,
					0
				)
				EndDrawBar()
			end
		end
	end

	EnableAlphaTest()

	if NPCHoras_Config.AlertWindow.Show then
		local addX = WindowGetWidthAdd()
		RenderImage2(40040, 190+addX, 77, 225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)
		RenderImage2(40063, 190+addX, 110, 225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)
		SetFontType(0)			
		SetTextBg(0, 0, 0, 0)				
		SetTextColor(247, 239, 200, 255)

		if NPCHoras_Config.AlertWindow.Type == 0 then
			-- ALERTA CONFIRMAÇÃO			
			NPCHoras.CreateButton(NPCHoras_Config.ButtonID.ok, 220+addX, 120, 60, 18)
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.ok, MousePosX(), MousePosY()) then
				RenderImage2(40031, 220+addX, 120, 55, 21, 0.009000, 0.212000, 0.610000, 0.180000, 1, 1, 1.0)
			else
				RenderImage2(40031, 220+addX, 120, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
			end

			NPCHoras.CreateButton(NPCHoras_Config.ButtonID.cancel, 320+addX, 120, 60, 18)
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.cancel, MousePosX(), MousePosY()) then
				RenderImage2(40031, 320+addX, 120, 55, 21, 0.009000, 0.212000, 0.610000, 0.180000, 1, 1, 1.0)
			else
				RenderImage2(40031, 320+addX, 120, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
			end
			
			RenderText3(248+addX, 126, NPCHoras_Config.Texts[GetLanguage()][17], 200, 8)
			RenderText3(348+addX, 126, NPCHoras_Config.Texts[GetLanguage()][18], 200, 8)

			RenderText3(302+addX, 85, string.format(NPCHoras_Config.Texts[GetLanguage()][11], NPCHoras_Config.ShortListaConfig.Selected.Valor), 200, 8)
			RenderText3(302+addX, 95, NPCHoras_Config.Texts[GetLanguage()][12], 200, 8)
		else
			NPCHoras.CreateButton(NPCHoras_Config.ButtonID.ok, 270+addX, 120, 60, 18)
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.ok, MousePosX(), MousePosY()) then
				RenderImage2(40031, 270+addX, 120, 55, 21, 0.009000, 0.212000, 0.610000, 0.180000, 1, 1, 1.0)
			else
				RenderImage2(40031, 270+addX, 120, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
			end
			
			RenderText3(298+addX, 126, NPCHoras_Config.Texts[GetLanguage()][17], 200, 8)

			if NPCHoras_Config.AlertWindow.Type == 1 then -- sucesso
				RenderText3(302+addX, 90, string.format(NPCHoras_Config.Texts[GetLanguage()][13]), 200, 8)
			end
			if NPCHoras_Config.AlertWindow.Type == 2 then --  erro config
				RenderText3(302+addX, 90, string.format(NPCHoras_Config.Texts[GetLanguage()][14]), 200, 8)
			end
			if NPCHoras_Config.AlertWindow.Type == 3 then -- falta saldo
				RenderText3(302+addX, 90, string.format(NPCHoras_Config.Texts[GetLanguage()][16]), 200, 8)
			end
			if NPCHoras_Config.AlertWindow.Type == 4 then -- falta espaço
				RenderText3(302+addX, 90, string.format(NPCHoras_Config.Texts[GetLanguage()][15]), 200, 8)
			end
		end
	end
	DisableAlphaBlend()

end
--#endregion

--#region INTERFACE BEFORE
function NPCHoras.Interface()
	if not NPCHoras.CheckOpen() then return end
	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.fechar,0, 0, 0, 0)
	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.acessar,0, 0, 0, 0)
	--NPCHoras.CreateButton(NPCHoras_Config.ButtonID.up, 0, 0, 0, 0)
    --NPCHoras.CreateButton(NPCHoras_Config.ButtonID.down, 0, 0, 0, 0)

	--#region Check outras interfaces
	if	CheckWindowOpen(UIInventory) 		== 0	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFriendList) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIMoveList)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIParty) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIQuest) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGuild) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGuildNpc) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UITrade) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIWarehouse) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIChaosBox)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICommandWindow) 	== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIPetInfo)	 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIShop)				== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIStore) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIOtherStore) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICharacter) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIOptions) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIHelp)				== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFastDial)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UISkillTree) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Titus) 		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UICashShop)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIFullMap) 			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	NPCHoras.Close()	end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	NPCHoras.Close()	end
	--#endregion

	local offset = WindowGetWidth()-640
	EnableAlphaTest()
	RenderImage2(40046, 260+offset-NPCHoras_Config.WindowOffset, 0, 191, 429, 0.0, 1.0, 0.83, 0.935, 1, 1, 1.0)

	SetFontType(1)
	SetTextBg(0, 0, 0, 255)
	SetTextColor(255, 255, 255, 240)
	RenderText3(355+offset-NPCHoras_Config.WindowOffset, 12, NPCHoras_Config.Texts[GetLanguage()][1], 80, 8)

	SetFontType(1)
	SetTextBg(0, 0, 0, 0)		
	SetTextColor(250, 208, 10, 255)
	RenderText3(355+offset-NPCHoras_Config.WindowOffset, 47, NPCHoras_Config.Texts[GetLanguage()][2], 150, 8)

	SetFontType(1)
	SetTextBg(255, 100, 0, 150)
	SetTextColor(255, 255, 255, 200)
	local tid = 6
	if NPCHoras_Config.Saldo == 1 then
		tid = 7
	end
	RenderText3(355+offset-NPCHoras_Config.WindowOffset, 60, string.format(NPCHoras_Config.Texts[GetLanguage()][tid], NPCHoras_Config.Saldo), 160, 8)

	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.fechar,470+offset, 395, 24, 24)

	DisableAlphaBlend()

	SetBlend(1)
	glColor4f(0.2, 0.2, 0.2, 0.4)
	DrawBar(278+offset-NPCHoras_Config.WindowOffset, 225, 155, 20)
	glColor4f(0, 0, 0, 0.4)
	DrawBar(278+offset-NPCHoras_Config.WindowOffset, 225, 155, 188)
	DrawBar(278+offset-NPCHoras_Config.WindowOffset, 75, 155, 115)

	glColor4f(0.54, 0.422, 0.2322, 0.7)
	--DrawBox(277+offset-NPCHoras_Config.WindowOffset, 74, 157, 117)
	--DrawBox(277+offset-NPCHoras_Config.WindowOffset, 224, 157, 190)
	glColor4f(0.8, 0.8, 0.8, 0.1)

	EndDrawBar()

	EnableAlphaTest()

	--#region SCROLL BAR UP
		local stateUp = 0
		NPCHoras.CreateButton(NPCHoras_Config.ButtonID.acessar, 412+offset-NPCHoras_Config.WindowOffset, 251, 14, 14)
		if not NPCHoras.ButtonClicked(NPCHoras_Config.ButtonID.acessar) then
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.acessar, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					stateUp = 2
				else
					stateUp = 1
				end
			else
				stateUp = 0
			end
		else
			stateUp = 0
		end
		DrawScroll.Up(stateUp, 412+offset-NPCHoras_Config.WindowOffset, 251, 14, 14)
	--#endregion

	--#region SCROLL BAR DOWN
		local stateDown = 0
		NPCHoras.CreateButton(NPCHoras_Config.ButtonID.acessar, 412+offset-NPCHoras_Config.WindowOffset, 391, 14, 14)
		if not NPCHoras.ButtonClicked(NPCHoras_Config.ButtonID.acessar) then
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.acessar, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					stateDown = 2
				else
					stateDown = 1
				end
			else
				stateDown = 0
			end
		else
			stateDown = 0
		end
		DrawScroll.Down(stateDown, 412+offset-NPCHoras_Config.WindowOffset, 391, 14, 14)
	--#endregion

	--RenderImage(31270, 413+offset-NPCHoras_Config.WindowOffset, 251, 7, 3) -- topo	
	for i = 254, 396, 15 do
		--RenderImage(31271, 413+offset-NPCHoras_Config.WindowOffset, i, 7, 15) -- meio
	end
	--RenderImage(31272, 413+offset-NPCHoras_Config.WindowOffset, 401, 7, 3) -- baixo

	local cursorPos = 246 + (NPCHoras_Config.ShortListaConfig.CurrentStep*(96/(#NPCHoras_Config.Brindes-6)))
	if tostring(cursorPos) == "nan" or tostring(cursorPos) == "-nan" then cursorPos = 246 end
	--RenderImage(31273, 409+offset-NPCHoras_Config.WindowOffset, cursorPos, 15, 30)
	DrawScroll.Middle(0, 412+offset-NPCHoras_Config.WindowOffset, cursorPos+19, 14, 30)

	NPCHoras.CreateButton(NPCHoras_Config.ButtonID.acessar, 310+offset-NPCHoras_Config.WindowOffset, 195, 90, 24)
	local state = 0
	if NPCHoras_Config.ShortListaConfig.Selected.ListID ~= nil and NPCHoras_Config.ShortListaConfig.Selected.Valor < NPCHoras_Config.Saldo then
		if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.acessar, MousePosX(), MousePosY()) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				state = 2
			else
				state = 1
			end
		end
	else
		state = 4
	end
	if NPCHoras.ButtonClicked(NPCHoras_Config.ButtonID.acessar) then
		state = 2
	end
	DrawButton.Large(state, 310+offset-NPCHoras_Config.WindowOffset, 195, 90, 24)

	DisableAlphaBlend()

	EnableAlphaTest()

	SetFontType(0)
	SetTextBg(0, 0, 0, 0)
	if NPCHoras_Config.ShortListaConfig.Selected.ListID ~= nil then
		SetFontType(0)
		SetTextBg(0, 0, 0, 0)
		if NPCHoras_Config.ShortListaConfig.Selected.Valor > NPCHoras_Config.Saldo then
			SetTextColor(200, 200, 200, 200)
		else
			SetTextColor(255, 255, 255, 200)
		end
		RenderText3(355+offset-NPCHoras_Config.WindowOffset, 203, NPCHoras_Config.Texts[GetLanguage()][8], 100, 8)
		SetFontType(1)
		SetTextBg(255, 208, 0, 0)
		SetTextColor(255, 208, 10, 255)
		RenderText3(355+offset-NPCHoras_Config.WindowOffset, 232, string.format(NPCHoras_Config.Texts[GetLanguage()][10], NPCHoras_Config.ShortListaConfig.Selected.Valor), 110, 8)
	else
		SetFontType(0)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(200, 200, 200, 200)
		RenderText3(355+offset-NPCHoras_Config.WindowOffset, 203, NPCHoras_Config.Texts[GetLanguage()][8], 100, 8)
		SetFontType(1)
		SetTextBg(255, 208, 0, 0)
		SetTextColor(255, 208, 10, 255)
		RenderText3(355+offset-NPCHoras_Config.WindowOffset, 232, NPCHoras_Config.Texts[GetLanguage()][9], 110, 8)
	end

	SetFontType(0)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(255, 255, 255, 255)
	local line = 263

	for i in ipairs(NPCHoras_Config.ShortLista) do
		SetBlend()
		glColor4f(0.2, 0.2, 0.2, 0.6)
		DrawBar(285+offset-NPCHoras_Config.WindowOffset, line+15, 120, 1)
		EndDrawBar()

		if MousePosX() >= 285+offset-NPCHoras_Config.WindowOffset and MousePosX() <= 285+offset-NPCHoras_Config.WindowOffset+120 and MousePosY() >= line-10 and MousePosY() <= line-10+24 then
			if NPCHoras_Config.ShortLista[i].ListID == NPCHoras_Config.ShortListaConfig.Selected.ListID then
				SetBlend()
				glColor4f(0.10, 0.10, 0.10, 1.8)
				DrawBar(285+offset-NPCHoras_Config.WindowOffset, line-10, 120, 25)
				EndDrawBar()
			else
				SetBlend()
				glColor4f(0.2, 0.2, 0.2, 0.6)
				DrawBar(285+offset-NPCHoras_Config.WindowOffset, line-10, 120, 25)
				EndDrawBar()
			end
		else
			if NPCHoras_Config.ShortListaConfig.Selected.ListID ~= nil then
				if NPCHoras_Config.ShortLista[i].ListID == NPCHoras_Config.ShortListaConfig.Selected.ListID then
					SetBlend()
					glColor4f(0.0, 1.0, 0.0, 0.25)
					DrawBar(285+offset-NPCHoras_Config.WindowOffset, line-10, 120, 25)
					EndDrawBar()
				else
					SetTextColor(255, 255, 255, 255)
				end
			else
				SetTextColor(255, 255, 255, 255)
			end
		end

		RenderImage2(40065, 290+offset-NPCHoras_Config.WindowOffset, line+2, 5, 5, 0, 0, 0.591827401425252121, 0.591827401425252121, 1, 1, 1.0)
		RenderText3(300+offset-NPCHoras_Config.WindowOffset, line, GetNameByIndex(NPCHoras_Config.ShortLista[i].Index), 150, ALIGN_LEFT)
		line = line+25
	end

	DisableAlphaBlend()
end
--#endregion

--#region DETECTA TECLADO
function NPCHoras.KeyListener(key)
	if CheckWindowOpen(UIChatWindow) == 1 then return false end

	if not NPCHoras.CheckOpen() then return false end
		
	if key == Keys.Escape or key == Keys.I or key == Keys.V then
		NPCHoras.Close()
		return true
	end	
end
--#endregion

--#region DETECA CLIQUE ESQUERDO MOUSE
function NPCHoras.ClickEvent()
	if not NPCHoras.CheckOpen() then return false end
	local x = MousePosX()
	local y = MousePosY()
	local offset = WindowGetWidth()-640

	if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.fechar, (x+NPCHoras_Config.WindowOffset), y) then
		NPCHoras.Close()
		return true
	end

	if NPCHoras_Config.AlertWindow.Show then
		if NPCHoras_Config.AlertWindow.Type == 0 then
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.ok, x, y) then
				NPCHoras.RetirarItem()
				NPCHoras_Config.AlertWindow.Show = false
				NPCHoras_Config.AlertWindow.Type = 0
			end
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.cancel, x, y) then
				NPCHoras_Config.AlertWindow.Show = false
				NPCHoras_Config.AlertWindow.Type = 0
			end
		else
			if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.ok, x, y) then
				NPCHoras_Config.AlertWindow.Show = false
				NPCHoras_Config.AlertWindow.Type = 0
			end
		end

		return true
	end

	--if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.up, MousePosX(), MousePosY()) then
	--	NPCHoras_Config.Button[NPCHoras_Config.ButtonID.up].clicked = true
	--	if NPCHoras_Config.ShortListaConfig.CurrentStep > 0 then
	--		NPCHoras_Config.ShortListaConfig.CurrentStep = NPCHoras_Config.ShortListaConfig.CurrentStep - 1
	--		NPCHoras_Config.ShortListaConfig.Offset = NPCHoras_Config.ShortListaConfig.Offset - 1
	--		NPCHoras.GerarListaItem()
	--	end
	--	return
	--end
	--
	--if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.down, MousePosX(), MousePosY()) then
	--	NPCHoras_Config.Button[NPCHoras_Config.ButtonID.down].clicked = true
	--	if NPCHoras_Config.ShortListaConfig.CurrentStep < NPCHoras_Config.ShortListaConfig.Steps then
	--		NPCHoras_Config.ShortListaConfig.CurrentStep = NPCHoras_Config.ShortListaConfig.CurrentStep + 1
	--		NPCHoras_Config.ShortListaConfig.Offset = NPCHoras_Config.ShortListaConfig.Offset + 1
	--		NPCHoras.GerarListaItem()
	--	end
	--	return
	--end

	if NPCHoras.ButtonMouseOver(NPCHoras_Config.ButtonID.acessar, x, y) then
		if NPCHoras_Config.ShortListaConfig.Selected.ListID ~= nil then
			if NPCHoras_Config.ShortListaConfig.Selected.Valor < NPCHoras_Config.Saldo then
				NPCHoras_Config.Button[NPCHoras_Config.ButtonID.acessar].clicked = true
				NPCHoras_Config.AlertWindow.Type = 0
				NPCHoras_Config.AlertWindow.Show = true
			end
		end
		return true
	end

	local line = 263
	if x >= 285+offset-NPCHoras_Config.WindowOffset and x <= 400+offset-NPCHoras_Config.WindowOffset then
		for i in ipairs(NPCHoras_Config.ShortLista) do
			if y >= line+1 and y <= line+25 then
				NPCHoras_Config.ShortListaConfig.Selected = NPCHoras_Config.ShortLista[i]
				return true
			end
			line = line+25
		end
	end

	return false
end
--#endregion

--#region DETECTA SCROLL DO MOUSE
function NPCHoras.ScrollMouse(Direction)
	local x = MousePosX()
	local y = MousePosY()
	local offset = WindowGetWidth()-640
	if NPCHoras.CheckOpen() then
		if NPCHoras_Config.AlertWindow.Show then return 1 end

		local area = {x1 = 300, x2 = 435, y1 = 280, y2 = 410}
		if x >= area.x1+offset-NPCHoras_Config.WindowOffset and x <= area.x2+offset-NPCHoras_Config.WindowOffset and y >= area.y1 and y <= area.y2 then
			if Direction > 0 then
				if NPCHoras_Config.ShortListaConfig.CurrentStep > 0 then
					NPCHoras_Config.ShortListaConfig.CurrentStep = NPCHoras_Config.ShortListaConfig.CurrentStep - 1
					NPCHoras_Config.ShortListaConfig.Offset = NPCHoras_Config.ShortListaConfig.Offset - 1
					NPCHoras.GerarListaItem()
				end
			elseif Direction < 0 then
				if NPCHoras_Config.ShortListaConfig.CurrentStep < NPCHoras_Config.ShortListaConfig.Steps then
					NPCHoras_Config.ShortListaConfig.CurrentStep = NPCHoras_Config.ShortListaConfig.CurrentStep + 1
					NPCHoras_Config.ShortListaConfig.Offset = NPCHoras_Config.ShortListaConfig.Offset + 1
					NPCHoras.GerarListaItem()
				end
			end
			return 1
		end
	end
	
	return 0
end
--#endregion

--#region RECEBE PACKETS DO SERVIDOR
function NPCHoras.Protocol(Packet, PacketName)
	if Packet == NPCHoras_Config.Packet then
		if PacketName == string.format("1-%s-%d", UserGetName(), UserGetIndex()) then
			NPCHoras_Config.Saldo = GetDwordPacket(PacketName, -1)
			NPCHoras_Config.Itemid = GetBytePacket(PacketName, -1)
			local qtd = GetBytePacket(PacketName, -1)
			NPCHoras_Config.Brindes = {}
			for i = 1, qtd do
				local listID     = GetBytePacket (PacketName, -1)
				local price      = GetDwordPacket(PacketName, -1)
				local index      = GetWordPacket (PacketName, -1)
				local level      = GetBytePacket (PacketName, -1)
				local skill      = GetBytePacket (PacketName, -1)
				local luck       = GetBytePacket (PacketName, -1)
				local durability = GetBytePacket (PacketName, -1)
				local joL        = GetBytePacket (PacketName, -1)
				local exc        = GetBytePacket (PacketName, -1)
				local x      	 = GetWordPacket (PacketName, -1)
				local y      	 = GetWordPacket (PacketName, -1)
				local w      	 = GetWordPacket (PacketName, -1)
				local h      	 = GetWordPacket (PacketName, -1)
				local t = {ListID = listID, Valor = price, Index = index, Level = level, Skill = skill, Luck = luck, Dur = durability, Option = joL, Exc = exc, Pos = {X = x, Y = y, W = w, H = h}}
				table.insert(NPCHoras_Config.Brindes, t)
			end

			ClearPacket(PacketName)
			NPCHoras.GerarListaItem()
			NPCHoras.GerarScrollBarItem()
			NPCHoras.Open()
			return true
		end

		if PacketName == string.format("4-%s-%d", UserGetName(), UserGetIndex()) then
			ClearPacket(PacketName)
			NPCHoras_Config.AlertWindow.Type = 2
			NPCHoras_Config.AlertWindow.Show = true
			return true
		end

		if PacketName == string.format("5-%s-%d", UserGetName(), UserGetIndex()) then
			ClearPacket(PacketName)
			NPCHoras_Config.AlertWindow.Type = 3
			NPCHoras_Config.AlertWindow.Show = true			
			return true
		end

		if PacketName == string.format("6-%s-%d", UserGetName(), UserGetIndex()) then
			ClearPacket(PacketName)
			NPCHoras_Config.AlertWindow.Type = 4
			NPCHoras_Config.AlertWindow.Show = true
			return true
		end

		if PacketName == string.format("7-%s-%d", UserGetName(), UserGetIndex()) then
			NPCHoras_Config.Saldo = GetDwordPacket(PacketName, -1)
			ClearPacket(PacketName)
			NPCHoras_Config.AlertWindow.Type = 1
			NPCHoras_Config.AlertWindow.Show = true
			return true
		end
	end	
end
--#endregion

--#region verifica se o mouse está sobre a area da janela
function NPCHoras.UpdateMouse()
	if UICustomInterface == NPCHoras_Config.WindowID then
		local offset = WindowGetWidth()-640
		if MousePosX() < 450+offset then
			DisableClickClient()
		end
	
	end	
	
end
--#endregion

--#region RETIRA UM ITEM
function NPCHoras.RetirarItem()
	local pname = string.format("3-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(pname, NPCHoras_Config.Packet)
	SetBytePacket(pname, NPCHoras_Config.Itemid)
	SetBytePacket(pname, NPCHoras_Config.ShortListaConfig.Selected.ListID)
	SendPacket(pname)
	ClearPacket(pname)
end
--#endregion

NPCHoras.Init()

return NPCHoras
