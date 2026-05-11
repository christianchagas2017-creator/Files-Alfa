DamageSendColor = {}

function DamageSendColor.Init()
     Commands.Register("/damage", DamageSendColor.Command)
end

function DamageSendColor.Command(aIndex, Arguments)
    local player = User.new(aIndex)

    local amount = Cmd:getNumber(Arguments, 1)

    if amount <= 0 then
        amount = 1
    end

	local life = player:getLife() - amount
	--player:setLife(life)
	--LifeUpdate(aIndex, life)

	local mana = player:getMana() - amount
	player:setMana(mana)
	--ManaUpdate(aIndex, mana)

    if life <= 0 then
        KillPlayer(aIndex)
    else
        player:setLife((math.floor(life)))
        LifeUpdate(aIndex, life)
    end
	
	--DamageSend(aIndex, TargetIndex, isreflet, damage, damagetype, shieldDamage)
    --DamageSend(aIndex, aIndex, 0, amount, type, amount2)
end

DamageSendColor.Init()

return DamageSendColor