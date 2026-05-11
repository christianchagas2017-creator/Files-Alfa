UseItem = {}

function UseItem.RightClick()
	if CheckRepeatKey(Keys.ShiftKey) ~= 0 then
		local slotitem = GetInventoryMouseItemSlot()
	if slotitem >= 12 then
		local PacketName = string.format("1-%s-%d", UserGetName(),UserGetIndex())		
    	CreatePacket(PacketName, 88)
    	SetBytePacket(PacketName, slotitem)
    	SendPacket(PacketName)
    	ClearPacket(PacketName)
    	return
		end
	end
end

InterfaceController.InterfaceClickRightEvent(UseItem.RightClick)

return UseItem