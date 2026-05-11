LuckyEvent = {}

function LuckyEvent.Init()
    InterfaceController.MainProc(LuckyEvent.AfterInterface)
    InterfaceController.UpdateMouse(LuckyEvent.UpdateMouse)
    InterfaceController.UpdateKey(LuckyEvent.UpdateKey)
    InterfaceController.ClientProtocol(LuckyEvent.Protocol)
    LuckyEvent.Define()
end

function LuckyEvent.Define()
    LuckyEvent_Config.WindowInfo = {PosX = ((640/2) - (550/2)), PosY = 30, Width = 550, Height = 380, Offset = 0, AddX = 0 }
    LuckyEvent_Config.Button = {}
    LuckyEvent_Config.ButtonID = {
        abrir    = 1,
        fechar   = 2,
        free     = 3,
        donate   = 4,
        saiba    = 5,
        anterior = 6,
        proximo  = 7,
        jogar    = 8,
        ok       = 9,
        cancelar = 10,

    }
    LuckyEvent_Config.Page = 0
    LuckyEvent_Config.Saldo = 0
    LuckyEvent_Config.Offset = 1
    LuckyEvent_Config.Ranking = {}
    LuckyEvent_Config.Animation = false
    LuckyEvent_Config.AnimationTime =  os.time()
    LuckyEvent_Config.SelectedItem = 1
    LuckyEvent_Config.ResultItem = -1
    LuckyEvent_Config.WaitResult = -1
    LuckyEvent_Config.AlertWindow = {Open = false, Type = 1}
end

function LuckyEvent.RequestOpen()
    LuckyEvent.GetInfo()
end

function LuckyEvent.Open()
    for w = 1, 40 do
        CloseWindow(w)
    end
    UICustomInterface = LuckyEvent_Config.WindowID
   
end

function LuckyEvent.Close()
    UICustomInterface = 0
    LuckyEvent.Define()

end

function LuckyEvent.CheckOpen()
	if UICustomInterface == LuckyEvent_Config.WindowID then return true else return false end
end

--#region FUNÇÕES DE BOTÃO
function LuckyEvent.CreateButton(ButtonID, x, y, w, h)
	if LuckyEvent_Config.Button[ButtonID] == nil then
		table.insert(LuckyEvent_Config.Button, ButtonID)
		LuckyEvent_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		LuckyEvent_Config.Button[ButtonID].x = x
		LuckyEvent_Config.Button[ButtonID].y = y
		LuckyEvent_Config.Button[ButtonID].w = w
		LuckyEvent_Config.Button[ButtonID].h = h
	end
end

function LuckyEvent.ButtonClicked(ButtonID)
	if LuckyEvent_Config.Button[ButtonID] == nil then return false end
	if LuckyEvent_Config.Button[ButtonID].clicked then
		if LuckyEvent_Config.Button[ButtonID].timer >= 2 then
			LuckyEvent_Config.Button[ButtonID].timer = 0
			LuckyEvent_Config.Button[ButtonID].clicked = false
			return false
		end
		LuckyEvent_Config.Button[ButtonID].timer = LuckyEvent_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function LuckyEvent.ButtonMouseOver(ButtonID, x, y)
	if LuckyEvent_Config.Button[ButtonID] == nil then return false end
	if x >= LuckyEvent_Config.Button[ButtonID].x and x <= (LuckyEvent_Config.Button[ButtonID].x+LuckyEvent_Config.Button[ButtonID].w) then
		if y >= LuckyEvent_Config.Button[ButtonID].y and y <= (LuckyEvent_Config.Button[ButtonID].y+LuckyEvent_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end
--#endregion

function LuckyEvent.GetPosX(PosX)
    return LuckyEvent_Config.WindowInfo.PosX+PosX
end

function LuckyEvent.GetText(id)
    return LuckyEvent_Config.Texts[GetLanguage()][id]
end

function LuckyEvent.GetPosY(PosY)
    return LuckyEvent_Config.WindowInfo.PosY+PosY
end


function LuckyEvent.AfterInterface()
    local posX = 83
	--if IsTradeXIconShowing() == 1 then
	--	posX = posX + 27
	--end

	LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.abrir, posX, 2, 25, 24)
	EnableAlphaTest()
	local btnOpenstate = 0
	if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.abrir, MousePosX(), MousePosY()) then
		btnOpenstate = 1
		if CheckRepeatKey(Keys.LButton) == 1 then
			btnOpenstate = 2
		end
	end
	DrawButton.Ranking(btnOpenstate, posX, 2, 25, 24)


    if not LuckyEvent.CheckOpen() then return end
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.fechar, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.free, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.donate, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.saiba, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.anterior, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.proximo, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.jogar, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.ok, 0,0,0,0)
    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.cancelar, 0,0,0,0)

    EnableAlphaTest()
    
    RenderImage2(590073, ((640/2) - (LuckyEvent_Config.WindowInfo.Width/2)), LuckyEvent_Config.WindowInfo.PosY, LuckyEvent_Config.WindowInfo.Width, LuckyEvent_Config.WindowInfo.Height, 0.0, 0.0, 1.0, 0.783, 1, 1, 1.0)

    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.fechar, LuckyEvent.GetPosX(518), LuckyEvent.GetPosY(10), 16, 16)
    local btnState = 0
    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnState = 2
        else
            btnState = 1
        end
    end
    DrawButton.Close(btnState, LuckyEvent.GetPosX(518), LuckyEvent.GetPosY(10), 16, 16)

    SetFontType(1)
    SetTextBg(0,0,0, 0)
    SetTextColor(255,255,255,255)
    RenderText3(LuckyEvent.GetPosX(276), LuckyEvent.GetPosY(12), LuckyEvent.GetText(1), 130, 8)

    DisableAlphaBlend()

    SetBlend(1)
	glColor4f(0, 0, 0, 0.4)
    DrawBar(LuckyEvent.GetPosX(23), LuckyEvent.GetPosY(46), 135, 313)
	glColor4f(0, 0, 0, 0.6)
    DrawBar(LuckyEvent.GetPosX(170), LuckyEvent.GetPosY(46), 360, 313)

    DrawBar(LuckyEvent.GetPosX(181), LuckyEvent.GetPosY(175), 54, 54)
	DrawBar(LuckyEvent.GetPosX(181+54+17), LuckyEvent.GetPosY(175), 54, 54)
	DrawBar(LuckyEvent.GetPosX(181+54+54+17+17), LuckyEvent.GetPosY(175), 54, 54)
	DrawBar(LuckyEvent.GetPosX(181+54+54+54+17+17+17), LuckyEvent.GetPosY(175), 54, 54)

	glColor4f(0.54, 0.422, 0.2322, 0.7)
	DrawBox(LuckyEvent.GetPosX(170), LuckyEvent.GetPosY(46), 360, 313)
	DrawBox(LuckyEvent.GetPosX(181), LuckyEvent.GetPosY(175), 54, 54)
	DrawBox(LuckyEvent.GetPosX(181+54+17), LuckyEvent.GetPosY(175), 54, 54)
	DrawBox(LuckyEvent.GetPosX(181+54+54+17+17), LuckyEvent.GetPosY(175), 54, 54)
	DrawBox(LuckyEvent.GetPosX(181+54+54+54+17+17+17), LuckyEvent.GetPosY(175), 54, 54)
	DrawBox(LuckyEvent.GetPosX(466), LuckyEvent.GetPosY(175), 54, 54)
	DrawBox(LuckyEvent.GetPosX(26), LuckyEvent.GetPosY(155.5), 129, 200)

    glColor4f(0.45, 0.0, 0.07, 1.0)
	DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(158), 34, 15) -- ranking titulo
	DrawBar(LuckyEvent.GetPosX(63), LuckyEvent.GetPosY(158), 55, 15) -- ranking persoagem
	DrawBar(LuckyEvent.GetPosX(119), LuckyEvent.GetPosY(158), 34, 15) -- ranking pontos

    for c = 1, 10 do
        glColor4f(0.0, 0.0, 0.0, 0.4)
        DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(156.5+c*18), 125, 19)
    end
    
    glColor4f(0.5, 0.5, 0.5, 0.2)
    for c = 1, 9 do
        DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(175+c*18), 125, 0.5) -- ranking linha separação
    end

    if MousePosX() >= LuckyEvent.GetPosX(26) and MousePosX() <= LuckyEvent.GetPosX(26+129) then
        for c = 1, 10 do
            if MousePosY() >= LuckyEvent.GetPosY(156.5+c*18+2) and MousePosY() <= LuckyEvent.GetPosY(156.5+c*18+20) then
                DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(156.5+c*18), 125, 19)
            end
        end
    end

    SetBlend(1)
    EndDrawBar()

    EnableAlphaTest()

    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.free, LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(50), 125, 35)
    RenderImage2(600132, LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(50), 125, 35, 0.001, 0.002, 1.0, 0.6029376289, 1, 1, 1.0)
    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.free, MousePosX(), MousePosY()) then
        DisableAlphaBlend()
        SetBlend(1)
	    if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.free) then
            glColor4f(0, 0, 0, 0.7)
        else
            if CheckRepeatKey(Keys.LButton) == 1 then
                glColor4f(0, 0, 0, 0.5)
            else
                glColor4f(1, 1, 1, 0.1)
            end
        end
        DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(50), 125, 35)
        SetBlend(1)
        EndDrawBar()
        EnableAlphaTest()
    end

    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.donate, LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(90), 125, 35)
    RenderImage2(600133, LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(90), 125, 35, 0.001, 0.002, 1.0, 0.6029376289, 1, 1, 1.0)
    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.donate, MousePosX(), MousePosY()) then
        DisableAlphaBlend()
        SetBlend(1)
        if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.donate) then
            glColor4f(0, 0, 0, 0.7)
        else
            if CheckRepeatKey(Keys.LButton) == 1 then
                glColor4f(0, 0, 0, 0.5)
            else
                glColor4f(1, 1, 1, 0.1)
            end
        end
        DrawBar(LuckyEvent.GetPosX(28), LuckyEvent.GetPosY(90), 125, 35)
        SetBlend(1)
        EndDrawBar()
        EnableAlphaTest()
    end


    DrawInterface.Information(LuckyEvent.GetPosX(179), LuckyEvent.GetPosY(57), 221, 18)

    SetFontType(7)
    SetTextBg(0,0,0, 0)
    SetTextColor(255,255,255,200)
    RenderText3(LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(77.5), LuckyEvent.GetText(3), 100, 1)
    SetFontType(6)
    RenderText3(LuckyEvent.GetPosX(471), LuckyEvent.GetPosY(130), string.format("%d / %d", LuckyEvent_Config.Saldo, LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Amount), 100, 8)
    SetFontType(1)
    RenderText3(LuckyEvent.GetPosX(199), LuckyEvent.GetPosY(62), LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Name, 100, 1)
    SetFontType(0)
    if LuckyEvent_Config.Page == 0 then
    RenderText3(LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(90), LuckyEvent.GetText(4), 200, 1)
    else
    RenderText3(LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(90), LuckyEvent.GetText(19), 200, 1)
    end
    RenderText3(LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(100), LuckyEvent.GetText(5), 200, 1)

    LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.saiba, LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(120), 25, 24)
    btnState = 0
    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.saiba, MousePosX(), MousePosY()) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnState = 2
        else
            btnState = 1
        end
        if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.saiba) then
            btnState = 2
        end
    end
    DrawButton.Info(btnState, LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(120), 25, 24)

    RenderImage2(542034, LuckyEvent.GetPosX(450), LuckyEvent.GetPosY(75), 41, 48, 0.001, 0.0, 0.53592734, 0.623435326, 1, 1, 1.0)

    RenderImage2(542034, LuckyEvent.GetPosX(330), LuckyEvent.GetPosY(305), 41, 48, 0.001, 0.0, 0.53592734, 0.623435326, 1, 1, 1.0)

    RenderImage2(590082, LuckyEvent.GetPosX(350-121), LuckyEvent.GetPosY(279), 245, 11, 0.02, 0.003, 0.75488, 0.72, 1, 1, 1.0) -- barra inteira sem as pontas
    RenderImage2(590082, LuckyEvent.GetPosX(170.3), LuckyEvent.GetPosY(279), 20, 11, 0.002, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- inicio barra
    RenderImage2(590082, LuckyEvent.GetPosX(190), LuckyEvent.GetPosY(279), 20, 11, 0.02, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- pedaço vazio inicio
    RenderImage2(590082, LuckyEvent.GetPosX(210), LuckyEvent.GetPosY(279), 20, 11, 0.02, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- pedaço vazio inicio
    RenderImage2(590082, LuckyEvent.GetPosX(474), LuckyEvent.GetPosY(279), 21, 11, 0.75, 0.003, 0.02488, 0.72, 1, 1, 1.0) -- pedaço vazio fim
    RenderImage2(590082, LuckyEvent.GetPosX(495), LuckyEvent.GetPosY(279), 21, 11, 0.75, 0.003, 0.02488, 0.72, 1, 1, 1.0)-- pedaço vazio fim
    RenderImage2(590082, LuckyEvent.GetPosX(516), LuckyEvent.GetPosY(279), 20, 11, 0.75, 0.003, 0.05488, 0.72, 1, 1, 1.0)-- fim barra


    RenderImage2(590082, LuckyEvent.GetPosX(350-121), LuckyEvent.GetPosY(155), 245, 11, 0.02, 0.003, 0.75488, 0.72, 1, 1, 1.0) -- barra inteira sem as pontas
    RenderImage2(590082, LuckyEvent.GetPosX(170.3), LuckyEvent.GetPosY(155), 20, 11, 0.002, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- inicio barra
    RenderImage2(590082, LuckyEvent.GetPosX(190), LuckyEvent.GetPosY(155), 20, 11, 0.02, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- pedaço vazio inicio
    RenderImage2(590082, LuckyEvent.GetPosX(210), LuckyEvent.GetPosY(155), 20, 11, 0.02, 0.003, 0.05209812, 0.72, 1, 1, 1.0) -- pedaço vazio inicio
    RenderImage2(590082, LuckyEvent.GetPosX(474), LuckyEvent.GetPosY(155), 21, 11, 0.75, 0.003, 0.02488, 0.72, 1, 1, 1.0) -- pedaço vazio fim
    RenderImage2(590082, LuckyEvent.GetPosX(495), LuckyEvent.GetPosY(155), 21, 11, 0.75, 0.003, 0.02488, 0.72, 1, 1, 1.0)-- pedaço vazio fim
    RenderImage2(590082, LuckyEvent.GetPosX(516), LuckyEvent.GetPosY(155), 20, 11, 0.75, 0.003, 0.05488, 0.72, 1, 1, 1.0)-- fim barra

    SetFontType(1)
    SetTextBg(0,0,0, 0)
    SetTextColor(240,240,240,240)
    RenderText3(LuckyEvent.GetPosX(471), LuckyEvent.GetPosY(60), LuckyEvent.GetText(7), 130, 8)
    RenderText3(LuckyEvent.GetPosX(351), LuckyEvent.GetPosY(293), LuckyEvent.GetText(8), 130, 8)
    RenderText3(LuckyEvent.GetPosX(351), LuckyEvent.GetPosY(269), LuckyEvent.GetText(10), 130, 8)

	LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.jogar, LuckyEvent.GetPosX(301), LuckyEvent.GetPosY(239), 100, 25)
	btnState = 0
	if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.jogar, MousePosX(), MousePosY()) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnState = 2
        else
            btnState = 1
        end
	end
	if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.jogar) then
		btnState = 2
	end
    if LuckyEvent_Config.Saldo < LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Amount or LuckyEvent_Config.Animation or os.time()-LuckyEvent_Config.WaitResult < 4 then
        btnState = 3
    end
	DrawButton.Large(btnState, LuckyEvent.GetPosX(301), LuckyEvent.GetPosY(239), 100, 25)

    SetFontType(1)
    SetTextBg(0,0,0, 0)
    if btnState < 3 then
        SetTextColor(237, 214, 161, 255)
    else
        SetTextColor(237, 214, 161, 150)
    end

    RenderText3(LuckyEvent.GetPosX(351), LuckyEvent.GetPosY(247), LuckyEvent.GetText(9), 100, 8)
    SetTextColor(237, 214, 161, 255)
    RenderText3(LuckyEvent.GetPosX(91), LuckyEvent.GetPosY(140), LuckyEvent.GetText(14), 150, 8)

    SetFontType(0)
    SetTextColor(237, 214, 161, 255)
	RenderText3(LuckyEvent.GetPosX(46), LuckyEvent.GetPosY(162), LuckyEvent.GetText(11), 44, 8)
	RenderText3(LuckyEvent.GetPosX(91), LuckyEvent.GetPosY(162), LuckyEvent.GetText(12), 64, 8)
	RenderText3(LuckyEvent.GetPosX(137), LuckyEvent.GetPosY(162), LuckyEvent.GetText(13), 44, 8)

    --SetFontType(0)
    SetTextBg(0,0,0, 0)
    SetTextColor(240,240,240,240)
    for c = 1, 10 do
        RenderText3(LuckyEvent.GetPosX(46), LuckyEvent.GetPosY(162+c*18), string.format("%dº", c), 34, 8)
        RenderText3(LuckyEvent.GetPosX(91), LuckyEvent.GetPosY(162+c*18), LuckyEvent_Config.Ranking[c].Nome, 55, 8)
        RenderText3(LuckyEvent.GetPosX(137), LuckyEvent.GetPosY(162+c*18), LuckyEvent_Config.Ranking[c].Pontos, 34, 8)
    end

	LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.anterior, LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(177), 50, 50)
	btnState = 0
	--if LuckyEvent_Config.Offset > 1 then
		if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.anterior, MousePosX(), MousePosY()) then
            if CheckRepeatKey(Keys.LButton) == 1 then
                btnState = 2
            else
                btnState = 1
            end
		end
		if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.anterior) then
			btnState = 2
		end
	--else
	--	btnState = 3
	--end
	DrawButton.Previous(btnState, LuckyEvent.GetPosX(183), LuckyEvent.GetPosY(177), 50, 50)

	LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.proximo, LuckyEvent.GetPosX(468), LuckyEvent.GetPosY(177), 50, 50)
	btnState = 0
	--if LuckyEvent_Config.Offset < #LuckyEvent_Config.Prizes[LuckyEvent_Config.Page] - 2 then
		if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.proximo, MousePosX(), MousePosY()) then
            if CheckRepeatKey(Keys.LButton) == 1 then
                btnState = 2
            else
                btnState = 1
            end
		end
		if LuckyEvent.ButtonClicked(LuckyEvent_Config.ButtonID.proximo) then
			btnState = 2
		end
	--else
	--	btnState = 3
	--end
	DrawButton.Next(btnState, LuckyEvent.GetPosX(468), LuckyEvent.GetPosY(177), 50, 50)

    DisableAlphaBlend()

    SetBlend(1)

    CreateItem(LuckyEvent.GetPosX(471), LuckyEvent.GetPosY(91.5+17), 0 ,0, LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Item, 0, 0, 0, 1.00, LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Size)

    local item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset]
    CreateItem(LuckyEvent.GetPosX(278)+item.Preview.X, LuckyEvent.GetPosY(203)+item.Preview.Y, 0, 0, item.ItemIndex, item.Level, 0, 0, 1.00, item.Preview.Size)
    --CreateItem(LuckyEvent.GetPosX(271)+item.Preview.X, LuckyEvent.GetPosY(191)+item.Preview.Y, 17, 17, item.ItemIndex, item.Level, 0, 0, item.Preview.Size)

    item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset+1]
    CreateItem(LuckyEvent.GetPosX(278+54+16)+item.Preview.X, LuckyEvent.GetPosY(203)+item.Preview.Y, 0, 0, item.ItemIndex, item.Level, 0, 0, 1.00, item.Preview.Size)
    --CreateItem(LuckyEvent.GetPosX(278+54+16-7)+item.Preview.X, LuckyEvent.GetPosY(203-11)+item.Preview.Y, 17, 17, item.ItemIndex, item.Level, 0, 0, item.Preview.Size)

    item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset+2]
    CreateItem(LuckyEvent.GetPosX(278+54+16+54+16)+item.Preview.X, LuckyEvent.GetPosY(203)+item.Preview.Y, 0, 0, item.ItemIndex, item.Level, 0, 0, 1.00, item.Preview.Size)
    --CreateItem(LuckyEvent.GetPosX(278+54+16+54+16-7)+item.Preview.X, LuckyEvent.GetPosY(203-11)+item.Preview.Y, 17, 17, item.ItemIndex, item.Level, 0, 0, item.Preview.Size)

    if LuckyEvent_Config.Animation then
        if os.time()-LuckyEvent_Config.AnimationTime <= 3 then
            LuckyEvent_Config.SelectedItem = LuckyEvent_Config.SelectedItem + 1
            if LuckyEvent_Config.SelectedItem > #LuckyEvent_Config.Prizes[LuckyEvent_Config.Page] then
                LuckyEvent_Config.SelectedItem = 1
            end
            item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.SelectedItem]
        else
            item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.ResultItem]
            LuckyEvent_Config.AlertWindow.Open = true
        end
        CreateItem(LuckyEvent.GetPosX(360)+item.Selected.X, LuckyEvent.GetPosY(335)+item.Selected.Y, 0, 0, item.ItemIndex, item.Level, 0, 0, 0, 1.00, item.Selected.Size)

        if os.time()-LuckyEvent_Config.AnimationTime > 4 then
            LuckyEvent_Config.Animation = false
            --LuckyEvent_Config.AlertWindow.Open = true
        end
    else
        if not LuckyEvent_Config.AlertWindow.Open then
            if MousePosY() >= LuckyEvent.GetPosY(175) and MousePosY() <= LuckyEvent.GetPosY(175+54) then
                if MousePosX() >= LuckyEvent.GetPosX(181+54+17) and MousePosX() <= LuckyEvent.GetPosX(181+54+17+54) then
                    item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset]
                   -- ShowDescriptionComplete(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, 0, 255, 255, 255, 255, 255, 255)
                    ShowItemDescription(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Dur, item.Exc, item.Ancient)
                end
                if MousePosX() >= LuckyEvent.GetPosX(181+54+54+17+17) and MousePosX() <= LuckyEvent.GetPosX(181+54+54+17+17+54) then
                    item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset+1]
                   -- ShowDescriptionComplete(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, 0, 255, 255, 255, 255, 255, 255)
                    ShowItemDescription(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Dur, item.Exc, item.Ancient)
                end
                if MousePosX() >= LuckyEvent.GetPosX(181+54+54+54+17+17+17) and MousePosX() <= LuckyEvent.GetPosX(181+54+54+54+17+17+17+54) then
                    item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.Offset+2]
                    --ShowDescriptionComplete(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, 0, 255, 255, 255, 255, 255, 255)
                    ShowItemDescription(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Dur, item.Exc, item.Ancient)
                end
            end
        end

        if  LuckyEvent_Config.ResultItem ~= -1 then
            item = LuckyEvent_Config.Prizes[LuckyEvent_Config.Page][LuckyEvent_Config.ResultItem]
            CreateItem(LuckyEvent.GetPosX(360)+item.Selected.X, LuckyEvent.GetPosY(335)+item.Selected.Y, 0, 0, item.ItemIndex, item.Level, 0, 0, 1.00, item.Selected.Size)
            if not LuckyEvent_Config.AlertWindow.Open then
                if MousePosY() >= LuckyEvent.GetPosY(305) and MousePosY() <= LuckyEvent.GetPosY(305+48) then
                    if MousePosX() >= LuckyEvent.GetPosX(330) and MousePosX() <= LuckyEvent.GetPosX(330+41) then
                        --ShowDescriptionComplete(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Exc, item.Ancient, 0, 255, 255, 255, 255, 255, 255)
                        ShowItemDescription(MousePosX(), MousePosY(), item.ItemIndex, item.Level, item.Skill, item.Luck, item.Opt, item.Dur, item.Exc, item.Ancient)
                    end 
                end
            end
        end

    end

    SetBlend(1)
    EndDrawBar()

    EnableAlphaTest()


    if LuckyEvent_Config.AlertWindow.Open then
        local addX = 0
        DrawInterface.InfoBox(false,  640/2-112.5, 90, 225, 0, false)

        if LuckyEvent_Config.AlertWindow.Type == 0 then

            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(240,240,240,240)
            RenderText3(640/2, 110, LuckyEvent.GetText(15), 225, 8)

            LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.ok, 640/2-30-60, 142, 60, 18)
            DrawButton.Medium(0, 640/2-30-60, 142, 60, 18)
            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 640/2-30-60, 142, 60, 18)
            end

            LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.cancelar, 640/2+30, 142, 60, 18)
            DrawButton.Medium(0, 640/2+30, 142, 60, 18)
            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.cancelar, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 640/2+30, 142, 60, 18)
            end

            SetFontType(1)
            SetTextBg(0,0,0, 0)    
            SetTextColor(237, 214, 161, 255)        
            RenderText3(640/2-30-60+31, 147, "OK", 60, 8)
            RenderText3(640/2+30+31, 147, LuckyEvent.GetText(18), 60, 8)
        else
            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(240,240,240,240)
            RenderText3(640/2, 105, LuckyEvent.GetText(16), 225, 8)
            RenderText3(640/2, 115, LuckyEvent.GetText(17), 225, 8)

            LuckyEvent.CreateButton(LuckyEvent_Config.ButtonID.ok, 640/2-30, 142, 60, 18)
            DrawButton.Medium(0, 640/2-30, 142, 60, 18)
            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 640/2-30, 142, 60, 18)
            end

            SetFontType(1)
            SetTextBg(0,0,0, 0)    
            SetTextColor(237, 214, 161, 255)        
            RenderText3(640/2-30+31, 147, "OK", 60, 8)
        end
    end

    DisableAlphaBlend()
end

function LuckyEvent.UpdateKey()
    if not LuckyEvent.CheckOpen() then return end

    DisableClickClient()
    if CheckPressedKey(Keys.Escape) == 1 then
        if LuckyEvent_Config.AlertWindow.Open then
            LuckyEvent_Config.AlertWindow.Open = false
                return
        end
        LuckyEvent.Close()
        return
    end

    if CheckPressedKey(Keys.Return) == 1 then
        if LuckyEvent_Config.AlertWindow.Open then
           if LuckyEvent_Config.AlertWindow.Type == 0 then
                LuckyEvent.Play()
           else
                LuckyEvent_Config.AlertWindow.Open = false
           end
        end
        return
    end
end

function LuckyEvent.UpdateMouse()
    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.abrir, MousePosX(), MousePosY()) then
		DisableClickClient()
		if CheckReleasedKey(Keys.LButton) == 1 then
			DisableClickClient()
			if not LuckyEvent.CheckOpen() then
				LuckyEvent.RequestOpen()
			else
				LuckyEvent.Close()
			end
		end
	end

    if not LuckyEvent.CheckOpen() then return end

    if CheckReleasedKey(Keys.LButton) == 0 then return end

    DisableClickClient()

    if LuckyEvent_Config.AlertWindow.Open then
        if LuckyEvent_Config.AlertWindow.Type > 0 then
            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                LuckyEvent_Config.AlertWindow.Open = false
                return
            end
        else
            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                LuckyEvent.Play()
                return
            end

            if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.cancelar, MousePosX(), MousePosY()) then
                LuckyEvent_Config.AlertWindow.Open = false
                return
            end
        end
        return
    end

    if os.time()-LuckyEvent_Config.WaitResult < 4 then
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
        LuckyEvent.Close()
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.saiba, MousePosX(), MousePosY()) then
        LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.saiba].clicked = true
        --OpenBrowser(LuckyEvent_Config.LnkInfo[LuckyEvent_Config.Page])
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.free, MousePosX(), MousePosY()) then
        if LuckyEvent_Config.Page ~= 0 then
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.free].clicked = true
            LuckyEvent.GetInfo(0)
        end
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.donate, MousePosX(), MousePosY()) then
        if LuckyEvent_Config.Page ~= 1 then
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.donate].clicked = true
            LuckyEvent.GetInfo(1)
        end
        return
    end

    local totalPrizes = #LuckyEvent_Config.Prizes[LuckyEvent_Config.Page]

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.anterior, MousePosX(), MousePosY()) then
        if LuckyEvent_Config.Offset > 1 then
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.anterior].clicked = true
            LuckyEvent_Config.Offset = LuckyEvent_Config.Offset - 1
        else
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.anterior].clicked = true
            LuckyEvent_Config.Offset = totalPrizes - 2
        end
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.proximo, MousePosX(), MousePosY()) then
        if LuckyEvent_Config.Offset < totalPrizes - 2 then
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.proximo].clicked = true
            LuckyEvent_Config.Offset = LuckyEvent_Config.Offset + 1
        else
            LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.proximo].clicked = true
            LuckyEvent_Config.Offset = 1
        end
        return
    end

    if LuckyEvent.ButtonMouseOver(LuckyEvent_Config.ButtonID.jogar, MousePosX(), MousePosY()) then
        if LuckyEvent_Config.Animation or LuckyEvent_Config.AlertWindow.Open then return end
        if LuckyEvent_Config.Saldo < LuckyEvent_Config.Coin[LuckyEvent_Config.Page].Amount then return end
        LuckyEvent_Config.Button[LuckyEvent_Config.ButtonID.jogar].clicked = true
        LuckyEvent_Config.AlertWindow.Type = 0
        LuckyEvent_Config.AlertWindow.Open = true
        return
    end

end

function LuckyEvent.Protocol(Packet, PacketName)
    if Packet ~= LuckyEvent_Config.Packet then return false end

    local index = UserGetIndex()
    local name = UserGetName()

	if PacketName == string.format("2-%s-%d", name, index) then
        LuckyEvent_Config.Page = GetBytePacket(PacketName, -1)
        LuckyEvent_Config.Saldo = GetDwordPacket(PacketName, -1)
        for l = 1, 10 do
            local total = GetDwordPacket(PacketName, -1)
            local nLen = GetBytePacket(PacketName, -1)
            local nome = GetCharPacketLength(PacketName, -1, nLen)
            LuckyEvent_Config.Ranking[l] = {Nome = nome, Pontos = total}
        end
        ClearPacket(PacketName)

        if not LuckyEvent.CheckOpen() then
            LuckyEvent.Open()
        end
        return true
    end

    if PacketName == string.format("4-%s-%d", name, index) then
        local result = GetBytePacket(PacketName, -1)
        LuckyEvent_Config.AlertWindow.Open = false
        LuckyEvent_Config.AlertWindow.Type = result

        if result == 1 then
            LuckyEvent_Config.ResultItem = GetBytePacket(PacketName, -1)
            LuckyEvent.StartAnimation()
        end

        ClearPacket(PacketName)
        return true
    end


end

function LuckyEvent.StartAnimation()
    LuckyEvent_Config.AnimationTime = os.time()
    LuckyEvent_Config.SelectedItem = 1
    LuckyEvent_Config.Animation = true
end

function LuckyEvent.Play()
    local index = UserGetIndex()
    local name = UserGetName()
    LuckyEvent_Config.WaitResult = os.time()
    LuckyEvent_Config.ResultItem = -1

	local PacketName = string.format("3-%s-%d", name, index)
    CreatePacket(PacketName, LuckyEvent_Config.Packet)
    SetBytePacket(PacketName, LuckyEvent_Config.Page)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function LuckyEvent.GetInfo(page)
    local index = UserGetIndex()
    local name = UserGetName()

	local PacketName = string.format("1-%s-%d", name, index)
    CreatePacket(PacketName, LuckyEvent_Config.Packet)
    SetBytePacket(PacketName, page)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

LuckyEvent.Init()

return LuckyEvent