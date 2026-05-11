OpenFolder("Definitions")

CUSTOM_EYE_EFFECT = {
	--{ Slot = {0}, ItemIndex = GET_ITEM_MODEL(0, 41), R = 1.0, G = 1.0, B = 1.0, Bone = 1, Effect = 3 },
	{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(0, 41), R = 1.0, G = 1.0, B = 1.0, Bone = 1, Eye = 3 },
}

function StartCustomEye()
	for i = 1, #CUSTOM_EYE_EFFECT do
		SetCustomEye(CUSTOM_EYE_EFFECT[i].ItemIndex, CUSTOM_EYE_EFFECT[i].R, CUSTOM_EYE_EFFECT[i].G, CUSTOM_EYE_EFFECT[i].B, CUSTOM_EYE_EFFECT[i].Bone, CUSTOM_EYE_EFFECT[i].Eye)
	end
end

function CheckColorEye(charObj)
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
		[8] = char:getHelper()
	}

	for _, item in ipairs(CUSTOM_EYE_EFFECT) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.ItemIndex
            end
        end
    end

	char = nil

	return 0
end