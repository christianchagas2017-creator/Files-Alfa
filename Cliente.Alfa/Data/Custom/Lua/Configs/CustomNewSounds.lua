--[[
    M�ximo 50 novos sons
    ID: 932 até 981
    Path: local do arquivo, tem que ser .wav
    Channel: 1 a 4 (padrão 1)
    Enable3DSound: 0 ou 1 (padrão 0)
]]

OriginalSounds = {
    Wind         = 0,   --Vento
    Rain         = 1,   --Chuva
    Forest       = 2,   --Floresta
    Dungeon      = 3,   --Masmorra
    Title        = 4,   --Título
    Tower        = 5,   --Torre
    Water        = 6,   --Água
    Desert       = 7,   --Deserto
    Heaven       = 20,  --Céu
    Click        = 25,  --Clicar
    Error        = 26,  --Erro
    Menu         = 27,  --Menu
    Interface    = 28,  --Abrir Janelas (Interfaces)
    Get_Item     = 29,  --Pegar Item
    Drop_Item    = 30,  --Dropar Item
    Drop_Gold    = 31,  --Dropar Zen/Gold/Moeda
    Drink        = 32,  --Potando
    Eat_Apple    = 33,  --Comer Maça
    Heart        = 34,  --Coração
    Get_Energy   = 35,  --Energia (Parece aqueles grito de dragões)
    Shout        = 36,  --??
    Repair       = 37,  --Reparar Itens
    Whisper      = 38,  --Whisper/Sussurro
    Alert        = 39,  --Alertas
    Friend_Chat  = 40,  --Sistemas de Amigos
    Friend_Mail  = 41,  --Sistemas de Amigos
    Friend_Login = 41,  --Sistemas de Amigos
    Jewel        = 69,  --Jóias
    LevelUp      = 83,  --Upar Level
    Healing      = 84,  --Curando
    Medal        = 90,  --Medalha
    NPC          = 160, --NPC
    NPC_End      = 210, --NPC Fim
    Monster      = 210, --Monstros
    Monster_End  = 450, --Monstros Fim
}

NewSounds = {
    { Id = 940, Path = "Data\\Sound\\item_sound_purchase.wav", Channel = 1, Enable3DSound = 0 }, --COMPRAR
    { Id = 941, Path = "Data\\Sound\\item_sound_sell.wav",     Channel = 1, Enable3DSound = 0 }, --VENDER
}

function StartLoadSounds()
    for _, sound in ipairs(NewSounds) do
        LoadSound(sound.Id, sound.Path, sound.Channel, sound.Enable3DSound)
    end
end
