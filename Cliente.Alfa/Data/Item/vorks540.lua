PETDROPITEM_SWITCH = 1

PetDropItem = {}

local PetDropItemVisible = 0
local PetDropItemVisible1 = 0
local PetDropItemVisible2 = 0
local PetDropItemVisible3 = 0
local PetDropItemVisible4 = 0
local PetDropItemImage = -1


function PetDropItem.Init()
    if PETDROPITEM_SWITCH ~= 1
    then
        return
    end
    InterfaceController.LoadImages(PetDropItem.LoadImages)
	InterfaceController.BeforeMainProc(PetDropItem.Render)
	InterfaceController.ClientProtocol(PetDropItem.Protocol)
end

function PetDropItem.Render()

	if PetDropItemVisible == 0
    then
        return
    end	

	
	EnableAlphaTest()
--------------------------------------------------------------------
	RenderImage(PetDropItemImage, 190, 15, 25, 25)
	if PetDropItemVisible4 == 0
	then
		glColor4f(1.0, 0.0, 0.0, 0.2)
	    DrawBar(190, 15, 25, 25, 0.0, 0)
	end
--------------------------------------------------------------------
	--cima
    if PetDropItemVisible1 == 1 then
	    glColor4f(0.1, 1.0, 0.0, 0.9)
	    DrawBar(190, 15, 25, 0.4, 0.0, 0)
	else
	    glColor4f(1.0, 0.0, 0.0, 0.9)
	    DrawBar(190, 15, 25, 0.4, 0.0, 0)
	end
	--direito
	if PetDropItemVisible2 == 1 then
	    glColor4f(0.1, 1.0, 0.0, 0.9)
	    DrawBar(215, 15, 0.4, 25, 0.0, 0)
	else
	    glColor4f(1.0, 0.0, 0.0, 0.9)
	    DrawBar(215, 15, 0.4, 25, 0.0, 0)
	end
	-- baixo
	if PetDropItemVisible3 == 1 then
	    glColor4f(0.1, 1.0, 0.0, 0.9)
	    DrawBar(190, 40, 25.5, 0.4, 0.0, 0)
	else
	    glColor4f(1.0, 0.0, 0.0, 0.9)
	    DrawBar(190, 40, 25.5, 0.4, 0.0, 0)
	end
	--esquerdo
	if PetDropItemVisible4 == 1 then
	    glColor4f(0.1, 1.0, 0.0, 0.9)
	    DrawBar(190, 15, 0.4, 25, 0.0, 0)
	else
	    glColor4f(1.0, 0.0, 0.0, 0.9)
	    DrawBar(190, 15, 0.4, 25, 0.0, 0)
	end

	EndDrawBar()
	
    DisableAlphaBlend() 
end

function PetDropItem.LoadImages()
	PetDropItemImage = LoadImageByDir("Interface///ImagePDI.tga")
end

function PetDropItem.Protocol(Packet, PacketName)
    if PacketName == "PDI" then
        PetDropItemVisible = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
    end
	
    if PacketName == "HP1" then
        PetDropItemVisible1 = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
    end
	
    if PacketName == "HP2" then
        PetDropItemVisible2 = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
    end
	
    if PacketName == "HP3" then
        PetDropItemVisible3 = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
    end
	
    if PacketName == "HP4" then
        PetDropItemVisible4 = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
    end
end

PetDropItem.Init()

return PetDropItem