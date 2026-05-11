OpenFolder("Definitions")

--432 = Fogo type 0
--433 = Preto type 0
--434 = Roxo type 1

CUSTOM_SUMMON_EFFECT = {
	{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 40), Model = 433, Type = 0, R = 1.0, G = 1.0, B = 1.0, SafeZone = true, Speed = 1.0, }, --SWORD DEATH 1.0
	{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 41), Model = 434, Type = 1, R = 1.0, G = 1.0, B = 1.0, SafeZone = true, Speed = 1.0, }, --SWORD STYLE
}

CUSTOM_SUMMON_EFFECT_WRIST = {
	{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 41), Type = 3, R = 0.56, G = 0.45, B = 1.00, Bone = 37}, --SWORD STYLE
	{ Slot = {1}   , ItemIndex = GET_ITEM_MODEL(06, 40), Type = 3, R = 0.56, G = 0.45, B = 1.00, Bone = 28}, --SHIELD STYLE
}

function StartSummonEffect()
	for i = 1, #CUSTOM_SUMMON_EFFECT do
        local summon = CUSTOM_SUMMON_EFFECT[i]
		SetSummonEffect(summon.ItemIndex, summon.Model, summon.Type, summon.R, summon.G, summon.B, summon.SafeZone, summon.Speed)
	end

	for i = 1, #CUSTOM_SUMMON_EFFECT_WRIST do
        local effect = CUSTOM_SUMMON_EFFECT_WRIST[i]
		SetSummonEffect_Wrist(effect.ItemIndex, effect.Type, effect.R, effect.G, effect.B, effect.Bone)
	end
end

function CheckSummonEffect(charObj)
	local char = Character.new(charObj)

	local itens = {
		[0] = char:getSword(),
		[1] = char:getShield() ,
		[2] = char:getHelm() ,
		[3] = char:getArmor() ,
		[4] = char:getPants() ,
		[5] = char:getGloves() ,
		[6] = char:getBoots() ,
		[7] = char:getWing(),
		[8] = char:getHelper(),
		[242] = char:getHelm(),
	}

	for _, item in ipairs(CUSTOM_SUMMON_EFFECT) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.ItemIndex
            end
        end
    end

	char = nil

	return 0
end

function CheckSummonEffectWrist(charObj)
	local char = Character.new(charObj)

	local itens = {
		[0] = char:getSword(),
		[1] = char:getShield() ,
		[2] = char:getHelm() ,
		[3] = char:getArmor() ,
		[4] = char:getPants() ,
		[5] = char:getGloves() ,
		[6] = char:getBoots() ,
		[7] = char:getWing(),
		[8] = char:getHelper(),
	}

	for _, item in ipairs(CUSTOM_SUMMON_EFFECT_WRIST) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.ItemIndex
            end
        end
    end

	char = nil

	return 0
end