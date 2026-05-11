PacotePromo = {}

function PacotePromo.Init()
    InterfaceController.MainProc(PacotePromo.Interface)
    InterfaceController.UpdateMouse(PacotePromo.UpdateMouse)
    InterfaceController.UpdateKey(PacotePromo.UpdateKey)
    InterfaceController.ScrollMouse(PacotePromo.ScrollMouse)
	InterfaceController.ClientProtocol(PacotePromo.Protocol)
    PacotePromo.Define()
end

function PacotePromo.Define()
    PacotePromo_Config.Button = {}
    PacotePromo_Config.ButtonID = {
        fechar = 1,
        comprar = 2,
        ok = 3,
        cancelar = 4,
		up = 5,
		down = 6,
		menos = 7,
		mais = 8,
		ver_itens = 9,
		voltar = 10,
    }
    PacotePromo_Config.Window = {
        PosX = 80,
        PosY = 30,
        Width = 380,
        Height = 380
    }

    PacotePromo_Config.m_SelectedItemListID = 1
	PacotePromo_Config.m_SelectedSectionListID = 1
	PacotePromo_Config.m_SectionList = {}
	PacotePromo_Config.m_ItemList = {}
	PacotePromo_Config.m_Animation = false
	PacotePromo_Config.m_AnimationStartTime = os.time()
	PacotePromo_Config.m_CurrentPage = 0
	PacotePromo_Config.m_ListOffset = 1
	PacotePromo_Config.Itens = 11
	PacotePromo_Config.m_MaxListID = PacotePromo_Config.Itens
	PacotePromo_Config.m_LockInterface = false
	PacotePromo_Config.m_ShowAlertWindow = false
	PacotePromo_Config.m_AlertWindowType = 0
	PacotePromo_Config.m_WinnerItemListID = -1
    PacotePromo_Config.Barra = {Offset = 0, InitSize = 186, Size = 0, MaxOffset = 0, Pos = 0, InitEsp = 186, Esp = 0, Multiplier = 0}
	PacotePromo_Config.WasOpen = false
	PacotePromo_Config.Quantity = 1
	PacotePromo_Config.PacoteList = 1
	PacotePromo_Config.ValorFinal = 0
end

function PacotePromo.CreateButton(ButtonID, x, y, w, h)
	if PacotePromo_Config.Button[ButtonID] == nil then
		PacotePromo_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		PacotePromo_Config.Button[ButtonID].x = x
		PacotePromo_Config.Button[ButtonID].y = y
		PacotePromo_Config.Button[ButtonID].w = w
		PacotePromo_Config.Button[ButtonID].h = h
	end
end

function PacotePromo.ButtonClicked(ButtonID)
	if PacotePromo_Config.Button[ButtonID] == nil then return false end
	if PacotePromo_Config.Button[ButtonID].clicked then
		if PacotePromo_Config.Button[ButtonID].timer >= 2 then
			PacotePromo_Config.Button[ButtonID].timer = 0
			PacotePromo_Config.Button[ButtonID].clicked = false
			return false
		end
		PacotePromo_Config.Button[ButtonID].timer = PacotePromo_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function PacotePromo.ButtonMouseOver(ButtonID, x, y)
	if PacotePromo_Config.Button[ButtonID] == nil then return false end
	if x >= PacotePromo_Config.Button[ButtonID].x and x <= (PacotePromo_Config.Button[ButtonID].x+PacotePromo_Config.Button[ButtonID].w) then
		if y >= PacotePromo_Config.Button[ButtonID].y and y <= (PacotePromo_Config.Button[ButtonID].y+PacotePromo_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end

function PacotePromo.Open()
	CloseWindow(UIInventory)
	CloseWindow(UICharacter)
    UICustomInterface = PacotePromo_Config.WindowID
	PacotePromo.RecalculateList()
	PacotePromo_Config.WasOpen = true
	math.randomseed(os.time()*os.clock()^3)
	PacotePromo_Config.Window.PosX = PacotePromo_Config.Window.PosX+WindowGetWidthAdd()
	--HideGlobalMessage()
end

function PacotePromo.Close()
 	UICustomInterface = 0
	local packetName = string.format("2-%d-%s", UserGetIndex(), UserGetName())
	CreatePacket(packetName, PacotePromo_Config.Packet)
	SendPacket(packetName)
	ClearPacket(packetName)
	PacotePromo.Define()
	--ShowGlobalMessage()
end

function PacotePromo.CheckOpen()
    if UICustomInterface == PacotePromo_Config.WindowID then return true else return false end
end

function PacotePromo.RequestOpen()
    local packetName = string.format("8-%d-%s", UserGetIndex(), UserGetName())
	CreatePacket(packetName, PacotePromo_Config.Packet)
	SendPacket(packetName)
	ClearPacket(packetName)
end

function PacotePromo.Interface()
    if not PacotePromo.CheckOpen() then return end

	PacotePromo_Config.Window.PosX = ((WindowGetWidth()/2) - (PacotePromo_Config.Window.Width/2))-10

    local lang = GetLanguage()
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.fechar, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.comprar, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.ok, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.cancelar, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.up, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.down, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.menos, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.mais, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.ver_itens, 0, 0, 0, 0)
    PacotePromo.CreateButton(PacotePromo_Config.ButtonID.voltar, 0, 0, 0, 0)

	EnableAlphaTest()
	glColor3f(1.0, 1.0, 1.0)

	RenderImage2(40066, ((WindowGetWidth()/2) - (PacotePromo_Config.Window.Width/2)), PacotePromo_Config.Window.PosY, PacotePromo_Config.Window.Width, PacotePromo_Config.Window.Height, 0.0, 0.0, 1.0, 0.783, 1, 1, 1.0)

	SetFontType(1)
	SetTextBg( 0, 0, 0, 0)
	SetTextColor( 240, 240, 240, 255)
	RenderText3(PacotePromo_Config.Window.PosX + 200, PacotePromo_Config.Window.PosY + 12, PacotePromo_Config.Texts[lang][1], 150, 8)

	--#region BUTTON FECHAR
		local stateFechar = 0
		PacotePromo.CreateButton(PacotePromo_Config.ButtonID.fechar, PacotePromo_Config.Window.PosX+362, PacotePromo_Config.Window.PosY+10, 16, 16)
		if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.fechar) then
			if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
				if not PacotePromo_Config.m_ShowAlertWindow then
					if CheckRepeatKey(Keys.LButton) == 1 then
						stateFechar = 2
					else
						stateFechar = 1
					end

					DrawTooltip(PacotePromo_Config.Window.PosX+362, PacotePromo_Config.Window.PosY-2, PacotePromo_Config.Texts[lang][7])
				else
					stateFechar = 0
				end
			end
		else
			stateFechar = 0
		end
		DrawButton.Close(stateFechar, PacotePromo_Config.Window.PosX+362, PacotePromo_Config.Window.PosY+10, 16, 16)
	--#endregion

	--#region ITEM BOX
		DisableAlphaBlend()
		--SetBlend()
		--glColor4f(0.0, 0.0, 0.0, 0.8)
		DrawInterface.ItemBox(false, PacotePromo_Config.Window.PosX + 230, PacotePromo_Config.Window.PosY + 46, 132, 105)
		DrawInterface.ItemBox(false, PacotePromo_Config.Window.PosX + 230, PacotePromo_Config.Window.PosY + 153, 132, 132)
		--DrawBar(PacotePromo_Config.Window.PosX + 214, PacotePromo_Config.Window.PosY + 37, 152, 152)
	--#endregion

	--#region LIST 
		DisableAlphaBlend()
		SetBlend()
		glColor4f(0.0, 0.0, 0.0, 0.8)
		--DrawBar(PacotePromo_Config.Window.PosX+31, PacotePromo_Config.Window.PosY+37, 155, 245)
		--DrawInterface.ItemBox(false, PacotePromo_Config.Window.PosX+31, PacotePromo_Config.Window.PosY+37, 155+15, 245)

		SetBlend(1)
		glColor4f(0, 0, 0, 0.4)
		DrawBar(PacotePromo_Config.Window.PosX+33, PacotePromo_Config.Window.PosY+46, 167, 313)
		EndDrawBar()

		local posY = PacotePromo_Config.Window.PosY + 34 + 4 + 27+14
		for i = PacotePromo_Config.m_ListOffset, PacotePromo_Config.m_MaxListID do
			SetBlend()
			glColor4f(0.2, 0.2, 0.2, 0.6)
			DrawBar(PacotePromo_Config.Window.PosX+40, posY, 120+14, 1)
			EndDrawBar()
			if (PacotePromo.IsWorkZone(PacotePromo_Config.Window.PosX + 40, posY-22, 120+15, 22)) and not PacotePromo_Config.m_Animation and not PacotePromo_Config.m_ShowAlertWindow then
				SetBlend()
				glColor4f(0.2, 0.2, 0.2, 0.6)
				DrawBar(PacotePromo_Config.Window.PosX + 40, posY-27, 120+14, 27)
				EndDrawBar()
			end
			if (PacotePromo_Config.m_Animation and i == PacotePromo_Config.m_SelectedItemListID) then
				glColor4f(0.5, 0.5, 0.5, 0.2)
				DrawBar(PacotePromo_Config.Window.PosX + 40, posY - 27, 120+14, 27)
				EndDrawBar()
			end
			posY = posY + 27
		end

		EnableAlphaTest()
		DrawScroll.Bar(0, PacotePromo_Config.Window.PosX + 167+13, PacotePromo_Config.Window.PosY + 65+PacotePromo_Config.Barra.Pos, 14, PacotePromo_Config.Barra.Size+86)
		--DrawScroll.Middle(0, PacotePromo_Config.Window.PosX + 167, PacotePromo_Config.Window.PosY + 65+PacotePromo_Config.Barra.Pos, 14, 40) --PacotePromo_Config.Barra.Size+1.5)
	--#endregion

	--#region HOVER LIST 
		posY = PacotePromo_Config.Window.PosY + 34 + 4 + 9+14
		SetFontType(0)
		SetTextBg( 0, 0, 0, 0)
		for i = PacotePromo_Config.m_ListOffset, PacotePromo_Config.m_MaxListID do
			SetTextColor( 240, 240, 240, 255)
			if (PacotePromo_Config.m_CurrentPage == 0) then
				if (i == PacotePromo_Config.m_SelectedSectionListID) then
					--SetTextColor( 0, 180, 230, 255)
					SetBlend()
					glColor4f(0.0, 1.0, 0.0, 0.25)
					DrawBar(PacotePromo_Config.Window.PosX+40, posY-8.5, 120+14, 27)
					EndDrawBar()
				end
				RenderText3( PacotePromo_Config.Window.PosX + 50, posY, PacotePromo_Config.m_SectionList[i].Name, 111, 1)
			else
				if (i == PacotePromo_Config.m_SelectedItemListID) then
					--SetTextColor( 0, 180, 230, 255)
					SetBlend()
					glColor4f(0.0, 1.0, 0.0, 0.25)
					DrawBar(PacotePromo_Config.Window.PosX+40, posY-8.5, 120+14, 27)
					EndDrawBar()
				end		
				RenderText3( PacotePromo_Config.Window.PosX + 50, posY,  string.format(PacotePromo_Config.Texts[lang][2], PacotePromo_Config.m_ItemList[i].Qtd, GetNameByIndex(PacotePromo_Config.m_ItemList[i].ItemIndex)), 111, 1)         
			end
			posY = posY + 27
		end
	--#endregion

	--#region SCROLL BAR UP
		local stateUp = 0
		PacotePromo.CreateButton(PacotePromo_Config.ButtonID.up, PacotePromo_Config.Window.PosX + 167+13, PacotePromo_Config.Window.PosY + 53, 14, 14)
		if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.up) then
			if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.up, MousePosX(), MousePosY()) then
				if not PacotePromo_Config.m_ShowAlertWindow then
					if CheckRepeatKey(Keys.LButton) == 1 then
						stateUp = 2
					else
						stateUp = 1
					end
				end
			else
				stateUp = 0
			end
		else
			stateUp = 0
		end
		DrawScroll.Up(stateUp, PacotePromo_Config.Window.PosX + 167+13, PacotePromo_Config.Window.PosY + 53, 14, 14)
	--#endregion

	--#region SCROLL BAR DOWN
		local stateDown = 0
		PacotePromo.CreateButton(PacotePromo_Config.ButtonID.down, PacotePromo_Config.Window.PosX + 167+13, PacotePromo_Config.Window.PosY + 336, 14, 14)
		if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.down) then
			if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.down, MousePosX(), MousePosY()) then
				if not PacotePromo_Config.m_ShowAlertWindow then
					if CheckRepeatKey(Keys.LButton) == 1 then
						stateDown = 2
					else
						stateDown = 1
					end
				end
			else
				stateDown = 0
			end
		else
			stateDown = 0
		end
		DrawScroll.Down(stateDown,PacotePromo_Config.Window.PosX + 167+13, PacotePromo_Config.Window.PosY + 336, 14, 14)
	--#endregion

	--#region TEXTS
		SetFontType(1)
		SetTextBg( 0, 0, 0, 0)
		SetTextColor( 0, 180, 230, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY+55, PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Name, 160, 8)

		SetTextColor( 240, 176, 2, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY+70, PacotePromo_Config.Texts[lang][3], 160, 8)
		SetFontType(0)
		SetTextColor( 240, 240, 240, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY+80, PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Availability, 160, 8)

		SetFontType(1)
		SetTextColor( 240, 176, 2, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY + 95, PacotePromo_Config.Texts[lang][4], 160, 8)

		SetFontType(0)
		SetTextColor( 240, 240, 240, 255)

		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY + 105, string.format(PacotePromo_Config.Texts[lang][5], PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Cost), 160, 8)

		SetFontType(1)
		SetTextColor( 240, 176, 2, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY + 120, PacotePromo_Config.Texts[lang][15], 160, 8)

		SetFontType(0)
		SetTextColor( 240, 240, 240, 255)
		RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY + 130, string.format("%d ", PacotePromo_Config.Quantity), 160, 8)

		--local Valor = PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Cost
		--RenderText3( PacotePromo_Config.Window.PosX + 230+67, PacotePromo_Config.Window.PosY + 130, string.format(PacotePromo_Config.Texts[lang][5], Valor), 160, 8)

	--#endregion

	--NÃO APARECER A DESCRIÇÃO SE TIVER ALGUMA MESSAGEBOX

	if (PacotePromo_Config.m_CurrentPage == 0) then
		--#region BUTTON COMPRAR
			local stateAcessar = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.ver_itens,PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+290, 134, 30)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.ver_itens) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ver_itens, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateAcessar = 2
						else
							stateAcessar = 1
						end
					else
						stateAcessar = 0
					end
				end
			else
				stateAcessar = 0
			end
			DrawButton.Large(stateAcessar, PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+290, 134, 30)

			SetFontType(1)
			SetTextBg( 0, 0, 0, 0)
			SetTextColor( 240, 240, 240, 255)
			RenderText3((PacotePromo_Config.Window.PosX+230+12+	(110/2)), (PacotePromo_Config.Window.PosY+290+4+((25/2)-5)), PacotePromo_Config.Texts[lang][6], 110, 8)
		--#endregion

		--#region BUTTON VER ITENS
			local stateAcessar = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.comprar,PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+325, 134, 30)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.comprar) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.comprar, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateAcessar = 2
						else
							stateAcessar = 1
						end
					else
						stateAcessar = 0
					end
				end
			else
				stateAcessar = 0
			end
			DrawButton.Large(stateAcessar, PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+325, 134, 30)

			SetFontType(1)
			SetTextBg( 0, 0, 0, 0)
			SetTextColor( 240, 240, 240, 255)
			RenderText3((PacotePromo_Config.Window.PosX+230+12+	(110/2)), (PacotePromo_Config.Window.PosY+325+4+((25/2)-5)), PacotePromo_Config.Texts[lang][8], 110, 8)
		--#endregion
	else
		--#region BUTTON VOLTAR
			local stateVoltar = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.voltar, PacotePromo_Config.Window.PosX+205, PacotePromo_Config.Window.PosY+46, 20, 20) --PacotePromo_Config.Window.PosX+205, PacotePromo_Config.Window.PosY+46, 20, 20)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.voltar) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateVoltar = 2
						else
							stateVoltar = 1
						end

						DrawTooltip(PacotePromo_Config.Window.PosX+207, PacotePromo_Config.Window.PosY+36, PacotePromo_Config.Texts[lang][9])
					else
						stateVoltar = 0
					end
				else
					stateVoltar = 0
				end
			else
				stateVoltar = 0
			end
			DrawButton.Backe(stateVoltar, PacotePromo_Config.Window.PosX+205, PacotePromo_Config.Window.PosY+46, 20, 20)
			--DrawButton.Backe(stateVoltar, PacotePromo_Config.Window.PosX+205, PacotePromo_Config.Window.PosY+329, 21, 20)
			--DrawButton.Backe(stateVoltar, PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+325, 31, 30)
		--#endregion

		--#region BUTTON COMPRAR
			local stateAcessar = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.comprar, PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+325, 134, 30)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.comprar) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.comprar, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateAcessar = 2
						else
							stateAcessar = 1
						end
					else
						stateAcessar = 0
					end
				end
			else
				stateAcessar = 0
			end
			DrawButton.Red2(stateAcessar, PacotePromo_Config.Window.PosX+230, PacotePromo_Config.Window.PosY+325, 134, 30)
			--DrawButton.Red(stateAcessar, PacotePromo_Config.Window.PosX+263, PacotePromo_Config.Window.PosY+325, 99, 30)

			SetFontType(1)
			SetTextBg( 0, 0, 0, 0)
			--SetTextColor( 240, 240, 240, 255)
			SetTextColor(237, 214, 161, 255)
			RenderText3((PacotePromo_Config.Window.PosX+230+(134/2)), (PacotePromo_Config.Window.PosY+325+4+((25/2)-5)), PacotePromo_Config.Texts[lang][8], 110, 8)
		--#endregion

		--#region QUANTIDADE NÚMERICA DE ITENS
			SetFontType(0)
			SetTextBg(0,0,0,0)
			SetTextColor(255,255,255,255)		
			DrawInterface.TextBox2(0, PacotePromo_Config.Window.PosX+254, PacotePromo_Config.Window.PosY+295, 85, 20)
			RenderText3(PacotePromo_Config.Window.PosX+265+35, PacotePromo_Config.Window.PosY+295+6, string.format("%d", PacotePromo_Config.Quantity), 125, 8)
		--#endregion

		--#region BUTTON MENOS
			local stateMenos = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.menos, PacotePromo_Config.Window.PosX+231, PacotePromo_Config.Window.PosY+295, 20, 20)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.menos) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.menos, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateMenos = 2
						else
							stateMenos = 1
						end
					else
						stateMenos = 0
					end
				else
					stateMenos = 0
				end
			else
				stateMenos = 0
			end
			DrawButton.Menos(stateMenos, PacotePromo_Config.Window.PosX+231, PacotePromo_Config.Window.PosY+295, 20, 20)
		--#endregion

		--#region BUTTON MAIS
			local stateMais = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.mais, PacotePromo_Config.Window.PosX+230+111, PacotePromo_Config.Window.PosY+295, 21, 20)
			if not PacotePromo.ButtonClicked(PacotePromo_Config.ButtonID.mais) then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.mais, MousePosX(), MousePosY()) then
					if not PacotePromo_Config.m_ShowAlertWindow then
						if CheckRepeatKey(Keys.LButton) == 1 then
							stateMais = 2
						else
							stateMais = 1
						end
					else
						stateMais = 0
					end
				else
					stateMais = 0
				end
			else
				stateMais = 0
			end
			DrawButton.Mais(stateMais, PacotePromo_Config.Window.PosX+230+111, PacotePromo_Config.Window.PosY+295, 20, 20)
		--#endregion

		if not PacotePromo_Config.m_ShowAlertWindow then
			CreateItem(PacotePromo_Config.Window.PosX+8 + PacotePromo_Config.ShowItem.Item.ItemX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosX, 107+PacotePromo_Config.Window.PosY + PacotePromo_Config.ShowItem.Item.ItemY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosY, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Width, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Height, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].ItemIndex, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Level, 0, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Size)
			if (PacotePromo.IsWorkZone(PacotePromo_Config.Window.PosX+8 + PacotePromo_Config.ShowItem.Item.ItemX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosX, 107+PacotePromo_Config.Window.PosY + PacotePromo_Config.ShowItem.Item.ItemY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosY, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Width, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Height) and not PacotePromo_Config.m_Animation) then
				ShowItemDescription(MousePosX(), MousePosY(), PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].ItemIndex, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Level, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Skill, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Luck, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].JoL, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Dur, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Exc, 0)
			end
		else
			--CreateItem(PacotePromo_Config.Window.PosX + PacotePromo_Config.ShowItem.Item.ItemX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Width-6, PacotePromo_Config.Window.PosY + PacotePromo_Config.ShowItem.Item.ItemY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosY, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Height, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].ItemIndex, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Level, 0, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Size)
			--CreateItem(PacotePromo_Config.Window.PosX + PacotePromo_Config.ShowItem.Item.ItemX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Width, PacotePromo_Config.Window.PosY + PacotePromo_Config.ShowItem.Item.ItemY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Height-6, 0, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].ItemIndex, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Level, 0, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Size)
			CreateItem(PacotePromo_Config.Window.PosX+8 + PacotePromo_Config.ShowItem.Item.ItemX + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosX, 107+PacotePromo_Config.Window.PosY + PacotePromo_Config.ShowItem.Item.ItemY + PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].PosY, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Width, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Height, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].ItemIndex, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Level, 0, 0, PacotePromo_Config.m_ItemList[PacotePromo_Config.m_SelectedItemListID].Size)
		end

	end

	if not PacotePromo_Config.m_ShowAlertWindow then
		return
    end

	DisableAlphaBlend()

	SetBlend()
	glColor4f(0.0, 0.0, 0.0, 0.7)
	DrawBar(((WindowGetWidth()/2) - (PacotePromo_Config.Window.Width/2)), PacotePromo_Config.Window.PosY, PacotePromo_Config.Window.Width, PacotePromo_Config.Window.Height)

	EndDrawBar()
	DisableAlphaBlend()
	EnableAlphaTest()

	DrawInterface.InfoBox(true, PacotePromo_Config.Window.PosX + 65, PacotePromo_Config.Window.PosY + 50, 210, 1, false)

	--#region MESSAGE BOX
		--1 = TITULO DA COMPRA
		--2 = SALDO INSUFICIENTE
		--3 = COMPRA REALIZADA GUARDIAN 1 DEVIAS
		--4 = COMPRA REALIZADA GUARDIAN 2 NORIA
		--#region TITULO DA MESSAGEBOX
			SetFontType(10)
			SetTextBg( 0, 0, 0, 0)
			SetTextColor(240, 150, 000, 255)

			if PacotePromo_Config.m_AlertWindowType == 1 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+18+46, PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Name, 180, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 2 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+18+46, PacotePromo_Config.Texts[lang][12], 180, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 3 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+18+46, PacotePromo_Config.Texts[lang][18], 180, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 4 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+18+46, PacotePromo_Config.Texts[lang][18], 180, 8)
			end
		--#endregion

		--#region TITULO DA MESSAGEBOX
			SetFontType(0)
			SetTextBg( 0, 0, 0, 0)
			SetTextColor( 240, 240, 240, 255)

			if PacotePromo_Config.m_AlertWindowType == 1 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+18+44+35, PacotePromo_Config.Texts[lang][10], 230, 8)
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY+28+44+35, PacotePromo_Config.Texts[lang][11], 230, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 2 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 18+44+35, PacotePromo_Config.Texts[lang][21], 230, 8)
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 28+44+35, PacotePromo_Config.Texts[lang][22], 230, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 3 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 18+44+35, PacotePromo_Config.Texts[lang][13], 230, 8)
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 28+44+35, PacotePromo_Config.Texts[lang][14], 230, 8)
			elseif PacotePromo_Config.m_AlertWindowType == 4 then
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 18+44+35, PacotePromo_Config.Texts[lang][16], 230, 8)
				RenderText3( PacotePromo_Config.Window.PosX + 170, PacotePromo_Config.Window.PosY + 28+44+35, PacotePromo_Config.Texts[lang][17], 230, 8)
			end
		--#endregion
	--#endregion

	local addX = WindowGetWidthAdd()
	if PacotePromo_Config.m_AlertWindowType == 1 then
		--#region BUTTON OK
			local stateOK = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.ok, 110+addX, 155, 60, 18)
			if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ok, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					stateOK = 2
				else
					stateOK = 1
				end
			else
				stateOK = 0
			end
			DrawButton.Medium(stateOK, 110+addX, 155, 60, 18)

			SetFontType(1)
		    SetTextBg(0, 0, 0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(110+addX+30, 160, PacotePromo_Config.Texts[lang][19], 60, 8)
		--#endregion

		--#region BUTTON CANCELAR
			local stateCancel = 0
			PacotePromo.CreateButton(PacotePromo_Config.ButtonID.cancelar,200+addX, 155, 60, 18)
			if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.cancelar, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					stateCancel = 2
				else
					stateCancel = 1
				end
			else
				stateCancel = 0
			end
			DrawButton.Medium(stateCancel, 200+addX, 155, 60, 18)

			SetFontType(1)
		    SetTextBg(0, 0, 0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(200+addX+30, 160, PacotePromo_Config.Texts[lang][20], 60, 8)
		--#endregion
    else
		PacotePromo.CreateButton(PacotePromo_Config.ButtonID.ok, 155+addX, 155, 60, 18)
        local stateOK = 0
        if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ok, MousePosX(), MousePosY()) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				stateOK = 2
			else
				stateOK = 1
			end
		else
			stateOK = 0
		end
		DrawButton.Medium(stateOK, 155+addX, 155, 60, 18)

		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(237, 214, 161, 255)
		RenderText3(155+addX+30, 160, PacotePromo_Config.Texts[lang][19], 60, 8)
	end

	DisableAlphaBlend()
end

function PacotePromo.UpdateMouse()
	if not PacotePromo.CheckOpen() then return end

	DisableClickClient()

	if CheckReleasedKey(Keys.LButton) == 1 and not PacotePromo_Config.m_LockInterface then
		if PacotePromo_Config.m_Animation then return end

		if PacotePromo_Config.m_ShowAlertWindow then
			if PacotePromo_Config.m_AlertWindowType == 1 then
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ok, MousePosX(), MousePosY()) then
					PacotePromo_Config.m_LockInterface = true
					PacotePromo_Config.m_ShowAlertWindow = false
					PacotePromo.SendSpin()
				end
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.cancelar, MousePosX(), MousePosY()) then
					PacotePromo_Config.m_ShowAlertWindow = false
				end
			else
				if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ok, MousePosX(), MousePosY()) then
					PacotePromo_Config.m_ShowAlertWindow = false
				end
			end
			return
		end

		local posY = PacotePromo_Config.Window.PosY + 34 + 4+17
		for i = PacotePromo_Config.m_ListOffset, PacotePromo_Config.m_MaxListID do
			if PacotePromo.IsWorkZone(PacotePromo_Config.Window.PosX + 29+11, posY + 2, 120+15, 22) then
				if (PacotePromo_Config.m_CurrentPage == 0) then
					PacotePromo_Config.m_SelectedSectionListID = i
					PacotePromo_Config.m_AlertWindowType = 1
				else
					PacotePromo_Config.m_SelectedItemListID = i
				end
				return
			end
			posY = posY + 27
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.up, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.up].clicked = true
			if PacotePromo_Config.m_ListOffset <= 1 then
				return
			end
			PacotePromo_Config.Barra.Offset = PacotePromo_Config.Barra.Offset - 1
			PacotePromo_Config.Barra.Pos = PacotePromo_Config.Barra.Pos - PacotePromo_Config.Barra.Multiplier
			PacotePromo_Config.m_ListOffset = PacotePromo_Config.m_ListOffset - 1
			PacotePromo_Config.m_MaxListID = PacotePromo_Config.m_MaxListID - 1
			return
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.down, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.down].clicked = true
			if PacotePromo_Config.m_CurrentPage == 0 then
				if PacotePromo_Config.m_MaxListID >= #PacotePromo_Config.m_SectionList then return end
			else 
				if PacotePromo_Config.m_MaxListID >= #PacotePromo_Config.m_ItemList then return end
			end
			PacotePromo_Config.Barra.Offset = PacotePromo_Config.Barra.Offset + 1
			PacotePromo_Config.Barra.Pos = PacotePromo_Config.Barra.Pos + PacotePromo_Config.Barra.Multiplier
			PacotePromo_Config.m_ListOffset = PacotePromo_Config.m_ListOffset + 1
			PacotePromo_Config.m_MaxListID = PacotePromo_Config.m_MaxListID + 1
			return
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.voltar].clicked = true
			if (PacotePromo_Config.m_CurrentPage == 0) then
				PacotePromo.Close()
			else
				PacotePromo_Config.m_CurrentPage = 0
				PacotePromo_Config.m_SelectedSectionListID = 1
				PacotePromo.RecalculateList()
			end		
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.ver_itens, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.comprar].clicked = true
			PacotePromo_Config.m_LockInterface = true
			PacotePromo.SendAccessList()
			return
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.comprar, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.comprar].clicked = true
			PacotePromo_Config.m_AlertWindowType = 1
			PacotePromo_Config.m_ShowAlertWindow = true
			return
		end

		--PacotePromo_Config.ValorFinal = PacotePromo_Config.m_SectionList[PacotePromo_Config.m_SelectedSectionListID].Cost

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.menos, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.menos].clicked = true
			if PacotePromo_Config.Quantity > 1 then
				PacotePromo_Config.Quantity = PacotePromo_Config.Quantity - 1
				--PacotePromo_Config.ValorFinal =  PacotePromo_Config.ValorFinal / 2
			end
			return
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.mais, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.mais].clicked = true
			if PacotePromo_Config.Quantity < 50 then
				PacotePromo_Config.Quantity = PacotePromo_Config.Quantity + 1
				--PacotePromo_Config.ValorFinal = PacotePromo_Config.ValorFinal * 2
			end
			return
		end

		if PacotePromo.ButtonMouseOver(PacotePromo_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
			PacotePromo_Config.Button[PacotePromo_Config.ButtonID.fechar].clicked = true
			PacotePromo.Close()
			PacotePromo_Config.m_CurrentPage = 0
			PacotePromo_Config.m_SelectedSectionListID = 1
			PacotePromo.RecalculateList()
		end
	end
end

function PacotePromo.UpdateKey()
	if not PacotePromo.CheckOpen() then
		if CheckReleasedKey(Keys.Escape) == 1 and PacotePromo_Config.WasOpen then
			UICustomInterface = PacotePromo_Config.WindowID
		end
		return
	end

    if CheckWindowOpen(UIChatWindow) == 1 or CheckWindowOpen(UIStore) == 1 or CheckWindowOpen(UIGuildNpc) == 1 then return end

	if CheckPressedKey(Keys.Return) == 1 then return end

	DisableClickClient()

	if PacotePromo_Config.m_LockInterface then return end

	if PacotePromo_Config.m_Animation then return end

	if CheckPressedKey(Keys.Escape) == 1 then
		if (PacotePromo_Config.m_ShowAlertWindow) then
			PacotePromo_Config.m_ShowAlertWindow = false
		else
			PacotePromo.Close()
		end
	end
end

function PacotePromo.ScrollMouse(direction)
	if not PacotePromo.CheckOpen() then return 0 end

	if not PacotePromo.IsWorkZone(((WindowGetWidth()/2) - (PacotePromo_Config.Window.Width/2)), PacotePromo_Config.Window.PosY, PacotePromo_Config.Window.Width, PacotePromo_Config.Window.Height) or PacotePromo_Config.m_Animation or PacotePromo_Config.m_LockInterface then return 1 end
	--if not PacotePromo.IsWorkZone(PacotePromo_Config.Window.PosX+33, PacotePromo_Config.Window.PosY+46, 167, 313) or PacotePromo_Config.m_Animation or PacotePromo_Config.m_LockInterface then return end

	if (direction > 0) then
		if PacotePromo_Config.m_ListOffset <= 1 then
			return 1
		end
		PacotePromo_Config.Barra.Offset = PacotePromo_Config.Barra.Offset - 1
		PacotePromo_Config.Barra.Pos = PacotePromo_Config.Barra.Pos - PacotePromo_Config.Barra.Multiplier
		PacotePromo_Config.m_ListOffset = PacotePromo_Config.m_ListOffset - 1
		PacotePromo_Config.m_MaxListID = PacotePromo_Config.m_MaxListID - 1
	elseif direction < 0 then
		if PacotePromo_Config.m_CurrentPage == 0 then
			if PacotePromo_Config.m_MaxListID >= #PacotePromo_Config.m_SectionList then return 1 end
		else 
			if PacotePromo_Config.m_MaxListID >= #PacotePromo_Config.m_ItemList then return 1 end
		end
		PacotePromo_Config.Barra.Offset = PacotePromo_Config.Barra.Offset + 1
		PacotePromo_Config.Barra.Pos = PacotePromo_Config.Barra.Pos + PacotePromo_Config.Barra.Multiplier
		PacotePromo_Config.m_ListOffset = PacotePromo_Config.m_ListOffset + 1
		PacotePromo_Config.m_MaxListID = PacotePromo_Config.m_MaxListID + 1
	end
	
	return 0
end

function PacotePromo.IsWorkZone(x, y, w, h)
	if MousePosX() >= x and MousePosX() <= x + w and MousePosY() >= y-3 and MousePosY() <= y-3 + h+3 then
		return true
    end
	return false
end

function PacotePromo.RecalculateList()
	PacotePromo_Config.m_ListOffset = 1
	PacotePromo_Config.Barra.Offset = 0
	PacotePromo_Config.Barra.Pos = 0

	if (PacotePromo_Config.m_CurrentPage == 0) then
		if #PacotePromo_Config.m_SectionList > PacotePromo_Config.Itens then
			PacotePromo_Config.m_MaxListID = PacotePromo_Config.Itens
		else
			PacotePromo_Config.m_MaxListID = #PacotePromo_Config.m_SectionList
		end

		if #PacotePromo_Config.m_SectionList > PacotePromo_Config.Itens then
			PacotePromo_Config.Barra.MaxOffset = #PacotePromo_Config.m_SectionList - PacotePromo_Config.Itens
			PacotePromo_Config.Barra.Size = (PacotePromo_Config.Barra.InitSize - ((#PacotePromo_Config.m_SectionList - PacotePromo_Config.Itens) * PacotePromo_Config.Itens))
			if (PacotePromo_Config.Barra.Size < PacotePromo_Config.Itens) then
				PacotePromo_Config.Barra.Size = PacotePromo_Config.Itens
			end
		else
			PacotePromo_Config.Barra.Size = PacotePromo_Config.Barra.InitSize
		end
		PacotePromo_Config.Barra.Esp = PacotePromo_Config.Barra.InitEsp - PacotePromo_Config.Barra.Size
		PacotePromo_Config.Barra.Multiplier = PacotePromo_Config.Barra.Esp / (#PacotePromo_Config.m_SectionList - PacotePromo_Config.Itens)
	else
		if #PacotePromo_Config.m_ItemList > PacotePromo_Config.Itens then
			PacotePromo_Config.m_MaxListID = PacotePromo_Config.Itens
		else
			PacotePromo_Config.m_MaxListID = #PacotePromo_Config.m_ItemList
		end

		if #PacotePromo_Config.m_ItemList > PacotePromo_Config.Itens then
			PacotePromo_Config.Barra.MaxOffset = #PacotePromo_Config.m_ItemList - PacotePromo_Config.Itens
			PacotePromo_Config.Barra.Size = (PacotePromo_Config.Barra.InitSize - ((#PacotePromo_Config.m_ItemList - PacotePromo_Config.Itens) * PacotePromo_Config.Itens))
			if (PacotePromo_Config.Barra.Size < PacotePromo_Config.Itens) then
				PacotePromo_Config.Barra.Size = PacotePromo_Config.Itens
			end		
		else 
			PacotePromo_Config.Barra.Size = PacotePromo_Config.Barra.InitSize
		end
		PacotePromo_Config.Barra.Esp = PacotePromo_Config.Barra.InitEsp - PacotePromo_Config.Barra.Size
		PacotePromo_Config.Barra.Multiplier = PacotePromo_Config.Barra.Esp / (#PacotePromo_Config.m_ItemList - PacotePromo_Config.Itens)
	end
end

function PacotePromo.Protocol(Packet, PacketName)
	if Packet ~= PacotePromo_Config.Packet then return false end

	local aIndex = UserGetIndex()
	local name = UserGetName()

	if PacketName == string.format("1-%d-%s", aIndex, name) then
		PacotePromo_Config.m_SectionList = {}
		PacotePromo_Config.PacoteList = GetBytePacket(PacketName, -1)
		local count = GetBytePacket(PacketName, -1)
		for i = 1, count do
        	local listID = GetBytePacket(PacketName, -1)       
        	local len = GetBytePacket(PacketName, -1)
        	local nome = GetCharPacketLength(PacketName, -1, len)
			len = GetBytePacket(PacketName, -1)
        	local availability = GetCharPacketLength(PacketName, -1, len)
			len = GetBytePacket(PacketName, -1)
        	local custo = GetCharPacketLength(PacketName, -1, len)

			table.insert(PacotePromo_Config.m_SectionList, {ListID = listID, Name = nome, Cost = tonumber(custo), Availability = availability})
    	end
		ClearPacket(PacketName)
		PacotePromo_Config.m_SelectedSectionListID = 1
		PacotePromo_Config.m_CurrentPage = 0
		PacotePromo.Open()
		return true
	end

	if PacketName == string.format("3-%d-%s", aIndex, name) then
		PacotePromo_Config.m_ItemList = {}
		PacotePromo_Config.PacoteList = GetBytePacket(PacketName, -1)
		local count = GetBytePacket(PacketName, -1)
    	for c = 1, count do
    	   local qtd = GetBytePacket(PacketName,-1)
    	   local itemIndex = GetWordPacket(PacketName,-1)
    	   local level = GetBytePacket(PacketName,-1)
    	   local dur = GetBytePacket(PacketName,-1)
    	   local skill = GetBytePacket(PacketName,-1)
    	   local luck = GetBytePacket(PacketName,-1)
    	   local jol = GetBytePacket(PacketName,-1)
    	   local exc = GetBytePacket(PacketName,-1)
    	   local days = GetBytePacket(PacketName,-1)
    	   local len = GetBytePacket(PacketName,-1)
		   local posx = GetCharPacketLength(PacketName, -1, len)
		   posx = tonumber(posx)
		   len = GetBytePacket(PacketName,-1)
		   local posy = GetCharPacketLength(PacketName, -1, len)
		   posy = tonumber(posy)
		   len = GetBytePacket(PacketName,-1)
		   local width = GetCharPacketLength(PacketName, -1, len)
		   width = tonumber(width)
		   len = GetBytePacket(PacketName,-1)
		   local height = GetCharPacketLength(PacketName, -1, len)
		   height = tonumber(height)
		   len = GetBytePacket(PacketName,-1)
		   local sizeStr = GetCharPacketLength(PacketName, -1, len)
		   local size = tonumber(sizeStr)

		   table.insert(PacotePromo_Config.m_ItemList, {ListID = c, Qtd = qtd, ItemIndex = itemIndex, Level = level, Dur = dur, Skill = skill, Luck = luck, JoL = jol, Exc = exc, Days = days, PosX = posx, PosY = posy, Width = width, Height = height, Size = size})
    	end
		ClearPacket(PacketName)
		PacotePromo_Config.m_SelectedItemListID = 1
		PacotePromo_Config.m_CurrentPage = 1
		PacotePromo.RecalculateList()
		PacotePromo_Config.m_LockInterface = false
		return true
	end

	if PacketName == string.format("5-%d-%s", aIndex, name) then
		ClearPacket(PacketName)
		PacotePromo_Config.m_AlertWindowType = 2
		PacotePromo_Config.m_ShowAlertWindow = true
		PacotePromo_Config.m_LockInterface = false
		return true
	end

	if PacketName == string.format("7-%d-%s", aIndex, name) then
		local tipo = GetBytePacket(PacketName, -1)
		ClearPacket(PacketName)
		PacotePromo_Config.m_LockInterface = false
		if tipo == 1 then
			PacotePromo_Config.m_AlertWindowType = 3
		else
			PacotePromo_Config.m_AlertWindowType = 4
		end
		PacotePromo_Config.m_ShowAlertWindow = true
		return true
	end
end

function PacotePromo.SendSpin()
	local packetName = string.format("6-%d-%s", UserGetIndex(), UserGetName())
	CreatePacket(packetName, PacotePromo_Config.Packet)
	SetBytePacket(packetName, PacotePromo_Config.m_SelectedSectionListID)
	SetBytePacket(packetName, PacotePromo_Config.PacoteList)
	SetBytePacket(packetName, PacotePromo_Config.Quantity)
	SendPacket(packetName)
	ClearPacket(packetName)
end

function PacotePromo.SendAccessList()
	local packetName = string.format("4-%d-%s", UserGetIndex(), UserGetName())
	CreatePacket(packetName, PacotePromo_Config.Packet)
	SetBytePacket(packetName, PacotePromo_Config.m_SelectedSectionListID)
	SetBytePacket(packetName, PacotePromo_Config.PacoteList)
	SendPacket(packetName)
	ClearPacket(packetName)
end

PacotePromo.Init()

return PacotePromo