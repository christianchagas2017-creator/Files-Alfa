AddBrinde = {}

function AddBrinde.Init()
	if AddBrinde_Config.Enabled then
		for i in ipairs (AddBrinde_Config.Command) do 
			Commands.Register(AddBrinde_Config.Command[i], AddBrinde.Comando)
		end
		Commands.Register(AddBrinde_Config.CommandBox, AddBrinde.ComandoBox)
		Timer.TimeOut(2, AddBrinde.CreateLog)
	end
end

function AddBrinde.CreateLog()
	CreateDirectory("LOGS\\PREMIOS_LOG")
	CreateDirectory("LOGS\\PREMIOS_LOG\\BRINDE_LOG")
	CreateDirectory("LOGS\\PREMIOS_LOG\\PACOTE_LOG")
end

function AddBrinde.ComandoBox(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()
	local aIndexInfo = Utils.GetPlayerInfo(player)
	local aNick = player:getName()

	if AddBrinde_Config.Permition[aNick] == nil then return end

	local pacote = string.lower(Cmd:getString(Arguments, 1, 0))

	if pacote == nil or string.len(pacote) <= 0 then
		SendMessage(string.format(AddBrinde_Config.Message[Language][1]), aIndex, 1)
		return
	end

	if AddBrinde_Config.Box[pacote] == nil then
		SendMessage(string.format(AddBrinde_Config.Message[Language][2], pacote), aIndex, 1)
		return
	end

	if AddBrinde_Config.Box[pacote].NivelPermissao > AddBrinde_Config.Permition[aNick] then
		SendMessage(string.format(AddBrinde_Config.Message[Language][3]), aIndex, 1)
		return
	end

	local bNick = Cmd:getString(Arguments, 2, 0)

	if bNick == nil or string.len(bNick) <= 0 then
		SendMessage(string.format(AddBrinde_Config.Message[Language][4]), aIndex, 1)
		return
	end

	local qtd = Cmd:getNumber(Arguments, 3)

	if qtd <= 0 then qtd = 1 end

	local ret = db:exec(string.format("SELECT AccountID FROM Character WHERE Name = '%s'", bNick))

	if ret == 0 then
		db:clear()
		SendMessage(string.format(AddBrinde_Config.Message[Language][4]), aIndex, 1)
		return
	end

	if db:fetch() == 100 then
		db:clear()
		SendMessage(string.format(AddBrinde_Config.Message[Language][5], bNick), aIndex, 1)
		return
	end

	local Acc = db:getStr("AccountID")
	db:clear()

	local Codigo = GuardiaoBrindes.GerarCodigo()
	if Codigo == "-1" then
		SendMessage(AddBrinde_Config.Message[Language][6], aIndex, 1)
		return
	end
	GuardiaoBrindes.RegistrarCodigo(AddBrinde_Config.Box[pacote].Nome, Acc, Codigo, 0, 0)

	for q = 1, qtd do
		GuardiaoBrindes.RegistrarItem(Codigo, AddBrinde_Config.Box[pacote])
	end

	SendMessage(string.format(AddBrinde_Config.Message[Language][9], qtd, AddBrinde_Config.Box[pacote].Nome, bNick), aIndex, 1)
	LogAddC(4, string.format("%s adicionou %d %s para %s", aNick, qtd, AddBrinde_Config.Box[pacote].Nome, bNick))

	if AddBrinde_Config.Log then
		local dia = os.date("%Y-%m-%d")
		local hora = os.date("%H:%M:%S")
		local file = io.open(string.format("LOGS\\PREMIOS_LOG\\BRINDE_LOG\\%s.txt", dia), 'a')
		file:write(string.format("\n%s [%s][%s]: Adicionou %d %s) para %s \n	Codigo - [%s])", hora, aIndexInfo[0], aIndexInfo[1], qtd, AddBrinde_Config.Box[pacote].Nome, bNick, Codigo))
		file:close()
	end

end

function AddBrinde.Comando(aIndex, Arguments)
	local player = User.new(aIndex)
	local Language = player:getLanguage()
	local aIndexInfo = Utils.GetPlayerInfo(player)
	local aNick = player:getName()

	local notEmpty = 0

	if AddBrinde_Config.Permition[aNick] == nil then return end

	local pacote = string.lower(Cmd:getString(Arguments, 1, 0))

	if pacote == nil or string.len(pacote) <= 0 then
		SendMessage(string.format(AddBrinde_Config.Message[Language][1]), aIndex, 1)
		return
	end

	if AddBrinde_Config.Promotions[pacote] == nil then
		SendMessage(string.format(AddBrinde_Config.Message[Language][2], pacote), aIndex, 1)
		return
	end

	if AddBrinde_Config.Promotions[pacote].NivelPermissao > AddBrinde_Config.Permition[aNick] then
		SendMessage(string.format(AddBrinde_Config.Message[Language][3]), aIndex, 1)
		return
	end

	local bNick = Cmd:getString(Arguments, 2, 0)

	if bNick == nil or string.len(bNick) <= 0 then
		SendMessage(string.format(AddBrinde_Config.Message[Language][4]), aIndex, 1)
		return
	end

	local ret = db:exec(string.format("SELECT AccountID FROM Character WHERE Name = '%s'", bNick))

	if ret == 0 then
		db:clear()
		SendMessage(string.format(AddBrinde_Config.Message[Language][4]), aIndex, 1)
		return
	end

	if db:fetch() == 100 then
		db:clear()
		SendMessage(string.format(AddBrinde_Config.Message[Language][5], bNick), aIndex, 1)
		return
	end

	local Acc = db:getStr("AccountID")
	db:clear()

	local Codigo = GuardiaoBrindes.GerarCodigo()
	if Codigo == "-1" then
		SendMessage(AddBrinde_Config.Message[Language][6], aIndex, 1)
		return
	end

	GuardiaoBrindes.RegistrarCodigo(AddBrinde_Config.Promotions[pacote].Nome, Acc, Codigo,AddBrinde_Config.Promotions[pacote].TemValidade, AddBrinde_Config.Promotions[pacote].Dias)
	GuardiaoBrindes.RegistrarItens(Codigo, AddBrinde_Config.Reward[AddBrinde_Config.Promotions[pacote].IdPremio])

	--GuardiaoBrindes.RegistrarCodigo(AddBrinde_Config.Promotions[pacote].Nome, Acc, Codigo, AddBrinde_Config.Promotions[pacote].TemValidade, AddBrinde_Config.Promotions[pacote].Dias)
	--GuardiaoBrindes.RegistrarItens(Codigo, AddBrinde_Config.Reward[AddBrinde_Config.Promotions[pacote].IdPremio])

	SendMessage(string.format(AddBrinde_Config.Message[Language][7], AddBrinde_Config.Promotions[pacote].Nome, bNick), aIndex, 1)
	LogAddC(4, string.format("%s adicionou %s para %s", aNick, AddBrinde_Config.Promotions[pacote].Nome, bNick))

	if AddBrinde_Config.Log then
		local dia = os.date("%Y-%m-%d")
		local hora = os.date("%H:%M:%S")
		local file = io.open(string.format("LOGS\\PREMIOS_LOG\\BRINDE_LOG\\%s.txt", dia), 'a')
		file:write(string.format("\n%s [%s][%s]: Adicionou o código (%s - %s) para %s \n	Codigo - [%s])", hora, aIndexInfo[0], aIndexInfo[1], AddBrinde_Config.Promotions[pacote].Brinde, AddBrinde_Config.Promotions[pacote].Nome, bNick, Codigo))
		file:close()
	end

end

AddBrinde.Init()

return AddBrinde

