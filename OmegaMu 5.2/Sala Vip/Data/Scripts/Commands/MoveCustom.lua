--[[Moves Customs]]--

MoveSystem = {}

SerializeMoves = {}

function MoveSystem.Serialize()
	for i in ipairs(MOVES_CUSTOMS) do
		local move = MOVES_CUSTOMS[i]

		SerializeMoves[move.Move] = { Identification = i }
	end
end

function MoveSystem.CheckMove(aIndex, Command, Arguments)
	local getMove = SerializeMoves[Command]

	if getMove ~= nil
	then
		local move = MOVES_CUSTOMS[getMove.Identification]

		if move ~= nil
		then
			local player = User.new(aIndex)
			local Language = player:getLanguage()
			local pInv = Inventory.new(aIndex)
			local Name = player:getName()

			if player:getInterfaceUse() ~= 0 or player:getInterfaceType() ~= 0 or player:getTeleport() ~= 0 or player:getDieRegen() ~= 0
			then
				SendMessage(string.format(MOVE_CUSTOM_MESSAGE[Language][1]), aIndex, 1)
				return 1
			end

			if move.Map == 10 and pInv:isItem(7) == 0
			then
				if pInv:isItem(8) == 0 or pInv:getIndex(8) ~= Utils.GetItem(13, 3) and pInv:getIndex(8)
				then
					SendMessage(string.format(MOVE_CUSTOM_MESSAGE[Language][4]), aIndex, 1)
					return 1
				end
			end

			if move.Map == 7 and pInv:isItem(8) ~= 0
			then
				if pInv:getIndex(8) == Utils.GetItem(13, 2) or pInv:getIndex(8) == Utils.GetItem(13, 3)
				then
					SendMessage(string.format(MOVE_CUSTOM_MESSAGE[Language][5]), aIndex, 1)
					return 1
				end
			end

			local x = GetRandomValue(move.CoordX, move.MCoordX)
			local y = GetRandomValue(move.CoordY, move.MCoordY)
			Teleport(aIndex, move.Map, x, y)

			return 1
		end
	end

	return 0
end

if MOVES_CUSTOMS_SWITCH ~= 0
then
	MoveSystem.Serialize()
	Commands.CallCommand(MoveSystem.CheckMove)
end

return MoveSystem