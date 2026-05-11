DURABILITY_SWITCH = 1

local DURABILITY_MESSAGES = {}

DURABILITY_MESSAGES['Por'] = {
[1] = 'Fechar',  
[2] = 'Durabilidade reparada com sucesso', 
}

DURABILITY_MESSAGES['Eng'] = {
[1] = 'Fechar',  
[2] = 'Durabilidade reparada com sucesso',  
}

DURABILITY_MESSAGES['Spn'] = {
[1] = 'Fechar',  
[2] = 'Durabilidade reparada com sucesso', 
}

Durability = {}

local DurabilityVisible = 0

function Durability.Render()

	if DurabilityVisible == 0
    then
        return
    end	
	
	local PosX = (483 / 2) - (200 / 2)
    local PosY = 90
	
	glColor4f(0.0, 0.0, 0.0, 0.5)

	DrawBar(PosX+80	, PosY + 90, 190, 80, 0.0, 0)
	
	DrawBar(PosX+80, PosY + 90, 190, 80, 0.0, 0)

    --button
	if MousePosX() >=  290 and MousePosY() >= 225 and MousePosX() <= 351 and MousePosY() <=245
	then
	glColor4f(0.2975, 0.3255, 0.35, 0.8)
	else
	glColor4f(0.2975, 0.3255, 0.35, 1.0)
	end
	DrawBar(290, 225, 62, 22)

	EndDrawBar()
	
    local PosX = (640 / 2) - (335 / 2)
    local PosY = 50
	
	GLSwitchBlend()	
	
	glColor3f(1.0, 1.0, 1.0)
	
	SetFontType(1)
	
	SetTextBg(0, 0, 0, 0)
	
	SetTextColor(255, 255, 255, 255)
	
    RenderText3(275, 200, string.format(DURABILITY_MESSAGES[GetLanguage()][2], 80, 8)) 
	
	RenderText3(313, 232, string.format(DURABILITY_MESSAGES[GetLanguage()][1], 80, 8))
	
    DisableAlphaBlend() 

end

function Durability.UpdateMouse()

    if Durability.CheckRender() == 0
    then
        return
    end

    if	CheckWindowOpen(UIInventory) == 1 and CheckWindowOpen(UICharacter) == 0
	then
        if (MousePosX() >= 500 and MousePosX() <= 500 + 37)
            and (MousePosY() >= 393 and MousePosY() <= 393 + 26)
        then
            if (CheckClickClient() == 1)
            then
                local packetName = "durability"
    			CreatePacket (packetName, 7550)
    			SetBytePacket(packetName, 1)
    			SendPacket(packetName)
    			ClearPacket(packetName)
				DisableClickClient()
				CloseWindow(UIInventory)
				DurabilityVisible = 1
				return
            end
        end
    end
	
    if	CheckWindowOpen(UIInventory) == 1 and CheckWindowOpen(UICharacter) == 1
	then
        if (MousePosX() >= 310 and MousePosX() <= 310 + 37)
            and (MousePosY() >= 393 and MousePosY() <= 393 + 26)
        then
            if (CheckClickClient() == 1)
            then
                local packetName = "durability"
    			CreatePacket (packetName, 7550)
    			SetBytePacket(packetName, 1)
    			SendPacket(packetName)
    			ClearPacket(packetName)
				DisableClickClient()
				CloseWindow(UIInventory)
				DurabilityVisible = 1
				return
            end
        end
    end
	
	if DurabilityVisible == 1
	then
	    if MousePosX() >=  290 and MousePosY() >= 225 and MousePosX() <= 351 and MousePosY() <=245
	    then
		    if (CheckClickClient() == 1)
			then
			    DurabilityVisible = 0
				DisableClickClient()
				return
			end
		end
	end
end


function Durability.UpdateKeyEvent()
    if DurabilityVisible ~= 1
    then
        return
    end

    if (CheckPressedKey(Keys.Escape) == 1) or (CheckPressedKey(Keys.V) == 1) or (CheckPressedKey(Keys.L) == 1)  or (CheckPressedKey(Keys.I) == 1)
	or (CheckPressedKey(Keys.P) == 1)  or (CheckPressedKey(Keys.G) == 1)  or (CheckPressedKey(Keys.C) == 1)
	then
		DurabilityVisible = 0
	end
end

function Durability.CheckRender()
    if CheckWindowOpen(UIWarehouse) == 1 or CheckWindowOpen(UIChaosBox) == 1 or CheckWindowOpen(UIShop) == 1
	or CheckWindowOpen(UICashShop) == 1 or CheckWindowOpen(UISkillTree) == 1 or CheckWindowOpen(UIFullMap) == 1 or CheckWindowOpen(UITrade) == 1
    or (CheckWindowOpen(UIWarehouse) == 1 and CheckWindowOpen(UIExpandWarehouse) == 1)
	or (CheckWindowOpen(UIChaosBox) == 1 and CheckWindowOpen(UIExpandInventory) == 1)
	
    then
        return 0
    end

    return 1

end


function Durability.Init()
    if DURABILITY_SWITCH ~= 1
    then
        return
    end
	
	InterfaceController.UpdateMouse(Durability.UpdateMouse)
	InterfaceController.UpdateKey(Durability.UpdateKeyEvent)
	InterfaceController.MainProc(Durability.Render)
end

Durability.Init()

return Durability