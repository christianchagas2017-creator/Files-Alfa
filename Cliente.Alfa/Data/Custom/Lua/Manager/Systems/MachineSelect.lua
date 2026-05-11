MachineSelect = {}

MachineSelect.Open = false

function MachineSelect.Init()
    if MachineSelect_Config == nil then return end
    if MachineSelect_Config.Enabled ~= true then return end

    if InterfaceController.ClientProtocol then
        InterfaceController.ClientProtocol(MachineSelect.Protocol)
    end

    if InterfaceController.AfterMainProc then
        InterfaceController.AfterMainProc(MachineSelect.Render)
    end

    if InterfaceController.UpdateMouse then
        InterfaceController.UpdateMouse(MachineSelect.UpdateMouse)
    end

    if InterfaceController.UpdateKey then
        InterfaceController.UpdateKey(MachineSelect.UpdateKey)
    end

    if InterfaceController.ScrollMouse then
        InterfaceController.ScrollMouse(MachineSelect.ScrollMouse)
    end
end

function MachineSelect.Protocol(Packet, PacketName)
    if Packet ~= MachineSelect_Config.Packet then
        return false
    end

    if PacketName == "MachineOpen" then
        ClearPacket(PacketName)

        MachineSelect.Open = true

        if UICustomInterface ~= nil then
            UICustomInterface = MachineSelect_Config.WindowID
        end

        if ChaosMachineOpenning ~= nil then
            ChaosMachineOpenning()
        end

        return true
    end

    if PacketName == "MachineClose" then
        ClearPacket(PacketName)

        MachineSelect.Open = false

        if UICustomInterface ~= nil and UICustomInterface == MachineSelect_Config.WindowID then
            UICustomInterface = 0
        end

        if ChaosMachineClosing ~= nil then
            ChaosMachineClosing()
        end

        return true
    end

    return false
end

function MachineSelect.Render()
    if MachineSelect.Open ~= true then
        return
    end

    if ChaosMachineUpdate ~= nil then
        ChaosMachineUpdate()
    end

    if ChaosMachineRender ~= nil then
        ChaosMachineRender()
    end
end

function MachineSelect.UpdateMouse()
    if MachineSelect.Open ~= true then
        return false
    end

    if ChaosMachineUpdateMouse ~= nil then
        ChaosMachineUpdateMouse()
    end

    -- Bloqueia clique no jogo enquanto a janela Genesis está aberta
    if DisableClickClient ~= nil then
        DisableClickClient()
    end

    return true
end

function MachineSelect.UpdateKey()
    if MachineSelect.Open ~= true then
        return false
    end

    -- ESC fecha visualmente a janela
    if CheckPressedKey ~= nil and Keys ~= nil then
        if CheckPressedKey(Keys.Escape) == 1 then
            MachineSelect.Open = false

            if UICustomInterface ~= nil and UICustomInterface == MachineSelect_Config.WindowID then
                UICustomInterface = 0
            end

            if ChaosMachineClosing ~= nil then
                ChaosMachineClosing()
            end

            return true
        end
    end

    return false
end

function MachineSelect.ScrollMouse(value)
    if MachineSelect.Open ~= true then
        return false
    end

    if ChaosMachineScrolling ~= nil then
        ChaosMachineScrolling(value)
    end

    return true
end

function MachineSelect.SendKey(key)
    if MachineSelect_Config == nil then return end

    CreatePacket("MachineKey", MachineSelect_Config.Packet)
    SetBytePacket("MachineKey", key)
    SendPacket("MachineKey")
    ClearPacket("MachineKey")
end

MachineSelect.Init()

return MachineSelect