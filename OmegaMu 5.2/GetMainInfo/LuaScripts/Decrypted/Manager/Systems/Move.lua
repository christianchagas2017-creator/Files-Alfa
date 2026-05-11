Move = {}

function Move.Init()
    InterfaceController.AfterMainProc(Move.Interface)
    InterfaceController.UpdateMouse(Move.UpdateMouse)
    InterfaceController.UpdateKey(Move.UpdateKey)
    InterfaceController.AfterScriptLoad(Move.Define)
end

function Move.Define()
    Move_Config.WindowInfo = {PosX = ((WindowGetWidth()/2) - (550/2)), PosY = ((WindowGetHeight()-50)-380)/2, Width = 550, Height = 380, Offset = WindowGetWidth()-640, AddX = WindowGetWidthAdd(), Lang = GetLanguage()}
    Move_Config.Button = {}
    Move_Config.MoveButton = {}
    Move_Config.CurrentPage = 0
    Move_Config.SpeciasButtons = {}
end

function Move.GetPosX(PosX)
    return Move_Config.WindowInfo.PosX+PosX
end

function Move.GetText(id)
    return Move_Config.Texts[Move_Config.WindowInfo.Lang][id]
end

function Move.GetPosY(PosY)
    return Move_Config.WindowInfo.PosY+PosY
end

function Move.Open()
    Move_Config.Button = {
        fechar = Button:new(31364, Move.GetPosX(518), Move.GetPosY(10), 16, 16, Draw.Button.Small, Move.Close, GetMessage(1), 0, -11),
    }

    Move_Config.Button.Pages = {}
    for _, page in ipairs(Move_Config.Pages) do
        Move_Config.Button.Pages[_] = Button:new(31323, Move.GetPosX(30), Move.GetPosY((50 + ((_-1)*31))), 120, 26, Draw.Button.Large, Move.ChangePage)
    end

    local page = 1
    if Move_Config.City[UserGetMap()] ~= nil then
        page = Move_Config.City[UserGetMap()]
    end
    Move.ChangePage(page)

    UICustomInterface = Move_Config.WindowID
end

function Move.Close()
    UICustomInterface = 0
    Move.Define()
end

function Move.CheckOpen()
    if UICustomInterface == Move_Config.WindowID then return true else return false end
end

function Move.Interface()
    if not Move.CheckOpen() then return end

    EnableAlphaTest()
    RenderImage2(40014, ((WindowGetWidth()/2) - (Move_Config.WindowInfo.Width/2)), Move_Config.WindowInfo.PosY, Move_Config.WindowInfo.Width, Move_Config.WindowInfo.Height, 0.0, 0.0, 1.0, 0.783, 1, 1, 1.0)

    Move_Config.Button.fechar:draw()

    SetFontType(1)
    SetTextBg(0,0,0, 0)
    SetTextColor(255,255,255,255)
    RenderText3(Move.GetPosX(276), Move.GetPosY(12), "MOVE MENU", 130, 8)

    DisableAlphaBlend()

	glColor4f(0.07, 0.07, 0.07, 0.4)
    DrawBar(Move.GetPosX(23), Move.GetPosY(46), 135, 313)
	glColor4f(0.07, 0.07, 0.07, 0.4)
    DrawBar(Move.GetPosX(170), Move.GetPosY(46), 360, 313)
	glColor4f(0.20, 0.20, 0.20, 0.7)
	Draw.Interface.DrawBox(Move.GetPosX(170), Move.GetPosY(46), 360, 313)
	Draw.Interface.DrawBox(Move.GetPosX(22), Move.GetPosY(46), 137, 313)
    EndDrawBar()

    EnableAlphaTest()

    for _, button in ipairs(Move_Config.Button.Pages) do
        local buttonText = Move_Config.Pages[_]

        if _ == 10 and type(buttonText) == "string" then
            local translatedText = Move_Config.Speciais[1].Name[GetLanguage()] or buttonText
            if Move_Config.CurrentPage > 10 then
                translatedText = Move_Config.Speciais[5].Name[GetLanguage()] or buttonText
            end
            button:setTextPrimaryInfo(translatedText, 6, {237, 214, 161, 255})
        else
            button:setTextPrimaryInfo(buttonText, 6, {237, 214, 161, 255})
        end
        button:draw()
    end

    for _, button in ipairs(Move_Config.MoveButton) do
        local buttonText = Move_Config.Moves[Move_Config.CurrentPage][_].Name

     --BUTTON GAME MASTER
    if not (Move_Config.CurrentPage == 10 and _ == Move_Config.GameMasterButton and not isUserStaff()) then
        if Move_Config.CurrentPage == 10 and type(buttonText) == "string" then
            local translatedText = Move_Config.Speciais[_ + 1] and Move_Config.Speciais[_ + 1].Name[GetLanguage()] or buttonText
               button:setTextPrimaryInfo(translatedText, 6, {237, 214, 161, 255})
            else
                button:setTextPrimaryInfo(buttonText, 6, {237, 214, 161, 255})
            end
            button:draw()
        end
    end

    DisableAlphaBlend()

end

function Move.UpdateMouse()
    if not Move.CheckOpen() then return end

    DisableClickClient()

    if Move_Config.Button.fechar:click() then return end

    for _, button in ipairs(Move_Config.Button.Pages) do
        if Move_Config.CurrentPage == _ then
            button.State = 3
        else
            button.State = 0
        end
        if button:click(_) then return end
    end

    for _, button in ipairs(Move_Config.MoveButton) do
        if button:click(Move_Config.Moves[Move_Config.CurrentPage][_].Command) then
            if Move_Config.CurrentPage == 10 and _ == Move_Config.GameMasterButton and not isUserStaff() then
                return
            end

            if Move_Config.CurrentPage == 10 then
                Move.ChangePage(Move_Config.CurrentPage + _)
            end

            --if Move_Config.CurrentPage == 13 then
            --    Move.ChangePage(Move_Config.CurrentPage + _)
            --end
            return
        end
    end

    --[[
    for _, button in ipairs(Move_Config.MoveButton) do
        if button:click(Move_Config.Moves[Move_Config.CurrentPage][_].Command) then
            return
        end
    end
    --]]
end

function Move.UpdateKey()
    if UICustomInterface ~= 0 and UICustomInterface ~= Move_Config.WindowID then return end
    if CheckWindowOpen(UIStore) ~= 0 or CheckWindowOpen(UIGuildNpc) ~= 0 or CheckWindowOpen(UIChatWindow) ~= 0 then return end

    if CheckPressedKey(Keys.Escape) ~= 0 then
        if Move.CheckOpen() then
            DisableClickClient()
            Move.Close()
            return
        end
    end

    if CheckPressedKey(Keys.M) ~= 0 then
        if not Move.CheckOpen() then
            DisableClickClient()
            Move.Open()
            return
        else
            DisableClickClient()
            Move.Close()
        end
    end

	if not Move.CheckOpen() then return end

    if CheckPressedKey(Keys.E) ~= 0 then
        Move.ChangePage(10)
    end

    if isUserStaff() then
        if CheckPressedKey(Keys.N) ~= 0 then
            Move.ChangePage(13)
            DisableClickClient()
        end
    end
end

function Move.ChangePage(id)
    if id == Move_Config.CurrentPage then return end
    Move_Config.CurrentPage = id
    Move_Config.MoveButton = {}
    local row = 1
    local column = 1

    for _, page in ipairs(Move_Config.Moves[id]) do
        local buttonColor = Draw.Button.Large

       -- if page.Type == 1 then
       --     buttonColor = Draw.Button.Red
       -- elseif page.Type == 2 then
       --     buttonColor = Draw.Button.Red2
       -- end

        Move_Config.MoveButton[_] = Button:new(31323, Move.GetPosX(90+(column*105)), Move.GetPosY(60 + (row*31)), 100, 26, buttonColor, Move.SendMove)
        if Move_Config.CurrentPage == 13 then
            row = row + 1
            if row >= 9 then
                column = column + 1
                row = 1
            end
        else
            column = column + 1
            if column >= 4 then
                row = row + 1
                column = 1
            end
        end
    end
end

function Move.SendMove(command)
    if Move_Config.CurrentPage ~= 10 then
        Move.Close()
    end
    SendPlayerChat(command)
end

Move.Init()

return Move