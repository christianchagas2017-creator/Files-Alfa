--[[ Switcher (Ativa e Desativa o passe) ]]
battlePassSwitch = true


battlePassPacket = 119

battlePassPacketName = "UtilsEnter_%s"

--[[ Comandos ]]
battlePassCommand = '/comprarpasse'
battlePassAddXPCommand = '/addexp' --== /addexp nome quantidade

battlePassTableCoin = 'MEMB_INFO'
battlePassColumnCoin = 'VCoin'
battlePassWhereCoin = 'memb___id'
battlePassNameCoin = 'VCoin'
battlePassAmountCoinVip = {}
battlePassAmountCoinVip = {
    [0] = 1,
    [1] = 1,
    [2] = 1
}

battlePassEndDate = {Day = 01, Month = 03, Year = 2026}

--======== CONFIGURAÇÃO DOS ITENS FREE 
battlePass_configItensDetailFree = {}
battlePass_configItensDetailFree[1] =  { ItemIndex = GET_ITEM(0, 2), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[2] =  { ItemIndex = GET_ITEM(0, 3), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[3] =  { ItemIndex = GET_ITEM(0, 4), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[4] =  { ItemIndex = GET_ITEM(0, 5), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[5] =  { ItemIndex = GET_ITEM(0, 6), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[6] =  { ItemIndex = GET_ITEM(0, 7), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}
battlePass_configItensDetailFree[7] =  { ItemIndex = GET_ITEM(0, 8), Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Reward Coin Gold',      Count = 1}


--======== CONFIGURAÇÃO DOS ITENS PREMIUM 
battlePass_configItensDetailPremium = {}
battlePass_configItensDetailPremium[1] =  { ItemIndex = GET_ITEM(0,  1),    Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[2] =  { ItemIndex = GET_ITEM(0,  20),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[3] =  { ItemIndex = GET_ITEM(0,  19),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[4] =  { ItemIndex = GET_ITEM(0,  18),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[5] =  { ItemIndex = GET_ITEM(0,  17),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[6] =  { ItemIndex = GET_ITEM(0,  16),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}
battlePass_configItensDetailPremium[7] =  { ItemIndex = GET_ITEM(0,  15),   Level = 0, Op1 = 0, Op2 = 0, Life = 0, Exc = 0, Ancient = 0, JoH = 0, SocketBonus = 255, Sock1 = 255, Sock2 = 255, Sock3 = 255, Sock4 = 255, Sock5 = 255, ItemTime = 0, DaysExpire = 30, Name = 'Archangel Box Reward', Count = 1}


--======== CONFIGURAÇÃO EXP, O LEVEL REPRESENTA PARA AMBAS ( FREE E PREMIUM )
battlePass_configXPFromLevel = {
	{Level = 1,  xpLevelPass = 10000},
	{Level = 2,  xpLevelPass = 20000},
	{Level = 3,  xpLevelPass = 30000},
	{Level = 4,  xpLevelPass = 40000},
	{Level = 5,  xpLevelPass = 50000},
	{Level = 6,  xpLevelPass = 60000},
	{Level = 7,  xpLevelPass = 70000},
}



battlePassMessages = {}
battlePassMessages['Por'] = {
    [1] = '%s Parabéns, Você Obteve o passe Premium',
    [2] = 'Alcance tudo o que quiser',
    [3] = 'E conquiste os melhores itens',
    [4] = 'Player %s não existe ou esta offiline',
    [5] = 'Você não possui %d de %s para comprar o passe.',
    [6] = 'Você já possui o Passe de Batalha  Premium'	
}

battlePassMessages['Eng'] = {
    [1] = '%s Parabéns, Você Obteve o passe Premium',
    [2] = 'Alcance tudo o que quiser',
    [3] = 'E conquiste os melhores itens',
    [4] = 'Player %s não existe ou esta offiline',
    [5] = 'Você não possui %d de %s para comprar o passe.',
    [6] = 'Você já possui o Passe de Batalha  Premium'
}

battlePassMessages['Spn'] = {
    [1] = '%s Parabéns, Você Obteve o passe Premium',
    [2] = 'Alcance tudo o que quiser',
    [3] = 'E conquiste os melhores itens',
    [4] = 'Player %s não existe ou esta offiline',
    [5] = 'Você não possui %d de %s para comprar o passe.',
    [6] = 'Você já possui o Passe de Batalha  Premium'	
}