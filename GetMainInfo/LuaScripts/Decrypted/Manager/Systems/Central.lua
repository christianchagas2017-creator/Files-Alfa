Central = {}

function Central.Init()
    InterfaceController.BeforeMainProc(Central.Interface)
    InterfaceController.MainProc(Central.AfterInterface)
    InterfaceController.ClientProtocol(Central.Protocol)
    InterfaceController.InterfaceClickEvent(Central.ClickEvent)
    InterfaceController.MainProcWorldKey(Central.KeyListener)
    InterfaceController.UpdateKey(Central.UpdateKey)
    InterfaceController.UpdateMouse(Central.Update)
    InterfaceController.UpdateProc(Central.Update)
    Central.Define()
end

function Central.Define()
    Central_Config.WindowPos = {
        X = 120,
        Y = 80
    }
    Central_Config.Button = {}
    Central_Config.ButtonID = {
        abrir = 1,
        fechar = 2,
        ativar = 3,
        textApelido = 4,
        textSenha = 5,
        textConfirmarSenha = 6,
        cadastrar = 7,
        alterarSenha = 8,
        remover = 9,
        deletar = {
            [1] = 10,
            [2] = 11,
            [3] = 12,
            [4] = 13,
            [5] = 14,
        },
        textSenhaAntiga = 15,
        ok = 16,
        gerenciar = 17,
        voltar = 18,

    }
    Central_Config.Alfabeto = {        
		Codigo = {[48] = "0",[49] = "1",[50] = "2",[51] = "3",[52] = "4",[53] = "5",[54] = "6",[55] = "7",[56] = "8",[57] = "9",[96] = "0",[97] = "1",[98] = "2",[99] = "3",[100] = "4",[101] = "5",[102] = "6",[103] = "7",[104] = "8",[105] = "9"},
        Apelido = {[48] = "0",[49] = "1",[50] = "2",[51] = "3",[52] = "4",[53] = "5",[54] = "6",[55] = "7",[56] = "8",[57] = "9",[65] = "a",[66] = "b",[67] = "c",[68] = "d",[69] = "e",[70] = "f",[71] = "g",[72] = "h",[73] = "i",[74] = "j",[75] = "k",[76] = "l",[77] = "m",[78] = "n",[79] = "o",[80] = "p",[81] = "q",[82] = "r",[83] = "s",[84] = "t",[85] = "u",[86] = "v",[87] = "w",[88] = "x",[89] = "y",[90] = "z",[96] = "0",[97] = "1",[98] = "2",[99] = "3",[100] = "4",[101] = "5",[102] = "6",[103] = "7",[104] = "8",[105] = "9",[109] = "-",[189] = "-"}
	}
    Central_Config.TextArea = {
        Apelido = {onFocus = false, timer = 0, Text = "", cursor = "|", Source = 0},
        Senha = {onFocus = false, timer = 0, Text = "", cursor = "|", Source = 0},
        ConfirmarSenha = {onFocus = false, timer = 0, Text = "", cursor = "|", Source = 0},
        SenhaAntiga = {onFocus = false, timer = 0, Text = "", cursor = "|", Source = 0},
    }

    Central_Config.Status = 0
    Central_Config.DeviceList = {}
    Central_Config.Page = 0
    Central_Config.WaitingRegisterResponse = false
    Central_Config.TargetDevice = {}
    Central_Config.AlertWindow = {
        Open = false,
        Id = 0
    }
end

function Central.CreateButton(ButtonID, x, y, w, h)
	if Central_Config.Button[ButtonID] == nil then
		table.insert(Central_Config.Button, ButtonID)
		Central_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		Central_Config.Button[ButtonID].x = x
		Central_Config.Button[ButtonID].y = y
		Central_Config.Button[ButtonID].w = w
		Central_Config.Button[ButtonID].h = h
	end
end

function Central.ButtonClicked(ButtonID)
	if Central_Config.Button[ButtonID] == nil then return false end
	if Central_Config.Button[ButtonID].clicked then
		if Central_Config.Button[ButtonID].timer >= 2 then
			Central_Config.Button[ButtonID].timer = 0
			Central_Config.Button[ButtonID].clicked = false
			return false
		end
		Central_Config.Button[ButtonID].timer = Central_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function Central.ButtonMouseOver(ButtonID, x, y)
	if Central_Config.Button[ButtonID] == nil then return false end
	if x >= Central_Config.Button[ButtonID].x and x <= (Central_Config.Button[ButtonID].x+Central_Config.Button[ButtonID].w) then
		if y >= Central_Config.Button[ButtonID].y and y <= (Central_Config.Button[ButtonID].y+Central_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end

function Central.RequestOpen()
    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("1-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Central.CheckWindowsOpen()
    if	CheckWindowOpen(UIFriendList)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIMoveList)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIParty)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIQuest)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIGuild)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIGuildNpc)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UITrade)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIWarehouse)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIChaosBox)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UICommandWindow)	== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIPetInfo)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIShop)				== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIStore)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIOtherStore)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UICharacter)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIOptions)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIHelp)				== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIFastDial)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UISkillTree)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UINPC_Titus)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UICashShop)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIFullMap)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UINPC_Dialog)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIGensInfo)			== 1 then Central.Close() return true end
    if	CheckWindowOpen(UINPC_Julia)		== 1 then Central.Close() return true end
    if	CheckWindowOpen(UIInventory)	    == 1 then Central.Close() return true end
 
    return false
end

function CloseAllWindows()
    if CheckWindowOpen(UIFriendList)        == 1 then CloseWindow(UIFriendList) end
    if CheckWindowOpen(UIMoveList)          == 1 then CloseWindow(UIMoveList) end
    if CheckWindowOpen(UIParty)             == 1 then CloseWindow(UIParty) end
    if CheckWindowOpen(UIQuest)             == 1 then CloseWindow(UIQuest) end
    if CheckWindowOpen(UIGuild)             == 1 then CloseWindow(UIGuild) end
    if CheckWindowOpen(UIGuildNpc)          == 1 then CloseWindow(UIGuildNpc) end
    if CheckWindowOpen(UITrade)             == 1 then CloseWindow(UITrade) end
    if CheckWindowOpen(UIWarehouse)         == 1 then CloseWindow(UIWarehouse) end
    if CheckWindowOpen(UIChaosBox)          == 1 then CloseWindow(UIChaosBox) end
    if CheckWindowOpen(UICommandWindow)     == 1 then CloseWindow(UICommandWindow) end
    if CheckWindowOpen(UIPetInfo)           == 1 then CloseWindow(UIPetInfo) end
    if CheckWindowOpen(UIShop)              == 1 then CloseWindow(UIShop) end
    if CheckWindowOpen(UIStore)             == 1 then CloseWindow(UIStore) end
    if CheckWindowOpen(UIOtherStore)        == 1 then CloseWindow(UIOtherStore) end
    if CheckWindowOpen(UICharacter)         == 1 then CloseWindow(UICharacter) end
    if CheckWindowOpen(UIOptions)           == 1 then CloseWindow(UIOptions) end
    if CheckWindowOpen(UIHelp)              == 1 then CloseWindow(UIHelp) end
    if CheckWindowOpen(UIFastDial)          == 1 then CloseWindow(UIFastDial) end
    if CheckWindowOpen(UISkillTree)         == 1 then CloseWindow(UISkillTree) end
    if CheckWindowOpen(UINPC_Titus)         == 1 then CloseWindow(UINPC_Titus) end
    if CheckWindowOpen(UICashShop)          == 1 then CloseWindow(UICashShop) end
    if CheckWindowOpen(UIFullMap)           == 1 then CloseWindow(UIFullMap) end
    if CheckWindowOpen(UINPC_Dialog)        == 1 then CloseWindow(UINPC_Dialog) end
    if CheckWindowOpen(UIGensInfo)          == 1 then CloseWindow(UIGensInfo) end
    if CheckWindowOpen(UINPC_Julia)         == 1 then CloseWindow(UINPC_Julia) end
    if CheckWindowOpen(UIInventory)         == 1 then CloseWindow(UIInventory) end
 
end

function Central.CheckWindowsOpenAndClose()
    if Central.CheckWindowsOpen() then
        CloseAllWindows()
        return true
    end
    return false
end

function Central.Open()
    if Central_Config.Status == 0 then
        Central_Config.Page = 0
    else
        Central_Config.Page = 4
    end
    UICustomInterface = Central_Config.WindowID
end

function Central.OpenAlert()
    Central_Config.Page = 3
    UICustomInterface = Central_Config.WindowID
end

function Central.Close()
    UICustomInterface = 0
end

function Central.CheckOpen()
    if UICustomInterface == Central_Config.WindowID then Central.CheckWindowsOpenAndClose() return true else return false end
end

function Central.ChangeFocus(id)
    if id == 1 then
        Central_Config.TextArea.Apelido.onFocus = true
        Central_Config.TextArea.Senha.onFocus = false
        Central_Config.TextArea.ConfirmarSenha.onFocus = false
        Central_Config.TextArea.SenhaAntiga.onFocus = false
        --DisableClickClient()
        return
    end

    if id == 2 then
        Central_Config.TextArea.Apelido.onFocus = false
        Central_Config.TextArea.Senha.onFocus = true
        Central_Config.TextArea.ConfirmarSenha.onFocus = false
        Central_Config.TextArea.SenhaAntiga.onFocus = false
        --DisableClickClient()
        return
    end

    if id == 3 then
        Central_Config.TextArea.Apelido.onFocus = false
        Central_Config.TextArea.Senha.onFocus = false
        Central_Config.TextArea.ConfirmarSenha.onFocus = true
        Central_Config.TextArea.SenhaAntiga.onFocus = false
        --DisableClickClient()
        return
    end

    if id == 4 then
        Central_Config.TextArea.Apelido.onFocus = false
        Central_Config.TextArea.Senha.onFocus = false
        Central_Config.TextArea.ConfirmarSenha.onFocus = false
        Central_Config.TextArea.SenhaAntiga.onFocus = true
        --DisableClickClient()
        return
    end

    Central_Config.TextArea.Apelido.onFocus = false
    Central_Config.TextArea.Senha.onFocus = false
    Central_Config.TextArea.ConfirmarSenha.onFocus = false
    Central_Config.TextArea.SenhaAntiga.onFocus = false
end

local Central_Item = { Enable = false, Index = GET_ITEM(12, 15), Position = {X = 2, Y = -3, W = 13, H = 13}}

function Central.AfterInterface()
    local addX = WindowGetWidthAdd()
	local posX = WindowGetWidth()-190

    EnableAlphaTest()
    local stateCentral = 0
    if Central.CheckOpen() then
        stateCentral = 2
    else
        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, MousePosX(), MousePosY()) then
            DrawTooltip(WindowGetWidth()/2+297, WindowGetHeight()-50, Central_Config.Texts[GetLanguage()][1])
            if CheckRepeatKey(Keys.LButton) == 1 then
                stateCentral = 2
            else
                stateCentral = 1
            end
        else
            stateCentral = 0
        end
    end
    DrawButton.Locked(stateCentral, WindowGetWidth()/2+298, WindowGetHeight()-35, 25, 24)
    DisableAlphaBlend()
end

function Central.Interface()
    local addX = WindowGetWidthAdd()
	local posX = WindowGetWidth()-190

    Central.CreateButton(Central_Config.ButtonID.abrir, WindowGetWidth()/2+297, WindowGetHeight()-50, 25, 24)
    Central.CreateButton(Central_Config.ButtonID.fechar, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.ativar, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.textApelido, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.textSenha, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.textConfirmarSenha, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.cadastrar, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.alterarSenha, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.remover, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.deletar[1], 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.deletar[2], 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.deletar[3], 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.deletar[4], 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.deletar[5], 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.textSenhaAntiga, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.ok, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.gerenciar, 0, 0, 0, 0)
    Central.CreateButton(Central_Config.ButtonID.voltar, 0, 0, 0, 0)

    --#region BUTTON INTERFACE CENTRAL
        --if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, MousePosX(), MousePosY()) then
        --    DrawTooltip(563+addX, 418, Central_Config.Texts[GetLanguage()][1].." (S)")
        --end

        if not Central.CheckOpen() then return end

        EnableAlphaTest()
        --RenderImage(41021, 581+addX, 433, 52, 18)
    --#endregion

    --#region RENDER TEXT + CORES
        local COLOR_GREEN  = {20,  194, 8,   255}
        local COLOR_RED_E  = {200, 0,   0,   255}
        local COLOR_RED_C  = {250, 60,  60,  255}
        local COLOR_YELLOW = {255, 204, 0,   255}
        local COLOR_ORANGE = {255, 115, 0,   255}
        local COLOR_BLUE   = {85,  97,  230, 255}
        local COLOR_WHITE  = {255, 255, 255, 255}

        local function RenderColoredText(x, y, text, color, width, height)
            SetTextColor(color[1], color[2], color[3], color[4])
            RenderText3(x, y, text, width, height)
        end
    --#endregion
    
    --INTERFACE INICIAL
    if Central_Config.Page == 0 then
        --#region INTERFACE 
            --#region INTERFACE LATERAL
                --INTERFACE LATERAL IMAGEM
                --RenderImage(41000, posX, 0, 190, 429)
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.8701625, 0.93695, 1, 1, 0.0)
                
                --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
        
            --#endregion

            --#region ITEM DESIGNER
                if Central_Item.Enable then
                    CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                end
            --#endregion
        --#endregion

        --#region TEXTOS
            SetFontType(1)
            SetTextBg(0, 0, 0, 0)
            line = 55
            RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][196], COLOR_YELLOW, 150, 8)

        --#endregion

        --#region OQUE A CENTRAL FAZ?
            --#region BARRA -  PRETA OQUE FAZ A CENTRAL
                line = line + 11
                ----RenderImage2(31424, posX+8+24, line, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)

                RenderImage2(40039,WindowGetWidth()-187+7.5, 157, 180, 10, 0.0, 0.0, 0.79, 0.72, 1, 1, 1.0)
                RenderImage2(40039,WindowGetWidth()-187+7.5, 267, 180, 10, 0.0, 0.0, 0.79, 0.72, 1, 1, 1.0)
                
                SetFontType(7)
                SetTextBg(0,0,0,0)
                SetTextColor(85, 97, 230, 255)
                line = line + 4
                RenderColoredText(posX+8+95, line+6, Central_Config.Texts[GetLanguage()][3], COLOR_ORANGE, 150, 8)

            --#endregion

            --#region TEXTOS
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)

                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][177], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][178], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][179], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][180], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][181], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][182], 200, 8)
            --#endregion         
        --#endregion

        --#region COMO ELA FUNCIONA
            --#region BARRA -  PRETA OQUE FAZ A CENTRAL
                line = line + 25
                ----RenderImage2(31424, posX+8+24, line, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                 
                SetFontType(7)
                SetTextBg(0,0,0,0)
                SetTextColor(85, 97, 230, 255)
                line = line + 4
                RenderColoredText(posX+8+95, line+6, Central_Config.Texts[GetLanguage()][17], COLOR_ORANGE, 150, 8)
            --#endregion

            --#region TEXTOS
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)

                line = line + 20
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][189], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][190], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][191], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][192], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][193], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][194], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][195], COLOR_WHITE, 200, 8)
            --#endregion         
        --#endregion

        --#region COMO ATIVAR
            --#region BARRA -  PRETA OQUE FAZ A CENTRAL
                line = line + 30
                ----RenderImage2(31424, posX+8+24, line, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                 
                SetFontType(7)
                SetTextBg(0,0,0,0)
                SetTextColor(85, 97, 230, 255)
                line = line + 4
                RenderColoredText(posX+8+95, line+2, Central_Config.Texts[GetLanguage()][188], COLOR_ORANGE, 150, 8)
            --#endregion

            --#region TEXTOS
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)

                line = line + 17
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][183], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][184], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][185], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][186], COLOR_WHITE, 200, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][187], COLOR_WHITE, 200, 8)
            --#endregion         
        --#endregion      

        --#region BUTTON ATIVAR
            local state = 0
            local buttonAtivarX = posX+8+60
            local buttonAtivarY = 360
            Central.CreateButton(Central_Config.ButtonID.ativar, buttonAtivarX, buttonAtivarY, 70, 26)
            --RenderImage2(31326, buttonAtivarX, buttonAtivarY, 70, 30, 0.0, 0.0, 0.8321874124, 0.2245212, 1, 1, 1.0)
 
            if Central.ButtonMouseOver(Central_Config.ButtonID.ativar, MousePosX(), MousePosY()) then
                if not Central.ButtonClicked(Central_Config.ButtonID.ativar) then
                    --RenderImage2(31326, buttonAtivarX, buttonAtivarY, 70, 30, 0.0, 0.2264566, 0.8321874124, 0.2245212, 1, 1, 1.0)
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        state = 2
                    else
                        state = 1
                    end
                else
                    state = 0
                end
            end

            DrawButton.Red(state, buttonAtivarX, buttonAtivarY, 70, 26)
        
            SetFontType(1)
            SetTextColor(255,255,255,255)
            
            if state == 2 then
                RenderText3(buttonAtivarX+36, buttonAtivarY+10, Central_Config.Texts[GetLanguage()][21], 100, 8)
            else
                RenderText3(buttonAtivarX+36, buttonAtivarY+9, Central_Config.Texts[GetLanguage()][21], 100, 8)
            end
        --#endregion  
    
        --#region BUTTON FECHAR
            local statefechar = 0
            if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
            then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    --RenderImage2(31075, posX+8+23.5, 393, 24.5, 24.5, 0.0, 0.0, 0.74512441456, 0.74512441456, 1, 1, 1.0)
                    DisableClickClient()
                    statefechar = 2
                else
                    --RenderImage2(31074, posX+8+23.5, 393, 24.5, 24.5, 0.0, 0.0, 0.74512441456, 0.74512441456, 1, 1, 1.0)
                    statefechar = 1
                end
            else
                --RenderImage2(31074, posX+8+23.5, 393, 24.5, 24.5, 0.0, 0.0, 0.74512441456, 0.74512441456, 1, 1, 1.0)
                statefechar = 0
            end

            --RenderImage2(31074, posX+8+23.5, 393, 24.5, 24.5, 0.0, 0.0, 0.74512441456, 0.74512441456, 1, 1, 1.0)
            Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
            DrawButton.Close(statefechar, posX+8+23.5, 393, 25, 24)

            if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
            end
        --#endregion

    end

    --INTERFACE ATIVAR CENTRAL
    if Central_Config.Page == 1 then
        --#region INTERFACE 
            --#region INTERFACE LATERAL
                --INTERFACE LATERAL IMAGEM
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
        
            --#endregion
        
            --#region ITEM DESIGNER
                if Central_Item.Enable then
                    CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                end
            --#endregion

        --#endregion
        
        --#region TEXTOS
            SetFontType(1)
            SetTextBg(0, 0, 0, 0)
            line = 55
            if Central_Config.TextArea.Apelido.Text ~= "" then
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][22], COLOR_YELLOW, 150, 8)
            else
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][196], COLOR_YELLOW, 150, 8)
            end
        --#endregion
       
        --#region BARRA -  PRETA OQUE FAZ A CENTRAL
            line = line + 11
            --RenderImage2(31424, posX+8+24, line, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
            
            SetFontType(7)
            SetTextBg(0,0,0,0)
            line = line + 4
            if Central_Config.TextArea.Apelido.Text ~= "" then
                RenderColoredText(posX+8+95, line, Central_Config.TextArea.Apelido.Text, COLOR_GREEN, 150, 8)
            else
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][22], COLOR_BLUE, 150, 8)
            end
        --#endregion

        --#region TEXTOS
            SetFontType(0)
            SetTextBg(0,0,0,0)
            line = line + 20
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][142], COLOR_WHITE, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][143], COLOR_WHITE, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][144], COLOR_WHITE, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][145], COLOR_WHITE, 200, 8)
     
            line = line + 20
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][120], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][121], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][122], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][123], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][124], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][125], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][126], COLOR_YELLOW, 200, 8)
            line = line + 10
            RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][127], COLOR_YELLOW, 200, 8)
        --#endregion
        
        --#region TEXTBOX APELIDO DISPOSITIVO
            local textBoxApelidoCentralX = posX+8+60
            local textBoxApelidoCentralY = line+30
    
            SetFontType(1)
            SetTextBg(0, 0, 0, 0)
            SetTextColor(255, 255, 255, 255)
            RenderText3(posX+8+95, textBoxApelidoCentralY-10, Central_Config.Texts[GetLanguage()][46],  200, 8)
            SetFontType(0)
            SetTextBg(0, 0, 0, 0)
            RenderText3(posX+8+95, textBoxApelidoCentralY, Central_Config.Texts[GetLanguage()][26],  200, 8)
            RenderText3(posX+8+95, textBoxApelidoCentralY+10, Central_Config.Texts[GetLanguage()][27],  200, 8)
            
            textBoxApelidoCentralY = textBoxApelidoCentralY + 20
            Central.CreateButton(Central_Config.ButtonID.textApelido, textBoxApelidoCentralX-20, textBoxApelidoCentralY, 113, 26)
            --RenderImage(0X7AA1, textBoxApelidoCentralX-77, textBoxApelidoCentralY, 190, 26)
            DrawInterface.TextBox2(0, textBoxApelidoCentralX-25, textBoxApelidoCentralY, 120, 20)
            
            RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, "                                ", 200, 1)
            SetFontType(0)
            SetTextBg(0,0,0, 0)
            SetTextColor(255, 255, 255, 255)
            if Central_Config.TextArea.Apelido.onFocus then
                if Central_Config.TextArea.Apelido.timer >= 8 then
                    if Central_Config.TextArea.Apelido.timer >= 16 then				
                        Central_Config.TextArea.Apelido.timer = 0
                    end
                    RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text, 200, 8)
                else
                    RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text..Central_Config.TextArea.Apelido.cursor, 200, 8)
                end
                Central_Config.TextArea.Apelido.timer = Central_Config.TextArea.Apelido.timer + 1
            else
                Central_Config.TextArea.Apelido.timer = 0
                RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text, 200, 8)
            end
        --#endregion
    
        --#region TEXTBOX SENHA DISPOSITIVO
           local textBoxSenhaCentralX = posX+8+60
           local textBoxSenhaCentralY = textBoxApelidoCentralY + 36

           SetFontType(1)
           SetTextBg(0, 0, 0, 0)
           SetTextColor(255, 255, 255, 255)
           RenderText3(posX+8+95, textBoxSenhaCentralY-10, Central_Config.Texts[GetLanguage()][47],  200, 8)
           SetFontType(0)
           SetTextBg(0, 0, 0, 0)
           RenderText3(posX+8+95, textBoxSenhaCentralY, Central_Config.Texts[GetLanguage()][28],  200, 8)
           RenderText3(posX+8+95, textBoxSenhaCentralY+10, Central_Config.Texts[GetLanguage()][29],  200, 8)

           textBoxSenhaCentralY = textBoxSenhaCentralY + 20
           Central.CreateButton(Central_Config.ButtonID.textSenha, textBoxSenhaCentralX-20, textBoxSenhaCentralY, 113, 26)
           --RenderImage(0X7AA1, textBoxSenhaCentralX-77, textBoxSenhaCentralY, 190, 26)
           DrawInterface.TextBox2(0, textBoxSenhaCentralX-25, textBoxSenhaCentralY, 120, 20)
   
           RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, "                                ", 200, 1)
           SetFontType(0)
           SetTextBg(0,0,0, 0)
           SetTextColor(255, 255, 255, 255)
           if Central_Config.TextArea.Senha.onFocus then
               if Central_Config.TextArea.Senha.timer >= 8 then
                   if Central_Config.TextArea.Senha.timer >= 16 then				
                       Central_Config.TextArea.Senha.timer = 0
                   end
                   RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
               else
                   RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text..Central_Config.TextArea.Senha.cursor, 200, 8)
               end
               Central_Config.TextArea.Senha.timer = Central_Config.TextArea.Senha.timer + 1
           else
               Central_Config.TextArea.Senha.timer = 0
               RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
           end
        --#endregion

        --#region TEXTBOX CONFIRMAR SENHA DISPOSITIVO
           local textBoxConfirmarSenhaCentralX = posX+8+60
           local textBoxConfirmarSenhaCentralY = textBoxSenhaCentralY + 36

           SetFontType(1)
           SetTextBg(0, 0, 0, 0)
           SetTextColor(255, 255, 255, 255)
           RenderText3(posX+8+95, textBoxConfirmarSenhaCentralY-10, Central_Config.Texts[GetLanguage()][197],  200, 8)
        
           Central.CreateButton(Central_Config.ButtonID.textConfirmarSenha, textBoxConfirmarSenhaCentralX-20, textBoxConfirmarSenhaCentralY, 113, 26)
           --RenderImage(0X7AA1, textBoxConfirmarSenhaCentralX-77, textBoxConfirmarSenhaCentralY, 190, 26)
           DrawInterface.TextBox2(0, textBoxConfirmarSenhaCentralX-25, textBoxConfirmarSenhaCentralY, 120, 20)

           RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, "                                ", 200, 1)
           SetFontType(0)
           SetTextBg(0,0,0, 0)
           SetTextColor(255, 255, 255, 255)
           if Central_Config.TextArea.ConfirmarSenha.onFocus then
               if Central_Config.TextArea.ConfirmarSenha.timer >= 8 then
                   if Central_Config.TextArea.ConfirmarSenha.timer >= 16 then				
                       Central_Config.TextArea.ConfirmarSenha.timer = 0
                   end
                   RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text, 200, 8)
               else
                   RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text..Central_Config.TextArea.ConfirmarSenha.cursor, 200, 8)
               end
               Central_Config.TextArea.ConfirmarSenha.timer = Central_Config.TextArea.ConfirmarSenha.timer + 1
           else
               Central_Config.TextArea.ConfirmarSenha.timer = 0
               RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text, 200, 8)
           end
        --#endregion
    
        --#region BUTTON CADASTRAR
           local buttonRegistrarX = posX+8+23
           local buttonRegistrarY = 382
           local stateregister = 0
           Central.CreateButton(Central_Config.ButtonID.cadastrar, buttonRegistrarX, buttonRegistrarY, 70, 26)
           
           if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, MousePosX(), MousePosY()) then
                   if not Central.ButtonClicked(Central_Config.ButtonID.cadastrar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stateregister = 2
                        else
                            stateregister = 1
                        end
                    else
                        stateregister = 0
                    end
                end
           else
                stateregister = 3
           end

           DrawButton.Large(stateregister, buttonRegistrarX, buttonRegistrarY, 70, 26)

           SetFontType(1)
           SetTextBg(0,0,0, 0)
           SetTextColor(255, 255, 255, 255)
           
           if stateregister == 2 then
                RenderText3(buttonRegistrarX+36, buttonRegistrarY+10, Central_Config.Texts[GetLanguage()][62], 100, 8)
           else
                RenderText3(buttonRegistrarX+36, buttonRegistrarY+9, Central_Config.Texts[GetLanguage()][62], 100, 8)
           end
        --#endregion

        --#region BUTTON VOLTAR
           local buttonVoltarX = posX+8+97
           local buttonVoltarY = 383
           local statevoltar = 0
           Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)
 
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        statevoltar = 2
                    else
                        statevoltar = 1
                    end
                else
                    statevoltar = 0
                end
            end

           DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
           
           SetFontType(1)
           SetTextColor(255,255,255,255)

            if statevoltar == 2 then
                RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
            else
                RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
            end
        --#endregion  
    end

    --COMPUTADORES REGISTRADOS
    if Central_Config.Page == 2 then
        --#region INTERFACE 
            --#region INTERFACE LATERAL
                --INTERFACE LATERAL IMAGEM
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
        
            --#endregion

            --#region ITEM DESIGNER
                if Central_Item.Enable then
                    CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                end
            --#endregion

            --#endregion

        --#region STATUS
            --#region ESTATUS ATUAL: ACESSO COMPLETO
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)

                if Central_Config.Status == 2 then
                    --ACESSO PERMITIDO

                    --#region ACESSO COMPLETO VERDE BASE FUNDO PRETO
                       --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                       SetFontType(7)
                       SetTextBg(0, 0, 0, 0)
                       SetTextColor(85, 97, 230, 255)
                       RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][36], COLOR_GREEN, 170, 8)
                    --#endregion
 
                    --#region TEXTOS
                        --SetFontType(2)
                        --RenderColoredText(posX+8+95, 60, Central_Config.Texts[GetLanguage()][36], COLOR_GREEN, 150, 8)
                        for i in ipairs(Central_Config.DeviceList) do
                            if Central_Config.DeviceList[i].Current == 1 then
                                SetFontType(1)
                                RenderColoredText(posX+8+95, 100, Central_Config.DeviceList[i].APELIDO, COLOR_GREEN, 150, 8)
                            end
                        end
                    --#endregion
                else
                    --ACESSO LIMITADO

                    --#region ACESSO LIMITADO VERMELHO BASE FUNDO PRETO
                        --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                        SetFontType(7)
                        SetTextBg(0, 0, 0, 0)
                        SetTextColor(85, 97, 230, 255)
                        RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][35], COLOR_RED_E, 170, 8)
                    --#endregion

                    --SetFontType(2)
                    --RenderColoredText(posX+8+95, 60, Central_Config.Texts[GetLanguage()][35], COLOR_RED_E, 150, 8)

                    SetFontType(1)
                    RenderColoredText(posX+8+95, 100, Central_Config.Texts[GetLanguage()][96], COLOR_RED_E, 150, 8)

                    RenderImage2(40047, posX+8+40, 145, 112, 105, 0.002, 0.002, 0.51, 0.51, 1, 1, 1.0)
                end
            --#endregion

            --#region TEXTOS
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, 90, Central_Config.Texts[GetLanguage()][97], 150, 8)

                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, 120, Central_Config.Texts[GetLanguage()][98], 150, 8)
                RenderText3(posX+8+95, 130, Central_Config.Texts[GetLanguage()][99], 150, 8)

                RenderText3(posX+8+95, 270, Central_Config.Texts[GetLanguage()][100], 150, 8)
                RenderText3(posX+8+95, 280, Central_Config.Texts[GetLanguage()][101], 150, 8)
                RenderText3(posX+8+95, 290, Central_Config.Texts[GetLanguage()][102], 150, 8)

                RenderText3(posX+8+95, 310, Central_Config.Texts[GetLanguage()][103], 150, 8)
                RenderText3(posX+8+95, 320, Central_Config.Texts[GetLanguage()][104], 150, 8)
            --#endregion

        --#endregion

        --#region LISTA DE COMPUTADORES REGISTRADOS
        SetFontType(1)
        SetTextBg(0,0,0, 0)
        SetTextColor(255, 255, 255, 255)
        
        --RenderText3(Central_Config.WindowPos.X+addX+80, Central_Config.WindowPos.Y+128, Central_Config.Texts[GetLanguage()][37], 100, 8)
        --RenderText3(Central_Config.WindowPos.X+addX+210, Central_Config.WindowPos.Y+128, Central_Config.Texts[GetLanguage()][38], 100, 8)
        
        local line = 170
        local buttonX = 12
        for i in ipairs(Central_Config.DeviceList) do
            if Central_Config.DeviceList[i].Current == 1 then
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(COLOR_YELLOW[1], COLOR_YELLOW[2], COLOR_YELLOW[3], COLOR_YELLOW[4])
            else
                SetFontType(0)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(250,252,252,255)
            end
            local apelido = Central_Config.DeviceList[i].APELIDO
            local apelidoLength = string.len(apelido)
    
            RenderText3(posX+8+30, line, apelido, 120, 1)

            local statePc = 0
            Central.CreateButton(Central_Config.ButtonID.deletar[i], posX+8+144, line-2, buttonX, buttonX)

            if Central.ButtonMouseOver(Central_Config.ButtonID.deletar[i], MousePosX(), MousePosY()) then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    statePc = 2
                else
                    statePc = 1
                end
            else
                statePc = 0
            end

            DrawButton.Close(statePc, posX+8+143, line-2.5, buttonX, buttonX)

            --AJUSTA A POSI��O X DO TOOLTIP COM BASE NO COMPRIMENTO DO NOME DO PC
            local tooltipX = posX+8+30 + apelidoLength * 4

            if MousePosX() >= posX+8+30 and MousePosX() <= tooltipX and MousePosY() >= line and MousePosY() <= line+7 then
                DrawTooltip(posX+8+30, line-14, Central_Config.Texts[GetLanguage()][105] .. " IP: ".. Central_Config.DeviceList[i].IP)
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.deletar[i], MousePosX(), MousePosY()) then
                DrawTooltip(posX+8+135, line-14, Central_Config.Texts[GetLanguage()][39])
            end

            line = line + 15  
        end

        --#endregion

        --#region BUTTON ALTERAR SENHA
            --local buttonAlterarSenhaX = 510
            local buttonAlterarSenhaX = posX+8+23
            local buttonAlterarSenhaY = 357
            local statesenha = 0

            Central.CreateButton(Central_Config.ButtonID.alterarSenha, buttonAlterarSenhaX, buttonAlterarSenhaY, 70, 26)

            if Central.ButtonMouseOver(Central_Config.ButtonID.alterarSenha, MousePosX(), MousePosY()) then
                if not Central.ButtonClicked(Central_Config.ButtonID.alterarSenha) then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        statesenha = 2
                    else
                        statesenha = 1
                    end
                else
                    statesenha = 0
                end
            end

            DrawButton.Large(statesenha, buttonAlterarSenhaX, buttonAlterarSenhaY, 70, 26)

            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(255, 255, 255, 255)
        
            if statesenha == 2 then
                RenderText3(buttonAlterarSenhaX+36, buttonAlterarSenhaY+10, Central_Config.Texts[GetLanguage()][32], 100, 8)
            else
                RenderText3(buttonAlterarSenhaX+36, buttonAlterarSenhaY+9, Central_Config.Texts[GetLanguage()][32], 100, 8)
            end
        --#endregion

        --#region BUTTON VOLTAR
            local buttonVoltarX = posX+8+97
            local buttonVoltarY = 357
            local statevoltar = 0
            Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)

             if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                 if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                     if CheckRepeatKey(Keys.LButton) == 1 then
                         statevoltar = 2
                     else
                         statevoltar = 1
                     end
                 else
                     statevoltar = 0
                 end
             end

            DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
         
            SetFontType(1)
            SetTextColor(255,255,255,255)

             if statevoltar == 2 then
                 RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
             else
                 RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
             end
        --#endregion  

        --#region BUTTON FECHAR
            local statefechar = 0
            if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
            then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DisableClickClient()
                    statefechar = 2
                else
                    statefechar = 1
                end
            else
                statefechar = 0
            end

            Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
            DrawButton.Close(statefechar, posX+8+23.5, 393, 25, 24)

            if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
            end
        --#endregion

    end

    --MESSAGE BOX = (ACESSO LIMITADO)
    if Central_Config.Page == 3 then
        --#region IMAGEM PRETA NO MEIO

            DrawInterface.InfoBox(true, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-60, 225, 2, false)
           --#endregion

        --#region MODO DE  SEGURAN�A TEXT RENDER
            SetFontType(2)
            SetTextBg(0, 0, 0, 0)
            ---SetTextColor(250, 10, 10,255)
            --RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+40, Central_Config.Texts[GetLanguage()][86], 250, 8)

            local startTime = os.time()
            local duration = 5

            local currentTime = os.time()
            local elapsedTime = currentTime - startTime

            local alphaValue = 100 + (elapsedTime / duration) * 155 -- 255 - 100 = 155
            alphaValue = math.min(255, alphaValue) -- Limita o valor m�ximo a 255

            SetTextColor(250, 10, 10, alphaValue)

            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+40, Central_Config.Texts[GetLanguage()][147], 250, 8)
        --#endregion

        --#region TEXTOS
            SetFontType(0)
            SetTextBg(0, 0, 0, 0)
            SetTextColor(255, 255, 255, 255)
            local line = 70
            for l = 148, 153 do
                RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+line, Central_Config.Texts[GetLanguage()][l], 300, 8)
                line = line+10
            end
        --#endregion

        --#region BUTTON OK
            local buttonVoltarX = 165
            local buttonVoltarY = 140
            Central.CreateButton(Central_Config.ButtonID.ativar, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+buttonVoltarY, 70, 30)
            RenderImage2(31326, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+buttonVoltarY, 70, 30, 0.0, 0.0, 0.8321874124, 0.2245212, 1, 1, 1.0)
        
            if Central.ButtonMouseOver(Central_Config.ButtonID.ativar, MousePosX(), MousePosY()) then
                if not Central.ButtonClicked(Central_Config.ButtonID.ativar) then
                    RenderImage2(31326, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+buttonVoltarY, 70, 30, 0.0, 0.2264566, 0.8321874124, 0.2245212, 1, 1, 1.0)
                end
            end

            SetFontType(1)
            SetTextColor(255,255,255,255)
        
            RenderText3((WindowGetWidth()/2)-(225/2)+80+36, Central_Config.WindowPos.Y+buttonVoltarY+9, Central_Config.Texts[GetLanguage()][95], 100, 8)
        --#endregion
    end

    --GERENCIAR
    if Central_Config.Page == 4 then
        --#region INTERFACE 
            --#region INTERFACE LATERAL
                --INTERFACE LATERAL IMAGEM
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
        
            --#endregion

            --#region ITEM DESIGNER
                if Central_Item.Enable then
                    CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                end
            --#endregion
        --#endregion

        --#region TEXTOS
        SetFontType(1)
        SetTextBg(0, 0, 0, 0)
        RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)
    
        if Central_Config.Status == 2 then
            --#region ACESSO PERMITIDO

            --#region ACESSO COMPLETO VERDE BASE FUNDO PRETO
               --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
               SetFontType(7)
               SetTextBg(0, 0, 0, 0)
               SetTextColor(85, 97, 230, 255)
               RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][36], COLOR_GREEN, 170, 8)
            --#endregion
            
            --#region TEXTOS
                --SetFontType(2)
                --RenderColoredText(posX+8+95, 60, Central_Config.Texts[GetLanguage()][36], COLOR_GREEN, 150, 8)
                for i in ipairs(Central_Config.DeviceList) do
                    if Central_Config.DeviceList[i].Current == 1 then
                        SetFontType(1)
                        RenderText3(posX+8+95, 100, Central_Config.DeviceList[i].APELIDO, 150, 8)
                    end
                end

                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, 90, Central_Config.Texts[GetLanguage()][106], 150, 8)
                RenderText3(posX+8+95, 120, Central_Config.Texts[GetLanguage()][107], 150, 8)
                RenderText3(posX+8+95, 130, Central_Config.Texts[GetLanguage()][108], 150, 8)
            
                RenderText3(posX+8+95, 150, Central_Config.Texts[GetLanguage()][109], 150, 8)
                RenderText3(posX+8+95, 160, Central_Config.Texts[GetLanguage()][110], 150, 8)
            --#endregion

            --#region BUTTON GERENCIAR
                local buttongerenciarX = posX+8+60
                local buttongerenciarY = 190
                local stategerenciar = 0

                Central.CreateButton(Central_Config.ButtonID.gerenciar, buttongerenciarX, buttongerenciarY, 70, 26)
       
                if Central.ButtonMouseOver(Central_Config.ButtonID.gerenciar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.gerenciar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stategerenciar = 2
                        else
                            stategerenciar = 1
                        end
                    else
                        stategerenciar = 0
                    end
                end
        
                DrawButton.Large(stategerenciar, buttongerenciarX, buttongerenciarY, 70, 26)

                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
            
                if stategerenciar == 2 then
                    RenderText3(buttongerenciarX+36, buttongerenciarY+10, Central_Config.Texts[GetLanguage()][77], 100, 8)
                else
                    RenderText3(buttongerenciarX+36, buttongerenciarY+9, Central_Config.Texts[GetLanguage()][77], 100, 8)
                end
            --#endregion
        
            --#endregion
        else
            --#region ACESSO LIMITADO

            --#region ACESSO LIMITADO VERMELHO BASE FUNDO PRETO
               -- --RenderImage2(31424, posX+8+24, 66, 170, 18, 0.00265275, 0.0, 1.0, 0.685299, 1, 1, 1.0) --OLD
                --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                SetFontType(7)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(85, 97, 230, 255)
                RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][35], COLOR_RED_E, 170, 8)
            --#endregion
            
            --#region TEXTOS
                --SetFontType(2)
                --RenderColoredText(posX+8+95, 60, Central_Config.Texts[GetLanguage()][35], COLOR_RED_E, 150, 8)

                SetFontType(1)
                RenderColoredText(posX+8+95, 100, Central_Config.Texts[GetLanguage()][113], COLOR_RED_E, 150, 8)

                SetFontType(1)
                SetTextBg(0,0,0, 0)
                RenderText3(posX+8+95, 90, Central_Config.Texts[GetLanguage()][112], 150, 8)
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, 120, Central_Config.Texts[GetLanguage()][114], 150, 8)
                RenderText3(posX+8+95, 130, Central_Config.Texts[GetLanguage()][115], 150, 8)
                RenderText3(posX+8+95, 140, Central_Config.Texts[GetLanguage()][116], 150, 8)
            
                SetFontType(0)
                RenderColoredText(posX+8+95, 160, Central_Config.Texts[GetLanguage()][120], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 170, Central_Config.Texts[GetLanguage()][121], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 180, Central_Config.Texts[GetLanguage()][122], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 190, Central_Config.Texts[GetLanguage()][123], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 200, Central_Config.Texts[GetLanguage()][124], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 210, Central_Config.Texts[GetLanguage()][125], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 220, Central_Config.Texts[GetLanguage()][126], COLOR_YELLOW, 150, 8)
                RenderColoredText(posX+8+95, 230, Central_Config.Texts[GetLanguage()][127], COLOR_YELLOW, 150, 8)

                SetFontType(0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, 250, Central_Config.Texts[GetLanguage()][117], 150, 8)
                RenderText3(posX+8+95, 260, Central_Config.Texts[GetLanguage()][118], 150, 8)
                RenderText3(posX+8+95, 270, Central_Config.Texts[GetLanguage()][119], 150, 8)
            --#endregion
  
            --#endregion
            
            --#region BUTTON GERENCIAR
                local buttongerenciarX = posX+8+60
                local buttongerenciarY = 292
                local stategerenciar = 0
                
                Central.CreateButton(Central_Config.ButtonID.gerenciar, buttongerenciarX, buttongerenciarY, 70, 26)

                if Central.ButtonMouseOver(Central_Config.ButtonID.gerenciar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.gerenciar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stategerenciar = 2
                        else
                            stategerenciar = 1
                        end
                    else
                        stategerenciar = 0
                    end
                end
            
                DrawButton.Large(stategerenciar, buttongerenciarX, buttongerenciarY, 70, 26)

                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
            
                if stategerenciar == 2 then
                    RenderText3(buttongerenciarX+36, buttongerenciarY+10, Central_Config.Texts[GetLanguage()][77], 100, 8)
                else
                    RenderText3(buttongerenciarX+36, buttongerenciarY+9, Central_Config.Texts[GetLanguage()][77], 100, 8)
                end
            --#endregion
            
            --#region BUTTON REGISTRAR DISPOSITIVOS
                local buttonregistrarX = posX+8+60
                local buttonregistrarY = buttongerenciarY + 33
                local stateregister = 0
                Central.CreateButton(Central_Config.ButtonID.cadastrar, buttonregistrarX, buttonregistrarY, 70, 26)

                if Central_Config.Status == 1 then
                    if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, MousePosX(), MousePosY()) then
                        if not Central.ButtonClicked(Central_Config.ButtonID.cadastrar) then
                            if CheckRepeatKey(Keys.LButton) == 1 then
                                stateregister = 2
                            else
                                stateregister = 1
                            end
                        end
                    else
                        stateregister = 0
                    end
                else
                    stateregister = 3
                end

                DrawButton.Large(stateregister, buttonregistrarX, buttonregistrarY, 70, 26)

                SetFontType(1)
                SetTextColor(255,255,255,255)

                if stateregister == 2 then
                    RenderText3(buttonregistrarX+36, buttonregistrarY+10, Central_Config.Texts[GetLanguage()][33], 100, 8)
                else
                    RenderText3(buttonregistrarX+36, buttonregistrarY+9, Central_Config.Texts[GetLanguage()][33], 100, 8)
                end
            --#endregion
        
        end

        --#region BUTTON FECHAR
            local state = 0
            if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
            then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DisableClickClient()
                    state = 2
                else
                    state = 1
                end
            else
                state = 0
            end
        
            Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
            DrawButton.Close(state, posX+8+23.5, 393, 25, 24)

            if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
            end
        --#endregion

    end

    --GERENCIAR SENHA
    if Central_Config.Page == 5 then
        --#region INTERFACE 
            --#region INTERFACE LATERAL
                --INTERFACE LATERAL IMAGEM
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
        
            --#endregion

        --#endregion
    
        --#region TEXTBOX SENHA DISPOSITIVO
            local textBoxSenhaCentralX = posX+8+60
            local textBoxSenhaCentralY = 296
                 
            SetFontType(1)
            SetTextBg(0, 0, 0, 0)
            SetTextColor(255, 255, 255, 255)
            RenderText3(posX+8+95, textBoxSenhaCentralY-10, Central_Config.Texts[GetLanguage()][47],  200, 8)
                 
            Central.CreateButton(Central_Config.ButtonID.textSenha, textBoxSenhaCentralX-20, textBoxSenhaCentralY, 113, 26)
            --RenderImage(0X7AA1, textBoxSenhaCentralX-77, textBoxSenhaCentralY, 190, 26)

            --DrawInterface.TextBox(textBoxSenhaCentralX-25, textBoxSenhaCentralY-30, 120, 26)
            --DrawInterface.TextBox2(0, textBoxSenhaCentralX-25, textBoxSenhaCentralY, 120, 20)
                 
            RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, "                                ", 200, 1)
            SetFontType(0)
            SetTextBg(0,0,0, 0)
            SetTextColor(255, 255, 255, 255)
            if Central_Config.TextArea.Senha.onFocus then
                if Central_Config.TextArea.Senha.timer >= 8 then
                    if Central_Config.TextArea.Senha.timer >= 16 then				
                        Central_Config.TextArea.Senha.timer = 0
                    end
                    RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                else
                    RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text..Central_Config.TextArea.Senha.cursor, 200, 8)
                end
                Central_Config.TextArea.Senha.timer = Central_Config.TextArea.Senha.timer + 1
            else
                Central_Config.TextArea.Senha.timer = 0
                RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
            end
        --endregion
      
        --#region BUTTON GERENCIAR DISPOSITIVOS
            local buttonGerenciarX = posX+8+23
            local buttonGerenciarY = 347
            local stategerenciar = 0
            Central.CreateButton(Central_Config.ButtonID.gerenciar, buttonGerenciarX, buttonGerenciarY, 70, 26)
     
            if Central_Config.TextArea.Senha.Text:len() >= 4 then
                if Central.ButtonMouseOver(Central_Config.ButtonID.gerenciar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.gerenciar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stategerenciar = 2
                        else
                            stategerenciar = 1
                        end
                    else
                        stategerenciar = 0
                    end
                end
            else
                stategerenciar = 3
            end
         
            DrawButton.Large(stategerenciar, buttonGerenciarX, buttonGerenciarY, 70, 26)

            SetFontType(1)
            SetTextColor(255,255,255,255)
     
            if state == 2 then
                RenderText3(buttonGerenciarX+36, buttonGerenciarY+10, Central_Config.Texts[GetLanguage()][95], 100, 8)
            else
                RenderText3(buttonGerenciarX+36, buttonGerenciarY+9, Central_Config.Texts[GetLanguage()][95], 100, 8)
            end
        --#endregion
     
        --#region BUTTON VOLTAR
            local buttonVoltarX = posX+8+97
            local buttonVoltarY = 347
            local statevoltar = 0
            Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)
        
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        statevoltar = 2
                    else
                        statevoltar = 1
                    end
                else
                    statevoltar = 0
                end
            end

            DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
            
            SetFontType(1)
            SetTextColor(255,255,255,255)
        
            if state == 2 then
                RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
            else
                RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
            end
        --#endregion  
    
        --#region BUTTON FECHAR
            local state = 0
            if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
            then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    DisableClickClient()
                    state = 2
                else
                    state = 1
                end
            else
                state = 0
            end
        
            Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
            DrawButton.Close(state, posX+8+23.5, 393, 25, 24)

            if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
            end
        --#endregion

    end

    --INTERFACES DEPOIS DE ATIVAR A CENTRAL
    if Central_Config.AlertWindow.Open then
        --INTERFACE ALTERAR SENHA
        if Central_Config.AlertWindow.Id == 1 then
            --#region INTERFACE LATERAL
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)
        
                --#region ITEM DESIGNER
                    if Central_Item.Enable then
                        CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                    end
                --#endregion
            --#endregion
        
            --#region TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
            --#endregion
        
            --#region ALTETRAR SENHA BASE FUNDO PRETO
                --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                SetFontType(7)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][32], COLOR_GREEN, 170, 8)
            --#endregion       

            --#region TEXTOS
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)

                --TEXTO SUPERIOR SENHA ATUAL
                SetFontType(0)
                SetTextColor(255, 255, 255, 255)
                line = 90
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][169], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][170], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][171], 150, 8)

                --TEXTO MEIO NOVA SENHA
                line = line + 54
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][172], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][173], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][174], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][175], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][176], 150, 8)

                --TEXTO INFERIOR IMPORTANTE
                line = line + 90
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][137], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][138], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][139], 200, 8)
                
            --#endregion

            --#region TEXTBOX SENHA ANTIGA/ATUAL
                local textBoxSenhaAntigaX = posX+8+60
                local textBoxSenhaAntigaY = 135
                    
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, textBoxSenhaAntigaY-10, Central_Config.Texts[GetLanguage()][40], COLOR_YELLOW, 200, 8)
                    
                Central.CreateButton(Central_Config.ButtonID.textSenhaAntiga, textBoxSenhaAntigaX-20, textBoxSenhaAntigaY, 113, 26)
                DrawInterface.TextBox2(0, textBoxSenhaAntigaX-25, textBoxSenhaAntigaY, 120, 20)
                --RenderImage(0X7AA1, textBoxSenhaAntigaX-77, textBoxSenhaAntigaY, 190, 26)
                    
                RenderText3(textBoxSenhaAntigaX-77+112, textBoxSenhaAntigaY+6, "                                ", 200, 1)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Central_Config.TextArea.SenhaAntiga.onFocus then
                    if Central_Config.TextArea.SenhaAntiga.timer >= 8 then
                        if Central_Config.TextArea.SenhaAntiga.timer >= 16 then				
                            Central_Config.TextArea.SenhaAntiga.timer = 0
                        end
                        RenderText3(textBoxSenhaAntigaX-77+112, textBoxSenhaAntigaY+6, Central_Config.TextArea.SenhaAntiga.Text, 200, 8)
                    else
                        RenderText3(textBoxSenhaAntigaX-77+112, textBoxSenhaAntigaY+6, Central_Config.TextArea.SenhaAntiga.Text..Central_Config.TextArea.SenhaAntiga.cursor, 200, 8)
                    end
                    Central_Config.TextArea.SenhaAntiga.timer = Central_Config.TextArea.SenhaAntiga.timer + 1
                else
                    Central_Config.TextArea.SenhaAntiga.timer = 0
                    RenderText3(textBoxSenhaAntigaX-77+112, textBoxSenhaAntigaY+6, Central_Config.TextArea.SenhaAntiga.Text, 200, 8)
                end
            --#endregion

            --#region TEXTBOX SENHA DISPOSITIVO
                local textBoxSenhaCentralX = posX+8+60
                local textBoxSenhaCentralY = 230
                
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, textBoxSenhaCentralY-10, Central_Config.Texts[GetLanguage()][41], COLOR_YELLOW, 200, 8)
                
                Central.CreateButton(Central_Config.ButtonID.textSenha, textBoxSenhaCentralX-20, textBoxSenhaCentralY, 113, 26)
                --RenderImage(0X7AA1, textBoxSenhaCentralX-77, textBoxSenhaCentralY, 190, 26)
                DrawInterface.TextBox2(0, textBoxSenhaCentralX-25, textBoxSenhaCentralY, 120, 20)
                
                RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, "                                ", 200, 1)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Central_Config.TextArea.Senha.onFocus then
                    if Central_Config.TextArea.Senha.timer >= 8 then
                        if Central_Config.TextArea.Senha.timer >= 16 then				
                            Central_Config.TextArea.Senha.timer = 0
                        end
                        RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                    else
                        RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text..Central_Config.TextArea.Senha.cursor, 200, 8)
                    end
                    Central_Config.TextArea.Senha.timer = Central_Config.TextArea.Senha.timer + 1
                else
                    Central_Config.TextArea.Senha.timer = 0
                    RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                end
            --#endregion

            --#region TEXTBOX CONFIRMAR SENHA DISPOSITIVO
                local textBoxConfirmarSenhaCentralX = posX+8+60
                local textBoxConfirmarSenhaCentralY = 265
                
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, textBoxConfirmarSenhaCentralY-10, Central_Config.Texts[GetLanguage()][30], COLOR_YELLOW, 200, 8)
                
                Central.CreateButton(Central_Config.ButtonID.textConfirmarSenha, textBoxConfirmarSenhaCentralX-20, textBoxConfirmarSenhaCentralY, 113, 26)
                --RenderImage(0X7AA1, textBoxConfirmarSenhaCentralX-77, textBoxConfirmarSenhaCentralY, 190, 26)
                DrawInterface.TextBox2(0, textBoxConfirmarSenhaCentralX-25, textBoxConfirmarSenhaCentralY, 120, 20)
                
                RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, "                                ", 200, 1)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Central_Config.TextArea.ConfirmarSenha.onFocus then
                    if Central_Config.TextArea.ConfirmarSenha.timer >= 8 then
                        if Central_Config.TextArea.ConfirmarSenha.timer >= 16 then				
                            Central_Config.TextArea.ConfirmarSenha.timer = 0
                        end
                        RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text, 200, 8)
                    else
                        RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text..Central_Config.TextArea.ConfirmarSenha.cursor, 200, 8)
                    end
                    Central_Config.TextArea.ConfirmarSenha.timer = Central_Config.TextArea.ConfirmarSenha.timer + 1
                else
                    Central_Config.TextArea.ConfirmarSenha.timer = 0
                    RenderText3(textBoxConfirmarSenhaCentralX-77+112, textBoxConfirmarSenhaCentralY+6, Central_Config.TextArea.ConfirmarSenha.Text, 200, 8)
                end
            --#endregion

            --#region BUTTON ALTERAR SENHA
                local buttonAlterarSenhaX = posX+8+23
                local buttonAlterarSenhaY = 357
                local stateok = 0
                Central.CreateButton(Central_Config.ButtonID.cadastrar, buttonAlterarSenhaX, buttonAlterarSenhaY, 70, 26)
        
                if Central_Config.TextArea.SenhaAntiga.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                    if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, MousePosX(), MousePosY()) then
                        if not Central.ButtonClicked(Central_Config.ButtonID.cadastrar) then
                            if CheckRepeatKey(Keys.LButton) == 1 then
                                stateok = 2
                            else
                                stateok = 1
                            end
                        else
                            stateok = 0
                        end
                    end
                else
                    stateok = 3
                end

                DrawButton.Large(stateok, buttonAlterarSenhaX, buttonAlterarSenhaY, 70, 26)
        
                SetFontType(1)
                SetTextColor(255,255,255,255)
        
                if stateok == 2 then
                    RenderText3(buttonAlterarSenhaX+36, buttonAlterarSenhaY+10, Central_Config.Texts[GetLanguage()][95], 100, 8)
                else
                    RenderText3(buttonAlterarSenhaX+36, buttonAlterarSenhaY+9, Central_Config.Texts[GetLanguage()][95], 100, 8)
                end
            --#endregion

            --#region BUTTON VOLTAR
                local buttonVoltarX = posX+8+97
                local buttonVoltarY = 357
                local statevoltar = 0
                Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)

                if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            statevoltar = 2
                        else
                            statevoltar = 1
                        end
                    else
                        statevoltar = 0
                    end
                end

                DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
             
                SetFontType(1)
                SetTextColor(255,255,255,255)

                if statevoltar == 2 then
                    RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
                else
                    RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
                end
            --#endregion  

            --#region BUTTON FECHAR
                local statefechar = 0
                if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
                then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        DisableClickClient()
                        statefechar = 2
                    else
                        statefechar = 1
                    end
                else
                    statefechar = 0
                end
            
                Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
                DrawButton.Close(statefechar, posX+8+23.5, 393, 25, 24)
            
                if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                    DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
                end
            --#endregion
         
        end

        --INTERFACE REGISTRAR DISPOSITIVO
        if Central_Config.AlertWindow.Id == 2 then
            --#region INTERFACE LATERAL
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --#region ITEM DESIGNER
                    if Central_Item.Enable then
                        CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                    end
                --#endregion
         
            --#endregion

            --#region TEXTO SUPERIOR CENTRAL DE SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
            --#endregion

            --#region TEXTOS
                --#region VAMOS REGISTRAR?
                    --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                    SetFontType(7)
                    SetTextBg(0,0,0,0)
                    SetTextColor(85, 97, 230, 255)
                    RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][22], COLOR_BLUE, 170, 8)
                --#endregion

                --#region TEXTOS
                    SetFontType(1)
                    SetTextBg(0, 0, 0, 0)
                    RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)

                    SetFontType(1)
                    SetTextColor(255, 255, 255, 255)
                    line = 90
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][140], 100, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][141], 100, 8)
                    SetTextColor(255, 204, 0, 255)
                    
                    line = line + 10
                    --APELIDO DO COMPUTADOR
                    if Central_Config.TextArea.Apelido.Text == "" then
                        RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][96], COLOR_RED_E, 350, 8)
                    else
                        RenderColoredText(posX+8+95, line, Central_Config.TextArea.Apelido.Text, COLOR_GREEN, 350, 8)
                    end
                
                    SetFontType(0)
                    SetTextBg(0, 0, 0, 0)
                    SetTextColor(255, 255, 255, 255)
                    line = line + 20
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][142],  200, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][143],  200, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][144], 200, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][145], 200, 8)
                    
                    SetFontType(0)
                    SetTextColor(255, 204, 0, 255)
                    line = line + 20
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][120], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][121], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][122], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][123], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][124], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][125], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][126], 150, 8)
                    line = line + 10
                    RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][127], 150, 8)
                --#endregion
            --#endregion
  
            --#region TEXTBOX APELIDO DISPOSITIVO
                local textBoxApelidoCentralX = posX+8+60
                local textBoxApelidoCentralY = line+30
        
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(255, 255, 255, 255)
                RenderText3(posX+8+95, textBoxApelidoCentralY-10, Central_Config.Texts[GetLanguage()][46],  200, 8)
                
                Central.CreateButton(Central_Config.ButtonID.textApelido, textBoxApelidoCentralX-20, textBoxApelidoCentralY, 113, 26)
                --RenderImage(0X7AA1, textBoxApelidoCentralX-77, textBoxApelidoCentralY, 190, 26)
                DrawInterface.TextBox2(0, textBoxApelidoCentralX-25, textBoxApelidoCentralY, 120, 20)
                
                RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, "                                ", 200, 1)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Central_Config.TextArea.Apelido.onFocus then
                    if Central_Config.TextArea.Apelido.timer >= 8 then
                        if Central_Config.TextArea.Apelido.timer >= 16 then				
                            Central_Config.TextArea.Apelido.timer = 0
                        end
                        RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text, 200, 8)
                    else
                        RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text..Central_Config.TextArea.Apelido.cursor, 200, 8)
                    end
                    Central_Config.TextArea.Apelido.timer = Central_Config.TextArea.Apelido.timer + 1
                else
                    Central_Config.TextArea.Apelido.timer = 0
                    RenderText3(textBoxApelidoCentralX-77+112, textBoxApelidoCentralY+6, Central_Config.TextArea.Apelido.Text, 200, 8)
                end
            --#endregion
        
            --#region TEXTBOX SENHA DISPOSITIVO
               local textBoxSenhaCentralX = posX+8+60
               local textBoxSenhaCentralY = textBoxApelidoCentralY + 36

               SetFontType(1)
               SetTextBg(0, 0, 0, 0)
               SetTextColor(255, 255, 255, 255)
               RenderText3(posX+8+95, textBoxSenhaCentralY-10, Central_Config.Texts[GetLanguage()][47],  200, 8)
           
               Central.CreateButton(Central_Config.ButtonID.textSenha, textBoxSenhaCentralX-20, textBoxSenhaCentralY, 113, 26)
               --RenderImage(0X7AA1, textBoxSenhaCentralX-77, textBoxSenhaCentralY, 190, 26)
               DrawInterface.TextBox2(0, textBoxSenhaCentralX-25, textBoxSenhaCentralY, 120, 20)
       
               RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, "                                ", 200, 1)
               SetFontType(0)
               SetTextBg(0,0,0, 0)
               SetTextColor(255, 255, 255, 255)
               if Central_Config.TextArea.Senha.onFocus then
                   if Central_Config.TextArea.Senha.timer >= 8 then
                       if Central_Config.TextArea.Senha.timer >= 16 then				
                           Central_Config.TextArea.Senha.timer = 0
                       end
                       RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                   else
                       RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text..Central_Config.TextArea.Senha.cursor, 200, 8)
                   end
                   Central_Config.TextArea.Senha.timer = Central_Config.TextArea.Senha.timer + 1
               else
                   Central_Config.TextArea.Senha.timer = 0
                   RenderText3(textBoxSenhaCentralX-77+112, textBoxSenhaCentralY+6, Central_Config.TextArea.Senha.Text, 200, 8)
               end
            --#endregion

            --#region BUTTON REGISTRAR DISPOSITIVOS
                local buttonRegistrarX = posX+8+23
                local buttonRegistrarY = 357
                local stateregister = 0
                Central.CreateButton(Central_Config.ButtonID.cadastrar, buttonRegistrarX, buttonRegistrarY, 70, 26)
        
                if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 then
                     if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, MousePosX(), MousePosY()) then
                        if not Central.ButtonClicked(Central_Config.ButtonID.cadastrar) then
                             if CheckRepeatKey(Keys.LButton) == 1 then
                                 stateregister = 2
                             else
                                 stateregister = 1
                             end
                         else
                             stateregister = 0
                         end
                     end
                else
                     stateregister = 3
                end
                
                DrawButton.Large(stateregister, buttonRegistrarX, buttonRegistrarY, 70, 26)
                
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
        
                if stateregister == 2 then
                     RenderText3(buttonRegistrarX+36, buttonRegistrarY+10, Central_Config.Texts[GetLanguage()][62], 100, 8)
                else
                     RenderText3(buttonRegistrarX+36, buttonRegistrarY+9, Central_Config.Texts[GetLanguage()][62], 100, 8)
                end
            --#endregion

            --#region BUTTON VOLTAR
                local buttonVoltarX = posX+8+97
                local buttonVoltarY = 357
                local statevoltar = 0
                Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)

                if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            statevoltar = 2
                        else
                            statevoltar = 1
                        end
                    else
                        statevoltar = 0
                    end
                end

                DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
            
                SetFontType(1)
                SetTextColor(255,255,255,255)

                if statevoltar == 2 then
                    RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
                else
                    RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
                end
            --#endregion  

            --#region BUTTON FECHAR
                local statefechar = 0
                if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
                then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        DisableClickClient()
                        statefechar = 2
                    else
                        statefechar = 1
                    end
                else
                    statefechar = 0
                end
            
                Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
                DrawButton.Close(statefechar, posX+8+23.5, 393, 25, 24)
            
                if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                    DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
                end
            --#endregion
        
        end

        --INTERFACE REMOVER DISPOSITIVO
        if Central_Config.AlertWindow.Id == 3 then
            --#region INTERFACE LATERAL
                RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                --#region ITEM DESIGNER
                    if Central_Item.Enable then
                        CreateItem(posX+8+90, 38, Central_Item.Position.W, Central_Item.Position.H, Central_Item.Index, 0, 0, 0, 1.0)
                    end
                --#endregion
 
            --#endregion

            --#region TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
            --#endregion

            --#region REMOVER DISPOSITIVO
                --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                SetFontType(7)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(85, 97, 230, 255)
                RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][168], COLOR_RED_E, 170, 8)
            --#endregion

            --#region TEXTOS
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)

                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(255, 255, 255, 255)
                line = 90
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][129], 100, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][130], 100, 8)
                SetTextColor(255, 204, 0, 255)
                
                --APELITO DO COMPUTADOR
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.TargetDevice.APELIDO, COLOR_YELLOW, 350, 8)
                
                SetFontType(0)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(255, 255, 255, 255)
                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][131],  200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][132],  200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][133], 200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][134], 200, 8)
                
                SetFontType(0)
                line = line + 20
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][120], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][121], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][122], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][123], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][124], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][125], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][126], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][127], COLOR_YELLOW, 150, 8)
                
                SetFontType(0)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(255, 255, 255, 255)
                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][135],  200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][136],  200, 8)
                
                line = line + 40
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][137],  200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][138],  200, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][139],  200, 8)
            --#endregion

            --#region TEXTBOX SENHA
                local textBoxSenhaRemoveX = posX+8+60
                local textBoxSenhaRemoveY = 290
    
                Central.CreateButton(Central_Config.ButtonID.textSenha, textBoxSenhaRemoveX-20, textBoxSenhaRemoveY, 113, 26)
                --RenderImage(0X7AA1, textBoxSenhaRemoveX-77, textBoxSenhaRemoveY, 190, 26)
                DrawInterface.TextBox2(0, textBoxSenhaRemoveX-25, textBoxSenhaRemoveY, 120, 20)

                RenderText3(textBoxSenhaRemoveX-77+112, textBoxSenhaRemoveY+6, "                                ", 200, 1)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Central_Config.TextArea.Senha.onFocus then
                    if Central_Config.TextArea.Senha.timer >= 8 then
                        if Central_Config.TextArea.Senha.timer >= 16 then				
                            Central_Config.TextArea.Senha.timer = 0
                        end
                        RenderText3(textBoxSenhaRemoveX-77+112, textBoxSenhaRemoveY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                    else
                        RenderText3(textBoxSenhaRemoveX-77+112, textBoxSenhaRemoveY+6, Central_Config.TextArea.Senha.Text..Central_Config.TextArea.Senha.cursor, 200, 8)
                    end
                    Central_Config.TextArea.Senha.timer = Central_Config.TextArea.Senha.timer + 1
                else
                    Central_Config.TextArea.Senha.timer = 0
                    RenderText3(textBoxSenhaRemoveX-77+112, textBoxSenhaRemoveY+6, Central_Config.TextArea.Senha.Text, 200, 8)
                end
            --#endregion

            --#region BUTTON REMOVER
                local buttonRemoverX = posX+8+23
                local buttonRemoverY = 357
                local stateremover = 0

                Central.CreateButton(Central_Config.ButtonID.cadastrar, buttonRemoverX, buttonRemoverY, 100, 22)
                if Central_Config.TextArea.Senha.Text:len() >= 4 then
                    if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, MousePosX(), MousePosY()) then
                        if not Central.ButtonClicked(Central_Config.ButtonID.cadastrar) then
                            if CheckRepeatKey(Keys.LButton) == 1 then
                                stateremover = 2
                            else
                                stateremover = 1
                            end
                        end
                    else
                        stateremover = 0
                    end
                else
                    stateremover = 3
                end

                DrawButton.Large(stateremover, buttonRemoverX, buttonRemoverY, 70, 26)

                --TEXTO REMOVER
                SetFontType(1)
                SetTextColor(255,255,255,255)

                if stateremover == 2 then
                    RenderText3(buttonRemoverX+36, buttonRemoverY+10, Central_Config.Texts[GetLanguage()][52], 100, 8)
                else
                    RenderText3(buttonRemoverX+36, buttonRemoverY+9, Central_Config.Texts[GetLanguage()][52], 100, 8)
                end
            --#endregion

            --#region BUTTON VOLTAR
                local buttonVoltarX = posX+8+97
                local buttonVoltarY = 357
                local statevoltar = 0
                Central.CreateButton(Central_Config.ButtonID.voltar, buttonVoltarX, buttonVoltarY, 70, 26)

                if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.voltar) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            statevoltar = 2
                        else
                            statevoltar = 1
                        end
                    else
                        statevoltar = 0
                    end
                end

                DrawButton.Large(statevoltar, buttonVoltarX, buttonVoltarY, 70, 26)
            
                SetFontType(1)
                SetTextColor(255,255,255,255)

                if statevoltar == 2 then
                    RenderText3(buttonVoltarX+36, buttonVoltarY+10, Central_Config.Texts[GetLanguage()][146], 100, 8)
                else
                    RenderText3(buttonVoltarX+36, buttonVoltarY+9, Central_Config.Texts[GetLanguage()][146], 100, 8)
                end
            --#endregion  

            --#region BUTTON FECHAR
                local statefechar = 0
                if MousePosX() >= posX+8+23.5 and MousePosX() <= posX+8+23.5 + 24.5 and MousePosY() >= 393 and MousePosY() <= 393 + 24.5
                then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        DisableClickClient()
                        statefechar = 2
                    else
                        statefechar = 1
                    end
                else
                    statefechar = 0
                end
            
                Central.CreateButton(Central_Config.ButtonID.fechar, posX+8+23.5, 393, 24.5, 24.5)
                DrawButton.Close(statefechar, posX+8+23.5, 393, 25, 24)
            
                if Central.ButtonMouseOver(Central_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
                    DrawTooltip(posX+8+25, 382, Central_Config.Texts[GetLanguage()][2])
                end
            --#endregion
        
        end

        --MENSAGEM BOX = (ERRO SENHA  INV�LIDA OU INCORRETA)
        if Central_Config.AlertWindow.Id == 4 then          
            SetBlend(1)
            EndDrawBar()
            EnableAlphaTest()
            DrawInterface.InfoBox(true, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 1, false)

            SetTextBg(0,0,0, 0)
            SetFontType(7)
            SetTextColor(250,10,10,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+53, Central_Config.Texts[GetLanguage()][43], 150, 8)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+92, Central_Config.Texts[GetLanguage()][44], 180, 8)
    
            Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            else
                DrawButton.Medium(0, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            end

            SetFontType(1)
            SetTextColor(250,10,10,255)
            SetTextColor(237, 214, 161, 255)
            RenderText3((WindowGetWidth()/2)-(225/2)+80+30, Central_Config.WindowPos.Y+125, "OK", 220, 8)
        end

        --MENSAGEM BOX = (SENHA ALTERADA COM SUCESSO)
        if Central_Config.AlertWindow.Id == 5 then         
            SetBlend(1)
            EndDrawBar()
            EnableAlphaTest()
            DrawInterface.InfoBox(false, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 0, false)
            SetTextBg(0,0,0, 0)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+50, Central_Config.Texts[GetLanguage()][45], 180, 8)
    
            Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            else
                DrawButton.Medium(0, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            end

            SetFontType(1)
            SetTextColor(250,10,10,255)
            SetTextColor(237, 214, 161, 255)
            RenderText3((WindowGetWidth()/2)-(225/2)+80+30, Central_Config.WindowPos.Y+80, "OK", 220, 8)
        end

        --MENSAGEM BOX = (ERRO AO REGISTRAR DISPOSITIVO)
        if Central_Config.AlertWindow.Id == 6 then          
            SetBlend(1)
            EndDrawBar()
            EnableAlphaTest()
            DrawInterface.InfoBox(true, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 1, false)

            SetTextBg(0,0,0, 0)
            SetFontType(7)
            SetTextColor(250,10,10,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+53, Central_Config.Texts[GetLanguage()][48], 150, 8)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+92, Central_Config.Texts[GetLanguage()][49], 180, 8)
    
            Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            else
                DrawButton.Medium(0, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            end

            SetFontType(1)
            SetTextColor(250,10,10,255)
            SetTextColor(237, 214, 161, 255)
            RenderText3((WindowGetWidth()/2)-(225/2)+80+30, Central_Config.WindowPos.Y+125, "OK", 220, 8)
        end

        --MENSAGEM BOX = (DISPOSITIVO REGISTRADO COM SUCESSO)
        if Central_Config.AlertWindow.Id == 7 then   
            --#region INTERFACE LATERAL

            --#region INTERFACE 
                --#region INTERFACE LATERAL
                    --INTERFACE LATERAL IMAGEM
                    RenderImage2(40046, WindowGetWidth()-183, 0, 205, 429, 0, 0, 0.9001625, 0.93695, 1, 1, 0.0)

                    --TEXTO SUPERIOR CENTRAL DE  SEGURAN�A
                    SetFontType(1)
                    SetTextBg(0,0,0, 0)
                    SetTextColor(255,255,255,255)
                    RenderText3(posX+8+95, 15, Central_Config.Texts[GetLanguage()][1], 150, 8)
            
                --#endregion
            --#endregion

            --#region REGISTRADO COM SUCESSO
                --RenderImage2(31424, posX+8+24, 66, 145, 18, 0.0, 0.0, 0.844684189, 0.685299, 1, 1, 1.0)
                SetFontType(7)
                SetTextBg(0, 0, 0, 0)
                SetTextColor(85, 97, 230, 255)
                RenderColoredText(posX+8+95, 70, Central_Config.Texts[GetLanguage()][167], COLOR_GREEN, 170, 8)
            --#endregion

            --#region TEXTOS
                SetFontType(1)
                SetTextBg(0, 0, 0, 0)
                RenderColoredText(posX+8+95, 55, Central_Config.Texts[GetLanguage()][105], COLOR_YELLOW, 100, 8)

                SetFontType(1)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                line = 90
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][106], 150, 8)
                line = line + 10

                local apelidoPC = Central_Config.TextArea.Apelido.Text
                RenderColoredText(posX+8+95, 100, apelidoPC, COLOR_GREEN, 350, 8)

                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255,255,255,255)
                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][154], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][155], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][156], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][157], 150, 8)

                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][158], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][159], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][160], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][161], 150, 8)

                line = line + 20
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][162], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][163], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][164], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][165], 150, 8)
                line = line + 10
                RenderText3(posX+8+95, line, Central_Config.Texts[GetLanguage()][166], 150, 8)

                SetFontType(0)
                line = line + 20
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][120], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][121], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][122], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][123], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][124], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][125], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][126], COLOR_YELLOW, 150, 8)
                line = line + 10
                RenderColoredText(posX+8+95, line, Central_Config.Texts[GetLanguage()][127], COLOR_YELLOW, 150, 8)
            --#endregion

            --#region BUTTON OK
                local buttonOKX = posX+8+60
                local buttonOKY = 370
                local stateOK = 0
                Central.CreateButton(Central_Config.ButtonID.ok, buttonOKX, buttonOKY, 70, 26)
            
                if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                    if not Central.ButtonClicked(Central_Config.ButtonID.ok) then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stateOK = 2
                        else
                            stateOK = 1
                        end
                    else
                        stateOK = 0
                    end
                end

                DrawButton.Red2(stateOK, buttonOKX, buttonOKY, 70, 26)

                SetFontType(1)
                SetTextColor(255,255,255,255)

                if stateOK == 2 then
                    RenderText3(buttonOKX+36, buttonOKY+10, Central_Config.Texts[GetLanguage()][95], 100, 8)
                else
                    RenderText3(buttonOKX+36, buttonOKY+9, Central_Config.Texts[GetLanguage()][95], 100, 8)
                end
            --#endregion  

            --#endregion

            --#region MESSAGEM BOX
                --[[
                SetBlend(1)
                EndDrawBar()
                EnableAlphaTest()
                RenderImage2(590023,(WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 4, 0, 0, 0.83203125, 0.625, 1, 1, 1.0)
                RenderImage2(590029, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+119-50, 225, 30, 0.0, 0.0, 0.8322874124, 0.6042874124, 1, 1, 1.0)
                RenderImage2(590029, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+90-50, 225, 30, 0.0, 0.0, 0.8322874124, 0.6042874124, 1, 1, 1.0)
                RenderImage2(590023, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+149-50, 225, 4, 0, 0, 0.83203125, 0.625, 1, 1, 1.0)
                SetTextBg(0,0,0, 0)
                SetFontType(0)
                SetTextColor(255,255,255,255)
                RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+50, Central_Config.Texts[GetLanguage()][50], 180, 8)
            
                Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
                if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                    RenderImage2(41011, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18, 0.00688282, 0.313344848, 0.538486151, 0.333344848, 1, 1, 1.0)
                else
                    RenderImage2(41011, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18, 0.00688282, 0.002127840, 0.538486151, 0.323344848, 1, 1, 1.0)
                end
                --]]
            --#endregion
        end

        --MENSAGEM BOX = (ERRO AO REMOVER DISPOSITIVO)
        if Central_Config.AlertWindow.Id == 8 then
            SetBlend(1)
            EndDrawBar()
            EnableAlphaTest()
           
            DrawInterface.InfoBox(true, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 1, false)

            SetTextBg(0,0,0, 0)
            SetFontType(7)
            SetTextColor(250,10,10,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+53, Central_Config.Texts[GetLanguage()][53], 220, 8)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+92, Central_Config.Texts[GetLanguage()][54], 220, 8)
    
            Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            else
                DrawButton.Medium(0, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+120, 60, 18)
            end

            SetFontType(1)
            SetTextColor(250,10,10,255)
            SetTextColor(237, 214, 161, 255)
            RenderText3((WindowGetWidth()/2)-(225/2)+80+30, Central_Config.WindowPos.Y+125, "OK", 220, 8)
        end

        --MENSAGEM BOX = (DISPOSITIVO REMOVIDO COM SUCESSO)
        if Central_Config.AlertWindow.Id == 9 then
            SetBlend(1)
            EndDrawBar()
            EnableAlphaTest()
            DrawInterface.InfoBox(false, (WindowGetWidth()/2)-(225/2), Central_Config.WindowPos.Y+86-50, 225, 0, false)
            SetTextBg(0,0,0, 0)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3((WindowGetWidth()/2)-(225/2)+113, Central_Config.WindowPos.Y+50, Central_Config.Texts[GetLanguage()][55], 180, 8)
    
            Central.CreateButton(Central_Config.ButtonID.ok, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            else
                DrawButton.Medium(0, (WindowGetWidth()/2)-(225/2)+80, Central_Config.WindowPos.Y+75, 60, 18)
            end

            SetFontType(1)
            SetTextColor(250,10,10,255)
            SetTextColor(237, 214, 161, 255)
            RenderText3((WindowGetWidth()/2)-(225/2)+80+30, Central_Config.WindowPos.Y+80, "OK", 220, 8)
        end
    end
end

function Central.ClickEvent()
    local addX = WindowGetWidthAdd()
	local posX = WindowGetWidth()-190
    local x = MousePosX()
    local y = MousePosY()

    if not Central.CheckOpen() then
        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) then
            Central.RequestOpen()
            Central_Config.AlertWindow.Open = false
            Central_Config.Page = 4
            return true
        end
    end

    --INTERFACE INICIAL
    if Central_Config.Page == 0 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.ativar, x, y) then
            Central_Config.Button[Central_Config.ButtonID.ativar].clicked = true
            Central_Config.Page = 1
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    --INTERFACE ATIVAR CENTRAL
    if Central_Config.Page == 1 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.textApelido, x, y) then
            Central.ChangeFocus(1)
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.textSenha, x, y) then
            Central.ChangeFocus(2)
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.textConfirmarSenha, x, y) then
            Central.ChangeFocus(3)
            return true
        end

        Central.ChangeFocus(0)

        if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, x, y) then
            if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                Central_Config.Button[Central_Config.ButtonID.cadastrar].clicked = true
                Central.SendActiveCentral()
                return true
            end
        end

        --BUTTON VOLTAR
        if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
            Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
            Central_Config.TextArea.Apelido.Text = ""
            Central_Config.TextArea.Senha.Text = ""
            Central_Config.TextArea.ConfirmarSenha.Text = ""
            Central_Config.TextArea.SenhaAntiga.Text = ""
            Central_Config.AlertWindow.Open = false
            Central_Config.Page = 0
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    if Central_Config.AlertWindow.Open then
        --INTERFACE ALTERAR SENHA
        if Central_Config.AlertWindow.Id == 1 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.textSenhaAntiga, x, y) then
                Central.ChangeFocus(4)
                return true
            end
        
            if Central.ButtonMouseOver(Central_Config.ButtonID.textSenha, x, y) then
                Central.ChangeFocus(2)
                return true
            end
        
            if Central.ButtonMouseOver(Central_Config.ButtonID.textConfirmarSenha, x, y) then
                Central.ChangeFocus(3)
                return true
            end
        
            Central.ChangeFocus(0)

            if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, x, y) then
                if Central_Config.TextArea.SenhaAntiga.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                    Central_Config.Button[Central_Config.ButtonID.cadastrar].clicked = true
                    Central.SendChangePassword()
                    return true
                end
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                --Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --INTERFACE REGISTRAR DISPOSITIVO
        if Central_Config.AlertWindow.Id == 2 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.textApelido, x, y) then
                Central.ChangeFocus(1)
                return true
            end
        
            if Central.ButtonMouseOver(Central_Config.ButtonID.textSenha, x, y) then
                Central.ChangeFocus(2)
                return true
            end

            Central.ChangeFocus(0)

            if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, x, y) then
                if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 then
                    Central_Config.Button[Central_Config.ButtonID.cadastrar].clicked = true
                    Central.SendRegisterDevice()
                    return true
                end
            end 
            
            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 4
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --INTERFACE REMOVER DISPOSITIVO
        if Central_Config.AlertWindow.Id == 3 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.textSenha, x, y) then
                Central.ChangeFocus(2)
                return true
            end

            Central.ChangeFocus(0)

            if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, x, y) then
                if Central_Config.TextArea.Senha.Text:len() >= 4 then
                    Central.SendDeleteDevice()
                end
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                    Central_Config.TextArea.Apelido.Text = ""
                    Central_Config.TextArea.Senha.Text = ""
                    Central_Config.TextArea.ConfirmarSenha.Text = ""
                    Central_Config.TextArea.SenhaAntiga.Text = ""
                    Central_Config.AlertWindow.Open = false
                    Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (ERRO SENHA  INV�LIDA OU INCORRETA)
        if Central_Config.AlertWindow.Id == 4 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central_Config.AlertWindow.Id = 1
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (SENHA ALTERADA COM SUCESSO)
        if Central_Config.AlertWindow.Id == 5 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central_Config.AlertWindow.Open = false
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (ERRO AO REGISTRAR DISPOSITIVO)
        if Central_Config.AlertWindow.Id == 6 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central_Config.AlertWindow.Id = 2
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (DISPOSITIVO REGISTRADO COM SUCESSO)
        if Central_Config.AlertWindow.Id == 7 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central.UpdateDeviceList()
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.AlertWindow.Open = false
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (ERRO AO REMOVER DISPOSITIVO)
        if Central_Config.AlertWindow.Id == 8 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central_Config.AlertWindow.Id = 3
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        --MENSAGEM BOX = (DISPOSITIVO REMOVIDO COM SUCESSO)
        if Central_Config.AlertWindow.Id == 9 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ok, x, y) then
                Central.UpdateDeviceList()
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 4
                return true
            end

            --BUTTON VOLTAR
            if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
                Central_Config.TextArea.Apelido.Text = ""
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
                Central_Config.AlertWindow.Open = false
                Central_Config.Page = 2
                return true
            end

            if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
                Central.Close()
                return true
            end
        end

        return true
    end
    
    --INTTERFACE GERENCIAR
    if Central_Config.Page == 2 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.alterarSenha, x, y) then
            Central_Config.Button[Central_Config.ButtonID.alterarSenha].clicked = true
            Central_Config.AlertWindow.Id = 1
            Central_Config.AlertWindow.Open = true
            return true
        end

        for i in ipairs(Central_Config.DeviceList) do
            if Central.ButtonMouseOver(Central_Config.ButtonID.deletar[i], MousePosX(), MousePosY()) then
                Central_Config.TargetDevice = Central_Config.DeviceList[i]
                Central_Config.AlertWindow.Id = 3
                Central_Config.AlertWindow.Open = true
                return true
            end
        end

        --BUTTON VOLTAR
        if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
            Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
            Central_Config.TextArea.Apelido.Text = ""
            Central_Config.TextArea.Senha.Text = ""
            Central_Config.TextArea.ConfirmarSenha.Text = ""
            Central_Config.TextArea.SenhaAntiga.Text = ""
            Central_Config.AlertWindow.Open = false
            Central_Config.Page = 4
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    --MESSAGE BOX = (ACESSO LIMITADO)
    if Central_Config.Page == 3 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.ativar, x, y) then
            Central.Close()
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    --BUTTON GERENCIAR
    if Central_Config.Page == 4 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.gerenciar, x, y) then
            Central_Config.Button[Central_Config.ButtonID.gerenciar].clicked = true
            if Central_Config.Status == 2 then
                Central_Config.Page = 2
            else
                --Central_Config.Page = 5
                Central_Config.Page = 2
            end

            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    --INTERFACE CENTRAL ATIVADA
    if Central_Config.Page == 5 then
        if Central.ButtonMouseOver(Central_Config.ButtonID.textSenha, x, y) then
            Central.ChangeFocus(2)
            return true
        end

        if Central_Config.TextArea.Senha.Text:len() >= 4 then
            if Central.ButtonMouseOver(Central_Config.ButtonID.ativargerenciar, x, y) then
                Central_Config.Button[Central_Config.ButtonID.ativargerenciar].clicked = true
                Central_Config.Page = 2
                return true
            end
        end

        --BUTTON VOLTAR
        if Central.ButtonMouseOver(Central_Config.ButtonID.voltar, x, y) then
            Central_Config.Button[Central_Config.ButtonID.voltar].clicked = true
            Central_Config.TextArea.Apelido.Text = ""
            Central_Config.TextArea.Senha.Text = ""
            Central_Config.TextArea.ConfirmarSenha.Text = ""
            Central_Config.TextArea.SenhaAntiga.Text = ""
            Central_Config.AlertWindow.Open = false
            Central_Config.Page = 4
            return true
        end

        if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
            Central.Close()
            return true
        end
    end

    --BUTTON REGISTRAR/CADASTRAR
    if Central.ButtonMouseOver(Central_Config.ButtonID.cadastrar, x, y) then
        if Central_Config.Status == 1 then
            Central_Config.Button[Central_Config.ButtonID.alterarSenha].clicked = true
            Central_Config.AlertWindow.Id = 2
            Central_Config.AlertWindow.Open = true
        end
        return true
    end

    if Central.ButtonMouseOver(Central_Config.ButtonID.abrir, x, y) or Central.ButtonMouseOver(Central_Config.ButtonID.fechar, x, y) then
        Central.Close()
        return true
    end

end

function Central.KeyListener(key)
    if not Central.CheckOpen() then return false end

    if key == Keys.Escape then
        if Central_Config.TextArea.Apelido.onFocus or Central_Config.TextArea.Senha.onFocus or Central_Config.TextArea.ConfirmarSenha.onFocus or Central_Config.TextArea.SenhaAntiga.onFocus then
            Central.ChangeFocus(0)
            return true
        end

        if Central_Config.AlertWindow.Open then
            if Central_Config.AlertWindow.Id == 1 then
                Central_Config.AlertWindow.Open = false
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.ConfirmarSenha.Text = ""
                Central_Config.TextArea.SenhaAntiga.Text = ""
            end

            if Central_Config.AlertWindow.Id == 2 then
                Central_Config.AlertWindow.Open = false
                Central_Config.TextArea.Senha.Text = ""
                Central_Config.TextArea.Apelido.Text = ""
            end

            if Central_Config.AlertWindow.Id == 3 then
                Central_Config.AlertWindow.Open = false
                Central_Config.TextArea.Senha.Text = ""
            end

            if Central_Config.AlertWindow.Id == 4 then
                Central_Config.AlertWindow.Id = 1
            end

            if Central_Config.AlertWindow.Id == 5 then
                Central_Config.AlertWindow.Open = false
            end

            if Central_Config.AlertWindow.Id == 6 then
                 Central_Config.AlertWindow.Id = 2
            end

            if Central_Config.AlertWindow.Id == 7 then
                Central.UpdateDeviceList()
                Central_Config.AlertWindow.Open = false
            end

            if Central_Config.AlertWindow.Id == 8 then
                Central_Config.AlertWindow.Id = 3
            end

            if Central_Config.AlertWindow.Id == 9 then
               Central.UpdateDeviceList()
               Central_Config.AlertWindow.Open = false
            end
            return true
        end

        Central.Close()
        return true
    end

    if Central_Config.Page == 1 then
        if Central_Config.TextArea.Apelido.onFocus then 
            if Central_Config.Alfabeto.Apelido[key] ~= nil then
                if string.len(Central_Config.TextArea.Apelido.Text) < 20 then
                    Central_Config.TextArea.Apelido.Text = Central_Config.TextArea.Apelido.Text..Central_Config.Alfabeto.Apelido[key]
                    Central_Config.TextArea.Apelido.timer = 0
                end
                return true
            end
            if key == Keys.Tab then
                if CheckRepeatKey(Keys.ShiftKey) == 1 then
                    Central.ChangeFocus(3)
                else
                    Central.ChangeFocus(2)
                end
                return true
            end
        end

        if Central_Config.TextArea.Senha.onFocus then
            if Central_Config.Alfabeto.Codigo[key] ~= nil then
                if string.len(Central_Config.TextArea.Senha.Text) < 8 then
                    Central_Config.TextArea.Senha.Text = Central_Config.TextArea.Senha.Text..Central_Config.Alfabeto.Codigo[key]
                    Central_Config.TextArea.Senha.timer = 0
                end
                return true
            end	
            if key == Keys.Tab then
                if CheckRepeatKey(Keys.ShiftKey) == 1 then
                    Central.ChangeFocus(1)
                else
                    Central.ChangeFocus(3)
                end
                return true
            end
        end

        if Central_Config.TextArea.ConfirmarSenha.onFocus then
            if Central_Config.Alfabeto.Codigo[key] ~= nil then
                if string.len(Central_Config.TextArea.ConfirmarSenha.Text) < 8 then
                    Central_Config.TextArea.ConfirmarSenha.Text = Central_Config.TextArea.ConfirmarSenha.Text..Central_Config.Alfabeto.Codigo[key]
                    Central_Config.TextArea.ConfirmarSenha.timer = 0
                end
                return true
            end	
            if key == Keys.Tab then
                if CheckRepeatKey(Keys.ShiftKey) == 1 then
                    Central.ChangeFocus(2)
                else
                    Central.ChangeFocus(1)
                end
                return true
            end
        end

        if key == Keys.Return then
            if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                Central.SendActiveCentral()
                return true
            end
        end
    end

    --if Central_Config.Page == 2 then
        if Central_Config.AlertWindow.Open then
            if Central_Config.AlertWindow.Id == 1 then
                if Central_Config.TextArea.SenhaAntiga.onFocus then 
                    if Central_Config.Alfabeto.Codigo[key] ~= nil then
                        if string.len(Central_Config.TextArea.SenhaAntiga.Text) < 8 then
                            Central_Config.TextArea.SenhaAntiga.Text = Central_Config.TextArea.SenhaAntiga.Text..Central_Config.Alfabeto.Codigo[key]
                            Central_Config.TextArea.SenhaAntiga.timer = 0
                        end
                        return true
                    end	
                    if key == Keys.Tab then
                        if CheckRepeatKey(Keys.ShiftKey) == 1 then
                            Central.ChangeFocus(3)
                        else
                            Central.ChangeFocus(2)
                        end
                        return true
                    end
                end

                if Central_Config.TextArea.Senha.onFocus then
                    if Central_Config.Alfabeto.Codigo[key] ~= nil then
                        if string.len(Central_Config.TextArea.Senha.Text) < 8 then
                            Central_Config.TextArea.Senha.Text = Central_Config.TextArea.Senha.Text..Central_Config.Alfabeto.Codigo[key]
                            Central_Config.TextArea.Senha.timer = 0
                        end
                        return true
                    end	
                    if key == Keys.Tab then
                        if CheckRepeatKey(Keys.ShiftKey) == 1 then
                            Central.ChangeFocus(4)
                        else
                            Central.ChangeFocus(3)
                        end
                        return true
                    end
                end

                if Central_Config.TextArea.ConfirmarSenha.onFocus then
                    if Central_Config.Alfabeto.Codigo[key] ~= nil then
                        if string.len(Central_Config.TextArea.ConfirmarSenha.Text) < 8 then
                            Central_Config.TextArea.ConfirmarSenha.Text = Central_Config.TextArea.ConfirmarSenha.Text..Central_Config.Alfabeto.Codigo[key]
                            Central_Config.TextArea.ConfirmarSenha.timer = 0
                        end
                        return true
                    end	
                    if key == Keys.Tab then
                        if CheckRepeatKey(Keys.ShiftKey) == 1 then
                            Central.ChangeFocus(2)
                        else
                            Central.ChangeFocus(4)
                        end
                        return true
                    end
                end

                if key == Keys.Return then
                    if Central_Config.TextArea.SenhaAntiga.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 and Central_Config.TextArea.Senha.Text == Central_Config.TextArea.ConfirmarSenha.Text then
                        Central.SendChangePassword()
                        return true
                    end
                end
            end

            if Central_Config.AlertWindow.Id == 2 then
                if Central_Config.TextArea.Apelido.onFocus then 
                    if Central_Config.Alfabeto.Apelido[key] ~= nil then
                        if string.len(Central_Config.TextArea.Apelido.Text) < 20 then
                            Central_Config.TextArea.Apelido.Text = Central_Config.TextArea.Apelido.Text..Central_Config.Alfabeto.Apelido[key]
                            Central_Config.TextArea.Apelido.timer = 0
                        end
                        return true
                    end
                    if key == Keys.Tab then
                        if CheckRepeatKey(Keys.ShiftKey) == 1 then
                            Central.ChangeFocus(2)
                        else
                            Central.ChangeFocus(2)
                        end
                        return true
                    end
                end
        
                if Central_Config.TextArea.Senha.onFocus then
                    if Central_Config.Alfabeto.Codigo[key] ~= nil then
                        if string.len(Central_Config.TextArea.Senha.Text) < 8 then
                            Central_Config.TextArea.Senha.Text = Central_Config.TextArea.Senha.Text..Central_Config.Alfabeto.Codigo[key]
                            Central_Config.TextArea.Senha.timer = 0
                        end
                        return true
                    end	
                    if key == Keys.Tab then
                        if CheckRepeatKey(Keys.ShiftKey) == 1 then
                            Central.ChangeFocus(1)
                        else
                            Central.ChangeFocus(1)
                        end
                        return true
                    end
                end

                if key == Keys.Return then
                    if Central_Config.TextArea.Apelido.Text:len() >= 4 and Central_Config.TextArea.Senha.Text:len() >= 4 then
                        Central.SendRegisterDevice()
                        return true
                    end
                end
            end

            if Central_Config.AlertWindow.Id == 3 then
                if Central_Config.TextArea.Senha.onFocus then
                    if Central_Config.Alfabeto.Codigo[key] ~= nil then
                        if string.len(Central_Config.TextArea.Senha.Text) < 8 then
                            Central_Config.TextArea.Senha.Text = Central_Config.TextArea.Senha.Text..Central_Config.Alfabeto.Codigo[key]
                            Central_Config.TextArea.Senha.timer = 0
                        end
                        return true
                    end	
                end

                if key == Keys.Return then
                    Central.SendDeleteDevice()
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 4 then
                if key == Keys.Return then
                    Central_Config.AlertWindow.Id = 1
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 5 then
                if key == Keys.Return then
                    Central_Config.AlertWindow.Open = false
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 6 then
                if key == Keys.Return then
                    Central_Config.AlertWindow.Id = 2
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 7 then
                if key == Keys.Return then
                    Central.UpdateDeviceList()
                    Central_Config.AlertWindow.Open = false
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 8 then
                if key == Keys.Return then
                    Central_Config.AlertWindow.Id = 3
                    return true
                end
            end

            if Central_Config.AlertWindow.Id == 9 then
                if key == Keys.Return then
                    Central.UpdateDeviceList()
                    Central_Config.AlertWindow.Open = false
                    return true
                end
            end
        end
    --end

    if Central_Config.Page == 3 then
        if key == Keys.Return then
            Central.Close()
            return true
        end
    end
end



function Central.Protocol(Packet, PacketName)
    if Packet ~= Central_Config.Packet then return false end

    local index = UserGetIndex()
    local name = UserGetName()

    if PacketName == string.format("3-%s-%d", name, index) or PacketName == string.format("2-%s-%d", name, index) then
        Central_Config.Status = GetBytePacket(PacketName, -1)
        local deviceCount = GetBytePacket(PacketName, -1)
        Central_Config.DeviceList = {}
        if deviceCount >= 1 then
            for pc = 1, deviceCount do
                local current = GetBytePacket(PacketName, -1)
                local len = GetBytePacket(PacketName, -1)
                local hwid = GetCharPacketLength(PacketName, -1, len)
                len = GetBytePacket(PacketName, -1)
                local ip = GetCharPacketLength(PacketName, -1, len)
                len = GetBytePacket(PacketName, -1)
                local apelido = GetCharPacketLength(PacketName, -1, len)
                table.insert(Central_Config.DeviceList, {HWID = hwid, IP = ip, APELIDO = apelido, Current = current})
            end
        end
        ClearPacket(PacketName)

        if PacketName == string.format("2-%s-%d", name, index) then
            Central.Open()
        else
            if Central_Config.WaitingRegisterResponse then
                Central_Config.Page = 2
            end
        end

        return true
    end

    if PacketName == string.format("6-%s-%d", name, index) then
        local response = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        if response == 0 then
            Central_Config.AlertWindow.Id = 4
        else
            Central_Config.AlertWindow.Id = 5
        end
        return true
    end

    if PacketName == string.format("8-%s-%d", name, index) then
        local response = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        if response == 0 then
            Central_Config.AlertWindow.Id = 6
        else
            Central_Config.AlertWindow.Id = 7
        end
        return true
    end

    if PacketName == string.format("11-%s-%d", name, index) then
        local response = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        if response == 0 then
            Central_Config.AlertWindow.Id = 8
        else
            Central_Config.AlertWindow.Id = 9
        end
        return true
    end

    if PacketName == string.format("12-%s-%d", name, index) then
        Central.OpenAlert()
        return true
    end
end

function Central.Update()
    local addX = WindowGetWidthAdd()
    local posX = WindowGetWidth()-190
    
    if Central.CheckOpen() then
        if MousePosX() >= posX and MousePosY() <= 427 then 
            --SetLockInterfaces()
            DisableClickClient()
        end

        if Central_Config.AlertWindow.Open then
            DisableClickClient()
        end
    end

    --if MousePosX() >= 526+addX and MousePosX() <= 526+addX+25 and MousePosY() >= 450 and MousePosY() <= 450+24 then
    --    if CheckRepeatKey(Keys.LButton) == 1 then
    --        if Central.CheckOpen() then
    --            Central.Open()
    --        else
    --            Central.Close()
    --        end
    --    end
    --end
end

function Central.UpdateKey()
    local addX = WindowGetWidthAdd()
    local posX = WindowGetWidth()-190

    if Central.CheckOpen() then
        if Central_Config.TextArea.Apelido.onFocus then
            if CheckWindowOpen(UIChatWindow) ~= 1 then
                if CheckRepeatKey(8) == 1 then
                    if string.len(Central_Config.TextArea.Apelido.Text) > 0 then
                        Central_Config.TextArea.Apelido.Text = Central_Config.TextArea.Apelido.Text:sub(1, -2)
                        DisableClickClient()
                        return
                    end
                end
            end
        end

        if Central_Config.TextArea.Senha.onFocus then
            if CheckWindowOpen(UIChatWindow) ~= 1 then
                if CheckRepeatKey(8) == 1 then
                    if string.len(Central_Config.TextArea.Senha.Text) > 0 then
                        Central_Config.TextArea.Senha.Text = Central_Config.TextArea.Senha.Text:sub(1, -2)
                        DisableClickClient()
                        return
                    end
                end
            end
        end

        if Central_Config.TextArea.ConfirmarSenha.onFocus then
            if CheckWindowOpen(UIChatWindow) ~= 1 then
                if CheckRepeatKey(8) == 1 then
                    if string.len(Central_Config.TextArea.ConfirmarSenha.Text) > 0 then
                        Central_Config.TextArea.ConfirmarSenha.Text = Central_Config.TextArea.ConfirmarSenha.Text:sub(1, -2)
                        DisableClickClient()
                        return
                    end
                end
            end
        end

        if MousePosX() >= posX and MousePosY() <= 427 then 
            DisableClickClient()
            --SetLockInterfaces()
        end
    end
end

function Central.SendActiveCentral()
    Central_Config.WaitingRegisterResponse = true

    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("4-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    local len = Central_Config.TextArea.Apelido.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Apelido.Text, len)
    len = Central_Config.TextArea.Senha.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Senha.Text, len)
    SendPacket(PacketName)
    ClearPacket(PacketName)

    Central_Config.TextArea.Apelido.Text = ""
    Central_Config.TextArea.Senha.Text = ""
    Central_Config.TextArea.ConfirmarSenha.Text = ""
    Central.ChangeFocus(0)
end

function Central.SendChangePassword()
    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("5-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    local len = Central_Config.TextArea.SenhaAntiga.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.SenhaAntiga.Text, len)
    len = Central_Config.TextArea.Senha.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Senha.Text, len)
    SendPacket(PacketName)
    ClearPacket(PacketName)

    Central_Config.TextArea.SenhaAntiga.Text = ""
    Central_Config.TextArea.Senha.Text = ""
    Central_Config.TextArea.ConfirmarSenha.Text = ""
    Central.ChangeFocus(0)
end

function Central.SendRegisterDevice()
    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("7-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    local len = Central_Config.TextArea.Apelido.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Apelido.Text, len)
    len = Central_Config.TextArea.Senha.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Senha.Text, len)
    SendPacket(PacketName)
    ClearPacket(PacketName)

    --Central_Config.TextArea.Apelido.Text = ""
    Central_Config.TextArea.Senha.Text = ""
    Central.ChangeFocus(0)
end

function Central.UpdateDeviceList()
    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("9-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Central.SendDeleteDevice()
    local index = UserGetIndex()
    local name = UserGetName()

    local PacketName = string.format("10-%s-%d", name, index)
    CreatePacket(PacketName, Central_Config.Packet)
    local len = Central_Config.TextArea.Senha.Text:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TextArea.Senha.Text, len)

    len = Central_Config.TargetDevice.HWID:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, Central_Config.TargetDevice.HWID, len)

    SendPacket(PacketName)
    ClearPacket(PacketName)

    Central_Config.TextArea.Senha.Text = ""
end

Central.Init()

return Central