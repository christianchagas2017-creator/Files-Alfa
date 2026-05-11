---@diagnostic disable: empty-block
local CHAOS_BOX_GENESIS_MONSTER= {
	--{Class = 600, Key = 1, Map = 0, X = 130, Y = 133}, -- genesis normal
	{Class = 710, Key = 2, Map = 0, X = 130, Y = 133}, -- O Instrutuor
}


local CHAOS_MACHINE_CONFIG_COMB_SELECTION = {
	[01]  = {Combination = 01, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 100.0,  CombinationName = "Fenrir Red"},
	[02]  = {Combination = 02, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 15.0,   CombinationName = "Dinorant"},
	[03]  = {Combination = 03, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 15.0,   CombinationName = "Demon"},
	[04]  = {Combination = 04, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 15.0,   CombinationName = "Angel"},
	[05]  = {Combination = 05, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 35.0,   CombinationName = "Wings of Storm"},
	[06]  = {Combination = 06, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 35.0,   CombinationName = "Wings of Space-Time"},
	[07]  = {Combination = 07, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 35.0,   CombinationName = "Wings of Illusion"},
	[08]  = {Combination = 08, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 35.0,   CombinationName = "Wings of Doom"},
	[09]  = {Combination = 09, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 40.0,   CombinationName = "Wings of Spirits"},
	[10]  = {Combination = 10, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 40.0,   CombinationName = "Wings of Soul"},
	[11]  = {Combination = 11, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 40.0,   CombinationName = "Wings of Dragon"},
	[12]  = {Combination = 12, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 40.0,   CombinationName = "Wings of Darkness"},
	[13]  = {Combination = 13, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 50.0,   CombinationName = "Wings of Elf"},
	[14]  = {Combination = 14, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 50.0,   CombinationName = "Wings of Heaven"},
	[15]  = {Combination = 15, Expiration = -1, 		 BoostLimit =  100, CombinationSuccessRate = 50.0,   CombinationName = "Wings of Satan"},	

}                                                                                                                                                              
  
local CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS = { }                                                                                                              

--CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[1] = {
--	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = 0, Quantity = 1, ItemIndex = -1, MultiIndex = 2, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Corvo S/ Status Bonus" },
--	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = 2, Quantity = 1, ItemIndex = -1, MultiIndex = 2, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Corvo C/ Status Bonus" },
--}

-- FENRIR GOLD
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[1] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 150, ItemIndex = GET_ITEM(13, 35), MultiIndex = -1, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Fragment of Horn" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 150, ItemIndex = GET_ITEM(13, 36), MultiIndex = -1, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Broken Horn" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25, ItemIndex = GET_ITEM(12, 15), MultiIndex = -1, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Chaos" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25, ItemIndex = GET_ITEM(14, 14), MultiIndex = -1, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Soul" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25, ItemIndex = GET_ITEM(14, 13), MultiIndex = -1, Required = true, Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Bless" },
}

-- DINORANT
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[2] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(12,  15), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Chaos" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Soul" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  13), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Bless" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  16), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Life" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(14,  22), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 1, ReturnOnFail = false, ItemName = "Jewel Of Creation" },
}

-- DEMON
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[3] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(12,  15), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Chaos" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Soul" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  13), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Bless" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  16), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Life" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(14,  22), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 1, ReturnOnFail = false, ItemName = "Jewel Of Creation" },
}

-- ANGEL
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[4] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(12,  15), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Chaos" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Soul" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  13), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Bless" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 25,  ItemIndex = GET_ITEM(14,  16), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Jewel Of Life" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(14,  22), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 1, ReturnOnFail = false, ItemName = "Jewel Of Creation" },
}

-- Wings of Storm
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[5] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,  ItemIndex = GET_ITEM(12,  5),   MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings Of Dragon" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },
}

-- Wings of Storm
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[6] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(12,  4), MultiIndex = -1,  Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Soul" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },
}

-- Wings of Ilusion
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[7] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(12,  3), MultiIndex = -1,  Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Spirits" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },
}

-- Wings of Doom
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[8] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(12,  6), MultiIndex = -1,  Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Spirits" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 30,  ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = 0, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },
}

-- Wings of Spirits
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[9] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(12,  0),  MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Elf" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Heaven
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[10] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(12,  1),  MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Heaven" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Dragon
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[11] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(12,  2),  MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Satan" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Darkness
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[12] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(12,  2),  MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Wings of Satan" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Elf
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[13] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Heaven
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[14] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}

-- Wings of Satan
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[15] = {
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  14), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Loch's Feather" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  53), MultiIndex = -1, Required = true,  Target = false, Source = false, Booster = 0, ReturnOnFail = false, ItemName = "Feather of Condor" },
	{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1,   ItemIndex = GET_ITEM(13,  52), MultiIndex = -1, Required = false, Target = false, Source = false, Booster = 2, ReturnOnFail = false, ItemName = "Flame Of Condor" },

}




local CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD = { }

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[1] = { -- FENRIR RED
	{ ItemIndex = GET_ITEM(13, 150), Level = 15, Dur = 255, Skill = 1, Luck = 1, Life = 7, Exc = 0, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[2] = { -- DINORANT
	{ ItemIndex = GET_ITEM(13, 3), Level = 15, Dur = 255, Skill = 1, Luck = 1, Life = 7, Exc = 0, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[3] = { -- DEMON
	{ ItemIndex = GET_ITEM(13, 64), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 7, Exc = 0, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[4] = { -- ANGEL
	{ ItemIndex = GET_ITEM(13, 65), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 7, Exc = 0, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[5] = { -- ANGEL
	{ ItemIndex = GET_ITEM(12, 36), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[6] = { -- ANGEL
	{ ItemIndex = GET_ITEM(12, 37), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[7] = { -- ANGEL
	{ ItemIndex = GET_ITEM(12, 38), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[8] = { -- ANGEL
	{ ItemIndex = GET_ITEM(12, 39), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[9] = { -- SPIRITS
	{ ItemIndex = GET_ITEM(12, 3), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[10] = { -- SOUL
	{ ItemIndex = GET_ITEM(12, 4), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[11] = { -- DRAGON
	{ ItemIndex = GET_ITEM(12, 5), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[12] = { -- DARKNESS
	{ ItemIndex = GET_ITEM(12, 6), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[13] = { -- ELF
	{ ItemIndex = GET_ITEM(12, 0), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[14] = { -- HEAVEN
	{ ItemIndex = GET_ITEM(12, 1), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}

CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[15] = { -- SATAN
	{ ItemIndex = GET_ITEM(12, 1), Level = 0, Dur = 255, Skill = 1, Luck = 1, Life = 0, Exc = 47, Op380 = 0, Ancient = 0, JoH = 0, Socket = 0, timer = 0},
}





local CHAOS_MACHINE_ITEM_TARGET_CONFIG = {}

CHAOS_MACHINE_ITEM_TARGET_CONFIG[8] =  {Level = -1, Skill = -1, Luck = -1, Opt = -1, Exc = -1, Ancient = -1, JoH = 1, Serial = 1} -- Fantasy
CHAOS_MACHINE_ITEM_TARGET_CONFIG[9] = {Level = -1, Skill = -1, Luck = -1, Opt = -1, Exc = -1, Ancient = -1, JoH = 1, Serial = 1} -- Dragon/Pad/Wind


local CHAOS_MACHINE_ITEM_SOURCE_CONFIG = {}

CHAOS_MACHINE_ITEM_SOURCE_CONFIG[6] = {Level = -1, Skill = -1, Luck = -1, Opt = -1, Exc = -1, Ancient = 1, JoH = -1} -- Status Transfer
CHAOS_MACHINE_ITEM_SOURCE_CONFIG[7] = {Level = -1, Skill = -1, Luck = -1, Opt = -1, Exc = -1, Ancient = 1, JoH = -1} -- Mastery Optioin Transfer



CHAOS_MACHINE_CONFIG_MULTI_INDEX = {}


CHAOS_MACHINE_CONFIG_MULTI_INDEX[1] = {
	GET_ITEM(14,   22), -- JEWEL OF CREATION
}

CHAOS_MACHINE_CONFIG_MULTI_INDEX[2] = {
	GET_ITEM(13,   52), -- Flame of Condor
}


CHAOS_MACHINE_MESSAGES = { }

CHAOS_MACHINE_MESSAGES["Por"] = {
[1] = "Falta itens para a combinação!",
[2] = "Ocorreu algum erro de configuração desse mix!",
[3] = "Sua combinação falhou!",
[4] = "Sua combinação foi bem sucedida!",
[5] = "Você trocou o item por %d %s",
[6] = "Você recebeu o conhcimento: O Ferreiro",
[7] = "Você recebeu o conhcimento: A Craidora",
[8] = "Essa combinação não está mais disponível",
}

CHAOS_MACHINE_MESSAGES["Eng"] = {
[1] = "Missing items for the combination!",
[2] = "There was an error in the configuration of this mix!",
[3] = "Your combination failed!",
[4] = "Your combination was successful!",
[5] = "Você trocou o item por %d %s",
[6] = "Você recebeu o conhcimento: O Ferreiro",
[7] = "Você recebeu o conhcimento: A Craidora",
[8] = "This combination is not available anymore",
}

CHAOS_MACHINE_MESSAGES["Spn"] = {
[1] = "¡Elementos faltantes para la combinación!",
[2] = "¡Hubo un error en la configuración de esta mezcla!",
[3] = "¡Tu combinación falló!",
[4] = "¡Tu combinación fue exitosa!",
[5] = "Você trocou o item por %d %s",
[6] = "Você recebeu o conhcimento: O Ferreiro",
[7] = "Você recebeu o conhcimento: A Craidora",
[8] = "Essa combinação não está mais disponível",
}

--[[
System don't touch
--]]

ChaosMachineGenesis = { }

local ChaosMachineIngredients = { }
local ChaosMachineItensReward = { }
local ChaosMachineReturnList = { }
local RateBooster = 0

function ChaosMachineGenesis.NpcTalk(NpcIndex, PlayerIndex)
	local npc = User.new(NpcIndex)
	local player = User.new(PlayerIndex)
	local npcInfo = -1

	for m = 1, #CHAOS_BOX_GENESIS_MONSTER do
		if npc:getClass() == CHAOS_BOX_GENESIS_MONSTER[m].Class then
			local map = npc:getMapNumber()
			local x = npc:getX()
			local y = npc:getY()
			if map == CHAOS_BOX_GENESIS_MONSTER[m].Map then
				if x == CHAOS_BOX_GENESIS_MONSTER[m].X and y == CHAOS_BOX_GENESIS_MONSTER[m].Y then
					npcInfo = CHAOS_BOX_GENESIS_MONSTER[m]
				end
			end
		end
	end

	npc = nil

	if npcInfo ~= -1 then	
		if player:getChaosBoxGenesisSelectedComb() == 0 then
			player:setChaosBoxGenesisSelectedKey(npcInfo.Key)
		end

		OpenChaosMachineGenesis(PlayerIndex)
		return 1
	end

	return 0
end

function ChaosMachineGenesis.SetIngredientItens(key)
	if CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[key] == nil
	then
		return
	end

	local value = 1

	for i in ipairs(CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[key]) do
		ChaosMachineIngredients[value] = { Ingredients = CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[key][i] }
		
		value = value + 1
	end
end

function ChaosMachineGenesis.SetRewardItens(key)
	if CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[key] == nil
	then
		return
	end

	local value = 1

	for i in ipairs(CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[key]) do
		ChaosMachineItensReward[value] = { Rewards = CHAOS_MACHINE_CONFIG_COMB_ITEM_REWARD[key][i] }

		value = value + 1
	end
end

function ChaosMachineGenesis.CheckMultiItens(item, ItemIndex, Level, Exc, Luck, Skill, Life, Ancient, MaxAncient, JoH)
	local itemFind = 0
	local itemQuantity = 0

	if item == nil
	then
		return 0
	end

	for i = 0, 119 do
		if item:isItem(i) == 0
		then
			goto continue
		end

		if item:getIndex(i) ~= ItemIndex and ItemIndex ~= -1
		then
			goto continue
		end

		if Exc ~= -1
		then
			local exccount = 0
			local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
			for e = 1, 6 do
				if exctable[e] == 1 then
					exccount = exccount + 1
				end
			end

			if Exc == 0 and exccount ~= 0 then
				goto continue
			elseif exccount < Exc then
				goto continue
			end
		end

		if JoH ~= -1
		then
			if JoH == 0 then
				if item:getItemTable(i, 6) ~= 0 then
					goto continue
				end
			else
				if item:getItemTable(i, 6) == 0 then
					goto continue
				end
			end
		end

		if Ancient ~= -1
		then
			if Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
				goto continue
			elseif item:getItemTable(i, 5) < Ancient then
				goto continue
			end

			if MaxAncient ~= -1 and item:getItemTable(i, 5) > MaxAncient then
				goto continue
			end
		end

		if Luck ~= -1
		then
			if item:getItemTable(i, 3) ~= Luck
			then
				goto continue
			end
		end

		if Skill ~= -1
		then
			if item:getItemTable(i, 2) ~= Skill
			then
				goto continue
			end
		end

		if Life ~= -1
		then
			if Life == 0 and item:getItemTable(i, 4) ~= 0 then
				goto continue
			elseif item:getItemTable(i, 4) < Life then
				goto continue
			end
		end

		if Level ~= -1 and item:getLevel(i) < Level
		then
			goto continue
		end

		itemFind = 1

		if GetStackItem(item:getIndex(i)) ~= 0
		then
			itemQuantity = itemQuantity + item:getDurability(i)
		else
			itemQuantity = itemQuantity + 1
		end

		::continue::
	end

	if itemFind == 1
	then
		return itemQuantity
	end

	return 0
end

function ChaosMachineGenesis.CheckItens(item, ItemIndex, Quantity, Level, Exc, Luck, Skill, Life, Ancient, MaxAncient, Required, JoH)
	local itemFind = 0
	local itemQuantity = 0

	if item == nil
	then
		return 0
	end

	for i = 0, 119 do
		if item:isItem(i) == 0
		then
			goto continue
		end

		if item:getIndex(i) ~= ItemIndex and ItemIndex ~= -1
		then
			goto continue
		end

		if Exc ~= -1
		then
			local exccount = 0
			local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
			for e = 1, 6 do
				if exctable[e] == 1 then
					exccount = exccount + 1
				end
			end

			if Exc == 0 and exccount ~= 0 then
				goto continue
			elseif exccount < Exc then
				goto continue
			end
		end

		if JoH ~= -1
		then
			if JoH == 0 then
				if item:getItemTable(i, 6) ~= 0 then
					goto continue
				end
			else
				if item:getItemTable(i, 6) == 0 then
					goto continue
				end
			end
		end

		if Ancient ~= -1
		then
			if Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
				goto continue
			elseif item:getItemTable(i, 5) < Ancient then
				goto continue
			end

			if MaxAncient ~= -1 and item:getItemTable(i, 5) > MaxAncient then
				goto continue
			end
		end

		if Luck ~= -1
		then
			if item:getItemTable(i, 3) ~= Luck
			then
				goto continue
			end
		end

		if Skill ~= -1
		then
			if item:getItemTable(i, 2) ~= Skill
			then
				goto continue
			end
		end

		if Life ~= -1
		then
			if Life == 0 and item:getItemTable(i, 4) ~= 0 then
				goto continue
			elseif item:getItemTable(i, 4) < Life then
				goto continue
			end
		end

		if Level ~= -1 and item:getLevel(i) < Level
		then
			goto continue
		end

		itemFind = 1

		if GetStackItem(item:getIndex(i)) ~= 0
		then
			itemQuantity = itemQuantity + item:getDurability(i)
		else
			itemQuantity = itemQuantity + 1
		end

		::continue::
	end

	if itemFind == 1 
	then
		if Required then
			if itemQuantity == Quantity then
				return itemQuantity
			end
		else

			return itemQuantity
		end
	end
	
	return 0
end

function ChaosMachineGenesis. CheckCanMix(player)
	local itemMissing = 0

	local chaosMachineGenesis = ChaosBoxGenesis.new(player:getIndex())

	for i in ipairs(ChaosMachineIngredients) do
		local ingrediente = ChaosMachineIngredients[i].Ingredients

		if ingrediente ~= nil
		then
			if ingrediente.MultiIndex ~= -1 then
				local count = 0
				for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[ingrediente.MultiIndex]) do
					count = count + ChaosMachineGenesis.CheckMultiItens(chaosMachineGenesis, v, ingrediente.Level, ingrediente.Exc, ingrediente.Luck, ingrediente.Skill, ingrediente.Life, ingrediente.Ancient, ingrediente.MaxAncient, ingrediente.JoH)
				end

				if count ~= ingrediente.Quantity then
					if ingrediente.Required then
						itemMissing = itemMissing + 1
					end
				end
				if ingrediente.Booster > 0 then
					RateBooster = ingrediente.Booster*count
				end
			else
				local count = ChaosMachineGenesis.CheckItens(chaosMachineGenesis, ingrediente.ItemIndex, ingrediente.Quantity, ingrediente.Level, ingrediente.Exc, ingrediente.Luck, ingrediente.Skill, ingrediente.Life, ingrediente.Ancient, ingrediente.MaxAncient, ingrediente.Required, ingrediente.JoH)
				if count == 0
				then
					if ingrediente.Required then
						itemMissing = itemMissing + 1
					end
				end
				if ingrediente.Booster > 0 then
					RateBooster = ingrediente.Booster*count
				end
			end
		end
	end

	chaosMachineGenesis = nil

	if itemMissing == 0
	then
		return 1
	end

	return 0
end

function ChaosMachineGenesis.getSerialForNewItem()
	--local db = DataBase.getDb()
	
	db:exec('EXEC WZ_GetItemSerial')
	
	if db:fetch() ~= SQL_NO_DATA
	then
		local result = db:getResult(1)
		db:clear()
		return result
	else
		db:clear()
		return -1
	end
end

function ChaosMachineGenesis.CombFail(player)
	ChaosBoxGenesisInit(player:getIndex())
	
	
	local state = 2
	
	
	if #ChaosMachineReturnList > 0 then
		state = 3
	end
	ChaosBoxGenesisMixSend(player:getIndex(), state)

	player:setChaosBoxGenesisState(state)

	for i in ipairs(ChaosMachineReturnList) do
		local itens = ChaosMachineReturnList[i].Rewards
		
		if itens ~= nil
		then
			if itens.ItemIndex ~= -1 then
				local serial = 0
				if itens.Serial == nil or itens.Serial <= 0 then
					serial = ChaosMachineGenesis.getSerialForNewItem()
				else
					serial = itens.Serial
				end

				if serial ~= -1
				then
					ChaosBoxGenesisCreateItem(player:getIndex(), itens.ItemIndex, itens.Level, itens.Dur, itens.Skill, itens.Luck, itens.Life, itens.Exc, itens.Op380, itens.Ancient, itens.JoH, itens.Socket, itens.timer, serial)
				end
			end
		end
	end
	
	ChaosBoxGenesisItemListSend(player:getIndex())

	SaveChaosBoxGenesis(player:getIndex())
end

function ChaosMachineGenesis.CombSucess(player)
	ChaosBoxGenesisInit(player:getIndex())
	
	ChaosBoxGenesisMixSend(player:getIndex(), 1)
	
	player:setChaosBoxGenesisState(1)

	local playerInfo = {[0] = player:getAccountID(), [1] = player:getName(), [2] = player:getLanguage()}
	
	--insert itens
	for i in ipairs(ChaosMachineItensReward) do
		local itens = ChaosMachineItensReward[i].Rewards
		
		if itens ~= nil
		then
			if itens.ItemIndex ~= -1 then
				local serial = 0
				if itens.Serial == nil or itens.Serial <= 0 then
					serial = ChaosMachineGenesis.getSerialForNewItem()
				else
					serial = itens.Serial
				end
				
				if serial ~= -1
				then
					ChaosBoxGenesisCreateItem(player:getIndex(), itens.ItemIndex, itens.Level, itens.Dur, itens.Skill, itens.Luck, itens.Life, itens.Exc, itens.Op380, itens.Ancient, itens.JoH, itens.Socket, itens.timer, serial)
				end

			else
				DataBase.SetAddValue(itens.Table, itens.Column, itens.Amount, itens.Where, playerInfo[itens.IdType])
				if itens.Announce then
					SendMessage(string.format(CHAOS_MACHINE_MESSAGES[playerInfo[2]][itens.Text], itens.Amount, itens.Name), player:getIndex(), 1)
				end
			end
		end
	end
	
	ChaosBoxGenesisItemListSend(player:getIndex())

	SaveChaosBoxGenesis(player:getIndex())
end

function ChaosMachineGenesis.GetSlotIngredientTarget(player)
	local itemtarget = nil
	for i in ipairs(ChaosMachineIngredients) do
		local itens = ChaosMachineIngredients[i].Ingredients

		if itens ~= nil
		then
			if itens.Target then
				itemtarget = itens
				break
			end
		end
	end

	if itemtarget == nil then return -1 end

	local item = ChaosBoxGenesis.new(player:getIndex())

	if itemtarget.MultiIndex == -1 then
		for i = 0, 119 do
			if item:isItem(i) == 0
			then
				goto continue
			end

			if item:getIndex(i) ~= itemtarget.ItemIndex
			then
				goto continue
			end

			if itemtarget.Exc ~= -1
			then
				local exccount = 0
				local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
				for e = 1, 6 do
					if exctable[e] == 1 then
						exccount = exccount + 1
					end
				end

				if itemtarget.Exc == 0 and exccount ~= 0 then
					goto continue
				elseif exccount < itemtarget.Exc then
					goto continue
				end
			end

			if itemtarget.Ancient ~= -1
			then
				if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 5) < itemtarget.Ancient then
					goto continue
				end

				if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
					goto continue
				end
			end

			if itemtarget.Luck ~= -1
			then
				if item:getItemTable(i, 3) ~= itemtarget.Luck
				then
					goto continue
				end
			end

			if itemtarget.Skill ~= -1
			then
				if item:getItemTable(i, 2) ~= itemtarget.Skill
				then
					goto continue
				end
			end

			if itemtarget.Life ~= -1
			then
				if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 4) < itemtarget.Life then
					goto continue
				end
			end

			if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
			then
				goto continue
			end


			do return i end
			::continue::
		end
	else
		for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itemtarget.MultiIndex]) do
			for i = 0, 119 do
				if item:isItem(i) == 0
				then
					goto continue
				end
	
				if item:getIndex(i) ~= v
				then
					goto continue
				end

				if itemtarget.Exc ~= -1
			then
				local exccount = 0
				local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
				for e = 1, 6 do
					if exctable[e] == 1 then
						exccount = exccount + 1
					end
				end
			
				if itemtarget.Exc == 0 and exccount ~= 0 then
					goto continue
				elseif exccount < itemtarget.Exc then
					goto continue
				end
			end
		
			if itemtarget.Ancient ~= -1
			then
				if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 5) < itemtarget.Ancient then
					goto continue
				end
			
				if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
					goto continue
				end
			end
		
			if itemtarget.Luck ~= -1
			then
				if item:getItemTable(i, 3) ~= itemtarget.Luck
				then
					goto continue
				end
			end
		
			if itemtarget.Skill ~= -1
			then
				if item:getItemTable(i, 2) ~= itemtarget.Skill
				then
					goto continue
				end
			end
		
			if itemtarget.Life ~= -1
			then
				if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 4) < itemtarget.Life then
					goto continue
				end
			end
		
			if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
			then
				goto continue
			end
	
				do return i end
				::continue::
			end
		end
	end

	return -2
end

function ChaosMachineGenesis.GetSlotIngredientSource(player)
	local itemtarget = nil
	for i in ipairs(ChaosMachineIngredients) do
		local itens = ChaosMachineIngredients[i].Ingredients

		if itens ~= nil
		then
			if itens.Source then
				itemtarget = itens
				break
			end
		end
	end

	if itemtarget == nil then return -1 end
	local item = ChaosBoxGenesis.new(player:getIndex())

	if itemtarget.MultiIndex == -1 then
		for i = 0, 119 do
			if item:isItem(i) == 0
			then
				goto continue
			end

			if item:getIndex(i) ~= itemtarget.ItemIndex
			then
				goto continue
			end

			if itemtarget.Exc ~= -1
			then
				local exccount = 0
				local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
				for e = 1, 6 do
					if exctable[e] == 1 then
						exccount = exccount + 1
					end
				end

				if itemtarget.Exc == 0 and exccount ~= 0 then
					goto continue
				elseif exccount < itemtarget.Exc then
					goto continue
				end
			end

			if itemtarget.Ancient ~= -1
			then
				if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 5) < itemtarget.Ancient then
					goto continue
				end

				if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
					goto continue
				end
			end

			if itemtarget.Luck ~= -1
			then
				if item:getItemTable(i, 3) ~= itemtarget.Luck
				then
					goto continue
				end
			end

			if itemtarget.Skill ~= -1
			then
				if item:getItemTable(i, 2) ~= itemtarget.Skill
				then
					goto continue
				end
			end

			if itemtarget.Life ~= -1
			then
				if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 4) < itemtarget.Life then
					goto continue
				end
			end

			if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
			then
				goto continue
			end


			do return i end
			::continue::
		end
	else
		for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itemtarget.MultiIndex]) do
			for i = 0, 119 do
				if item:isItem(i) == 0
				then
					goto continue
				end
	
				if item:getIndex(i) ~= v
				then
					goto continue
				end

				if itemtarget.Exc ~= -1
			then
				local exccount = 0
				local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
				for e = 1, 6 do
					if exctable[e] == 1 then
						exccount = exccount + 1
					end
				end
			
				if itemtarget.Exc == 0 and exccount ~= 0 then
					goto continue
				elseif exccount < itemtarget.Exc then
					goto continue
				end
			end
		
			if itemtarget.Ancient ~= -1
			then
				if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 5) < itemtarget.Ancient then
					goto continue
				end
			
				if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
					goto continue
				end
			end
		
			if itemtarget.Luck ~= -1
			then
				if item:getItemTable(i, 3) ~= itemtarget.Luck
				then
					goto continue
				end
			end
		
			if itemtarget.Skill ~= -1
			then
				if item:getItemTable(i, 2) ~= itemtarget.Skill
				then
					goto continue
				end
			end
		
			if itemtarget.Life ~= -1
			then
				if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
					goto continue
				elseif item:getItemTable(i, 4) < itemtarget.Life then
					goto continue
				end
			end
		
			if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
			then
				goto continue
			end
	
				do return i end
				::continue::
			end
		end
	end

	return -2
end

function ChaosMachineGenesis.GetReturnList(player)
	local item = ChaosBoxGenesis.new(player:getIndex())
	local itemList = {}
	for k in ipairs(ChaosMachineIngredients) do
		local itens = ChaosMachineIngredients[k].Ingredients

		if itens ~= nil
		then
			if itens.ReturnOnFail then
				local itemtarget = itens
				if itemtarget.MultiIndex == -1 then
					for i = 0, 119 do
						if item:isItem(i) == 0
						then
							goto continue
						end
			
						if item:getIndex(i) ~= itemtarget.ItemIndex and itemtarget.ItemIndex ~= -1
						then
							goto continue
						end
			
						if itemtarget.Exc ~= -1
						then
							local exccount = 0
							local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
							for e = 1, 6 do
								if exctable[e] == 1 then
									exccount = exccount + 1
								end
							end
			
							if itemtarget.Exc == 0 and exccount ~= 0 then
								goto continue
							elseif exccount < itemtarget.Exc then
								goto continue
							end
						end
			
						if itemtarget.Ancient ~= -1
						then
							if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
								goto continue
							elseif item:getItemTable(i, 5) < itemtarget.Ancient then
								goto continue
							end
			
							if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
								goto continue
							end
						end
			
						if itemtarget.Luck ~= -1
						then
							if item:getItemTable(i, 3) ~= itemtarget.Luck
							then
								goto continue
							end
						end
			
						if itemtarget.Skill ~= -1
						then
							if item:getItemTable(i, 2) ~= itemtarget.Skill
							then
								goto continue
							end
						end
			
						if itemtarget.Life ~= -1
						then
							if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
								goto continue
							elseif item:getItemTable(i, 4) < itemtarget.Life then
								goto continue
							end
						end
			
						if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
						then
							goto continue
						end
			
						local itemTable = Utils.InventoryGetItemTable(item, i)
						local tempItem = {Rewards = {ItemIndex = itemTable.ItemIndex, Level = itemTable.Level, Dur = itemTable.Dur, Skill = itemTable.Skill, Luck = itemTable.Luck, Life = itemTable.Option, Exc = itemTable.Exc, Op380 = itemTable.Add380, Ancient = itemTable.Ancient, JoH = itemTable.JoH, Socket = 0, timer = 0},
											Serial = itemTable.Serial}

						table.insert(itemList, tempItem)
						::continue::
					end
				else
					for key, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itemtarget.MultiIndex]) do
						for i = 0, 119 do
							if item:isItem(i) == 0
							then
								goto continue
							end
				
							if item:getIndex(i) ~= v
							then
								goto continue
							end
			
							if itemtarget.Exc ~= -1
						then
							local exccount = 0
							local exctable = Utils.ExcToTable(item:getItemTable(i, 1))
							for e = 1, 6 do
								if exctable[e] == 1 then
									exccount = exccount + 1
								end
							end
						
							if itemtarget.Exc == 0 and exccount ~= 0 then
								goto continue
							elseif exccount < itemtarget.Exc then
								goto continue
							end
						end
					
						if itemtarget.Ancient ~= -1
						then
							if itemtarget.Ancient == 0 and item:getItemTable(i, 5) ~= 0 then
								goto continue
							elseif item:getItemTable(i, 5) < itemtarget.Ancient then
								goto continue
							end
						
							if itemtarget.MaxAncient ~= -1 and item:getItemTable(i, 5) > itemtarget.MaxAncient then
								goto continue
							end
						end
					
						if itemtarget.Luck ~= -1
						then
							if item:getItemTable(i, 3) ~= itemtarget.Luck
							then
								goto continue
							end
						end
					
						if itemtarget.Skill ~= -1
						then
							if item:getItemTable(i, 2) ~= itemtarget.Skill
							then
								goto continue
							end
						end
					
						if itemtarget.Life ~= -1
						then
							if itemtarget.Life == 0 and item:getItemTable(i, 4) ~= 0 then
								goto continue
							elseif item:getItemTable(i, 4) < itemtarget.Life then
								goto continue
							end
						end
					
						if itemtarget.Level ~= -1 and item:getLevel(i) < itemtarget.Level
						then
							goto continue
						end
				
						local itemTable = Utils.InventoryGetItemTable(item, i)
						local tempItem = {Rewards = {ItemIndex = itemTable.ItemIndex, Level = itemTable.Level, Dur = itemTable.Dur, Skill = itemTable.Skill, Luck = itemTable.Luck, Life = itemTable.Option, Exc = itemTable.Exc, Op380 = itemTable.Add380, Ancient = itemTable.Ancient, JoH = itemTable.JoH, Socket = 0, timer = 0},
											Serial = itemTable.Serial}

						table.insert(itemList, tempItem)
							::continue::
						end
					end
				end
			end
		end
	end


	return itemList
end

function ChaosMachineGenesis.Mixar(aIndex)
	local player = User.new(aIndex)
	local Language = player:getLanguage()

	if player:getChaosBoxGenesisState() ~= 0
	then
		return
	end

	RateBooster = 0

	local MixInfo = CHAOS_MACHINE_CONFIG_COMB_SELECTION[player:getChaosBoxGenesisSelectedComb()]

	if MixInfo == nil
	then
		SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][2]), player:getIndex(), 1)
		return
	end

	if MixInfo.Expiration ~= -1 then
		if MixInfo.Expiration < os.time() then
			SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][8]), player:getIndex(), 1)
			return
		end
	end

	ChaosMachineIngredients = {}

	ChaosMachineGenesis.SetIngredientItens(player:getChaosBoxGenesisSelectedComb())

	ChaosMachineReturnList = {}

	ChaosMachineReturnList = ChaosMachineGenesis.GetReturnList(player)

	local slot = ChaosMachineGenesis.GetSlotIngredientTarget(player)

	local sourceSlot = ChaosMachineGenesis.GetSlotIngredientSource(player)

	ChaosMachineItensReward = {}

	if sourceSlot >= 0 then
		if  slot < 0 then
			SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][2]), player:getIndex(), 1)
			return
		end
		local chaos = ChaosBoxGenesis.new(player:getIndex())

		local itemTable = Utils.InventoryGetItemTable(chaos, slot)
		local item = {ItemIndex = itemTable.ItemIndex, Level = itemTable.Level, Dur = itemTable.Dur, Skill = itemTable.Skill, Luck = itemTable.Luck, Life = itemTable.Option, Exc = itemTable.Exc, Op380 = itemTable.Add380, Ancient = itemTable.Ancient, JoH = itemTable.JoH, Socket = 0, timer = 0}

		local sourceTable = Utils.InventoryGetItemTable(chaos, sourceSlot)

		local config = CHAOS_MACHINE_ITEM_SOURCE_CONFIG[player:getChaosBoxGenesisSelectedComb()]

		if config.Level ~= -1 then
			item.Level = sourceTable.Level
		end

		if config.Skill ~= -1 then
			item.Skill = sourceTable.Skill
		end

		if config.Luck ~= -1 then
			item.Luck = sourceTable.Luck
		end

		if config.Opt ~= -1 then
			item.Life = sourceTable.Option
		end

		if config.Ancient ~= -1 then
			item.Ancient = sourceTable.Ancient
		end

		if config.JoH ~= -1 then
			item.JoH = sourceTable.JoH
		end

		ChaosMachineItensReward[1] = { Rewards = item, Serial = itemTable.Serial }
	else
		if slot > -1 then
			local chaos = ChaosBoxGenesis.new(player:getIndex())
			local itemTable = Utils.InventoryGetItemTable(chaos, slot)
			local item = {ItemIndex = itemTable.ItemIndex, Level = itemTable.Level, Dur = itemTable.Dur, Skill = itemTable.Skill, Luck = itemTable.Luck, Life = itemTable.Option, Exc = itemTable.Exc, Op380 = itemTable.Add380, Ancient = itemTable.Ancient, JoH = itemTable.JoH, Socket = 0, timer = 0}

			local config = CHAOS_MACHINE_ITEM_TARGET_CONFIG[player:getChaosBoxGenesisSelectedComb()]

			if config.Level ~= -1 then
				item.Level = item.Level+config.Level
				if item.Level > 15 then item.Level = 15 end
			end

			if config.Skill ~= -1 then
				item.Skill = config.Skill
			end

			if config.Luck ~= -1 then
				item.Luck = config.Luck
			end

			if config.Opt ~= -1 then
				item.Life = config.Opt
			end

			if config.Ancient ~= -1 then
				item.Ancient = item.Ancient+config.Ancient
			end

			if config.JoH ~= -1 then
				item.JoH = config.JoH
			end

			ChaosMachineItensReward[1] = { Rewards = item, Serial = itemTable.Serial }
		elseif slot == -2 then
			SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][2]), player:getIndex(), 1)
			return
		else
			ChaosMachineGenesis.SetRewardItens(player:getChaosBoxGenesisSelectedComb())
		end
	end

	if (ChaosMachineGenesis.CheckCanMix(player) == 0)
	then
		SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][1]), player:getIndex(), 1)
		return
	end

	if MixInfo.BoostLimit > -1 then
		if RateBooster > MixInfo.BoostLimit then
			RateBooster = MixInfo.BoostLimit
		end
	end

	local successRate = RateBooster+MixInfo.CombinationSuccessRate

	if successRate > 100 then successRate = 100 end

	if not Utils.GetSuccessByRate(successRate)
	then
		ChaosMachineGenesis.CombFail(player)

		SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][3]), player:getIndex(), 1)
	else
		ChaosMachineGenesis.CombSucess(player)

		SendMessage(string.format(CHAOS_MACHINE_MESSAGES[Language][4]), player:getIndex(), 1)
	end
end

function ChaosMachineGenesis.FixNpc()
	for i = OBJECT_START_MONSTER, MAX_OBJECT_MONSTER do
        local monster = User.new(i)

        if monster:getConnected() > 0
        then
				for m = 1, #CHAOS_BOX_GENESIS_MONSTER do
                	if monster:getClass() == CHAOS_BOX_GENESIS_MONSTER[m].Class
                	then
                	    monster:setType(3)
                	end
				end
        end

        monster = nil
    end
end


GameServerFunctions.NpcTalk(ChaosMachineGenesis.NpcTalk)
GameServerFunctions.ChaosMachineGenesisMix(ChaosMachineGenesis.Mixar)
Timer.Interval(30, ChaosMachineGenesis.FixNpc)
ChaosMachineGenesis.FixNpc()

return ChaosMachineGenesis