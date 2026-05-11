OpenFolder("Definitions")

local ENABLED_EFFECT15 = true
local ENABLED_SMOKE	   = false


CUSTOM_ADD_EFFECT15 = {
	{ItemIndex = GET_ITEM(07, 62), EffectLevel = 0, R = 0.0, G = 0.6667,B = 1.0, SetComplete = false  }, --HELM   REWORKED 01
	{ItemIndex = GET_ITEM(08, 62), EffectLevel = 0, R = 0.0, G = 0.6667,B = 1.0, SetComplete = false  }, --ARMOR  REWORKED 01
	{ItemIndex = GET_ITEM(09, 62), EffectLevel = 0, R = 0.0, G = 0.6667,B = 1.0, SetComplete = false  }, --PANTS  REWORKED 01
	{ItemIndex = GET_ITEM(10, 62), EffectLevel = 0, R = 0.0, G = 0.6667,B = 1.0, SetComplete = false  }, --GLOVES REWORKED 01
	{ItemIndex = GET_ITEM(11, 62), EffectLevel = 0, R = 0.0, G = 0.6667,B = 1.0, SetComplete = false  }, --BOOTS  REWORKED 01
	

	--{ItemIndex = GET_ITEM(07, 68), EffectLevel = 2, R = 0.93, G = 0.1023,B = 0.1023, SetComplete = true  }, --HELM   DRAGON TIER
	--{ItemIndex = GET_ITEM(08, 68), EffectLevel = 2, R = 0.93, G = 0.1023,B = 0.1023, SetComplete = true  }, --ARMOR  DRAGON TIER
	--{ItemIndex = GET_ITEM(09, 68), EffectLevel = 2, R = 0.93, G = 0.1023,B = 0.1023, SetComplete = true  }, --PANTS  DRAGON TIER
	--{ItemIndex = GET_ITEM(10, 68), EffectLevel = 2, R = 0.93, G = 0.1023,B = 0.1023, SetComplete = true  }, --GLOVES DRAGON TIER
	--{ItemIndex = GET_ITEM(11, 68), EffectLevel = 2, R = 0.93, G = 0.1023,B = 0.1023, SetComplete = true  }, --BOOTS  DRAGON TIER	
}

SMOKE_EFFECTS = {
    --{Index = 62, R = 1.0, G = 0.0, B = 0.0}, --SET DRAGON KNIGHT (01 RENEW)
    --{Index = 29, R = 0.7, G = 0.3, B = 0.1}, --SET DRAGON KNIGHT (01 RENEW)
    {Index = 68, R = 1.0, G = 0.0, B = 0.0}, --SET VENON MIST (04 RENEW)
    {Index = 30, R = 1.0, G = 0.0, B = 0.0}, --SET VENON MIST (04 RENEW)
    --{Index = 31, R = 0.2, G = 0.4, B = 0.2}, --SET SYLPHID RAY (ELF)
    --{Index = 32, R = 0.5, G = 0.2, B = 0.7}, --SET VOLCANO (MG)
    --{Index = 33, R = 0.5, G = 0.4, B = 0.0}, --SET SUNLIGHT (02 RENEW)
    --{Index = 43, R = 0.6, G = 0.3, B = 0.4}, --SET ??
}


CUSTOM_SET_EFFECTS_COMPLETE = {}

--32400 = 32400
--32387 = 32005
--32005 Bolinhas Brilhantes



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 371)] = { -- VENOM MIST

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32260, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 355)] = { 


--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin =  0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin =  0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 5, Size = 0.4, MinSize = -1, R = 0.0, G = 0.5, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 356)] = {
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = 12, Y = 10, Z = 4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = 12, Y = 10, Z = -4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,  MinSize = -1, R = 0.35, G = 0.0, B = 0.35, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 354)] = {
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.0, G = 0.6, B = 0.8, Black = false, X = 8, Y = 18, Z = 6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.0, G = 0.6, B = 0.8, Black = false, X = 8, Y = 18, Z = -6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.6, B = 0.8, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 357)] = {
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.4392, G = 0.072, B = 0.72, Black = false, X = 8, Y = 18, Z = 6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.4392, G = 0.072, B = 0.72, Black = false, X = 8, Y = 18, Z = -6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 1.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },

}





CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 358)] = {
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = 8, Y = 18, Z = 6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.8, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = 8, Y = 18, Z = -6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32005, EffectLv = 1, Size = 1.2, MinSize = -1, R =  0.0, G =  0.4, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.2, MinSize = -1, R =  0.0, G =  0.7, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.2, MinSize = -1, R =  0.0, G =  0.7, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.2, MinSize = -1, R =  0.5, G =  0.2, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.2, MinSize = -1, R =  0.5, G =  0.2, B =  0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.2, MinSize = -1, R =  0.0, G =  0.7, B =  0.0,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },


}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 360)] = {
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.5, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1,RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4 , LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5 , LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin =0, LevelMax = 15, Type = 0, ID = 32002,  EffectLv = 0, Size = 1.6, MinSize = -1, R = 0.3, G = 0.0, B = 0.1,    Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin =0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 5,  Size = 1.5, MinSize = -1, R = 0.03, G = 0.01, B = 0.01, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },


}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 359)] = {
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 9, Size = 0.40, MinSize = -1,  R =  0.3, G =  0.0, B =  0.8, Black = false, X = 8, Y = 18, Z = 6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 2, Size = 0.3,  MinSize = -1, R =  0.2, G =  0.1, B =  0.5,  Black = false, X = 8, Y = 18, Z = -6, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 2, Size = 0.3,  MinSize = -1, R =  0.2, G =  0.1, B =  0.5,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 2, Size = 0.3,  MinSize = -1, R =  0.2, G =  0.1, B =  0.5,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 2, Size = 0.3,  MinSize = -1, R =  0.2, G =  0.1, B =  0.5,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 2, Size = 0.3,  MinSize = -1, R =  0.2, G =  0.1, B =  0.5,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 4, Size = 0.5,  MinSize = -1, R =  0.5, G =  0.3, B =  0.8,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 4, Size = 0.5,  MinSize = -1, R =  0.5, G =  0.3, B =  0.8,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 4, Size = 0.5,  MinSize = -1, R =  0.5, G =  0.3, B =  0.8,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 4, Size = 0.5,  MinSize = -1, R =  0.5, G =  0.3, B =  0.8,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 4, Size = 0.5,  MinSize = -1, R =  0.5, G =  0.3, B =  0.8,  Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size =  0.1, MinSize = -1,  R =  0.5, G =  0.3, B =  0.8, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size =  0.1, MinSize = -1,  R =  0.5, G =  0.3, B =  0.8, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size =  0.1, MinSize = -1,  R =  0.5, G =  0.3, B =  0.8, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size =  0.1, MinSize = -1,  R =  0.5, G =  0.3, B =  0.8, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },



}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 353)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = -17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = -17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = 17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = 17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 21, Y = 20, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 21, Y = 20, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 25, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = 5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 25, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = 5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 34, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = -5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 34, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = -5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 39, Y = 7, Z = -10, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 39, Y = 7, Z = -10, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 33, Y = 15, Z = 15, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 33, Y = 15, Z = 15, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 2, Size = 1.2, MinSize = -1, R = 0.0, G = 0.3, B = 0.4, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 352)] = {


{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 351)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = -17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = -17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = 17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 30, Y = -1, Z = 17, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 21, Y = 20, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 21, Y = 20, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 25, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = 5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 25, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = 5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 34, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = -5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 34, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 10, Y = -30, Z = -5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 39, Y = 7, Z = -10, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 39, Y = 7, Z = -10, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32501, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 33, Y = 15, Z = 15, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.5, B = 0.5, Black = false, X = 33, Y = 15, Z = 15, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 2, Size = 1.2, MinSize = -1, R = 0.0, G = 0.3, B = 0.4, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 350)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.8, G = 0.6, B = 0.0, Black = false, X = 12, Y = 10, Z = 4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.8, G = 0.6, B = 0.0, Black = false, X = 12, Y = 10, Z = -4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.3, G = 0.0, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 349)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 348)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.2, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 347)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.3 , MinSize = -1, R = 1.0, G = 1.0, B = 0.5, Black = false, X = 12, Y = 12, Z = 4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = 12, Y = 12, Z = 4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.3 , MinSize = -1, R = 1.0, G = 1.0, B = 0.5, Black = false, X = 12, Y = 12, Z = -4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = 12, Y = 12, Z = -4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 2, Size = 1.8, MinSize = -1, R = 0.8, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32395, EffectLv = 1, Size = 2.0, MinSize = -1, R = 0.8, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.3, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 346)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 1.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.6, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 60 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 345)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.1, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.4, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 344)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.1, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.2, G = 0.1, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 343)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.2, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.2, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 335)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 336)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 337)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 338)]={

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 339)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 340)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 341)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 333)] = {

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.6, G = 0.6, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 332)] = { --ANGEL MASC

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = 12, Y = 10, Z = 4, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = 12, Y = 10, Z = -4, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.5, G = 0.3, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.3, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.3, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.3, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.3, MinSize = -1, R = 0.2, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 331)] = { --ANGEL MASC

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.1, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = 13, Y = 11, Z = 2.5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.4, G = 0.4, B = 0.4, Black = false, X = 13, Y = 11, Z = 2.5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.1, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = 13, Y = 11, Z = -2.5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.4, G = 0.4, B = 0.4, Black = false, X = 13, Y = 11, Z = -2.5, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 20, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = -20, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = 0, Y = 0, Z = 0, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 330)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.9, G = 0.8, B = 0.1, Black = false, X = 12, Y = 10, Z = 4, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16, MinSize = -1, R = 0.9, G = 0.8, B = 0.1, Black = false, X = 12, Y = 10, Z = -4, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.16, MinSize = -1, R = 0.0, G = 0.3, B = 0.1, Black = false, X = 12, Y = 10, Z = -4, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.0, G = 0.3, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 331)] = { 



	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 329)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.5, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.5, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.5, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 34, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.5, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.15, G = 0.15, B = 0.15, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.9, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 0.0, G = 0.3, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 1.0, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 1.0, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 1.0, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 1.0, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2,  Size = 1.0, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 0.5, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 0.5, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2,  Size = 0.5, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 2, Size = 0.5, MinSize = -1, R = 0.02, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 328)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.00, G = 0.7333, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 327)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 2, Size = 1.4, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 324)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.2, G = 0.07, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 323)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.1, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.5, B = 0.6, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.4, MinSize = -1, R = 0.1, G = 0.2, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 322)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.2, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.9, MinSize = -1, R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4, MinSize = -1, R = 0.3, G = 0.3, B = 0.3, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32387, EffectLv = 5, Size = 0.1, MinSize = -1, R = 0.1, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}	

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 319)] = { 

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 318)] = {

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0113, G = 0.68, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 317)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 314)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4,  Size = 0.3, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 1, Size = 1.3, MinSize = -1, R = 0.5, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 315)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4,  Size = 0.4, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.4, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 1, Size = 1.3, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 313)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0, MinSize = -1, R = 0.0, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1, R = 0.0, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.00, G = 0.35, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 304)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.5, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.15, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 11.0, Y = 8.0, Z = 5.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.15, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 11.0, Y = 8.0, Z = -5.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 11.0, Y = 8.0, Z = 5.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 11.0, Y = 8.0, Z = -5.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 2.0, Z = -14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 2.0, Z = 14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 2.0, Z = -14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 2.0, Z = 14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 14.0, Z = -14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 14.0, Z = 14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 14.0, Z = -14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 14.0, Z = 14.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.07, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = -18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.07, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = 18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = -18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = 18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = -18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 6.0, Y = 6.0, Z = 18.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 2, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0,  Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 18.0, Z = 4.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 2, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1,  Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 18.0, Z = 4.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 2, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0,  Size = 0.12, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 18.0, Z = -4.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 2, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 1,  Size = 0.2, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 3.0, Y = 18.0, Z = -4.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4,  Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.096, G = 0.72, B = 0.00, Black = false, X = 0.0, Y = 0.0, Z = 0.0, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 309)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32077, EffectLv = 5, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 300)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.8, G = 0.0, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.8, G = 0.0, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.8, G = 0.0, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.3, MinSize = -1, R = 0.8, G = 0.0, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 321)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4,  Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 301)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.3, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 80 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4,  Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 4, Size = 0.6, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 50 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 297)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 302)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 311)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 303)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 296)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 0.5, G = 0.5, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 299)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.55, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32049, EffectLv = 11, Size = 0.01, MinSize = -1, R = 1.00, G = 0.8613, B = 0.48, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 294)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 292)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 291)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 293)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 362)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 20, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z = -20, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R =  1.0, G =  0.7, B =  0.3, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X =  5, Y = 1,  Z =  -7, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X =  5, Y = 1,  Z =  7,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 5,  Y = 5,  Z = -12, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 5,  Y = 5,  Z = 12,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 10, Y = 15, Z = 0,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 0,  Y = -5, Z = -2,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 0,  Y = -5, Z = -25, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 7,  Y = 7,  Z = 0,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.5, MinSize = -1, R =  0.7, G =  0.0, B =  0.8, Black = false, X = 7,  Y = 7,  Z = 0,   RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 288)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =  0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =  0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.8, G = 0.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 289)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}







CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 363)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16,MinSize = -1,  R = 0.8, G = 0.0, B = 0.0,Black = false, X = 12,Y = 10,Z = 4, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16,MinSize = -1,  R = 0.8, G = 0.0, B = 0.0,Black = false, X = 12,Y = 10,Z = -4,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.4, B = 0.4,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.0, B = 0.0,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.4, B = 0.4,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.0, B = 0.0,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.4, B = 0.4,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0, MinSize = -1,  R = 0.4, G = 0.0, B = 0.0,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37,LevelMin = 0, LevelMax = 15,  Type = 0, ID = 32400, EffectLv = 0,  Size =0.6,  MinSize = -1, R = 0.4, G = 0.4, B = 0.4, Black = false, X =-1, Y =-1, Z =-1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28,LevelMin = 0, LevelMax = 15,  Type = 0, ID = 32400, EffectLv = 0,  Size =0.6,  MinSize = -1, R = 0.4, G = 0.0, B = 0.0, Black = false, X =-1, Y =-1, Z =-1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1,  R = 0.4, G = 0.4, B = 0.4,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1,  R = 0.4, G = 0.0, B = 0.0,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 6, Size = 0.6, MinSize = -1,  R = 0.4, G = 0.4, B = 0.4,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 6, Size = 0.6, MinSize = -1,  R = 0.4, G = 0.0, B = 0.0,Black = false, X = -1,Y = -1,Z = -1,RandTime = 100 },
}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 364)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 0, Size = 1.0 ,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =00.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =00.75,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0 ,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0 ,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 6, Size = 0.5 ,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 6, Size = 0.5 ,MinSize = -1,  R = 1.0, G = 0.30, B = 0.00, Black = false, X = 00, Y = 00, Z =    00,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32393, EffectLv = 6, Size = 0.4 ,MinSize = -1,  R = 1.0, G = 0.70, B = 0.00, Black = false, X = 10, Y = 00, Z =   -10,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32393, EffectLv = 6, Size = 0.4 ,MinSize = -1,  R = 1.0, G = 0.70, B = 0.00, Black = false, X = 10, Y = 00, Z =   10, RandTime = 100 },
}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 365)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 0.0, Y =  10.0, Z =    0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 10,  Y =  0.0,  Z =    0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone =  5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 366)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 0.0, Y =  10.0, Z =    0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 10,  Y =  0.0,  Z =    0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone =  5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 30, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.75,  MinSize = -1,  R =  1.0, G =  0.2, B =  0.0, Black = false, X = 0,  Y =  10,    Z =     0,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 40, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.75,  MinSize = -1,  R =  1.0, G =  0.2, B =  0.0, Black = false, X = 0,  Y =  10,    Z =     0,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.15,  MinSize = -1,  R =  0.5, G =  0.1, B =  0.0, Black = false, X = 13, Y =   14,   Z =       3, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.15,  MinSize = -1,  R =  1.0, G =  0.2, B =  0.0, Black = false, X = 13, Y =   14,   Z =       3, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.15,  MinSize = -1,  R =  0.5, G =  0.1, B =  0.0, Black = false, X = 13, Y =   14,   Z =      -3, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.15,  MinSize = -1,  R =  1.0, G =  0.2, B =  0.0, Black = false, X = 13, Y =   14,   Z =      -3, RandTime = 100 },
	

}





CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 367)] = {
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.7,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,  Y = 00,    Z =     00, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 0.0, Y =  10.0, Z =    0.0, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.50, MinSize = -1,  R =  2.0, G =  2.0, B =  2.0, Black = false, X = 10,  Y =  0.0,  Z =    0.0, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone =  5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.5,  MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10, Y =  00,   Z =     00, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 13,   Y =  19,    Z =      4,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 13,   Y =  19,    Z =     -4,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 1.5,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 05,   Y =  05,    Z =     00,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.2,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 05,   Y =  05,    Z =     00,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 1.5,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 05,   Y =  05,    Z =     000,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.2,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 05,   Y =  05,    Z =     000,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 05,   Y =  -12,   Z =     -15,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -5,   Y =  -12,   Z =     -15,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.4,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,   Y =  00,    Z =       00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.4,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = 10,   Y =  00,    Z =       00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.20,  MinSize = -1,   R =  2.0, G =  2.0, B =  2.0,Black = false, X =  0.0, Y =  10.0,   Z =      0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 20, Size = 0.20,  MinSize = -1,   R =  2.0, G =  2.0, B =  2.0,Black = false, X =  10,  Y =  0.0,   Z =      0.0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone =  5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.2,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10,  Y =  00,    Z =       00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.2,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10,  Y =  00,    Z =       00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10,  Y =  00,    Z =       00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 11, Size = 0.3,   MinSize = -1,  R =  1.0, G =  1.0, B =  1.0, Black = false, X = -10,  Y =  00,    Z =       00, RandTime = 100 },

	
	
	

}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 368)] = {

	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 20,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =    -20, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.0,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7,    MinSize = -1,  R =  0.1, G =  0.25, B =  0.4, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 9, Size = 0.50,   MinSize = -1,   R =  0.1, G =  0.2, B =  0.2, Black = false, X = 20,   Y =  0,    Z =    0,   RandTime = 100 },



	
	
	

}






CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 369)] = {

	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 20,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 43, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =    -20, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.0,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  00,   Z =     00, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 13, Size = 0.5,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  0,    Z =    0,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 13, Size = 0.5,   MinSize = -1,  R = 0.0, G = 0.6, B = 0.3, Black = false, X = 00,   Y =  0,    Z =    0,   RandTime = 100 },



	
	
	

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 370)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 2.00,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 0,    Y =  0,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 2.00,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 10,   Y =  0,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 1.50,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 0,    Y =  0,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 1.50,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 0,    Y =  0,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.90,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 53,   Y =  3,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32002, EffectLv = 0, Size = 0.90,   MinSize = -1,  R =  0.0, G =  0.6, B =  1.0, Black = false, X = 53,   Y =  3,     Z =    0,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.1,    MinSize = -1,  R =  0.0, G =  0.4, B =  1.0, Black = false, X = 13,   Y =  9.5,   Z =    3,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32002, EffectLv = 1, Size = 0.1,    MinSize = -1,  R =  0.0, G =  0.4, B =  1.0, Black = false, X = 13,   Y =  9.5,   Z =    -3, RandTime = 100 },


}






CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 372)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.23,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  14,    Z =    4,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.23,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  14,    Z =    -4,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.13,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  -16,   Z =    -11, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.13,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  -18,   Z =    -5,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.13,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  -16,   Z =    11,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.13,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 8,   Y =  -18,   Z =    5,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5,    MinSize = -1,  R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5,    MinSize = -1,  R = 0.6, G = 0.0, B = 0.0, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4,    MinSize = -1,  R = 0.8, G = 0.0, B = 0.0, Black = false, X = 6,   Y =  10,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4,    MinSize = -1,  R = 0.8, G = 0.0, B = 0.0, Black = false, X = 6,   Y =  10,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5,    MinSize = -1,  R = 0.8, G = 0.0, B = 0.0, Black = false, X = -1,  Y =  13,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5,    MinSize = -1,  R = 0.8, G = 0.0, B = 0.0, Black = false, X = -1,  Y =  13,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.2,    MinSize = -1,  R = 0.3, G = 0.0, B = 0.0, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32260, EffectLv = 5, Size = 0.3,    MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,  Y =  -1,    Z =    -1,  RandTime = 100 },


}





CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 373)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16,   MinSize = -1,  R = 0.8, G = 0.4, B = 0.0, Black = false, X = 12,   Y =  10,    Z =    4,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32054, EffectLv = 0, Size = 0.16,   MinSize = -1,  R = 0.8, G = 0.4, B = 0.0, Black = false, X = 12,   Y =  10,    Z =    -4,  RandTime = 100 },


}





CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 374)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.3,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 12,   Y =  10,    Z =    4,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.3,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 12,   Y =  10,    Z =    -4,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.4,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 15,   Y =  25,    Z =    5,   RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32003, EffectLv = 0, Size = 0.4,   MinSize = -1,  R = 1.0, G = 0.0, B = 0.0, Black = false, X = 15,   Y =  25,    Z =    -5,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.8,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5,  LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32004, EffectLv = 3, Size = 0.4,   MinSize = -1,  R = 0.1, G = 0.1, B = 0.1, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },


}





CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 375)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.8,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0,  ID = 32002, EffectLv = 0, Size = 1.3,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type =  1, ID = 32394, EffectLv = 5, Size = 1.0,   MinSize = -1,  R = 0.2, G = 0.1, B = 0.00, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type =  1, ID = 32077, EffectLv = 9, Size = 1.6,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.00, Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },


}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 376)] = {
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1,  ID = 32394, EffectLv = 5,  Size = 0.7,    MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1,  ID = 32387, EffectLv = 4,  Size = 0.8,    MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1,  ID = 32387, EffectLv = 4,  Size = 0.8,    MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1,  ID = 32101, EffectLv = 12, Size =  0.7,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1,  ID = 32101, EffectLv = 12, Size =  0.7,   MinSize = -1,  R = 0.1, G = 0.0, B = 0.0,  Black = false, X = -1,   Y =  -1,    Z =    -1,  RandTime = 100 },


}









CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 290)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.78, G = 0.7, B = 0.6787, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 287)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 278)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 280)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 1.0, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 281)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 310)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 306)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 282)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.396, G = 0.263, B = 0.129, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 283)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 286)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.7, B = 1.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 279)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.0, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 276)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =  0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size =  0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 275)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.001, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.001, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.001, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.001, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 277)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.9, G = 0.8001, B = 0.567, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 273)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 1.00, G = 0.00, B = 0.0, Black = false, X = -5, Y = 12, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 1.00, G = 0.00, B = 0.0, Black = false, X = -5, Y = 12, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 272)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 295)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32073, EffectLv = 3, Size = 0.01, MinSize = -1, R = 0.92, G = 0.7142, B = 0.3588, Black = false, X = -1, Y = -1, Z = -1, RandTime = 30 },

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 252)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 250)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.81, G = 0.6796, B = 0.4698, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 342)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 253)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 269)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 268)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 271)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 249)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 1.10, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 251)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.10, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 248)] = {

	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 316)] = {

	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.4123, B = 0.18, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 264)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 40 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 2246)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}




CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 246)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 1.4,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 0, Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 1.4,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 0, Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 1.0,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 0, Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 1.0,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 0, Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 0.5,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 30,Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type =0, ID = 32002, EffectLv = 0, Size = 0.5,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 30,Y = 0,Z =  0, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type =1, ID = 32002, EffectLv = 1, Size = 0.1,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 13,Y = 9,Z =   4,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type =1, ID = 32002, EffectLv = 1, Size = 0.1,MinSize = -1, R =  1.0, G =  0.4, B =  0.0,Black = false, X = 13,Y = 9,Z =  -4,RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1,ID =  32395, EffectLv = 0,  Size =0.3, MinSize = -1,R =  1.0, G =  0.4, B =  0.0, Black = false, X =0,  Y =0, Z =  5, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1,ID =  32395, EffectLv = 0,  Size =0.3, MinSize = -1,R =  1.0, G =  0.4, B =  0.0, Black = false, X =0,  Y =0, Z = -5, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	
}







CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 242)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 243)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.0, G = 0.39, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 241)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.02, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 20 },
}






CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 256)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0, G = 0, B = 0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 255)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.35, MinSize = -1, R = 0.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 259)] = {

	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 260)] = {

	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 254)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.7, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.7, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0,  Size = 0.35, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 33, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.30, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 39, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.25, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 1.00, G = 0.7833, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.7833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 257)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 258)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.80, MinSize = -1, R = 0.62, G = 0.62, B = 0.62, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 237)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0,  Size = 0.35, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 33, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 39, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.25, MinSize = -1, R = 0.00, G = 0.6667, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 204)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 203)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.00, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 8 },	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 212)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.15, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 15 },
	
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 213)] = {

	
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.00, G = 0.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 214)] = {

	
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.55, G = 0.27, B = 0.07, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 231)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.32, G = 0.7733, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.32, G = 0.7733, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.8, MinSize = -1, R = 0.32, G = 0.7733, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.8, MinSize = -1, R = 0.32, G = 0.7733, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 232)] = {

	
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 233)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.895, B = 0.58, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 235)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 238)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 239)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.9, G = 0.7, B = 0.1, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 240)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 361)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 236)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 234)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,    Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,    Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.5, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,    Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.6, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12, Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12, Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12, Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = -1, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 12, Size = 0.45, MinSize = -1, R = 0.00, G = 0.7833, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 230)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 263)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 33, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.30, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 39, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32394, EffectLv = 0, Size = 0.25, MinSize = -1, R = 0.74, G = 0.3065, B = 0.037, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 266)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 267)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 265)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 261)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 262)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.7, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.3833, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 312)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,   Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12,  Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32290, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.0, B = 0.0, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 222)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12,Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 223)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 224)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.5, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 225)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.3, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.4, MinSize = -1, R = 1.0, G = 0.85, B = 0.2, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 227)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.40, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 1.00, G = 0.5893, B = 0.23, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32101, EffectLv = 12, Size = 0.45, MinSize = -1, R = 1.00, G = 0.8828, B = 0.63, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 208)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0., G = 0.5, B = 0., Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1,  Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32119, EffectLv = 1, Size = 0.45, MinSize = -1, R = 0.5, G = 1., B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 25 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 229)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID =  32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID =  32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.5, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID =  32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },	
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.001, MinSize = -1, R = 0.91, G = 0.8299, B = 0.5096, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 228)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.42, G = 0.00, B = 0.72, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 215)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 1.00, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 216)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.3813, G = 0.00, B = 0.44, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 217)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.6, G = 0.05, B = 0.05, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 218)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 219)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 220)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.36, G = 0.25, B = 0.20, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 202)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 205)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 206)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.32, G = 0.66, B = 1.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 207)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 211)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.00, B = 0.00, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 201)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0,  Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32386, EffectLv = 0, Size = 0.04, MinSize = -1, R = 1.00, G = 0.5858, B = 0.29, Black = false, X = -1, Y = -1, Z = -1, RandTime = 10 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 209)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 226)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 0, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.50, MinSize = -1, R = 0.0, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 210)] = {
    { Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.60, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.70, MinSize = -1, R = 0.5, G = 0.0, B = 0.5, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 221)] = {
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 26, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 27, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 35, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 36, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 17, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 3, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 10, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 28, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 37, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0,  Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 12, LevelMin = 0, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.6, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 18, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0, Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 20, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0, Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 4, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0,  Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 11, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0, Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 5, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0,  Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
	{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = true, PK = -1, MaxPK = -1, Bone = 19, LevelMin = 0, LevelMax = 15, Type = 1, ID = 32391, EffectLv = 0, Size = 0.35, MinSize = -1, R = 0.0891, G = 0.4135, B = 0.81, Black = false, X = -1, Y = -1, Z = -1, RandTime = 100 },
}



CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 61)] = { -- BRAVE

--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

-- ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

-- GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

-- PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

-- BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.65, MinSize = -1, R = 0.2537, G = 0.59, B = 0.3097, Black = false, X = 30, Y = 05, Z =  -5, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 68)] = { -- DRAGON
--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 1.00, G = 0.0, B = 0.00, Black = true, X = 30, Y = 05, Z =  -5, RandTime = 100 },


}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 62)] = { -- HYON
--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 30, Y = 05, Z =  -5, RandTime = 100 },

}

CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 9)] = { -- PLATE
--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0, G = 0.3833, B = 1.00, Black = false, X = 30, Y = 05, Z =  -5, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 45)] = { -- TITAN
--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

--BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.80, MinSize = -1, R = 0.8, G = 0.68, B = 0.792, Black = false, X = 00, Y = 00, Z =  00, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.08, G = 0.68, B = 0.792, Black = false, X = 30, Y = 05, Z =  -5, RandTime = 100 },

}


CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 60)] = { -- DEATH
--HELM
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.60, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 20, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--ARMOR
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 19, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 26, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 35, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--GLOVES
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 27, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 28, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 36, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 37, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--PANTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 3 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 10, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.75, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

--BOOTS
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 4 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 11, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 5 , LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },
{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 12, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 1.00, MinSize = -1, R = 0.30, G = 0.30, B = 0.30, Black = true, X = 00, Y = 00, Z =  00, RandTime = 100 },

{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 20, LevelMin = 15, LevelMax = 15, Type = 0, ID = 32400, EffectLv = 0, Size = 0.50, MinSize = -1, R = 0.00, G = 0.80, B = 1.00, Black = true, X = 30, Y = 05, Z =  -5, RandTime = 100 },

}




--this config only detect boots so you need put boots of the set you want put effect
--
--Type
--
--0 = Statico
--1 = Dinamico
--2 = Skill
--
--Bone = 18		= Espinha
--Bone = 25		=
--Bone = 0		=
--Bone = 4 		= Perna Esquerda	(5  = P� esquerdo)
--Bone = 11		= Perna Direita 	(12 = P� direito)
--Bone = 21		= Pesco�o 			(20 = Cabe�a)
--Bone = 30		= Dedo Direito  	(28 = M�o direita)  (25 = M�o direita) (27 = Cotuvelo direito)
--Bone = 41		= Dedo Esquerdo 	(37 = M�o esquerda) (34 = M�o esquerda) (36 = Cotuvelo esquerdo)
--Bone = 43		= Pants
--Bone = 26		= Ombeira Direita	(35 = Ombeira Esquerda)
--
--X = + PARA LADO ESQ  | - PRA LADO DIR
--Y = + PARA TRAZ 		| - PRA FRENTE
--Z = + PRA BAIXO		| - PRA CIMA
--
--(X = + SOBE - DESCE) 
--(Y = + FRENTE - ATRAS) 
--(Z = + ESQUERDA - DIREITA)
--
--X:-SOBE + DESCE | Y:- FRENTE + ATRAS | Z:- ESQUERDA + DIREITA 150

--CUSTOM_SET_EFFECTS_COMPLETE[GET_ITEM_MODEL(11, 60)] = { --SKILL LIVRO 436, 442  445/1 325 327 334/1 
--{ Actions = {{[0] = -1}}, SetComplete = true, Effect15 = false,  PK = -1, MaxPK = -1, Bone = 18, LevelMin = 15, LevelMax = 15, Type = 2, ID = 339, EffectLv = 1, Size = 2.0, MinSize = -1, R =  0.0, G =  0.4, B =  1.0, X = 0, Y = 0,  Z = 0, RandTime = 100 },
--}

--EFEITO PISANTE DE FOGO 32101, EffectLv = 36


function CreateEffectSetPlayer(BMDStruct, ObjectStruct, ItemIndex, Level, CompleteSet, PK)
	--if not CUSTOM_EFFECT then return end
	setInfo = CUSTOM_SET_EFFECTS_COMPLETE[ItemIndex]

	local Bmd = BMD.new(BMDStruct)
	local Obj = Object.new(ObjectStruct)

	if setInfo ~= nil then
		--math.randomseed(os.time())

		for key in pairs(setInfo) do
			local effect = setInfo[key]

			local setComplete
            if effect.SetComplete then setComplete = 1 else setComplete = -1 end

			for _, action in ipairs(effect.Actions) do
				if (action == -1 or action[0] == Obj:getAction() or action[1] ~= Obj:getAction()) then
					if CompleteSet == (setComplete) or (setComplete == -1) then
						if (Level >= effect.LevelMin and Level <= effect.LevelMax)
						then
							local randValue = 100

							if effect.RandTime ~= 100
							then
								randValue = math.random(0.01, 100)
							end

							if effect.RandTime >= randValue
							then
								local black = 0
								if effect.Black then black = 1 end

								if effect.InitialSize == nil then
									effect.InitialSize = effect.Size
									effect.MaxSize = effect.InitialSize
								end

								if effect.MinSize ~= -1 then
									if effect.RenderSize then
										if effect.Size > effect.MinSize then
											effect.Size = effect.Size - effect.TimeSize
										else
											effect.RenderSize = false
										end
									else
										if effect.Size < effect.MaxSize then
											effect.Size = effect.Size + effect.TimeSize
										else
											effect.RenderSize = true
										end
									end
								end

								local BmdEffect = false

								if effect.PK == -1 or (PK >= effect.PK and PK <= effect.MaxPK) then
									if BmdEffect then
										
		
										if (effect.Type == 0) then
											Bmd:TransformPosition2(effect.Bone, effect.X, effect.Y, effect.Z)
											Bmd:CreateSprite(effect.ID, effect.Size, effect.R, effect.G, effect.B, ObjectStruct, black)
										elseif (effect.Type == 1) then
											Bmd:TransformPosition2(effect.Bone, effect.X, effect.Y, effect.Z)
											Bmd:CreateParticle(effect.ID, effect.EffectLv, effect.Size, effect.R, effect.G, effect.B, ObjectStruct)
										elseif (effect.Type == 2) then
											Bmd:TransformPosition2(effect.Bone, effect.X, effect.Y, effect.Z)
											Bmd:CreateEffect(effect.ID, effect.EffectLv, effect.R, effect.G, effect.B, ObjectStruct)
										end

										Bmd = nil
										Obj = nil
									else
										if (effect.Type == 0) then
											CreateSprite(BMDStruct, ObjectStruct, effect.Bone, effect.ID, effect.Size, effect.R, effect.G, effect.B, effect.X, effect.Y, effect.Z, black)
										elseif (effect.Type == 1) then
											CreateParticle(BMDStruct, ObjectStruct, effect.Bone, effect.ID,effect.EffectLv, effect.Size, effect.R, effect.G, effect.B, effect.X, effect.Y, effect.Z)
										elseif (effect.Type == 2) then
											CreateSkill(BMDStruct, ObjectStruct, effect.Bone, effect.ID, effect.EffectLv, effect.Size, effect.R, effect.G, effect.B, effect.X, effect.Y, effect.Z)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end

	Bmd = nil
	Obj = nil
end

function LoadEffectGrade()
	if ENABLED_EFFECT15 == false then return end

	for x = 1, #CUSTOM_ADD_EFFECT15 do
		local setComplete
		if CUSTOM_ADD_EFFECT15[x].SetComplete then setComplete = 1 else setComplete = 0 end
		AddEffect15(CUSTOM_ADD_EFFECT15[x].ItemIndex, setComplete, CUSTOM_ADD_EFFECT15[x].EffectLevel, CUSTOM_ADD_EFFECT15[x].R, CUSTOM_ADD_EFFECT15[x].G, CUSTOM_ADD_EFFECT15[x].B)
	end
end

function LoadSmokeEffect()
    if ENABLED_SMOKE == false then return end

    for i in ipairs(SMOKE_EFFECTS) do
        AddSmokeEffect(SMOKE_EFFECTS[i].Index, SMOKE_EFFECTS[i].R, SMOKE_EFFECTS[i].G, SMOKE_EFFECTS[i].B)
    end
end