PointsRanking = {}

function PointsRanking.Init()
    InterfaceController.BeforeMainProc(PointsRanking.Interface)
    InterfaceController.MainProc(PointsRanking.InterfaceAfter)
    InterfaceController.ClientProtocol(PointsRanking.Protocol)
    InterfaceController.UpdateMouse(PointsRanking.UpdateMouse)
    InterfaceController.UpdateKey(PointsRanking.UpdateKey)
	InterfaceController.AfterScriptLoad(PointsRanking.AfterLoad)
    PointsRanking.Define()
end
function PointsRanking.Define()
    PointsRanking_Config.WindowInfo = {PosX = 260, PosY = 0, Width = 190, Height = 429, Offset = 0}
    PointsRanking_Config.AlertWindow = {Open = false, Type = -1}
    PointsRanking_Config.Lang = "Por"
    PointsRanking_Config.CurrentItem = 1
    PointsRanking_Config.Saldo = {Atual = 0, Acumulado = 0}
    PointsRanking_Config.Ranking = {}
    PointsRanking_Config.Button = {}
	PointsRanking_Config.ButtonID = {
		abrir    = 1,
		fechar   = 2,
		ok       = 3,
		cancel   = 4,
		anterior = 5,
		proximo  = 6,
		comprar  = 7,
		duvida   = 8,


	}
	PointsRanking_Config.TradeIconOffset = 0
	PointsRanking_Config.Locked = false
end

function PointsRanking.AfterLoad()
	PointsRanking_Config.WindowInfo.PosX = 260+(WindowGetWidth()-640)
	PointsRanking_Config.WindowInfo.Offset = WindowGetWidth()-640
    PointsRanking_Config.Lang = GetLanguage()
end

function PointsRanking.RequestOpen()
	local PacketName = string.format("1-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(PacketName, PointsRanking_Config.Packet)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

--#region ABRE A JANELA
function PointsRanking.Open()
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
	  --if	CheckWindowOpen(UIShop)				== 1	then	return							end
	  if	CheckWindowOpen(UIStore)			== 1	then	CloseWindow(UIStore)			end
	  if	CheckWindowOpen(UIOtherStore)		== 1	then	return							end
	  if	CheckWindowOpen(UICharacter)		== 1	then	CloseWindow(UICharacter)		end
	  if	CheckWindowOpen(UIOptions)			== 1	then	return							end
	  if	CheckWindowOpen(UIHelp)				== 1	then	return							end
	  if	CheckWindowOpen(UIFastDial)			== 1	then	return							end
	  if	CheckWindowOpen(UISkillTree)		== 1	then	return							end
	  if	CheckWindowOpen(UINPC_Titus)		== 1	then	return							end
	 -- if	CheckWindowOpen(UICashShop)			== 1	then	return							end
	  if	CheckWindowOpen(UIFullMap)			== 1	then	return							end
	  if	CheckWindowOpen(UINPC_Dialog)		== 1	then	return							end
	  if	CheckWindowOpen(UIGensInfo)			== 1	then	CloseWindow(UIGensInfo)			end
	  if	CheckWindowOpen(UINPC_Julia)		== 1	then	return							end
	OpenWindow(UIInventory)
	PointsRanking_Config.WindowInfo.PosX = 260+(WindowGetWidth()-640)
	PointsRanking_Config.WindowInfo.Offset = WindowGetWidth()-640
    PointsRanking_Config.Lang = GetLanguage()
	UICustomInterface = PointsRanking_Config.WindowID

end
--#endregion

--#region FECHA A JANELA
function PointsRanking.Close()
	CloseWindow(UIInventory)
	UICustomInterface = 0
	PointsRanking.Define()
end

function PointsRanking.CloseInventario()
	--CloseWindow(UIInventory)
	UICustomInterface = 0
	PointsRanking.Define()
end
--#endregion

--#region VERIFICA JANELA ABERTA E AREA PROTEGIDA DA TELA
function PointsRanking.CheckOpen()
	if UICustomInterface == PointsRanking_Config.WindowID then return true else return false end
end

--#region FUNÇÕES DE BOTÃO
function PointsRanking.CreateButton(ButtonID, x, y, w, h)
	if PointsRanking_Config.Button[ButtonID] == nil then
		table.insert(PointsRanking_Config.Button, ButtonID)
		PointsRanking_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		PointsRanking_Config.Button[ButtonID].x = x
		PointsRanking_Config.Button[ButtonID].y = y
		PointsRanking_Config.Button[ButtonID].w = w
		PointsRanking_Config.Button[ButtonID].h = h
	end
end

function PointsRanking.ButtonClicked(ButtonID)
	if PointsRanking_Config.Button[ButtonID] == nil then return false end
	if PointsRanking_Config.Button[ButtonID].clicked then
		if PointsRanking_Config.Button[ButtonID].timer >= 2 then
			PointsRanking_Config.Button[ButtonID].timer = 0
			PointsRanking_Config.Button[ButtonID].clicked = false
			return false
		end
		PointsRanking_Config.Button[ButtonID].timer = PointsRanking_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function PointsRanking.ButtonMouseOver(ButtonID)
	local x = MousePosX()
	local y = MousePosY()
	if PointsRanking_Config.Button[ButtonID] == nil then return false end
	if x >= PointsRanking_Config.Button[ButtonID].x and x <= (PointsRanking_Config.Button[ButtonID].x+PointsRanking_Config.Button[ButtonID].w) then
		if y >= PointsRanking_Config.Button[ButtonID].y and y <= (PointsRanking_Config.Button[ButtonID].y+PointsRanking_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end
--#endregion

function PointsRanking.GetPosX(PosX)
    return PointsRanking_Config.WindowInfo.PosX+PosX
end

function PointsRanking.GetPosY(PosY)
    return PointsRanking_Config.WindowInfo.PosY+PosY
end

function PointsRanking.GetText(id)
	return PointsRanking_Config.Texts[PointsRanking_Config.Lang][id]
end

function PointsRanking.InterfaceAfter()
    if not PointsRanking.CheckOpen() then return end

    if PointsRanking_Config.AlertWindow.Open then
        local addX = WindowGetWidthAdd()
		DrawInterface.InfoBox(false, WindowGetWidth()/2-112, 95, 224, 0, false)

		if PointsRanking_Config.AlertWindow.Type == -1 then
		    PointsRanking.CreateButton(PointsRanking_Config.ButtonID.ok, WindowGetWidth()/2-70, 140, 60, 18)
		    if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.ok, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					DrawButton.Medium(2, WindowGetWidth()/2-70, 140, 60, 18)
				else
					DrawButton.Medium(1, WindowGetWidth()/2-70, 140, 60, 18)
				end
		    else
                DrawButton.Medium(0, WindowGetWidth()/2-70, 140, 60, 18)
		    end

		    PointsRanking.CreateButton(PointsRanking_Config.ButtonID.cancel, WindowGetWidth()/2+10, 140, 60, 18)
		    if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.cancel, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					DrawButton.Medium(2, WindowGetWidth()/2+10, 140, 60, 18)
				else
					DrawButton.Medium(1, WindowGetWidth()/2+10, 140, 60, 18)
				end
		    else
                DrawButton.Medium(0, WindowGetWidth()/2+10, 140, 60, 18)
		    end

			SetFontType(1)
		    SetTextBg(0, 0, 0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(WindowGetWidth()/2-70+31, 145, PointsRanking.GetText(15), 60, 8)
            RenderText3(WindowGetWidth()/2+10+31, 145, PointsRanking.GetText(16), 60, 8)
		    SetTextColor(255, 255, 255, 255)
            RenderText3(WindowGetWidth()/2+1, 115, PointsRanking.GetText(14), 220, 8)
        else
            PointsRanking.CreateButton(PointsRanking_Config.ButtonID.ok,  WindowGetWidth()/2-30, 140, 60, 18)
			local btnState = 0
			if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.ok, MousePosX(), MousePosY()) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					btnState = 2
				else
					btnState = 1
				end
			end
			DrawButton.Medium(btnState,  WindowGetWidth()/2-30, 140, 60, 18)

            SetFontType(1)			
		    SetTextBg(0, 0, 0, 0)
		    SetTextColor(255, 255, 255, 255)
            RenderText3(WindowGetWidth()/2+1, 115, PointsRanking.GetText(12+PointsRanking_Config.AlertWindow.Type), 200, 8)
            SetTextColor(237, 214, 161, 255)
            RenderText3(WindowGetWidth()/2+1, 145, PointsRanking.GetText(15), 60, 8)
        end
    end

    SetBlend()
	local level = 0
	local exc = 0
	if PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Full then
		level = 0
		exc = 63
	end
	CreateItem(PointsRanking.GetPosX(73)+PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].X, PointsRanking.GetPosY(85)+PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Y, PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].W, PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].H, PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].ItemIndex, level, exc, 0, PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Size)

	if not PointsRanking_Config.AlertWindow.Open then
		if MousePosX() >= PointsRanking.GetPosX(65) and MousePosX() <= PointsRanking.GetPosX(65)+58 and MousePosY() >= PointsRanking.GetPosY(87) and MousePosY() <= PointsRanking.GetPosY(87)+36 then
			--for i in ipairs(PointsRanking_Config) do
			--	ShowItemDescription(MousePosX(), MousePosY(),  PointsRanking_Config.Itens[i].ItemIndex, 0, 0, 0, 0, 1, 0, 0)
			--end
			local luck = 0
			local skill = 0
			local opt = 0
			local dur = 0
			if PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Full then
				luck = 1
				skill = 1
				opt = 0
				dur = 255
			end
			--(PointsRanking.GetPosX(72)+PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].X, PointsRanking.GetPosY(85)+PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Y+30, PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].ItemIndex, level, skill, luck, opt, dur, exc, 0)
			ShowItemDescription(MousePosX(), MousePosY(), PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].ItemIndex, level, skill, luck, opt, dur, exc, 0)
		end
	end

	EndDrawBar()
end

function PointsRanking.Interface()
	local posX = 83
	--if IsTradeXIconShowing() == 1 then
	--	posX = posX + 27
	--end

	PointsRanking.CreateButton(PointsRanking_Config.ButtonID.abrir, posX, PointsRanking.GetPosY(2), 25, 24)
	EnableAlphaTest()
	local btnOpenstate = 0
	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.abrir) then
		btnOpenstate = 1
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnOpenstate = 2
		end
	end
	--DrawButton.Ranking(btnOpenstate, posX, PointsRanking.GetPosY(2), 25, 24)

    if not PointsRanking.CheckOpen() then return end

	  --if	CheckWindowOpen(UIInventory) 		== 0	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIFriendList) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIMoveList)			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIParty) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIQuest) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIGuild) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIGuildNpc) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UITrade) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIWarehouse) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIChaosBox)			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UICommandWindow) 	== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIPetInfo)	 		== 1	then	PointsRanking.Close()	end
	 -- if	CheckWindowOpen(UIShop)				== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIStore) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIOtherStore) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UICharacter) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIOptions) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIHelp)				== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIFastDial)			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UISkillTree) 		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UINPC_Titus) 		== 1	then	PointsRanking.Close()	end
	  --if	CheckWindowOpen(UICashShop)			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIFullMap) 			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UINPC_Dialog)		== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UIGensInfo)			== 1	then	PointsRanking.Close()	end
	  if	CheckWindowOpen(UINPC_Julia)		== 1	then	PointsRanking.Close()	end

    EnableAlphaTest()

	for btn = 2, 10 do
		PointsRanking.CreateButton(btn, 0, 0, 0, 0)
	end

    PointsRanking.CreateButton(PointsRanking_Config.ButtonID.fechar, PointsRanking.GetPosX(23), PointsRanking.GetPosY(393), 25, 24)

	DisableAlphaBlend()
	
	--RenderImage2(40046, PointsRanking.GetPosX(15)-125, 0, 205, 429, 0, 0, 0.9001625, 0.92695, 1, 1, 0.0)

	EnableAlphaTest()
    DrawInterface.InterfaceLateral(1)
	DrawInterface.TradeLine2(PointsRanking.GetPosX(3)+0.2, PointsRanking.GetPosY(429/2))

    SetBlend()
	glColor4f(0, 0, 0, 0.6)
	DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(45), 158, 25) -- saldo
	DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(80), 158, 48.5) -- select item box


	--RenderImage2(600128, PointsRanking.GetPosX(15), PointsRanking.GetPosY(80), 158, 48.5, 0.002, 0.002, 0.6391351, 0.55768, 1, 1, 1.0)
	--glColor4f(0, 0, 0, 0.6)
	--DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(300), 158, 80) -- ranking

	--TOP 1
	if MousePosX() >= PointsRanking.GetPosX(15) and MousePosX() <= PointsRanking.GetPosX(15+158) and MousePosY() >= PointsRanking.GetPosY(317) and MousePosY() <= PointsRanking.GetPosY(317+20) then
		glColor4f(0.2, 0.2, 0.2, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(317), 158, 20) -- ranking
	else
		glColor4f(0, 0, 0, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(317), 158, 20) -- ranking
	end

	--TOP 2
	if MousePosX() >= PointsRanking.GetPosX(15) and MousePosX() <= PointsRanking.GetPosX(15+158) and MousePosY() >= PointsRanking.GetPosY(338) and MousePosY() <= PointsRanking.GetPosY(338+21) then
		glColor4f(0.2, 0.2, 0.2, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(338), 158, 21) -- ranking
	else
		glColor4f(0, 0, 0, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(338), 158, 21) -- ranking
	end

	--TOP 3
	if MousePosX() >= PointsRanking.GetPosX(15) and MousePosX() <= PointsRanking.GetPosX(15+158) and MousePosY() >= PointsRanking.GetPosY(360) and MousePosY() <= PointsRanking.GetPosY(360+21) then
		glColor4f(0.2, 0.2, 0.2, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(360), 158, 21) -- ranking
	else
		glColor4f(0, 0, 0, 0.6)
		DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(360), 158, 21) -- ranking
	end

	glColor4f(0.10, 0.10, 0.10, 0.10)
    DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(45), 158, 25) -- saldo
    DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(80), 158, 48.5) -- select item box
    DrawBar(PointsRanking.GetPosX(15), PointsRanking.GetPosY(300), 158, 80) -- ranking

	glColor4f(0.45, 0.0, 0.07, 1.0)
	DrawBar(PointsRanking.GetPosX(17), PointsRanking.GetPosY(302), 44, 15) -- ranking titulo
	DrawBar(PointsRanking.GetPosX(62), PointsRanking.GetPosY(302), 64, 15) -- ranking persoagem
	DrawBar(PointsRanking.GetPosX(127), PointsRanking.GetPosY(302), 44, 15) -- ranking pontos


	glColor4f(0.5, 0.5, 0.5, 0.2)
	DrawBar(PointsRanking.GetPosX(17), PointsRanking.GetPosY(337), 154, 0.5) -- ranking linha separação
	DrawBar(PointsRanking.GetPosX(17), PointsRanking.GetPosY(359), 154, 0.5) -- ranking linha separação
	EndDrawBar()

	EnableAlphaTest()
	SetFontType(1)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(255, 255, 255, 255)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(14), PointsRanking.GetText(1), 160, 8)
	SetFontType(4)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(143), GetNameByIndex(PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].ItemIndex), 160, 8)
	SetFontType(0)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(158), PointsRanking.GetText(4):format(PointsRanking_Config.Itens[PointsRanking_Config.CurrentItem].Price), 160, 8)

	SetFontType(1)
	SetTextColor(250, 198, 15, 240)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(53), PointsRanking.GetText(2):format(PointsRanking_Config.Saldo.Atual, PointsRanking_Config.Saldo.Acumulado), 155, 8)

	local btnState = 0
	PointsRanking.CreateButton(PointsRanking_Config.ButtonID.anterior, PointsRanking.GetPosX(16), PointsRanking.GetPosY(83), 45, 44)
	btnState = 0
	if PointsRanking_Config.CurrentItem > 1 then
		if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.anterior) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				btnState = 2
			else
				btnState = 1
			end
		end
		if PointsRanking.ButtonClicked(PointsRanking_Config.ButtonID.anterior) then
			btnState = 2
		end
	else
		btnState = 3
	end

	DrawButton.Previous(btnState, PointsRanking.GetPosX(16), PointsRanking.GetPosY(83), 45, 44)

	PointsRanking.CreateButton(PointsRanking_Config.ButtonID.proximo, PointsRanking.GetPosX(127), PointsRanking.GetPosY(83), 45, 44)
	btnState = 0
	if PointsRanking_Config.CurrentItem < #PointsRanking_Config.Itens then
		if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.proximo) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				btnState = 2
			else
				btnState = 1
			end
		end
		if PointsRanking.ButtonClicked(PointsRanking_Config.ButtonID.proximo) then
			btnState = 2
		end
	else
		btnState = 3
	end
	DrawButton.Next(btnState, PointsRanking.GetPosX(127), PointsRanking.GetPosY(83), 45, 44)

	PointsRanking.CreateButton(PointsRanking_Config.ButtonID.comprar, PointsRanking.GetPosX(47), PointsRanking.GetPosY(183), 93, 24)
	btnState = 0
	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.comprar) then
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnState = 2
		else
			btnState = 1
		end
	end
	if PointsRanking.ButtonClicked(PointsRanking_Config.ButtonID.comprar) then
		btnState = 2
	end
	DrawButton.Red(btnState, PointsRanking.GetPosX(47), PointsRanking.GetPosY(183), 93, 24)


	PointsRanking.CreateButton(PointsRanking_Config.ButtonID.duvida, PointsRanking.GetPosX(95-11), PointsRanking.GetPosY(277), 22, 20)
	btnState = 0
	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.duvida) then
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnState = 2
		else
			btnState = 1
		end
		DrawTooltip(PointsRanking.GetPosX(77), PointsRanking.GetPosY(267), PointsRanking.GetText(17))
	end
	if PointsRanking.ButtonClicked(PointsRanking_Config.ButtonID.duvida) then
		btnState = 2
	end
	DrawButton.Info(btnState, PointsRanking.GetPosX(95-11), PointsRanking.GetPosY(277), 22, 20)

	SetFontType(12)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(237, 214, 161, 255)
	RenderText3(PointsRanking.GetPosX(47+(93/2)), PointsRanking.GetPosY(190), PointsRanking.GetText(5), 93, 8)

	SetFontType(1)
	SetTextColor(250, 198, 15, 240)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(233), PointsRanking.GetText(9), 155, 8)
	SetFontType(0)
	SetTextColor(255, 255, 255, 255)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(245), PointsRanking.GetText(10), 155, 8)
	RenderText3(PointsRanking.GetPosX(95), PointsRanking.GetPosY(255), PointsRanking.GetText(11), 155, 8)

	SetFontType(11)
    SetTextColor(237, 214, 161, 255)
	RenderText3(PointsRanking.GetPosX(17+(44/2)), PointsRanking.GetPosY(306), PointsRanking.GetText(6), 44, 8)
	RenderText3(PointsRanking.GetPosX(62+(64/2)), PointsRanking.GetPosY(306), PointsRanking.GetText(7), 64, 8)
	RenderText3(PointsRanking.GetPosX(127+(44/2)), PointsRanking.GetPosY(306), PointsRanking.GetText(8), 44, 8)

	SetFontType(0)
	SetTextColor(255, 255, 255, 255)
	for p = 1, 3 do	
		RenderText3(PointsRanking.GetPosX(17+(44/2)), PointsRanking.GetPosY(305+20*p), string.format("%dº", p), 44, 8)
		RenderText3(PointsRanking.GetPosX(62+(64/2)), PointsRanking.GetPosY(305+20*p), PointsRanking_Config.Ranking[p].Nome, 64, 8)
		RenderText3(PointsRanking.GetPosX(127+(44/2)), PointsRanking.GetPosY(305+20*p), PointsRanking_Config.Ranking[p].Pontos, 44, 8)
	end

	--#region BUTTON FECHAR
		local btnState = 0
		if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.fechar) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				btnState = 2
			else
				btnState = 1
			end
			DrawTooltip(PointsRanking.GetPosX(24), PointsRanking.GetPosY(378), PointsRanking.GetText(3))
		end
		DrawButton.Close(btnState, PointsRanking.GetPosX(23), PointsRanking.GetPosY(393), 25, 24)
	--#endregion

	DisableAlphaBlend()
end

function PointsRanking.UpdateMouse()
	local offset = WindowGetWidthAdd()+106

	--if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.abrir) then
	--	DisableClickClient()
	--	if CheckReleasedKey(Keys.LButton) == 1 then
	--		DisableClickClient()
	--		if not PointsRanking.CheckOpen() then
	--			PointsRanking.RequestOpen()
	--		else
	--			PointsRanking.Close()
	--		end
	--	end
	--end

    if not PointsRanking.CheckOpen() then return end

	if PointsRanking_Config.AlertWindow.Open then
		DisableClickClient()
		if PointsRanking_Config.AlertWindow.Type == -1 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.ok) then
					PointsRanking_Config.Locked = true
					PointsRanking.SendBuy()
					PointsRanking_Config.AlertWindow.Open = false
				end

				if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.cancel) then
					PointsRanking_Config.AlertWindow.Open = false
				end
			end
			return
		end
		if CheckReleasedKey(Keys.LButton) == 1 then
			if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.ok) then
				PointsRanking_Config.AlertWindow.Open = false
			end
		end

		return
	end

	if PointsRanking.Open then
		--FIX ICONE FECHAR OU TRADEX
		--if IsTradeXIconShowing() == 1 then
		--	if MousePosX() >= 83 and MousePosX() <= 83+25 and MousePosY() >= PointsRanking.GetPosY(2) and MousePosY() <= PointsRanking.GetPosY(2)+24 then
		--		DisableClickClient()
		--		if CheckReleasedKey(Keys.LButton) == 1 then
		--			return
		--		end
		--	end
		--end

		if CheckWindowOpen(UIWarehouse) == 1 then
			PointsRanking.Close()
			OpenWindow(UIWarehouse)
			return
		end

		--BUTTON FECHAR INVENTÝRIO
		if MousePosX() >= PointsRanking.GetPosX(190+23) and MousePosX() <= PointsRanking.GetPosX(190+23+25) and MousePosY() >= 391 and MousePosY()<= 391+25 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				return
			end
		end

		--BUTTON ABRIR LOJINHA INVENTÝRIO
		if MousePosX() >= PointsRanking.GetPosX(190+23+60) and MousePosX() <= PointsRanking.GetPosX(189+23+60+25) and MousePosY() >= 391 and MousePosY()<= 391+25 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				OpenWindow(UIStore)
				return
			end
		end

		--BUTTON INTERFACE PARTY
		if MousePosX() >= offset+238 and MousePosX() <= offset+238+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				OpenWindow(UIParty)
				return
			end
		end

		--BUTTON INTERFACE CHARACTER
		if MousePosX() >= offset+238+31 and MousePosX() <= offset+238+31+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				OpenWindow(UICharacter)
				return
			end
		end

		--BUTTON INTERFACE INVENTÝRIO
		if MousePosX() >= offset+238+31+31 and MousePosX() <= offset+238+31+31+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				if CheckWindowOpen(UIInventory) == 1 then
					CloseWindow(UIInventory)
				end
			end
		end

		--BUTTON INTERFACE GUILD
		if MousePosX() >= 91+WindowGetWidthAdd() and MousePosX() <= 91+16+WindowGetWidthAdd() and MousePosY() >= 458 and MousePosY()<= 458+15 then
			if CheckReleasedKey(Keys.LButton) == 1 then
				DisableClickClient()
				PointsRanking.Close()
				OpenWindow(UIGuild)
			end
		end
	end

	if MousePosX() >= PointsRanking.GetPosX(0) and MousePosX() <= PointsRanking.GetPosX(PointsRanking_Config.WindowInfo.Width) then
        DisableClickClient()
    end

    if CheckReleasedKey(Keys.LButton) == 0 then return end

	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.anterior) then
		if PointsRanking_Config.CurrentItem > 1 then
			PointsRanking_Config.CurrentItem = PointsRanking_Config.CurrentItem - 1
		end
		return
	end

	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.proximo) then
		if PointsRanking_Config.CurrentItem < #PointsRanking_Config.Itens then
			PointsRanking_Config.CurrentItem = PointsRanking_Config.CurrentItem + 1
		end
		return
	end

	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.comprar) then
		if not PointsRanking_Config.Locked then
			PointsRanking_Config.AlertWindow.Type = -1
			PointsRanking_Config.AlertWindow.Open = true
		end
		return
	end

	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.duvida) then
		--OpenBrowser(PointsRanking_Config.Discord)
		return
	end

	if PointsRanking.ButtonMouseOver(PointsRanking_Config.ButtonID.fechar) then
		PointsRanking.CloseInventario()
		return
	end
end

function PointsRanking.UpdateKey()
    if not PointsRanking.CheckOpen() then return end

    if CheckPressedKey(Keys.Escape) ~= 0 then
        DisableClickClient()

		if PointsRanking_Config.AlertWindow.Open then
			PointsRanking_Config.AlertWindow.Open = false
			return
		end
        PointsRanking.Close()
    end

	if PointsRanking.Open then
		if CheckPressedKey(Keys.V) ~= 0 or CheckPressedKey(Keys.I) ~= 0 then
			DisableClickClient()

			if PointsRanking_Config.AlertWindow.Open then
				PointsRanking_Config.AlertWindow.Open = false
				return
			end
			PointsRanking.Close()
		end

		--KEY "V/I + S"
		if CheckWindowOpen(UIInventory) then
			if CheckPressedKey(Keys.S) ~= 0 then
				if PointsRanking_Config.AlertWindow.Open then
					PointsRanking_Config.AlertWindow.Open = false
					return
				end
				PointsRanking.Close()
				OpenWindow(UIStore)
			end
		end

		--KEY "C"
		if CheckPressedKey(Keys.C) ~= 0 then
			DisableClickClient()

			if PointsRanking_Config.AlertWindow.Open then
				PointsRanking_Config.AlertWindow.Open = false
				return
			end
			PointsRanking.Close()
			OpenWindow(UICharacter)
		end

		--KEY "G"
		if CheckPressedKey(Keys.G) ~= 0 then
			DisableClickClient()

			if PointsRanking_Config.AlertWindow.Open then
				PointsRanking_Config.AlertWindow.Open = false
				return
			end
			PointsRanking.Close()
			OpenWindow(UIGuild)
		end

		--KEY "B"
		if CheckPressedKey(Keys.B) ~= 0 then
			DisableClickClient()
			PointsRanking.Close()
			OpenWindow(UIWarehouse)
		end

		--KEY "P"
		if CheckPressedKey(Keys.P) ~= 0 then
			DisableClickClient()

			if PointsRanking_Config.AlertWindow.Open then
				PointsRanking_Config.AlertWindow.Open = false
				return
			end
			PointsRanking.Close()
			OpenWindow(UIParty)
		end
	end

    if CheckPressedKey(Keys.Return) ~= 0 then
        DisableClickClient()
		if PointsRanking_Config.AlertWindow.Open then
			PointsRanking_Config.Locked = true
			PointsRanking.SendBuy()
			PointsRanking_Config.AlertWindow.Open = false
			return
		end
    end
end

function PointsRanking.Protocol(Packet, PacketName)
    if Packet ~= PointsRanking_Config.Packet then return false end

    local index = UserGetIndex()
    local name = UserGetName()

	if PacketName == string.format("2-%s-%d", name, index) then
		PointsRanking_Config.Saldo.Atual = GetDwordPacket(PacketName, -1)
		PointsRanking_Config.Saldo.Acumulado = GetDwordPacket(PacketName, -1)
		
       --local qtd = GetBytePacket(PacketName, -1)
       --for key = 1, qtd do
       --    local Valor       = GetWordPacket(PacketName,-1)
       --    local ItemIndex   = GetWordPacket(PacketName,-1)
       --    local Level       = GetBytePacket(PacketName,-1)
       --    local Dur         = GetBytePacket(PacketName,-1)
       --    local Skill       = GetBytePacket(PacketName,-1)
       --    local Luck        = GetBytePacket(PacketName,-1)
       --    local Opt         = GetBytePacket(PacketName,-1)
       --    local Exc         = GetBytePacket(PacketName,-1)
       --    local Ancient     = GetBytePacket(PacketName,-1)
       --    local Harmony     = GetBytePacket(PacketName,-1)
       --    local nLen        = GetBytePacket(PacketName,-1)
       --    local Name        = GetCharPacketLength(PacketName, -1, nLen)
       --    local X           = GetBytePacket(PacketName,-1)
       --    local Y           = GetBytePacket(PacketName,-1)
       --    nLen              = GetBytePacket(PacketName,-1)
       --    local Size = tonumber(GetCharPacketLength(PacketName, -1, nLen))
       --    PointsRanking_Config.ItemList[key] = {ItemIndex = ItemIndex, Level = Level, Dur = Dur, Skill = Skill, Luck = Luck, Opt = Opt, Exc = Exc, Ancient = Ancient, Harmony = Harmony, Price = Valor, Name = Name, X = X, Y = Y, Size = Size}
       --end

		for i = 1, 3 do
			local nLen = GetBytePacket(PacketName, -1)
			local nome = GetCharPacketLength(PacketName, -1, nLen)
			local total = GetDwordPacket(PacketName, -1)
			if total == 0 then nome = "-" end
			PointsRanking_Config.Ranking[i] = {Nome = nome, Pontos = total}
		end

		ClearPacket(PacketName)
		PointsRanking.Open()
		return true
    end

	if PacketName == string.format("4-%s-%d", name, index) then
		local retorno = GetBytePacket(PacketName, -1)
		PointsRanking_Config.Locked = false
		if retorno < 2 then
			PointsRanking_Config.AlertWindow.Type = retorno
			PointsRanking_Config.AlertWindow.Open = true
		else
			PointsRanking_Config.Saldo.Atual = GetDwordPacket(PacketName, -1)
			PointsRanking_Config.Saldo.Acumulado = GetDwordPacket(PacketName, -1)
		end
		ClearPacket(PacketName)
		return true
	end
end

function PointsRanking.SendBuy()
	local PacketName = string.format("3-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(PacketName, PointsRanking_Config.Packet)
	SetBytePacket(PacketName, PointsRanking_Config.CurrentItem)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

PointsRanking.Init()

return PointsRanking