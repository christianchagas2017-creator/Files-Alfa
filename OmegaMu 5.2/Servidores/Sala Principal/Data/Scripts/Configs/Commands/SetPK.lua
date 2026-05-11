SetPK_Config = {
    Enabled = true,

    UseLevel = 5,
    Command = {
        [1] = "/addpk",
        [2] = "/setpk",
        [3] = "/virarpk",
        [4] = "/pklevel",
    },

    Advanced = 6,
    SetAll = {
        [1] = "/addpkall",
        [2] = "/setpkall",
        [3] = "/virarpkall",
        [4] = "/pklevelall",
    },

    SetMap = {
        [1] = "/addpkmap",
        [2] = "/setpkmap",
        [3] = "/virarpkmap",
        [4] = "/pklevelmap",
    },

    Nicks = {
        [1] = "VITAS",
        [2] = "EuSouRica",
		[3] = "TestBK",
		[4] = "_",
    },
}

SET_PK_MESSAGES = { }

SET_PK_MESSAGES['Por'] = {
[1] = '[Sistema] O jogador [%s] não existe ou não está online',
[2] = '[Sistema] Coloque um valor válido de 1 á 6!',
[3] = '[Sistema] Level de PK Adicionado com Sucesso!',
[4] = '[Sistema] Coloque o numero do mapa correspondente!',
}

SET_PK_MESSAGES['Eng'] = {
[1] = '[System] Player [%s] does not exist or is not online',
[2] = '[System] Enter a valid value from 1 to 6!',
[3] = '[System] PK Level Added Successfully!',
[4] = '[System] Enter the corresponding map number!',
}

SET_PK_MESSAGES['Spn'] = {
[1] = '[Sistema] Player [%s] no existe o no está en línea',
[2] = '[Sistema] ¡Ingrese un valor válido de 1 a 6!',
[3] = '[Sistema] ¡Nivel PK agregado con éxito!',
[4] = '[Sistema] ¡Ingrese el número de mapa correspondiente!',
}

return SetPK_Config
