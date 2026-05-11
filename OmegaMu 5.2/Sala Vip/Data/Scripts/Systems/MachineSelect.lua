MachineSelect = {}

function MachineSelect.Init()
    if MachineSelect_Config.Enabled then
        GameServerFunctions.GameServerProtocol(MachineSelect.Protocol)
        GameServerFunctions.NpcTalk(MachineSelect.NpcTalk)
        --GameServerFunctions.LoadScript(MachineSelect.FixNpc)
        Timer.Interval(30, MachineSelect.FixNpc)
    end
end

function MachineSelect.FixNpc()
    for n = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do
		local monster = User.new(n)

		if monster:getConnected() > 0 then
			if monster:getClass() == MachineSelect_Config.Npc.Class then
				monster:setType(3)
			end
		end
        monster = nil
	end
end

function MachineSelect.NpcTalk(Npc, aIndex)
    local monster = User.new(Npc)

    local class = monster:getClass()

    if class ~= MachineSelect_Config.Npc.Class then return 0 end

    local map = monster:getMapNumber()

    if map ~= MachineSelect_Config.Npc.Map then return 0 end

    local x = monster:getX()

    if x < MachineSelect_Config.Npc.PosX or x > MachineSelect_Config.Npc.PosX then return 0 end

    local y = monster:getY()

    if y < MachineSelect_Config.Npc.PosY or y > MachineSelect_Config.Npc.PosY then return 0 end

    local player = User.new(aIndex)

    if Utils.IsPlayerBusy(player) then return 1 end

    CreatePacket("MachineOpen", MachineSelect_Config.Packet)
    SendPacket("MachineOpen", aIndex)
    ClearPacket("MachineOpen")
    return 1
end

function MachineSelect.Protocol(aIndex, Packet, PacketName)
    if Packet ~= MachineSelect_Config.Packet then return false end

    if PacketName == "MachineKey" then
        local key = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)

        local player = User.new(aIndex)

        if player:getChaosBoxGenesisSelectedComb() == 0 then
			player:setChaosBoxGenesisSelectedKey(key)
		end

		OpenChaosMachineGenesis(aIndex)

        Timer.TimeOut(1, MachineSelect.SendClose, aIndex)
        return true
    end
end

function MachineSelect.SendClose(aIndex)
    CreatePacket("MachineClose", MachineSelect_Config.Packet)
    SendPacket("MachineClose", aIndex)
    ClearPacket("MachineClose")
end

MachineSelect.Init()

return MachineSelect