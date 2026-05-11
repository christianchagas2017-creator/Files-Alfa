Moedas = {}

function Moedas.CommandMoedas(aIndex)	
	local p = User.new(aIndex)
	local t = {[0] = p:getAccountID(), [1] = p:getName()}
	for i in ipairs(Moedas_Config) do
		local v = DataBase.GetValue(Moedas_Config[i].Tabela, Moedas_Config[i].Coluna, Moedas_Config[i].Where, t[Moedas_Config[i].Tipo])	
		SendMessage(string.format("Voce possui: %d %s", v, Moedas_Config[i].Nome), aIndex, 26)
	end
end

function Moedas.Init()
		
	if Moedas_Switch then
		Commands.Register(Moedas_Command, Moedas.CommandMoedas)
	end
end

Moedas.Init()

return Moedas