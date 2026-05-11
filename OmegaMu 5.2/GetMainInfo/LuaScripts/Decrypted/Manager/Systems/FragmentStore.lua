FragmentStore = {}

FragmentStore.Enabled = true

function FragmentStore.Init()
	if FragmentStore.Enabled then
		if FragmentStore_Config.Enabled then
			InterfaceController.BeforeMainProc(FragmentStore.Interface)
			InterfaceController.MainProc(FragmentStore.InterfaceAfter)
			InterfaceController.ClientProtocol(FragmentStore.Protocol)
			InterfaceController.UpdateMouse(FragmentStore.UpdateMouse)
			InterfaceController.UpdateKey(FragmentStore.UpdateKey)
			InterfaceController.AfterScriptLoad(FragmentStore.AfterLoad)
			FragmentStore.Define()
		end
	end
end

function FragmentStore.Define()
    FragmentStore_Config.WindowInfo = {PosX = 260, PosY = 0, Width = 190, Height = 429, Offset = 0}
    FragmentStore_Config.AlertWindow = {Open = false, Type = -1}
    FragmentStore_Config.Lang = "Por"
    FragmentStore_Config.CurrentItem = 1
	FragmentStore_Config.WindowOffset = 0
    FragmentStore_Config.ItemList = {}
    FragmentStore_Config.Saldo = 0
    FragmentStore_Config.Ranking = {}
    FragmentStore_Config.Button = {}
	FragmentStore_Config.ButtonID = {
		abrir    = 1,
		fechar   = 2,
		ok       = 3,
		cancel   = 4,
		anterior = 5,
		proximo  = 6,
		comprar  = 7,
		duvida   = 8,
        registrar = 9,
	}
	FragmentStore_Config.TradeIconOffset = 0
	FragmentStore_Config.Locked = false
end

function FragmentStore.AfterLoad()
	FragmentStore_Config.WindowInfo.PosX = 260+(WindowGetWidth()-640)
	FragmentStore_Config.WindowInfo.Offset = WindowGetWidth()-640
    FragmentStore_Config.Lang = GetLanguage()
end

function FragmentStore.Open()
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
	if	CheckWindowOpen(UIStore)			== 1	then	CloseWindow(UIStore)			end
	if	CheckWindowOpen(UIOtherStore)		== 1	then	return							end
	if	CheckWindowOpen(UICharacter)		== 1	then	CloseWindow(UICharacter)		end
	if	CheckWindowOpen(UIOptions)			== 1	then	return							end
	if	CheckWindowOpen(UIHelp)				== 1	then	return							end
	if	CheckWindowOpen(UIFastDial)			== 1	then	return							end
	if	CheckWindowOpen(UISkillTree)		== 1	then	return							end
	if	CheckWindowOpen(UINPC_Titus)		== 1	then	return							end
	if	CheckWindowOpen(UIFullMap)			== 1	then	return							end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	return							end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	CloseWindow(UIGensInfo)			end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	return							end
	OpenWindow(UIInventory)
	FragmentStore_Config.WindowInfo.PosX = 260+(WindowGetWidth()-640)
	FragmentStore_Config.WindowInfo.Offset = WindowGetWidth()-640
    FragmentStore_Config.Lang = GetLanguage()
	UICustomInterface = FragmentStore_Config.WindowID
end

function FragmentStore.Close()
	CloseWindow(UIInventory)
	UICustomInterface = 0
	FragmentStore.Define()
end

function FragmentStore.CloseInventario()
	UICustomInterface = 0
	FragmentStore.Define()
end

function FragmentStore.CheckOpen()
	if UICustomInterface == FragmentStore_Config.WindowID then return true else return false end
end

function FragmentStore.RequestOpen()
	local PacketName = string.format("1-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(PacketName, FragmentStore_Config.Packet)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

function FragmentStore.CreateButton(ButtonID, x, y, w, h)
	if FragmentStore_Config.Button[ButtonID] == nil then
		table.insert(FragmentStore_Config.Button, ButtonID)
		FragmentStore_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		FragmentStore_Config.Button[ButtonID].x = x
		FragmentStore_Config.Button[ButtonID].y = y
		FragmentStore_Config.Button[ButtonID].w = w
		FragmentStore_Config.Button[ButtonID].h = h
	end
end

function FragmentStore.ButtonClicked(ButtonID)
	if FragmentStore_Config.Button[ButtonID] == nil then return false end
	if FragmentStore_Config.Button[ButtonID].clicked then
		if FragmentStore_Config.Button[ButtonID].timer >= 2 then
			FragmentStore_Config.Button[ButtonID].timer = 0
			FragmentStore_Config.Button[ButtonID].clicked = false
			return false
		end
		FragmentStore_Config.Button[ButtonID].timer = FragmentStore_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function FragmentStore.ButtonMouseOver(ButtonID)
	local x = MousePosX()
	local y = MousePosY()
	if FragmentStore_Config.Button[ButtonID] == nil then return false end
	if x >= FragmentStore_Config.Button[ButtonID].x and x <= (FragmentStore_Config.Button[ButtonID].x+FragmentStore_Config.Button[ButtonID].w) then
		if y >= FragmentStore_Config.Button[ButtonID].y and y <= (FragmentStore_Config.Button[ButtonID].y+FragmentStore_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end

function FragmentStore.GetPosX(PosX)
    return FragmentStore_Config.WindowInfo.PosX+PosX
end

function FragmentStore.GetPosY(PosY)
    return FragmentStore_Config.WindowInfo.PosY+PosY
end

function FragmentStore.GetText(id)
	return FragmentStore_Config.Texts[FragmentStore_Config.Lang][id]
end

function FragmentStore.InterfaceAfter()
    if not FragmentStore.CheckOpen() then return end

    if FragmentStore_Config.AlertWindow.Open then
        local addX = WindowGetWidthAdd()
		DrawInterface.InfoBox(false, WindowGetWidth()/2-112, 95, 224, 0, false)

		if FragmentStore_Config.AlertWindow.Type == -1 or FragmentStore_Config.AlertWindow.Type == 20 then
		    FragmentStore.CreateButton(FragmentStore_Config.ButtonID.ok, WindowGetWidth()/2-70, 140, 60, 18)
		    if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.ok) then
				if CheckRepeatKey(Keys.LButton) == 1 then
					DrawButton.Medium(2, WindowGetWidth()/2-70, 140, 60, 18)
				else
					DrawButton.Medium(1, WindowGetWidth()/2-70, 140, 60, 18)
				end
		    else
                DrawButton.Medium(0, WindowGetWidth()/2-70, 140, 60, 18)
		    end

		    FragmentStore.CreateButton(FragmentStore_Config.ButtonID.cancel, WindowGetWidth()/2+10, 140, 60, 18)
		    if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.cancel) then
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
            RenderText3(WindowGetWidth()/2-70+31, 145, FragmentStore.GetText(15), 60, 8)
            RenderText3(WindowGetWidth()/2+10+31, 145, FragmentStore.GetText(16), 60, 8)
            SetTextColor(255, 255, 255, 255)
            if FragmentStore_Config.AlertWindow.Type == 20 then
                RenderText3(WindowGetWidth()/2+1, 108, FragmentStore.GetText(7), 220, 8)
                RenderText3(WindowGetWidth()/2+1, 117, FragmentStore.GetText(8), 220, 8)
            else
                RenderText3(WindowGetWidth()/2+1, 115, FragmentStore.GetText(14), 220, 8)
            end
                
            
        else
            FragmentStore.CreateButton(FragmentStore_Config.ButtonID.ok,  WindowGetWidth()/2-30, 140, 60, 18)
			local btnState = 0
			if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.ok) then
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
            RenderText3(WindowGetWidth()/2+1, 115, FragmentStore.GetText(12+FragmentStore_Config.AlertWindow.Type), 200, 8)
            SetTextColor(237, 214, 161, 255)
            RenderText3(WindowGetWidth()/2+1, 145, FragmentStore.GetText(15), 60, 8)
        end
    end

    SetBlend()

    local item = FragmentStore_Config.ItemList[FragmentStore_Config.CurrentItem]
	CreateItem(FragmentStore.GetPosX(73)+item.X, FragmentStore.GetPosY(85)+item.Y, 0, 0, item.ItemIndex, item.Level, item.Exc, 0, item.Size)

	if not FragmentStore_Config.AlertWindow.Open then
		if MousePosX() >= FragmentStore.GetPosX(65) and MousePosX() <= FragmentStore.GetPosX(65)+58 and MousePosY() >= FragmentStore.GetPosY(87) and MousePosY() <= FragmentStore.GetPosY(87)+36 then
			ShowDescriptionComplete(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Dur, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, item.Harmony, 255, 255, 255, 255, 255,255)
		end
	end

	EndDrawBar()
end

function FragmentStore.Interface()
	local posX = 83
	
	FragmentStore.CreateButton(FragmentStore_Config.ButtonID.abrir, posX, FragmentStore.GetPosY(2), 25, 24)
	EnableAlphaTest()
	local btnOpenstate = 0
	if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.abrir) then
		btnOpenstate = 1
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnOpenstate = 2
		end
	end
	--DrawButton.Ranking(btnOpenstate, posX, FragmentStore.GetPosY(2), 25, 24)

   if not FragmentStore.CheckOpen() then return end

    EnableAlphaTest()

	for btn = 2, 10 do
		FragmentStore.CreateButton(btn, 0, 0, 0, 0)
	end

    FragmentStore.CreateButton(FragmentStore_Config.ButtonID.fechar, FragmentStore.GetPosX(23), FragmentStore.GetPosY(393), 25, 24)

	DisableAlphaBlend()

	EnableAlphaTest()
	
	local offset = WindowGetWidth()-640
	EnableAlphaTest()
	RenderImage2(40046, 260+offset-FragmentStore_Config.WindowOffset, 0, 191, 429, 0.0, 1.0, 0.83, 0.935, 1, 1, 1.0)
    DrawInterface.InterfaceLateral(1)
	
	DrawInterface.TradeLine2(FragmentStore.GetPosX(2)+1, FragmentStore.GetPosY(429/2))

    SetBlend()
	glColor4f(0, 0, 0, 0.6)
	DrawBar(FragmentStore.GetPosX(15), FragmentStore.GetPosY(45), 158, 25) -- saldo
	DrawBar(FragmentStore.GetPosX(15), FragmentStore.GetPosY(80), 158, 48.5) -- select item box
	
	EndDrawBar()

	EnableAlphaTest()
    local item = FragmentStore_Config.ItemList[FragmentStore_Config.CurrentItem]

	SetFontType(14)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(255, 255, 255, 255)
	RenderText3(FragmentStore.GetPosX(98), FragmentStore.GetPosY(14), FragmentStore.GetText(1), 160, 8)
	SetFontType(4)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(143), item.Name, 160, 8)
	SetFontType(0)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(158), FragmentStore.GetText(4):format(item.Price), 160, 8)

	SetFontType(1)
	SetTextColor(250, 198, 15, 240)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(53), FragmentStore.GetText(2):format(FragmentStore_Config.Saldo), 155, 8)

	local btnState = 0
	FragmentStore.CreateButton(FragmentStore_Config.ButtonID.anterior, FragmentStore.GetPosX(16), FragmentStore.GetPosY(83), 45, 44)
	btnState = 0
	if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.anterior) then
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnState = 2
		else
			btnState = 1
		end
	end
	if FragmentStore.ButtonClicked(FragmentStore_Config.ButtonID.anterior) then
		btnState = 2
	end

	DrawButton.Previous(btnState, FragmentStore.GetPosX(16), FragmentStore.GetPosY(83), 45, 44)

	FragmentStore.CreateButton(FragmentStore_Config.ButtonID.proximo, FragmentStore.GetPosX(127), FragmentStore.GetPosY(83), 45, 44)
	btnState = 0
	if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.proximo) then
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnState = 2
		else
			btnState = 1
		end
	end
	if FragmentStore.ButtonClicked(FragmentStore_Config.ButtonID.proximo) then
		btnState = 2
	end
	DrawButton.Next(btnState, FragmentStore.GetPosX(127), FragmentStore.GetPosY(83), 45, 44)

	FragmentStore.CreateButton(FragmentStore_Config.ButtonID.comprar, FragmentStore.GetPosX(47), FragmentStore.GetPosY(183), 93, 24)
	btnState = 0
	if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.comprar) then
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnState = 2
		else
			btnState = 1
		end
	end
	if FragmentStore.ButtonClicked(FragmentStore_Config.ButtonID.comprar) then
		btnState = 2
	end
	DrawButton.Red(btnState, FragmentStore.GetPosX(47), FragmentStore.GetPosY(183), 93, 24)

    -- BOTÃO REGISTRAR ADICIONADO AQUI
    FragmentStore.CreateButton(FragmentStore_Config.ButtonID.registrar, FragmentStore.GetPosX(47), FragmentStore.GetPosY(355), 93, 24)
    btnState = 0
    if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.registrar) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnState = 2
        else
            btnState = 1
        end
    end
    if FragmentStore.ButtonClicked(FragmentStore_Config.ButtonID.registrar) then
        btnState = 2
    end
    DrawButton.Red(btnState, FragmentStore.GetPosX(47), FragmentStore.GetPosY(355), 93, 24)

	SetFontType(1)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(237, 214, 161, 255)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(280), FragmentStore.GetText(18), 180, 8)
	SetFontType(12)
	RenderText3(FragmentStore.GetPosX(47+(93/2)), FragmentStore.GetPosY(190), FragmentStore.GetText(5), 93, 8)
	RenderText3(FragmentStore.GetPosX(47+(93/2)), FragmentStore.GetPosY(362), FragmentStore.GetText(6), 93, 8)

	SetFontType(1)
	SetTextColor(250, 198, 15, 240)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(233), FragmentStore.GetText(9), 155, 8)
	SetFontType(0)
	SetTextColor(255, 255, 255, 255)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(245), FragmentStore.GetText(10), 155, 8)
	RenderText3(FragmentStore.GetPosX(95), FragmentStore.GetPosY(255), FragmentStore.GetText(11), 155, 8)

	--#region BUTTON FECHAR
		local btnState = 0
		if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.fechar) then
			if CheckRepeatKey(Keys.LButton) == 1 then
				btnState = 2
			else
				btnState = 1
			end
			DrawTooltip(FragmentStore.GetPosX(24), FragmentStore.GetPosY(378), FragmentStore.GetText(3))
		end
		DrawButton.Close(btnState, FragmentStore.GetPosX(12), FragmentStore.GetPosY(393), 25, 24)
	--#endregion

    RenderImage2(40065, 320+offset-FragmentStore_Config.WindowOffset, 159, 5, 5, 0, 0, 0.591827401425252121, 0.591827401425252121, 1, 1, 1.0)
    RenderImageAuto(40044, 300+offset-FragmentStore_Config.WindowOffset, 275, 110, 70, 1, 1, 1.0)

	DisableAlphaBlend()

    SetBlend(1)

    CreateItem(FragmentStore.GetPosX(75), FragmentStore.GetPosY(290), FragmentStore_Config.FragmentItem.X, FragmentStore_Config.FragmentItem.Y, FragmentStore_Config.FragmentItem.ItemIndex, 0, 0, 0, FragmentStore_Config.FragmentItem.Size)

    EndDrawBar()
end

function FragmentStore.UpdateMouse()
    local offset = WindowGetWidthAdd()+106
	
	if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.abrir) then
		DisableClickClient()
		if CheckReleasedKey(Keys.LButton) == 1 then
			DisableClickClient()
			if not FragmentStore.CheckOpen() then
				FragmentStore.RequestOpen()
			else
				FragmentStore.Close()
			end
		end
	end

    if not FragmentStore.CheckOpen() then return end

    -- Primeiro verifique se a janela de alerta está aberta
    if FragmentStore_Config.AlertWindow.Open then
        DisableClickClient()
        if FragmentStore_Config.AlertWindow.Type == -1 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.ok) then
                    FragmentStore_Config.Locked = true
                    FragmentStore.SendBuy()
                    FragmentStore_Config.AlertWindow.Open = false
                end

                if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.cancel) then
                    FragmentStore_Config.AlertWindow.Open = false
                end
            end
            return
        end

        if FragmentStore_Config.AlertWindow.Type == 20 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.ok) then
                    FragmentStore_Config.Locked = true
                    FragmentStore.SendRegister()
                    FragmentStore_Config.AlertWindow.Open = false
                end

                if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.cancel) then
                    FragmentStore_Config.AlertWindow.Open = false
                end
            end
            return
        end

        if CheckReleasedKey(Keys.LButton) == 1 then
            if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.ok) then
                FragmentStore_Config.AlertWindow.Open = false
            end
        end

        return
    end

    -- Só processa os cliques nos botões se o alerta não estiver aberto
    if CheckReleasedKey(Keys.LButton) == 1 then
        if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.anterior) then
            if FragmentStore_Config.CurrentItem > 1 then
                FragmentStore_Config.CurrentItem = FragmentStore_Config.CurrentItem - 1
            else
                FragmentStore_Config.CurrentItem = #FragmentStore_Config.ItemList
            end
            return
        end

        if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.proximo) then
            if FragmentStore_Config.CurrentItem < #FragmentStore_Config.ItemList then
                FragmentStore_Config.CurrentItem = FragmentStore_Config.CurrentItem + 1
            else
                FragmentStore_Config.CurrentItem = 1
            end
            return
        end

        if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.comprar) then
            if not FragmentStore_Config.Locked then
                FragmentStore_Config.AlertWindow.Type = -1
                FragmentStore_Config.AlertWindow.Open = true
            end
            return
        end

        -- AÇÃO DO BOTÃO REGISTRAR ADICIONADA AQUI
        if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.registrar) then
            if not FragmentStore_Config.Locked then
                FragmentStore_Config.AlertWindow.Type = 20
                FragmentStore_Config.AlertWindow.Open = true
            end
            return
        end

        if FragmentStore.ButtonMouseOver(FragmentStore_Config.ButtonID.fechar) then
            FragmentStore.CloseInventario()
            return
        end
    end

    -- Outros controles de interface...
    if FragmentStore.Open then
        if CheckWindowOpen(UIWarehouse) == 1 then
            FragmentStore.Close()
            OpenWindow(UIWarehouse)
            return
        end

        --BUTTON FECHAR INVENTÁRIO
        if MousePosX() >= FragmentStore.GetPosX(190+23) and MousePosX() <= FragmentStore.GetPosX(190+23+25) and MousePosY() >= 391 and MousePosY()<= 391+25 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                return
            end
        end

        --BUTTON ABRIR LOJINHA INVENTÁRIO
        if MousePosX() >= FragmentStore.GetPosX(190+23+60) and MousePosX() <= FragmentStore.GetPosX(189+23+60+25) and MousePosY() >= 391 and MousePosY()<= 391+25 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                OpenWindow(UIStore)
                return
            end
        end

        --BUTTON INTERFACE PARTY
        if MousePosX() >= offset+238 and MousePosX() <= offset+238+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                OpenWindow(UIParty)
                return
            end
        end

        --BUTTON INTERFACE CHARACTER
        if MousePosX() >= offset+238+31 and MousePosX() <= offset+238+31+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                OpenWindow(UICharacter)
                return
            end
        end

        --BUTTON INTERFACE INVENTÁRIO
        if MousePosX() >= offset+238+31+31 and MousePosX() <= offset+238+31+31+25 and MousePosY() >= 450 and MousePosY()<= 450+24 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                if CheckWindowOpen(UIInventory) == 1 then
                    CloseWindow(UIInventory)
                end
            end
        end

        --BUTTON INTERFACE GUILD
        if MousePosX() >= 91+WindowGetWidthAdd() and MousePosX() <= 91+16+WindowGetWidthAdd() and MousePosY() >= 458 and MousePosY()<= 458+15 then
            if CheckReleasedKey(Keys.LButton) == 1 then
                DisableClickClient()
                FragmentStore.Close()
                OpenWindow(UIGuild)
            end
        end
    end

    if MousePosX() >= FragmentStore.GetPosX(0) and MousePosX() <= FragmentStore.GetPosX(FragmentStore_Config.WindowInfo.Width) then
        DisableClickClient()
    end
end

function FragmentStore.UpdateKey()
	if not FragmentStore_Config.Enabled then return end

    if not FragmentStore.CheckOpen() then return end

    if CheckPressedKey(Keys.Escape) ~= 0 then
        DisableClickClient()

		if FragmentStore_Config.AlertWindow.Open then
			FragmentStore_Config.AlertWindow.Open = false
			return
		end
        FragmentStore.Close()
    end

	if FragmentStore.Open then
		if CheckPressedKey(Keys.V) ~= 0 or CheckPressedKey(Keys.I) ~= 0 then
			DisableClickClient()

			if FragmentStore_Config.AlertWindow.Open then
				FragmentStore_Config.AlertWindow.Open = false
				return
			end
			FragmentStore.Close()
		end

		--KEY "V/I + S"
		if CheckWindowOpen(UIInventory) then
			if CheckPressedKey(Keys.S) ~= 0 then
				if FragmentStore_Config.AlertWindow.Open then
					FragmentStore_Config.AlertWindow.Open = false
					return
				end
				FragmentStore.Close()
				OpenWindow(UIStore)
			end
		end

		--KEY "C"
		if CheckPressedKey(Keys.C) ~= 0 then
			DisableClickClient()

			if FragmentStore_Config.AlertWindow.Open then
				FragmentStore_Config.AlertWindow.Open = false
				return
			end
			FragmentStore.Close()
			OpenWindow(UICharacter)
		end

		--KEY "G"
		if CheckPressedKey(Keys.G) ~= 0 then
			DisableClickClient()

			if FragmentStore_Config.AlertWindow.Open then
				FragmentStore_Config.AlertWindow.Open = false
				return
			end
			FragmentStore.Close()
			OpenWindow(UIGuild)
		end

		--KEY "B"
		if CheckPressedKey(Keys.B) ~= 0 then
			DisableClickClient()
			FragmentStore.Close()
			OpenWindow(UIWarehouse)
		end

		--KEY "P"
		if CheckPressedKey(Keys.P) ~= 0 then
			DisableClickClient()

			if FragmentStore_Config.AlertWindow.Open then
				FragmentStore_Config.AlertWindow.Open = false
				return
			end
			FragmentStore.Close()
			OpenWindow(UIParty)
		end
	end

    if CheckPressedKey(Keys.Return) ~= 0 then
        DisableClickClient()
		if FragmentStore_Config.AlertWindow.Open then
			FragmentStore_Config.Locked = true
			FragmentStore.SendBuy()
			FragmentStore_Config.AlertWindow.Open = false
			return
		end
    end
end

function FragmentStore.Protocol(Packet, PacketName)
    if Packet ~= FragmentStore_Config.Packet then return false end

    local index = UserGetIndex()
    local name = UserGetName()

	if PacketName == string.format("2-%s-%d", name, index) then
		FragmentStore_Config.Saldo = GetDwordPacket(PacketName, -1)
        local qtd = GetBytePacket(PacketName, -1)
        for key = 1, qtd do
            local Valor       = GetWordPacket(PacketName,-1)
            local ItemIndex   = GetWordPacket(PacketName,-1)
            local Level       = GetBytePacket(PacketName,-1)
            local Dur         = GetBytePacket(PacketName,-1)
            local Skill       = GetBytePacket(PacketName,-1)
            local Luck        = GetBytePacket(PacketName,-1)
            local Opt         = GetBytePacket(PacketName,-1)
            local Exc         = GetBytePacket(PacketName,-1)
            local Ancient     = GetBytePacket(PacketName,-1)
            local Harmony     = GetBytePacket(PacketName,-1)
            local nLen        = GetBytePacket(PacketName,-1)
            local Name        = GetCharPacketLength(PacketName, -1, nLen)
            local X           = GetBytePacket(PacketName,-1)
            local Y           = GetBytePacket(PacketName,-1)
            nLen              = GetBytePacket(PacketName,-1)
            local Size = tonumber(GetCharPacketLength(PacketName, -1, nLen))
            FragmentStore_Config.ItemList[key] = {ItemIndex = ItemIndex, Level = Level, Dur = Dur, Skill = Skill, Luck = Luck, Opt = Opt, Exc = Exc, Ancient = Ancient, Harmony = Harmony, Price = Valor, Name = Name, X = X, Y = Y, Size = Size}
        end
		FragmentStore_Config.FragmentItem.ItemIndex = GetWordPacket(PacketName, -1)
		FragmentStore_Config.FragmentItem.X = GetBytePacket(PacketName, -1)
		FragmentStore_Config.FragmentItem.Y = GetBytePacket(PacketName, -1)
		local nLen = GetBytePacket(PacketName, -1)
		FragmentStore_Config.FragmentItem.Size = tonumber(GetCharPacketLength(PacketName, -1, nLen))

		ClearPacket(PacketName)
		FragmentStore.Open()
		return true
    end

	if PacketName == string.format("4-%s-%d", name, index) then
		local retorno = GetBytePacket(PacketName, -1)
		FragmentStore_Config.Locked = false
		if retorno < 2 then
			FragmentStore_Config.AlertWindow.Type = retorno
			FragmentStore_Config.AlertWindow.Open = true
		else
			FragmentStore_Config.Saldo = GetDwordPacket(PacketName, -1)
		end
		ClearPacket(PacketName)
		return true
	end
end

function FragmentStore.SendBuy()
	local PacketName = string.format("3-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(PacketName, FragmentStore_Config.Packet)
	SetBytePacket(PacketName, FragmentStore_Config.CurrentItem)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

function FragmentStore.SendRegister()
	local PacketName = string.format("5-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(PacketName, FragmentStore_Config.Packet)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

FragmentStore.Init()

return FragmentStore