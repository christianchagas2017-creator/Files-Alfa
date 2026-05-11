SetBuff_Config = {
    Enabled = true,
    Advanced = 5,
    SetLevel = 1,

    Buff = {
        [1] = '/setbuff',
        [2] = '/addbuff',
    },

    Clear = {
        [1] = '/clearbuff',
        [2] = '/limparbuff',
    },

    ClearBuffAll = {
        [1] = '/clearbuffall',
        [2] = '/limparbuffall',
    },

    BuffsTable = {
        [1] =  1, --BUFFS ELF GREATER DAMAGE
        [2] =  2, --BUFFS ELF GREATER DEFENSE
        [3] =  3, --BUFFS ELF SHADOW
        [4] =  4, --BUFFS SM MANA SHIELD
        [5] =  9, --BUFFS AZUL GRATER MANA
        [6] =  8, --BUFFS BK GREATER LIFE
        [7] = 82, --BUFFS SM MAGIC CIRCLE
    },

    Nicks = {
        [1] = "VITAS",
        [2] = "EuSouRica",
    },

    Message = {
        ["Por"] = {
            [1] = "[Sistema] O jogador %s não existe ou não está online",
            [2] = "[Sistema] Você adicionou todos os buffs para o jogador %s",
            [3] = "[Sistema] Você removeu todos os buffs do player %s",
            [4] = "[Sistema] O Staff %s lhe presenteou com todos os buffs",
            [5] = "[Sistema] O Staff %s removeu todos os seus buffs",
            [6] = "[Sistema] Você removeu todos os seus buffs",
        },
        ["Eng"] = {
            [1] = "[System] Player %s does not exist or is not online",
            [2] = "[System] You have added all buffs for player %s",
            [3] = "[System] You removed all buffs from player %s",
            [4] = "[System] Staff %s gifted you with all buffs",
            [5] = "[System] Staff %s has removed all its buffs",
            [6] = "[System] You has removed all its buffs",
        },
        ["Spn"] = {
            [1] = "[Sistema] El jugador %s no existe o no está en línea",
            [2] = "[Sistema] Ha agregado todos los buffs para el jugador %s",
            [3] = "[Sistema] Eliminaste todos los buffs del jugador %s",
            [4] = "[Sistema] El Staff %s te regaló todos los buffs",
            [5] = "[Sistema] El Staff %s ha eliminado todos sus buffs",
            [6] = "[Sistema] Yo ha eliminado todos sus buffs",
        },
    }
}

return SetBuff_Config