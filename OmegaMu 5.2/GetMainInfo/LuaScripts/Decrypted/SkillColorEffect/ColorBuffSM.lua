OpenFolder("Definitions")

CUSTOM_BUFF_COLOR_SM = {
	--{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(5, 12), Black = true, Color = 100, R = 1.0, G = 1.0, B = 1.0, Size = -1, Image = -1 },
}

function StartBuffColorSM()
	--Default - Image = 32229 Original
	--Default - Image = 32466 Color
	--Default - Size = 20
	for i = 1, #CUSTOM_BUFF_COLOR_SM do
		local Black = 0 if CUSTOM_BUFF_COLOR_SM[i].Black then Black = 1 end 
		SetBuffColorSM(CUSTOM_BUFF_COLOR_SM[i].Color, CUSTOM_BUFF_COLOR_SM[i].R, CUSTOM_BUFF_COLOR_SM[i].G, CUSTOM_BUFF_COLOR_SM[i].B, CUSTOM_BUFF_COLOR_SM[i].Size, CUSTOM_BUFF_COLOR_SM[i].Image, Black)
	end
end

function CheckColorBuffSM(charObj)
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

	for _, item in ipairs(CUSTOM_BUFF_COLOR_SM) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.Color
            end
        end
    end

	char = nil

	return 0
end