--[[
Command Configs
]]--
--Configurações Npc Master Reset
MRESET_NPC_SWITCH = 0
MRESET_NPC = { {Class = 233, Map = 0, CoordX = 127, CoordY = 127, Dir = 5},
{Class = 233, Map = 2, CoordX = 241, CoordY = 132, Dir = 3} }

--Configurações sistema Master Reset
MRESET_COMMAND = "/mreset"
MRESET_SWITCH = 1

--======= VALORES DE EXPERIÊNCIA BATTLE PASS --=====
ExpRewardValue = {}
ExpRewardValue[0] = 5   -- VALOR JOGADOR FREE
ExpRewardValue[1] = 10  -- VALOR JOGADOR VIP 1 
ExpRewardValue[2] = 50  -- VALOR JOGADOR VIP 2
ExpRewardValue[3] = 20  -- VALOR JOGADOR VIP 3
--==================================================

--Level necessário
MRESET_LEVEL = {}
MRESET_LEVEL[0] = 400
MRESET_LEVEL[1] = 350
MRESET_LEVEL[2] = 300
MRESET_LEVEL[3] = 300

--Zen necessário
MRESET_MONEY = {}
MRESET_MONEY[0] = 5000000
MRESET_MONEY[1] = 4000000
MRESET_MONEY[2] = 3000000
MRESET_MONEY[3] = 3000000

--Resetar o level up points? se sim vai ser colocado o level up com a configuração MRESET_POINTS_LEVEL_UP_AFTER
MRESET_LEVEL_UP_POINTS_RESET = {}
MRESET_LEVEL_UP_POINTS_RESET[0] = 1
MRESET_LEVEL_UP_POINTS_RESET[1] = 1
MRESET_LEVEL_UP_POINTS_RESET[2] = 1
MRESET_LEVEL_UP_POINTS_RESET[3] = 1

-- Força necessária para dar MR
MRESET_POINTS_STRENGTH = {}
MRESET_POINTS_STRENGTH[0] = 32767
MRESET_POINTS_STRENGTH[1] = 32767
MRESET_POINTS_STRENGTH[2] = 32767
MRESET_POINTS_STRENGTH[3] = 32767

-- Agilidade necessária para dar MR
MRESET_POINTS_DEXTERITY = {}
MRESET_POINTS_DEXTERITY[0] = 32767
MRESET_POINTS_DEXTERITY[1] = 32767
MRESET_POINTS_DEXTERITY[2] = 32767
MRESET_POINTS_DEXTERITY[3] = 32767

-- Vitalidade necessária para dar MR
MRESET_POINTS_VITALITY = {}
MRESET_POINTS_VITALITY[0] = 32767
MRESET_POINTS_VITALITY[1] = 32767
MRESET_POINTS_VITALITY[2] = 32767
MRESET_POINTS_VITALITY[3] = 32767

-- Energia necessária para dar MR
MRESET_POINTS_ENERGY = {}
MRESET_POINTS_ENERGY[0] = 32767
MRESET_POINTS_ENERGY[1] = 32767
MRESET_POINTS_ENERGY[2] = 32767
MRESET_POINTS_ENERGY[3] = 32767

-- Comando necessário para dar MR
MRESET_POINTS_LEADERSHIP = {}
MRESET_POINTS_LEADERSHIP[0] = 32767
MRESET_POINTS_LEADERSHIP[1] = 32767
MRESET_POINTS_LEADERSHIP[2] = 32767
MRESET_POINTS_LEADERSHIP[3] = 32767

--mínimo de resets para dar o MR
MRESET_MIN_RESETS = {}
MRESET_MIN_RESETS[0] = 150
MRESET_MIN_RESETS[1] = 100
MRESET_MIN_RESETS[2] = 75
MRESET_MIN_RESETS[3] = 50

--Remover resets?
MRESET_CHARGE_RESETS = {}
MRESET_CHARGE_RESETS[0] = 1
MRESET_CHARGE_RESETS[1] = 1
MRESET_CHARGE_RESETS[2] = 1
MRESET_CHARGE_RESETS[3] = 1

--Caso cobre resets quantos resets será removidos?
MRESETS_REMOVE_RESETS = {}
MRESETS_REMOVE_RESETS[0] = 150
MRESETS_REMOVE_RESETS[1] = 100
MRESETS_REMOVE_RESETS[2] = 75
MRESETS_REMOVE_RESETS[3] = 50

--Level após o MR
MRESET_LEVEL_AFTER = {}
MRESET_LEVEL_AFTER[0] = 1
MRESET_LEVEL_AFTER[1] = 6
MRESET_LEVEL_AFTER[2] = 15
MRESET_LEVEL_AFTER[3] = 15

--Level up points após o MR
MRESET_POINTS_LEVEL_UP_AFTER = {}
MRESET_POINTS_LEVEL_UP_AFTER[0] = 500
MRESET_POINTS_LEVEL_UP_AFTER[1] = 1000
MRESET_POINTS_LEVEL_UP_AFTER[2] = 1500
MRESET_POINTS_LEVEL_UP_AFTER[3] = 2000

--Força após o MR
MRESET_POINTS_STRENGTH_AFTER = {}
MRESET_POINTS_STRENGTH_AFTER[0] = 100
MRESET_POINTS_STRENGTH_AFTER[1] = 200
MRESET_POINTS_STRENGTH_AFTER[2] = 300
MRESET_POINTS_STRENGTH_AFTER[3] = 350

--Agilidade após o MR
MRESET_POINTS_DEXTERITY_AFTER = {}
MRESET_POINTS_DEXTERITY_AFTER[0] = 100
MRESET_POINTS_DEXTERITY_AFTER[1] = 200
MRESET_POINTS_DEXTERITY_AFTER[2] = 300
MRESET_POINTS_DEXTERITY_AFTER[3] = 350

--Vitalidade após o MR
MRESET_POINTS_VITALITY_AFTER = {}
MRESET_POINTS_VITALITY_AFTER[0] = 100
MRESET_POINTS_VITALITY_AFTER[1] = 200
MRESET_POINTS_VITALITY_AFTER[2] = 300
MRESET_POINTS_VITALITY_AFTER[3] = 350

--Energia após o MR
MRESET_POINTS_ENERGY_AFTER = {}
MRESET_POINTS_ENERGY_AFTER[0] = 100
MRESET_POINTS_ENERGY_AFTER[1] = 200
MRESET_POINTS_ENERGY_AFTER[2] = 300
MRESET_POINTS_ENERGY_AFTER[3] = 350

--Comando após o  MR (para DL)
MRESET_POINTS_LEADERSHIP_AFTER = {}
MRESET_POINTS_LEADERSHIP_AFTER[0] = 100
MRESET_POINTS_LEADERSHIP_AFTER[1] = 200
MRESET_POINTS_LEADERSHIP_AFTER[2] = 300
MRESET_POINTS_LEADERSHIP_AFTER[3] = 350

--Retornar ao mapa?
MRESET_RETURN = {}
MRESET_RETURN[0] = 1
MRESET_RETURN[1] = 0
MRESET_RETURN[2] = 0
MRESET_RETURN[3] = 0

--Se sim, qual o mapa
MRESET_RETURN_MAP = {}
MRESET_RETURN_MAP[0] = 0
MRESET_RETURN_MAP[1] = 0
MRESET_RETURN_MAP[2] = 0
MRESET_RETURN_MAP[3] = 0

--Coordenada X
MRESET_RETURN_MAP_X = {}
MRESET_RETURN_MAP_X[0] = 125
MRESET_RETURN_MAP_X[1] = 125
MRESET_RETURN_MAP_X[2] = 125
MRESET_RETURN_MAP_X[3] = 125

--Coordenada Y
MRESET_RETURN_MAP_Y = {}
MRESET_RETURN_MAP_Y[0] = 125
MRESET_RETURN_MAP_Y[1] = 125
MRESET_RETURN_MAP_Y[2] = 125
MRESET_RETURN_MAP_Y[3] = 125

--Relogar ao dar MR?
MRESET_RELOGAR = {}
MRESET_RELOGAR[0] = 1
MRESET_RELOGAR[1] = 1
MRESET_RELOGAR[2] = 1
MRESET_RELOGAR[3] = 1

--Quantidade de MR ganha ao dar o MR no ranking
MRESET_COUNTS = {}
MRESET_COUNTS[0] = 1
MRESET_COUNTS[1] = 1
MRESET_COUNTS[2] = 1
MRESET_COUNTS[3] = 1

--Configuração de premiação em moedas, lembrando isso é direto para a conta!
--O exemplo abaixo mostra a premiação em duas moedas de duas colunas diferente!
MRESET_AMOUNT_TABLES = {}
MRESET_AMOUNT_TABLES[1] = 'Character'

MRESET_AMOUNT_COLUNS = {}
MRESET_AMOUNT_COLUNS[1] = 'UpPoints'

MRESET_AMOUNT_WHERE = {}
MRESET_AMOUNT_WHERE[1] = 'AccountID'

MRESET_AMOUNT = {}

--Free
MRESET_AMOUNT[0] = {
[1] = 1, --Premiação para a primeira moeda
[2] = 0, --Premiação para a segunda moeda
}
--Vip
MRESET_AMOUNT[1] = {
[1] = 1, --Premiação para a primeira moeda
[2] = 0, --Premiação para a segunda moeda
}
--Vip 1
MRESET_AMOUNT[2] = {
[1] = 1, --Premiação para a primeira moeda
[2] = 0, --Premiação para a segunda moeda
}
--Vip 2
MRESET_AMOUNT[3] = {
[1] = 1, --Premiação para a primeira moeda
[2] = 0, --Premiação para a segunda moeda
}

--PREMIAÇÃO EM BOX
MRESET_BOX_SWITCH = 0
MR_BOX_TABLE = 'MEMB_INFO'
MR_BOX_COLUMN = 'mrpoints'
MR_BOX_WHERE = 'memb___id'
MR_BOX_REQUEST = 0


--MR_BOX_SECTION = 14
--MR_BOX_INDEX = 201



--[[
Message Configs
]]--
MRESETS_MESSAGES = { }

MRESETS_MESSAGES["Por"] = {
[1] = "[Sistema] Você precisa de %d level para dar M.Reset",
[2] = "[Sistema] Você precisa de %d zen para dar M.Reset",
[3] = "[Sistema] Você precisa de %d pontos em força",
[4] = "[Sistema] Você precisa de %d pontos em Agilidade",
[5] = "[Sistema] Você precisa de %d pontos em Vitalidade",
[6] = "[Sistema] Você precisa de %d pontos em Energia",
[7] = "[Sistema] Você precisa ter %d resets para dar M.Reset",
[8] = "[Sistema] Master Resetado com sucesso!",
[9] = "[Sistema] Não foi possível efetuar o M.reset",
[10] = "[Sistema] Você precisa de %d pontos em Comando",
[11] = "[Sistema] Você precisa de %d Cash para dar MR",
[16] = "[MasterReset] Você ganhou %d XP no BattlePass! (Total: %d)"
}

MRESETS_MESSAGES["Eng"] = {
[1] = "[System] You need %d level to give M.Reset",
[2] = "[System] You need %d zen to give M.Reset",
[3] = "[System] You need %d points in strength",
[4] = "[System] You need %d points in Agility",
[5] = "[System] You need %d points on Vitality",
[6] = "[System] You need %d points in Energy",
[7] = "[System] You need to have %d resets to give M.Reset",
[8] = "[System] Master successfully reset!",
[9] = "[System] M.reset could not be performed",
[10] = "[System] You need %d points in LeaderShip",
[11] = "[Sistema] Você precisa de %d Cash para dar MR",
[16] = "[MasterReset] Você ganhou %d XP no BattlePass! (Total: %d)"
}

MRESETS_MESSAGES["Spn"] = {
[1] = "[Sistema] Necesitas %d nivel para dar M.Reset",
[2] = "[Sistema] Necesitas %d zen para dar M.Reset",
[3] = "[Sistema] Necesitas %d puntos de fuerza",
[4] = "[Sistema] Necesitas %d puntos en Agilidad",
[5] = "[Sistema] Necesitas %d puntos en Vitality",
[6] = "[Sistema] Necesitas %d puntos en energía",
[7] = "[Sistema] Debes tener %d restablecimientos para proporcionar M.Reset",
[8] = "¡[Sistema] Maestro se reinició correctamente!",
[9] = "[System] No se pudo realizar M.reset",
[10] = "[Sistema] Necesitas %d puntos en comando",
[11] = "[Sistema] Você precisa de %d Cash para dar MR",
[16] = "[MasterReset] Você ganhou %d XP no BattlePass! (Total: %d)"
}