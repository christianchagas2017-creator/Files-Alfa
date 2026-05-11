Profile = {}

function Profile.Init()
    InterfaceController.MainProc(Profile.Interface)
    InterfaceController.InterfaceClickEvent(Profile.ClickEvent)
    InterfaceController.UpdateKey(Profile.UpdateKey)
    InterfaceController.UpdateMouse(Profile.Update)
    InterfaceController.UpdateProc(Profile.Update)
    InterfaceController.ClientProtocol(Profile.Protocol)
    InterfaceController.MainProcWorldKey(Profile.KeyListener)
    InterfaceController.AfterScriptLoad(Profile.RegisterMenuButton)
    Profile.Define()
    Profile_Config.ProfileRpc = 0
    Profile_Config.ServerRpc = "Trade"
end

function Profile.Define()
    Profile.Visible = false
    Profile.WindowPos = {
        X = 120,
        Y = 80
    }
    Profile_Config.Button = {}
    Profile_Config.ButtonID = {
        fechar = 1,
        perfil = 2,
        buscar = 3,
        ok = 4,
        cancelar = 5,
        atualizar = 6,
        esquerda = 7,
        direita = 8
    }
    Profile_Config.Alfabeto = {
		[48] = "0",[49] = "1",[50] = "2",[51] = "3",[52] = "4",[53] = "5",[54] = "6",[55] = "7",[56] = "8",[57] = "9",[65] = "A",[66] = "B",[67] = "C",[68] = "D",[69] = "E",[70] = "F",[71] = "G",[72] = "H",[73] = "I",[74] = "J",[75] = "K",[76] = "L",[77] = "M",[78] = "N",[79] = "O",[80] = "P",[81] = "Q",[82] = "R",[83] = "S",[84] = "T",[85] = "U",[86] = "V",[87] = "W",[88] = "X",[89] = "Y",[90] = "Z",[96] = "0",[97] = "1",[98] = "2",[99] = "3",[100] = "4",[101] = "5",[102] = "6",[103] = "7",[104] = "8",[105] = "9", [109] = "-", [189] = "-"
	}
    Profile_Config.TextArea = {onFocus = false, timer = 0, Text = "", cursor = "|", Source = 0}
    Profile_Config.Inventory = {
        [0]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [1]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [2]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [3]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [4]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [5]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [6]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [7]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [8]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [9]   = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [10]  = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [11]  = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},

        [236] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0, Anc = 0},
        [237] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0, Anc = 0},
        [238] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0, Anc = 0},
        [239] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0, Anc = 0},

        [240] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [241] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [242] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [243] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [244] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [245] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [246] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [247] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
        [248] = {Index = -1, Level = 0, Skill = 0, Luck = 0, JoL = 0, Exc = 0},
    }
    Profile_Config.Status = -1
    Profile_Config.SelfEnabled = 0

    Profile_Config.SelfVip = 0
    Profile_Config.Info = {
        Name = "",
        Enabled = 0,
        Guild = "-",
        UpPoints = 0,
        MasterPoints = 0,
        MasterShield = 0,
        Mapa = "-",
        CoordX = 0,
        CoordY = 0,
        Mark = "0",
        Cargo = "-",
        Classe = 0,
        Strength = 0,
        Dexterity = 0,
        Energy = 0,
        Vitality = 0,
    }
    Profile_Config.AlertWindow = {
        Open = false,
        Type = 0
    }
    Profile_Config.PeekPrice = {Name = "-", Amount = 0}
    Profile_Config.InventoryPage = 0
    --Profile.WindowPos.X = Profile.WindowPos.X+WindowGetWidthAdd()
end

function Profile.DrawGuildLogo(gmark, posx, posy, size)
local Cores = {
    ["0"] = {0.0,0.0,0.0,0.0},
    ["1"] = {0.0,0.0,0.0,1.0},
    ["2"] = {0.5,0.5,0.5,1.0},
    ["3"] = {1.0,1.0,1.0,1.0},
    ["4"] = {1.0,0.0,0.0,1.0},
    ["5"] = {1.0,0.5,0.0,1.0},
    ["6"] = {1.0,1.0,0.0,1.0},
    ["7"] = {0.5,1.0,0.0,1.0},
    ["8"] = {0.0,1.0,0.0,1.0},
    ["9"] = {0.0,1.0,0.5,1.0},
    ["A"] = {0.0,1.0,1.0,1.0},
    ["B"] = {0.0,0.5,1.0,1.0},
    ["C"] = {0.0,0.0,1.0,1.0},
    ["D"] = {0.5,0.0,1.0,1.0},
    ["E"] = {1.0,0.0,1.0,1.0},
    ["F"] = {1.0,0.0,0.5,1.0}
    }  
    local linha = posx
    local coluna = posy
    local count = 1

    for i in string.gmatch(gmark, ".") do
        glColor4f(Cores[i][1], Cores[i][2], Cores[i][3], Cores[i][4])
        DrawBar(linha, coluna, size, size)
        linha = linha + size
        count = count + 1
        if count == 9 then
            coluna = coluna + size
            linha = posx
            count = 1
        end
    end
end

function Profile.CreateButton(ButtonID, x, y, w, h)
	if Profile_Config.Button[ButtonID] == nil then
		table.insert(Profile_Config.Button, ButtonID)
		Profile_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		Profile_Config.Button[ButtonID].x = x
		Profile_Config.Button[ButtonID].y = y
		Profile_Config.Button[ButtonID].w = w
		Profile_Config.Button[ButtonID].h = h
	end
end

function Profile.ButtonClicked(ButtonID)
	if Profile_Config.Button[ButtonID] == nil then return false end
	if Profile_Config.Button[ButtonID].clicked then
		if Profile_Config.Button[ButtonID].timer >= 2 then
			Profile_Config.Button[ButtonID].timer = 0
			Profile_Config.Button[ButtonID].clicked = false
			return false
		end
		Profile_Config.Button[ButtonID].timer = Profile_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function Profile.ButtonMouseOver(ButtonID, x, y)
	if Profile_Config.Button[ButtonID] == nil then return false end
	if x >= Profile_Config.Button[ButtonID].x and x <= (Profile_Config.Button[ButtonID].x+Profile_Config.Button[ButtonID].w) then
		if y >= Profile_Config.Button[ButtonID].y and y <= (Profile_Config.Button[ButtonID].y+Profile_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end

function Profile.RequestOpen()
    local name = UserGetName()
    local index = UserGetIndex()

    local PacketName = string.format("1-%s-%d", name, index)
    CreatePacket(PacketName, Profile_Config.Packet)
    SendPacket(PacketName)
    ClearPacket(PacketName)

    PacketName = string.format("7-%s-%d", name, index)
    CreatePacket(PacketName, Profile_Config.Packet)
    local len = name:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, name, len)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Profile.Open()
    Profile.Visible = true
end

function Profile.Close()
    Profile.Visible = false
    Profile.Define()    
end

function Profile.CheckOpen()
    return Profile.Visible
end

function Profile.Interface(X, Y)
    if not Profile.CheckOpen() then return end
    Profile.WindowPos.X = X
    Profile.WindowPos.Y = Y
    Profile.CreateButton(Profile_Config.ButtonID.fechar, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.perfil, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.buscar, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.ok, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.cancelar, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.atualizar, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.esquerda, 0, 0, 0, 0)
    Profile.CreateButton(Profile_Config.ButtonID.direita, 0, 0, 0, 0)

    EnableAlphaTest()
    RenderImage(41004, Profile.WindowPos.X+136, Profile.WindowPos.Y+5, 127, 26)

    SetFontType(1)
    SetTextBg(0,0,0, 0)
    SetTextColor(255,255,255,200)
    RenderText3(Profile.WindowPos.X+200, Profile.WindowPos.Y+9, Profile_Config.Texts[GetLanguage()][1], 150, 8)

    --#region botao esquerda
    Profile.CreateButton(Profile_Config.ButtonID.perfil, Profile.WindowPos.X+75, Profile.WindowPos.Y+36, 100, 25)
    DrawButton.Large(0, Profile.WindowPos.X+75, Profile.WindowPos.Y+36, 100, 25)
    if Profile_Config.SelfVip > 0 then
        if Profile.ButtonMouseOver(Profile_Config.ButtonID.perfil, MousePosX(), MousePosY()) then
            if not Profile.ButtonClicked(Profile_Config.ButtonID.perfil) then
                DrawButton.Large(1, Profile.WindowPos.X+75, Profile.WindowPos.Y+36, 100, 25)
            else
                DrawButton.Large(2, Profile.WindowPos.X+75, Profile.WindowPos.Y+36, 100, 25)
            end
        end
    else
        DrawButton.Large(2, Profile.WindowPos.X+75, Profile.WindowPos.Y+36, 100, 25)
    end
    SetFontType(1)
    SetTextBg(0,0,0, 0)
    if Profile_Config.SelfVip > 0 then
        SetTextColor(237, 214, 161, 255)
    else
        SetTextColor(100,100,100,255)
    end
    local st = 27
    if Profile_Config.SelfEnabled == 1 then
        st = 28
    end
    RenderText3(Profile.WindowPos.X+126, Profile.WindowPos.Y+44, string.format(Profile_Config.Texts[GetLanguage()][4], Profile_Config.Texts[GetLanguage()][st]), 150, 8)
    --#endregion

    --#region botao direita
    Profile.CreateButton(Profile_Config.ButtonID.buscar, Profile.WindowPos.X+215, Profile.WindowPos.Y+36, 100, 25)
    DrawButton.Large(0, Profile.WindowPos.X+215, Profile.WindowPos.Y+36, 110, 25)
        if Profile.ButtonMouseOver(Profile_Config.ButtonID.buscar, MousePosX(), MousePosY()) then
            if not Profile.ButtonClicked(Profile_Config.ButtonID.buscar) then
                DrawButton.Large(1, Profile.WindowPos.X+215, Profile.WindowPos.Y+36, 110, 25)
            else
                DrawButton.Large(2, Profile.WindowPos.X+215, Profile.WindowPos.Y+36, 110, 25)
            end
        end
    SetFontType(1)
    SetTextBg(0,0,0, 0)
    SetTextColor(237, 214, 161, 255)
    RenderText3(Profile.WindowPos.X+270, Profile.WindowPos.Y+44, Profile_Config.Texts[GetLanguage()][5], 150, 8)
    --#endregion

    if Profile_Config.Status >= 0 and  Profile_Config.Status <= 3 then
        Profile_Config.Status = -1
    end

    if Profile_Config.Info.Enabled == 1 then
        local addY = 12 --32
        DisableAlphaBlend()
        SetBlend(1)
        glColor4f(0.0, 0.0, 0.0, 0.6)
        DrawBar(Profile.WindowPos.X+23, Profile.WindowPos.Y+addY+70, 170, 208)
        DrawBar(Profile.WindowPos.X+198, Profile.WindowPos.Y+addY+70, 170, 208)
        glColor4f(0.54, 0.422, 0.2322, 0.7)
        DrawBar(Profile.WindowPos.X+20, Profile.WindowPos.Y+addY+69, 172, 1)
        DrawBar(Profile.WindowPos.X+192, Profile.WindowPos.Y+addY+69, 1, 210)
        DrawBar(Profile.WindowPos.X+20, Profile.WindowPos.Y+addY+69, 1, 210)
        DrawBar(Profile.WindowPos.X+20, Profile.WindowPos.Y+addY+278, 172, 1)

        DrawBar(Profile.WindowPos.X+198, Profile.WindowPos.Y+addY+69, 172, 1)
        DrawBar(Profile.WindowPos.X+369, Profile.WindowPos.Y+addY+69, 1, 210)
        DrawBar(Profile.WindowPos.X+197, Profile.WindowPos.Y+addY+69, 1, 210)
        DrawBar(Profile.WindowPos.X+198, Profile.WindowPos.Y+addY+278, 172, 1)

        EndDrawBar()
        EnableAlphaTest()

	    if Profile_Config.Info.Classe ~= 3 then
	    	RenderImage2(542038, Profile.WindowPos.X+Profile_Config.SlotPosition[2].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[2].Y,   38, 38, 0.001, 0.001, 0.6866368, 0.6906368, 1, 1, 1.0) --SLOT HELM
        end

            RenderImage2(542036, Profile.WindowPos.X+Profile_Config.SlotPosition[0].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[0].Y,   38, 57, 0.001, 0.001, 0.6856368, 0.5186368, 1, 1, 1.0) --SLOT WEAPON RIGHT
            RenderImage2(542037, Profile.WindowPos.X+Profile_Config.SlotPosition[1].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[1].Y,   38, 57, 0.001, 0.001, 0.6856368, 0.5186368, 1, 1, 1.0) --SLOT WEAPON LEFT (SHIELD)
            RenderImage2(542039, Profile.WindowPos.X+Profile_Config.SlotPosition[3].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[3].Y,   38, 57, 0.001, 0.001, 0.6856368, 0.5186368, 1, 1, 1.0) --SLOT ARMOR
            RenderImage2(542041, Profile.WindowPos.X+Profile_Config.SlotPosition[4].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[4].Y,   38, 38, 0.001, 0.001, 0.6866368, 0.6906368, 1, 1, 1.0) --SLOT PANTS
            RenderImage2(542042, Profile.WindowPos.X+Profile_Config.SlotPosition[6].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[6].Y,   38, 38, 0.001, 0.001, 0.6866368, 0.6906368, 1, 1, 1.0) --SLOT GLOVES
            RenderImage2(542040, Profile.WindowPos.X+Profile_Config.SlotPosition[5].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[5].Y,   38, 38, 0.001, 0.001, 0.6866368, 0.6906368, 1, 1, 1.0) --SLOT BOOTS
            RenderImage2(542044, Profile.WindowPos.X+Profile_Config.SlotPosition[7].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[7].Y,   57, 38, 0.001, 0.001, 0.5166368, 0.6886368, 1, 1, 1.0) --SLOT WING
            RenderImage2(542043, Profile.WindowPos.X+Profile_Config.SlotPosition[8].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[8].Y,   38, 38, 0.001, 0.001, 0.6866368, 0.6906368, 1, 1, 1.0) --SLOT PET

	    if Profile_Config.InventoryPage == 0 then
		    RenderImage2(542045, Profile.WindowPos.X+Profile_Config.SlotPosition[9].X,   Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[9].Y,   18, 18, 0.001, 0.002, 0.7266368, 0.7096368, 1, 1, 1.0) --SLOT PENDANT
		    RenderImage2(542046, Profile.WindowPos.X+Profile_Config.SlotPosition[10].X,  Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[10].Y,  18, 18, 0.001, 0.010, 0.7266368, 0.7096368, 1, 1, 1.0) --SLOT RING RIGHT
		    RenderImage2(542046, Profile.WindowPos.X+Profile_Config.SlotPosition[11].X,  Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[11].Y,  18, 18, 0.001, 0.010, 0.7266368, 0.7096368, 1, 1, 1.0) --SLOT RING LEFT
		    RenderImage2(160535, Profile.WindowPos.X+Profile_Config.SlotPosition[236].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[236].Y, 18, 18, 0.001, 0.001, 0.7176368, 0.7096368, 1, 1, 1.0) --SLOT EAGLE
		    RenderImage2(160536, Profile.WindowPos.X+Profile_Config.SlotPosition[239].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[237].Y, 18, 18, 0.001, 0.001, 0.7286368, 0.7096368, 1, 1, 1.0) --SLOT AUXILIAR
		    RenderImage2(160537, Profile.WindowPos.X+Profile_Config.SlotPosition[238].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[238].Y, 18, 18, 0.001, 0.001, 0.7066368, 0.7096368, 1, 1, 1.0) --SLOT EARRING RIGHT
		    RenderImage2(160537, Profile.WindowPos.X+Profile_Config.SlotPosition[237].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[239].Y, 18, 18, 0.001, 0.001, 0.7066368, 0.7096368, 1, 1, 1.0) --SLOT EARRING LEFT
        end

        Profile.CreateButton(Profile_Config.ButtonID.atualizar, Profile.WindowPos.X+350, Profile.WindowPos.Y+addY+75, 13, 13)
        if Profile.ButtonMouseOver(Profile_Config.ButtonID.atualizar, MousePosX(), MousePosY()) then
            DrawButton.Reload(1, Profile.WindowPos.X+350, Profile.WindowPos.Y+addY+75, 13, 13)
            DrawTooltip(Profile.WindowPos.X+353, Profile.WindowPos.Y+addY+65, Profile_Config.Texts[GetLanguage()][35])
        else
            DrawButton.Reload(0, Profile.WindowPos.X+350, Profile.WindowPos.Y+addY+75, 13, 13)
        end

        --#region BUTTON SETA ESQUERDA
            local stateLeft = 0
            Profile.CreateButton(Profile_Config.ButtonID.esquerda, Profile.WindowPos.X+26, Profile.WindowPos.Y+addY+75, 25, 24)
            if not Profile.ButtonClicked(Profile_Config.ButtonID.esquerda) then			
                if Profile.ButtonMouseOver(Profile_Config.ButtonID.esquerda, MousePosX(), MousePosY()) then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        stateLeft = 2
                    else
                        stateLeft = 1
                    end
                else
                    stateLeft = 0
                end
            else
                stateLeft = 3
            end

            if Profile_Config.InventoryPage == 0 then
                DrawButton.ArrowLeft(3, Profile.WindowPos.X+26, Profile.WindowPos.Y+addY+75, 25, 24 )
            else
                DrawButton.ArrowLeft(stateLeft, Profile.WindowPos.X+26, Profile.WindowPos.Y+addY+75, 25, 24 )
            end
        --#endregion

        --#region BUTTON SETA DIREITA
            local stateRight = 0
            Profile.CreateButton(Profile_Config.ButtonID.direita, Profile.WindowPos.X+163, Profile.WindowPos.Y+addY+75, 25, 24)
            if not Profile.ButtonClicked(Profile_Config.ButtonID.direita) then			
                if Profile.ButtonMouseOver(Profile_Config.ButtonID.direita, MousePosX(), MousePosY()) then
                    if CheckRepeatKey(Keys.LButton) == 1 then
                        stateRight = 2
                    else
                        stateRight = 1
                    end
                else
                    stateRight = 0
                end
            else
                stateRight = 3
            end

            if Profile_Config.InventoryPage == 0 then
                DrawButton.ArrowRight(stateRight, Profile.WindowPos.X+163, Profile.WindowPos.Y+addY+75, 25, 24 )
            else
                DrawButton.ArrowRight(3, Profile.WindowPos.X+163, Profile.WindowPos.Y+addY+75, 25, 24 )
            end
        --#endregion

        local msg = 3
	    if Profile_Config.InventoryPage == 1 then
            msg = 39
        end
        SetFontType(1)
        SetTextBg(0,0,0, 0)
        SetTextColor(255,255,255,255)
        RenderText3(Profile.WindowPos.X+107, Profile.WindowPos.Y+addY+80, Profile_Config.Texts[GetLanguage()][msg]:format(Profile_Config.Info.Name), 150, 8)
        RenderText3(Profile.WindowPos.X+285, Profile.WindowPos.Y+addY+80, Profile_Config.Texts[GetLanguage()][9], 150, 8)
        RenderText3(Profile.WindowPos.X+285, Profile.WindowPos.Y+addY+130, Profile_Config.Texts[GetLanguage()][23], 150, 8)
        RenderText3(Profile.WindowPos.X+285, Profile.WindowPos.Y+addY+185, Profile_Config.Texts[GetLanguage()][24], 150, 8)
        RenderText3(Profile.WindowPos.X+285, Profile.WindowPos.Y+addY+227, Profile_Config.Texts[GetLanguage()][10], 150, 8)

        SetTextColor(255,204,0,255)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+95, Profile_Config.Texts[GetLanguage()][18], 45, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+105, Profile_Config.Texts[GetLanguage()][19], 45, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+115, Profile_Config.Texts[GetLanguage()][21], 45, 1)

        RenderText3(Profile.WindowPos.X+280, Profile.WindowPos.Y+addY+95, Profile_Config.Texts[GetLanguage()][17], 45, 1)
        RenderText3(Profile.WindowPos.X+280, Profile.WindowPos.Y+addY+105, Profile_Config.Texts[GetLanguage()][20], 45, 1)
        RenderText3(Profile.WindowPos.X+280, Profile.WindowPos.Y+addY+115, Profile_Config.Texts[GetLanguage()][22], 45, 1)

        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+145, Profile_Config.Texts[GetLanguage()][11], 45, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+155, Profile_Config.Texts[GetLanguage()][12], 45, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+165, Profile_Config.Texts[GetLanguage()][13], 45, 1)

        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+200, Profile_Config.Texts[GetLanguage()][14], 60, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+210, Profile_Config.Texts[GetLanguage()][15], 60, 1)
        RenderText3(Profile.WindowPos.X+280, Profile.WindowPos.Y+addY+210, Profile_Config.Texts[GetLanguage()][16], 60, 1)

        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+245, Profile_Config.Texts[GetLanguage()][25], 60, 1)
        RenderText3(Profile.WindowPos.X+205, Profile.WindowPos.Y+addY+260, Profile_Config.Texts[GetLanguage()][26], 60, 1)

        SetFontType(0)
        SetTextColor(255,255,255,255)
        RenderText3(Profile.WindowPos.X+240, Profile.WindowPos.Y+addY+95, Profile_Config.Info.Level, 50, 2)
        RenderText3(Profile.WindowPos.X+240, Profile.WindowPos.Y+addY+105, Profile_Config.Info.Strength, 50, 2)
        RenderText3(Profile.WindowPos.X+240, Profile.WindowPos.Y+addY+115, Profile_Config.Info.Energy, 50, 2)

        RenderText3(Profile.WindowPos.X+320, Profile.WindowPos.Y+addY+95, Profile_Config.Classe[Profile_Config.Info.Classe], 50, 2)
        RenderText3(Profile.WindowPos.X+320, Profile.WindowPos.Y+addY+105, Profile_Config.Info.Dexterity, 50, 2)
        RenderText3(Profile.WindowPos.X+320, Profile.WindowPos.Y+addY+115, Profile_Config.Info.Vitality, 50, 2)

        RenderText3(Profile.WindowPos.X+255, Profile.WindowPos.Y+addY+145, Profile_Config.Info.UpPoints, 100, 2)
        RenderText3(Profile.WindowPos.X+255, Profile.WindowPos.Y+addY+155, Profile_Config.Info.MasterPoints, 100, 2)
        RenderText3(Profile.WindowPos.X+255, Profile.WindowPos.Y+addY+165, Profile_Config.Info.MasterShield, 100, 2)

        RenderText3(Profile.WindowPos.X+235, Profile.WindowPos.Y+addY+200, Profile_Config.Mapa[Profile_Config.Info.Mapa], 100, 2)
        RenderText3(Profile.WindowPos.X+265, Profile.WindowPos.Y+addY+210, Profile_Config.Info.CoordX, 100, 2)
        RenderText3(Profile.WindowPos.X+340, Profile.WindowPos.Y+addY+210, Profile_Config.Info.CoordY, 100, 2)

        RenderText3(Profile.WindowPos.X+235, Profile.WindowPos.Y+addY+245, Profile_Config.Info.Guild, 100, 2)
        RenderText3(Profile.WindowPos.X+235, Profile.WindowPos.Y+addY+260, Profile_Config.Info.Cargo, 100, 2)

        DisableAlphaBlend()
        SetBlend(1)

        if Profile_Config.Info.Guild ~= "Sem guild" then
            Profile.DrawGuildLogo(Profile_Config.Info.Mark, Profile.WindowPos.X+320, Profile.WindowPos.Y+addY+240, 4)
        end
        EndDrawBar()

        if Profile_Config.InventoryPage == 0 then
            for slot = 0, 11 do
                if Profile_Config.Inventory[slot].Index ~= -1 then
                    CreateItem(Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y, Profile_Config.SlotPosition[slot].W, Profile_Config.SlotPosition[slot].H, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, 0, 0, 1.1)
                    EndDrawBar()
                end
		    end
            for slot = 236, 239 do
                if Profile_Config.Inventory[slot].Index ~= -1 then
                    CreateItem(Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y, Profile_Config.SlotPosition[slot].W, Profile_Config.SlotPosition[slot].H, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, 0, 0, 1.1)
                    EndDrawBar()
                end
		    end

            if not Profile_Config.AlertWindow.Open then
                for slot = 0, 11 do
                    if Profile_Config.Inventory[slot].Index ~= -1 then
                        if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X+Profile_Config.SlotPosition[slot].W then
                            if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y+Profile_Config.SlotPosition[slot].H then
                                SetBlend(1)
                                ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                --ShowItemDescription(MousePosX(), MousePosY(), Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                EndDrawBar()                       
                            end
                        end
                    end
                end
                --for slot = 236, 238 do
                --    if Profile_Config.Inventory[slot].Index ~= -1 then
                --        if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X+Profile_Config.SlotPosition[slot].W then
                --            if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y+Profile_Config.SlotPosition[slot].H then
                --                SetBlend(1)
                --                --ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                --                ShowItemDescription(MousePosX(), MousePosY(), Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                --                EndDrawBar()                            
                --            end
                --        end
                --    end
                --end

                if Profile_Config.Inventory[236].Index ~= -1 then
                    if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[236].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[236].X+Profile_Config.SlotPosition[236].W then
                        if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[236].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[236].Y+Profile_Config.SlotPosition[236].H then
                            SetBlend(1)
                            --ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[236].Index, Profile_Config.Inventory[236].Level, Profile_Config.Inventory[236].Skill, Profile_Config.Inventory[236].Luck, Profile_Config.Inventory[236].JoL, 255, Profile_Config.Inventory[236].Exc, 0)
                            ShowItemDescription(MousePosX(), MousePosY(), Profile_Config.Inventory[236].Index, Profile_Config.Inventory[236].Level, Profile_Config.Inventory[236].Skill, Profile_Config.Inventory[236].Luck, Profile_Config.Inventory[236].JoL, 255, Profile_Config.Inventory[236].Exc, Profile_Config.Inventory[236].Anc)
                            EndDrawBar()
                        end
                    end
                end

                if Profile_Config.Inventory[237].Index ~= -1 then
                    if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[237].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[237].X+Profile_Config.SlotPosition[237].W then
                        if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[237].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[237].Y+Profile_Config.SlotPosition[237].H then
                            SetBlend(1)
                            --ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[237].Index, Profile_Config.Inventory[237].Level, Profile_Config.Inventory[237].Skill, Profile_Config.Inventory[237].Luck, Profile_Config.Inventory[237].JoL, 255, Profile_Config.Inventory[237].Exc, 0)
                            ShowItemDescription(MousePosX(), MousePosY()-180, Profile_Config.Inventory[237].Index, Profile_Config.Inventory[237].Level, Profile_Config.Inventory[237].Skill, Profile_Config.Inventory[237].Luck, Profile_Config.Inventory[237].JoL, 255, Profile_Config.Inventory[237].Exc, 0)
                            EndDrawBar()                 
                        end
                    end
                end

                for slot = 238, 239 do
                    if Profile_Config.Inventory[237].Index ~= -1 then
                        if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X+Profile_Config.SlotPosition[slot].W then
                            if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y+Profile_Config.SlotPosition[slot].H then
                                SetBlend(1)
                                --ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                ShowItemDescription(MousePosX(), MousePosY(), Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                EndDrawBar()                            
                            end
                        end
                    end
                end
            end
        else
            for slot = 240, 248 do
                if Profile_Config.Inventory[slot].Index ~= -1 then
                    CreateItem(Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X, Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y, Profile_Config.SlotPosition[slot].W, Profile_Config.SlotPosition[slot].H, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, 0, 0, 1.1)
                    EndDrawBar()
                end
		    end
            if not Profile_Config.AlertWindow.Open then
                for slot = 240, 248 do
                    if Profile_Config.Inventory[slot].Index ~= -1 then
                        if MousePosX() >= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X and MousePosX() <= Profile.WindowPos.X+Profile_Config.SlotPosition[slot].X+Profile_Config.SlotPosition[slot].W then
                            if MousePosY() > Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y and MousePosY() <= Profile.WindowPos.Y+addY+Profile_Config.SlotPosition[slot].Y+Profile_Config.SlotPosition[slot].H then
                                SetBlend(1)
                                --ShowItemDescription(MousePosX()+100, MousePosY()+90, Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                ShowItemDescription(MousePosX(), MousePosY(), Profile_Config.Inventory[slot].Index, Profile_Config.Inventory[slot].Level, Profile_Config.Inventory[slot].Skill, Profile_Config.Inventory[slot].Luck, Profile_Config.Inventory[slot].JoL, 255, Profile_Config.Inventory[slot].Exc, 0)
                                EndDrawBar()                            
                            end
                        end
                    end
                end
            end
        end
    end

    if Profile_Config.AlertWindow.Open then
        NewMenu_Config.DisableMouse = true
        local addX = WindowGetWidthAdd()
        glColor3f(1.0, 1.0, 1.0)

        EnableAlphaTest()
        if Profile_Config.AlertWindow.Type == 0 or Profile_Config.AlertWindow.Type == 7 then
            DrawInterface.InfoBox(true, 205+addX, 90, 225, 1, false)

            if Profile_Config.AlertWindow.Type == 0 then
                SetFontType(7)
                SetTextBg(0,0,0, 0)
                SetTextColor(250,180,0,255)
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][29], 200, 8)

                --RenderImage(0X7AA1, 205+addX, 140, 190, 26)
                RenderImage2(600064, 252+addX, 140, 133, 18, 0.002, 0.01, 0.994234, 0.7074928, 1, 1, 1.0);

                RenderText3(320+addX, 146, "                                                          ", 133, 8)
                SetFontType(0)
                SetTextBg(0,0,0, 0)
                SetTextColor(255, 255, 255, 255)
                if Profile_Config.TextArea.onFocus then
                    if Profile_Config.TextArea.timer >= 8 then
                        if Profile_Config.TextArea.timer >= 16 then				
                            Profile_Config.TextArea.timer = 0
                        end
                        RenderText3(320+addX, 145, Profile_Config.TextArea.Text, 133, 8)
                    else
                        RenderText3(320+addX, 145, Profile_Config.TextArea.Text..Profile_Config.TextArea.cursor, 133, 8)
                    end
                    Profile_Config.TextArea.timer = Profile_Config.TextArea.timer + 1
                else
                    Profile_Config.TextArea.timer = 0
                    RenderText3(320+addX, 145, Profile_Config.TextArea.Text, 133, 8)
                end
            else
                SetFontType(7)
                SetTextBg(0,0,0, 0)
                SetTextColor(240,67,67,255)
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][34], 200, 8)

                SetFontType(1)
                SetTextColor(255,255,255,255)
                RenderText3(320+addX, 145, string.format(Profile_Config.Texts[GetLanguage()][36], Profile_Config.PeekPrice.Amount, Profile_Config.PeekPrice.Name), 225, 8)               
            end

            Profile.CreateButton(Profile_Config.ButtonID.ok, 240+addX, 172, 60, 18)
            DrawButton.Medium(0, 240+addX, 172, 60, 18)
            if Profile.ButtonMouseOver(Profile_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 240+addX, 172, 60, 18)
            end

            Profile.CreateButton(Profile_Config.ButtonID.cancelar, 340+addX, 172, 60, 18)
            DrawButton.Medium(0, 340+addX, 172, 60, 18)
            if Profile.ButtonMouseOver(Profile_Config.ButtonID.cancelar, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 340+addX, 172, 60, 18)
            end

            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(270+addX, 177, "OK", 60, 8)
            RenderText3(370+addX, 177, Profile_Config.Texts[GetLanguage()][40], 60, 8)
        else
            DrawInterface.InfoBox(false, 205+addX, 90, 225, 0, false)

            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(255,255,255,255)
            if Profile_Config.AlertWindow.Type == 1 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][31], 225, 8)
            elseif Profile_Config.AlertWindow.Type == 2 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][30], 225, 8)
            elseif Profile_Config.AlertWindow.Type == 3 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][32], 225, 8)
            elseif Profile_Config.AlertWindow.Type == 4 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][33], 225, 8)
            elseif Profile_Config.AlertWindow.Type == 5 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][37], 225, 8)
            elseif Profile_Config.AlertWindow.Type == 6 then
                RenderText3(320+addX, 107, Profile_Config.Texts[GetLanguage()][38], 225, 8)
            end

            Profile.CreateButton(Profile_Config.ButtonID.ok, 290+addX, 135, 60, 18)
            DrawButton.Medium(0, 290+addX, 135, 60, 18)
            if Profile.ButtonMouseOver(Profile_Config.ButtonID.ok, MousePosX(), MousePosY()) then
                DrawButton.Medium(1, 290+addX, 135, 60, 18)
            end

            SetFontType(1)
            SetTextBg(0,0,0, 0)
            SetTextColor(237, 214, 161, 255)
            RenderText3(320+addX, 140, "OK", 60, 8)
        end
        DisableAlphaBlend()
    else
        NewMenu_Config.DisableMouse = false
    end
end

function Profile.ClickEvent()
    if not Profile.CheckOpen() then return false end

    if not Profile_Config.AlertWindow.Open then
        if Profile.ButtonMouseOver(Profile_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
            Profile.Close()
            return true
        end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.perfil, MousePosX(), MousePosY()) then
            if Profile_Config.SelfVip > 0 then
                local st = 0
                if Profile_Config.SelfEnabled == 0 then
                    st = 1
                end
                Profile.SendProfileStatus(st)
            end
            return true
        end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.buscar, MousePosX(), MousePosY()) then
            Profile_Config.AlertWindow.Type = 0
            Profile_Config.AlertWindow.Open = true
            return true
        end

        if not Profile_Config.Info.Enabled then return true end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.esquerda, MousePosX(), MousePosY()) then
            Profile_Config.Button[Profile_Config.ButtonID.esquerda].clicked  = true
            if Profile_Config.InventoryPage == 1 then
                Profile_Config.InventoryPage = 0
            end
            return true
        end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.direita, MousePosX(), MousePosY()) then
            Profile_Config.Button[Profile_Config.ButtonID.direita].clicked  = true
            if Profile_Config.InventoryPage == 0 then
                Profile_Config.InventoryPage = 1
            end
            return true
        end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.atualizar, MousePosX(), MousePosY()) then
            Profile.SendGetInfo(Profile_Config.Info.Name, 0)
            return true
        end

        return true
    end

    if Profile_Config.AlertWindow.Type == 0 or Profile_Config.AlertWindow.Type == 7 then
        if Profile.ButtonMouseOver(Profile_Config.ButtonID.ok, MousePosX(), MousePosY()) then
            local nome = Profile_Config.TextArea.Text
            local paid = 0
            if Profile_Config.AlertWindow.Type == 7 then
                nome = Profile_Config.Info.Name
                paid = 1
            end
            if nome:len() >= 1 then
                Profile.SendGetInfo(nome, paid)
            end
        end

        if Profile.ButtonMouseOver(Profile_Config.ButtonID.cancelar, MousePosX(), MousePosY()) or Profile.ButtonMouseOver(Profile_Config.ButtonID.ok, MousePosX(), MousePosY()) then
            Profile_Config.AlertWindow.Open = false
            Profile_Config.TextArea.Text = ""
            return true
        end
    end

    if Profile.ButtonMouseOver(Profile_Config.ButtonID.ok, MousePosX(), MousePosY()) then
        Profile_Config.AlertWindow.Open = false
    end

    return true
end

function Profile.KeyListener(key)
    if not Profile.CheckOpen() then return false end

    if not Profile_Config.AlertWindow.Open then return false end

    if Profile_Config.AlertWindow.Type ~= 0 then return false end

    if CheckWindowOpen(UIChatWindow) == 1 then return false end

    if Profile_Config.Alfabeto[key] == nil then return true end

    if string.len(Profile_Config.TextArea.Text) >= 10 then return true end

    local letra = Profile_Config.Alfabeto[key]

    if key == Keys.OemMinus and (CheckRepeatKey(Keys.ShiftKey) == 1 or CheckRepeatKey(Keys.RShiftKey) == 1) then
        letra = "_"
    end

    Profile_Config.TextArea.Text = Profile_Config.TextArea.Text..letra

    Profile_Config.TextArea.timer = 0
    return true
end

function Profile.UpdateKey()
    if not Profile.CheckOpen() then return end

    if CheckWindowOpen(UIChatWindow) == 1 then return end

    DisableClickClient()

    if CheckPressedKey(Keys.Escape) == 1 then
        Profile_Config.AlertWindow.Open = false
        Profile_Config.TextArea.Text = ""
        return true
    end

    if CheckPressedKey(Keys.Back) == 1 and Profile_Config.AlertWindow.Type == 0 then
        if string.len(Profile_Config.TextArea.Text) <= 0 then return end
        Profile_Config.TextArea.Text = Profile_Config.TextArea.Text:sub(1, -2)
        return
    end

    if CheckPressedKey(Keys.Return) == 1 and (Profile_Config.AlertWindow.Type == 0 or Profile_Config.AlertWindow.Type == 7) then
        local nome = Profile_Config.TextArea.Text
        local paid = 0

        if Profile_Config.AlertWindow.Type == 7 then
            nome = Profile_Config.Info.Name
            paid = 1
        end

        if nome:len() >= 1 then
            Profile.SendGetInfo(nome, paid)
            Profile_Config.AlertWindow.Open = false
            Profile_Config.TextArea.Text = ""
        end
    end
end

function Profile.Update()
    if not Profile.CheckOpen() then return end

    DisableClickClient()
end

function Profile.Protocol(Packet, PacketName)
    if Packet ~= Profile_Config.Packet then return false end

    local name = UserGetName()
    local index = UserGetIndex()


    if PacketName == string.format("2-%s-%d", name, index) then
        local se = GetBytePacket(PacketName, -1)
        local sv = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        Profile_Config.SelfEnabled = se
        Profile_Config.SelfVip = sv
        Profile.Open()
        return true
    end
    if PacketName == string.format("6-%s-%d", name, index) then
        local se = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        Profile_Config.SelfEnabled = se
        if se == 1 then
            Profile_Config.AlertWindow.Type = 1
        else
            Profile_Config.AlertWindow.Type = 2
        end
        Profile_Config.AlertWindow.Open = true
        Profile.Open()
        return true
    end

    if PacketName == string.format("4-%s-%d", name, index) then
        local status = GetBytePacket(PacketName, -1)

        if status == 0 then
            ClearPacket(PacketName)
            Profile_Config.AlertWindow.Type = 3
            Profile_Config.AlertWindow.Open = true
            return true
        end

        if status == 1 then
            ClearPacket(PacketName)
            Profile_Config.AlertWindow.Type = 4
            Profile_Config.AlertWindow.Open = true
            return true
        end

        if status == 2 then
            ClearPacket(PacketName)
            Profile_Config.AlertWindow.Type = 5
            Profile_Config.AlertWindow.Open = true
            return true
        end

        if status == 3 then
            Profile_Config.AlertWindow.Type = 6
            Profile_Config.AlertWindow.Open = true
        end

        if status == 4 then
            local enabled = GetBytePacket(PacketName, -1)

            if enabled == 0 then            
                local len = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Name = GetCharPacketLength(PacketName, -1, len)
                Profile_Config.PeekPrice.Amount = GetDwordPacket(PacketName, -1)
                len = GetBytePacket(PacketName, -1)
                Profile_Config.PeekPrice.Name = GetCharPacketLength(PacketName, -1, len)
                Profile_Config.AlertWindow.Type = 7
                Profile_Config.AlertWindow.Open = true
            end

            if enabled == 1 then         
                for slot = 0, 11 do
                    Profile_Config.Inventory[slot].Index = GetWordPacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Level = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Skill = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Luck = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].JoL = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Exc = GetBytePacket(PacketName, -1)
                end
                for slot = 236, 239 do
                    Profile_Config.Inventory[slot].Index = GetWordPacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Level = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Skill = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Luck = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].JoL = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Exc = GetBytePacket(PacketName, -1)
                    --Profile_Config.Inventory[slot].Anc = GetBytePacket(PacketName, -1)
                end
                for slot = 240, 248 do
                    Profile_Config.Inventory[slot].Index = GetWordPacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Level = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Skill = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Luck = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].JoL = GetBytePacket(PacketName, -1)
                    Profile_Config.Inventory[slot].Exc = GetBytePacket(PacketName, -1)
                end

                local len = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Name = GetCharPacketLength(PacketName, -1, len)
                len = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Guild = GetCharPacketLength(PacketName, -1, len)
                Profile_Config.Info.UpPoints = GetDwordPacket(PacketName, -1)
                Profile_Config.Info.MasterPoints = GetDwordPacket(PacketName, -1)
                Profile_Config.Info.MasterShield = GetDwordPacket(PacketName, -1)
                Profile_Config.Info.Mapa = GetBytePacket(PacketName, -1)
                Profile_Config.Info.CoordX = GetBytePacket(PacketName, -1)
                Profile_Config.Info.CoordY = GetBytePacket(PacketName, -1)
                len = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Cargo = GetCharPacketLength(PacketName, -1, len)
                len = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Mark = GetCharPacketLength(PacketName, -1, len)
                Profile_Config.Info.Classe = GetBytePacket(PacketName, -1)
                Profile_Config.Info.Level = GetWordPacket(PacketName, -1)
                Profile_Config.Info.Strength = GetWordPacket(PacketName, -1)
                Profile_Config.Info.Dexterity = GetWordPacket(PacketName, -1)
                Profile_Config.Info.Energy = GetWordPacket(PacketName, -1)
                Profile_Config.Info.Vitality = GetWordPacket(PacketName, -1)
            end

            Profile_Config.Info.Enabled = enabled

            ClearPacket(PacketName)
            return true
        end
    end

    if PacketName == string.format("8-%s-%d", name, index) then
        Profile_Config.ProfileRpc = GetBytePacket(PacketName, -1)
        local len = GetBytePacket(PacketName, -1)
        Profile_Config.ServerRpc = GetCharPacketLength(PacketName, -1, len)
        ClearPacket(PacketName)
        return true
    end
end

function Profile.SendProfileStatus(st)
    local name = UserGetName()
    local index = UserGetIndex()

    local PacketName = string.format("5-%s-%d", name, index)
    CreatePacket(PacketName, Profile_Config.Packet)
    SetBytePacket(PacketName, st)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Profile.SendGetInfo(nome, tipo)
    local name = UserGetName()
    local index = UserGetIndex()

    local PacketName = string.format("3-%s-%d", name, index)
    CreatePacket(PacketName, Profile_Config.Packet)
    SetBytePacket(PacketName, tipo)
    local len = nome:len()
    SetBytePacket(PacketName, len)
    SetCharPacketLength(PacketName, nome, len)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Profile.RegisterMenuButton()
   -- NewMenu.AddButton(2, 6, Profile.RequestOpen, Profile.Close, Profile.Interface, 155),42))
end

Profile.Init()

return Profile