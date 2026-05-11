OpenFolder("Definitions")

local CapeColision   = true

-- MagMode
local GL_NEAREST = 0x2600
local GL_LINEAR = 0x2601

-- WrapMode
local GL_CLAMP = 0x2900
local GL_REPEAT = 0x2901


local CAPE_STOP  = 6900
local CAPE_WIND  = 5125
local CAPE_STRIP = 4096

--[[ CAPE CONFIGURA��ES
5125 PADR�O VENTO
6900 PARADA
7750 PARADA NA CIDADE 
5000 EFEITO DESCENDO CAPA
INICIAR INDEXIMAGE EM 800000
WIDHT = LARGURA
HEIGHT = CUMPRIMENTO
--]]

CAPE_SYSTEM_INFO = {}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 496)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//riv_CAPE_HAMLOO_FIX.tga", IndexImage = 800220, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800213, ShineImage = "Item//VSL_RUINED_WINGSCAPER.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800220, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 498)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAALUCARD_FIX.tga", IndexImage = 800221, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800222, ShineImage = "Item//RIV_CAPAALUCARD_R.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800221, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 500)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAGABYSBS_FIX.tga", IndexImage = 800223, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800224, ShineImage = "Item//RIV_CAPAGABYSBS_R.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800223, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -65.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 502)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAFENRIR_BLACK_FIX.tga", IndexImage = 800225, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800226, ShineImage = "Item//RIV_CAPAGABYSBS_R.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800225, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -75.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 504)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPHEFEST_FIX.tga", IndexImage = 800227, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800228, ShineImage = "Item//RIV_CAPAGABYSBS_R.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800227, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 508)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPANMARE_FIX.tga", IndexImage = 800229, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800230, ShineImage = "Item//RIV_CAPAGABYSBS_R.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800229, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 486)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VSL_RUINED_WINGSCAPE.tga", IndexImage = 800213, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800213, ShineImage = "Item//VSL_RUINED_WINGSCAPER.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800213, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -25.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 493)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VSL_CAPE_DEATH3.tga", IndexImage = 800215, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800213, ShineImage = "Item//VSL_RUINED_WINGSCAPER.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 210.0, height = 170.0, imageIndex = 800215, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = -22.0, matrixZ = -2.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 489)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VSL_CAPE_TL.tga", IndexImage = 800214, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		--{ Enabled = false, IndexImage = 800213, ShineImage = "Item//VSL_RUINED_WINGSCAPER.jpg", ShineIndex = 800004, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19, --0 PADR�O / 19 COSTAS / 1520 V�ZIO

		CapeImage = {
			{ Bone = 19, posX = 0.0, posY = 1.0, posZ = 3.0, width = 180.0, height = 170.0, imageIndex = 800214, renderType = CAPE_WIND },
		},

		CapeSuport = {
			posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = 0.0, matrixZ = 0.0
		},

		Collision = {
			Enabled = false, Primary = 39.0, Segundary = 41.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 482)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RSMAKER_BLACKRAYMANTO.tga", IndexImage = 800211, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = true, IndexImage = 800211, ShineImage = "Item//RSMAKER_BLACKRAYMANTOR.jpg", ShineIndex = 800013, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800211, renderType = CAPE_WIND },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
	
		},

		Collision = {
			Enabled = true, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 470)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RIV_CAPAAPOLLYON.tga", IndexImage = 800208, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800208, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 474)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VSL_CAP_DR.tga", IndexImage = 800209, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800209, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 485)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VOID_CAPAGEL_FIX.tga", IndexImage = 800206, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800206, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}






CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 487)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//VSL_RUINED_WINGSCAPE.tga", IndexImage = 800207, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800207, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 478)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//Fifth_Rage_Cape_02.tga", IndexImage = 800204, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800204, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 482)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RSMAKER_BLACKRAYMANTOR.jpg", IndexImage = 800205, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 115.0, height = 180.0, imageIndex = 800205, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 476)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RIV_CAPAEROS_FIX.tga", IndexImage = 800203, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800203, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}







CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 454)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RIV_BlackAngelCape.tga", IndexImage = 800189, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800189, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 480)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RSMAKER_NIGHTFIREMT.tga", IndexImage = 800199, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800199, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 468)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item\\CKBANUBASKDcmaker.tga", IndexImage = 800201, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800201, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 472)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RIV_CAPCUPD_FIX.tga", IndexImage = 800202, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800202, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}






CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 456)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
				Quantity = 1, Image = "Item//RIV_CAPCARNIVAL2.tga", IndexImage = 800191, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800191, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -9.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 465)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPADAKABS_FIX.tga", IndexImage = 800176, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800176, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 402)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800180, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800180, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 440)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800181, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800181, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 441)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800182, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800182, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 443)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800183, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800183, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 445)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800184, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800184, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 449)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800185, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800185, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 451)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800186, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800186, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}






CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 453)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800188, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800188, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 455)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800190, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800190, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}







CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 460)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800192, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800192, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 245)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPADARK_FIX.tga", IndexImage = 800178, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800178, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -07.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 463)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPDURIT_FIX.tga", IndexImage = 800175, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800175, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -0.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 459)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CPRABBIT_BLUE_FIX.tga", IndexImage = 800174, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 155.0, height = 180.0, imageIndex = 800174, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -0.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 450)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPHEL_FIX.tga", IndexImage = 800173, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800173, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 448)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPDTH_FIX.tga", IndexImage = 800172, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800172, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 446)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAHOLLY2_FIX.tga", IndexImage = 800171, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800171, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -48.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 444)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAPHO_FIX.tga", IndexImage = 800170, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800170, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 442)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_123456CAPA_FIX.tga", IndexImage = 800169, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800169, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 439)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 3, Image = "Item//RIV_CAPACAKATCH_0.tga", IndexImage = 800168, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800168, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 437)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 3, Image = "Item//RIVITO_CAPAFENRIbla_FIX.tga", IndexImage = 800167, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800167, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 435)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_SKEBCAP_FIX.tga", IndexImage = 800166, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800166, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -10.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 432)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//EternalDanielaCpe2.tga", IndexImage = 800165, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800165, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 428)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPEMORPHEUS_FIXbla.tga", IndexImage = 800164, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800164, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 425)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//VOID_ANGELCAPA_FIX.tga", IndexImage = 800163, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800163, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -20.0, matrixY = -0.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 423)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPA_SPIRIT_FIX.tga", IndexImage = 800162, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800162, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -15.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 421)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_ICEFROST_CAPA_FIX.tga", IndexImage = 800161, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800161, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 419)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CapeDeath_BLU.tga", IndexImage = 800160, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800160, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 417)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_BRIGHTHALOMT.tga", IndexImage = 800159, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800159, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 413)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_DECRIVD_FIX.tga", IndexImage = 800158, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800158, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -10.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 411)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAMAGMA_FIX.tga", IndexImage = 800157, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800157, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -00.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 409)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//WarcupDcMaker2Away.tga", IndexImage = 800156, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 0,

		CapeImage = {
		
			{ Bone = 0, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800156, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -00.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 407)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAZIRO_FIX.tga", IndexImage = 800155, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800155, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -00.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 401)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800182, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800182, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -10.0, matrixY = -40.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 399)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_LOVEWIZARD_CAP_FIX.tga", IndexImage = 800153, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800153, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -00.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 396)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RSMAKER_BRILLHANTMT.tga", IndexImage = 800152, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800152, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -30.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 394)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RSMAKER_MTLOVESOLIDER.tga", IndexImage = 800151, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800151, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -57.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 392)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPA_VALENTINES_FIX.tga", IndexImage = 800150, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 195.0, height = 180.0, imageIndex = 800150, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -41.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 390)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//wing224_5.tga", IndexImage = 800149, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 195.0, height = 180.0, imageIndex = 800149, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -41.0, matrixY = -5.0, matrixZ = -00.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 388)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//VOID_CAPTOX_FIX.tga", IndexImage = 800148, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 195.0, height = 180.0, imageIndex = 800148, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -41.0, matrixY = -5.0, matrixZ = -10.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 386)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPEMORPHEUS_FIX.tga", IndexImage = 800147, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 175.0, height = 180.0, imageIndex = 800147, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 384)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//wing181_0.tga", IndexImage = 800146, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 195.0, height = 180.0, imageIndex = 800146, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 382)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPA_KILLER_FIX.tga", IndexImage = 800145, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800145, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 380)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_CAPAZPAZCO_FIX.tga", IndexImage = 800144, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800144, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -0.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 378)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//DcMakerNewRabbitGoldCk.tga", IndexImage = 800143, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800143, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -0.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 376)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIVITO_CAPAPSPAS_FIX.tga", IndexImage = 800142, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800142, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -0.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 374)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIV_RABBITWARRIORMANTO.tga", IndexImage = 800141, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800141, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 371)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item//RIVD_CAP_HEAT.tga", IndexImage = 800140, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800140, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -30.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 369)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 3, Image = "Item//RSMAKER_WESTERMANTO.tga", IndexImage = 800139, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800139, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 367)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerEaster2024Cap.tga", IndexImage = 800138, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800138, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -0.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 365)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerEasterB2024Cap.tga", IndexImage = 800137, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800137, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -0.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 363)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPGHOST_FIX.tga", IndexImage = 800136, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 100.0, height = 180.0, imageIndex = 800136, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 361)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_War2_0Cloak_02.tga", IndexImage = 800135, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800135, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 362)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPGHOST_FIX.tga", IndexImage = 800177, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800177, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -50.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 397)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800178, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800178, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -10.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 398)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800179, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800179, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -10.0, matrixY = -40.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 400)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "", IndexImage = 800180, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 0.0, height = 0.0, imageIndex = 800180, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -10.0, matrixY = -40.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 359)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\NewLightDanielasCpe1.tga", IndexImage = 800134, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800134, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 357)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RS_MTSNOWANGEL.tga", IndexImage = 800133, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800133, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -00.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 355)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIVBLACK_CAP_HEAT.tga", IndexImage = 800132, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800132, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -30.0, matrixY = -5.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 353)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RS_MANTOROYAL.tga", IndexImage = 800131, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800131, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = 22.0, matrixY = -20.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 351)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RSMAKER_BLACKRAYMANTO.tga", IndexImage = 800130, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800130, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 349)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\CapaChristBlackPano.tga", IndexImage = 800129, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800129, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 347)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\christmascapeB.tga", IndexImage = 800128, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800128, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 345)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 3, Image = "Item\\christmasDcMakerb.tga", IndexImage = 800126, Strip = "Item\\christmasDcMakerac.tga", IndexStrip = -1, Strip2 = "Item\\christmasDcMakerac.tga", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800126, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = true, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 343)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\GiftDcMakerckMantoBlack.tga", IndexImage = 800125, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800125, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -35.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 341)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\NewSnowDcCape.tga", IndexImage = 800124, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800124, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -27.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 337)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RSMAKER_MANTOSANTA2.0.tga", IndexImage = 800123, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800123, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -57.0, matrixY = -7.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}





CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 333)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPA_EVO_FIX.tga", IndexImage = 800122, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800122, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}






CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 331)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_MANTOTAILFOX.tga", IndexImage = 800121, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800121, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 326)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\Wing193_0.tga", IndexImage = 800120, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800120, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 324)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\capDcMakerViper05.tga", IndexImage = 800119, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800119, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 322)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\capahallowe.tga", IndexImage = 800118, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800118, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -30.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 320)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RSMAKER_NIGHTFIREMT.tga", IndexImage = 800117, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800117, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 318)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPADARKFIRE_fix.tga", IndexImage = 800116, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800116, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 315)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_13THCAP_FIX.tga", IndexImage = 800115, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800115, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 312)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPHALLW_FIX.tga", IndexImage = 800114, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800114, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 308)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\ZeusCpBlackDc_fix.tga", IndexImage = 800113, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800113, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 306)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAP_HEAT_RED.tga", IndexImage = 800112, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800112, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 301)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\darklordwing4dex.tga", IndexImage = 800111, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800111, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -30.0, matrixY = -3.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 300)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RSMAKER_ARCHANGELMANTO.tga", IndexImage = 800110, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800110, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = 10.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 298)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIVA_CAPCHERUB_FIX.tga", IndexImage = 800109, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800109, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 295)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPAPSD_FIX.tga", IndexImage = 800108, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800108, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 293)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerReaperCape.tga", IndexImage = 800107, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800107, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 291)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RSMAKER_CapaCHR223.tga", IndexImage = 800106, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800106, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 289)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerNewRabbitWhiteCk.tga", IndexImage = 800105, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800105, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 287)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerNewRabbitBlackCk.tga", IndexImage = 800104, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800104, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 285)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerStyleRenewCapa.tga", IndexImage = 800103, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800103, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 283)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerCapeDeath.tga", IndexImage = 800102, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800102, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 279)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIVITOR_CAPA_LV_FIX.tga", IndexImage = 800101, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800101, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 277)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\CKBANUBASKDcmaker.tga", IndexImage = 800100, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800100, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 275)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerFenrRedCk.tga", IndexImage = 800099, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800099, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 241)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAP_SNOW_FIX.tga", IndexImage = 800098, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800098, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 273)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerFenrirGoldCape.tga", IndexImage = 800097, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800097, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 270)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPA_01x_FIX.tga", IndexImage = 800096, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800096, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 268)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPA_hallw_FIX.tga", IndexImage = 800095, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800095, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 266)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\GiftDcMakerckManto.tga", IndexImage = 800094, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800094, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 263)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\Frost2021DcMakerManto.tga", IndexImage = 800093, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800093, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 261)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\CkMtHolyDcMakers.tga", IndexImage = 800092, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800092, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 259)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\MantoDcMakerBloodVampire.tga", IndexImage = 800091, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800091, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -20.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 257)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPEHOLLYBLA_FIX.tga", IndexImage = 800090, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800090, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 255)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\Frost2021DcMakerMantoB.tga", IndexImage = 800089, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800089, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -40.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 253)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\CapaSailorDcMaker.tga", IndexImage = 800088, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800088, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 251)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\Capeapocalipselucasnuut02.tga", IndexImage = 800087, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800087, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -45.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 247)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\PoseidonDcMakerscAPA.tga", IndexImage = 800086, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800086, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 244)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPADARK_FIX.tga", IndexImage = 800085, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 135.0, height = 180.0, imageIndex = 800085, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -70.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 243)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\LightgrifinDcMakerCapa.tga", IndexImage = 800084, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800084, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}

CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 239)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPAeletro_fix.tga", IndexImage = 800083, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800083, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}

CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 235)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIVITOR_CAPAAMAGG_FIX.tga", IndexImage = 800082, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800082, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}

CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 233)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\CKHallowDcMakerAway2021.tga", IndexImage = 800081, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800081, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -50.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 231)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\yMzE53Y53r4zEksG.tga", IndexImage = 800080, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800080, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -70.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}

CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 229)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\NecromancerDcMakerManto.tga", IndexImage = 800079, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800079, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 227)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\MtLghHalkDcMaker.tga", IndexImage = 800078, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800078, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 223)] = { -- [  CAPA ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\ColdDcMakerManto.tga", IndexImage = 800077, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800077, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 216)] = { -- [  CAPA MISTYCK ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\MantoExtremeDcMakerCk.tga", IndexImage = 800076, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 150.0, height = 180.0, imageIndex = 800076, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 211)] = { -- [  CAPA MISTYCK ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerMistCape.tga", IndexImage = 800074, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 170.0, height = 180.0, imageIndex = 800074, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 213)] = { -- [  CAPA MISTYCK ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\DcMakerCapeRadiante.tga", IndexImage = 800075, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 170.0, height = 180.0, imageIndex = 800075, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}

CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 209)] = { -- [  CAPA ORION GREEN ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\GH2YDBqq9X76yxbk.tga", IndexImage = 800073, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 200.0, height = 170.0, imageIndex = 800073, renderType = CAPE_STRIP },

		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 207)] = { -- [  CAPA WARRIOR ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPACHRISWAR_FIX.tga", IndexImage = 800072, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 160.0, height = 170.0, imageIndex = 800072, renderType = CAPE_STRIP },


			
		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = true, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}


CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 205)] = { -- [  CAPA ZEUS ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_ZEUSCAPA_FIX.tga", IndexImage = 800000, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = -1, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 5.0, width = 210.0, height = 170.0, imageIndex = 800000, renderType = CAPE_STRIP },


			
		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -55.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = false, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
}



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 201)] = { -- [  CAPA HEAT ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAP_HEAT.tga", IndexImage = 800070, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = 800000, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 00.0, width = 210.0, height = 170.0, imageIndex = 800070, renderType = CAPE_STRIP },


			
		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = true, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
} 



CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 452)] = { -- [  CAPA HEAT ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAPGOLDEGHOST_FIX.tga", IndexImage = 800200, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = 800000, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 00.0, width = 180.0, height = 170.0, imageIndex = 800200, renderType = CAPE_STRIP },
	
		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -60.0, matrixY = -1.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = true, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
} 




CAPE_SYSTEM_INFO[GET_ITEM_MODEL(12, 203)] = { -- [  CAPA HEAT BLEU ] --

   BmdType = 0,
	
	Texture = {
		Quantity = 1, Image = "Item\\RIV_CAP_HEAT_BLU.tga", IndexImage = 800071, Strip = "", IndexStrip = -1, Strip2 = "", IndexStrip2 = -1
	},

	RenderShine = {
		{ Enabled = false, IndexImage = 800000, ShineImage = "", ShineIndex = -1, R = 1.0, G = 0.0, B = 1.0 },
	},

	Position = {
		Bone = 19,

		CapeImage = {
		
			{ Bone = 19, posX =  0.0,  posY = 15.0, posZ = 00.0, width = 210.0, height = 170.0, imageIndex = 800071, renderType = CAPE_STRIP },


			
		},

		CapeSuport = {
		
	        posX = 0.0, posY = 90.0, posZ = 0.0, matrixX = -46.0, matrixY = -12.0, matrixZ = 0.0
			
			
		},

		Collision = {
			Enabled = true, Primary = 35.0, Segundary = 37.0
		},

		CapeHairDL = {
			Enabled = false, Joint = 20, posX = 0.0, posY = 0.0, posZ = 20.0, Largura1 = 6, Largura2 = 5, R = 1.0, G = 0.0, B = 1.0
		},
	},
} 




function LoadImageCape()
	for i in pairs(CAPE_SYSTEM_INFO) do
		local capeInfo = CAPE_SYSTEM_INFO[i]

		if string.len(capeInfo.Texture.Image) > 0 then
			if capeInfo.BmdType > 0 then
				LoadImageCustom(capeInfo.Texture.Image, capeInfo.Texture.IndexImage , GL_LINEAR, GL_REPEAT)
			else
				LoadImage(capeInfo.Texture.Image, capeInfo.Texture.IndexImage , GL_LINEAR, GL_REPEAT)
			end
		end

		if string.len(capeInfo.Texture.Strip) > 0 then
			if capeInfo.BmdType > 0 then
				LoadImageCustom(capeInfo.Texture.Strip, capeInfo.Texture.IndexStrip , GL_LINEAR, GL_REPEAT)
			else
				LoadImage(capeInfo.Texture.Strip, capeInfo.Texture.IndexStrip , GL_LINEAR, GL_REPEAT)
			end
		end

		if string.len(capeInfo.Texture.Strip2) > 0 then
			if capeInfo.BmdType > 0 then
				LoadImageCustom(capeInfo.Texture.Strip2, capeInfo.Texture.IndexStrip2 , GL_LINEAR, GL_REPEAT)
			else
				LoadImage(capeInfo.Texture.Strip2, capeInfo.Texture.IndexStrip2 , GL_LINEAR, GL_REPEAT)
			end
		end

		for _, shineConfig in ipairs(capeInfo.RenderShine) do
			--if shineConfig.Enabled then
				if string.len(shineConfig.ShineImage) > 0 then
					LoadImageCustom(shineConfig.ShineImage, shineConfig.ShineIndex , GL_LINEAR, GL_REPEAT)
				end
			--end
		end
	end
end

function RenderCapeModel(BMDStruct, objectStruct, ItemIndex, Character)

end

function CharacterCapeBone(ItemIndex)
	local getCapeBone = CAPE_SYSTEM_INFO[ItemIndex]

	if getCapeBone ~= nil then
		return getCapeBone.Position.Bone
	end

	return 0
end

function CreateCapePlayer(PhysicsStruct, objectStruct, ItemIndex, Class)
	local getCapeInfo = CAPE_SYSTEM_INFO[ItemIndex]

	if getCapeInfo ~= nil then
		local StackValue = getCapeInfo.Texture.Quantity
		local startStack = 0
		if Class == CLASS_DL
		then
			StackValue = StackValue + 2
			startStack = 2
		end

		local Cape = CapeStack.new(PhysicsStruct)

		getCapeInfo = CAPE_SYSTEM_INFO[ItemIndex].Position.CapeImage
		local count = 1

		for i = startStack, StackValue do

			local capeInfo = getCapeInfo[count]

			if capeInfo == nil then
				goto continue
			end

			--Create Mesh, Bone, X, Y, Z, NumHorizontal, NumVertical, Width, Heith, Texture Front, Texture Back, dwType, BMDType
			--Collision X, Y, Z, Radius, Bone
			Cape:Create(i, objectStruct, capeInfo.Bone, capeInfo.posX, capeInfo.posY, capeInfo.posZ, 10, 10, capeInfo.width, capeInfo.height, capeInfo.imageIndex, capeInfo.imageIndex, capeInfo.renderType)

			if i == startStack then
				if CapeColision then
					local getCollision = CAPE_SYSTEM_INFO[ItemIndex].Position.Collision

					if getCollision.Enabled then
						Cape:Collision(i, -10.0, -10.0, -10.0, getCollision.Primary, 17)
						Cape:Collision(i,  10.0, -10.0, -10.0, getCollision.Primary, 17)
						Cape:Collision(i, -10.0, -10.0,  20.0, getCollision.Segundary, 17)
						Cape:Collision(i,  10.0, -10.0,  20.0, getCollision.Segundary, 17)
					else
						Cape:Collision(i, -10.0, -10.0, -10.0, 25.0, 17)
						Cape:Collision(i,  10.0, -10.0, -10.0, 25.0, 17)
						Cape:Collision(i, -10.0, -10.0,  20.0, 27.0, 17)
						Cape:Collision(i,  10.0, -10.0,  20.0, 27.0, 17)
					end
				end
			else
				Cape:Collision(i, 0.0, -15.0, -20.0, 30.0, 2)
				Cape:Collision(i, 0.0, 0.0, 0.0, 35.0, 17)
			end

			count = count + 1

			::continue::
		end

		Cape = nil
		collectgarbage()
		return
	end
end

function CapeModelPosition(ItemIndex)
	local getPosition = CAPE_SYSTEM_INFO[ItemIndex].Position.CapeSuport

	if getPosition ~= nil then
		return
		getPosition.posX, getPosition.posY, getPosition.posZ, getPosition.matrixX, getPosition.matrixY, getPosition.matrixZ
	end
end

function CapeRenderShine(ImageIndex)
	for i in pairs(CAPE_SYSTEM_INFO) do
		local capeInfo = CAPE_SYSTEM_INFO[i]

		for _, shineConfig in ipairs(capeInfo.RenderShine) do
			if shineConfig.IndexImage == ImageIndex and shineConfig.Enabled then
				return 1, shineConfig.ShineIndex, shineConfig.R, shineConfig.G, shineConfig.B
			end
		end
	end
	return 0,0,0,0,0
end