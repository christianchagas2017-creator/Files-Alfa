LOG_BLACK		= 1 
LOG_RED			= 2 
LOG_GREEN		= 3 
LOG_BLUE		= 4 
LOG_DARK_GREEN	= 5 
LOG_DARK_RED	= 6 
LOG_MAGENTA		= 7 
LOG_PURPLE		= 8 
LOG_DARK_BLUE	= 9 
LOG_ORANGE		= 10
LOG_YELLOW		= 11
LOG_BROWN		= 12
LOG_CYAN		= 13
LOG_GRAY		= 14

OBJECT_START_USER = 13000
MAX_OBJECT_USER = 13999
OBJECT_START_MONSTER = 0
MAX_OBJECT_MONSTER = 11999

MAX_ITEM_INDEX = 512
MAX_ITEM_SECTION = 16

CLASS_DW = 0
CLASS_DK = 1
CLASS_FE = 2
CLASS_MG = 3
CLASS_DL = 4
CLASS_SU = 5
CLASS_RF = 6

DB_CLASS_DW = 0
DB_CLASS_SM = 1
DB_CLASS_GM = 2
DB_CLASS_DK = 16
DB_CLASS_BK = 17
DB_CLASS_BM = 18
DB_CLASS_FE = 32
DB_CLASS_ME = 33
DB_CLASS_HE = 34
DB_CLASS_MG = 48
DB_CLASS_DM = 50
DB_CLASS_DL = 64
DB_CLASS_LE = 66
DB_CLASS_SU = 80
DB_CLASS_BS = 81
DB_CLASS_DS = 82
DB_CLASS_RF = 96
DB_CLASS_FM = 98

Cmd = Command.new()

OpenFolder('LuaSystem')
OpenFolder('Utils')
OpenFolder('Defines')
OpenFolder('Configs')
OpenFolder('Configs\\Commands')
OpenFolder('Configs\\Systems')
OpenFolder('Configs\\Events')
OpenFolder('Configs\\PvP')
OpenFolder('Configs\\Promotions')
OpenFolder('Commands')
OpenFolder('Events')
OpenFolder('Systems')
OpenFolder('Systems\\PvP')
OpenFolder('Systems\\Geral')
OpenFolder('Teste')


function GameServer()
	DataBase.Connect("MuOnline", "sa", "976081421Ch")
	Timer.Interval(15, collectgarbage)
end