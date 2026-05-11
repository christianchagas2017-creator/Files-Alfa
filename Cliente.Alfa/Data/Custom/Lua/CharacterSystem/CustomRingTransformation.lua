OpenFolder("Definitions")

--[[
ModelType = 1 pld
ModelType = 0 bmd
]]

local SKINS = {
	--{ Skin = 20211, Index = 00, ModelDir = "Data\\Custom\\Itens\\Skin\\", ModelType = 1, ModelName = 'Skin_Soul_Master', 	 	Size = 0.9, CapeFront = -1,    CapeBack = -1    },
	--{ Skin = 20212, Index = 01, ModelDir = "Data\\Custom\\Itens\\Skin\\", ModelType = 1, ModelName = 'Skin_Blade_Knight',    	Size = 0.9, CapeFront = -1,    CapeBack = -1    },
	--{ Skin = 20213, Index = 02, ModelDir = "Data\\Custom\\Itens\\Skin\\", ModelType = 1, ModelName = 'Skin_Muse_Elf', 	  	Size = 0.9, CapeFront = -1,    CapeBack = -1    },
	--{ Skin = 20214, Index = 03, ModelDir = "Data\\Custom\\Itens\\Skin\\", ModelType = 1, ModelName = 'Skin_Magic_Gladiator',	Size = 0.9, CapeFront = 30543, CapeBack = 30544 },
}

function StartLoadSkins()
	--MG 30543/30544
	for _, skin in ipairs(SKINS) do
		AddLoadModel(skin.Index, skin.ModelDir, skin.ModelName, skin.ModelType, skin.Size, skin.CapeFront, skin.CapeBack)
	end
end