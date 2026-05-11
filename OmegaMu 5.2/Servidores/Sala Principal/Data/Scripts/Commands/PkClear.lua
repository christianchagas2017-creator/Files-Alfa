--[[
Sistema Pk Clear
]]--

PkClearSystem = {}


function PkClearSystem.Init()
	if PKCLEAR_SWITCH == 0
	then
		return
	end
	
	Commands.Register(PKCLEAR_COMMAND["Por"].Command, PkClearSystem.LimparPk)
	Commands.Register(PKCLEAR_COMMAND["Eng"].Command, PkClearSystem.LimparPk)
	Commands.Register(PKCLEAR_COMMAND["Spn"].Command, PkClearSystem.LimparPk)

end

function PkClearSystem.LimparPk(aIndex, Arguments)
	if PKCLEAR_SWITCH == 0
	then
		return
	end
	
	local player = User.new(aIndex)
	local Language = player:getLanguage()
	local playerInfo = Utils.GetPlayerInfo(player)

	if player:getPKLevel() == 3
	then
		SendMessage(string.format(PK_CLEAR_MESSAGES[Language][1]), aIndex, 1)
		return
	end
	
	player:setPKCount(0)
	player:setPKLevel(3)
	player:setPKTime(0)
	
	PkLevelSend(aIndex, player:getPKLevel())

	--KillSystem.UpdateKills(player, playerInfo)
	
	SendMessage(string.format(PK_CLEAR_MESSAGES[Language][7]), aIndex, 1)
end

PkClearSystem.Init()

return PkClearSystem