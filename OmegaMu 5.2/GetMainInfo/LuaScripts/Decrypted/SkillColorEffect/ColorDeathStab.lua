OpenFolder("Definitions")

CUSTOM_DEATH_STAB_COLOR = {
	--{ Slot = {8}, ItemIndex = GET_ITEM_MODEL(13, 150), Color = 1, R = 1.0, G = 1.0, B = 1.0, Image = "", ImageIndex = -1, Size = -1 },
	--{ Slot = {8}, ItemIndex = GET_ITEM_MODEL(13, 151), Color = 350, R = 1.0, G = 0.7333, B = 0.0, Image = "", ImageIndex = -1, Size = -1 },
}

function StartDeathStabColor()
	for i = 1, #CUSTOM_DEATH_STAB_COLOR do
		SetDeathStabColor(CUSTOM_DEATH_STAB_COLOR[i].Color, CUSTOM_DEATH_STAB_COLOR[i].R, CUSTOM_DEATH_STAB_COLOR[i].G, CUSTOM_DEATH_STAB_COLOR[i].B, CUSTOM_DEATH_STAB_COLOR[i].ImageIndex, CUSTOM_DEATH_STAB_COLOR[i].Size)
	end
end

local startimageindex = 80000

function StartLoadImages()
    for i in pairs(CUSTOM_DEATH_STAB_COLOR) do
        local skill = CUSTOM_DEATH_STAB_COLOR[i]
		if skill.Image:len() > 0 then
			LoadImageCustom(skill.Image, startimageindex)
			skill.ImageIndex = startimageindex
			startimageindex = startimageindex+1
		end
    end
end

function CheckColorDeathStab(charObj)
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

	for _, item in ipairs(CUSTOM_DEATH_STAB_COLOR) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.Color
            end
        end
    end

	char = nil

	return 0
end