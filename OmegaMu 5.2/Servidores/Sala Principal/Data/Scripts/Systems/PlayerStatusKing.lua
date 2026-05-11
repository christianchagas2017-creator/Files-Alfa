PlayerStatusKing = {}

PlayerStatusKing.Players = {
    {Name = "Hardzin", Buff = 19},
}

function PlayerStatusKing.Init()
    GameServerFunctions.CharacterSet(PlayerStatusKing.CharacterSet)
end

function PlayerStatusKing.CharacterSet(aIndex)
    Timer.TimeOut(3, function(index)
        local player = User.new(index)
        if player:getConnected() == 3 then 
            local playerName = player:getName()
            
            for i, playerBuff in ipairs(PlayerStatusKing.Players) do
                if playerName == playerBuff.Name then
                    if CheckBuffPlayer(index, playerBuff.Buff) == 0 then
                        AddEffect(index, 0, playerBuff.Buff, 0, 0, 0, 0, 0)
                    end
                end
            end
        end
        player = nil
    end, aIndex)
end

PlayerStatusKing.Init()
return PlayerStatusKing