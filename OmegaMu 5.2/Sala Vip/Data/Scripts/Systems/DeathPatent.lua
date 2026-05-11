DeathPatent = {}

local DEATH_PATENT_SWITCH = 1

local DEATH_PATENT_INFO = {

-- SWORD OF DEATH 

{Attack = GET_ITEM(0, 43), UseRingPendant = false, Ring01 = GET_ITEM(13, 149), Ring02 = GET_ITEM(13, 149), Pendant = GET_ITEM(13, 150)},


}

local DEATH_PATENT_RANKING = {
{MinDeaths = 10,          MaxDeaths =   200,    Top = 1, PatentNumber = 1,  PatentName = "Hitador",              PatentType = 2},
{MinDeaths = 201,         MaxDeaths =   400,    Top = 2, PatentNumber = 2,  PatentName = "Sanguinario",          PatentType = 2},
{MinDeaths = 401,         MaxDeaths =   600,    Top = 3, PatentNumber = 3,  PatentName = "Terceira Patente",     PatentType = 2},
}
local DEATH_PATENT_PLAYER = {}

function DeathPatent.GetSerialTop1()
	local Query = string.format("SELECT Top 1 m_Serial as Serial FROM DeathSystem ORDER BY Deaths DESC")
	ret = db:exec(Query)
	
	if ret == 0
	then
		LogAddC(2,string.format("Não foi possível executar a query: %s", Query))
		db:clear()
		return 0
	end
	
	nRet = db:fetch()
	if nRet == SQL_NO_DATA
	then
		LogAddC(2,string.format("Não foi possível executar a query: %s", Query))
		db:clear()
		return 0
	end
	
	local val = db:getInt('Serial')
	db:clear()
	return val
end

function DeathPatent.CheckPlayerItem(aIndex)
	if DEATH_PATENT_SWITCH == 0 then
		return 0
	end

	local pInv = Inventory.new(aIndex)

	local Attack = pInv:getIndex(0)
	local Ring01 = pInv:getIndex(10)
	local Ring02 = pInv:getIndex(11)
	local Pendant = pInv:getIndex(9)

	for n in ipairs(DEATH_PATENT_INFO) do
		local dados = DEATH_PATENT_INFO[n]
		if dados.Attack == Attack then
			if dados.UseRingPendant then
				if dados.Ring01 == Ring01 then
					if dados.Ring02 == Ring02 then
						if dados.Pendant == Pendant then
							return 1
						end
					end
				end
			else
				return 1
			end
		end
	end

	return 0
end

function DeathPatent.GetPatentPlayer(aIndex)
    if DeathPatent.CheckPlayerItem(aIndex) == 0 then
        return
    end
    
    local pInv = Inventory.new(aIndex)
    local player = User.new(aIndex)

    local Deaths = 0
    local Attack = pInv:getIndex(0)
    local AttackSerial = pInv:getSerial(0)
    local SerialTop1 = DeathPatent.GetSerialTop1()
    
    for n in ipairs(DEATH_PATENT_INFO) do
        local dados = DEATH_PATENT_INFO[n]
        
        if dados.Attack == Attack then
            Deaths = DataBase.GetValue('DeathSystem', 'Deaths', 'm_Serial', AttackSerial)
        end
    end
    
    local Changed = 0

    for n in ipairs(DEATH_PATENT_RANKING) do
        local dados = DEATH_PATENT_RANKING[n]
        if SerialTop1 == AttackSerial then
            if dados.Top == 1 then
                if player:getPatent() ~= dados.PatentNumber then
                    player:setPatent(dados.PatentNumber)  -- Corrigido: usando PatentNumber em vez de Patent
                    ViewportCreate(aIndex)
                    SendMessage(string.format("Ranking da Morte: [%s]", dados.PatentName), aIndex, 1)
                    Changed = 1
                end
            end
        else
            if Deaths >= dados.MinDeaths and Deaths <= dados.MaxDeaths then
                if player:getPatent() ~= dados.PatentNumber then  -- Corrigido: removido (aIndex) desnecessário
                    player:setPatent(dados.PatentNumber)  -- Corrigido: usando PatentNumber em vez de Patent
                    ViewportCreate(aIndex)
                    SendMessage(string.format("Ranking da Morte: [%s]", dados.PatentName), aIndex, 1)
                    Changed = 1
                end
            end
        end
    end
    
    if Changed == 1 then
        DEATH_PATENT_PLAYER[aIndex] = aIndex
    end
	
	if Changed == 1
	then
		DEATH_PATENT_PLAYER[aIndex] = aIndex
	end
end

function DeathPatent.UpdatePatentUsers()
	for i = 13000, 13999 do
		local player = User.new(i)
		if player:getConnected() == 3
		then
			DeathPatent.GetPatentPlayer(i)
		end

		player = nil
	end
end

function DeathPatent.PlayerLogout(aIndex, Name, Account)
	if DEATH_PATENT_PLAYER[aIndex]
	then
		DEATH_PATENT_PLAYER[aIndex] = nil
	end
end

function DeathPatent.EnterCharacter(aIndex)
	DeathPatent.GetPatentPlayer(aIndex)
end

function DeathPatent.DeletePatent(aIndex)
	local player = User.new(aIndex)

	for n in ipairs(DEATH_PATENT_RANKING) do
		local dados = DEATH_PATENT_RANKING[n]
		if dados.PatentNumber == player:getPatent()
		then
			player:setPatent(-1)
			ViewportCreate(aIndex)
			return
		end
	end
end

function DeathPatent.UpdateAnotherPatent(aIndex)
	--Aqui adiciona as outras patentes que precisa dar update...
	ViewportCreate(aIndex)
end

function DeathPatent.PlayerMoveItem(aIndex, SourceSlot, TargetSlot, Type)
	if Type == 0 or Type == 2 or Type == 5
	then
		local Changed = 0
		
		if SourceSlot >= 0 and SourceSlot < 12
		then
			if DEATH_PATENT_PLAYER[aIndex]
			then
				DeathPatent.DeletePatent(aIndex)
				DEATH_PATENT_PLAYER[aIndex] = nil
				Changed = 1
			end
		end
		
		if TargetSlot >= 0 and TargetSlot < 12
		then
			DeathPatent.GetPatentPlayer(aIndex)
		end
		
		if Changed == 1
		then
			Timer.TimeOut(100, DeathPatent.UpdateAnotherPatent, aIndex)
		end
	end
end

GameServerFunctions.PlayerLogout(DeathPatent.PlayerLogout)
GameServerFunctions.PlayerMoveItem(DeathPatent.PlayerMoveItem)
GameServerFunctions.EnterCharacter(DeathPatent.EnterCharacter)

return DeathPatent