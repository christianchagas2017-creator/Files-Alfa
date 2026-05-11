RingTransformation = {}

function RingTransformation.Init()
    if RingTransformation_Config.Enabled then
		GameServerFunctions.CharacterSet(RingTransformation.CheckRing)
    end
end

function RingTransformation.CheckRing(aIndex)
	local player = User.new(aIndex)

	if player:getType() ~= 1 then
		return 0
	end

	local pInv = Inventory.new(aIndex)
	local change = -1

	for i in ipairs(RingTransformation_Config.Rings) do
		local Ring = RingTransformation_Config.Rings[i]

		for _, slots in ipairs(Ring.Slots) do
			if pInv:isItem(slots) == 1 then
				if pInv:getIndex(slots) == Utils.GetItem(Ring.Section, Ring.Index) then
					if player:getClass() == CLASS_DW then
						change = Ring.SM
					elseif player:getClass() == CLASS_DK then
						change = Ring.BK
					elseif player:getClass() == CLASS_FE then
						change = Ring.ELF
					elseif player:getClass() == CLASS_MG then
						change = Ring.MG
					elseif player:getClass() == CLASS_DL then
						change = Ring.SM
					elseif player:getClass() == CLASS_SU then
						change = Ring.ELF
					elseif player:getClass() == CLASS_RF then
						change = Ring.BK
					end
				end
			end
		end
	end

	if player:getSkin() >= 0 and player:getSkin() == change then
		return
	end

	if change ~= -1 then
		player:setSkin(change)
		Timer.TimeOut(1, ViewportCreate, aIndex)
		return 0
	end
end


RingTransformation.Init()

return RingTransformation