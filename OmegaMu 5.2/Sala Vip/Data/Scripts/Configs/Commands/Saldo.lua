
-- true ativa o sistema, false desativa
Moedas_Switch = true

-- Comando digitado pelo player
Moedas_Command = "/saldo"

-- Máximo 6 linhas!
-- Tipo = 0 para Login, 1 para Nick
Moedas_Config = {
{Nome = "Up Points", 	 Tabela = "Character", Coluna = "uppoints", 	Where = "AccountID", Tipo = 0},
{Nome = "VCoin", 	 	 Tabela = "MEMB_INFO", Coluna = "vcoin", 		Where = "memb___id", Tipo = 0},
{Nome = "Baú Extra", 	 Tabela = "warehouse", Coluna = "VaultCounts",  Where = "AccountID", Tipo = 0},
}