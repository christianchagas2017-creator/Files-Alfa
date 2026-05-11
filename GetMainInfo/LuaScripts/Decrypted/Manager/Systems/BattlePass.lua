BattlePass = {}
BattlePass.Info = {}
BattlePass.Info.Player = {Exp = 0, Premium = 0}
BattlePass.Info.ImageID = {
    Background     = 40072,
    Title          = 40073,
    ListBackground = 40074,
    BuyButton      = 40075,
    FreeItemBox    = 40076,
    PremiumItemBox = 40077,
    Level          = 40078,
    FreeTitle      = 40079,
    PremiumTitle   = 40080,
    ProgessTitle   = 40081
}

BattlePass.Info.Animation = {
    TitleOffset = 0,
    IconOffset = 0,
    Time = 0,
    Speed = 0.05  -- Velocidade da animação (ajuste conforme necessário)
}


function BattlePass.Init()
    if not BattlePass_Config.Enabled then return end

    InterfaceController.AfterMainProc(BattlePass.Interface)
    InterfaceController.UpdateKey(BattlePass.UpdateKey)
    InterfaceController.UpdateMouse(BattlePass.UpdateMouse)
    InterfaceController.ClientProtocol(BattlePass.Protocol)
    InterfaceController.ScrollMouse(BattlePass.ScrollMouse)
    BattlePass.Define()
end

function BattlePass.Define()
    BattlePass.Info.Window = {X = 0, Y = 0, W = 500, H = 393}
    BattlePass.Info.Scroll = {StartPos = 1, EndPos = 4, MaxPos = 4, Pos = 0, StepSize = 0}
end

function BattlePass.Open()
    BattlePass.Info.Window.X = math.floor((WindowGetWidth()/2)-(BattlePass.Info.Window.W/2))
    BattlePass.Info.Window.Y = math.floor(((WindowGetHeight()-50)/2)-(BattlePass.Info.Window.H/2))
    BattlePass.CalculateScroll()
    UICustomInterface = BattlePass_Config.WindowId
end

function BattlePass.Close()
    UICustomInterface = 0
    BattlePass.Define()
    -- Reseta a animação
    BattlePass.Info.Animation.Time = 0
    BattlePass.Info.Animation.TitleOffset = 0
    BattlePass.Info.Animation.IconOffset = 0
end

function BattlePass.CheckOpen()
    if UICustomInterface == BattlePass_Config.WindowId then return true end
    return false
end

function BattlePass.GetPosX(pos)
    return (BattlePass.Info.Window.X+pos)
end

function BattlePass.GetPosY(pos)
    return (BattlePass.Info.Window.Y+pos)
end

function BattlePass.GetMessage(id)
    if BattlePass_Config.Text[GetLanguage()][id] == nil then return "nil" end
    return BattlePass_Config.Text[GetLanguage()][id]
end
--=========== BOTÂO ABRIR
function BattlePass.Interface()
    -- Atualiza o tempo da animação
    BattlePass.Info.Animation.Time = BattlePass.Info.Animation.Time + BattlePass.Info.Animation.Speed
    BattlePass.Info.Animation.TitleOffset = math.sin(BattlePass.Info.Animation.Time) * 3  -- Movimento de ±3 pixels
    BattlePass.Info.Animation.IconOffset = math.sin(BattlePass.Info.Animation.Time) * 2   -- Movimento de ±2 pixels

    EnableAlphaTest()
    if not BattlePass.CheckOpen() then 
        local state = 0
        if CheckMouseIn(160, 30, 40, 40) then
            state = 1
            if CheckRepeatKey(Keys.LButton) == 1 then
                state = 2
            end
            DrawTooltip(160, 15, BattlePass.GetMessage(6))
        end
        -- Aplica o offset Y no ícone de abertura
        RenderImageAuto(40082, 160, 30 + BattlePass.Info.Animation.IconOffset, 50, 50)
        return
    end
    
    EnableAlphaTest()
    glColor4f(1.0,1.0,1.0,1.0)

    RenderImageAuto(BattlePass.Info.ImageID.Background, BattlePass.GetPosX(0), BattlePass.GetPosY(0), BattlePass.Info.Window.W, BattlePass.Info.Window.H)
    -- Aplica o offset Y no título
    RenderImageAuto(BattlePass.Info.ImageID.Title, BattlePass.GetPosX((BattlePass.Info.Window.W/2)-(161/2)), BattlePass.GetPosY(-5) + BattlePass.Info.Animation.TitleOffset, 161, 69)
--=========== FIM BOTÂO ABRIR
    EnableAlphaTest()
    glColor4f(1.0,1.0,1.0,1.0)

    RenderImageAuto(BattlePass.Info.ImageID.Background, BattlePass.GetPosX(0), BattlePass.GetPosY(0), BattlePass.Info.Window.W, BattlePass.Info.Window.H)
    RenderImageAuto(BattlePass.Info.ImageID.Title, BattlePass.GetPosX((BattlePass.Info.Window.W/2)-(161/2)), BattlePass.GetPosY(-5) + BattlePass.Info.Animation.TitleOffset, 161, 69)

    --=========== BOTÂO COMPRAR
    local state = 0
    if BattlePass.Info.Player.Premium == 0 then
        if CheckMouseIn(BattlePass.GetPosX(360), BattlePass.GetPosY(18), 70, 19) then
            state = 1
            if CheckRepeatKey(Keys.LButton) == 1 then
                state = 2
            end
        end
        RenderImage2(BattlePass.Info.ImageID.BuyButton, BattlePass.GetPosX(360), BattlePass.GetPosY(18), 70, 19, 0.001953125, 0.00390625+(0.2942708333333333*state), 0.533203125, 0.2942708333333333, 1, 1, 1.0)

        SetFontType(4)
        SetTextBg(0,0,0,0)
        SetTextColor(237, 214, 161, 255)
        if state > 1 then
            SetTextColor(237, 214, 161, 155)
        end
        RenderText3(BattlePass.GetPosX(360), BattlePass.GetPosY(19.5), BattlePass.GetMessage(1), 70, 3)
        RenderText3(BattlePass.GetPosX(360), BattlePass.GetPosY(27.5), BattlePass.GetMessage(2), 70, 3)
    end
    --=========== FIM BOTÂO COMPRAR

    --=========== BOTÂO FECHAR
    state = 0
    if CheckMouseIn(BattlePass.GetPosX(455), BattlePass.GetPosY(18), 19, 19) then
        state = 1
        if CheckRepeatKey(Keys.LButton) == 1 then
            state = 2
        end
        DrawTooltip(BattlePass.GetPosX(445), BattlePass.GetPosY(5), BattlePass.GetMessage(3))
    end
    RenderImage2(31364, BattlePass.GetPosX(455), BattlePass.GetPosY(18), 19, 19, 0.0078125, 0.001953125+(0.2096354166666667*state), 0.8359375, 0.2096354166666667, 1, 1, 1.0)
    --=========== FIM BOTÂO FECHAR

    EnableAlphaTest()
    glColor4f(1.0,1.0,1.0,1.0)

    --=========== PERIODO
    RenderImageAuto(33032, BattlePass.GetPosX(26), BattlePass.GetPosY(22), 120, 16);
    SetFontType(4)
    SetTextBg(0,0,0,0)
    SetTextColor(237, 214, 161, 255)
    RenderText3(BattlePass.GetPosX(26), BattlePass.GetPosY(26), BattlePass_Config.Period, 120, 3)
    --=========== FIM PERIODO

    --=========== PAINEL PROGRESSO
    RenderImageAuto(BattlePass.Info.ImageID.ListBackground, BattlePass.GetPosX(20), BattlePass.GetPosY(100), 120, 280)
    RenderImageAuto(BattlePass.Info.ImageID.ProgessTitle, BattlePass.GetPosX(16), BattlePass.GetPosY(60), 127, 50)
    --=========== FIM PAINEL PROGRESSO

    --=========== PAINEL FREE
    RenderImageAuto(BattlePass.Info.ImageID.ListBackground, BattlePass.GetPosX(150), BattlePass.GetPosY(100), 150, 280)
    RenderImageAuto(BattlePass.Info.ImageID.FreeTitle, BattlePass.GetPosX(145.5), BattlePass.GetPosY(60), 160, 50)
    --=========== FIM PAINEL FREE

    --=========== PAINEL PREMIUM
    RenderImageAuto(BattlePass.Info.ImageID.ListBackground, BattlePass.GetPosX(310), BattlePass.GetPosY(100), 150, 280)
    RenderImageAuto(BattlePass.Info.ImageID.PremiumTitle, BattlePass.GetPosX(305), BattlePass.GetPosY(60), 160, 50)
    --=========== FIM PAINEL PREMIUM


    --=========== PAINEIS DE RECOMPENSA
    local posY = BattlePass.GetPosY(105)
    for id = BattlePass.Info.Scroll.StartPos, BattlePass.Info.Scroll.EndPos do
        RenderImageAuto(BattlePass.Info.ImageID.Level, BattlePass.GetPosX(33), posY+0.5, 100, 70)
        SetFontType(6)
        SetTextBg(0,0,0,0)
        if BattlePass.Info.Player.Exp >= BattlePass_Config.Stages[id].MaxExp then
            SetTextColor(10, 174, 10, 255)
        elseif BattlePass.Info.Player.Exp >= BattlePass_Config.Stages[id].MinExp and BattlePass.Info.Player.Exp < BattlePass_Config.Stages[id].MaxExp then
            SetTextColor(237, 214, 161, 225)
        end
        
        RenderText3(BattlePass.GetPosX(45), posY+35, BattlePass_Config.Stages[id].Level, 70, 3)

        if BattlePass_Config.Stages[id].FreeItem.Amount > 0 then
            RenderImageAuto(BattlePass.Info.ImageID.FreeItemBox, BattlePass.GetPosX(160), posY, 130, 70)
            SetFontType(6)
            SetTextBg(0,0,0,0)
            SetTextColor(237, 214, 161, 205)
            RenderText3(BattlePass.GetPosX(175), posY+15, string.format("%dx", BattlePass_Config.Stages[id].FreeItem.Amount), 50, 1)
        else
            SetFontType(6)
            SetTextBg(0,0,0,0)
            SetTextColor(237, 214, 161, 155)
            RenderText3( BattlePass.GetPosX(160), posY+30, BattlePass.GetMessage(4), 130, 3)
        end
        if BattlePass_Config.Stages[id].PremiumItem.Amount > 0 then
            RenderImageAuto(BattlePass.Info.ImageID.PremiumItemBox, BattlePass.GetPosX(320), posY, 130, 70)
            SetFontType(6)
            SetTextBg(0,0,0,0)
            SetTextColor(237, 214, 161, 205)
            RenderText3(BattlePass.GetPosX(335), posY+15, string.format("%dx", BattlePass_Config.Stages[id].PremiumItem.Amount), 50, 1)
        else
            SetFontType(6)
            SetTextBg(0,0,0,0)
            SetTextColor(237, 214, 161, 155)
            RenderText3( BattlePass.GetPosX(320), posY+30, BattlePass.GetMessage(4), 130, 3)
        end
        posY = posY + 68
    end
    --=========== FIM PAINEIS DE RECOMPENSA

    --=========== SCROLL BAR
    local scrollX = BattlePass.GetPosX(473)
    glColor4f(0.6, 0.6, 0.6,1.0)
    RenderImageAuto(33051, scrollX, BattlePass.GetPosY(129), 4, 3);
    RenderImageAuto(33052, scrollX, BattlePass.GetPosY(129) + 3, 4, 230);
    RenderImageAuto(33053, scrollX, BattlePass.GetPosY(129) + 230, 4, 3);

    if CheckMouseIn(scrollX - 4, BattlePass.Info.Scroll.Pos, 12, 12) then
        glColor4f(0.9, 0.9, 0.9,1.0)
    end

    RenderImageAuto(33054, scrollX - 4, BattlePass.Info.Scroll.Pos, 12, 12);
    --=========== FIM SCROLL BAR

    glColor4f(1.0,1.0,1.0,1.0)

    --=========== CONTEUDO DOS PAINEIS DE RECOMPENSA
    posY = BattlePass.GetPosY(105)
    for id = BattlePass.Info.Scroll.StartPos, BattlePass.Info.Scroll.EndPos do
        local barSize = 66
        EnableAlphaTest()
        glColor4f(0.6, 0.1, 0.1, 1.0)
        DrawBar(BattlePass.GetPosX(44.5), posY+55, barSize, 4.2)
        if BattlePass.Info.Player.Exp >= BattlePass_Config.Stages[id].MaxExp then
            glColor4f(0.1, 0.6, 0.1, 1.0)
            DrawBar(BattlePass.GetPosX(44.5), posY+55, barSize, 4.2)
        elseif BattlePass.Info.Player.Exp >= BattlePass_Config.Stages[id].MinExp and BattlePass.Info.Player.Exp < BattlePass_Config.Stages[id].MaxExp then
            local stepBarSize = barSize/(BattlePass_Config.Stages[id].MaxExp-BattlePass_Config.Stages[id].MinExp)
            glColor4f(0.1, 0.6, 0.1, 1.0)
            DrawBar(BattlePass.GetPosX(44.5), posY+55, stepBarSize*(BattlePass.Info.Player.Exp-BattlePass_Config.Stages[id].MinExp), 4.2)
        end
        EndDrawBar()
        EnableAlphaTest()
        if BattlePass_Config.Stages[id].FreeItem.Amount > 0 then
            CreateItem(BattlePass.GetPosX(160)+ BattlePass_Config.Stages[id].FreeItem.X, posY+ BattlePass_Config.Stages[id].FreeItem.Y, 130, 70,  BattlePass_Config.Stages[id].FreeItem.Index,  BattlePass_Config.Stages[id].FreeItem.Level, 0, 0,  BattlePass_Config.Stages[id].FreeItem.Size)
        end
        if BattlePass_Config.Stages[id].PremiumItem.Amount > 0 then
            CreateItem(BattlePass.GetPosX(320)+ BattlePass_Config.Stages[id].PremiumItem.X, posY+ BattlePass_Config.Stages[id].PremiumItem.Y, 130, 70,  BattlePass_Config.Stages[id].PremiumItem.Index,  BattlePass_Config.Stages[id].PremiumItem.Level, 0, 0,  BattlePass_Config.Stages[id].PremiumItem.Size)
        end
        posY = posY + 68
    end
    --=========== CONTEUDO DOS PAINEIS DE RECOMPENSA

    --=========== TOOLTIP DO CONTEUDO DOS PAINEIS DE RECOMPENSA
    posY = BattlePass.GetPosY(105)
    for id = BattlePass.Info.Scroll.StartPos, BattlePass.Info.Scroll.EndPos do
        EnableAlphaTest()
        if CheckMouseIn(BattlePass.GetPosX(51), posY+30.5, 46.5, 46.5) then
            local text = BattlePass.GetMessage(5)
            if BattlePass.Info.Player.Exp >= BattlePass_Config.Stages[id].MaxExp or BattlePass.Info.Player.Exp < BattlePass_Config.Stages[id].MinExp then
                text = text:format(BattlePass_Config.Stages[id].MinExp, BattlePass_Config.Stages[id].MaxExp)
            else
                text = text:format(BattlePass.Info.Player.Exp, BattlePass_Config.Stages[id].MaxExp)
            end 
            DrawTooltip(BattlePass.GetPosX(51), posY+35, text)
            EndDrawBar()
        end
        EnableAlphaTest()
        if BattlePass_Config.Stages[id].FreeItem.Amount > 0 then
            if CheckMouseIn(BattlePass.GetPosX(160), posY, 130, 70) then
                ShowDescriptionComplete(MousePosX(), MousePosY()+10, BattlePass_Config.Stages[id].FreeItem.Index, BattlePass_Config.Stages[id].FreeItem.Level, BattlePass_Config.Stages[id].FreeItem.Dur, BattlePass_Config.Stages[id].FreeItem.Skill, BattlePass_Config.Stages[id].FreeItem.Luck, BattlePass_Config.Stages[id].FreeItem.JoL, BattlePass_Config.Stages[id].FreeItem.Exc, BattlePass_Config.Stages[id].FreeItem.Ancient, BattlePass_Config.Stages[id].FreeItem.Harmony, 255, 255, 255, 255, 255,255)
            end
        end
        if BattlePass_Config.Stages[id].PremiumItem.Amount > 0 then
            if CheckMouseIn(BattlePass.GetPosX(320), posY, 130, 70) then
                ShowDescriptionComplete(MousePosX(), MousePosY()+10, BattlePass_Config.Stages[id].PremiumItem.Index, BattlePass_Config.Stages[id].PremiumItem.Level, BattlePass_Config.Stages[id].PremiumItem.Dur, BattlePass_Config.Stages[id].PremiumItem.Skill, BattlePass_Config.Stages[id].PremiumItem.Luck, BattlePass_Config.Stages[id].PremiumItem.JoL, BattlePass_Config.Stages[id].PremiumItem.Exc, BattlePass_Config.Stages[id].PremiumItem.Ancient, BattlePass_Config.Stages[id].PremiumItem.Harmony, 255, 255, 255, 255, 255,255)
            end
        end
        EndDrawBar()
        posY = posY + 68
    end
    --=========== TOOLTIP DO CONTEUDO DOS PAINEIS DE RECOMPENSA
end

function BattlePass.UpdateMouse()
    if not BattlePass.CheckOpen() then 
        if CheckMouseIn(160, 30, 40, 40) then
            if CheckPressedKey(Keys.LButton) == 1 then
                DisableClickClient()
                BattlePass.Open()
                return true
            end
        end

        return false 
    end

    if CheckMouseIn(BattlePass.GetPosX(0), BattlePass.GetPosY(0), BattlePass.Info.Window.W, BattlePass.Info.Window.H) then
        DisableClickClient()
    end

    if CheckMouseIn(BattlePass.GetPosX(455), BattlePass.GetPosY(18), 19, 19) then
        if CheckReleasedKey(Keys.LButton) == 1 then
            BattlePass.Close()
            return true
        end
    end

    if BattlePass.Info.Player.Premium == 0 then
        if CheckMouseIn(BattlePass.GetPosX(360), BattlePass.GetPosY(18), 70, 19) then
            if CheckReleasedKey(Keys.LButton) == 1 then
                BattlePass.SendBuy()
                return true
            end
        end
    end

    if CheckMouseIn(BattlePass.GetPosX(460), BattlePass.GetPosY(115), 30, 265) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            if MousePosY() <= BattlePass.Info.Scroll.Pos-BattlePass.Info.Scroll.StepSize then
                if BattlePass.Info.Scroll.StartPos > 1 then
                    BattlePass.Info.Scroll.StartPos = BattlePass.Info.Scroll.StartPos - 1
                    BattlePass.Info.Scroll.EndPos = BattlePass.Info.Scroll.EndPos - 1
                    BattlePass.Info.Scroll.Pos = BattlePass.Info.Scroll.Pos - BattlePass.Info.Scroll.StepSize
                end
                return true
            end

            if MousePosY() >= BattlePass.Info.Scroll.Pos+BattlePass.Info.Scroll.StepSize then
                if BattlePass.Info.Scroll.EndPos < BattlePass.Info.Scroll.MaxPos then
                    BattlePass.Info.Scroll.StartPos = BattlePass.Info.Scroll.StartPos + 1
                    BattlePass.Info.Scroll.EndPos = BattlePass.Info.Scroll.EndPos + 1
                    BattlePass.Info.Scroll.Pos = BattlePass.Info.Scroll.Pos + BattlePass.Info.Scroll.StepSize
                end
                return true
            end
        end
    end

    return true
end

function BattlePass.ScrollMouse(Direction)
    if not BattlePass.CheckOpen() then return 0 end

    if not CheckMouseIn(BattlePass.GetPosX(20), BattlePass.GetPosY(105), 440, 275) then return 0 end

    if Direction > 0 then
        if BattlePass.Info.Scroll.StartPos > 1 then
            BattlePass.Info.Scroll.StartPos = BattlePass.Info.Scroll.StartPos - 1
            BattlePass.Info.Scroll.EndPos = BattlePass.Info.Scroll.EndPos - 1
            BattlePass.Info.Scroll.Pos = BattlePass.Info.Scroll.Pos - BattlePass.Info.Scroll.StepSize
        end
    elseif Direction < 0 then
        if BattlePass.Info.Scroll.EndPos < BattlePass.Info.Scroll.MaxPos then
            BattlePass.Info.Scroll.StartPos = BattlePass.Info.Scroll.StartPos + 1
            BattlePass.Info.Scroll.EndPos = BattlePass.Info.Scroll.EndPos + 1
            BattlePass.Info.Scroll.Pos = BattlePass.Info.Scroll.Pos + BattlePass.Info.Scroll.StepSize
        end
    end

    return 1
end

function BattlePass.UpdateKey()
    if not BattlePass.CheckOpen() then return false end

    if CheckWindowOpen(UIChatWindow) ~= 0 then return true end

    if CheckPressedKey(Keys.Escape) == 1 then
        DisableClickClient()
        BattlePass.Close()
        return true
    end

    return true
end

function BattlePass.Protocol(Packet, PacketName)
    if Packet ~= BattlePass_Config.Packet then return false end

    --LogDebug(PacketName)

    if PacketName == string.format("UtilsEnter_%s", UserGetName()) then
        BattlePass.Info.Player.Exp = GetDwordPacket(PacketName, -1)
        BattlePass.Info.Player.Premium = GetBytePacket(PacketName, -1)

        ClearPacket(PacketName)
    end
    return false
end

function BattlePass.CalculateScroll()
    BattlePass.Info.Scroll.EndPos = #BattlePass_Config.Stages
    BattlePass.Info.Scroll.MaxPos = 0
    BattlePass.Info.Scroll.Pos = BattlePass.GetPosY(129)
    if #BattlePass_Config.Stages > 4 then 
        BattlePass.Info.Scroll.EndPos = 4
        BattlePass.Info.Scroll.MaxPos = BattlePass.Info.Scroll.EndPos+(#BattlePass_Config.Stages - 4)
        BattlePass.Info.Scroll.StepSize = 224/(#BattlePass_Config.Stages - 4)
    end
end

function BattlePass.SendBuy()
    SendPlayerChat(BattlePass_Config.CommandBuy)
end

BattlePass.Init()

return BattlePass