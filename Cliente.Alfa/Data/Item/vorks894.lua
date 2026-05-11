KeyStore = {}

function KeyStore.Init()
    InterfaceController.BeforeMainProc(KeyStore.Interface)
    InterfaceController.MainProc(KeyStore.InterfaceAfter)
    InterfaceController.ClientProtocol(KeyStore.Protocol)
    InterfaceController.UpdateMouse(KeyStore.UpdateMouse)
    InterfaceController.UpdateKey(KeyStore.UpdateKey)
    KeyStore.Define()
end

function KeyStore.Define()
    KeyStore_Config.WindowInfo = {PosX = 260, PosY = 0, Width = 190, Height = 429, Offset = 0}
    KeyStore_Config.AlertWindow = {Open = false, Type = -1}
    KeyStore_Config.Lang = "Por"
    KeyStore_Config.TargetId = 0
    KeyStore_Config.Saldo = 0
    KeyStore_Config.Page = 1
    KeyStore_Config.Button = {}
	KeyStore_Config.ButtonID = {
		fechar = 1,
        anterior = 2,
        proximo = 3,
        ok = 4,
        cancel = 5
	}
    KeyStore_Config.ItemList = {}
end
--#endregion

--#region ABRE A JANELA
function KeyStore.Open()
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
	if	CheckWindowOpen(UIExpandInventory)	== 1	then	CloseWindow(UIExpandInventory)	end
	if	CheckWindowOpen(UIExpandWarehouse)	== 1	then	return							end
	if	CheckWindowOpen(UIMuHelper)			== 1	then	CloseWindow(UIMuHelper)			end
	OpenWindow(UIInventory)
    KeyStore_Config.WindowInfo.Offset = 0
    KeyStore_Config.Lang = GetLanguage()
	UICustomInterface = KeyStore_Config.WindowID
end
--#endregion

--#region FECHA A JANELA
function KeyStore.Close()
	CloseWindow(UIInventory)
	UICustomInterface = 0
end
--#endregion

--#region VERIFICA JANELA ABERTA E AREA PROTEGIDA DA TELA
function KeyStore.CheckOpen()
	if UICustomInterface == KeyStore_Config.WindowID then return true else return false end
end

--#region FUNÇÕES DE BOTÃO
function KeyStore.CreateButton(ButtonID, x, y, w, h)
	if KeyStore_Config.Button[ButtonID] == nil then
		table.insert(KeyStore_Config.Button, ButtonID)
		KeyStore_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		KeyStore_Config.Button[ButtonID].x = x
		KeyStore_Config.Button[ButtonID].y = y
		KeyStore_Config.Button[ButtonID].w = w
		KeyStore_Config.Button[ButtonID].h = h
	end
end

function KeyStore.ButtonClicked(ButtonID)
	if KeyStore_Config.Button[ButtonID] == nil then return false end
	if KeyStore_Config.Button[ButtonID].clicked then
		if KeyStore_Config.Button[ButtonID].timer >= 2 then
			KeyStore_Config.Button[ButtonID].timer = 0
			KeyStore_Config.Button[ButtonID].clicked = false
			return false
		end
		KeyStore_Config.Button[ButtonID].timer = KeyStore_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function KeyStore.ButtonMouseOver(ButtonID, x, y)
	if KeyStore_Config.Button[ButtonID] == nil then return false end
	if x >= KeyStore_Config.Button[ButtonID].x and x <= (KeyStore_Config.Button[ButtonID].x+KeyStore_Config.Button[ButtonID].w) then
		if y >= KeyStore_Config.Button[ButtonID].y and y <= (KeyStore_Config.Button[ButtonID].y+KeyStore_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end
--#endregion

function KeyStore.GetPosX(PosX)
    return KeyStore_Config.WindowInfo.PosX+KeyStore_Config.WindowInfo.Offset+PosX
end

function KeyStore.GetPosY(PosY)
    return KeyStore_Config.WindowInfo.PosY+PosY
end

function KeyStore.InterfaceAfter()
    if not KeyStore.CheckOpen() then return end
    KeyStore.CreateButton(KeyStore_Config.ButtonID.ok, 0, 0, 0, 0)
    KeyStore.CreateButton(KeyStore_Config.ButtonID.cancel, 0, 0, 0, 0)

    if KeyStore_Config.AlertWindow.Open then
		EnableAlphaTest()
        local addX = WindowGetWidthAdd()
		RenderImage2(31137, 195+addX, 70, 250, 90, 0, 0, 0.83, 1, 1, 1, 1.0)

		if KeyStore_Config.AlertWindow.Type == -1 then
		    KeyStore.CreateButton(KeyStore_Config.ButtonID.ok, 220+addX, 120, 60, 18)
		    if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DrawButton.Medium(2, 220+addX, 120, 60, 18)
                else
                    DrawButton.Medium(1, 220+addX, 120, 60, 18)
                end
		    else
                DrawButton.Medium(0, 220+addX, 120, 60, 18)
		    end

		    KeyStore.CreateButton(KeyStore_Config.ButtonID.cancel, 320+addX, 120, 60, 18)
		    if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.cancel, MousePosX(), MousePosY()) then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DrawButton.Medium(2, 320+addX, 120, 60, 18)
                else
                    DrawButton.Medium(1, 320+addX, 120, 60, 18)
                end
		    else
                DrawButton.Medium(0, 320+addX, 120, 60, 18)
		    end

            SetFontType(0)			
            SetTextBg(0, 0, 0, 0)				
            SetTextColor(237, 214, 161, 255)
            RenderText3(250+addX, 124, KeyStore_Config.Texts[GetLanguage()][18], 60, 8)
            RenderText3(350+addX, 124, KeyStore_Config.Texts[GetLanguage()][19], 60, 8)

            SetTextColor(255, 255, 255, 255)
            RenderText3(302+addX, 90, KeyStore_Config.Texts[GetLanguage()][14], 200, 8)
        else
            KeyStore.CreateButton(KeyStore_Config.ButtonID.ok, 270+addX, 120, 60, 18)
			if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DrawButton.Medium(2, 270+addX, 120, 60, 18)
                else
                    DrawButton.Medium(1, 270+addX, 120, 60, 18)
                end
			else
                DrawButton.Medium(0, 270+addX, 120, 60, 18)
			end

            SetFontType(0)			
		    SetTextBg(0, 0, 0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(300+addX, 124, KeyStore_Config.Texts[GetLanguage()][18], 60, 8)
		    SetTextColor(255, 255, 255, 255)
            local text = 15+KeyStore_Config.AlertWindow.Type
            RenderText3(302+addX, 90, KeyStore_Config.Texts[GetLanguage()][text], 200, 8)
        end
		DisableAlphaBlend()
        return
    end
end

function KeyStore.Interface()
    if not KeyStore.CheckOpen() then return end

	if	CheckWindowOpen(UIInventory) 		== 0	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIFriendList) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIMoveList)			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIParty) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIQuest) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIGuild) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIGuildNpc) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UITrade) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIWarehouse) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIChaosBox)			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UICommandWindow) 	== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIPetInfo)	 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIShop)				== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIStore) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIOtherStore) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UICharacter) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIOptions) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIHelp)				== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIFastDial)			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UISkillTree) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UINPC_Titus) 		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UICashShop)			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIFullMap) 			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	KeyStore.Close()	end
	if	CheckWindowOpen(UIMuHelper)			== 1	then	KeyStore.Close()	end

    KeyStore.CreateButton(KeyStore_Config.ButtonID.fechar, KeyStore.GetPosX(23), KeyStore.GetPosY(393), 25, 24)
    KeyStore.CreateButton(KeyStore_Config.ButtonID.anterior, 0, 0, 0, 0)
    KeyStore.CreateButton(KeyStore_Config.ButtonID.proximo, 0, 0, 0, 0)

    local itemlist = KeyStore_Config.ItemList[KeyStore_Config.Page]

	EnableAlphaTest()

    RenderImage(590003, 260, 0, 190, 429)
    RenderImage2(7600052, KeyStore.GetPosX(3)+0.5, KeyStore.GetPosY(123), 181, 10, 0.0, 0.0, 0.79, 0.72, 1, 1, 1.0)

    for x = 1, #itemlist do
        DrawInterface.ItemBox(false, KeyStore.GetPosX(15), KeyStore.GetPosY(140+(50*(x-1))), 40, 41)
    end

    DisableAlphaBlend()

    SetBlend(1)
	glColor4f(0,0,0, 0.6)
	DrawBar(KeyStore.GetPosX(15), KeyStore.GetPosY(45), 158, 73)
	--DrawBar(KeyStore.GetPosX(15), KeyStore.GetPosY(120), 158, 23)

    for x = 1, #itemlist do
	    DrawBar(KeyStore.GetPosX(15), KeyStore.GetPosY(140+(50*(x-1))), 40, 41)
	    DrawBar(KeyStore.GetPosX(15+42), KeyStore.GetPosY(140+(50*(x-1))), 75, 13)
	    DrawBar(KeyStore.GetPosX(15+42), KeyStore.GetPosY(154+(50*(x-1))), 117, 13)
	    DrawBar(KeyStore.GetPosX(15+42), KeyStore.GetPosY(168+(50*(x-1))), 117, 13)
    end

	glColor4f(0.54, 0.422, 0.2322, 0.7)
    DrawBox(KeyStore.GetPosX(15), KeyStore.GetPosY(45), 158, 73)

    --#endregion Key 1
	glColor4f(0.54, 0.422, 0.2322, 0.1)
	DrawBar(KeyStore.GetPosX(35), KeyStore.GetPosY(73), 118, 1)

    glColor4f(1.0, 1.0, 1.0, 1.0)
    for k, v in ipairs(itemlist) do
        CreateItem(KeyStore.GetPosX(5+v.X), KeyStore.GetPosY(120+(50*(k-1))+v.Y), 40, 41, v.ItemIndex, v.Level, 0, 0, 1.00, v.Size)
    end

    

	EndDrawBar()

    EnableAlphaTest()
	SetFontType(1)
	SetTextBg(0, 0, 0, 0)
	SetTextColor(255, 255, 255, 255)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), 14, KeyStore_Config.Texts[KeyStore_Config.Lang][1], 160, 8)

	SetFontType(0)
	SetTextColor(255, 255, 255, 240)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(50), KeyStore_Config.Texts[KeyStore_Config.Lang][2], 153, 8)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(60), KeyStore_Config.Texts[KeyStore_Config.Lang][3], 153, 8)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(77), KeyStore_Config.Texts[KeyStore_Config.Lang][4], 153, 8)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(87), KeyStore_Config.Texts[KeyStore_Config.Lang][5], 153, 8)

    SetFontType(1)
	SetTextColor(250, 158, 15, 240)
	RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(102), KeyStore_Config.Texts[KeyStore_Config.Lang][6]:format(KeyStore_Config.Saldo), 155, 8)

    SetFontType(11)
    SetTextColor(237, 214, 161, 255)
    for x = 1, #itemlist do
        local buyBtnState = 0
        if MousePosX() >= KeyStore.GetPosX(15+118) and MousePosX() <= KeyStore.GetPosX(15+118+41) and MousePosY() >= KeyStore.GetPosY(140+(50*(x-1))) and MousePosY() <= KeyStore.GetPosY(140+(50*(x-1))+12) then
            if CheckRepeatKey(Keys.LButton) == 1 then
                buyBtnState = 2
            else
                buyBtnState = 1
            end
        end
        DrawButton.Medium(buyBtnState, KeyStore.GetPosX(15+118), KeyStore.GetPosY(140+(50*(x-1))), 41, 12)
        RenderText3(KeyStore.GetPosX(15+118+(42/2)), KeyStore.GetPosY(142+(50*(x-1))), KeyStore_Config.Texts[KeyStore_Config.Lang][7], 41, 8)
    end

    SetFontType(1)
    SetTextColor(255, 255, 255, 255)
    
    for k, v in ipairs(itemlist) do
        RenderText3(KeyStore.GetPosX(15+45), KeyStore.GetPosY(142+(k-1)*50), KeyStore_Config.Texts[KeyStore_Config.Lang][8]:format(v.Price), 75, 1)
        RenderText3(KeyStore.GetPosX(15+45), KeyStore.GetPosY(156+(k-1)*50), v.Name, 110, 1)
        RenderText3(KeyStore.GetPosX(15+45), KeyStore.GetPosY(170+(k-1)*50), v.Description, 110, 1)
    end

        RenderText3(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(395), string.format("%d / %d", KeyStore_Config.Page, #KeyStore_Config.ItemList), 20, 8)


    KeyStore.CreateButton(KeyStore_Config.ButtonID.anterior, KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2-30), KeyStore.GetPosY(393), 13, 13)
    local btnState = 0
    if KeyStore_Config.Page == 1 then
        btnState = 3
    else
        if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.anterior, MousePosX(), MousePosY()) then
            if CheckRepeatKey(Keys.LButton) == 1 then
                btnState = 2
            else
                btnState = 1
            end
            DrawTooltip(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2-47), KeyStore.GetPosY(378), KeyStore_Config.Texts[KeyStore_Config.Lang][12])
        end
    end
    DrawButton.ArrowLeft(btnState, KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2-30), KeyStore.GetPosY(393), 13, 13)

    KeyStore.CreateButton(KeyStore_Config.ButtonID.proximo,KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2+17), KeyStore.GetPosY(393), 13, 13)
    btnState = 0
    if KeyStore_Config.Page >= #KeyStore_Config.ItemList then 
        btnState = 3
    else
        if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.proximo, MousePosX(), MousePosY()) then
            if CheckRepeatKey(Keys.LButton) == 1 then
                btnState = 2
            else
                btnState = 1
            end
            DrawTooltip(KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2), KeyStore.GetPosY(378), KeyStore_Config.Texts[KeyStore_Config.Lang][13])
        end
    end
    DrawButton.ArrowRight(btnState, KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width/2+17), KeyStore.GetPosY(393), 13, 13)

    DisableAlphaBlend()
	if not KeyStore_Config.AlertWindow.Open then
		SetBlend(1)
		for k, v in ipairs(itemlist) do
			if MousePosX() >= KeyStore.GetPosX(15) and MousePosX() <= KeyStore.GetPosX(15+40) and MousePosY() >= KeyStore.GetPosY(140+(50*(k-1))) and MousePosY() <= KeyStore.GetPosY(140+(50*(k-1))+41) then
				ShowDescriptionComplete(MousePosX(), MousePosY(), v.ItemIndex, v.Level, v.Dur, v.Skill, v.Luck, v.Opt, v.Exc, 0, 0, 255, 255, 255, 255, 255,255)
			end
		end
		EndDrawBar()
	end
end

function KeyStore.UpdateMouse()
    if not KeyStore.CheckOpen() then return end

    if MousePosX() >= KeyStore.GetPosX(0) and MousePosX() <= KeyStore.GetPosX(KeyStore_Config.WindowInfo.Width) then
        DisableClickClient()
    end

    if MousePosX() >= KeyStore.GetPosX(190+23) and MousePosX() <= KeyStore.GetPosX(190+23+24) and MousePosY() >= 393 and MousePosY()<= 393+24 then
        if CheckReleasedKey(Keys.LButton) == 1 then
            DisableClickClient()
			KeyStore.Close()
			return true
		end
    end

    if CheckPressedKey(Keys.LButton) == 0 then return end

    if KeyStore_Config.AlertWindow.Open then
        DisableClickClient()
        if KeyStore_Config.AlertWindow.Type == -1 then
            if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                KeyStore.SendBuy()
            end
            if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.cancel, MousePosX(), MousePosY()) then
                KeyStore_Config.AlertWindow.Open = false
                KeyStore_Config.AlertWindow.Type = -1
            end
        else
            if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                KeyStore_Config.AlertWindow.Open = false
                KeyStore_Config.AlertWindow.Type = -1
            end
        end
        return true
    end

    if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.anterior, MousePosX(), MousePosY()) then
        if KeyStore_Config.Page > 1 then
            KeyStore_Config.Page = KeyStore_Config.Page - 1
        end
        return true
    end

    if KeyStore.ButtonMouseOver(KeyStore_Config.ButtonID.proximo, MousePosX(), MousePosY()) then
        if KeyStore_Config.Page < #KeyStore_Config.ItemList then
            KeyStore_Config.Page = KeyStore_Config.Page + 1
        end
        return true
    end



    local itemlist = KeyStore_Config.ItemList[KeyStore_Config.Page]

    for x = 1, #itemlist do
        if MousePosX() >= KeyStore.GetPosX(15+118) and MousePosX() <= KeyStore.GetPosX(15+118+41) and MousePosY() >= KeyStore.GetPosY(140+(50*(x-1))) and MousePosY() <= KeyStore.GetPosY(140+(50*(x-1))+12) then
            KeyStore.SetBuyId(x)
            return true
        end
    end
end

function KeyStore.UpdateKey()
    if not KeyStore.CheckOpen() then return end

    if CheckReleasedKey(Keys.Escape) ~= 0 then
        DisableClickClient()
        if KeyStore_Config.AlertWindow.Open then
            KeyStore_Config.AlertWindow.Open = false
            KeyStore_Config.AlertWindow.Type = -1
            return
        end
        KeyStore.Close()
    end

    if CheckReleasedKey(Keys.Return) ~= 0 then
        DisableClickClient()
        if KeyStore_Config.AlertWindow.Open then
            KeyStore_Config.AlertWindow.Open = false
            if KeyStore_Config.AlertWindow.Type == -1 then
                KeyStore.SendBuy()
            end
            KeyStore_Config.AlertWindow.Type = -1
            return
        end
        KeyStore.Close()
    end
end

function KeyStore.Protocol(Packet, PacketName)
    if Packet ~= KeyStore_Config.Packet then return false end
	
    local index = UserGetIndex()
    local name = UserGetName()

	if PacketName == string.format("1-%s-%d", name, index) then
        if not KeyStore.CheckOpen() then
            KeyStore.Define()
            local saldo = GetDwordPacket(PacketName, -1)
            KeyStore_Config.Saldo = saldo
            local groupCount = GetBytePacket(PacketName, -1)
            for k = 1, groupCount do
                KeyStore_Config.ItemList[k] = {}
                local itemCount = GetBytePacket(PacketName, -1)
                for k2 = 1, itemCount do
                    local Valor       = GetWordPacket(PacketName,-1)
                    local ItemIndex   = GetWordPacket(PacketName,-1)
                    local Level       = GetBytePacket(PacketName,-1)
                    local Dur         = GetBytePacket(PacketName,-1)
                    local Skill       = GetBytePacket(PacketName,-1)
                    local Luck        = GetBytePacket(PacketName,-1)
                    local Opt         = GetBytePacket(PacketName,-1)
                    local Exc         = GetBytePacket(PacketName,-1)
                    local nLen        = GetBytePacket(PacketName,-1)
                    local Name        = GetCharPacketLength(PacketName, -1, nLen)
                    nLen              = GetBytePacket(PacketName,-1)
                    local Description = GetCharPacketLength(PacketName, -1, nLen)
                    local X           = GetBytePacket(PacketName,-1)
                    local Y           = GetBytePacket(PacketName,-1)
                    nLen              = GetBytePacket(PacketName,-1)
                    local Size = tonumber(GetCharPacketLength(PacketName, -1, nLen))
                    KeyStore_Config.ItemList[k][k2] = {ItemIndex = ItemIndex, Level = Level, Dur = Dur, Skill = Skill, Luck = Luck, Opt = Opt, Exc = Exc, Ancient = Ancient, Harmony = Harmony, Price = Valor, Name = Name, Description = Description, X = X, Y = Y, Size = Size}
                end
            end
            KeyStore.Open()
        end
        ClearPacket(PacketName)
        return true
    end

    if PacketName == string.format("3-%s-%d", name, index) then
        local result = GetBytePacket(PacketName, -1)
        local saldo = GetDwordPacket(PacketName, -1)
        ClearPacket(PacketName)

        KeyStore_Config.Saldo = saldo
        KeyStore_Config.AlertWindow.Type = result
        KeyStore_Config.AlertWindow.Open = true
        return true
    end

end

function KeyStore.SetBuyId(id)
    KeyStore_Config.TargetId = id
    KeyStore_Config.AlertWindow.Type = -1
    KeyStore_Config.AlertWindow.Open = true
end

function KeyStore.SendBuy()
    local pname = string.format("2-%s-%d", UserGetName(), UserGetIndex())
	CreatePacket(pname, KeyStore_Config.Packet)
	SetBytePacket(pname, KeyStore_Config.Page)
	SetBytePacket(pname, KeyStore_Config.TargetId)
	SendPacket(pname)
	ClearPacket(pname)
end

KeyStore.Init()

return KeyStore