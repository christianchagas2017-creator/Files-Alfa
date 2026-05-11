DrawButton = {}
DrawInterface = {}
DrawScroll = {}

unpack = unpack or table.unpack

local SmallNormal          = {0.008, 0.002, 0.83, 0.20, 1, 1, 1.0}
local SmallHover           = {0.008, 0.213, 0.83, 0.20, 1, 1, 1.0}
local SmallPressed         = {0.008, 0.429, 0.83, 0.20, 1, 1, 1.0}
local SmallDisable         = {0.008, 0.002, 0.83, 0.20, 1, 1, 0.5}

local MediumNormal         = {0.002, 0.002, 0.95, 0.20, 1, 1, 1.0}
local MediumHover          = {0.002, 0.213, 0.95, 0.20, 1, 1, 1.0}
local MediumPressed        = {0.002, 0.429, 0.95, 0.20, 1, 1, 1.0}
local MediumDisable        = {0.002, 0.002, 0.95, 0.20, 1, 1, 0.5}

local LargeNormal          = {0.002, 0.002, 0.775, 0.20, 1, 1, 1.0}
local LargeHover           = {0.002, 0.213, 0.775, 0.20, 1, 1, 1.0}
local LargePressed         = {0.002, 0.429, 0.775, 0.20, 1, 1, 1.0}
local LargeDisable         = {0.002, 0.002, 0.775, 0.20, 1, 1, 0.5}

local ColorNormal          = {0.002, 0.002, 0.623, 0.20, 1, 1, 1.0}
local ColorHover           = {0.002, 0.213, 0.623, 0.20, 1, 1, 1.0}
local ColorPressed         = {0.002, 0.429, 0.623, 0.20, 1, 1, 1.0}
local ColorDisable         = {0.002, 0.002, 0.623, 0.20, 1, 1, 0.5}

local ScrollNormal         = {0.002, 0.002, 0.6865456, 0.1695056, 1, 1, 1.0}
local ScrollHover          = {0.002, 0.174, 0.6865456, 0.1695056, 1, 1, 1.0}
local ScrollPressed        = {0.002, 0.345, 0.6865456, 0.1695056, 1, 1, 1.0}
local ScrollDisable        = {0.002, 0.002, 0.6865456, 0.1695056, 1, 1, 0.5}

local ScrollBarNormal      = {0.002, 0.002, 0.170, 0.733651, 1, 1, 1.0}
local ScrollBarHover       = {0.174, 0.002, 0.170, 0.733651, 1, 1, 1.0}
local ScrollBarPressed     = {0.345, 0.002, 0.170, 0.733651, 1, 1, 1.0}
local ScrollBarDisable     = {0.002, 0.002, 0.170, 0.733651, 1, 1, 0.5}

local ScrollMiddleNormal   = {0.002, 0.002, 0.170, 0.524651, 1, 1, 1.0}
local ScrollMiddleHover    = {0.174, 0.002, 0.170, 0.524651, 1, 1, 1.0}
local ScrollMiddlePressed  = {0.345, 0.002, 0.170, 0.524651, 1, 1, 1.0}
local ScrollMiddleDisable  = {0.002, 0.002, 0.170, 0.524651, 1, 1, 0.5}

local ChatNormal           = {0.005, 0.003, 0.522556, 0.2589165, 1, 1, 1.0}
local ChatHover            = {0.005, 0.2672, 0.522556, 0.2589165, 1, 1, 1.0}
local ChatPressed          = {0.005, 0.5333, 0.522556, 0.2589165, 1, 1, 1.0}
local ChatDisable          = {0.005, 0.003, 0.522556, 0.2589165, 1, 1, 1.0}

--#region SCROLL
function DrawScroll.Up(state, x, y, w, h)
    local button = 40016
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ScrollNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ScrollHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ScrollPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ScrollDisable))
    end
end

function DrawScroll.Down(state, x, y, w, h)
    local button = 40017
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ScrollNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ScrollHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ScrollPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ScrollDisable))
    end
end

function DrawScroll.Bar(state, x, y, w, h)
    local button = 40018
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ScrollBarNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ScrollBarHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ScrollBarPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ScrollBarDisable))
    end
end

function DrawScroll.Middle(state, x, y, w, h)
    local button = 40019
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ScrollMiddleNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ScrollMiddleHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ScrollMiddlePressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ScrollMiddleDisable))
    end
end
--#endregion

--#region BUTONS
function DrawButton.Menu(state, x, y, w, h)
    local button = 600074
    if state == 0 then
        RenderImage2(button, x, y, w, h, 0.002, 0.001, 0.575, 0.21, 1, 1, 1.0)
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, 0.002, 0.21, 0.575, 0.21, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, 0.002, 0.419, 0.575, 0.21, 1, 1, 1.0)
    else
        RenderImage2(button, x, y, w, h, 0.002, 0.0, 0.575, 0.21, 1, 1, 0.3)
    end
end

function DrawButton.Large(state, x, y, w, h)
    local button = 40020
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(LargeNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(LargeHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(LargePressed))
    else
        RenderImage2(button, x, y, w, h, unpack(LargeDisable))
    end

end



function DrawButton.LargeRed(state, x, y, w, h)
    local button = 40007
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(LargeNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(LargeHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(LargePressed))
    else
        RenderImage2(button, x, y, w, h, unpack(LargeDisable))
    end

end

function DrawButton.Medium(state, x, y, w, h)
    local button = 40021
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end

end

function DrawButton.Ok(state, x, y, w, h)
    local button = 600107
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Cancel(state, x, y, w, h)
    Image = {
        ["Por"] = {
            [1] = 600108,
        },

        ["Eng"] = {
            [1] = 600109,
        },

        ["Spn"] = {
            [1] = 600108,
        },
    }

    local language = GetLanguage()
    local button = Image[language][1]

    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Confirm(state, x, y, w, h)
    Image = {
        ["Por"] = {
            [1] = 600110,
        },

        ["Eng"] = {
            [1] = 600111,
        },

        ["Spn"] = {
            [1] = 600110,
        },
    }

    local language = GetLanguage()
    local button = Image[language][1]

    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Exit(state, x, y, w, h)

    Image = {
        ["Por"] = {
            [1] = 600112,
        },

        ["Eng"] = {
            [1] = 600113,
        },

        ["Spn"] = {
            [1] = 600114,
        },
    }

    local language = GetLanguage()
    local button = Image[language][1]

    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Open(state, x, y, w, h)

    Image = {
        ["Por"] = {
            [1] = 600116,
        },

        ["Eng"] = {
            [1] = 600117,
        },

        ["Spn"] = {
            [1] = 600116,
        },
    }

    local language = GetLanguage()
    local button = Image[language][1]

    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Back(state, x, y, w, h)

    Image = {
        ["Por"] = {
            [1] = 600118,
        },

        ["Eng"] = {
            [1] = 600119,
        },

        ["Spn"] = {
            [1] = 600120,
        },
    }

    local language = GetLanguage()
    local button = Image[language][1]

    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(MediumNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(MediumHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(MediumPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(MediumDisable))
    end
end

function DrawButton.Small(state, x, y)
    local button = 600042
    if state == 0 then
        RenderImage2(button, x, y, 25, 24, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, 25, 24, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, 25, 24, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, 25, 24, unpack(SmallDisable))
    end
end

function DrawButton.Close(state, x, y, w, h)
    local button = 40022
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Next(state, x, y, w, h)
    local button = 40023
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Previous(state, x, y, w, h)
    local button = 40024
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.ArrowLeft(state, x, y, w, h)
    local button = 40025
	
    if state == 0 then
        RenderImage2(button, x, y, w, h, 0.008, 0.002, 0.83, 0.20, 1, 1, 0.0)
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, 0.008, 0.213, 0.83, 0.20, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, 0.008, 0.429, 0.83, 0.20, 1, 1, 1.0)
    else
        RenderImage2(button, x, y, w, h, 0.008, 0.002, 0.83, 0.20, 1, 1, 0.5)
    end
end

function DrawButton.ArrowRight(state, x, y, w, h)
    local button = 40026
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Visible(state, x, y, w, h)
    local button = 600100
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Invisible(state, x, y, w, h)
    local button = 40044
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Hidden(state, x, y, w, h)
    local button = 40064
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ChatNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ChatHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ChatPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ChatDisable))
    end
end

function DrawButton.Unhidden(state, x, y, w, h)
    local button = 40064
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ChatNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ChatHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ChatPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ChatDisable))
    end
end

function DrawButton.Reload(state, x, y, w, h)
    local button = 600102
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Reload2(state, x, y, w, h)
    local button = 600103
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.MenuSmall(state, x, y, w, h)
    local button = 600015
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Settings(state, x, y, w, h)
    local button = 600029
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Search(state, x, y, w, h)
    local button = 600018
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.News(state, x, y, w, h)
    local button = 600034
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Shop(state, x, y, w, h)
    local button = 600106
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Info(state, x, y, w, h)
    local button = 40049
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Discord(state, x, y, w, h)
    local button = 600024
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end



function DrawButton.Resgate(state, x, y, w, h)
    local button = 40031
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Infos(state, x, y, w, h)
    local button = 40059
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Locked(state, x, y, w, h)
    local button = 40048
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.UnLocked(state, x, y, w, h)
    local button = 40049
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.ActionHouse(state, x, y, w, h)
    local button = 600104
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.AutoPotion(state, x, y, w, h)
    local button = 600014
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Mais(state, x, y, w, h)
    local button = 40027
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Menos(state, x, y, w, h)
    local button = 40028
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Mais_Grande(state, x, y, w, h)
    local button = 40029
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(LargeNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(LargeHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(LargePressed))
    else
        RenderImage2(button, x, y, w, h, unpack(LargeDisable))
    end

end

function DrawButton.Menos_Grande(state, x, y, w, h)
    local button = 4003033
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(LargeNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(LargeHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(LargePressed))
    else
        RenderImage2(button, x, y, w, h, unpack(LargeDisable))
    end

end

function DrawButton.Backe(state, x, y, w, h)
    local button = 40030
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.PlusMais(state, x, y, w, h)
    local button = 600032
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.PlusMenos(state, x, y, w, h)
    local button = 600061
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Red(state, x, y, w, h)
    local button = 40031
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ColorNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ColorHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ColorPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ColorDisable))
    end

end

function DrawButton.Red2(state, x, y, w, h)
    local button = 40031
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ColorNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ColorHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ColorPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ColorDisable))
    end

end

function DrawButton.Purple(state, x, y, w, h)
    local button = 600079
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ColorNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ColorHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ColorPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ColorDisable))
    end

end

function DrawButton.Purple2(state, x, y, w, h)
    local button = 600080
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(ColorNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(ColorHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(ColorPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(ColorDisable))
    end

end

function DrawButton.CheckBox(Checked, x, y, w, h)
    local button = 600045
    if Checked then
        RenderImage2(button, x, y, w, h, 0.0151, 0.031, 0.7232442, 0.33723, 1, 1, 1.0)
    else
        RenderImage2(button, x, y, w, h, 0.0151, 0.4223, 0.7232442, 0.33723, 1, 1, 1.0)
    end
end

function DrawButton.CheckBoxOn(state, x, y, w, h)
    local button = 600085
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.CheckBoxOff(state, x, y, w, h)
    local button = 600086
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

function DrawButton.Ranking(state, x, y, w, h)
    local button = 40032
    if state == 0 then
        RenderImage2(button, x, y, w, h, unpack(SmallNormal))
    elseif state == 1 then
        RenderImage2(button, x, y, w, h, unpack(SmallHover))
    elseif state == 2 then
        RenderImage2(button, x, y, w, h, unpack(SmallPressed))
    else
        RenderImage2(button, x, y, w, h, unpack(SmallDisable))
    end
end

--#endregion

--#region INTERFACES
function DrawInterface.ScrollBar(x, y, w, h)
    RenderImage2(40033, x, y, w, 3, 0.002, 0.03023, 0.6026349, 0.558239, 1, 1, 1.0)
	RenderImage2(40034, x, y+3, w, h, 0.002, 0.03023, 0.6026349, 0.908239, 1, 1, 1.0)
	RenderImage2(40035, x, y+h, w, 3, 0.002, 0.07023, 0.6026349, 0.558239, 1, 1, 1.0)
end

function DrawInterface.ScrollBall(state, x, y, w, h)
    if state == 0 then
        RenderImage2(40036, x-4, y, w, h, 0.0,0.01, 0.6823348,0.6943348, 1, 1, 1.0)
    else
        RenderImage2(40037, x-4, y, w, h, 0.0,0.01, 0.6823348,0.6943348, 1, 1, 1.0)
    end
end

function DrawInterface.Information(x, y, w, h)
    RenderImage2(40038, x, y, w, h, 0.002, 0.005, 0.9887437, 0.6215416, 1, 1, 1.0)
end

function DrawInterface.TradeLine(x, y)
    RenderImage2(40039, x+0.7, y, 173.3, 10, 0.002, 0.003, 0.78488, 0.72, 1, 1, 1.0)
end

function DrawInterface.TradeLine2(x, y)
    RenderImage2(40039, x+0.5, y, 181.5, 10, 0.000, 0.010, 0.78888, 0.72, 1, 1, 1.0)
end

function DrawInterface.InterfaceLateral(state)
    local offset = WindowGetWidth()-640
    if state == 0 then
        RenderImage2(40046, 450+offset, 0, 191, 429, 0.0, 0.0, 0.83, 0.935, 1, 1, 1.0)
    else
        RenderImage2(40046, 260+offset, 0, 191, 429, 0.0, 0.0, 0.83, 0.935, 1, 1, 1.0)
    end
end

function DrawInterface.TextBox(state, x, y, w, h)
    if state == 0 then
        RenderImage2(600064, x, y, w, h, 0.002, 0.002, 1.0, 0.731651, 1, 1, 1.0)
    else
        RenderImage2(600064, x, y, w, h, 0.002, 0.002, 1.0, 0.731651, 1, 1, 0.5)
    end
end

function DrawInterface.TextBox2(state, x, y, w, h)
    if state == 0 then
        RenderImage2(40045, x, y, w, h, 0.002, 0.008, 0.640, 0.813956, 1, 1, 1.0)
    else
        RenderImage2(40045, x, y, w, h, 0.002, 0.008, 0.640, 0.813956, 1, 1, 0.5)
    end
end

function DrawInterface.TextBox3(state, x, y, w, h)
    if state == 0 then
        RenderImage2(600066, x, y, w, h, 0.002, 0.002, 0.622, 0.5518956, 1, 1, 1.0)
    else
        RenderImage2(600066, x, y, w, h, 0.002, 0.002, 0.622, 0.5518956, 1, 1, 0.5)
    end
end

function DrawInterface.Container(transparent, x, y, w, h)
    if transparent then
        RenderImage2(600094, x, y, w, h, 0.002, 0.002, 0.575, 0.54, 1, 1, 1.0)
    else
        RenderImage2(600093, x, y, w, h, 0.002, 0.002, 0.575, 0.54, 1, 1, 1.0)
    end
end

function DrawInterface.InfoBox(title, x, y, w, h, transparent)
    local newH = (80 / 460)*w
    if not transparent then
        DisableAlphaBlend()
        SetBlend(1)
        glColor4f(0, 0, 0, 1.0)
        DrawBar(x, y, w, (newH*2)+(newH*h))
        SetBlend(1)
        EndDrawBar()
        EnableAlphaTest()
    end

    if title then
        RenderImage2(40040, x, y, w, newH, 0.001, 0.001, 0.89692983, 0.62088972, 1, 1, 1.0)
    else
        RenderImage2(40041, x, y, w, newH, 0.001, 0.001, 0.89692983, 0.62088972, 1, 1, 1.0)
    end
    local endY = y
    if h > 0 then
        for i = 1, h do
            endY = y+newH*i
            RenderImage2(40042, x, endY, w, newH+0.5, 0.001, 0.005, 0.89692983, 0.61988972, 1, 1, 1.0)
        end
    end
    RenderImage2(40043, x, endY+newH, w, newH, 0.001, 0.005, 0.89692983, 0.62088972, 1, 1, 1.0) 
end

function DrawInterface.ItemBox(transparent, x, y, w, h)
    if transparent then
        RenderImage2(40044, x, y, w, h, 0.002, 0.002, 0.6391351, 0.55768, 1, 1, 0.5)
    else
        RenderImage2(40044, x, y, w, h, 0.002, 0.002, 0.6391351, 0.55768, 1, 1, 1.0)
    end
end

--#endregion

return DrawButton, DrawInterface, DrawScroll