Button = {
	Pos = {X = 0, Y = 0},
    Size = {W = 0, H = 0},
    State = 0,
    Texture = -1,
    PrimaryInfo = {
        Text = "",
        TextColor = {245, 232, 202, 255},
        TextColorBg = {0, 0, 0, 0},
        Font = 1,
    },
    SecondaryInfo = {
        Text = "",
        TextColor = {245, 232, 202, 255},
        TextColorBg = {0, 0, 0, 0},
        Font = 1,
    },
	Drawcallback = function() end,
    Callback = function() end,
    Timer = 2,
    Tooltip = {Text = "", X = 0, Y = 0, Size = 1.0},
    Sound = 25
}

function Button:new(texture, x, y, w, h, drawcallback, callback, tooltiptext, tx, ty, sound)
    local btn = {}
    setmetatable(btn, self)
    self.__index = self
    btn.Pos = {X = x or 0, Y = y or 0}
    btn.Size = {W = w or 0, H = h or 0}
    btn.State = 0
    btn.Texture = texture or -1
    btn.PrimaryInfo = {
        Text = "",
        Font = 1,
        TextColor = {245, 232, 202, 255},
        TextColorBg = {0, 0, 0, 0},
    }
    btn.SecondaryInfo = {
        Text = "",
        Font = 4,
        TextColor = {245, 232, 202, 255},
        TextColorBg = {0, 0, 0, 0},
    }
    btn.Drawcallback = drawcallback or function() end
    btn.Callback = callback or function() end
    btn.Timer = 2
    btn.Tooltip = {Text = tooltiptext or "", X = tx or 0, Y = ty or 0}
    btn.Sound = sound or 25
    return btn
end

function Button:setTextPrimaryInfo(text, font, fontcolor, fontbg)
    self.PrimaryInfo.Text = text or self.PrimaryInfo.Text
    self.PrimaryInfo.Font = font or self.PrimaryInfo.Font
    self.PrimaryInfo.TextColor = fontcolor or self.PrimaryInfo.TextColor
    self.PrimaryInfo.TextColorBg = fontbg or self.PrimaryInfo.TextColorBg
end

function Button:setTextSecondaryInfo(text, font, fontcolor, fontbg)
    self.SecondaryInfo.Text = text or self.SecondaryInfo.Text
    self.SecondaryInfo.Font = font or self.SecondaryInfo.Font
    self.SecondaryInfo.TextColor = fontcolor or self.SecondaryInfo.TextColor
    self.SecondaryInfo.TextColorBg = fontbg or self.SecondaryInfo.TextColorBg
end

function Button:draw(disabled)
    if disabled then self.State = 3 end

    self.Drawcallback(self.Texture, self.Pos.X, self.Pos.Y, self.Size.W, self.Size.H, self.State)

    if self.PrimaryInfo.Text:len() > 0 then
        SetFontType(self.PrimaryInfo.Font)
        SetTextBg(self.PrimaryInfo.TextColorBg[1], self.PrimaryInfo.TextColorBg[2], self.PrimaryInfo.TextColorBg[3], self.PrimaryInfo.TextColorBg[4])
        if disabled or self.State == 2 then
            SetTextColor(self.PrimaryInfo.TextColor[1], self.PrimaryInfo.TextColor[2], self.PrimaryInfo.TextColor[3], math.floor(self.PrimaryInfo.TextColor[4]/2))
        else
            SetTextColor(self.PrimaryInfo.TextColor[1], self.PrimaryInfo.TextColor[2], self.PrimaryInfo.TextColor[3], self.PrimaryInfo.TextColor[4])
        end
        RenderText(self.Pos.X, GetTextPosY(self.PrimaryInfo.Font, self.PrimaryInfo.Text, self.Pos.Y, self.Size.H), self.PrimaryInfo.Text, self.Size.W, ALIGN_CENTER)
    end

    if self.SecondaryInfo.Text:len() > 0 and disabled then
        SetFontType(self.SecondaryInfo.Font)
        SetTextBg(self.SecondaryInfo.TextColorBg[1], self.SecondaryInfo.TextColorBg[2], self.SecondaryInfo.TextColorBg[3], self.SecondaryInfo.TextColorBg[4])
        SetTextColor(self.SecondaryInfo.TextColor[1], self.SecondaryInfo.TextColor[2], self.SecondaryInfo.TextColor[3], self.SecondaryInfo.TextColor[4])
        RenderText(self.Pos.X+self.Size.W-3, self.Pos.Y+self.Size.H-11, self.SecondaryInfo.Text, 0, ALIGN_RIGHT_TO_LEFT)
    end

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

function Button:click(...)
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
            if self.Sound ~= -1 then
                PlaySound(self.Sound)
            end
            self.Callback(...)
            return true
        end
    end

    return false
end