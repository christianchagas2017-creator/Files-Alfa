OpenFolder("Definitions")

PLASMA_STORM_COLOR = {
	--{ Slot = {8}, ItemIndex = GET_ITEM_MODEL(13, 37), Black = true, Color = 102, R = 1.0, G = 1.0, B = 1.0, Image = -1, Casting = true, Shadow = 0, Alpha = 1.0, Target = 0},
	{ Slot = {8}, ItemIndex = GET_ITEM_MODEL(13, 151), Black = false, Color = 102, R = 0.0, G = 1.0, B = 0.75, Image = -1, Casting = false, Shadow = 2, Alpha = 0, Target = 1},
	{ Slot = {8}, ItemIndex = GET_ITEM_MODEL(13, 150), Black = false, Color = 103, R = 0.0, G = 0.57, B = 0.00, Image = -1, Casting = false, Shadow = 1, Alpha = 0, Target = 0},

	--{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 40), Black = true,  Color = 100, R = 1.00, G = 1.00, B = 1.00, Image = -1, Casting = true, Shadow = 2, Alpha = 1.0, Target = 0}, --DEATH 1.0 SWORD
	--{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 41), Black = false, Color = 102, R = 0.56, G = 0.45, B = 1.00, Image = -1, Casting = true, Shadow = 1, Alpha = 0.3, Target = 2}, --SWORD STYLE	
	--{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(00, 56), Black = false, Color = 101, R = 1.00, G = 0.30, B = 0.00, Image = -1, Casting = true, Shadow = 2, Alpha = 1.0, Target = 1}, --SWORD GOD 1.0
	--{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(01, 21), Black = false, Color = 101, R = 1.00, G = 0.30, B = 0.00, Image = -1, Casting = true, Shadow = 2, Alpha = 1.0, Target = 1}, --MACE GOD 1.0
}

function StartPlasmaStormColor()
	for i = 1, #PLASMA_STORM_COLOR do
		local Plasma = PLASMA_STORM_COLOR[i]

		local CastingEffect = 0
		local Black = 0

		if Plasma.Casting == true then CastingEffect = 1 end
		if Plasma.Black == true then Black = 1 end

		SetPlasmaStormColor(Plasma.Color, Plasma.R, Plasma.G, Plasma.B, Plasma.Image, CastingEffect, Plasma.Shadow, Plasma.Target, Plasma.Alpha, Black)
	end
end

function CheckColorPlasmaStorm(charObj)
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

	for _, item in ipairs(PLASMA_STORM_COLOR) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.Color
            end
        end
    end

	char = nil

	return 0
end