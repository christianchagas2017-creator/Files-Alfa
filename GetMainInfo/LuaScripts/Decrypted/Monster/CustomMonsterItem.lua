OpenFolder("Definitions")

local CUSTOM_NPC_ITEMS = {
	{
		Index 	= 602,
		Name	= "DEUS DOS DEUSES: ZEUS",
		Class   = 1,
		Size	= 0.9,
		Weapon 	= GET_ITEM_MODEL(00, 41),
		Shield 	= GET_ITEM_MODEL(06, 40),
		Helm 	= GET_ITEM_MODEL(7,  45),
		Armor 	= GET_ITEM_MODEL(8,  45),
		Pants 	= GET_ITEM_MODEL(9,  45),
		Gloves 	= GET_ITEM_MODEL(10, 45),
		Boots 	= GET_ITEM_MODEL(11, 45),
		Wing 	= GET_ITEM_MODEL(12, 5),
		Pet 	= GET_ITEM_MODEL(13, 151),
		Level   = 15,
		Edge    = 1.1,
		Action  = 3,
		Shadow  = true,
		Type    = KIND_NPC --KIND_NPC
	},
}

function StartCustomMonsterItem()
	for _, item in ipairs(CUSTOM_NPC_ITEMS) do
		AddCustomMonsterItem(item.Index, item.Name, item.Class, item.Size, item.Weapon, item.Shield, item.Helm, item.Armor, item.Pants, item.Gloves, item.Boots, item.Wing, item.Pet, item.Level, item.Edge, item.Action, item.Shadow, item.Type)
	end
end