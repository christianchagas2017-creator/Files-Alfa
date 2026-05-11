MachineSelect = {}

function MachineSelect.Init()
    InterfaceController.BeforeMainProc(MachineSelect.Interface)
    InterfaceController.UpdateMouse(MachineSelect.UpdateMouse)
    InterfaceController.UpdateKey(MachineSelect.UpdateKey)
    InterfaceController.ClientProtocol(MachineSelect.Protocol)
    InterfaceController.AfterScriptLoad(MachineSelect.Define)
end

function MachineSelect.Define()
    MachineSelect_Config.Window = {PosX = 260+(WindowGetWidth()-640), PosY = 0}
end

function MachineSelect.GetText(id)
    if MachineSelect_Config.Texts[GetLanguage()][id] == nil then
        return "nil"
    end

    return MachineSelect_Config.Texts[GetLanguage()][id]
end

function MachineSelect.GetPosX(pos)
    return MachineSelect_Config.Window.PosX+pos
end

function MachineSelect.GetPosY(pos)
    return MachineSelect_Config.Window.PosY+pos
end

function MachineSelect.Open()
    CloseWindow(UICharacter)
    CloseWindow(UIStore)
    CloseWindow(UIOtherStore)
    OpenWindow(UIInventory)
    UICustomInterface = MachineSelect_Config.WindowID
end

function MachineSelect.Close()
    UICustomInterface = 0
end

function MachineSelect.CheckOpen()
    if UICustomInterface == MachineSelect_Config.WindowID then return true else return false end
end

function MachineSelect.MouseInArea(x, y, w, h)
    if MousePosX() >= x and MousePosX() <= x+w and MousePosY() >= y and MousePosY() <= y+h then return true else return false end
end

function MachineSelect.Interface()
    if not MachineSelect.CheckOpen() then return end

    EnableAlphaTest()
    RenderImageAuto(33001, MachineSelect.GetPosX(0), MachineSelect.GetPosY(0), 191, 429)

    local state = 0
    if MachineSelect.MouseInArea(MachineSelect.GetPosX(23), MachineSelect.GetPosY(393), 25, 24) then
        if CheckRepeatKey(Keys.LButton) ~= 0 then
            state = 2
        else
            DrawTooltip(MachineSelect.GetPosX(23), MachineSelect.GetPosY(380), GetMessage(1))
            state = 1
        end
    end
    Draw.Button.Small(31364, MachineSelect.GetPosX(23), MachineSelect.GetPosY(393), 25, 24, state)

    SetFontType(1)	
	SetTextBg(0, 0, 0, 0)
	SetTextColor(240, 240, 240, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(11), MachineSelect.GetText(1), 190, 8)

    SetFontType(0)	
	SetTextColor(220, 220, 220, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(75), MachineSelect.GetText(2), 190, 8)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(85), MachineSelect.GetText(3), 190, 8)

    state = 0
    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(105), 80, 24) then
        state = 1
        if CheckRepeatKey(Keys.LButton) ~= 0 then
            state = 2
        end
    end
    Draw.Button.Medium(31321, MachineSelect.GetPosX(55), MachineSelect.GetPosY(105), 80, 24, state)

    SetFontType(1)
    SetTextColor(237, 214, 161, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(113), MachineSelect.GetText(4), 80, 8)

    SetFontType(0)	
    SetTextColor(220, 220, 220, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(180), MachineSelect.GetText(5), 190, 8)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(190), MachineSelect.GetText(6), 190, 8)

    state = 0
    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(210), 80, 24) then
        state = 1
        if CheckRepeatKey(Keys.LButton) ~= 0 then
            state = 2
        end
    end
    Draw.Button.Medium(31321, MachineSelect.GetPosX(55), MachineSelect.GetPosY(210), 80, 24, state)

    SetFontType(1)
    SetTextColor(237, 214, 161, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(218), MachineSelect.GetText(7), 80, 8)

    SetFontType(0)	
    SetTextColor(220, 220, 220, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(285), MachineSelect.GetText(8), 190, 8)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(295), MachineSelect.GetText(9), 190, 8)

    state = 0
    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(315), 80, 24) then
        state = 1
        if CheckRepeatKey(Keys.LButton) ~= 0 then
            state = 2
        end
    end
    Draw.Button.Medium(31321, MachineSelect.GetPosX(55), MachineSelect.GetPosY(315), 80, 24, state)

    SetFontType(1)
    SetTextColor(237, 214, 161, 255)
	RenderText3(MachineSelect.GetPosX(95), MachineSelect.GetPosY(323), MachineSelect.GetText(10), 80, 8)

    DisableAlphaBlend()
end

function MachineSelect.UpdateMouse()
    if not MachineSelect.CheckOpen() then return end

    if MousePosX() < MachineSelect.GetPosX(190) or MousePosY() > 390 then
        DisableClickClient()
    end

    if MachineSelect.MouseInArea(MachineSelect.GetPosX(23), MachineSelect.GetPosY(393), 25, 24) and CheckReleasedKey(Keys.LButton) == 1 then
        MachineSelect.Close()
        return
    end

    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(105), 80, 24) and CheckReleasedKey(Keys.LButton) == 1 then
        MachineSelect.SendKey(1)
        return
    end

    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(210), 80, 24)  and CheckReleasedKey(Keys.LButton) == 1 then
        MachineSelect.SendKey(2)
        return
    end

    if MachineSelect.MouseInArea(MachineSelect.GetPosX(55), MachineSelect.GetPosY(315), 80, 24)  and CheckReleasedKey(Keys.LButton) == 1 then
        MachineSelect.SendKey(3)
        return
    end

end

function MachineSelect.UpdateKey()
    if not MachineSelect.CheckOpen() then return end

    DisableClickClient()

    if CheckPressedKey(Keys.Escape) == 1 then
        MachineSelect.Close()
        return
    end
end 

function MachineSelect.Protocol(Packet, PacketName)
    if Packet ~= MachineSelect_Config.Packet then return end

    if PacketName == "MachineOpen" then
        ClearPacket(PacketName)
        MachineSelect.Open()
        return true
    end

    if PacketName == "MachineClose" then
        ClearPacket(PacketName)
        MachineSelect.Close()
        return true
    end
end

function MachineSelect.SendKey(key)
    CreatePacket("MachineKey", MachineSelect_Config.Packet)
    SetBytePacket("MachineKey", key)
    SendPacket("MachineKey")
    ClearPacket("MachineKey")
end

MachineSelect.Init()

return MachineSelect