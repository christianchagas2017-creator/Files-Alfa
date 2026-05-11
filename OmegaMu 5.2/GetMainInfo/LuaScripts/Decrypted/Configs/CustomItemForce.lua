OpenFolder("Definitions")

CUSTOM_ITEM_FORCE = {

--#region CHRONUS E REIA
--{ ItemIndex = GET_ITEM(0,  152), DamageMin = 810, DamageMax = 880, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(0,  153), DamageMin = 815, DamageMax = 930, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(1,  106), DamageMin = 845, DamageMax = 920, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(1,  107), DamageMin = 845, DamageMax = 920, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(3,   62), DamageMin = 845, DamageMax = 920, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(3,   63), DamageMin = 845, DamageMax = 920, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(4,  108), DamageMin = 825, DamageMax = 850, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(5,  125), DamageMin = 825, DamageMax = 850, Defense = 0,   MagicDefense = 0 },
--{ ItemIndex = GET_ITEM(6,  126), DamageMin = 0,   DamageMax = 0,   Defense = 565, MagicDefense = 0 },
}

function StartCustomItemForce(ItemIndex)
	for i = 1, #CUSTOM_ITEM_FORCE do
		SetItemForce(CUSTOM_ITEM_FORCE[i].ItemIndex, CUSTOM_ITEM_FORCE[i].DamageMin, CUSTOM_ITEM_FORCE[i].DamageMax, CUSTOM_ITEM_FORCE[i].Defense, CUSTOM_ITEM_FORCE[i].MagicDefense)
	end
end