OpenFolder("Definitions")

ELEMENT_SLOTS_CONFIG = {
	{ index = 0, x = 59,  y = 43,  width = 16, height = 16, active = 1, pet = 1 },
	{ index = 1, x = 119, y = 92,  width = 16, height = 16, active = 1, pet = 1 },
	{ index = 2, x = 59,  y = 123, width = 16, height = 16, active = 1, pet = 0 },
	{ index = 3, x = 119, y = 123, width = 16, height = 16, active = 1, pet = 0 },
	{ index = 4, x = 119, y = 174, width = 16, height = 16, active = 1, pet = 0 },
}

function StartLoadElementSlots()
	for i = 1, #ELEMENT_SLOTS_CONFIG do
		local element = ELEMENT_SLOTS_CONFIG[i]
		
		SetElementSlot(element.index, element.x, element.y, element.width, element.height, element.active, element.pet)
	end
end

StartLoadElementSlots()