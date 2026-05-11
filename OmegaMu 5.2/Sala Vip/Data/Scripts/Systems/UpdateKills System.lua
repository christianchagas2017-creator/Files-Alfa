--[[ SrcKill System ]]--

SrcKill = {}

local SRCKILL_COMMAND_SWITCH = 1
local SRCKILL_COMMAND = "/deathkill"
local ADDKILL_COMMAND = "/addkill"
local REMOVEKILL_COMMAND = "/removekill"

DEATH_RANKING_ITEM = {}
DEATH_RANKING_ITEM[43] = {}




local DeathsCount = 0

function SrcKill.Command(aIndex, Arguments)

	if SRCKILL_COMMAND_SWITCH == 0
	then
		return
	end

	local player = User.new(aIndex)

	local TargetName = player:getName()
	local TargetIndex = aIndex

	if Cmd:getString(Arguments, 1, 0) ~= "" then 
		TargetName = Cmd:getString(Arguments, 1, 0)
		TargetIndex = GetIndex(TargetName)
	end

	local PtInv = Inventory.new(TargetIndex)
	local PlayerItemIndex = PtInv:getIndex(0)
	
	local item = Utils.InventoryGetItemTable(TargetIndex, 0)
	
	if DEATH_RANKING_ITEM[PlayerItemIndex] ~= nil then 
		local PlayerItemSerial = PtInv:getSerial(0)
		DeathsCount = DataBase.GetValue("DeathSystem", "Deaths", "m_Serial", PlayerItemSerial)
		SendMessage(string.format("[SrcSystem] SW/MC Death encontrada no Player %s.", TargetName), aIndex, 1)
		SendMessage(string.format("[SrcSystem] m_Serial: %s", PlayerItemSerial), aIndex, 1)
		SendMessage(string.format("[SrcSystem] Kill's: %d", DeathsCount), aIndex, 1)
	else 
		SendMessage(string.format("[SrcSystem] O Player %s nao equipa item ranking", TargetName), aIndex, 1)
	end
	
end

function SrcKill.AddKill(aIndex, Arguments)
	local player = User.new(aIndex)
	local pInv = Inventory.new(aIndex)
	local quantidade = Cmd:getNumber(Arguments, 1)
	local serial = pInv:getSerial(0)

	
	if DEATH_RANKING_ITEM[pInv:getIndex(0)] ~= nil then 
		LogAddC(2, quantidade)
		LogAddC(2, aIndex)
		InsertCounter(aIndex, 0, quantidade)
		UpdateCounter(aIndex)
		ViewportCreate(aIndex)
		SendMessage(string.format("Mortes adicionada com sucesso"), aIndex, 1)
	else 
		SendMessage(string.format("Você precisa estar equipado com o item"), aIndex, 1)
		SendMessage(string.format("Onde equipa a sword"), aIndex, 1)
	end
	
end

function SrcKill.RemoveKill(aIndex, Arguments)
	local player = User.new(aIndex)
	local pInv = Inventory.new(aIndex)
	local quantidade = Cmd:getNumber(Arguments, 1)
	local serial = pInv:getSerial(0)
	
	
	if DEATH_RANKING_ITEM[pInv:getIndex(0)] ~= nil then 
		DecreaseCounter(aIndex, 0, quantidade)
		UpdateCounter(aIndex)
		ViewportCreate(aIndex)
		SendMessage(string.format("Mortes removida com sucesso"), aIndex, 1)
	else 
		SendMessage(string.format("Você precisa estar equipado com o item"), aIndex, 1)
		SendMessage(string.format("Onde equipa a sword"), aIndex, 1)
	end
	
end


Commands.Register(SRCKILL_COMMAND, SrcKill.Command)
Commands.Register(ADDKILL_COMMAND, SrcKill.AddKill)
Commands.Register(REMOVEKILL_COMMAND, SrcKill.RemoveKill)

return SrcKill