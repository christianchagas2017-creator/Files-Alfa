ITEM_BASE          = 1296

function CONVERT_RGBA(r, g, b, a)
	return (bit.lshift(a, 24) + bit.lshift(b, 16) + bit.lshift(g, 8) + r)
end

function GET_ITEM(x, y)
	return (x * 512) + y
end

function GET_ITEM_MODEL(x, y)
	return ((x * 512) + y) + ITEM_BASE
end

function CheckMouseIn(x, y, w, h)
	if MousePosX() >= x and MousePosX() <= x+w and MousePosY() >= y and MousePosY() <= y+h then return true else return false end
end

--TEINS
Items = {
	Item 			= "Data\\Item\\",
	Player 			= "Data\\Player\\",
	Skill 			= "Data\\Skill\\",
	Monster 		= "Data\\Monster\\",
	Effect  		= "Data\\Effect\\",

	CustomItem   	= "Data\\Custom\\Itens\\Item\\",
	CustomPlayer 	= "Data\\Custom\\Itens\\Player\\",
	CustomSkill   	= "Data\\Custom\\Itens\\Skill\\",
	CustomMonster   = "Data\\Custom\\Itens\\Monster\\",
	CustomEffect   	= "Data\\Custom\\Itens\\Effect\\",
	CustomSkin   	= "Data\\Custom\\Itens\\Skin\\",
	Bmd  			= 0,
	Void 			= 1
}

--UI WINDOWS
UICustomInterface   = 0
UIFriendList		= 1
UIMoveList			= 2
UIParty				= 3
UIQuest				= 4
UIGuild				= 6
UITrade				= 7
UIWarehouse			= 8
UIChaosBox			= 9
UICommandWindow		= 10
UIPetInfo			= 11
UIShop				= 12
UIInventory			= 13
UIStore				= 14
UIOtherStore		= 15
UICharacter			= 16
UIDevilSquare		= 19
UIBloodCastle		= 20
UIGuildNpc			= 21
UINPCGuild			= 21
UIChatWindow		= 33
UIFastMenu			= 34
UIOptions			= 35
UIHelp				= 36
UIFastDial			= 39
UISkillTree			= 57
UINPC_Titus			= 63
UICashShop			= 65
UIJerint			= 70
UIFullMap			= 72
UINPC_Dialog		= 73
UIGensInfo			= 74
UINPC_Julia			= 75
UIExpandInventory	= 77
UIExpandWarehouse	= 78
UIMuHelper 			= 79

--TEXT
ALIGN_LEFT             = 1
ALIGN_LEFT_CLIP        = 2
ALIGN_CENTER           = 3
ALIGN_RIGHT            = 4
ALIGN_RIGHT_TO_LEFT    = 7
ALIGN_CENTER_TO_RIGHT  = 8

--CKASS
CLASS_DW = 0
CLASS_DK = 1
CLASS_FE = 2
CLASS_MG = 3
CLASS_DL = 4
CLASS_SU = 5
CLASS_RF = 6

KeysConvert = {[32] = " ", [48] = "0",[49] = "1",[50] = "2",[51] = "3",[52] = "4",[53] = "5",[54] = "6",[55] = "7",[56] = "8",[57] = "9",[65] = "A",[66] = "B",[67] = "C",[68] = "D",[69] = "E",[70] = "F",[71] = "G",[72] = "H",[73] = "I",[74] = "J",[75] = "K",[76] = "L",[77] = "M",[78] = "N",[79] = "O",[80] = "P",[81] = "Q",[82] = "R",[83] = "S",[84] = "T",[85] = "U",[86] = "V",[87] = "W",[88] = "X",[89] = "Y",[90] = "Z",[96] = "0",[97] = "1",[98] = "2",[99] = "3",[100] = "4",[101] = "5",[102] = "6",[103] = "7",[104] = "8",[105] = "9",[109] = "-",[189] = "-"}

--RENDER MESH
RENDER_COLOR        = 0x00000001
RENDER_TEXTURE      = 0x00000002
RENDER_CHROME       = 0x00000004
RENDER_METAL        = 0x00000008
RENDER_LIGHTMAP     = 0x00000010
RENDER_SHADOWMAP    = 0x00000020
RENDER_BRIGHT       = 0x00000040
RENDER_DARK         = 0x00000080
RENDER_EXTRA        = 0x00000100
RENDER_CHROME2      = 0x00000200
RENDER_WAVE			= 0x00000400
RENDER_CHROME3      = 0x00000800
RENDER_CHROME4      = 0x00001000
RENDER_NODEPTH      = 0x00002000
RENDER_CHROME5      = 0x00004000
RENDER_OIL          = 0x00008000
RENDER_CHROME6      = 0x00010000
RENDER_CHROME7      = 0x00020000
RENDER_DOPPELGANGER = 0x00040000
RENDER_WAVE_EXT		= 0x10000000
RENDER_BYSCRIPT		= 0x80000000
RNDEXT_WAVE			= 1
RNDEXT_OIL          = 2
RNDEXT_RISE			= 4

--KIND
KIND_PLAYER = 0
KIND_MONSTER = 1
KIND_NPC = 2
KIND_TRAP = 3
KIND_OPERATE = 4
KIND_EDIT = 5
KIND_PET = 6
KIND_TMP = 7

MODEL_SWORD   = 0
MODEL_AXE     = 1
MODEL_MACE    = 2
MODEL_SPEAR   = 3
MODEL_BOW     = 4
MODEL_STAFF   = 5
MODEL_SHIELD  = 6
MODEL_HELM    = 7
MODEL_ARMOR   = 8
MODEL_PANTS   = 9
MODEL_GLOVES  = 10
MODEL_BOOTS   = 11
MODEL_WINGS   = 12
MODEL_HELPER  = 13
MODEL_PET  	  = MODEL_HELPER
MODEL_POTION  = 14
MODEL_ETC     = 15