OpenFolder("Definitions")

CUSTOM_EVIL_COLOR = {
	{ Slot = {0}, ItemIndex = GET_ITEM_MODEL(5, 0), Black = false, Color = 60, R = 1.0, G = 0.0, B = 0.0, Size = -1, Image = -1 },
}

function StartEvolColor()
	--Default - Image = 32229 Original
	--Default - Image = 32466 Color
	--Default - Size = 20
	for i = 1, #CUSTOM_EVIL_COLOR do
		local Black = 0 if CUSTOM_EVIL_COLOR[i].Black then Black = 1 end 
		SetEvilColor(CUSTOM_EVIL_COLOR[i].Color, CUSTOM_EVIL_COLOR[i].R, CUSTOM_EVIL_COLOR[i].G, CUSTOM_EVIL_COLOR[i].B, CUSTOM_EVIL_COLOR[i].Size, CUSTOM_EVIL_COLOR[i].Image, Black)
	end
end

function CheckColorEvil(charObj)
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

	for _, item in ipairs(CUSTOM_EVIL_COLOR) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.Color
            end
        end
    end

	char = nil

	return 0
end