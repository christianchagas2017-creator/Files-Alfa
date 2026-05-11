-- true Ativa o sistema, false desativa
JewelBank_Enabled = true

-- Id da interface, não pode ser igual a nenhum outro sistema custom
JewelBank_WindowId = 21

-- Numero do Packet usado no sistema (não pode ser igual ao de nenhum outro sistema)
JewelBank_Packet = 032

-- ListID (tem que ser o mesmo da configuração no servidor)(tem que começar no 1 e não pode pular)
-- Index da jóia
-- Nome da jóia
-- Ajuste de posição do item na interface:
	-- X posição horizontal (0 = posição original, menor que 0 move para esquerda, mais que 0 move para direita)
	-- Y posição vertical (0 = posição original, menor que 0 move para esquerda, mais que 0 move para direita) 
	-- W largura da area que faz o item girar com mouse em cima
	-- H altura da area que faz o item girar com mouse em cima


JewelBank_Jewels = {
{ListID = 1 , Index = GET_ITEM(12, 15),   Nome = "Jewel of Chaos",			Position = {X = 2, Y = -3, W = 13, H = 13}},
{ListID = 2 , Index = GET_ITEM(14, 13),   Nome = "Jewel of Bless",			Position = {X = 2, Y =  0, W = 13, H = 13}},
{ListID = 3 , Index = GET_ITEM(14, 14),   Nome = "Jewel of Soul",			Position = {X = 2, Y =  0, W = 13, H = 13}},
{ListID = 4 , Index = GET_ITEM(14, 16),   Nome = "Jewel of Life",			Position = {X = 2, Y =  0, W = 13, H = 13}},
{ListID = 5 , Index = GET_ITEM(14, 22),   Nome = "Jewel of Creation",		Position = {X = 2, Y =  0, W = 13, H = 13}},
--{ListID = 6 , Index = GET_ITEM(13, 35),   Nome = "Fragment Horn",			Position = {X = 2, Y =  0, W = 13, H = 13}},
--{ListID = 7 , Index = GET_ITEM(13, 36),   Nome = "Broken Horn",				Position = {X = -11, Y =  -10, W = 13, H = 13}},
}


-- Textos do sistema
JewelBank_Texts = {}
JewelBank_Texts["Por"] = {
[1] = "     Cambista     ",
[2] = " Fechar ",
[3] = " Selecione um item para ccomeçar ",
[4] = " Fazer Retirada ",
[5] = " Digite um valor diferente ",
}
JewelBank_Texts["Eng"] = {
[1] = "     Exchanger     ",
[2] = " Close ",
[3] = " Select one item to start ",
[4] = " Withdraw ",
[5] = " Type a different value ",
}
JewelBank_Texts["Spn"] = {
[1] = "     Cambista     ",
[2] = " Cerrar ",
[3] = " Seleccione un item para comenzar ",
[4] = " Sacar Item ",
[5] = " Digite um valor diferente ",
}


JewelBank = {}
JewelBank_Buttons = {}
JewelBank_WorkArea = {X1 = 260, X2 = 450, Y1 = 0, Y2 = 429}
JewelBank_Saldo = {}
JewelBank_List = {}
JewelBank_ListOffset = 0
JewelBank_ScrollBar = {Offset = 0, MaxOffset = 0, Pos = 0, Esp = 180, Multiplier = 0}
JewelBank_Selected = {}
JewelBank_ButtonSelected = 0
JewelBank_WindowOffset = 0
JewelBank_Alfabeto = {
	[48] = "0",[49] = "1",[50] = "2",[51] = "3",[52] = "4",[53] = "5",[54] = "6",[55] = "7",[56] = "8",[57] = "9",[96] = "0",[97] = "1",[98] = "2",[99] = "3",[100] = "4",[101] = "5",[102] = "6",[103] = "7",[104] = "8",[105] = "9"
}
JewelBank_TextArea = {Text = "", onFocus = false}

function JewelBank.Close()
	local nome = UserGetName()
	CreatePacket(string.format("JBEnd_%s",nome), JewelBank_Packet)
	SendPacket(string.format("JBEnd_%s",nome))
	ClearPacket(string.format("JBEnd_%s",nome))
	UICustomInterface = 0
	JewelBank_ListOffset = 0
	JewelBank_Selected = {}
	JewelBank_ButtonSelected = 0
	JewelBank_WindowOffset = 0
	JewelBank_TextArea = {Text = "", onFocus = false}
end

function JewelBank.Open()
	local nome = UserGetName()
	CreatePacket(string.format("JBOpe_%s",nome), JewelBank_Packet)
	SendPacket(string.format("JBOpe_%s",nome))
	ClearPacket(string.format("JBOpe_%s",nome))
end

function JewelBank.RequestOpen()
	local nome = UserGetName()
	CreatePacket(string.format("JBOpe_%s",nome), JewelBank_Packet)
	SendPacket(string.format("JBOpe_%s",nome))
	ClearPacket(string.format("JBOpe_%s",nome))
end

function JewelBank.Open2()
	if	CheckWindowOpen(UIFriendList)		== 1	then	return							end
	if	CheckWindowOpen(UIMoveList)			== 1	then	return							end
	if	CheckWindowOpen(UIQuest)			== 1	then	return							end
	if	CheckWindowOpen(UITrade)			== 1	then	return							end
	if	CheckWindowOpen(UIWarehouse)		== 1	then	return							end
	if	CheckWindowOpen(UICommandWindow)	== 1	then	return							end
	if	CheckWindowOpen(UIPetInfo)			== 1	then	return							end
	if	CheckWindowOpen(UIShop)				== 1	then	return							end
	if	CheckWindowOpen(UIOtherStore)		== 1	then	return							end
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
	if	CheckWindowOpen(UIExpandWarehouse)	== 0	then	return							end
	JewelBank.GerarLista()
	JewelBank.GerarBarra()
	OpenWindow(UIInventory)
	UICustomInterface = JewelBank_WindowId
end

function JewelBank.GerarLista()
	local listcount = 0
	JewelBank_List = {}
	for i in ipairs(JewelBank_Jewels) do
		if i > JewelBank_ListOffset then
			if listcount < 8 then
				table.insert(JewelBank_List, JewelBank_Jewels[i]) 
				listcount = listcount + 1
			end
		end
	end
end

function JewelBank.GerarBarra()
	if JewelBank_ScrollBar.Offset > 0 then
		JewelBank_ScrollBar.Offset = 0
		JewelBank_ScrollBar.Pos = 0
	end
	JewelBank_ScrollBar.MaxOffset = #JewelBank_Jewels-8	
	JewelBank_ScrollBar.Multiplier = JewelBank_ScrollBar.Esp/(#JewelBank_Jewels-8)
end

function JewelBank.MoveBarDown()
	if JewelBank_ScrollBar.Offset < JewelBank_ScrollBar.MaxOffset then
		JewelBank_ScrollBar.Offset = JewelBank_ScrollBar.Offset + 1
		JewelBank_ScrollBar.Pos = JewelBank_ScrollBar.Pos + JewelBank_ScrollBar.Multiplier
	end
end

function JewelBank.MoveBarUp()
	if JewelBank_ScrollBar.Offset > 0 then
		JewelBank_ScrollBar.Offset = JewelBank_ScrollBar.Offset - 1
		JewelBank_ScrollBar.Pos = JewelBank_ScrollBar.Pos - JewelBank_ScrollBar.Multiplier
	end
end

function JewelBank.CreateButton(IdBotao, X, Y, W, H)
	if JewelBank_Buttons[IdBotao] == nil then
		table.insert(JewelBank_Buttons, IdBotao)
	end
	JewelBank_Buttons[IdBotao] = {X1 = X, X2 = X+W, Y1 = Y, Y2 = Y+H}
end

function JewelBank.CheckButton(IdBotao, X, Y)
	if JewelBank_Buttons[IdBotao] == nil then return false end
	if X >= JewelBank_Buttons[IdBotao].X1 and X <= JewelBank_Buttons[IdBotao].X2 and Y >= JewelBank_Buttons[IdBotao].Y1 and Y <= JewelBank_Buttons[IdBotao].Y2 then
		return true
	end
	return false
end

function JewelBank.Interface()
	if UICustomInterface == JewelBank_WindowId then
		EnableAlphaTest()
    	DisableAlphaBlend()
	end
end

function JewelBank.BeforeInterface()
	if UICustomInterface ~= JewelBank_WindowId then return end
		if	CheckWindowOpen(UIInventory) 		== 0	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIFriendList) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIMoveList)			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIParty) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIQuest) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIGuild) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UINPCGuild) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UITrade) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIWarehouse) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UICommandWindow) 	== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIPetInfo)	 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIShop)				== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIStore) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIOtherStore) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UICharacter) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIOptions) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIHelp)				== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIFastDial)			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UISkillTree) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UINPC_Titus) 		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UICashShop)			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIFullMap) 			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UINPC_Dialog)		== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UIGensInfo)			== 1	then	JewelBank.Close()	end
		if	CheckWindowOpen(UINPC_Julia)		== 1	then	JewelBank.Close()	end

		local posX = WindowGetWidth()

		EnableAlphaTest()

		RenderImage2(40046, posX-380-JewelBank_WindowOffset, 0, 191, 429, 0.0, 1.0, 0.83, 0.935, 1, 1, 1.0)

		JewelBank.CreateButton(1, 0,0,0,0) 		

		SetFontType(1)
		SetTextBg(0, 0, 0, 0)
		SetTextColor(255, 255, 255, 255)
		RenderText3(posX-380+95-JewelBank_WindowOffset, 12, string.format(JewelBank_Texts[GetLanguage()][1]), 80, 8)

		DisableAlphaBlend()

		SetBlend(1)
		glColor4f(0.0, 0.0, 0.0, 0.7)			
		DrawBar(posX-380+18-JewelBank_WindowOffset, 198, 154, 201)
		glColor4f(0.54, 0.422, 0.2322, 0.7)			
		DrawBar(posX-380+18-JewelBank_WindowOffset, 198, 0.8, 201)
		DrawBar(posX-380+169-JewelBank_WindowOffset, 198, 0.8, 201)
		DrawBar(posX-380+18-JewelBank_WindowOffset, 198, 151, 0.8)
		DrawBar(posX-380+18-JewelBank_WindowOffset, 399, 152, 0.8)
		EndDrawBar()	 
		SetBlend(1)
		glColor3f(1.0,1.0,1.0)
		local ItemY = 223
		glColor4f(0.10, 0.10, 0.10, 0.3)
		for i in ipairs(JewelBank_List) do	
			if MousePosX() >= posX-380+30-JewelBank_WindowOffset and MousePosX() <= posX-380+160-JewelBank_WindowOffset and MousePosY() >= ItemY-23 and MousePosY() <= ItemY-1 then
				DrawBar(posX-380+18-JewelBank_WindowOffset, ItemY-24, 154, 24)
			end

			ItemY = ItemY+25
		end

		ItemY = 223
		SetBlend(1)
		glColor3f(1.0,1.0,1.0)
		for i in ipairs(JewelBank_List) do
			CreateItem((posX-380+22+JewelBank_List[i].Position.X)-JewelBank_WindowOffset, ((ItemY-17)+JewelBank_List[i].Position.Y), JewelBank_List[i].Position.W, JewelBank_List[i].Position.H, JewelBank_List[i].Index, 0, 0, 0, 1.0)					
			
			ItemY = ItemY+25
		end
		EndDrawBar()

		SetBlend(1)
		glColor3f(1.0,1.0,1.0)
		
		RenderImageAuto(40044, posX-340, 80, 110, 70)

		if JewelBank_Selected.ListID ~= nil 
		then
			CreateItem((posX-320+22+JewelBank_Selected.Position.X)-JewelBank_WindowOffset, (110+JewelBank_Selected.Position.Y), JewelBank_Selected.Position.W, JewelBank_Selected.Position.H, JewelBank_Selected.Index, 0, 0, 0, 1.0)
		end

		GLSwitchBlend()	
		glColor3f(1.0,1.0,1.0)
		GLSwitch()

		EnableAlphaTest()

		if JewelBank_Selected.ListID ~= nil then
			SetFontType(10)
			SetTextBg(0, 0, 0, 0)
			SetTextColor(255, 204, 0, 255)
			RenderText3(posX-380+45-JewelBank_WindowOffset, 60, string.format(JewelBank_Selected.Nome), 100, 3)
			SetTextColor(255, 255, 255, 185)
			--RenderText3(posX-380+160-JewelBank_WindowOffset, 50, string.format("%dx",JewelBank_Saldo[JewelBank_Selected.ListID]), 50, 7)

			JewelBank.CreateButton(18, posX-380+50-JewelBank_WindowOffset, 165, 90, 25)

			if JewelBank.CheckButton(18, MousePosX(), MousePosY()) then
				RenderImage2(40031, posX-380+47-JewelBank_WindowOffset, 166.5, 100, 25, -0.005000, 0.211000, 0.625000, 0.205000, 1, 1, 1.0)
			else
				RenderImage2(40031, posX-380+47-JewelBank_WindowOffset, 166.5, 100, 25, -0.005000, 0.002000, 0.625000, 0.205000, 1, 1, 1.0)
			end

			SetFontType(12)
			SetTextBg(0, 0, 0, 0)
			SetTextColor(255, 255, 255, 230)
			RenderText3(posX-380+62-JewelBank_WindowOffset, 174, string.format(JewelBank_Texts[GetLanguage()][4]), 70, 3)

		else
			SetFontType(1)
			SetTextBg(0, 0, 0, 0)
			SetTextColor(255, 204, 0, 255)
			RenderText3(posX-380+20-JewelBank_WindowOffset, 53, string.format(JewelBank_Texts[GetLanguage()][3]), 150, 3)
		end

		local ItemY = 223
		for i in ipairs(JewelBank_List) do
			SetFontType(0)
			SetTextBg(0, 0, 0, 0)
			if JewelBank_Selected.ListID ~= nil then
				if JewelBank_Selected.ListID == JewelBank_List[i].ListID then
					SetTextColor(0, 221, 255, 255)
				else
					SetTextColor(255, 255, 255, 230)
				end
			else
				SetTextColor(255, 255, 255, 230)
			end
			if JewelBank_Saldo[JewelBank_List[i].ListID] ~= nil then
				RenderText2(posX-380+48-JewelBank_WindowOffset, ItemY-11, string.format("%s",JewelBank_List[i].Nome), ALIGN_LEFT)
				RenderText2(posX-380+128-JewelBank_WindowOffset, ItemY-16, string.format("(%dx)",JewelBank_Saldo[JewelBank_List[i].ListID]), ALIGN_CENTER)
			else
				RenderText2(posX-380+48-JewelBank_WindowOffset, ItemY-16, string.format("%s",JewelBank_List[i].Nome), ALIGN_LEFT)
			end

			ItemY = ItemY+25
		end

		if JewelBank.CheckButton(1, MousePosX(), MousePosY()) then
			SetFontType(0)
			SetTextBg(0, 0, 0, 255)
			SetTextColor(255, 255, 255, 255)
			RenderText2(posX-380+165-JewelBank_WindowOffset, 30, string.format(JewelBank_Texts[GetLanguage()][2]), ALIGN_LEFT)
		end

		DisableAlphaBlend()
	
end

function JewelBank.Protocol(Packet, PacketName)
	if Packet == JewelBank_Packet then
		local nome = UserGetName()
		if PacketName == string.format("JBOpe_%s",nome) then
			JewelBank_Saldo = {}
			local count = GetBytePacket(PacketName, -1)
			for i = 1, count do
				local listid = GetBytePacket(PacketName, -1)
				local valor = GetDwordPacket(PacketName, -1)

				table.insert(JewelBank_Saldo, listid)
				if listid >= 8 then
					valor = math.floor(valor/500)
				end
				JewelBank_Saldo[listid] = valor
			end
			ClearPacket(PacketName)
			JewelBank.Open2()
			return true
		end

		if PacketName == string.format("JBBal_%s",nome) then
			if UICustomInterface == JewelBank_WindowId then
				local listid = GetBytePacket(PacketName, -1)
				local valor = GetDwordPacket(PacketName, -1)
				if JewelBank_Saldo[listid] ~= nil then
					if listid >= 8 then
						valor = math.floor(valor/500)
					end
					JewelBank_Saldo[listid] = valor
				end
			end
			ClearPacket(PacketName)
			return true
		end
	end
end

function JewelBank.KeyListener(key)
	if CheckWindowOpen(UIChatWindow) == 0 and CheckWindowOpen(UIStore) == 0 
	then
		if key == Keys.Escape then
			if UICustomInterface == JewelBank_WindowId then
				JewelBank.Close()
				return
			end
		end

		if key == Keys.J then
			if JewelBank_Enabled then
				if UICustomInterface == JewelBank_WindowId then
					JewelBank.Close()
				else
					JewelBank.Open()
				end
				return
			end
		end

		if key == Keys.V or key == Keys.I or key == Keys.Escape then
			if UICustomInterface == JewelBank_WindowId then
				JewelBank.Close()
				return
			end
		end
	end
end

function JewelBank.ScrollMouse(Direction)
	local x = MousePosX()
	local y = MousePosY()
	local posX = WindowGetWidth()
	if UICustomInterface == JewelBank_WindowId then
		if x >= posX-380+15-JewelBank_WindowOffset and x <= posX-380+176-JewelBank_WindowOffset and y >= 196 and y <= 399 then
			if Direction > 0 then
				if JewelBank_ListOffset >= 1 then
					JewelBank_ListOffset = JewelBank_ListOffset - 1
					JewelBank.GerarLista()
					JewelBank.MoveBarUp()
				end
			elseif Direction < 0 then
				if #JewelBank_Jewels > 8 then
					if #JewelBank_Jewels-JewelBank_ListOffset > 8 then
						JewelBank_ListOffset = JewelBank_ListOffset + 1
						JewelBank.GerarLista()
						JewelBank.MoveBarDown()
					end
				end
			end
			return 1
		end
	end
	
	return 0
end

function JewelBank.ClickEvent()
	if UICustomInterface == JewelBank_WindowId then
		if JewelBank.CheckButton(1, MousePosX(), MousePosY()) then
			if UICustomInterface == JewelBank_WindowId then
				JewelBank.Close()
			end
		end

		if JewelBank.CheckButton(18, MousePosX(), MousePosY()) then
			if JewelBank_Selected.ListID == nil or JewelBank_Selected.ListID == 0 then return end
			
			local nome = UserGetName()
			CreatePacket(string.format("JBSac_%s",nome), JewelBank_Packet)
			SetBytePacket(string.format("JBSac_%s",nome), JewelBank_Selected.ListID)
			SetBytePacket(string.format("JBSac_%s",nome), 1) -- Sempre retira 1 unidade
			SendPacket(string.format("JBSac_%s",nome))
			ClearPacket(string.format("JBSac_%s",nome))
			return
		end

		local posX = WindowGetWidth()
		local ItemY = 223
		for i in ipairs(JewelBank_List) do
			if MousePosX() >=posX-380+20-JewelBank_WindowOffset and MousePosX() <= posX-380+160-JewelBank_WindowOffset and MousePosY() >= ItemY-23 and MousePosY() <= ItemY-2 then
				JewelBank_Selected = JewelBank_List[i]
				return
			end
			ItemY = ItemY+25
		end
	end
end

function JewelBank.UpdateMouse()
	if UICustomInterface == JewelBank_WindowId then
		local offset = WindowGetWidth()-640
		if MousePosX()  >= JewelBank_WorkArea.X1-JewelBank_WindowOffset+offset and MousePosX() <= JewelBank_WorkArea.X2-JewelBank_WindowOffset+offset and MousePosY() >= JewelBank_WorkArea.Y1 and MousePosY() <= JewelBank_WorkArea.Y2 then
			DisableClickClient()
			return
		end
	end	
end

function JewelBank.ClickRightEvent()
	if CheckRepeatKey(Keys.ControlKey) ~= 0 then
		local slot = GetInventoryMouseItemSlot()
		if slot >= 12 then
			local nome = UserGetName()

			CreatePacket(string.format("JBDep_%s",nome), JewelBank_Packet)
			SetBytePacket(string.format("JBDep_%s",nome), slot)			
			SendPacket(string.format("JBDep_%s",nome))
			ClearPacket(string.format("JBDep_%s",nome))
			return
		end
	end
end

InterfaceController.BeforeMainProc(JewelBank.BeforeInterface)
InterfaceController.ClientProtocol(JewelBank.Protocol)
InterfaceController.MainProcWorldKey(JewelBank.KeyListener)
InterfaceController.ScrollMouse(JewelBank.ScrollMouse)
InterfaceController.InterfaceClickEvent(JewelBank.ClickEvent)
InterfaceController.InterfaceClickRightEvent(JewelBank.ClickRightEvent)
InterfaceController.UpdateMouse(JewelBank.UpdateMouse)

return JewelBank