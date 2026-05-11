Quest = {}

Quest.Info = {
    Animation = {
        ButtonOffsetY = 0,
        Timer = 0,
        Speed = 0.50
    },
    BarAnimation = {
        Timer = 0,
        Speed = 0.50,
        Direction = 1
    },
    LoadingIcons = {
        [1] = 40088, [2] = 40089, [3] = 40090, [4] = 40091, [5] = 40092,
        [6] = 40093, [7] = 40094, [8] = 40095, [9] = 40096
    },
    Pagination = { -- Novo controle de paginação
        CurrentPage = 1,
        Timer = 0,
        SwitchInterval = 5.0 -- Tempo em segundos para alternar páginas
    }
}

PosX = {
    GetNewPosX = function(calcTable, windowWidth)
        for res, values in pairs(calcTable) do
            if windowWidth <= res then
                return values
            end
        end
        return calcTable[1920] or {calcx = 0, soma = false}
    end,
    MakeNewValue = function(value, calcx, soma)
        if soma then
            return value + calcx
        else
            return value - calcx
        end
    end
}

local questCalcX = {
    [0600] = {calcx = 000, soma = true}, [0800] = {calcx = 000, soma = true},
    [1024] = {calcx = 000, soma = true}, [1280] = {calcx = 055, soma = false},
    [1360] = {calcx = 030, soma = true}, [1440] = {calcx = 055, soma = false},
    [1600] = {calcx = 030, soma = true}, [1680] = {calcx = 055, soma = false},
    [1920] = {calcx = 030, soma = true}
}

function Quest.Init()
    if Quest_Config.Enabled then
        InterfaceController.AfterMainProc(Quest.Interface)
        InterfaceController.ClientProtocol(Quest.Protocol)
        InterfaceController.MainProcWorldKey(Quest.KeyListener)
        InterfaceController.InterfaceClickEvent(Quest.ClickEvent)
        InterfaceController.UpdateProc(Quest.Update)
        InterfaceController.UpdateMouse(Quest.Update)
        InterfaceController.UpdateKey(Quest.Update)
        Quest.Define()
    end
end

function Quest.UpdateBarAnimation()
    Quest.Info.BarAnimation.Timer = Quest.Info.BarAnimation.Timer + Quest.Info.BarAnimation.Speed * Quest.Info.BarAnimation.Direction
    if Quest.Info.BarAnimation.Timer >= 100 then
        Quest.Info.BarAnimation.Timer = 100
        Quest.Info.BarAnimation.Direction = -1
    elseif Quest.Info.BarAnimation.Timer <= 0 then
        Quest.Info.BarAnimation.Timer = 0
        Quest.Info.BarAnimation.Direction = 1
    end
end

function Quest.UpdateAnimation()
    Quest.Info.Animation.Timer = Quest.Info.Animation.Timer + 0.02
    if Quest.Info.Animation.Timer >= 3.28 then
        Quest.Info.Animation.Timer = 0
    end
    Quest.Info.Animation.ButtonOffsetY = math.sin(Quest.Info.Animation.Timer) * 3
end

function Quest.Define()
    Quest_Config.QuestName = "Quest"
    Quest_Config.QuestDescription = "-"
    Quest_Config.QuestValidade = "-"
    Quest_Config.Objectives = {}
    Quest_Config.Rewards = {}
    Quest_Config.RewardEnabled = 1
    Quest_Config.AlertOpen = false
    Quest_Config.AlertType = 2
    Quest_Config.Button = {}
    Quest_Config.ButtonID = {
        fechar = 1, resgatar = 2, aba1 = 3, aba2 = 4, duvida = 5, guia = 6
    }
    Quest_Config.Aba = 1
    local addX = WindowGetWidthAdd()
    Quest_Config.Guia = {
        Visivel = false,
        PosX = 50+addX,
        PosY = 100,
        Largura = 320,
        Altura = 280,
        Opacidade = 1.0,
        Textos = {
            ["Por"] = {
                ["O Inicio de uma Jornada"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Você está Evoluindo Continue!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15h00 e 19h00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Um Novo Começo"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está protegida"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["Você é um ótimo Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["A Jornada está dificil!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Avance nobre Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está chegando ao fim"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Você é Digno!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                
                
                ["Você concluiu sua jornada!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                }

            },
            ["Eng"] = {
			                ["O Inicio de uma Jornada"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Você está Evoluindo Continue!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15h00 e 19h00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Um Novo Começo"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está protegida"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["Você é um ótimo Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["A Jornada está dificil!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Avance nobre Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está chegando ao fim"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Você é Digno!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                
                
                ["Você concluiu sua jornada!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                }
			},
            ["Spn"] = {
			                ["O Inicio de uma Jornada"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Você está Evoluindo Continue!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15h00 e 19h00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                ["Um Novo Começo"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está protegida"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["Você é um ótimo Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["A Jornada está dificil!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Avance nobre Guerreiro"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },
                
                ["A Jornada está chegando ao fim"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                ["Você é Digno!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                },

                
                
                ["Você concluiu sua jornada!"] = {
                    GuideInfos = {
                        {
                            Nome = "Kundun",
                            Mapa = "Losttower",
                            Coordenada = "197 - 100",
                            Horario = "15:00 e 19:00"
                        },
                        {
                            Nome = "Hell Maine",
                            Mapa = "Arena",
                            Coordenada = "62 - 115",
                            Horario = "16:00 e 20:00"
                        },
                        {
                            Nome = "Erohim",
                            Mapa = "Tarkan",
                            Coordenada = "31 - 227",
                            Horario = "13:00 e 21:00"
                        },
                        {
                            Nome = "Golden Derkon",
                            Mapa = "Lorencia, Noria, Devias e Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Golden Globin",
                            Mapa = "Noria",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Lizard King",
                            Mapa = "Atlans",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Castle Gate (Portão do BC)",
                            Mapa = "Blood Castle",
                            Coordenada = "Aleatória",
                            Horario = "Ocorre a cada 2 Horas"
                        },
                        {
                            Nome = "Golden Titan",
                            Mapa = "Devias",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Crust",
                            Mapa = "Icarus",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        
                        {
                            Nome = "Golden Devil",
                            Mapa = "Losttower",
                            Coordenada = "Aleatória",
                            Horario = "00:30, 01:30, 03:00, 04:30, 05:30, 07:00, 09:30, 12:30, 19:30 e 23:30"
                        },
                        {
                            Nome = "Joias",
                            Mapa = "As Joias, Jewel Of Soul , Bless , Life e Chaos Dropam de todos os monstros!",
                            Drop = "Todos Os Monstros Dropam Joias (Exceto Jewel Of Creation)",
                            DropsEspeciais = "Box Of Reward e BattlePass"
                        }
                    }
                }
			};
        }
    }
end

function Quest.CheckOpen()
    if UICustomInterface == Quest_Config.WindowID then return true else return false end
end

function Quest.Open()
    local windowsToClose = {UIInventory, UICharacter, UIParty, UIFriendList, UIMoveList, UIQuest, UIGuildNpc, UITrade, UIWarehouse, UIChaosBox, UICommandWindow, UIPetInfo, UIShop, UIStore, UIOtherStore, UIOptions, UIHelp, UIFastDial, UISkillTree, UINPC_Titus, UICashShop, UIFullMap, UINPC_Dialog, UIGensInfo, UINPC_Julia}
    for _, window in ipairs(windowsToClose) do
        CloseWindow(window)
    end
    UICustomInterface = Quest_Config.WindowID
    SetLockInterfaces()
end

function Quest.Close()
    UICustomInterface = 0
    Quest.Define()
    SetUnlockInterfaces()
end

function Quest.CreateButton(ButtonID, x, y, w, h)
    if Quest_Config.Button[ButtonID] == nil then
        table.insert(Quest_Config.Button, ButtonID)
        Quest_Config.Button[ButtonID] = {
            x = x, y = y, w = w, h = h, clicked = false, timer = 0
        }
    else
        Quest_Config.Button[ButtonID].x = x
        Quest_Config.Button[ButtonID].y = y
        Quest_Config.Button[ButtonID].w = w
        Quest_Config.Button[ButtonID].h = h
    end
end

function Quest.ButtonClicked(ButtonID)
    if Quest_Config.Button[ButtonID] == nil then return false end
    if Quest_Config.Button[ButtonID].clicked then
        if Quest_Config.Button[ButtonID].timer >= 2 then
            Quest_Config.Button[ButtonID].timer = 0
            Quest_Config.Button[ButtonID].clicked = false
            return false
        end
        Quest_Config.Button[ButtonID].timer = Quest_Config.Button[ButtonID].timer + 1
        return true
    end
    return false
end

function Quest.ButtonMouseOver(ButtonID, x, y)
    if Quest_Config.Button[ButtonID] == nil then return false end
    if x >= Quest_Config.Button[ButtonID].x and x <= (Quest_Config.Button[ButtonID].x+Quest_Config.Button[ButtonID].w) then
        if y >= Quest_Config.Button[ButtonID].y and y <= (Quest_Config.Button[ButtonID].y+Quest_Config.Button[ButtonID].h) then
            return true
        end
    end
    return false
end

function Quest.DrawAnimatedBorder(x, y, width, height)
    local progress = Quest.Info.BarAnimation.Timer / 100
    glColor4f(0.35, 0.35, 0.35, 0.9)
    DrawBar(x, y, width, 0.5)
    DrawBar(x, y + height, width, 0.5)
    DrawBar(x, y, 0.5, height)
    DrawBar(x + width, y, 0.5, height)
    glColor4f(1.0, 0.5, 0.2, 0.8)
    local effectWidthTop = width * progress
    DrawBar(x, y, effectWidthTop, 0.5)
    local effectWidthBottom = width * progress
    DrawBar(x + (width - effectWidthBottom), y + height, effectWidthBottom, 0.5)
    local effectHeightLeft = height * progress
    DrawBar(x, y, 0.5, effectHeightLeft)
    local effectHeightRight = height * progress
    DrawBar(x + width, y + (height - effectHeightRight), 0.5, effectHeightRight)
    EndDrawBar()
end

function Quest.RenderGuia()
    if not Quest_Config.Guia.Visivel then return end
    
    local guia = Quest_Config.Guia
    local lang = GetLanguage()
    local currentQuest = Quest_Config.QuestName
    local guideData = Quest_Config.Guia.Textos[lang][currentQuest] or {}
    local guideInfos = guideData.GuideInfos or {}
    
    EnableAlphaTest()
    SetBlend()
    
    -- Fundo da janela
    glColor4f(0.10, 0.10, 0.10, 0.95)
    DrawBar(guia.PosX, guia.PosY, guia.Largura, guia.Altura)
    
    -- Borda animada
    Quest.DrawAnimatedBorder(guia.PosX, guia.PosY, guia.Largura, guia.Altura)
    
    -- Título
    SetFontType(1)
    SetTextBg(0, 0, 0, 0)
    SetTextColor(255, 200, 0, 255)
    RenderText(guia.PosX + 10, guia.PosY + 10, currentQuest, guia.Largura - 20, 0)
    
    -- Subtítulo
    SetFontType(6)
    SetTextColor(0, 200, 255, 255)
    RenderText(guia.PosX + 10, guia.PosY + 30, "Guia de Instruções", guia.Largura - 20, 0)
    
    -- Conteúdo do guia
    if #guideInfos > 0 then
        local itemsPerPage = 3
        local totalPages = math.ceil(#guideInfos / itemsPerPage)
        local currentPage = Quest.Info.Pagination.CurrentPage
        local startIndex = (currentPage - 1) * itemsPerPage + 1
        local endIndex = math.min(startIndex + itemsPerPage - 1, #guideInfos)
        
        local yPos = guia.PosY + 50
        for i = startIndex, endIndex do
            local monstro = guideInfos[i]
            if monstro then
                -- Nome do monstro
                SetFontType(14)
                SetTextColor(255, 150, 0, 255)
                RenderText(guia.PosX + 15, yPos, monstro.Nome or "", guia.Largura - 25, 0)
                
                -- Informações
                SetFontType(17)
                SetTextColor(255, 255, 255, 190)
                
                local infoY = yPos + 15
                if monstro.Mapa then
                    RenderText(guia.PosX + 20, infoY, "Mapa: "..monstro.Mapa, guia.Largura - 30, 0)
                    infoY = infoY + 15
                end
                
                if monstro.Coordenada then
                    RenderText(guia.PosX + 20, infoY, "Coordenada: "..monstro.Coordenada, guia.Largura - 30, 0)
                    infoY = infoY + 15
                end
                
                if monstro.Horario then
                    RenderText(guia.PosX + 20, infoY, "Horário: "..monstro.Horario, guia.Largura - 30, 0)
                    infoY = infoY + 15
                end
                
                if monstro.Drop then
                    RenderText(guia.PosX + 20, infoY, "Drop: "..monstro.Drop, guia.Largura - 30, 0)
                    infoY = infoY + 15
                end
                
                if monstro.DropsEspeciais then
                    RenderText(guia.PosX + 20, infoY, "Drops Especiais: "..monstro.DropsEspeciais, guia.Largura - 30, 0)
                    infoY = infoY + 15
                end
                
                yPos = infoY + 10  -- Espaço entre itens
				RenderImageAuto(40097, 510, 55 + Quest.Info.Animation.ButtonOffsetY, 90, 90)
            end
        end
        
       -- -- Indicador de página
       -- SetFontType(0)
       -- SetTextColor(255, 255, 255, 255)
       -- RenderText(guia.PosX + guia.Largura - 50, guia.PosY + guia.Altura - 15, 
       --          string.format("Página %d/%d", currentPage, totalPages), 50, 1)
    else
        -- Mensagem quando não há informações
        SetFontType(0)
        SetTextColor(200, 200, 200, 255)
        RenderText(guia.PosX + 20, guia.PosY + 50, "Nenhuma informação disponível para esta quest.", guia.Largura - 30, 0)
    end
    
    EndDrawBar()
end

function Quest.Interface()
    Quest.UpdateAnimation()
    Quest.UpdateBarAnimation()
    Quest.RenderGuia()
    EnableAlphaTest()
    
    if not Quest.CheckOpen() then 
       local isHovering = CheckMouseIn(120, 30 + Quest.Info.Animation.ButtonOffsetY, 40, 40)
       if isHovering then
           glColor4f(1.1, 1.1, 1.1, 1.0)
           --DrawTooltip(120, 15 + Quest.Info.Animation.ButtonOffsetY, "Missões")
       else
           glColor4f(1.0, 1.0, 1.0, 1.0)
       end
       -- RenderImageAuto(40087, 120, 30 + Quest.Info.Animation.ButtonOffsetY, 35, 35)
       glColor4f(1.0, 1.0, 1.0, 1.0)
       return
    end
    
    local addX = WindowGetWidthAdd()
    local calcx = PosX.GetNewPosX(questCalcX, GetWindowWidth())
    
    -- Create buttons with responsive positioning
    Quest.CreateButton(Quest_Config.ButtonID.fechar, 470+addX, 384, 24, 24)
    local buttonResgatar = PosX.MakeNewValue(545+addX+56, calcx.calcx, calcx.soma) -- Adjusted to match layout
    Quest.CreateButton(Quest_Config.ButtonID.resgatar, buttonResgatar, 380, 70, 25)
    local buttonAba1 = PosX.MakeNewValue(473+addX+56, calcx.calcx, calcx.soma)
    Quest.CreateButton(Quest_Config.ButtonID.aba1, buttonAba1, 74, 68, 20)
    local buttonAba2 = PosX.MakeNewValue(543+addX+56, calcx.calcx, calcx.soma)
    Quest.CreateButton(Quest_Config.ButtonID.aba2, buttonAba2, 74, 68, 20)
    
    EnableAlphaTest()
    local image1 = PosX.MakeNewValue(450+addX+56, calcx.calcx, calcx.soma)
    RenderImageAuto(40046, image1, 0, 190, 429)
    RenderImageAuto(33032, 480+addX, 49, 130, 16)
    
    SetFontType(1)
    SetTextBg(0, 0, 0, 0)
    SetTextColor(255, 255, 255, 240)
    local text1 = PosX.MakeNewValue(545+addX+56, calcx.calcx, calcx.soma)
    RenderText3(text1, 9, Quest_Config.QuestName, 160, 8)
    SetFontType(0)
    SetTextColor(230, 230, 230, 240)
    RenderText3(text1, 19, Quest_Config.QuestDescription, 160, 8)
    SetFontType(0)
    SetTextBg(0, 0, 0, 0)
    SetTextColor(72, 240, 72, 255)
    RenderText3(text1, 52, Quest_Config.QuestValidade, 150, 8)
    
    DisableAlphaBlend()
    SetBlend()
    glColor4f(0.1, 0.1, 0.1, 0.8)
    local drawBar1 = PosX.MakeNewValue(470+addX+56, calcx.calcx, calcx.soma)
    DrawBar(drawBar1, 70, 150, 300)
    Quest.Info.BarAnimation.Width = 200
    glColor4f(0.35, 0.35, 0.35, 0.9)
    local barX = 278 + addX + 194
    local barYTop = 70
    local barYBottom = 370
    local barWidth = 150
    local barHeight = 300
    DrawBar(barX, barYTop, barWidth, 0.5)
    DrawBar(barX, barYBottom, barWidth, 0.5)
    DrawBar(barX, barYTop, 0.5, barHeight)
    DrawBar(barX + barWidth, barYTop, 0.5, barHeight)
    local progress = Quest.Info.BarAnimation.Timer / 100
    glColor4f(1.0, 0.5, 0.2, 0.8)
    local effectWidthTop = barWidth * progress
    DrawBar(barX, barYTop, effectWidthTop, 0.5)
    local effectWidthBottom = barWidth * progress
    DrawBar(barX + (barWidth - effectWidthBottom), barYBottom, effectWidthBottom, 0.5)
    local effectHeightLeft = barHeight * progress
    DrawBar(barX, barYTop, 0.5, effectHeightLeft)
    local effectHeightRight = barHeight * progress
    DrawBar(barX + barWidth, barYTop + (barHeight - effectHeightRight), 0.5, effectHeightRight)
    SetBlend()
    EndDrawBar()
    
    EnableAlphaTest()
    local image2 = PosX.MakeNewValue(470+addX+56, calcx.calcx, calcx.soma)
    local image3 = PosX.MakeNewValue(542+addX+56, calcx.calcx, calcx.soma)
    local image4 = PosX.MakeNewValue(617+addX+56, calcx.calcx, calcx.soma)
    SetFontType(13)
    SetTextBg(0, 0, 0, 0)
    
    if Quest_Config.Aba == 1 then
        if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba2, MousePosX(), MousePosY()) then
            SetTextColor(250, 250, 250, 255)
        else
            SetTextColor(250, 250, 250, 255)
        end
    else
        SetTextColor(250, 250, 250, 255)
        local text3 = PosX.MakeNewValue(580+addX+56, calcx.calcx, calcx.soma)
        RenderText3(text3, 79, Quest_Config.Texts[GetLanguage()][3], 150, 8)
        if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba1, MousePosX(), MousePosY()) then
            SetTextColor(250, 250, 250, 255)
        else
            SetTextColor(250, 250, 250, 255)
        end
        local text4 = PosX.MakeNewValue(508+addX+56, calcx.calcx, calcx.soma)
        RenderText3(text4, 79, Quest_Config.Texts[GetLanguage()][2], 150, 8)
    end
    
    -- Render "Fechar" (Close) button
    local btnState = 0
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.fechar, MousePosX(), MousePosY()) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnState = 2
        else
            btnState = 1
        end
    end
    DrawButton.Close(btnState, 470+addX, 393, 25, 24)
    
    -- Render "Duvida" (Info) button
    local btnDuvidaState = 0
    Quest.CreateButton(Quest_Config.ButtonID.duvida, 530+addX-30, 393, 25, 24)
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.duvida, MousePosX(), MousePosY()) then
        if CheckRepeatKey(Keys.LButton) == 1 then
            btnDuvidaState = 2
        else
            btnDuvidaState = 1
        end
        DrawTooltip(530+addX-30, 378, "Saiba Mais")
    end
    DrawButton.Info(btnDuvidaState, 530+addX-30, 393, 25, 24)

    -- == Render "Resgatar"
    StateResgatar = 0
    local isMouseOver = Quest.ButtonMouseOver(Quest_Config.ButtonID.resgatar, MousePosX(), MousePosY())
    if not Quest.ButtonClicked(Quest_Config.ButtonID.resgatar) then
        if isMouseOver then
            if not Quest_Config.m_ShowAlertWindow then
                if CheckRepeatKey(Keys.LButton) == 1 then
                    StateResgatar = 2  -- Pressed state
                else
                    StateResgatar = 1  -- Hover state
                end
            end
        end
    else
        StateResgatar = 0
    end
    DrawButton.LargeRed(StateResgatar, 530+addX, 392, 90, 25)   

    
    --== Render "Página 2" 
    local stateaba2 = 0
    Quest.CreateButton(Quest_Config.ButtonID.aba2, 545+addX, 70, 80, 25)
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba2, MousePosX(), MousePosY()) then
        if not Quest_Config.m_ShowAlertWindow then
            if CheckRepeatKey(Keys.LButton) == 1 then
                stateaba2 = 2
                if not Quest.ButtonClicked(Quest_Config.ButtonID.aba2) then
                    Quest_Config.Button[Quest_Config.ButtonID.aba2].clicked = true
                end
            else
                stateaba2 = 1
            end
        end
    end
    if Quest_Config.Button[Quest_Config.ButtonID.aba2].clicked and CheckRepeatKey(Keys.LButton) == 0 then
        Quest_Config.Button[Quest_Config.ButtonID.aba2].clicked = false
    end
    DrawButton.Large(stateaba2, 545+addX, 71, 75, 22)
    local text1 = PosX.MakeNewValue(580+addX+56, calcx.calcx, calcx.soma)
    RenderText3(text1+4, 77.5, Quest_Config.Texts[GetLanguage()][3], 150, 8)
    
    -- Render "Aba1" button
    local stateaba1 = 0
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba1, MousePosX(), MousePosY()) then
        if not Quest_Config.m_ShowAlertWindow then
            if CheckRepeatKey(Keys.LButton) == 1 then
                stateaba1 = 2
                if not Quest.ButtonClicked(Quest_Config.ButtonID.aba1) then
                    Quest_Config.Button[Quest_Config.ButtonID.aba1].clicked = true
                end
            else
                stateaba1 = 1
            end
        end
    end
    if Quest_Config.Button[Quest_Config.ButtonID.aba1].clicked and CheckRepeatKey(Keys.LButton) == 0 then
        Quest_Config.Button[Quest_Config.ButtonID.aba1].clicked = false
    end
    DrawButton.Large(stateaba1, 473+addX, 71, 69, 22)
    SetFontType(13)
    local text2 = PosX.MakeNewValue(508+addX+56, calcx.calcx, calcx.soma)
    RenderText3(text2, 79, Quest_Config.Texts[GetLanguage()][2], 150, 8)
    
    -- Render Objectives or Rewards
    local imageT = PosX.MakeNewValue(470+addX+56, calcx.calcx, calcx.soma)
    if Quest_Config.Aba == 1 then
        local startY = 102
        local itemHeight = 22
        for i, obj in ipairs(Quest_Config.Objectives) do
            local tx = PosX.MakeNewValue(480+addX+56, calcx.calcx, calcx.soma)
            local currentY = startY + ((itemHeight - 2) * (i-1))
            SetTextColor(255, 255, 255, 255)
            RenderText3(tx, currentY, obj.Name..":", 160, 1)
            if obj.Quantity.Have >= obj.Quantity.Need then
                local pulse = math.sin(Quest.Info.Animation.Timer * 3) * 0.3 + 0.7
                SetTextColor(72*pulse, 240*pulse, 72*pulse, 255)
            else
                SetTextColor(240, 150, 50, 255)
            end
            RenderText3(tx + 100, currentY, string.format("%d/%d", obj.Quantity.Have, obj.Quantity.Need), 60, 1)
            if obj.Quantity.Have >= obj.Quantity.Need then
                RenderImageAuto(40086, tx + 125, currentY-5, 16, 16)
            else
                glColor4f(1.0, 0.6, 0.2, 1.0)
                local frame = math.floor(Quest.Info.Animation.Timer * 2.8) % 9 + 1
                RenderImageAuto(Quest.Info.LoadingIcons[frame], tx + 125, currentY-1, 11, 11)
                glColor4f(1.0, 1.0, 1.0, 1.0)
            end
        end
    elseif Quest_Config.Aba == 2 then
        local stLine = 102
        if Quest_Config.Rewards and #Quest_Config.Rewards > 0 then
            for i, obj in ipairs(Quest_Config.Rewards) do
                if obj and obj.Quantity and obj.Name then
                    SetTextColor(103, 133, 240, 255)
                    local tx = PosX.MakeNewValue(480+addX+56, calcx.calcx, calcx.soma)
                    RenderText3(tx, stLine, string.format("%d - %s", obj.Quantity, obj.Name), 160, 1)
                    stLine = stLine + 12
                end
            end
        else
            SetTextColor(150, 150, 150, 255)
            local tx = PosX.MakeNewValue(480+addX+56, calcx.calcx, calcx.soma)
            RenderText3(tx, stLine, "Nenhuma recompensa disponível", 160, 1)
        end
    end
    
    -- Render "Resgatar" (Claim) button
    if Quest_Config.RewardEnabled == 1 then
        RenderImage2(40031, buttonResgatar+addX-230, 392, 90, 25, -0.005000, 0.211000, 0.629000, 0.205000, 1, 1, 0.0)
        if Quest.ButtonMouseOver(Quest_Config.ButtonID.resgatar, MousePosX(), MousePosY()) then
            if not Quest.ButtonClicked(Quest_Config.ButtonID.resgatar) then
                DisableAlphaBlend()
                SetBlend(1)
                glColor4f(0.0, 0.0, 0.0, 0.5)
                DrawBar(buttonResgatar+addX-230, 392, 90, 25)
                SetBlend(1)
                EndDrawBar()
                EnableAlphaTest()
            end
        end
        SetFontType(1)
        SetTextBg(0, 0, 0, 0)
        SetTextColor(255, 255, 255, 240)
        RenderText3(buttonResgatar + 26, 400, Quest_Config.Texts[GetLanguage()][4], 80, 8)
    else
        RenderImage2(40031, buttonResgatar+addX-230, 392, 90, 25, -0.005000, 0.002000, 0.629000, 0.205000, 1, 1, 0.0)
        EnableAlphaTest()
        SetFontType(1)
        SetTextBg(0, 0, 0, 0)
        SetTextColor(160, 160, 160, 240)
        RenderText3(buttonResgatar + 26, 400, Quest_Config.Texts[GetLanguage()][4], 80, 8)
    end
    
    -- Render Alert Window
    if Quest_Config.AlertOpen then
        EnableAlphaTest()
        local imageV = PosX.MakeNewValue(205+addX+56, calcx.calcx, calcx.soma)
        RenderImage2(40040, 190+addX, 77, 225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)
        RenderImage2(40063, 190+addX, 110, 225, 50, 0, 0, 0.93203125, 0.625, 1, 1, 1.0)
        if Quest_Config.AlertType == 2 then
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(250,217,0,255)
            local text1 = PosX.MakeNewValue(158+addX+56, calcx.calcx, calcx.soma)
            RenderText3(300+addX, 88, Quest_Config.Texts[GetLanguage()][5], 220, 8)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3(300+addX, 120, Quest_Config.Texts[GetLanguage()][6], 220, 8)
            RenderText3(300+addX, 130, Quest_Config.Texts[GetLanguage()][7], 220, 8)
        else
            SetFontType(1)
            SetTextBg(0,0,0,0)
            SetTextColor(250,10,0,255)
            local text1 = PosX.MakeNewValue(158+addX+56, calcx.calcx, calcx.soma)
            RenderText3(350+addX, text1, Quest_Config.Texts[GetLanguage()][9], 220, 8)
            SetFontType(0)
            SetTextColor(255,255,255,255)
            RenderText3(316+addX, 147, Quest_Config.Texts[GetLanguage()][10], 220, 8)
            RenderText3(316+addX, 147, Quest_Config.Texts[GetLanguage()][11], 220, 8)
        end
    end
end

function Quest.KeyListener(key)
    if not Quest.CheckOpen() then return end
    if key == Keys.Escape then
        Quest.Close()
        return true
    end
end

function Quest.ClickEvent()
    if not Quest.CheckOpen() then return end
    local x = MousePosX()
    local y = MousePosY()
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.fechar, x, y) then
        Quest.Close()
        return true
    end
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba1, x, y) then
        Quest_Config.Aba = 1
        return true
    end
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.aba2, x, y) then
        Quest_Config.Aba = 2
        return true
    end
    if Quest_Config.RewardEnabled == 1 then
        if Quest.ButtonMouseOver(Quest_Config.ButtonID.resgatar, x, y) then
            Quest_Config.Button[Quest_Config.ButtonID.resgatar].clicked = true
            local packetname = string.format("2-%s-%d", UserGetName(), UserGetIndex())
            CreatePacket(packetname, Quest_Config.Packet)
            SendPacket(packetname)
            ClearPacket(packetname)
            Quest.Close() -- Adiciona esta linha para fechar a interface após o resgate
            return true
        end
    end
    if Quest.ButtonMouseOver(Quest_Config.ButtonID.duvida, x, y) then
        Quest_Config.Guia.Visivel = not Quest_Config.Guia.Visivel
        return true
    end
    if Quest_Config.Guia.Visivel then
        if not (x >= Quest_Config.Guia.PosX and x <= Quest_Config.Guia.PosX + Quest_Config.Guia.Largura and
               y >= Quest_Config.Guia.PosY and y <= Quest_Config.Guia.PosY + Quest_Config.Guia.Altura) then
            Quest_Config.Guia.Visivel = false
            return true
        end
    end
end

function Quest.Update()
    Quest.UpdateAnimation()
    -- Atualizar temporizador de paginação
    if Quest_Config.Guia.Visivel then
        Quest.Info.Pagination.Timer = Quest.Info.Pagination.Timer + 0.02
        if Quest.Info.Pagination.Timer >= Quest.Info.Pagination.SwitchInterval then
            local lang = GetLanguage()
            local currentQuest = Quest_Config.QuestName
            local guideInfos = Quest_Config.Guia.Textos[lang][currentQuest] and Quest_Config.Guia.Textos[lang][currentQuest].GuideInfos or {}
            local totalPages = math.ceil(#guideInfos / 3)
            Quest.Info.Pagination.CurrentPage = Quest.Info.Pagination.CurrentPage % totalPages + 1
            Quest.Info.Pagination.Timer = 0
        end
    else
        Quest.Info.Pagination.Timer = 0
        Quest.Info.Pagination.CurrentPage = 1
    end
    
    if not Quest.CheckOpen() then 
        --local buttonX, buttonY = 120, 30 + Quest.Info.Animation.ButtonOffsetY
        --local buttonW, buttonH = 40, 40
        --if CheckMouseIn(buttonX, buttonY, buttonW, buttonH) then
        --    SetBlend()
        --    glColor4f(1.2, 1.2, 1.2, 1.0)
        --    RenderImageAuto(40082, buttonX, buttonY, buttonW, buttonH)
        --    glColor4f(1.0, 1.0, 1.0, 1.0)
        --    if CheckPressedKey(Keys.LButton) == 1 then
        --        DisableClickClient()
        --        Quest.RequestOpen()
        --        return true
        --    end
        --end
        return false
    end
    
    if Quest.CheckOpen() then
        DisableClickClient()
        if CheckPressedKey(Keys.Escape) ~= 0 and Quest_Config.Guia.Visivel then
            Quest_Config.Guia.Visivel = false
            return true
        end
    end
end

function Quest.RequestOpen()
    local PacketName = string.format("1-%s-%d", UserGetName(), UserGetIndex())
    CreatePacket(PacketName, Quest_Config.Packet)
    SendPacket(PacketName)
    ClearPacket(PacketName)
end

function Quest.CheckPacketName(PacketName, Id)
    local index = UserGetIndex()
    local name = UserGetName()
    if PacketName == string.format("%d-%s-%d", Id, name, index) then return true else return false end
end

function Quest.Protocol(Packet, PacketName)
    if Packet ~= Quest_Config.Packet then return end
    if Quest.CheckPacketName(PacketName, 1) then
        if not Quest.CheckOpen() then
            Quest_Config.RewardEnabled = GetBytePacket(PacketName, -1)
            local len = GetBytePacket(PacketName, -1)
            Quest_Config.QuestName = GetCharPacketLength(PacketName, -1, len)
            len = GetBytePacket(PacketName, -1)
            Quest_Config.QuestDescription = GetCharPacketLength(PacketName, -1, len)
            len = GetBytePacket(PacketName, -1)
            Quest_Config.QuestValidade = GetCharPacketLength(PacketName, -1, len)
            local qtd = GetBytePacket(PacketName, -1)
            for x = 1, qtd do
                local have = GetDwordPacket(PacketName, -1)
                local need = GetDwordPacket(PacketName, -1)
                len = GetBytePacket(PacketName, -1)
                local name = GetCharPacketLength(PacketName, -1, len)
                local req = {Quantity = {Have = have, Need = need}, Name = name}
                table.insert(Quest_Config.Objectives, req)
            end
            qtd = GetBytePacket(PacketName, -1)
            for x = 1, qtd do
                local have = GetDwordPacket(PacketName, -1)
                len = GetBytePacket(PacketName, -1)
                local name = GetCharPacketLength(PacketName, -1, len)
                local req = {Quantity = have, Name = name}
                table.insert(Quest_Config.Rewards, req)
            end
            ClearPacket(PacketName)
            Quest.Open()
            return true
        end
    end
    if Quest.CheckPacketName(PacketName, 3) then
        Quest_Config.AlertType = GetBytePacket(PacketName, -1)
        ClearPacket(PacketName)
        Quest_Config.AlertOpen = false
        return true
    end
end

Quest.Init()

return Quest