OpenFolder("Definitions")
local CHAOS_MACHINE_CONFIG_COMBINATIONS = {
[01] = {Combination = 01, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 90.0, CombinationName = "Amulet Of Gold"},
[02] = {Combination = 02, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 80.0, CombinationName = "Amulet Of Red"},
[03] = {Combination = 03, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 70.0, CombinationName = "Amulet Of Purple"},
[04] = {Combination = 04, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 60.0, CombinationName = "Amulet Of Blue"},
[05] = {Combination = 05, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 50.0, CombinationName = "Amulet Of Green"},
[06] = {Combination = 06, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 40.0, CombinationName = "Amulet Of Pink"},
[07] = {Combination = 07, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 30.0, CombinationName = "Amulet Of White"},
[08] = {Combination = 08, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 20.0, CombinationName = "Amulet Of Black"},
}


local CHAOS_MACHINE_CONFIG_COMB_SELECTION = {
[1] = { -- Genesis Normal
[1] = {
Name = "Amuletos",
Expiration = -1,
Content = {
[1] = { Combination = 1, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 90.0, CombinationName = "Amulet Of Gold"},
[2] = { Combination = 2, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 80.0, CombinationName = "Amulet Of Red"},
[3] = { Combination = 3, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 70.0, CombinationName = "Amulet Of Purple"},
[4] = { Combination = 4, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 60.0, CombinationName = "Amulet Of Blue"},
[5] = { Combination = 5, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 50.0, CombinationName = "Amulet Of Green"},
[6] = { Combination = 6, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 40.0, CombinationName = "Amulet Of Pink"},
[7] = { Combination = 7, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 30.0, CombinationName = "Amulet Of White"},
[8] = { Combination = 8, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 20.0, CombinationName = "Amulet Of Black"},
}
},


[2] = {
Name = "Pets/Montarias",
Expiration = -1,
Content = {
[1] = { Combination = 9, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 3.5, CombinationName = "Fenrir Abyss Donate"},
[2] = { Combination = 10, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 3.5, CombinationName = "Eagle Abyss Donate"},
[3] = { Combination = 11, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.1, CombinationName = "Horse Alucard Donate"},
}
},


[3] = {
Name = "Itens NightMare",
Expiration = -1,
Content = {
[1] = { Combination = 12, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Helm" },
[2] = { Combination = 13, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Armor" },
[3] = { Combination = 14, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Pants" },
[4] = { Combination = 15, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Gloves"},
[5] = { Combination = 16, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Boots" },
[6] = { Combination = 17, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Sword" },
[7] = { Combination = 18, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Mace" },
[8] = { Combination = 19, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.90, CombinationName = "NightMare Shield"},
[9] = { Combination = 20, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.10, CombinationName = "NightMare Wing" },
[10] = { Combination = 21, Expiration = -1, BoostLimit = 100, CombinationSuccessRate = 0.20, CombinationName = "NightMare Cape" },
}
},
},
}
local CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS = { }
-- Amulet Gold
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[1] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 5, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
}


-- Amulet Red
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[2] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 10, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 10, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 4, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
}


-- Amulet Purple
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[3] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 15, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 15, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 8, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
}


-- Amulet Blue
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[4] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 20, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 20, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 12, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 140), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Purple" },
}


-- Amulet Green
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[5] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 25, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 25, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 16, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 140), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Purple" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 137), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Blue" },
   
}


-- Amulet Pink
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[6] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 20, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = 1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 140), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Purple" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 137), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Blue" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 136), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Green" },
}


-- Amulet White
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[7] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 35, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 35, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 24, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 140), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Purple" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 137), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Blue" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 136), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Green" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 142), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Pink" },
}


-- Amulet Black
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[8] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 2, ItemIndex = GET_ITEM(0, 184), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Style" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 40, ItemIndex = GET_ITEM(0, 185), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of War" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 40, ItemIndex = GET_ITEM(0, 186), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Sword Of Majestyck [RL]" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 28, ItemIndex = GET_ITEM(14, 53), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Talisman Luck" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 135), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Gold" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 141), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Red" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 140), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Purple" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 137), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Blue" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 136), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Green" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 142), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet Pink" },
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 1, ItemIndex = GET_ITEM(15, 138), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Amulet White" },
}


-- Fenrir Abyss
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[9] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 10, ItemIndex = GET_ITEM(14, 438), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Fragmento Stone" },
}


-- Eagle Abyss
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[10] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 10, ItemIndex = GET_ITEM(14, 438), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Fragmento Stone" },
}


-- Horse Alucard
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[11] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 428), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Stone Return" },
}


 -- Helm NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[12] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Armor NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[13] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- PantsNightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[14] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Gloves NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[15] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Boots NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[16] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Sword NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[17] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Mace NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[18] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Shield NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[19] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 30, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Wing NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[20] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 60, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


 -- Capa NightMare
CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[21] = {
{ Level = -1, Exc = -1, Luck = -1, Life = -1, Skill = -1, Ancient = -1, MaxAncient = -1, JoH = -1, Quantity = 60, ItemIndex = GET_ITEM(14, 445), MultiIndex = -1, Required = true, Booster = 0, ItemName = "Instruction Jewel" },
}


CHAOS_MACHINE_CONFIG_MULTI_INDEX = {}
CHAOS_MACHINE_CONFIG_MULTI_INDEX[1] = {
GET_ITEM(14, 22), -- JEWEL OF CREATION
}


CHAOS_MACHINE_CONFIG_MULTI_INDEX[2] = {
GET_ITEM(13, 52), -- FLAME OF CONDOR
}


local CHAOS_MACHINE_TEXTS = { }
CHAOS_MACHINE_TEXTS["Por"] = {
[1] = "Combinar",
[2] = "Selecionar",
[3] = "Selecione a combinação desejada!",
[4] = "Combinação em andamento",
[5] = "Combinação bem sucedida",
[6] = "Combinação falhou",
[7] = "Taxa de sucesso: %.2f%%",
[8] = "Itens necessários para combinação:",
[9] = "Seus itens:",
[10] = "Resultado da combinação:",
[11] = "Chaos Machine Genesis",
[12] = "Mixar itens",
[13] = "Falta itens para a combinação!",
[14] = "Este item não funciona nesta combinação!",
[15] = "Combinação Fraca",
[16] = "Combinação Normal",
[17] = "Combinação Média",
[18] = "Combinação Forte",
[19] = "Combinação Perfeita",
[20] = "Retire os itens que não foram perdidos",
}
CHAOS_MACHINE_TEXTS["Eng"] = {
[1] = "Mix",
[2] = "Select",
[3] = "Select the desired combination!",
[4] = "Combination in progress",
[5] = "Successful combination",
[6] = "Combination failed",
[7] = "Success rate: %.2f%%",
[8] = "Items needed for combination:",
[9] = "Your items:",
[10] = "Result of the combination:",
[11] = "Chaos Machine Genesis",
[12] = "Mix items",
[13] = "Items are missing for the combination!",
[14] = "This item does not work in this combination!",
[15] = "Weak Combination",
[16] = "Normal Combination",
[17] = "Average Combination",
[18] = "Strong Combination",
[19] = "Perfect Combination",
[20] = "Remove the items that were not lost",
}
CHAOS_MACHINE_TEXTS["Spn"] = {
[1] = "Mezclar",
[2] = "Seleccionar",
[3] = "¡Seleccione la combinación deseada!",
[4] = "Combinación en curso",
[5] = "Combinación exitosa",
[6] = "Combinación fallida",
[7] = "Tasa de éxito: %.2f",
[8] = "Elementos necesarios para la combinación:",
[9] = "Tus artículos:",
[10] = "Resultado de la combinación:",
[11] = "Génesis de la máquina del caos",
[12] = "Mezclar elementos",
[13] = "¡Elementos faltantes para la combinación!",
[14] = "¡Este elemento no funciona en esta combinación!",
[15] = "Combinación Débil",
[16] = "Combinación Normal",
[17] = "Combinación Promedio",
[18] = "Combinación Fuerte",
[19] = "Combinación Perfecta",
[20] = "Retira los artículos que no se perdieron",
}
--[[
Configs Chaos Machine don't touch if you don't know!
--]]
local ChaosMachineSelectedItem = 0
local ChaosMachineSelectedItemClicked = 0
local ChaosMachineSelectedItemPosY = 0
local ChaosMachineSelectedItemClickedPosY = 0
local ChaosMachinePage = 0
local ChaosMachineScrollBarCurrentLine = 0
local ChaosMachineScrollBarMaxRenderLine = 13
local ChaosMachineScrollBarPosY = 0
local ChaosMachineScrollBarPosMouse = 0
local ChaosMachineScrollBarPosYMultiplier = 0
local ChaosMachineSelectedKey = 0
local ChaosMachineSelectedCombSelected = 0
local ChaosMachineItensIngredients = {}
local ChaosMachineCombinationStatus = 0
local ScrollBarPageOneMaxLine = 13
local ScrollBarPageCombMaxLine = 6
local ScrollBarPageMin = 0
local ScrollBarPageMax = 0
local ChaosMachineCurrentPageInfo = {}
local ChaosMachineNextPageInfo = -1
local ChaosMachineCombinationInfo = {}  -- Inicializado aqui para evitar nil
local RateBooster = 0
local ScrollStartPosY = 0
local m_Pos = { x = 260, y = 0 }

-- Função de segurança para garantir que ChaosMachineCombinationInfo nunca seja nil
local function SafeGetCombinationInfo()
    if ChaosMachineCombinationInfo == nil then
        ChaosMachineCombinationInfo = {}
    end
    return ChaosMachineCombinationInfo
end

function ChaosMachineRenderFrame()
RenderImageAuto(33001, m_Pos.x, m_Pos.y, 190, 429)
if ChaosMachinePage == 1 and ChaosMachineCombinationStatus == 0
then
if MousePosX() >= m_Pos.x+((190-32)/2) and MousePosX() <= m_Pos.x+((190-32)/2)+32 and MousePosY() >= m_Pos.y + 380 and MousePosY() <= m_Pos.y + 380 + 32
then
DrawTooltip(m_Pos.x+((190-32)/2)+9, m_Pos.y + 365, CHAOS_MACHINE_TEXTS[GetLanguage()][1])
if CheckPressedKey(Keys.LButton) == 1
then
RenderImage2(31413, m_Pos.x+((190-32)/2), m_Pos.y + 380, 32, 32, 0.018, 0.4247492, 0.812731823, 0.2023746, 1, 1, 1.0)
DisableClickClient()
else--
RenderImage2(31413, m_Pos.x+((190-32)/2), m_Pos.y + 380, 32, 32, 0.018, 0.2123746, 0.812731823, 0.2023746, 1, 1, 1.0)
end
else
RenderImage2(31413, m_Pos.x+((190-32)/2), m_Pos.y + 380, 32, 32, 0.018, 0.0, 0.812731823, 0.2023746, 1, 1, 1.0)
end
end
end
function RenderSelectButton(x, y, width, height)
EnableAlphaTest()
if MousePosX() >= m_Pos.x+((190-width)/2) and MousePosX() <= m_Pos.x+((190-width)/2) + width and MousePosY() >= y and MousePosY() <= y + height
then
if CheckPressedKey(Keys.LButton) == 1
then
RenderImage2(31323, m_Pos.x+((190-width)/2), y, width, height, 0.0, 0.0, 0.78, 0.2, 1, 1, 1.0)
else--
RenderImage2(31323, m_Pos.x+((190-width)/2), y, width, height, 0.0, 0.211, 0.78, 0.2, 1, 1, 1.0)
end
else
RenderImage2(31323, m_Pos.x+((190-width)/2), y, width, height, 0.0, 0.0, 0.78, 0.2, 1, 1, 1.0)
end
SetFontType(1)
SetTextBg(0, 0, 0, 0)
SetTextColor(216, 216, 216, 255)
local Text = CHAOS_MACHINE_TEXTS[GetLanguage()][2]
RenderText3(m_Pos.x+95, y + 10, Text, width, 8)
DisableAlphaBlend()
end
function RenderBox(x, y, width, height)
EnableAlphaTest()
glColor4f(0.0, 0.0, 0.0, 0.3)
DrawBar(x, y, width, height, 0.0, 0)
glColor4f(0.0, 0.0, 0.0, 0.5)
DrawBar(x, y, width, height, 0.0, 0)
if ChaosMachineSelectedItem ~= 0
then
glColor4f(1.00, 0.00, 0.00, 0.5)
DrawBar(x+2, ChaosMachineSelectedItemPosY - 2, 135, 10, 0.0, 0)
end
if ChaosMachineSelectedItemClicked ~= 0
then
glColor4f(0.1787, 0.55, 0.1045, 0.5)
DrawBar(x+2, ChaosMachineSelectedItemClickedPosY - 2, 135, 10, 0.0, 0)
end
glColor4f(0.54, 0.422, 0.2322, 0.7)
DrawBox(x, y, width, height)
EndDrawBar()
DisableAlphaBlend()
end
function RenderScrollBarPage(x, y, width, height)
ScrollStartPosY = y
EnableAlphaTest()
glColor4f(1.0, 1.0, 1.0, 1.0)
RenderImageScale(33017, x, y, 10, height, 0, 0, 30, 375, 1.0);
if MousePosX() >= x and MousePosX() <= x+10 and MousePosY() >= y+ChaosMachineScrollBarPosY and MousePosY() <= y+ChaosMachineScrollBarPosY+25
then
RenderImageScale(33018, x+0.5, y+ChaosMachineScrollBarPosY, 9, 25, 0, 0, 30, 60, 0.7);
else
RenderImageScale(33018, x+0.5, y+ChaosMachineScrollBarPosY, 9, 25, 0, 0, 30, 60, 1.0);
end
glColor4f(1.0, 1.0, 1.0, 1.0)
DisableAlphaBlend()
end
function RenderTextPageOne(x , y)
EnableAlphaTest()
SetFontType(1)
SetTextBg(0, 0, 0, 0)
SetTextColor(240, 240, 240, 200)
local posY = 0
local line = 0
for key = 1, #ChaosMachineCurrentPageInfo do
if ChaosMachineCurrentPageInfo[key].Expiration == -1 or ChaosMachineCurrentPageInfo[key].Expiration >= GetServerTime() then
if line >= ChaosMachineScrollBarCurrentLine and line < ChaosMachineScrollBarMaxRenderLine
then
if ChaosMachineCurrentPageInfo[key].Name ~= nil then
RenderText3(x, y + posY-1, ChaosMachineCurrentPageInfo[key].Name, 155 - #ChaosMachineCurrentPageInfo[key].Name, 1)
else
RenderText3(x, y + posY-1, ChaosMachineCurrentPageInfo[key].CombinationName, 155 - #ChaosMachineCurrentPageInfo[key].CombinationName, 1)
end
posY = posY + 15
end
line = line + 1
end
end
DisableAlphaBlend()
end
function ChaosMachineRenderSelectPageOne()
SetFontType(1)
SetTextBg(0, 0, 0, 0)
SetTextColor(216, 216, 216, 255)
RenderText3(m_Pos.x, m_Pos.y + 70, CHAOS_MACHINE_TEXTS[GetLanguage()][3], 190, 3)
RenderBox(m_Pos.x + 15, m_Pos.y + 100, 160, 200)
RenderSelectButton(m_Pos.x + 57.5, m_Pos.y + 350, 80, 30)
RenderScrollBarPage(m_Pos.x + 160, m_Pos.y + 115, 4, 165)
RenderTextPageOne(m_Pos.x + 20, m_Pos.y + 110)
end
function ChaosMachineRenderCombItensNeed(x, y)
local posY = 0
local line = 0
for i in ipairs(ChaosMachineItensIngredients) do
if line >= ChaosMachineScrollBarCurrentLine and line < ChaosMachineScrollBarMaxRenderLine
then
local itens = ChaosMachineItensIngredients[i].Ingredients
local itensQuantity = 0
if itens.MultiIndex ~= -1 then
for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itens.MultiIndex]) do
itensQuantity = itensQuantity + getCountItensByIndex(v, itens.Level, itens.Exc, itens.Luck, itens.Skill, itens.Life, itens.Ancient, itens.MaxAncient, itens.JoH)
end
else
itensQuantity = getCountItensByIndex(itens.ItemIndex, itens.Level, itens.Exc, itens.Luck, itens.Skill, itens.Life, itens.Ancient, itens.MaxAncient, itens.JoH)
end
SetFontType(0)
local strName = string.format('%s - (%d / %d)', itens.ItemName, itensQuantity, itens.Quantity)
if itens.Required then
if itensQuantity == itens.Quantity
then
SetTextColor(61, 224, 72, 255)
else
SetTextColor(224, 61, 61, 255)
end
else
SetTextColor(224, 183, 61, 255)
strName = string.format('%s - (%d)', itens.ItemName, itensQuantity)
end
if itens.Booster > 0 then
RateBooster = itensQuantity*itens.Booster
local info = SafeGetCombinationInfo()
if info.BoostLimit > -1 then
if RateBooster > info.BoostLimit then
RateBooster = info.BoostLimit
end
end
end
RenderText3(x, y + posY, strName, 155 - #strName, 1)
posY = posY + 15
end
line = line + 1
end
SetFontType(1)
end
function ChaosMachineRenderCombinationPage()
EnableAlphaTest()
SetFontType(1)
SetTextBg(0, 0, 0, 0)
SetTextColor(255, 255, 255, 255)
local info = SafeGetCombinationInfo()
RenderText3(m_Pos.x, m_Pos.y + 50, string.format('%s', info.CombinationName or "Desconhecido"), 190, 3)
local TextComb = " "
if ChaosMachineCombinationStatus == 1
then
SetTextColor(000, 150, 000, 255)
TextComb = CHAOS_MACHINE_TEXTS[GetLanguage()][5]
elseif ChaosMachineCombinationStatus >= 2
then
SetTextColor(200, 000, 000, 255)
TextComb = CHAOS_MACHINE_TEXTS[GetLanguage()][6]
end
RenderText3(m_Pos.x, m_Pos.y + 75, TextComb, 190, 3)
SetTextColor(255, 255, 255, 255)
if (ChaosMachineCombinationStatus == 0)
then
SetTextColor(216, 216, 216, 255)
RenderText3(m_Pos.x + 15, m_Pos.y + 115, CHAOS_MACHINE_TEXTS[GetLanguage()][8], 190, 1)
local newluck = (info.CombinationSuccessRate or 0) + RateBooster
if newluck > 100 then newluck = 100 end
RenderText3(m_Pos.x+20, m_Pos.y + 82, string.format(CHAOS_MACHINE_TEXTS[GetLanguage()][7], newluck), 190, 1)
local txtNumber = 19
if newluck > 0 and newluck < 20 then
SetTextColor(252, 046, 046, 255)
txtNumber = 15
elseif newluck >= 20 and newluck < 50 then
SetTextColor(125, 180, 232, 255)
txtNumber = 16
elseif newluck >= 50 and newluck < 80 then
SetTextColor(247, 193, 45, 255)
txtNumber = 17
elseif newluck >= 80 and newluck <= 99 then
SetTextColor(107, 255, 181, 255)
txtNumber = 18
else
SetTextColor(000, 150, 000, 255)
txtNumber = 19
end
RenderText3(m_Pos.x+20, m_Pos.y + 70, CHAOS_MACHINE_TEXTS[GetLanguage()][txtNumber], 190, 1)
end
DisableAlphaBlend()
local posYReduce = 0
local MaxLines = 8
local HeightBoxItem = 110
if (ChaosMachineCombinationStatus == 0)
then
RenderBox(m_Pos.x + 15, m_Pos.y + 130, 160, 100)
RenderScrollBarPage(m_Pos.x + 160, m_Pos.y + 142, 4, 70)
EnableAlphaTest()
ChaosMachineRenderCombItensNeed(m_Pos.x + 18, m_Pos.y + 135)
DisableAlphaBlend()
else
posYReduce = 130
MaxLines = 19
HeightBoxItem = 165
end
EnableAlphaTest()
SetTextColor(216, 216, 216, 255)
local txtresult = " "
if (ChaosMachineCombinationStatus == 0)
then
SetTextColor(216, 216, 216, 255)
txtresult = CHAOS_MACHINE_TEXTS[GetLanguage()][9]
else
if ChaosMachineCombinationStatus == 1 then
txtresult = CHAOS_MACHINE_TEXTS[GetLanguage()][10]
elseif ChaosMachineCombinationStatus == 3 then
txtresult = CHAOS_MACHINE_TEXTS[GetLanguage()][20]
end
end
RenderText3(m_Pos.x + 15, m_Pos.y + 245 - posYReduce, txtresult, 190, 1)
DisableAlphaBlend()
RenderBox(m_Pos.x + 15, m_Pos.y + 260 - posYReduce, 160, HeightBoxItem - 10)
RenderItensChaosMachine(m_Pos.x + 160, m_Pos.y + 265 - posYReduce, HeightBoxItem, MaxLines)
end
function ChaosMachineRenderPages()
SetFontType(1)
SetTextBg(0, 0, 0, 0)
SetTextColor(216, 216, 216, 255)
RenderText3(m_Pos.x, m_Pos.y + 11, CHAOS_MACHINE_TEXTS[GetLanguage()][11], 190, 3)
if ChaosMachinePage ~= 1
then
ChaosMachineRenderSelectPageOne()
else
ChaosMachineRenderCombinationPage()
end
end
function ChaosMachineRender()
EnableAlphaTest()
glColor4f(1.0, 1.0, 1.0, 1.0)
ChaosMachineRenderFrame()
ChaosMachineRenderPages()
DisableAlphaBlend()
end
function ChaosMachineUpdate()
m_Pos.x = WindowGetWidth()-380
end
function ScrollingBar(value)
if value > 0
then
if (ChaosMachineScrollBarMaxRenderLine < ScrollBarPageMin)
then
ChaosMachineScrollBarMaxRenderLine = ChaosMachineScrollBarMaxRenderLine + 1
ChaosMachineScrollBarCurrentLine = ChaosMachineScrollBarCurrentLine + 1
ChaosMachineScrollBarPosY = ChaosMachineScrollBarPosY + ChaosMachineScrollBarPosYMultiplier
end
elseif value < 0
then
if (ChaosMachineScrollBarMaxRenderLine > ScrollBarPageMax)
then
ChaosMachineScrollBarMaxRenderLine = ChaosMachineScrollBarMaxRenderLine - 1
ChaosMachineScrollBarCurrentLine = ChaosMachineScrollBarCurrentLine - 1
ChaosMachineScrollBarPosY = ChaosMachineScrollBarPosY - ChaosMachineScrollBarPosYMultiplier
end
end
end
function ChaosMachineScrollBarPageOneMouseCheckMouseClicked()
if CheckRepeatKey(Keys.LButton) == 1
then
if MousePosX() >= m_Pos.x + 150 and MousePosX() <= m_Pos.x + 160+19
 and MousePosY() >= m_Pos.y + 100 and MousePosY() <= m_Pos.y + 300
then
local currentPos = ScrollStartPosY+ChaosMachineScrollBarPosY
local nextPos = currentPos+ChaosMachineScrollBarPosYMultiplier
if MousePosY() < currentPos
then
ScrollingBar(-1)
elseif MousePosY() > nextPos+25
then
ScrollingBar(1)
end
end
end
end
function ChaosMachineScrollBarPageCombMouseCheckMouseClicked()
if CheckRepeatKey(Keys.LButton) == 1
then
if MousePosX() >= m_Pos.x + 150 and MousePosX() <=m_Pos.x + 160+19
and MousePosY() >= m_Pos.y + 130 and MousePosY() <= m_Pos.y + 230
then
local currentPos = ScrollStartPosY+ChaosMachineScrollBarPosY
local nextPos = currentPos+ChaosMachineScrollBarPosYMultiplier
if MousePosY() < currentPos
then
ScrollingBar(-1)
elseif MousePosY() > nextPos+25
then
ScrollingBar(1)
end
end
end
end
function ChaosMachineScrollBarPageOneMouse()
ChaosMachineSelectedItem = 0
local x = m_Pos.x + 20
local y = m_Pos.y + 110
local posY = 0
local line = 0
for key = 1, #ChaosMachineCurrentPageInfo do
if ChaosMachineCurrentPageInfo[key].Expiration == -1 or ChaosMachineCurrentPageInfo[key].Expiration >= GetServerTime() then
if line >= ChaosMachineScrollBarCurrentLine and line < ChaosMachineScrollBarMaxRenderLine
then
if MousePosX() >= x and MousePosX() <= x + 130
then
if MousePosY() >= (y + posY) and MousePosY() <= (y + posY) + 10
then
if CheckPressedKey(Keys.LButton) == 1
then
ChaosMachineSelectedCombSelected = 0
ChaosMachineNextPageInfo = key
if ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo].Combination ~= nil then
ChaosMachineSelectedCombSelected = ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo].Combination
end
ChaosMachineSelectedItemClicked = 1
ChaosMachineSelectedItemClickedPosY = (y + posY)
DisableClickClient()
end
ChaosMachineSelectedItem = 1
ChaosMachineSelectedItemPosY = (y + posY)
end
end
posY = posY + 15
end
line = line + 1
end
end
end
function ChaosMachineSetIngredientItens()
if ChaosMachineSelectedCombSelected == 0
then
return
end
if CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[ChaosMachineSelectedCombSelected] == nil
then
return
end
local value = 1
for i in ipairs(CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[ChaosMachineSelectedCombSelected]) do
ChaosMachineItensIngredients[value] = { Ingredients = CHAOS_MACHINE_CONFIG_COMB_INGREDIENTS[ChaosMachineSelectedCombSelected][i] }
value = value + 1
end
end
function ChaosMachineSelectNextPage()
if ChaosMachineSelectedCombSelected ~= 0 then
ChaosMachinePage = 1
ChaosMachineItensIngredients = nil
ChaosMachineItensIngredients = {}
ChaosMachineSetIngredientItens()
ChaosMachineCombinationStatus = getChaosBoxGenesisState()
ChaosMachineSelectedItem = 0
ChaosMachineSelectedItemClicked = 0
ChaosMachineSelectedItemClickedPosY = 0
ChaosMachineSelectedItemPosY = 0
ChaosMachineScrollBarCurrentLine = 0
ChaosMachineScrollBarMaxRenderLine = ScrollBarPageCombMaxLine
ScrollBarPageMax = ScrollBarPageCombMaxLine
ChaosMachineScrollBarPosY = 0
ChaosMachineScrollBarPosMouse = 0
ChaosMachineScrollBarPosYMultiplier = (45 / (#ChaosMachineItensIngredients - ChaosMachineScrollBarMaxRenderLine))
ScrollBarPageMin = #ChaosMachineItensIngredients
else
ChaosMachineCombinationStatus = 0
ChaosMachineSelectedItem = 0
ChaosMachineSelectedItemClicked = 0
ChaosMachineSelectedItemClickedPosY = 0
ChaosMachineSelectedItemPosY = 0
ChaosMachineScrollBarCurrentLine = 0
ChaosMachineScrollBarMaxRenderLine = ScrollBarPageOneMaxLine
ScrollBarPageMax = ScrollBarPageOneMaxLine
ChaosMachineScrollBarPosY = 0
ChaosMachineScrollBarPosMouse = 0
ScrollBarPageMin = #ChaosMachineCurrentPageInfo
ChaosMachineScrollBarPosYMultiplier = (140 / (#ChaosMachineCurrentPageInfo - ChaosMachineScrollBarMaxRenderLine))
end
end
function ChaosMachineCheckClickSelectPageOne()
if CheckPressedKey(Keys.LButton) == 1
then
if MousePosX() >= m_Pos.x + 57.5 and MousePosX() <= m_Pos.x + 57.5 + 75 and MousePosY() >= m_Pos.y + 350 and MousePosY() <= m_Pos.y + 350 + 30
then
if ChaosMachineSelectedItemClicked > 0 then
if ChaosMachineNextPageInfo ~= -1
then
if ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo] ~= nil and ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo].Content ~= nil then
ChaosMachineCurrentPageInfo = ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo].Content
ChaosMachineNextPageInfo = -1
else
ChaosMachineSelectedCombSelected = ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo].Combination
ChaosMachineCombinationInfo = ChaosMachineCurrentPageInfo[ChaosMachineNextPageInfo] or {}
SetChaosBoxGenesis(ChaosMachineSelectedKey, ChaosMachineSelectedCombSelected)
end
ChaosMachineSelectNextPage()
end
end
DisableClickClient()
end
end
end
function ChaosMachineButtomMix()
if ChaosMachineCombinationStatus ~= 0
then
return
end
if MousePosX() >= m_Pos.x + 73 and MousePosX() <= m_Pos.x + 73 + 44 and MousePosY() >= m_Pos.y + 380 and MousePosY() <= m_Pos.y + 380 + 32 and CheckPressedKey(Keys.LButton) == 1
then
EnableAlphaTest()
SetTextColor(216, 216, 216, 255)
SetTextBg(0, 0, 0, 255)
RenderText3(m_Pos.x + 70, m_Pos.y + 370, CHAOS_MACHINE_TEXTS[GetLanguage()][12], 40, 3)
DisableAlphaBlend()
end
end
function ChaosMachineUpdateMousePageOne()
if ChaosMachinePage == 0
then
ChaosMachineScrollBarPageOneMouse()
ChaosMachineScrollBarPageOneMouseCheckMouseClicked()
ChaosMachineCheckClickSelectPageOne()
end
end
function ChaosMachineUpdateMousePageComb()
ChaosMachineButtomMix()
ChaosMachineScrollBarPageCombMouseCheckMouseClicked()
if MousePosX() >= m_Pos.x + 73 and MousePosX() <= m_Pos.x + 73 + 44 and MousePosY() >= m_Pos.y + 380 and MousePosY() <= m_Pos.y + 380 + 32
then
if CheckPressedKey(Keys.LButton) == 1
then
if ChaosMachineCheckCanMix() == 0
then
LogAddError(CHAOS_MACHINE_TEXTS[GetLanguage()][13])
else
SendChaosMachineMix()
end
DisableClickClient()
end
end
end
function ChaosMachineUpdateMouse()
if ChaosMachinePage == 0
then
ChaosMachineUpdateMousePageOne()
elseif ChaosMachinePage == 1
then
ChaosMachineUpdateMousePageComb()
end
end
function ChaosMachineScrollingPageOne(value)
if MousePosX() >= m_Pos.x+15 and MousePosX() <= m_Pos.x + 175
then
if MousePosY() >= m_Pos.y + 100 and MousePosY() <= m_Pos.y + 300
then
if value > 0
then
ScrollingBar(-1)
end
if value < 0
then
ScrollingBar(1)
end
return 1
end
end
return 0
end
function ChaosMachineScrollingPageComb(value)
if MousePosX() >= m_Pos.x+15 and MousePosX() <= m_Pos.x + 175
then
if MousePosY() >= m_Pos.y + 110 and MousePosY() <= m_Pos.y + 210
then
if value > 0
then
ScrollingBar(-1)
end
if value < 0
then
ScrollingBar(1)
end
return 1
end
end
return 0
end
function ChaosMachineScrolling(value)
if ChaosMachinePage == 0
then
return ChaosMachineScrollingPageOne(value)
elseif ChaosMachinePage == 1
then
return ChaosMachineScrollingPageComb(value)
end
return 0
end
function ChaosMachineMixResult(result)
ChaosMachineCombinationStatus = result
end
function ChaosMachineCheckItens(ItemIndex, Quantity, Level, Exc, Luck, Skill, Life, MaxAncient, Ancient)
local itemFind = 0
local itemQuantity = 0
local maxitens = getMaxItens() - 1
for i = 0, maxitens do
local item = ChaosMachine.new(i)
if item ~= nil
then
if ItemIndex ~= item:getIndex() and ItemIndex ~= -1 then
goto continue
end
if Exc ~= -1 then
if Exc == 0 and bit.band(item:getOption1(), 63) > 0 then
goto continue
else
local opt = bit.band(item:getOption1(), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 1), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 2), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 3), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 4), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 5), 1)
if opt < Exc then
goto continue
end
end
end
if Ancient ~= -1 then
if Ancient == 0 and item:getExtOption() > 0 then
goto continue
elseif item:getExtOption() < Ancient then
goto continue
end
if MaxAncient ~= -1 and item:getExtOption() > MaxAncient then
goto continue
end
end
if Luck ~= -1 then
if Luck == 0 and item:getLuck() ~= 0 then
goto continue
elseif Luck > 0 and item:getLuck() == 0 then
goto continue
end
end
if Skill ~= -1 then
if Skill == 0 and item:getSkill() ~= 0 then
goto continue
elseif Skill > 0 and item:getSkill() == 0 then
goto continue
end
end
if Life ~= -1 then
if Life == 0 and item:getLife() > 0 then
goto continue
elseif item:getLife() < Life then
goto continue
end
end
if Level ~= -1 then
if item:getLevel() < Level then
goto continue
end
end
itemFind = 1
if item:getStack() == 1 then
local qtd = item:getDurability()
if qtd <= 0 then
qtd = 1
end
itemQuantity = itemQuantity + qtd
else
itemQuantity = itemQuantity + 1
end
::continue::
item = nil
end
end
collectgarbage()
if itemFind == 1 and itemQuantity == Quantity
then
return 1
end
return 0
end
function ChaosMachineCheckMultiItens(ItemIndex, Level, Exc, Luck, Skill, Life, Ancient, MaxAncient, JoH)
local itemFind = 0
local itemQuantity = 0
local maxitens = getMaxItens() - 1
for i = 0, maxitens do
local item = ChaosMachine.new(i)
if item ~= nil
then
if ItemIndex ~= item:getIndex() and ItemIndex ~= -1 then
goto continue
end
if Exc ~= -1 then
if Exc == 0 and bit.band(item:getOption1(), 63) > 0 then
goto continue
else
local opt = bit.band(itemObj.Option1, 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 1), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 2), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 3), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 4), 1)
opt = opt + bit.band(bit.rshift(item:getOption1(), 5), 1)
if opt < Exc then
goto continue
end
end
end
if JoH ~= -1 then
if item:getHarmony() == 1 then
if JoH == 0 then
goto continue
end
else
if JoH == 1 then
goto continue
end
end
end
if Ancient ~= -1 then
if Ancient == 0 and item:getExtOption() > 0 then
goto continue
elseif item:getExtOption() < Ancient then
goto continue
end
if MaxAncient ~= -1 and item:getExtOption() > MaxAncient then
goto continue
end
end
if Luck ~= -1 then
if Luck == 0 and item:getLuck() ~= 0 then
goto continue
elseif Luck > 0 and item:getLuck() == 0 then
goto continue
end
end
if Skill ~= -1 then
if Skill == 0 and item:getSkill() ~= 0 then
goto continue
elseif Skill > 0 and item:getSkill() == 0 then
goto continue
end
end
if Life ~= -1 then
if Life == 0 and item:getLife() > 0 then
goto continue
elseif item:getLife() < Life then
goto continue
end
end
if Level ~= -1 then
if item:getLevel() < Level then
goto continue
end
end
itemFind = 1
if item:getStack() == 1 then
local qtd = item:getDurability()
if qtd <= 0 then
qtd = 1
end
itemQuantity = itemQuantity + qtd
else
itemQuantity = itemQuantity + 1
end
::continue::
item = nil
end
end
collectgarbage()
if itemFind == 1
then
return itemQuantity
end
return 0
end
function ChaosMachineCheckCanMix()
local itemMissing = 0
for i in ipairs(ChaosMachineItensIngredients) do
local itens = ChaosMachineItensIngredients[i].Ingredients
if itens ~= nil
then
if itens.Required then
if itens.MultiIndex ~= -1 then
local found = 0
for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itens.MultiIndex]) do
found = found + ChaosMachineCheckMultiItens(v, itens.Level, itens.Exc, itens.Luck, itens.Skill, itens.Life, itens.Ancient, itens.MaxAncient, itens.JoH)
end
if found < itens.Quantity then
itemMissing = itemMissing + 1
end
else
if ChaosMachineCheckItens(itens.ItemIndex, itens.Quantity, itens.Level, itens.Exc, itens.Luck, itens.Skill, itens.Life, itens.Ancient, itens.MaxAncient, itens.JoH) == 0
then
itemMissing = itemMissing + 1
end
end
end
end
end
if itemMissing == 0
then
return 1
end
return 0
end
function ChaosMachineCheckCanMoveItem(ItemIndex)
if ChaosMachineCombinationStatus ~= 0
then
return 0
end
local itemFind = 0
for i in ipairs(ChaosMachineItensIngredients) do
local itens = ChaosMachineItensIngredients[i].Ingredients
if itens ~= nil
then
if itens.MultiIndex ~= -1 then
for k, v in ipairs(CHAOS_MACHINE_CONFIG_MULTI_INDEX[itens.MultiIndex]) do
if ItemIndex == v then
itemFind = 1
break
end
end
else
if itens.ItemIndex == ItemIndex or itens.ItemIndex == -1
then
itemFind = 1
break
end
end
end
end
if itemFind == 1
then
return 1
else
LogAddError(CHAOS_MACHINE_TEXTS[GetLanguage()][14])
end
return 0
end
function ChaosMachineOpenning()
m_Pos.x = WindowGetWidth()-380
m_Pos.y = 0
RateBooster = 0
ChaosMachineSelectedKey = getChaosBoxGenesisSelectedKey()
ChaosMachineSelectedCombSelected = getChaosBoxGenesisSelectedComb()
if ChaosMachineSelectedCombSelected > 0
then
ChaosMachineCombinationInfo = CHAOS_MACHINE_CONFIG_COMBINATIONS[ChaosMachineSelectedCombSelected] or {}
ChaosMachineSelectNextPage()
return
end
ChaosMachineCombinationStatus = 0
ChaosMachinePage = 0
ChaosMachineSelectedItem = 0
ChaosMachineSelectedItemClicked = 0
ChaosMachineSelectedItemClickedPosY = 0
ChaosMachineSelectedItemPosY = 0
ChaosMachineScrollBarCurrentLine = 0
ChaosMachineScrollBarMaxRenderLine = ScrollBarPageOneMaxLine
ScrollBarPageMax = ScrollBarPageOneMaxLine
ChaosMachineScrollBarPosY = 0
ChaosMachineScrollBarPosMouse = 0
ChaosMachineCurrentPageInfo = CHAOS_MACHINE_CONFIG_COMB_SELECTION[ChaosMachineSelectedKey] or {}
ScrollBarPageMin = #ChaosMachineCurrentPageInfo
ChaosMachineScrollBarPosYMultiplier = (140 / (#ChaosMachineCurrentPageInfo - ChaosMachineScrollBarMaxRenderLine))
ChaosMachineItensIngredients = {}
end
function DrawBox(x, y, w, h)
    DrawBar(x, y, w, 1)
    DrawBar(x, y+1, 1, h-2)
    DrawBar(x+w-1, y+1, 1, h-2)
    DrawBar(x, y+h-1, w, 1)
end
function GetServerTime()
return os.time()
end