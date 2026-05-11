Draw = {}
Draw.Interface = {}
Draw.Button = {}

function Draw.Interface.DrawBox(x, y, w, h)
    DrawBar(x, y, w, 1)
    DrawBar(x, y+1, 1, h-2)
    DrawBar(x+w-1, y+1, 1, h-2)
    DrawBar(x, y+h-1, w, 1)
end

function Draw.Interface.Window(x, y, w, h, title)
    local image = 40000
    if title then
        image = 40001
    end

    RenderImage3(image, x, y, w, h, 0, 0, 1024, 805, 1)
end

function Draw.Interface.Side(x, y)
    RenderImage2(33001, x, y, 190, 429, 0.0, 0.0, 0.83, 0.935, 1, 1, 0.0)
end

function Draw.Interface.InfoBox(title, x, y, w, h, transparent, notdraw)
    local newH = (80 / 460)*w
    if notdraw == nil then
        if not transparent then
            DisableAlphaBlend()
            glColor4f(0, 0, 0, 1.0)
            DrawBar(x, y, w, (newH*2)+(newH*h))
            EndDrawBar()
            EnableAlphaTest()
        end
        
        if title then
            RenderImageAuto(31328, x, y, w, newH)
        else
            RenderImageAuto(31316, x, y, w, newH)
        end
    end

    local endY = y
    if h > 0 then
        for i = 1, h do
            endY = y+newH*i
            if notdraw == nil then
                RenderImageAuto(31317, x, endY, w, newH+0.5)
            end
        end
    end
    if notdraw == nil then
        RenderImageAuto(31318, x, endY+newH, w, newH)
    end

    return (newH*2)+(newH*h)
end

function Draw.Button.Small(image, x, y, w, h, state)
    if state == 0 then
        RenderImage2(image, x, y, w, h, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0)
    elseif state == 1 then
        RenderImage2(image, x, y, w, h, 0.008, 0.213, 0.83, 0.20, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(image, x, y, w, h, 0.008, 0.429, 0.83, 0.20, 1, 1, 1.0)
    else
        RenderImage2(image, x, y, w, h, 0.008, 0.002, 0.83, 0.20, 1, 1, 0.5)
    end
end

function Draw.Button.Medium(image, x, y, w, h, state)
    if state == 0 then
        RenderImage2(image, x, y, w, h, 0.002, 0.002, 0.95, 0.20, 1, 1, 1.0)
    elseif state == 1 then
        RenderImage2(image, x, y, w, h, 0.002, 0.213, 0.95, 0.20, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(image, x, y, w, h, 0.002, 0.429, 0.95, 0.20, 1, 1, 1.0)
    else
        RenderImage2(image, x, y, w, h, 0.002, 0.002, 0.95, 0.20, 1, 1, 0.5)
    end
end

function Draw.Button.Large(image, x, y, w, h, state)
    if state == 0 then
        RenderImage2(image, x, y, w, h, 0.002, 0.002, 0.775, 0.20, 1, 1, 1.0)
    elseif state == 1 then
        RenderImage2(image, x, y, w, h, 0.002, 0.213, 0.775, 0.20, 1, 1, 1.0)
    elseif state == 2 then
        RenderImage2(image, x, y, w, h, 0.002, 0.429, 0.775, 0.20, 1, 1, 1.0)
    else
        RenderImage2(image, x, y, w, h, 0.002, 0.002, 0.775, 0.20, 1, 1, 0.5)
    end
end

return Draw