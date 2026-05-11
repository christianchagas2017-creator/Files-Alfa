OpenFolder("Definitions")

--[[
	ACTION 01 = PARADO      MASC = 10 RF
	ACTION 15 = ANDANDO     MASC = 23 RF
	ACTION 25 = CORRENDO    MASC = 32 RF
	ACTION 26 = CORRENDO SW MASC = 32 RF
--]]

CUSTOM_SET_ACTION = {
	{ Slot = {0, 1}, ItemIndex = GET_ITEM_MODEL(0, 40), Command = "/sparta", Action = 06 }, --225 ESPARTA

}

function CustomSetAction()
	for i = 1, #CUSTOM_SET_ACTION do
		SetAction(CUSTOM_SET_ACTION[i].ItemIndex, CUSTOM_SET_ACTION[i].Command, CUSTOM_SET_ACTION[i].Action)
	end
end

function CheckSetAction(charObj)
	local nchar = Character.new(charObj)

	local itens = {
		[0] = nchar:getSword(),
		[1] = nchar:getShield() ,
		[2] = nchar:getHelm() ,
		[3] = nchar:getArmor() ,
		[4] = nchar:getPants() ,
		[5] = nchar:getGloves() ,
		[6] = nchar:getBoots() ,
		[7] = nchar:getWing(),
		[8] = nchar:getHelper()
	}

	for _, item in ipairs(CUSTOM_SET_ACTION) do
        for _, slot in ipairs(item.Slot) do
            if itens[slot] ~= nil and itens[slot] == item.ItemIndex then
                return item.ItemIndex
            end
        end
    end

	nchar = nil

	return 0
end