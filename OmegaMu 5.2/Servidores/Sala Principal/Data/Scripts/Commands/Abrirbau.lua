function abrirbau(aIndex)
    local player = User.new(aIndex)
    local vip = player:getVip()

    if vip == 1 or vip == 2 then
        OpenWarehouse(aIndex, "")
    else
        SendMessage("Você precisa ser VIP para usar este comando", aIndex, 35)
    end
end

Commands.Register("/abrirbau", abrirbau)