-- Create SQL object
db = SQL.new()

-- Declare Database class
DataBase = {}

local SQL_NO_DATA = 100

function DataBase.Init()
	--Criar todas as colunas para não haver problemas de SQL.
	
	for i = 0 , #COLUMN_RESET do
		DataBase.CreateColumn(TABLE_RESET, COLUMN_RESET[i], "INT NOT NULL DEFAULT 0")
	end
	
	for i = 0 , #COLUMN_MRESET do
		DataBase.CreateColumn(TABLE_MRESET, COLUMN_MRESET[i], "INT NOT NULL DEFAULT 0")
	end
	
	for i = 0 , #COLUMN_PK do
		DataBase.CreateColumn(TABLE_PK, COLUMN_PK[i], "INT NOT NULL DEFAULT 0")
	end
	
	for i = 0 , #COLUMN_HERO do
		DataBase.CreateColumn(TABLE_HERO, COLUMN_HERO[i], "INT NOT NULL DEFAULT 0")
	end
	
	DataBase.CreateColumn(TABLE_VIP, COLUMN_VIP, "INT NOT NULL DEFAULT 0")
	
	DataBase.CreateColumn(TABLE_MULT_WAREHOUSE, COLUMN_MULT_WAREHOUSE, "INT NOT NULL DEFAULT 0")
	
	DataBase.CreateColumn(TABLE_LAST_VAULT_ID_WAREHOUSE, COLUMN_LAST_VAULT_ID_WAREHOUSE, "INT NOT NULL DEFAULT 0")
	
	DataBase.CreateColumn(TABLE_REWARD_PLAYER, COLUMN_REWARD_PLAYER, "INT NOT NULL DEFAULT 0")
	
	for i in ipairs(PRIZES_COMMANDS) do
		if #PRIZES_COMMANDS[i].TableE > 0 and #PRIZES_COMMANDS[i].ColumnE > 0
		then
			DataBase.CreateColumn(PRIZES_COMMANDS[i].TableE, PRIZES_COMMANDS[i].ColumnE, "INT NOT NULL DEFAULT 0")
		end
	
		if #PRIZES_COMMANDS[i].TableA > 0 and #PRIZES_COMMANDS[i].ColumnA > 0
		then
			DataBase.CreateColumn(PRIZES_COMMANDS[i].TableA, PRIZES_COMMANDS[i].ColumnA, "INT NOT NULL DEFAULT 0")
		end
	end
end

function DataBase.Connect(ODBC,User,Password)
	if db:connect(ODBC,User,Password) == 0
	then
		LogAddC(LOG_RED, "[Lua] Couldn't connect to database")
		return
	end
	if ConnectQueryAsync(ODBC,User,Password) == 0
	then
		LogAddC(LOG_RED, "[Lua] Couldn't connect to database Async")
	end

	DataBase.CallRunAfterLoad()
end

function DataBase.GetConnection()
	return db
end

function DataBase.GetValue(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)
	local retVal = -1
	
	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
		goto queryend
	end
	
	if db:fetch() == SQL_NO_DATA then
		goto queryend
	end
	
	retVal = db:getInt(Column)
	
	::queryend::
	db:clear()
	return retVal
end

function DataBase.SetValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = '%s'", Table, Column, Value, Where, Name)

	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
	end
	
	db:clear()
end

function DataBase.SetAddValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
	end
	
	db:clear()
end

function DataBase.SetDecreaseValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
	end
	
	db:clear()
end

function DataBase.Query(Query)
	local ret = db:exec(Query)
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	db:clear()
end

function DataBase.QueryGetString(Query, Column)
	local ret = db:exec(Query)
	local str = ""
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			str = db:getStr(Column)
			db:clear()
			return str
		end
	end
	
	db:clear()
	return str
end

function DataBase.GetString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)
	local retVal = "NotFind"
	if db:exec(Query) == 0
	then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
		goto queryend
	end
	
	if db:fetch() == SQL_NO_DATA then
		goto queryend
	end
	
	retVal = db:getStr(Column)
	
	::queryend::
	db:clear()
	return retVal
end

function DataBase.SetString(Table, Column, String, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = '%s'", Table, Column, String, Where, Name)

	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
	end
	
	db:clear()
end

function DataBase.CreateColumn(Table, Column, Definition)
	local Query = string.format("IF NOT EXISTS( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '%s' AND COLUMN_NAME = '%s') ALTER TABLE %s ADD %s %s", Table, Column, Table, Column, Definition)
	
	if db:exec(Query) == 0 then
		LogAddC(LOG_RED, string.format("Query Error: %s", Query))
	end
	
	db:clear()
end

local DataBase_Handles = {}

function DataBase.CallRunAfterLoad()
	for i in pairs(DataBase_Handles) do
		DataBase_Handles[i].callback()	
	end
end

function DataBase.RunAfterLoad(callback)
	DataBase_Handles[callback] = { callback = callback }
end

function DataBase.Query(Query)
	local ret = db:exec(Query)
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	db:clear()
end

function DataBase.QueryGetString(Query, Column)
	local ret = db:exec(Query)
	local str = ""
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			str = db:getStr(Column)
			db:clear()
			return str
		end
	end
	
	db:clear()
	return str
end

function DataBase.QueryGetNumber(Query, Column)
	local ret = db:exec(Query)
	local int = -1
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			int = db:getInt(Column)
			db:clear()
			return int
		end
	end
	
	db:clear()
	return int
end

function DataBase.GetNumberByString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)	
	local ret = db:exec(Query)
	local int = -1
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			int = db:getInt(Column)
			db:clear()
			return int
		end
	end
	
	db:clear()
	return int
end

function DataBase.GetNumberByNumber(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = %d", Column, Table, Where, Name)	
	local ret = db:exec(Query)
	local int = -1
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			int = db:getInt(Column)
			db:clear()
			return int
		end
	end
	
	db:clear()
	return int
end

function DataBase.SetNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = '%s'", Table, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.SetNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = %d", Table, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.GetStringByString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)	
	local ret = db:exec(Query)
	local int = ""
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			int = db:getStr(Column)
			db:clear()
			return int
		end
	end
	
	db:clear()
	return int
end

function DataBase.GetStringByNumber(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = %d", Column, Table, Where, Name)	
	local ret = db:exec(Query)
	local int = ""
	
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	else
		if db:fetch() ~= 100 then
			int = db:getStr(Column)
			db:clear()
			return int
		end
	end
	
	db:clear()
	return int
end

function DataBase.SetStringByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = '%s'", Table, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.SetStringByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = %d", Table, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.AddNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.AddNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = %d", Table, Column, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.DecreaseNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

function DataBase.DecreaseNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = %d", Table, Column, Column, Value, Where, Name)	
	local ret = db:exec(Query)
		
	if ret == 0 then
		LogAddC(2, string.format("Não foi possível executar: %s", Query))
	end
	
	db:clear()
end

return DataBase