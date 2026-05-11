Shop = {}

function Shop.Init()
    if not Shop_Config.Enabled then return end

    InterfaceController.ClientProtocol(Shop.Protocol)
    InterfaceController.UpdateMouse(Shop.UpdateMouse)
    InterfaceController.UpdateKey(Shop.UpdateKey)
    InterfaceController.InterfaceClickEvent(Shop.ClickEvent)
    InterfaceController.MainProc(Shop.Interface)
    InterfaceController.ScrollMouse(Shop.ScrollMouse)
    Shop_Config.Button = {}
	Shop_Config.ButtonID = {
        abrir = 1,
        shopHcash = 2,
        shopHgold = 3,
        fechar = 4,
        esquerda = 5,
        direita = 6,
        comprar = 7,
        menos = 8,
        mais = 9,
        skill = 10,
        luck = 11,
        option = 12,
        exc = {
        [1] = 13,
        [2] = 14,
        [3] = 15,
        [4] = 16,
        [5] = 17,
        [6] = 18,
        },
        addtocart = 19,
        removefromcart = 20,
        edit = 21,
	}

    Shop.CreateButton(Shop_Config.ButtonID.abrir,105, 4, 25, 23)
    Shop.Define()
end

function Shop.Define()
    Shop_Config.WindowPosition = {X = 17, Y = 30}
    Shop_Config.Current = {
        Page = 0,
        Coin = 1,
        Categorie = 1,
        Item = {
            ListID = 0,
            Origin = 0,
            Options = {},
            Config = {},
            Price = 0,
            AddPrice = 0
        },
    }
	
	PacotePromo_Config.Window = {
        PosX = 80,
        PosY = 30,
        Width = 380,
        Height = 380
    }
	
    Shop_Config.AlertWindow = {
        Open = false,
        Type = 0
    }
	
    Shop_Config.Carrinho = {}
    Shop_Config.TotalPrice = 0
    Shop_Config.TotalPriceTemp = 0
    Shop_Config.ListaCarrinho = {
        Itens = {},
        Offset = 1,
		MaxValue = 5,
        Count = 5,
        Steps = 0,
        CurrentStep = 0,        
        BaseScrollPos = 85,
        ScrollPos = 85,
        ScrollPosOffset = 75
    }
    Shop_Config.Lista = {
        Itens = {},
        Offset = 1,
		MaxValue = 12,
        Count = 12,
        Steps = 0,
        CurrentStep = 0,
        BaseScrollPos = 140,
        ScrollPos = 140,
        ScrollPosOffset = 208
    }
    Shop_Config.Quantity = 1  -- Added quantity variable
end

function Shop.ResetCurrentItem()
    Shop_Config.Current.Item = {
            ListID = 0,
            Origin = 0,
            Options = {},
            Config = {},
            Price = 0,
            AddPrice = 0
        }
end

--#region FUNÇÕES DE BOTÃO
function Shop.CreateButton(ButtonID, x, y, w, h)
	if Shop_Config.Button[ButtonID] == nil then
		table.insert(Shop_Config.Button, ButtonID)
		Shop_Config.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		Shop_Config.Button[ButtonID].x = x
		Shop_Config.Button[ButtonID].y = y
		Shop_Config.Button[ButtonID].w = w
		Shop_Config.Button[ButtonID].h = h
	end
end

function Shop.ButtonClicked(ButtonID)
	if Shop_Config.Button[ButtonID] == nil then return false end
	if Shop_Config.Button[ButtonID].clicked then
		if Shop_Config.Button[ButtonID].timer >= 2 then
			Shop_Config.Button[ButtonID].timer = 0
			Shop_Config.Button[ButtonID].clicked = false
			return false
		end
		Shop_Config.Button[ButtonID].timer = Shop_Config.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function Shop.ButtonMouseOver(ButtonID, x, y)
	if Shop_Config.Button[ButtonID] == nil then return false end
	if x >= Shop_Config.Button[ButtonID].x and x <= (Shop_Config.Button[ButtonID].x+Shop_Config.Button[ButtonID].w) then
		if y >= Shop_Config.Button[ButtonID].y and y <= (Shop_Config.Button[ButtonID].y+Shop_Config.Button[ButtonID].h) then
			return true
		end
	end
	return false
end
--#endregion

--#region VERIFICA JANELAS ABERTAS
function Shop.IsShopOpen()
    if UICustomInterface ~= Shop_Config.WindowID then return false else return true end
end

function Shop.IsOtherInterfacesOpen()
    if	CheckWindowOpen(UIInventory) 		== 1	then	return true	end
	if	CheckWindowOpen(UIFriendList) 		== 1	then	return true	end
	if	CheckWindowOpen(UIMoveList)			== 1	then	return true	end
	if	CheckWindowOpen(UIParty) 			== 1	then	return true	end
	if	CheckWindowOpen(UIQuest) 			== 1	then	return true	end
	if	CheckWindowOpen(UIGuild) 			== 1	then	return true	end
	if	CheckWindowOpen(UIGuildNpc) 		== 1	then	return true	end
	if	CheckWindowOpen(UITrade) 			== 1	then	return true	end
	if	CheckWindowOpen(UIWarehouse) 		== 1	then	return true	end
	if	CheckWindowOpen(UIChaosBox)			== 1	then	return true	end
	if	CheckWindowOpen(UICommandWindow) 	== 1	then	return true	end
	if	CheckWindowOpen(UIPetInfo)	 		== 1	then	return true	end
	if	CheckWindowOpen(UIShop)				== 1	then	return true	end
	if	CheckWindowOpen(UIStore) 			== 1	then	return true	end
	if	CheckWindowOpen(UIOtherStore) 		== 1	then	return true	end
	if	CheckWindowOpen(UICharacter) 		== 1	then	return true	end
	if	CheckWindowOpen(UIOptions) 			== 1	then	return true	end
	if	CheckWindowOpen(UIHelp)				== 1	then	return true	end
	if	CheckWindowOpen(UIFastDial)			== 1	then	return true	end
	if	CheckWindowOpen(UISkillTree) 		== 1	then	return true	end
	if	CheckWindowOpen(UINPC_Titus) 		== 1	then	return true	end
	if	CheckWindowOpen(UICashShop)			== 1	then	return true	end
	if	CheckWindowOpen(UIFullMap) 			== 1	then	return true	end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	return true	end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	return true	end
	if	CheckWindowOpen(UINPC_Julia)		== 1	then	return true	end
	if	UICustomInterface			        ~= 0	then	return true	end

    return false
end
--#endregion

--#region ABRE E FECHA O SHOP
function Shop.Open()
    if CheckWindowOpen(UIFriendList) == 1 then CloseWindow(UIFriendList) end
    if CheckWindowOpen(UIMoveList) == 1 then CloseWindow(UIMoveList) end
    if CheckWindowOpen(UIParty) == 1 then CloseWindow(UIParty) end
    if CheckWindowOpen(UIQuest) == 1 then CloseWindow(UIQuest) end
    if CheckWindowOpen(UIGuild) == 1 then CloseWindow(UIGuild) end
    if CheckWindowOpen(UIGuildNpc) == 1 then CloseWindow(UIGuildNpc) end
    if CheckWindowOpen(UITrade) == 1 then CloseWindow(UITrade) end
    if CheckWindowOpen(UIWarehouse) == 1 then CloseWindow(UIWarehouse) end
    if CheckWindowOpen(UIChaosBox) == 1 then CloseWindow(UIChaosBox) end
    if CheckWindowOpen(UICommandWindow) == 1 then CloseWindow(UICommandWindow) end
    if CheckWindowOpen(UIPetInfo) == 1 then CloseWindow(UIPetInfo) end
    if CheckWindowOpen(UIShop) == 1 then CloseWindow(UIShop) end
    if CheckWindowOpen(UIStore) == 1 then CloseWindow(UIStore) end
    if CheckWindowOpen(UIOtherStore) == 1 then CloseWindow(UIOtherStore) end
    if CheckWindowOpen(UICharacter) == 1 then CloseWindow(UICharacter) end
    if CheckWindowOpen(UIOptions) == 1 then CloseWindow(UIOptions) end
    if CheckWindowOpen(UIHelp) == 1 then CloseWindow(UIHelp) end
    if CheckWindowOpen(UIFastDial) == 1 then CloseWindow(UIFastDial) end
    if CheckWindowOpen(UISkillTree) == 1 then CloseWindow(UISkillTree) end
    if CheckWindowOpen(UINPC_Titus) == 1 then CloseWindow(UINPC_Titus) end
    if CheckWindowOpen(UICashShop) == 1 then CloseWindow(UICashShop) end
    if CheckWindowOpen(UIFullMap) == 1 then CloseWindow(UIFullMap) end
    if CheckWindowOpen(UINPC_Dialog) == 1 then CloseWindow(UINPC_Dialog) end
    if CheckWindowOpen(UIGensInfo) == 1 then CloseWindow(UIGensInfo) end
    if CheckWindowOpen(UINPC_Julia) == 1 then CloseWindow(UINPC_Julia) end
    if CheckWindowOpen(UIInventory) == 1 then CloseWindow(UIInventory) end

    UICustomInterface = Shop_Config.WindowID
    PacotePromo_Config.Window.PosX = PacotePromo_Config.Window.PosX + WindowGetWidthAdd()

    -- Definir o shopHcash como padrão e abrir diretamente
    Shop_Config.Current.Coin = 1  -- shopHcash
    Shop_Config.Current.Page = 1  -- Abrir diretamente a página do shop

    -- Gerar a lista de itens e a barra de rolagem
    Shop.GerarListaItens()
    Shop.GerarScrollBarItens()
    Shop.GerarListaCarrinho()
    Shop.GerarScrollBarCarrinho()
end

function Shop.SendRequestOpen()
    local name, index = UserGetName(), UserGetIndex()
    local PacketName = string.format("1-%s-%s", name, index)

    CreatePacket(PacketName, Shop_Config.Packet)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Shop.Close()
    UICustomInterface = 0
    Shop.Define()
end
--#endregion

--#region GERA LISTA CARRINHO E BARRA DE ROLAGEM
function Shop.GerarScrollBarCarrinho()
	Shop_Config.ListaCarrinho.Steps = #Shop_Config.Carrinho-#Shop_Config.ListaCarrinho.Itens
end

function Shop.GerarListaCarrinho()
   	Shop_Config.ListaCarrinho.Itens = {}
	for i, item in ipairs(Shop_Config.Carrinho) do
		table.insert(Shop_Config.ListaCarrinho.Itens, item)
	end
	
	Shop_Config.ListaCarrinho.Offset = 1
	if #Shop_Config.ListaCarrinho.Itens < Shop_Config.ListaCarrinho.Count then
		Shop_Config.ListaCarrinho.MaxValue = #Shop_Config.ListaCarrinho.Itens
	else
		Shop_Config.ListaCarrinho.MaxValue = Shop_Config.ListaCarrinho.Count
	end
end
--#endregion

--#region GERA LISTA DE ITENS E BARRA DE ROLAGEM
function Shop.GerarScrollBarItens()
	Shop_Config.Lista.Steps = #Shop_Itens[Shop_Config.Current.Coin][Shop_Config.Current.Categorie]-#Shop_Config.Lista.Itens
end

function Shop.GerarListaItens()
    Shop_Config.Lista.Itens = {}
	for i, item in ipairs(Shop_Itens[Shop_Config.Current.Coin][Shop_Config.Current.Categorie]) do
		table.insert(Shop_Config.Lista.Itens, item)
	end
	
	Shop_Config.Lista.Offset = 1
	if #Shop_Config.Lista.Itens < Shop_Config.Lista.Count then
		Shop_Config.Lista.MaxValue = #Shop_Config.Lista.Itens
	else
		Shop_Config.Lista.MaxValue = Shop_Config.Lista.Count
	end
end
--#endregion

function Shop.Interface()
    if not Shop.IsShopOpen() then return end
    -- Obtenha a largura e altura da janela
    local windowWidth = WindowGetWidth()
    local windowHeight = WindowGetHeight()

    -- Defina as coordenadas baseadas na resolução
    local centerX = windowWidth / 2
    local centerY = windowHeight / 2

    -- Ajuste as posições dos elementos da interface
    local shopWidth = 600  -- Largura da loja
    local shopHeight = 400 -- Altura da loja

    local shopX = centerX - (shopWidth / 2)
    local shopY = centerY - (shopHeight / 2)
	
    Shop.CreateButton(Shop_Config.ButtonID.shopHcash, shopX + 50, shopY + 50, 75, 28)
    Shop.CreateButton(Shop_Config.ButtonID.shopHgold, shopX + 150, shopY + 50, 75, 28)
    Shop.CreateButton(Shop_Config.ButtonID.fechar, shopX + shopWidth - 40, shopY + 10, 40, 18)
    Shop.CreateButton(Shop_Config.ButtonID.esquerda, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.direita, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.comprar, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.menos, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.mais, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.skill, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.luck, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.option, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[1], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[2], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[3], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[4], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[5], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.exc[6], 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.addtocart, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.removefromcart, 0, 0, 0, 0)
    Shop.CreateButton(Shop_Config.ButtonID.edit, 0, 0, 0, 0)
	PacotePromo_Config.Window.PosX = ((WindowGetWidth()/2) - (PacotePromo_Config.Window.Width/2))-10
	
    if Shop_Config.Current.Page == 0 and not Shop_Config.AlertWindow.Open then
        EnableAlphaTest()
        DisableAlphaBlend()
        SetBlend()
        EndDrawBar()

        EnableAlphaTest()
        SetFontType(1)
        SetTextBg(0,0,0,0)
        SetTextColor(255,179,0,255)

        SetFontType(1)
        SetTextBg(0,0,0,0)
        SetTextColor(255,255,255,255)
        RenderText3(358+shopX-25, 262, Shop_Config.Texts[GetLanguage()][2], 150, 8)
        DisableAlphaBlend()
        SetBlend()
        EndDrawBar()
        EnableAlphaTest()
        Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 264+shopX-25, 230, 75, 28)
        if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
                RenderImage2(31326, 264+shopX-25, 230, 90, 29,0, 0.2264566, 1.0, 0.2245212, 1, 1, 1.0)
            else
                RenderImage2(31326, 264+shopX-25, 230, 90, 29,0, 0, 1.0, 0.2245212, 1, 1, 1.0)
            end
        else
            RenderImage2(31326, 264+shopX-25, 230, 90, 29,0, 0, 1.0, 0.2245212, 1, 1, 1.0)
        end
    
        Shop.CreateButton(Shop_Config.ButtonID.shopHgold, 368+shopX-25, 230, 75, 28)
        if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHgold) then			
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHgold, MousePosX(), MousePosY()) then
                RenderImage2(31326, 368+shopX-25, 230, 90, 29,0, 0.2264566, 1.0, 0.2245212, 1, 1, 1.0)
            else
                RenderImage2(31326, 368+shopX-25, 230, 90, 29,0, 0, 1.0, 0.2245212, 1, 1, 1.0)
            end
        else
            RenderImage2(31326, 368+shopX-25, 230, 90, 29,0, 0, 1.0, 0.2245212, 1, 1, 1.0)
        end
		
        SetFontType(1)
        SetTextBg(0,0,0,0)
        SetTextColor(255,255,255,255)
        RenderText3(300+shopX-25, 239, Shop_Coins[1][GetLanguage()], 150, 8)
        RenderText3(407+shopX-25, 239, Shop_Coins[2][GetLanguage()], 150, 8)

        DisableAlphaBlend()
        SetBlend()
        EndDrawBar()
    else
        if not Shop_Config.AlertWindow.Open or Shop_Config.AlertWindow.Type ~= 1 then
            EnableAlphaTest()
            RenderImage2(40067, 23+shopX-25, 73, 590, 330, 0.002000, 0.006000, 0.997000, 0.775000, 1, 1, 1.0) -- FUNDO 
            DisableAlphaBlend()
            SetBlend()
	        EndDrawBar()

            EnableAlphaTest()
            DisableAlphaBlend()

            SetBlend()
	        EndDrawBar()
			
			glColor4f(0.20, 0.20, 0.20, 100)	
			

			DrawBar(433+shopX-25, 174, 159, 0.5)			
			DrawBar(433+shopX-25, 194, 159, 0.5)			
			DrawBar(433+shopX-25, 214, 159, 0.5)			
			DrawBar(433+shopX-25, 234, 159, 0.5)			
			DrawBar(433+shopX-25, 254, 159, 0.5)			
			DrawBar(433+shopX-25, 274, 159, 0.5)			
			
			-- LISTA DE ITENS E CATEGORIAS
			DrawBar(38+shopX-25,  128, 158, 0.5)
			DrawBar(38+shopX-25,  388, 158, 0.5)
			DrawBar(37+shopX-25,  128, 0.5, 260)
			DrawBar(197+shopX-25, 128, 0.5, 260)
			DrawBar(60+shopX-25, 104, 115, 0.5)
			DrawBar(60+shopX-25, 104, 115, 0.5)
			
			-- NOME DO ITEM SELECIONADO
			DrawBar(216+shopX-25, 129, 180, 0.5)
			DrawBar(216+shopX-25, 160, 180, 0.5)
			DrawBar(215+shopX-25, 130, 0.5, 30)
			DrawBar(397+shopX-25, 130, 0.5, 30)
			
			DrawBar(397+shopX-25, 166, 0.5, 124)
			DrawBar(215+shopX-25, 166, 0.5, 124)
			DrawBar(216+shopX-25, 165, 180, 0.5)
			DrawBar(216+shopX-25, 290, 180, 0.5)
			
			-- LISTA DO CARRINHO
			DrawBar(433+shopX-25, 129, 158, 0.5)			
			DrawBar(433+shopX-25, 160, 158, 0.5)			
			DrawBar(432+shopX-25, 130, 0.5, 30)			
			DrawBar(592+shopX-25, 130, 0.5, 30)	
			
			DrawBar(433+shopX-25, 294, 159, 0.5)	
			DrawBar(433+shopX-25, 320, 159, 0.5)	
			DrawBar(433+shopX-25, 164, 159, 0.5)	
			DrawBar(592+shopX-25, 165, 0.5, 155)	
			DrawBar(432+shopX-25, 165, 0.5, 155)	
			
			
			glColor4f(0.10, 0.10, 0.10, 255)	
			DrawBar(210+shopX-25, 335, 180, 45)	

            EnableAlphaTest()
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,179,0,255)
					
            DisableAlphaBlend()

            SetBlend()
	        EndDrawBar()

            Shop.CreateButton(Shop_Config.ButtonID.fechar, 574+shopX-18, Shop_Config.WindowPosition.Y+50, 40, 18)          
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.fechar, MousePosX(), MousePosY()) then			
                RenderImage2(40022, 574+shopX-17, 78, 18, 18, 0.015000, 0.223000, 0.824000, 0.200000, 1, 1, 1.0)
            elseif not Shop.ButtonClicked(Shop_Config.ButtonID.fechar) then
                RenderImage2(40022, 574+shopX-17, 78, 18, 18, 0.015000, 0.003000, 0.824000, 0.200000, 1, 1, 1.0)
            end		
				else
					RenderImage2(40022, 574+shopX-17, 78, 18, 18, 0.015000, 0.223000, 0.824000, 0.200000, 1, 1, 1.0)
            end				
        end
    
    if Shop_Config.Current.Page == 1 then
        --#region CAIXA CATEGORIA, ITENS, CARRINHO, PREVIEW E OPTIONS
        DisableAlphaBlend()
        SetBlend()
	    glColor4f(0.04, 0.04, 0.04, 0.6)

		-- CATEGORIAS
	    DrawBar(Shop_Config.WindowPosition.X+21+shopX-25, Shop_Config.WindowPosition.Y+74, 159, 23)
		
		-- LISTA DE ITENS
	    DrawBar(Shop_Config.WindowPosition.X+21+shopX-25, Shop_Config.WindowPosition.Y+99, 159, 259)
		
		-- CAIXA DO CARRINHO
	    DrawBar(Shop_Config.WindowPosition.X+416+shopX-25, Shop_Config.WindowPosition.Y+135, 159, 155)
	    DrawBar(Shop_Config.WindowPosition.X+416+shopX-25, Shop_Config.WindowPosition.Y+100, 159, 30)
		
		--  CAIXA DO ITEM
	    DrawBar(Shop_Config.WindowPosition.X+200+shopX-25, Shop_Config.WindowPosition.Y+135, 179, 125)
	    DrawBar(Shop_Config.WindowPosition.X+200+shopX-25, Shop_Config.WindowPosition.Y+100, 179, 30)

	    EndDrawBar()

		-- NOME DOS ITENS SELCIONADOS
        if Shop_Config.Current.Item.ListID ~= 0 then
			SetFontType(5)
            SetTextColor(186,168,127,255)
            RenderText3(Shop_Config.WindowPosition.X+291+shopX-25, Shop_Config.WindowPosition.Y+110, GetNameByIndex(GET_ITEM(Shop_Config.Current.Item.Options.Section, Shop_Config.Current.Item.Options.Index)), 150, 8)
        else
            --RenderText3(Shop_Config.WindowPosition.X+291, Shop_Config.WindowPosition.Y+33, Shop_Config.Texts[GetLanguage()][6], 150, 8)
        end
        --#endregion

        --#region PREÇO E BOTAO COMPRAR CARRINHO
		
		DisableAlphaBlend()
		SetBlend()
		glColor4f(0.16, 0.0464, 0.0578, 0.6)
		DrawBar(Shop_Config.WindowPosition.X+420+shopX-25, Shop_Config.WindowPosition.Y+265, 95, 22)
		EndDrawBar()
		
        SetFontType(0)
		-- CARRINHO DE ITENS
		SetTextColor(255,255,255,255)			
		RenderText3(Shop_Config.WindowPosition.X+240+shopX-25, Shop_Config.WindowPosition.Y+312, Shop_Config.Texts[GetLanguage()][26], 65, 50)
		RenderText3(Shop_Config.WindowPosition.X+200+shopX-25, Shop_Config.WindowPosition.Y+324, Shop_Config.Texts[GetLanguage()][27], 65, 50)
		
		SetTextColor(176,160,104,255)
		RenderText3(Shop_Config.WindowPosition.X+200+shopX-25, Shop_Config.WindowPosition.Y+336, Shop_Config.Texts[GetLanguage()][28], 65, 50)
		
        SetFontType(0)
		-- CARRINHO DE ITENS
		SetTextColor(255,0,0,255)			
		RenderText3(Shop_Config.WindowPosition.X+200+shopX-25, Shop_Config.WindowPosition.Y+312, Shop_Config.Texts[GetLanguage()][25], 65, 50)

        SetFontType(5)
		-- CARRINHO DE ITENS
		SetTextColor(186,168,127,255)			
		RenderText3(Shop_Config.WindowPosition.X+455+shopX-25, Shop_Config.WindowPosition.Y+109, Shop_Config.Texts[GetLanguage()][24], 65, 50)		

        SetFontType(6)
		--RenderImage2(40068, 260+shopX-25, 87, 270, 25, 0.002, 0.005, 0.9887437, 0.6215416, 1, 1, 1.0)
		-- TITULO
		SetTextColor(186,168,127,255)			
		RenderText3(Shop_Config.WindowPosition.X+260+shopX-25, Shop_Config.WindowPosition.Y+50, Shop_Config.Texts[GetLanguage()][29], 65, 50)			
		
        SetTextBg(0,0,0,0)
		
        SetFontType(5)	
        SetTextColor(237,0,0,255)
        RenderText3(Shop_Config.WindowPosition.X+426+shopX-25, Shop_Config.WindowPosition.Y+271, Shop_Config.Texts[GetLanguage()][7], 25, 1)
        SetFontType(5)
        SetTextColor(255,255,255,255)
        RenderText3(Shop_Config.WindowPosition.X+455+shopX-25, Shop_Config.WindowPosition.Y+271, string.format("%d %s", Shop_Config.TotalPrice, Shop_Coins[Shop_Config.Current.Coin][GetLanguage()]), 65, 2)
        
        DisableAlphaBlend()
        SetBlend()
	    EndDrawBar()

        EnableAlphaTest()
        SetFontType(0)
        SetTextBg(0,0,0,0)
		
		---- BOTÃO DE COMPRAR
        Shop.CreateButton(Shop_Config.ButtonID.comprar, Shop_Config.WindowPosition.X+528+shopX-25, Shop_Config.WindowPosition.Y+270, 50, 20)
        if #Shop_Config.Carrinho > 0 then
	        if Shop.ButtonClicked(Shop_Config.ButtonID.comprar) then
                RenderImage2(40031, 528+shopX-25, 295, 55, 21, 0.009000, 0.022000, 0.610000, 0.180000, 1, 1, 1.0)
            else
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.comprar, MousePosX(), MousePosY()) then
                    RenderImage2(40031, 528+shopX-25, 295, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
                else
                   RenderImage2(40031, 528+shopX-25, 295, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
                end
            end
            SetTextColor(255,255,255,255)
            RenderText3(Shop_Config.WindowPosition.X+540+shopX-25, Shop_Config.WindowPosition.Y+271, Shop_Config.Texts[GetLanguage()][8], 65, 8)
        else
            SetTextColor(200,200,200,150)
            RenderImage2(40031, 528+shopX-25, 295, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
            RenderText3(Shop_Config.WindowPosition.X+540+shopX-25, Shop_Config.WindowPosition.Y+271, Shop_Config.Texts[GetLanguage()][8], 65, 8)
        end
        
        
        DisableAlphaBlend()
        SetBlend()
	    EndDrawBar()
        --#endregion

        --#region BOTÕES SELEÇÃO DE CATEGORIA
        EnableAlphaTest()
        Shop.CreateButton(Shop_Config.ButtonID.esquerda, Shop_Config.WindowPosition.X+24+shopX-25, Shop_Config.WindowPosition.Y+80, 16, 15)
        if Shop_Config.Current.Categorie > 1 then
	        if Shop.ButtonClicked(Shop_Config.ButtonID.esquerda) then
                RenderImage2(40024, 37+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
            else
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.esquerda, MousePosX(), MousePosY()) then
                    RenderImage2(40024, 37+shopX-25, 104.5, 23, 22, 0.002800, 0.220000, 0.798000, 0.198000, 1, 1, 1.0)
                else
                    RenderImage2(40024, 37+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
                end
            end
        else
            RenderImage2(40024, 37+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
			
        end

        Shop.CreateButton(Shop_Config.ButtonID.direita, Shop_Config.WindowPosition.X+162+shopX-25, Shop_Config.WindowPosition.Y+80, 16, 15)
        if Shop_Config.Current.Categorie < #Shop_Categories[GetLanguage()][Shop_Config.Current.Coin] then
	        if Shop.ButtonClicked(Shop_Config.ButtonID.direita) then
               RenderImage2(40023, 173+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
            else
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.direita, MousePosX(), MousePosY()) then
                    RenderImage2(40023, 173+shopX-25, 104.5, 23, 22, 0.002800, 0.220000, 0.798000, 0.198000, 1, 1, 1.0)
                else
                   RenderImage2(40023, 173+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
                end
            end
        else
            RenderImage2(40023, 173+shopX-25, 104.5, 23, 22, 0.002800, 0.002000, 0.798000, 0.198000, 1, 1, 1.0)
        end
        DisableAlphaBlend()
        SetBlend()
        EndDrawBar()
        
        EnableAlphaTest()
        SetFontType(5)
        SetTextBg(0,0,0,0)
        SetTextColor(186,168,127,255)
        RenderText3(Shop_Config.WindowPosition.X+102+shopX-25, Shop_Config.WindowPosition.Y+80, Shop_Categories[GetLanguage()][Shop_Config.Current.Coin][Shop_Config.Current.Categorie], 150, 8)
        DisableAlphaBlend()
        
        SetBlend()
	    EndDrawBar()
        --#endregion

        --#region QUANTITY SELECTION
        if Shop_Config.Current.Item.ListID ~= 0 and Shop_Config.Current.Item.Origin == 0 then
            -- Quantity display
            SetFontType(0)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)        
            DrawInterface.TextBox2(0, Shop_Config.WindowPosition.X+230+shopX-2, Shop_Config.WindowPosition.Y+223, 85, 20)
            RenderText3(Shop_Config.WindowPosition.X+240+shopX-25+57, Shop_Config.WindowPosition.Y+223+5, string.format("%d", Shop_Config.Quantity), 125, 8)

            -- Minus button
            local stateMenos = 0
            Shop.CreateButton(Shop_Config.ButtonID.menos, Shop_Config.WindowPosition.X+230+shopX-25, Shop_Config.WindowPosition.Y+223, 21, 21)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.menos) then
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.menos, MousePosX(), MousePosY()) then
                    if not Shop_Config.AlertWindow.Open then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stateMenos = 2
                        else
                            stateMenos = 1
                        end
                    else
                        stateMenos = 0
                    end
                else
                    stateMenos = 0
                end
            else
                stateMenos = 0
            end
            DrawButton.Menos(stateMenos, Shop_Config.WindowPosition.X+230+shopX-25, Shop_Config.WindowPosition.Y+223, 21, 21)

            -- Plus button
            local stateMais = 0
            Shop.CreateButton(Shop_Config.ButtonID.mais, Shop_Config.WindowPosition.X+230+shopX-25+105, Shop_Config.WindowPosition.Y+223, 21, 21)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.mais) then
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.mais, MousePosX(), MousePosY()) then
                    if not Shop_Config.AlertWindow.Open then
                        if CheckRepeatKey(Keys.LButton) == 1 then
                            stateMais = 2
                        else
                            stateMais = 1
                        end
                    else
                        stateMais = 0
                    end
                else
                    stateMais = 0
                end
            else
                stateMais = 0
            end
            DrawButton.Mais(stateMais, Shop_Config.WindowPosition.X+230+shopX-25+105, Shop_Config.WindowPosition.Y+223, 21, 21)
        end
        --#endregion

		local offset = WindowGetWidth()-640
		
		local ScrollPosX     = shopX-RescueItens_Config.WindowOffset
		local ScrollPosY     = 163
		local ScrollWidth    = 11
		local ScrollHeight   = 159
		local buttonWidth    = 11
		local buttonUpHeight = 107
		local buttonDwHeight = 41		
			
        
        local line = Shop_Config.WindowPosition.Y+115

		for id = Shop_Config.Lista.Offset, Shop_Config.Lista.MaxValue do
			local item = Shop_Config.Lista.Itens[id]
			if MousePosX() >= Shop_Config.WindowPosition.X+25 and MousePosX() <= Shop_Config.WindowPosition.X+153+shopX-25 and MousePosY() >= line-3 and MousePosY() <= line+12 or item.ListID == Shop_Config.Current.Item.ListID and Shop_Config.Current.Item.Origin == 0 then
				glColor4f(0.2464, 0.56, 0.0896, 0.6)
				DrawBar(Shop_Config.WindowPosition.X+25+shopX-25, line-3, 130, 15)                   
			end                
			line = line + 20
        end
        EndDrawBar()

        EnableAlphaTest()
        line = Shop_Config.WindowPosition.Y+115
		SetTextBg(0,0,0,0)
        SetTextColor(255,255,255,255)
		for id = Shop_Config.Lista.Offset, Shop_Config.Lista.MaxValue do
			local item = Shop_Config.Lista.Itens[id]
            SetFontType(13)
            if MousePosX() >= Shop_Config.WindowPosition.X+25 and MousePosX() <= Shop_Config.WindowPosition.X+5+shopX-25 and MousePosY() >= line-3 and MousePosY() <= line+12 or item.ListID == Shop_Config.Current.Item.ListID and Shop_Config.Current.Item.Origin == 0 then
                SetFontType(5)           
            end
            RenderText3(Shop_Config.WindowPosition.X+30+shopX-25, line, GetNameByIndex(GET_ITEM(item.Section, item.Index)), 125, ALIGN_LEFT)
            line = line + 20
        end

        DisableAlphaBlend()

        SetBlend()
	   

        line = Shop_Config.WindowPosition.Y+150

		if #Shop_Config.ListaCarrinho.Itens > 0 then
			for id = Shop_Config.ListaCarrinho.Offset, Shop_Config.ListaCarrinho.MaxValue do
				local item = Shop_Config.ListaCarrinho.Itens[id]
				if MousePosX() >= Shop_Config.WindowPosition.X+420 and MousePosX() <= Shop_Config.WindowPosition.X+548+shopX-25 and MousePosY() >= line-3 and MousePosY() <= line+12 or item.ListID == Shop_Config.Current.Item.ListID and Shop_Config.Current.Item.Origin == 1 then
					glColor4f(0.1827, 0.63, 0.19026, 0.6)
					DrawBar(Shop_Config.WindowPosition.X+420+shopX-25, line-3, 130, 15)                   
				end                
				line = line + 20
			end
		end
        EndDrawBar()
        

        EnableAlphaTest()

		-- AQUI É A LISTA DO CARRINHO
        line = Shop_Config.WindowPosition.Y+150
        if #Shop_Config.ListaCarrinho.Itens > 0 then
            for id = Shop_Config.ListaCarrinho.Offset, Shop_Config.ListaCarrinho.MaxValue do
				local item = Shop_Config.ListaCarrinho.Itens[id]
				if item ~= nil then
					SetFontType(0)
					SetTextBg(0,0,0,0)
					SetTextColor(255,255,255,255)
					if MousePosX() >= Shop_Config.WindowPosition.X+420 and MousePosX() <= Shop_Config.WindowPosition.X+530+shopX-25 and MousePosY() >= line-3 and MousePosY() <= line+12 or item.ListID == Shop_Config.Current.Item.ListID and Shop_Config.Current.Item.Origin == 1 then
						SetFontType(5)
						SetTextBg(0,0,0,0)
						SetTextColor(255,255,255,255)                    
					end
					RenderText3(Shop_Config.WindowPosition.X+425+shopX-25, line, 
                        string.format("%dx %s", item.Quantity, GetNameByIndex(GET_ITEM(item.Config.Section, item.Config.Index))), 
                        125, ALIGN_LEFT)
					line = line + 20
				end
            end
        else
            SetFontType(0)
            SetTextBg(0,0,0,0)
            SetTextColor(200,200,200,255)
            RenderText3(Shop_Config.WindowPosition.X+425+shopX-25, line, Shop_Config.Texts[GetLanguage()][9], 125, ALIGN_LEFT)
        end
        DisableAlphaBlend()
	

        SetBlend()
	    EndDrawBar()

        SetBlend()
	    EndDrawBar()
		
		glColor4f(0.64, 0.4459, 0.224, 255)	
		--DrawBar(217, 222, 21, 0.5)
        --#endregion
	

        --#region CAIXAS DE SELEÇÃO DE OPTIONS
        if Shop_Config.Current.Item.ListID ~= 0 then
            EnableAlphaTest()
			
			DisableAlphaBlend()
			SetBlend()
			glColor4f(0.0, 0.0, 0.0, 0.6)
			--DrawBar(Shop_Config.WindowPosition.X+215, Shop_Config.WindowPosition.Y+196, 95, 24)
			EndDrawBar()
			
			
			DisableAlphaBlend()
			SetBlend()
			glColor4f(255, 255, 255, 0.6)
			--DrawBar(Shop_Config.WindowPosition.X+215, Shop_Config.WindowPosition.Y+196, 95, 1)
			EndDrawBar()

            line = Shop_Config.WindowPosition.Y+195
			

            SetBlend()
	        EndDrawBar()
			--
            EnableAlphaTest()
			
			
			
			
			-- ADICIONAR NO CARRINHO
            if Shop_Config.Current.Item.Origin == 0 then
                Shop.CreateButton(Shop_Config.ButtonID.addtocart, Shop_Config.WindowPosition.X+258+shopX-25, Shop_Config.WindowPosition.Y+276, 90, 20)
                
				if Shop.ButtonMouseOver(Shop_Config.ButtonID.addtocart, MousePosX(), MousePosY()) then
					RenderImage2(40031, 258+shopX-25, 300, 92, 22, 0.005000, 0.222000, 0.616000, 0.188000, 1, 1, 1.0)
				elseif not Shop.ButtonClicked(Shop_Config.ButtonID.addtocart) then
					RenderImage2(40031, 258+shopX-25, 300, 92, 22, 0.005000, 0.005000, 0.616000, 0.188000, 1, 1, 1.0)
				else
					RenderImage2(40031, 258+shopX-25, 300, 92, 22, 0.005000, 0.005000, 0.616000, 0.188000, 1, 1, 1.0)
				end
			
                line = line+20
                SetFontType(0)
                SetTextBg(0,0,0,0)
                SetTextColor(255,255,255,255)
                RenderText3(Shop_Config.WindowPosition.X+285+shopX-23, Shop_Config.WindowPosition.Y+277, Shop_Config.Texts[GetLanguage()][11], 95, 8)
            else
				
                Shop.CreateButton(Shop_Config.ButtonID.removefromcart, Shop_Config.WindowPosition.X+473+shopX-25, Shop_Config.WindowPosition.Y+300, 90, 20)
	            if Shop.ButtonMouseOver(Shop_Config.ButtonID.removefromcart, MousePosX(), MousePosY()) then
					RenderImage2(40031, 470+shopX-25, 330, 92, 22, 0.005000, 0.222000, 0.616000, 0.188000, 1, 1, 1.0)
				elseif not Shop.ButtonClicked(Shop_Config.ButtonID.removefromcart) then
					RenderImage2(40031, 470+shopX-25, 330, 92, 22, 0.005000, 0.005000, 0.616000, 0.188000, 1, 1, 1.0)
				else
					RenderImage2(40031, 470+shopX-25, 330, 92, 22, 0.005000, 0.222000, 0.616000, 0.188000, 1, 1, 1.0)
				end
				
				
                SetFontType(0)
                SetTextBg(0,0,0,0)
                SetTextColor(255,255,255,255)
                RenderText3(Shop_Config.WindowPosition.X+500+shopX-25, Shop_Config.WindowPosition.Y+307, Shop_Config.Texts[GetLanguage()][13], 95, 8)
			
             
            end
        end
        --#endregion

        --#region MOSTRA O ITEM E A DESCRIÇÃO
		if Shop_Config.Current.Item.ListID ~= 0 then
			SetBlend()
			
			local precoX = Shop_Config.WindowPosition.X + 231+shopX-25  -- Posição X fixa
			local precoY = Shop_Config.WindowPosition.Y + 245  -- Posição Y fixa
			-- Renderiza a imagem do item
			CreateItem(Shop_Config.WindowPosition.X+300+Shop_Config.Current.Item.Config.Pos.X+shopX-25, Shop_Config.WindowPosition.Y+210+Shop_Config.Current.Item.Config.Pos.Y, Shop_Config.Current.Item.Config.Pos.W, Shop_Config.Current.Item.Config.Pos.H, GET_ITEM(Shop_Config.Current.Item.Options.Section, Shop_Config.Current.Item.Options.Index), 0, 0, 0, 1.00)
			
			-- Renderiza o preço na posição fixa
			SetFontType(0)  -- Define a fonte
			SetTextBg(23, 23, 23, 255)  -- Define o fundo do texto (transparente)
			SetTextColor(191, 181, 124, 255)  -- Define a cor do texto (branco)
			RenderText3(precoX, precoY, string.format("Valor: %d %s", Shop_Config.Current.Item.Price * Shop_Config.Quantity, Shop_Coins[Shop_Config.Current.Coin][GetLanguage()]), 125, ALIGN_CENTER)
			
			-- Resto do código para a descrição do item
			if not Shop_Config.AlertWindow.Open then
				if MousePosX() >= Shop_Config.WindowPosition.X+400+Shop_Config.Current.Item.Config.Pos.X and MousePosX() <= Shop_Config.WindowPosition.X+400+Shop_Config.Current.Item.Config.Pos.X+Shop_Config.Current.Item.Config.Pos.W+shopX-25 then
					if MousePosY() >= Shop_Config.WindowPosition.Y+200+Shop_Config.Current.Item.Config.Pos.Y and MousePosY() <= Shop_Config.WindowPosition.Y+200+Shop_Config.Current.Item.Config.Pos.Y+Shop_Config.Current.Item.Config.Pos.H then
						
						local exc = 0
						if  Shop_Config.Current.Item.Options.Exc[1] == 1 then
							exc = exc + 1
						end
						if  Shop_Config.Current.Item.Options.Exc[2] == 1 then
							exc = exc + 2
						end
						if  Shop_Config.Current.Item.Options.Exc[3] == 1 then
							exc = exc + 4
						end
						if  Shop_Config.Current.Item.Options.Exc[4] == 1 then
							exc = exc + 8
						end
						if  Shop_Config.Current.Item.Options.Exc[5] == 1 then
							exc = exc + 16
						end
						if  Shop_Config.Current.Item.Options.Exc[6] == 1 then
							exc = exc + 32
						end
						ShowItemDescription(Shop_Config.WindowPosition.X+470+Shop_Config.Current.Item.Config.Pos.X+shopX-25, Shop_Config.WindowPosition.Y+130+Shop_Config.Current.Item.Config.Pos.Y, GET_ITEM(Shop_Config.Current.Item.Options.Section, Shop_Config.Current.Item.Options.Index), Shop_Config.Current.Item.Options.Level, Shop_Config.Current.Item.Options.Skill, Shop_Config.Current.Item.Options.Luck, Shop_Config.Current.Item.Options.Option, 255, exc, 0)
						
					end
				end
			end
			EndDrawBar()
		end
		--#endregion

    end

    if Shop_Config.AlertWindow.Open then
		local addX = WindowGetWidthAdd()
            --RenderImage(0X7A5A, 215, 150, 223, 140)
            RenderImage2(40040, 210+shopX-25, 177,  225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)
			RenderImage2(40063, 210+shopX-25, 210,  225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)


        if Shop_Config.AlertWindow.Type == 0 then
            EnableAlphaTest()
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
           

            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 200, Shop_Config.Texts[GetLanguage()][17], 190, 8)
            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()

            EnableAlphaTest()

            Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 290+shopX-25, 225, 75, 28)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
				else
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
				end
			else
				RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
			end
        
            
            SetFontType(0)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 235, Shop_Config.Texts[GetLanguage()][16], 30, 9)

            SetBlend()
	        EndDrawBar()
			--
            EnableAlphaTest()
        end

        if Shop_Config.AlertWindow.Type == 1 then
            EnableAlphaTest()
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,179,0,255)
            --RenderText3(326, 161, Shop_Config.Texts[GetLanguage()][1], 150, 8)

            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 200, Shop_Config.Texts[GetLanguage()][18], 190, 8)
            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()

            EnableAlphaTest()
            Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 290+shopX-25, 225, 75, 28)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
				else
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
				end
			else
				RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
			end
        
            
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 235, Shop_Config.Texts[GetLanguage()][16], 30, 9)

            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()
        end

        if Shop_Config.AlertWindow.Type == 2 then
            EnableAlphaTest()
			SetFontType(0)
			SetTextColor(255, 255, 255, 255)
			RenderText3(326+shopX-25, 200, Shop_Config.Texts[GetLanguage()][19], 190, 8)
			EndDrawBar()


            Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 290+shopX-25, 225, 75, 28)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
				else
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
				end
			else
				RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
			end
        
            
            SetFontType(0)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(301+shopX-25, 234, Shop_Config.Texts[GetLanguage()][16], 30, 9)
			

            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()
        end

        if Shop_Config.AlertWindow.Type == 3 then
            EnableAlphaTest()
			

            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255, 255, 255,255)
            RenderText3(326+shopX-25, 200, Shop_Config.Texts[GetLanguage()][20], 190, 8)
            RenderText3(326+shopX-25, 210, Shop_Config.Texts[GetLanguage()][21], 190, 8)
            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()

            EnableAlphaTest()
            Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 290+shopX-25, 240, 75, 28)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
					RenderImage2(40031, 291+shopX-25, 245, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
				else
					RenderImage2(40031, 291+shopX-25, 245, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
				end
			else
				RenderImage2(40031, 291+shopX-25, 245, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
			end
        
            
            SetFontType(0)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(302+shopX-25, 252, Shop_Config.Texts[GetLanguage()][16], 30, 9)

            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()
        end

        if Shop_Config.AlertWindow.Type == 4 then
            EnableAlphaTest()
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,179,0,255)
           -- RenderText3(326, 161, Shop_Config.Texts[GetLanguage()][1], 150, 8)

            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 200, Shop_Config.Texts[GetLanguage()][22], 190, 8)
            RenderText3(326+shopX-25, 210, Shop_Config.Texts[GetLanguage()][23], 190, 8)
            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()

            EnableAlphaTest()
            Shop.CreateButton(Shop_Config.ButtonID.shopHcash, 290+shopX-25, 240, 75, 28)
            if not Shop.ButtonClicked(Shop_Config.ButtonID.shopHcash) then			
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, MousePosX(), MousePosY()) then
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
				else
					RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.012000, 0.610000, 0.180000, 1, 1, 1.0)
				end
			else
				RenderImage2(40031, 291+shopX-25, 228, 55, 21, 0.009000, 0.222000, 0.610000, 0.180000, 1, 1, 1.0)
			end
        
            
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(255,255,255,255)
            RenderText3(326+shopX-25, 250, Shop_Config.Texts[GetLanguage()][16], 30, 9)

            DisableAlphaBlend()
            SetBlend()
            EndDrawBar()
        end
    end
    
end

function Shop.UpdateMouse()
    local windowWidth = WindowGetWidth()
    local windowHeight = WindowGetHeight()

    -- Defina as coordenadas baseadas na resolução
    local centerX = windowWidth / 2
    local centerY = windowHeight / 2

    -- Ajuste as posições dos elementos da interface
    local shopWidth = 600  -- Largura da loja
    local shopHeight = 400 -- Altura da loja

    local shopX = centerX - (shopWidth / 2)
    local shopY = centerY - (shopHeight / 2)

	
    local x = MousePosX()
    local y = MousePosY()
    if Shop.ButtonMouseOver(Shop_Config.ButtonID.abrir, x, y) then 
        DisableClickClient()
	end

    if Shop.IsShopOpen() then
        DisableClickClient()
    end
end

function Shop.RolarListaItens(Dir)
    if Dir > 0 then
        if Shop_Config.Lista.Offset > 1 then
            Shop_Config.Lista.Offset = Shop_Config.Lista.Offset - 1
			Shop_Config.Lista.MaxValue = Shop_Config.Lista.MaxValue - 1
			return 1
        end
    elseif Dir < 0 then
        if Shop_Config.Lista.MaxValue < #Shop_Config.Lista.Itens then
            Shop_Config.Lista.Offset = Shop_Config.Lista.Offset + 1
            Shop_Config.Lista.MaxValue = Shop_Config.Lista.MaxValue + 1
			return 1
        end
    end
	
	return 0
end

function Shop.RolarListaCarrinho(Dir)
    if Dir > 0 then
        if Shop_Config.ListaCarrinho.Offset > 1 then
            Shop_Config.ListaCarrinho.Offset = Shop_Config.ListaCarrinho.Offset - 1
			Shop_Config.ListaCarrinho.MaxValue = Shop_Config.ListaCarrinho.MaxValue - 1
			return 1
        end
    elseif Dir < 0 then
        if Shop_Config.ListaCarrinho.MaxValue < #Shop_Config.ListaCarrinho.Itens then
            Shop_Config.ListaCarrinho.Offset = Shop_Config.ListaCarrinho.Offset + 1
            Shop_Config.ListaCarrinho.MaxValue = Shop_Config.ListaCarrinho.MaxValue + 1
			return 1
        end
    end
	
	return 0
end


function Shop.MudarCategoria(v)
    if Shop_Config.Current.Item.ListID ~= 0 and Shop_Config.Current.Item.Origin == 0 then
        Shop.ResetCurrentItem()
    end
    Shop_Config.Current.Categorie = Shop_Config.Current.Categorie + v
    Shop.GerarListaItens()
    Shop.GerarScrollBarItens()
end

function Shop.ScrollMouse(Dir)
    if not Shop.IsShopOpen() then return 0 end
	
    local x = MousePosX()
    local y = MousePosY()
	local windowWidth = WindowGetWidth()
    local windowHeight = WindowGetHeight()

    -- Defina as coordenadas baseadas na resolução
    local centerX = windowWidth / 2
    local centerY = windowHeight / 2

    -- Ajuste as posições dos elementos da interface
    local shopWidth = 600  -- Largura da loja
    local shopHeight = 400 -- Altura da loja

    local shopX = centerX - (shopWidth / 2)
    local shopY = centerY - (shopHeight / 2)
	
    if Shop_Config.Current.Page == 1 then
        if x >= Shop_Config.WindowPosition.X+21+shopX-25 and x <= Shop_Config.WindowPosition.X+21+shopX-25+159 then
            if y >= Shop_Config.WindowPosition.Y+99 and y <= Shop_Config.WindowPosition.Y+99+259 then
				return Shop.RolarListaItens(Dir)
            end
        end

        if x >= Shop_Config.WindowPosition.X+416+shopX-25 and x <= Shop_Config.WindowPosition.X+416+shopX-25+159 then
            if y >= Shop_Config.WindowPosition.Y+135 and y <= Shop_Config.WindowPosition.Y+135+155 then
                return Shop.RolarListaCarrinho(Dir)
            end
        end
    end
	return 0 
end

function Shop.ClickEvent()
    local x = MousePosX()
    local y = MousePosY()
    if Shop.ButtonMouseOver(Shop_Config.ButtonID.abrir, x, y) then		
        if not Shop.IsShopOpen() then 
            Shop.SendRequestOpen()
        else
            Shop.Close()
        end
        return true  
	end

    if not Shop.IsShopOpen() then return end

    if Shop_Config.AlertWindow.Open then
        if Shop_Config.AlertWindow.Type == 0 then
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
                Shop_Config.AlertWindow.Open = false
                Shop_Config.AlertWindow.Type = 0
                return true
            end
        end

        if Shop_Config.AlertWindow.Type == 1 then
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
                Shop.Close()
                return true
            end
        end

        if Shop_Config.AlertWindow.Type == 2 then
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
                Shop_Config.AlertWindow.Open = false
                Shop_Config.AlertWindow.Type = 0
                return true
            end
        end

        if Shop_Config.AlertWindow.Type == 3 then
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
                Shop.Close()
                return true
            end
        end

        if Shop_Config.AlertWindow.Type == 4 then
            if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
                Shop_Config.AlertWindow.Open = false
                Shop_Config.AlertWindow.Type = 0
                return true
            end
        end

        return true
    end
    
    if Shop_Config.Current.Page == 0 then
        if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHgold, x, y) then
            Shop_Config.Current.Coin = 2
            Shop.GerarListaItens()
            Shop.GerarScrollBarItens()
            Shop.GerarListaCarrinho()
            Shop.GerarScrollBarCarrinho()
            Shop_Config.Current.Page = 1
            return true
	    end

        if Shop.ButtonMouseOver(Shop_Config.ButtonID.shopHcash, x, y) then
            Shop_Config.Current.Coin = 1
            Shop.GerarListaItens()
            Shop.GerarScrollBarItens()
            Shop_Config.Current.Page = 1
            return true
	    end
    else
        if Shop.ButtonMouseOver(Shop_Config.ButtonID.fechar, x, y) then
            Shop.Close()
            return true
	    end
    end

    if Shop_Config.Current.Page == 1 then 
        -- Handle quantity buttons
        if Shop.ButtonMouseOver(Shop_Config.ButtonID.menos, x, y) then
            Shop_Config.Button[Shop_Config.ButtonID.menos].clicked = true
            if Shop_Config.Quantity > 1 then
                Shop_Config.Quantity = Shop_Config.Quantity - 1
            end
            return true
        end

        if Shop.ButtonMouseOver(Shop_Config.ButtonID.mais, x, y) then
            Shop_Config.Button[Shop_Config.ButtonID.mais].clicked = true
            if Shop_Config.Quantity < 50 then
                Shop_Config.Quantity = Shop_Config.Quantity + 1
            end
            return true
        end

        if Shop.ButtonMouseOver(Shop_Config.ButtonID.esquerda, x, y) then
            if Shop_Config.Current.Categorie > 1 then
                Shop_Config.Button[Shop_Config.ButtonID.esquerda].clicked = true
                Shop.MudarCategoria(-1)
            end
            return true
	    end

        if Shop.ButtonMouseOver(Shop_Config.ButtonID.direita, x, y) then
            if Shop_Config.Current.Categorie < #Shop_Categories[GetLanguage()][Shop_Config.Current.Coin] then
                Shop_Config.Button[Shop_Config.ButtonID.direita].clicked = true
                Shop.MudarCategoria(1)
            end
            return true
	    end

        if Shop.ButtonMouseOver(Shop_Config.ButtonID.comprar, x, y) then
            if #Shop_Config.Carrinho > 0 then
                Shop_Config.Button[Shop_Config.ButtonID.comprar].clicked = true
                Shop.SendCheckout()
            end
            return true
	    end

        local line = Shop_Config.WindowPosition.Y+115
        if #Shop_Config.Lista.Itens > 0 then
            for id = Shop_Config.Lista.Offset, Shop_Config.Lista.MaxValue do
                if MousePosX() >= Shop_Config.WindowPosition.X+130 and MousePosX() <= Shop_Config.WindowPosition.X+255 and MousePosY() >= line-3 and MousePosY() <= line+12 then
                    local config = Shop_Config.Lista.Itens[id]
                    local item = {Section = config.Section, Index = config.Index, Level = 0, Skill = 0, Luck = 0, Option = 0, ExcCount = 0, Exc = {[1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0, [6] = 0}}
                    if config.Level.Fixed ~= -1 then
                        item.Level = config.Level.Fixed
                    end
                    if config.Skill.Fixed ~= -1 then
                        item.Skill = config.Skill.Fixed
                    end
                    if config.Luck.Fixed ~= -1 then
                        item.Luck = config.Luck.Fixed
                    end
                    if config.Option.Fixed ~= -1 then
                        item.Option = config.Option.Fixed
                    end
                    for exc = 1, 6 do
                        if config.Exc.Fixed[exc] ~= -1 then
                            item.Exc[exc] = config.Exc.Fixed[exc]
                            if config.Exc.Fixed[exc] == 1 then
                                item.ExcCount = item.ExcCount + 1
                            end
                        end
                    end

                    Shop_Config.Current.Item.ListID = config.ListID
                    Shop_Config.Current.Item.Options = item
                    Shop_Config.Current.Item.Config = config
                    Shop_Config.Current.Item.Price = config.Price
                    Shop_Config.Current.Item.AddPrice = 0
                    Shop_Config.Current.Item.Origin = 0
                    return true
                end
                line = line + 20
            end
        end

        line = Shop_Config.WindowPosition.Y+150
        
        if #Shop_Config.ListaCarrinho.Itens > 0 then
            for i = Shop_Config.ListaCarrinho.Offset, Shop_Config.ListaCarrinho.MaxValue do
                local item = Shop_Config.ListaCarrinho.Itens[i]
                if item ~= nil then
                    if MousePosX() >= Shop_Config.WindowPosition.X+540 and MousePosX() <= Shop_Config.WindowPosition.X+650 and MousePosY() >= line-3 and MousePosY() <= line+12 then
                        local config = Shop_Config.ListaCarrinho.Itens[i].Config
                        local item2 = {Section = config.Section, Index = config.Index, Level = item.Options.Level, Skill = item.Options.Skill, Luck = item.Options.Luck, Option = item.Options.Option, ExcCount = item.Options.ExcCount, Exc = {[1] = item.Options.Exc[1], [2] = item.Options.Exc[2], [3] = item.Options.Exc[3], [4] = item.Options.Exc[4], [5] = item.Options.Exc[5], [6] = item.Options.Exc[6]}}
                                         
                        Shop_Config.Current.Item.ListID   = Shop_Config.ListaCarrinho.Itens[i].ListID
                        Shop_Config.Current.Item.Options  = item2
                        Shop_Config.Current.Item.Config   = config
                        Shop_Config.Current.Item.Price    = item.Price
                        Shop_Config.Current.Item.AddPrice = Shop_Config.ListaCarrinho.Itens[i].AddPrice
                        Shop_Config.Current.Item.Origin = 1
                        Shop_Config.TotalPriceTemp = Shop_Config.TotalPrice - Shop_Config.Current.Item.Price
                        return true              
                    end                
                    line = line + 20
                end
            end
        end

        if Shop_Config.Current.Item.ListID ~= 0 then
            if Shop_Config.Current.Item.Origin == 0 then
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.addtocart, x, y) then
                    Shop_Config.Button[Shop_Config.ButtonID.addtocart].clicked = true
                    local item = {}
                    item.Options = Shop_Config.Current.Item.Options
                    item.Config = Shop_Config.Current.Item.Config
                    item.Price = Shop_Config.Current.Item.Price * Shop_Config.Quantity  -- Multiply price by quantity
                    item.AddPrice = Shop_Config.Current.Item.AddPrice * Shop_Config.Quantity  -- Multiply add price by quantity
                    item.Quantity = Shop_Config.Quantity  -- Store the quantity
                    Shop_Config.TotalPrice = Shop_Config.TotalPrice + item.Price
                    item.Origin = 1
                    local id = #Shop_Config.Carrinho
                    item.ListID = id+1
                    Shop.ResetCurrentItem()
                    table.insert(Shop_Config.Carrinho, item)
                    Shop.GerarListaCarrinho()
                    Shop.GerarScrollBarCarrinho()
                    Shop_Config.Quantity = 1  -- Reset quantity after adding to cart
                    return true
                end
            else
                if Shop.ButtonMouseOver(Shop_Config.ButtonID.edit, x, y) then
                    Shop_Config.Button[Shop_Config.ButtonID.edit].clicked = true
                    for i in ipairs(Shop_Config.Carrinho) do
                        if Shop_Config.Carrinho[i].ListID == Shop_Config.Current.Item.ListID then
                            Shop_Config.Carrinho[i].Options = Shop_Config.Current.Item.Options
                            Shop_Config.Carrinho[i].Config = Shop_Config.Current.Item.Config
                            Shop_Config.Carrinho[i].Price = Shop_Config.Current.Item.Price
                            Shop_Config.Carrinho[i].AddPrice = Shop_Config.Current.Item.AddPrice
                            Shop_Config.Carrinho[i].Quantity = Shop_Config.Quantity  -- Update quantity

                            Shop_Config.TotalPrice = Shop_Config.TotalPriceTemp + (Shop_Config.Current.Item.Price * Shop_Config.Quantity)
                        end
                    end
                    Shop.ResetCurrentItem()
                    Shop.GerarListaCarrinho()
                    Shop.GerarScrollBarCarrinho()
                    return true
                end

                if Shop.ButtonMouseOver(Shop_Config.ButtonID.removefromcart, x, y) then
                    Shop_Config.Button[Shop_Config.ButtonID.removefromcart].clicked = true
                    local id = 0
                    for i in ipairs(Shop_Config.Carrinho) do
                        if Shop_Config.Carrinho[i].ListID == Shop_Config.Current.Item.ListID then
                            id = i
                        end
                    end
                    table.remove(Shop_Config.Carrinho, id)
                    Shop_Config.TotalPrice = Shop_Config.TotalPriceTemp
                    Shop.ResetCurrentItem()
                    Shop.GerarListaCarrinho()
                    Shop.GerarScrollBarCarrinho()
                    return true
                end
            end

            line = Shop_Config.WindowPosition.Y+195
            if Shop_Config.Current.Item.Config.Level.Has then
                line = line+10
                if Shop_Config.Current.Item.Config.Level.Fixed == -1 then
                    if Shop.ButtonMouseOver(Shop_Config.ButtonID.menos, x, y) then
                        Shop_Config.Button[Shop_Config.ButtonID.menos].clicked = true
                        if Shop_Config.Current.Item.Options.Level > 0 then
                            Shop_Config.Current.Item.Options.Level = Shop_Config.Current.Item.Options.Level - 1
                            if Shop_Config.Current.Item.Config.Level.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price - Shop_Config.Current.Item.Config.Level.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice - Shop_Config.Current.Item.Config.Level.Price
                            end
                        end
                        return true
                    end
                    if Shop.ButtonMouseOver(Shop_Config.ButtonID.mais, x, y) then
                        Shop_Config.Button[Shop_Config.ButtonID.mais].clicked = true
                        if Shop_Config.Current.Item.Options.Level < Shop_Config.Current.Item.Config.Level.Max then
                            Shop_Config.Current.Item.Options.Level = Shop_Config.Current.Item.Options.Level + 1
                            if Shop_Config.Current.Item.Config.Level.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price + Shop_Config.Current.Item.Config.Level.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice + Shop_Config.Current.Item.Config.Level.Price
                            end
                        end
                        return true
                    end
                end
                line = line+20
            else
                line = line + 10
            end

            if Shop_Config.Current.Item.Config.Skill.Has then
                if Shop_Config.Current.Item.Config.Skill.Fixed == -1 then
                    if Shop.ButtonMouseOver(Shop_Config.ButtonID.skill, x, y) then
                        if Shop_Config.Current.Item.Options.Skill == 0 then
                            Shop_Config.Current.Item.Options.Skill = 1
                            if Shop_Config.Current.Item.Config.Skill.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price + Shop_Config.Current.Item.Config.Skill.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice + Shop_Config.Current.Item.Config.Skill.Price
                            end
                        else
                            Shop_Config.Current.Item.Options.Skill = 0
                            if Shop_Config.Current.Item.Config.Skill.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price - Shop_Config.Current.Item.Config.Skill.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice - Shop_Config.Current.Item.Config.Skill.Price
                            end
                        end
                        return true
                    end
                end
                line = line+14
            end

            if Shop_Config.Current.Item.Config.Luck.Has then
                if Shop_Config.Current.Item.Config.Luck.Fixed == -1 then
                    if Shop.ButtonMouseOver(Shop_Config.ButtonID.luck, x, y) then
                        if Shop_Config.Current.Item.Options.Luck == 0 then
                            Shop_Config.Current.Item.Options.Luck = 1
                            if Shop_Config.Current.Item.Config.Luck.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price + Shop_Config.Current.Item.Config.Luck.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice + Shop_Config.Current.Item.Config.Luck.Price
                            end
                        else
                            Shop_Config.Current.Item.Options.Luck = 0
                            if Shop_Config.Current.Item.Config.Luck.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price - Shop_Config.Current.Item.Config.Luck.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice - Shop_Config.Current.Item.Config.Luck.Price
                            end
                        end
                        return true
                    end
                end
                line = line+14
            end

            if Shop_Config.Current.Item.Config.Option.Has then
                if Shop_Config.Current.Item.Config.Option.Fixed == -1 then
                    if Shop.ButtonMouseOver(Shop_Config.ButtonID.option, x, y) then
                        if Shop_Config.Current.Item.Options.Option == 0 then
                            Shop_Config.Current.Item.Options.Option = 7
                            if Shop_Config.Current.Item.Config.Option.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price + Shop_Config.Current.Item.Config.Option.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice + Shop_Config.Current.Item.Config.Option.Price
                            end
                        else
                            Shop_Config.Current.Item.Options.Option = 0
                            if Shop_Config.Current.Item.Config.Option.Price > 0 then
                                Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price - Shop_Config.Current.Item.Config.Option.Price
                                Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice - Shop_Config.Current.Item.Config.Option.Price
                            end
                        end
                        return true
                    end
                end
                line = line+14
            end

            if Shop_Config.Current.Item.Config.Exc.Has then
                for exc = 6, 1, -1 do
                    if Shop_Config.Current.Item.Config.Exc.Fixed[exc] == -1 then
                        if Shop.ButtonMouseOver(Shop_Config.ButtonID.exc[exc], x, y) then       
                                if Shop_Config.Current.Item.Options.Exc[exc] == 0 then
                                    if Shop_Config.Current.Item.Options.ExcCount < Shop_Config.Current.Item.Config.Exc.Max then
                                        Shop_Config.Current.Item.Options.Exc[exc] = 1
                                        Shop_Config.Current.Item.Options.ExcCount = Shop_Config.Current.Item.Options.ExcCount + 1
                                        if Shop_Config.Current.Item.Config.Exc.Price > 0 then
                                            Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price + Shop_Config.Current.Item.Config.Exc.Price
                                            Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice + Shop_Config.Current.Item.Config.Exc.Price
                                        end
                                    else
                                        Shop_Config.AlertWindow.Type = 0
                                        Shop_Config.AlertWindow.Open = true
                                    end
                                    
                                else
                                    Shop_Config.Current.Item.Options.Exc[exc] = 0
                                    Shop_Config.Current.Item.Options.ExcCount = Shop_Config.Current.Item.Options.ExcCount - 1
                                    if Shop_Config.Current.Item.Config.Exc.Price > 0 then
                                        Shop_Config.Current.Item.Price = Shop_Config.Current.Item.Price - Shop_Config.Current.Item.Config.Exc.Price
                                        Shop_Config.Current.Item.AddPrice = Shop_Config.Current.Item.AddPrice - Shop_Config.Current.Item.Config.Exc.Price
                                    end
                                end
                                return true
                        end
                    end

                    line = line+14
                end
            end
        end
    end
end

function Shop.UpdateKey()
    if Shop.IsShopOpen() then
        DisableClickClient()
    end
	
	if CheckWindowOpen(UIChatWindow) == 0 then
		if CheckPressedKey(Keys.X) == 1 then
			if not Shop.IsShopOpen() and not Shop.IsOtherInterfacesOpen() then
				DisableClickClient()
				Shop.SendRequestOpen()
				return
			end
	
			if Shop.IsShopOpen() then
				DisableClickClient()
				Shop.Close()
				return
			end 
		end
	
		if CheckPressedKey(Keys.Escape) == 1 then
			if Shop.IsShopOpen() then
				DisableClickClient()
				Shop.Close()
				return
			end
		end
	end
end

function Shop.Protocol(Packet, PacketName)
    if Packet ~= Shop_Config.Packet then return false end

    local name, index = UserGetName(), UserGetIndex()

    if PacketName == string.format("2-%s-%s", name, index) then
        local tp = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        if tp == 1 then
            Shop_Config.AlertWindow.Type = tp
            Shop_Config.AlertWindow.Open = false
        end
        Shop.Open()
        return true
    end

    if PacketName == string.format("4-%s-%s", name, index) then
        local tp = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        Shop_Config.AlertWindow.Type = tp
        Shop_Config.AlertWindow.Open = true
        return true
    end
end

function Shop.SendCheckout()
    local name, index = UserGetName(), UserGetIndex()
    local PacketName = string.format("3-%s-%s", name, index)

    CreatePacket(PacketName, Shop_Config.Packet)
    -- Primeiro enviamos o tipo de moeda
    SetBytePacket(PacketName, Shop_Config.Current.Coin)
    -- Depois o preço total
    SetDwordPacket(PacketName, Shop_Config.TotalPrice)
    -- Quantidade de itens no carrinho
    local qtd = #Shop_Config.Carrinho
    SetBytePacket(PacketName, qtd)

    for i = 1, qtd do
        local item = Shop_Config.Carrinho[i]
        local itemName = GetNameByIndex(GET_ITEM(item.Options.Section, item.Options.Index))
        -- Tamanho do nome do item
        SetBytePacket(PacketName, itemName:len())
        -- Nome do item
        SetCharPacketLength(PacketName, itemName, itemName:len())
        -- Seção e índice
        SetBytePacket(PacketName, item.Options.Section)
        SetWordPacket(PacketName, item.Options.Index)
        -- Atributos
        SetBytePacket(PacketName, item.Options.Level)
        SetBytePacket(PacketName, item.Options.Skill)
        SetBytePacket(PacketName, item.Options.Luck)
        SetBytePacket(PacketName, item.Options.Option)
        -- Excelentes
        for exc = 1, 6 do
            SetBytePacket(PacketName, item.Options.Exc[exc])
        end
        -- Quantidade (enviada por último)
        SetWordPacket(PacketName, item.Quantity)
    end

    SendPacket(PacketName)
    ClearPacket(PacketName)
end

Shop.Init()

return Shop