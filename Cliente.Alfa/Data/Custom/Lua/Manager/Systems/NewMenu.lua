NewMenu = {}
local firstOpen = true

NewMenu.Button = {
	Pos = {X = 0, Y = 0},
    Size = {W = 0, H = 0},
    State = 0,
    Texture = -1,
	Drawcallback = function() end,
    Callback = function() end,
    Timer = 2,
    Tooltip = {Text = "", X = 0, Y = 0, Size = 1.0},
}

function NewMenu.Button:new(texture, x, y, w, h, drawcallback, callback, tooltiptext, tx, ty)
    local btn = {}
    setmetatable(btn, self)
    self.__index = self
    btn.Pos = {X = x or 0, Y = y or 0}
    btn.Size = {W = w or 0, H = h or 0}
    btn.State = 0
    btn.Texture = texture or -1
    btn.Drawcallback = drawcallback or function() end
    btn.Callback = callback or function() end
    btn.Timer = 2
    btn.Tooltip = {Text = tooltiptext or "", X = tx or 0, Y = ty or 0}
    return btn
end

function NewMenu.Button:draw(disabled)
    if disabled then self.State = 3 end

    self.Drawcallback(self.Texture, self.Pos.X, self.Pos.Y, self.Size.W, self.Size.H, self.State)

    if CheckMouseIn(self.Pos.X, self.Pos.Y, self.Size.W, self.Size.H) then
        if self.Tooltip.Text:len() > 0  and self.State == 1 then
            DrawTooltip(self.Pos.X+self.Tooltip.X, self.Pos.Y+self.Tooltip.Y, self.Tooltip.Text)
        end
    end
    if self.State == 2 then
        if self.Timer <= 0 then
            self.State = 0
        else
            self.Timer = self.Timer - 1
        end
    end
end

function NewMenu.Button:click(...)
    if self.State == 3 then return false end
    self.State = 0
    if CheckMouseIn(self.Pos.X, self.Pos.Y, self.Size.W, self.Size.H) then
        DisableClickClient()
        self.State = 1
        if CheckRepeatKey(Keys.LButton) == 1 then
            self.State = 2
            self.Timer = 2
        end
        if CheckReleasedKey(Keys.LButton) == 1 then
            self.Callback(...)
            self.State = 0
            return true
        end
    end

    return false
end

function CheckMouseIn(x, y, w, h)
    if MousePosX() >= x and MousePosX() <= x+w then
        if MousePosY() >= y and MousePosY() <= y+h then
            return true
        end
    end
    return false
end

function NewMenu.Init()
    InterfaceController.MainProc(NewMenu.Interface)
    InterfaceController.UpdateMouse(NewMenu.UpdateMouse)
    InterfaceController.UpdateKey(NewMenu.UpdateKey)
    NewMenu.Define()
end

function NewMenu.Define()
    NewMenu.Pos = {X = WindowGetWidth()/2-150, Y = WindowGetHeight()/2-50-100}
    NewMenu.Size = {W = 300, H = 200}
    NewMenu.OpenButton = NewMenu.Button:new(590080, WindowGetWidth()-95, 392, 21, 21, nil, NewMenu.Open)
    NewMenu.CloseButton = NewMenu.Button:new(-1, NewMenu.Pos.X+NewMenu.Size.W-26, NewMenu.Pos.Y+10, 16, 16, NewMenu.DrawCloseButton, NewMenu.Close)
    NewMenu.Options = {}
    local x = 30
    local y = 32
    local image = 40051
    local id = 1
    for column = 1, 2 do
        for row = 1, 4 do
            NewMenu.Options[id] = NewMenu.Button:new(image, NewMenu.Pos.X+x, NewMenu.Pos.Y+y, 110, 30, NewMenu.DrawButtons, NewMenu.ClickButtons)
            y =  y + 36
            if row == 4 then
                x = x + 130
                y = 32
            end
            id = id + 1
            image = image + 1
        end
    end
end

function NewMenu.Open()
    UICustomInterface = NewMenu_Config.WindowID
end

function NewMenu.Close()
    UICustomInterface = 0
    NewMenu.Define()
end

function NewMenu.IsOpen()
    if UICustomInterface == NewMenu_Config.WindowID then return true end
    return false
end


function NewMenu.Interface()

    local addX = WindowGetWidthAdd()
    local posX = WindowGetWidth()-190

    if firstOpen then
        NewMenu.Define()
        firstOpen = false
    end

	if CheckWindowOpen(UIInventory) == 1 then
		if CheckWindowOpen(UICharacter) ~= 1 then
			if CheckMouseIn(WindowGetWidth()-190+112, 392, 25, 24) then
				stateCentral = 1 -- Hover
				buttonID = 40052
				
				if CheckRepeatKey(Keys.LButton) == 1 then
					stateCentral = 2 -- Pressionado
				end
			else
				stateCentral = 0 -- Normal
				buttonID = 40059
			end
			
			-- Desenhando o botão com base no estado calculado
			DrawButton.Infos(stateCentral, WindowGetWidth()-190+112, 392, 25, 24)
			DisableAlphaBlend()
		end
	
		if CheckWindowOpen(UICharacter) == 1 then
			NewMenu.OpenButton.Pos.X = WindowGetWidth()-380+112
		else
			NewMenu.OpenButton.Pos.X = WindowGetWidth()-70
		end
	end



    if not NewMenu.IsOpen() then return end

    EnableAlphaTest()

    RenderImageAuto(40050, NewMenu.Pos.X, NewMenu.Pos.Y, NewMenu.Size.W, NewMenu.Size.H, 0, 0, 807, 529, 0)

    SetFontType(1)
    SetTextBg(0, 0, 0, 0)
    SetTextColor(237-20, 214-20, 161-20, 255)
    RenderText3(NewMenu.Pos.X, NewMenu.Pos.Y+12, NewMenu_Config.Text[GetLanguage()][1], NewMenu.Size.W, 3)

    NewMenu.CloseButton:draw()

    for i, button in ipairs(NewMenu.Options) do
        button:draw()
    end

    DisableAlphaBlend()
end

function NewMenu.UpdateMouse()
    if CheckWindowOpen(UIInventory) == 1 then
        if NewMenu.OpenButton:click() then return end
    end

    if not NewMenu.IsOpen() then return end

    if CheckMouseIn(NewMenu.Pos.X, NewMenu.Pos.Y, NewMenu.Size.W, NewMenu.Size.W) then
        DisableClickClient()
    end
    
    if NewMenu.CloseButton:click() then return end

    for i, button in ipairs(NewMenu.Options) do
        if button:click(i) then return end
    end
end

function NewMenu.UpdateKey()
    if not NewMenu.IsOpen() then return end

    if CheckPressedKey(Keys.Escape) ~= 0 and CheckWindowOpen(UIChatWindow) == 0 then
        DisableClickClient()
        NewMenu.Close()
        return true
    end
end

function NewMenu.DrawCloseButton(image, x, y, w, h, state)
    DrawButton.Close(state, x, y, w, h)
end

function NewMenu.DrawButtons(image, x, y, w, h, state)
    if state == 0 then
        RenderImage2(image, x, y, w, h, 0.0, 0.0, 0.5783459, 0.21079544, 1, 1, 1.0)
    elseif state == 1 then
        RenderImage2(image, x, y, w, h, 0.0, 0.20679544, 0.5783459, 0.21079544, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(image, x, y, w, h, 0.0, (0.20679544*2), 0.5783459, 0.21079544, 1, 1, 1.0)
    else
        RenderImage2(image, x, y, w, h, 0.0, 0.0, 0.5783459, 0.21079544, 1, 1, 0.5)
    end
	
	SetFontType(14)
    SetTextBg(0, 0, 0, 0)
    SetTextColor(237-20, 214-20, 161-20, 255)
    RenderText3(NewMenu.Pos.X-63, NewMenu.Pos.Y+42, NewMenu_Config.Text[GetLanguage()][2], NewMenu.Size.W, 3)
    RenderText3(NewMenu.Pos.X+65, NewMenu.Pos.Y+42, NewMenu_Config.Text[GetLanguage()][3], NewMenu.Size.W, 3)
    RenderText3(NewMenu.Pos.X-63, NewMenu.Pos.Y+77, NewMenu_Config.Text[GetLanguage()][4], NewMenu.Size.W, 3)
    RenderText3(NewMenu.Pos.X+65, NewMenu.Pos.Y+77, NewMenu_Config.Text[GetLanguage()][5], NewMenu.Size.W, 3)	
    RenderText3(NewMenu.Pos.X-63, NewMenu.Pos.Y+114, NewMenu_Config.Text[GetLanguage()][6], NewMenu.Size.W, 3)	
    RenderText3(NewMenu.Pos.X+65, NewMenu.Pos.Y+114, NewMenu_Config.Text[GetLanguage()][7], NewMenu.Size.W, 3)	
    RenderText3(NewMenu.Pos.X-63, NewMenu.Pos.Y+149, NewMenu_Config.Text[GetLanguage()][8], NewMenu.Size.W, 3)	
    RenderText3(NewMenu.Pos.X+65, NewMenu.Pos.Y+150, NewMenu_Config.Text[GetLanguage()][9], NewMenu.Size.W, 3)	
end

function NewMenu.ClickButtons(option)
	
    NewMenu.Close()
    if option == 1 then -- Npc Rescue
        RescueItens.RequestOpen()
    elseif option == 2 then -- Npc Horas
        NPCHoras.RequestOpen()
    elseif option == 3 then -- Compre Cash
        JewelBank.RequestOpen()
    elseif option == 4 then -- Store
        PointsRanking.RequestOpen()
    elseif option == 5 then -- Shopping
        Shop.SendRequestOpen()
    elseif option == 6 then -- Guardiao de brindes
        GuardiaoBrindes.RequestOpen()
    elseif option == 7 then -- Obter Vip
        PacotePromo.RequestOpen()
    elseif option == 8 then -- Ranking Reward
        Quest.RequestOpen() -- Adicionamos a chamada para abrir a quest aqui
    end
	
end

NewMenu.Init()

return NewMenu