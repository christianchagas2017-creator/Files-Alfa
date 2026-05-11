PvpControl = {}

-- Cache para monitorar SD de players em party
local partyShieldCache = {}
local lastShieldCleanup = os.time()

function PvpControl.Init()
    if not PvpControl_Config.Enabled then return end

    GameServerFunctions.CharacterSet(PvpControl.CharacterSet)
    GameServerFunctions.PlayerCheckDamage(PvpControl.CheckDamage)
    GameServerFunctions.PlayerAttack(PvpControl.PlayerAttack)
    
    -- Timer para monitorar SD de players em party
    Timer.Interval(50, PvpControl.MonitorPartyShields)
    
    -- Registrar comando /status (descomente se quiser usar)
    -- Commands.Register("/status", PvpControl.CommandStatus)
end

function PvpControl.CharacterSet(aIndex)
    local player = User.new(aIndex)
    local pInv = Inventory.new(aIndex)

    local playerItens = {
        pInv:getIndex(0),
        pInv:getIndex(1),
        pInv:getIndex(2),
        pInv:getIndex(3),
        pInv:getIndex(4),
        pInv:getIndex(5),
        pInv:getIndex(6),
        pInv:getIndex(7),
        pInv:getIndex(8),
        pInv:getIndex(9),
        pInv:getIndex(10),
        pInv:getIndex(11),
        pInv:getIndex(236),
        pInv:getIndex(237),
        pInv:getIndex(238),
        pInv:getIndex(239),
        pInv:getIndex(240),
        pInv:getIndex(241),
        pInv:getIndex(242),
        pInv:getIndex(243),
        pInv:getIndex(244),
        pInv:getIndex(245),
        pInv:getIndex(246),
        pInv:getIndex(247),
        pInv:getIndex(248),
        pInv:getIndex(250)
    }

    -- Níveis dos itens em cada slot
    local playerItensLevel = {
        pInv:getLevel(0),
        pInv:getLevel(1),
        pInv:getLevel(2),
        pInv:getLevel(3),
        pInv:getLevel(4),
        pInv:getLevel(5),
        pInv:getLevel(6),
        pInv:getLevel(7),
        pInv:getLevel(8),
        pInv:getLevel(9),
        pInv:getLevel(10),
        pInv:getLevel(11),
        pInv:getLevel(236),
        pInv:getLevel(237),
        pInv:getLevel(238),
        pInv:getLevel(239),
        pInv:getLevel(240),
        pInv:getLevel(241),
        pInv:getLevel(242),
        pInv:getLevel(243),
        pInv:getLevel(244),
        pInv:getLevel(245),
        pInv:getLevel(246),
        pInv:getLevel(247),
        pInv:getLevel(248),
        pInv:getLevel(250)
    }

    pInv = nil

    -- Reset caches de dano
    player:setCacheInt("A_NormalDamage", 0)
    player:setCacheInt("A_PerfectDamage", 0)
    player:setCacheInt("A_ExcellentDamage", 0)
    player:setCacheInt("A_CriticalDamage", 0)
    player:setCacheInt("A_ReflectDamage", 0)
    player:setCacheInt("A_PoisonDamage", 0)

    player:setCacheInt("M_NormalDamage", 0)
    player:setCacheInt("M_PerfectDamage", 0)
    player:setCacheInt("M_ExcellentDamage", 0)
    player:setCacheInt("M_CriticalDamage", 0)
    player:setCacheInt("M_ReflectDamage", 0)
    player:setCacheInt("M_PoisonDamage", 0)
    
    -- Reset de DamageReduction (pode expandir se quiser resetar mais coisas)
    player:setUserTable(22, 0) -- DamageReduction

    for slot, item in ipairs(playerItens) do
        if item == -1 then goto continue end

        local itemCfg = PvpControl_Config.Itens[item]
        if itemCfg == nil then 
            goto continue 
        end

        local itemLevel = playerItensLevel[slot] or 0

        local addInfo = false
        
        -- Lógica de verificação de Visual
        if itemCfg.Visual == nil then 
            addInfo = true 
        elseif itemCfg.Visual == 0 then
            if slot <= 12 then addInfo = true end
        elseif itemCfg.Visual == 1 then
            if slot >= 13 then addInfo = true end
        elseif itemCfg.Visual == -1 then
            addInfo = true
        end

        if not addInfo then goto continue end
        
        ----------------------------------------------------------------
        -- ADD: mistura Add base com LevelAdd[itemLevel], se existir
        ----------------------------------------------------------------
        local effectiveAdd = itemCfg.Add

        if itemCfg.LevelAdd and itemCfg.LevelAdd[itemLevel] then
            effectiveAdd = {}
            -- copia Add base
            if itemCfg.Add then
                for k, v in pairs(itemCfg.Add) do
                    effectiveAdd[k] = v
                end
            end
            -- soma Add do level
            for k, v in pairs(itemCfg.LevelAdd[itemLevel]) do
                effectiveAdd[k] = (effectiveAdd[k] or 0) + v
            end
        end

        if effectiveAdd ~= nil then
            local config = effectiveAdd

            if config.Defense                       ~= nil and config.Defense ~= 0 then 
                player:setUserTable(2, player:getUserTable(2)+config.Defense)
            end
            if config.MissRate                      ~= nil and config.MissRate ~= 0 then 
                player:setUserTable(4, player:getUserTable(4)+config.MissRate)
            end
            if config.Life                          ~= nil and config.Life ~= 0 then 
                player:setUserTable(5, player:getUserTable(5)+config.Life)
            end
            if config.Mana                          ~= nil and config.Mana ~= 0 then 
                player:setUserTable(6, player:getUserTable(6)+config.Mana)
            end
            if config.PhysicSpeed                   ~= nil and config.PhysicSpeed ~= 0 then 
                player:setUserTable(13, player:getUserTable(13)+config.PhysicSpeed)
            end
            if config.MagicSpeed                    ~= nil and config.MagicSpeed ~= 0 then 
                player:setUserTable(14, player:getUserTable(14)+config.MagicSpeed)
            end
            if config.FullDamageReflectRate         ~= nil and config.FullDamageReflectRate ~= 0 then 
                player:setUserTable(19, player:getUserTable(19)+config.FullDamageReflectRate)
            end
            if config.AttackSuccessRate             ~= nil and config.AttackSuccessRate ~= 0 then 
                player:setUserTable(31, player:getUserTable(31)+config.AttackSuccessRate)
            end
            if config.DamageReduction               ~= nil and config.DamageReduction ~= 0 then 
                -- Limitar cada item individual a máximo 60% para evitar acúmulo extremo
                local itemReduction = config.DamageReduction
                if itemReduction > 60.0 then itemReduction = 60.0 end
                
                local currentReduction = player:getUserTable(22)
                local newReduction = currentReduction + itemReduction
                
                -- Limitar o total acumulado a 60%
                if newReduction > 60.0 then newReduction = 60.0 end
                
                player:setUserTable(22, newReduction)
            end
            if config.ShieldDamageReduction         ~= nil and config.ShieldDamageReduction ~= 0 then 
                player:setUserTable(23, player:getUserTable(23)+config.ShieldDamageReduction)
            end
            if config.ExcellentDamageRate           ~= nil and config.ExcellentDamageRate ~= 0 then 
                player:setUserTable(16, player:getUserTable(16)+config.ExcellentDamageRate)
            end
            if config.ResistExcellentDamageRate     ~= nil and config.ResistExcellentDamageRate ~= 0 then 
                player:setUserTable(17, player:getUserTable(17)+config.ResistExcellentDamageRate)
            end
            if config.DoubleDamageRate              ~= nil and config.DoubleDamageRate ~= 0 then 
                player:setUserTable(25, player:getUserTable(25)+config.DoubleDamageRate)
            end
            if config.ResistDoubleDamageRate        ~= nil and config.ResistDoubleDamageRate ~= 0 then 
                player:setUserTable(26, player:getUserTable(26)+config.ResistDoubleDamageRate)
            end
            if config.CriticalDamageRate            ~= nil and config.CriticalDamageRate ~= 0 then 
                player:setUserTable(28, player:getUserTable(28)+config.CriticalDamageRate)
            end
            if config.ResistCriticalDamageRate      ~= nil and config.ResistCriticalDamageRate ~= 0 then 
                player:setUserTable(29, player:getUserTable(29)+config.ResistCriticalDamageRate)
            end
            if config.TripleDamageRate              ~= nil and config.TripleDamageRate ~= 0 then 
                player:setUserTable(24, player:getUserTable(24)+config.TripleDamageRate)
            end
            if config.IgnoreShieldGaugeRate         ~= nil and config.IgnoreShieldGaugeRate ~= 0 then 
                player:setUserTable(32, player:getUserTable(32)+config.IgnoreShieldGaugeRate)
            end
            if config.ResistIgnoreShieldGaugeRate   ~= nil and config.ResistIgnoreShieldGaugeRate ~= 0 then 
                player:setUserTable(33, player:getUserTable(33)+config.ResistIgnoreShieldGaugeRate)
            end
            if config.NormalDamage                  ~= nil and config.NormalDamage ~= 0 then 
                player:setCacheInt("A_NormalDamage", player:getCacheInt("A_NormalDamage")+config.NormalDamage)
            end
            if config.PerfectDamage                 ~= nil and config.PerfectDamage ~= 0 then 
                player:setCacheInt("A_PerfectDamage", player:getCacheInt("A_PerfectDamage")+config.PerfectDamage)
            end
            if config.ExcellentDamage               ~= nil and config.ExcellentDamage ~= 0 then 
                player:setCacheInt("A_ExcellentDamage", player:getCacheInt("A_ExcellentDamage")+config.ExcellentDamage)
            end
            if config.CriticalDamage                ~= nil and config.CriticalDamage ~= 0 then 
                player:setCacheInt("A_CriticalDamage", player:getCacheInt("A_CriticalDamage")+config.CriticalDamage)
            end
            if config.ReflectDamage                 ~= nil and config.ReflectDamage ~= 0 then 
                player:setCacheInt("A_ReflectDamage", player:getCacheInt("A_ReflectDamage")+config.ReflectDamage)
            end
            if config.PoisonDamage                  ~= nil and config.PoisonDamage ~= 0 then 
                player:setCacheInt("A_PoisonDamage", player:getCacheInt("A_PoisonDamage")+config.PoisonDamage)
            end
        end

        ----------------------------------------------------------------
        -- MULTIPLY: mistura Multiply base com LevelMultiply[itemLevel]
        ----------------------------------------------------------------
        local effectiveMultiply = itemCfg.Multiply

        if itemCfg.LevelMultiply and itemCfg.LevelMultiply[itemLevel] then
            effectiveMultiply = {}
            if itemCfg.Multiply then
                for k, v in pairs(itemCfg.Multiply) do
                    effectiveMultiply[k] = v
                end
            end
            for k, v in pairs(itemCfg.LevelMultiply[itemLevel]) do
                effectiveMultiply[k] = (effectiveMultiply[k] or 0) + v
            end
        end

        if effectiveMultiply ~= nil then
            local config = effectiveMultiply

            if config.Defense                       ~= nil and config.Defense ~= 1.0 then 
                player:setUserTable(2, player:getUserTable(2)+((player:getUserTable(1)*config.Defense)-player:getUserTable(1)))
            end
            if config.MissRate                      ~= nil and config.MissRate ~= 1.0 then 
                player:setUserTable(4, player:getUserTable(4)+((player:getUserTable(3)*config.MissRate)-player:getUserTable(3)))
            end
            if config.Life                          ~= nil and config.Life ~= 1.0 then 
                player:setUserTable(5, player:getUserTable(5)+((player:getLife()*config.Life)-player:getLife()))
            end
            if config.Mana                          ~= nil and config.Mana ~= 1.0 then 
                player:setUserTable(6, player:getUserTable(6)+((player:getMana()*config.Mana)-player:getMana()))
            end
            if config.PhysicSpeed                   ~= nil and config.PhysicSpeed ~= 1.0 then 
                player:setUserTable(13, player:getUserTable(13)*config.PhysicSpeed)
            end
            if config.MagicSpeed                    ~= nil and config.MagicSpeed ~= 1.0 then 
                player:setUserTable(14, player:getUserTable(14)*config.MagicSpeed)
            end
            if config.FullDamageReflectRate         ~= nil and config.FullDamageReflectRate ~= 1.0 then 
                player:setUserTable(19, player:getUserTable(19)*config.FullDamageReflectRate)
            end
            if config.AttackSuccessRate             ~= nil and config.AttackSuccessRate ~= 1.0 then 
                player:setUserTable(31, player:getUserTable(31)*config.AttackSuccessRate)
            end
            if config.DamageReduction               ~= nil and config.DamageReduction ~= 1.0 then 
                player:setUserTable(22, player:getUserTable(22)*config.DamageReduction)
            end
            if config.ShieldDamageReduction         ~= nil and config.ShieldDamageReduction ~= 1.0 then 
                player:setUserTable(23, player:getUserTable(23)*config.ShieldDamageReduction)
            end
            if config.ExcellentDamageRate           ~= nil and config.ExcellentDamageRate ~= 1.0 then 
                player:setUserTable(16, player:getUserTable(16)*config.ExcellentDamageRate)
            end
            if config.ResistExcellentDamageRate     ~= nil and config.ResistExcellentDamageRate ~= 1.0 then 
                player:setUserTable(17, player:getUserTable(17)*config.ResistExcellentDamageRate)
            end
            if config.DoubleDamageRate              ~= nil and config.DoubleDamageRate ~= 1.0 then 
                player:setUserTable(25, player:getUserTable(25)*config.DoubleDamageRate)
            end
            if config.ResistDoubleDamageRate        ~= nil and config.ResistDoubleDamageRate ~= 1.0 then 
                player:setUserTable(26, player:getUserTable(26)*config.ResistDoubleDamageRate)
            end
            if config.CriticalDamageRate            ~= nil and config.CriticalDamageRate ~= 1.0 then 
                player:setUserTable(28, player:getUserTable(28)*config.CriticalDamageRate)
            end
            if config.ResistCriticalDamageRate      ~= nil and config.ResistCriticalDamageRate ~= 1.0 then 
                player:setUserTable(29, player:getUserTable(29)*config.ResistCriticalDamageRate)
            end
            if config.TripleDamageRate              ~= nil and config.TripleDamageRate ~= 1.0 then 
                player:setUserTable(24, player:getUserTable(24)*config.TripleDamageRate)
            end
            if config.IgnoreShieldGaugeRate         ~= nil and config.IgnoreShieldGaugeRate ~= 1.0 then 
                player:setUserTable(32, player:getUserTable(32)*config.IgnoreShieldGaugeRate)
            end
            if config.ResistIgnoreShieldGaugeRate   ~= nil and config.ResistIgnoreShieldGaugeRate ~= 1.0 then 
                player:setUserTable(33, player:getUserTable(33)*config.ResistIgnoreShieldGaugeRate)
            end
            if config.NormalDamage              ~= nil and config.NormalDamage > 0 then 
                player:setCacheInt("M_NormalDamage", player:getCacheInt("M_NormalDamage")+((config.NormalDamage - 1) * 10000))
            end
            if config.PerfectDamage             ~= nil and config.PerfectDamage > 0 then 
                player:setCacheInt("M_PerfectDamage", player:getCacheInt("M_PerfectDamage")+((config.PerfectDamage - 1) * 10000))
            end
            if config.ExcellentDamage           ~= nil and config.ExcellentDamage > 0 then 
                player:setCacheInt("M_ExcellentDamage", player:getCacheInt("M_ExcellentDamage")+((config.ExcellentDamage - 1) * 10000))
            end
            if config.CriticalDamage            ~= nil and config.CriticalDamage > 0 then 
                player:setCacheInt("M_CriticalDamage", player:getCacheInt("M_CriticalDamage")+((config.CriticalDamage - 1) * 10000))
            end
            if config.ReflectDamage             ~= nil and config.ReflectDamage > 0 then 
                player:setCacheInt("M_ReflectDamage", player:getCacheInt("M_ReflectDamage")+((config.ReflectDamage - 1) * 10000))
            end
            if config.PoisonDamage              ~= nil and config.PoisonDamage > 0 then 
                player:setCacheInt("M_PoisonDamage", player:getCacheInt("M_PoisonDamage")+((config.PoisonDamage - 1) * 10000))
            end
        end

        ::continue::
    end

    -- Verificar e aplicar combo de set (após processar todos os itens)
    PvpControl.CheckSetCombo(player, playerItens)

    player = nil
end

----------------------------------------------------------------
-- COMBO DE SET
----------------------------------------------------------------
function PvpControl.CheckSetCombo(player, playerItens)
    -- Verificar se existe configuração de combo de set
    if PvpControl_Config.SetCombo == nil then 
        return 
    end
    
    -- Verificar os slots corretos das 5 peças do set
    local helm   = playerItens[3]   -- getIndex(2)
    local armor  = playerItens[4]   -- getIndex(3)
    local pants  = playerItens[5]   -- getIndex(4)
    local gloves = playerItens[6]   -- getIndex(5)
    local boots  = playerItens[7]   -- getIndex(6)
    
    -- Verificar se os itens são válidos (diferentes de -1)
    if helm == -1 or armor == -1 or pants == -1 or gloves == -1 or boots == -1 then
        return
    end
    
    -- Extrair ID base dos itens usando a fórmula: ID_base = index % 512
    local helmId   = helm   % 512
    local armorId  = armor  % 512
    local pantsId  = pants  % 512
    local glovesId = gloves % 512
    local bootsId  = boots  % 512
    
    -- Verificar todos os sets configurados
    for setId, setConfig in pairs(PvpControl_Config.SetCombo) do
        local countSet = 0
        
        -- Verificar se o mesmo ID base está equipado nas 5 peças do set
        if helmId   == setId then countSet = countSet + 1 end
        if armorId  == setId then countSet = countSet + 1 end
        if pantsId  == setId then countSet = countSet + 1 end
        if glovesId == setId then countSet = countSet + 1 end
        if bootsId  == setId then countSet = countSet + 1 end
        
        -- Se todas as 5 peças do set estão equipadas, verificar Visual e aplicar bônus
        if countSet >= 5 then
            local addInfo = false
            if setConfig.Visual == nil then 
                addInfo = true 
            elseif setConfig.Visual == 0 then
                addInfo = true -- Sempre aplica para sets equipados
            elseif setConfig.Visual == 1 then
                addInfo = false -- Não aplica para sets equipados (apenas visual)
            elseif setConfig.Visual == -1 then
                addInfo = true -- Aplica para ambos
            end
            
            if not addInfo then
                goto continue
            end
            
            if setConfig.ComboBonus then
                local bonus = setConfig.ComboBonus
                
                -- Aplicar bônus aditivos
                if bonus.Add then
                    if bonus.Add.Life then
                        player:setUserTable(5, player:getUserTable(5) + bonus.Add.Life)
                    end
                    if bonus.Add.Defense then
                        player:setUserTable(2, player:getUserTable(2) + bonus.Add.Defense)
                    end
                    if bonus.Add.ExcellentDamageRate then
                        player:setUserTable(16, player:getUserTable(16) + bonus.Add.ExcellentDamageRate)
                    end
                    if bonus.Add.CriticalDamageRate then
                        player:setUserTable(28, player:getUserTable(28) + bonus.Add.CriticalDamageRate)
                    end
                    if bonus.Add.AttackSuccessRate then
                        player:setUserTable(31, player:getUserTable(31) + bonus.Add.AttackSuccessRate)
                    end
                    if bonus.Add.MissRate then
                        local newMissRate = player:getUserTable(4) + bonus.Add.MissRate
                        if newMissRate > 1000000 then newMissRate = 1000000 end
                        player:setUserTable(4, newMissRate)
                    end
                    if bonus.Add.PhysicSpeed then
                        player:setUserTable(13, player:getUserTable(13) + bonus.Add.PhysicSpeed)
                    end
                    if bonus.Add.MagicSpeed then
                        player:setUserTable(14, player:getUserTable(14) + bonus.Add.MagicSpeed)
                    end
                    if bonus.Add.FullDamageReflectRate then
                        player:setUserTable(19, player:getUserTable(19) + bonus.Add.FullDamageReflectRate)
                    end
                    if bonus.Add.DamageReduction then
                        player:setUserTable(22, player:getUserTable(22) + bonus.Add.DamageReduction)
                    end
                    if bonus.Add.ShieldDamageReduction then
                        player:setUserTable(23, player:getUserTable(23) + bonus.Add.ShieldDamageReduction)
                    end
                    if bonus.Add.ResistExcellentDamageRate then
                        player:setUserTable(17, player:getUserTable(17) + bonus.Add.ResistExcellentDamageRate)
                    end
                    if bonus.Add.DoubleDamageRate then
                        player:setUserTable(25, player:getUserTable(25) + bonus.Add.DoubleDamageRate)
                    end
                    if bonus.Add.ResistDoubleDamageRate then
                        player:setUserTable(26, player:getUserTable(26) + bonus.Add.ResistDoubleDamageRate)
                    end
                    if bonus.Add.ResistCriticalDamageRate then
                        player:setUserTable(29, player:getUserTable(29) + bonus.Add.ResistCriticalDamageRate)
                    end
                    if bonus.Add.TripleDamageRate then
                        player:setUserTable(24, player:getUserTable(24) + bonus.Add.TripleDamageRate)
                    end
                    if bonus.Add.IgnoreShieldGaugeRate then
                        player:setUserTable(32, player:getUserTable(32) + bonus.Add.IgnoreShieldGaugeRate)
                    end
                    if bonus.Add.ResistIgnoreShieldGaugeRate then
                        player:setUserTable(33, player:getUserTable(33) + bonus.Add.ResistIgnoreShieldGaugeRate)
                    end
                    if bonus.Add.NormalDamage then
                        player:setCacheInt("A_NormalDamage", player:getCacheInt("A_NormalDamage") + bonus.Add.NormalDamage)
                    end
                    if bonus.Add.ExcellentDamage then
                        player:setCacheInt("A_ExcellentDamage", player:getCacheInt("A_ExcellentDamage") + bonus.Add.ExcellentDamage)
                    end
                    if bonus.Add.CriticalDamage then
                        player:setCacheInt("A_CriticalDamage", player:getCacheInt("A_CriticalDamage") + bonus.Add.CriticalDamage)
                    end
                    if bonus.Add.ReflectDamage then
                        player:setCacheInt("A_ReflectDamage", player:getCacheInt("A_ReflectDamage") + bonus.Add.ReflectDamage)
                    end
                    if bonus.Add.PoisonDamage then
                        player:setCacheInt("A_PoisonDamage", player:getCacheInt("A_PoisonDamage") + bonus.Add.PoisonDamage)
                    end
                end
                
                -- Aplicar bônus multiplicativos
                if bonus.Multiply then
                    if bonus.Multiply.NormalDamage then
                        local bonusMultiplier = (bonus.Multiply.NormalDamage - 1) * 10000
                        player:setCacheInt("M_NormalDamage", player:getCacheInt("M_NormalDamage") + bonusMultiplier)
                    end
                    if bonus.Multiply.CriticalDamage then
                        local bonusMultiplier = (bonus.Multiply.CriticalDamage - 1) * 10000
                        player:setCacheInt("M_CriticalDamage", player:getCacheInt("M_CriticalDamage") + bonusMultiplier)
                    end
                    if bonus.Multiply.ExcellentDamage then
                        local bonusMultiplier = (bonus.Multiply.ExcellentDamage - 1) * 10000
                        player:setCacheInt("M_ExcellentDamage", player:getCacheInt("M_ExcellentDamage") + bonusMultiplier)
                    end
                end
            end
        end
        ::continue::
    end
end

----------------------------------------------------------------
-- CHECK DAMAGE (com proteção pra nunca retornar nil)
----------------------------------------------------------------
function PvpControl.CheckDamage(aIndex, TargetIndex, Damage, DamageType)
    -- Normalizar Damage pra evitar nil
    if type(Damage) ~= "number" then
        Damage = 1
    end
    if Damage < 0 then
        Damage = 1
    end

    local newDamage = Damage

    if aIndex == nil or TargetIndex == nil or DamageType == nil then
        return Damage or 1
    end

    if aIndex < 0 or TargetIndex < 0 then
        return Damage or 1
    end

    -- BLOQUEIO ENTRE PARTY (e proteção de shield)
    if aIndex ~= TargetIndex then
        local success, target = pcall(User.new, TargetIndex)
        if success and target ~= nil then
            local originalShield = target:getShield()
            local maxShield = target:getMaxShield()
            
            local party1 = -1
            local party2 = -1
            
            local success3, result3 = pcall(function()
                return User.new(aIndex):getPartyNumber()
            end)
            if success3 and result3 then party1 = result3 end
            
            local success4, result4 = pcall(function()
                return target:getPartyNumber()
            end)
            if success4 and result4 then party2 = result4 end
            
            if party1 == -1 then
                local success5, result5 = pcall(function()
                    return User.new(aIndex):GetPartyNumber()
                end)
                if success5 and result5 then party1 = result5 end
            end
            
            if party2 == -1 then
                local success6, result6 = pcall(function()
                    return target:GetPartyNumber()
                end)
                if success6 and result6 then party2 = result6 end
            end
            
            if party1 == -1 then
                local success7, result7 = pcall(function()
                    return User.new(aIndex):getParty()
                end)
                if success7 and result7 then party1 = result7 end
            end
            
            if party2 == -1 then
                local success8, result8 = pcall(function()
                    return target:getParty()
                end)
                if success8 and result8 then party2 = result8 end
            end
            
            if party1 ~= -1 and party2 ~= -1 and party1 == party2 then
                partyShieldCache[TargetIndex] = {
                    originalShield = originalShield,
                    maxShield = maxShield,
                    timestamp = os.time()
                }
                
                if originalShield < maxShield and maxShield > 0 then
                    target:setShield(originalShield)
                    RefreshCharacter(TargetIndex)
                end
                
                SendMessage("Você não pode atacar membros da sua party!", aIndex, 2)
                
                target = nil
                return 0
            end
            target = nil
        end
    end

    local player = User.new(aIndex)
    if player == nil then
        return Damage or 1
    end

    -- MISS RATE
    if aIndex ~= TargetIndex then
        local success, target = pcall(User.new, TargetIndex)
        if success and target ~= nil then
            local successMiss, targetMissRate = pcall(target.getUserTable, target, 4)
            if successMiss and targetMissRate and targetMissRate > 0 then
                local limitedMissRate = math.min(targetMissRate, 1000000)
                local missChance = math.min(limitedMissRate / 1000, 100)
                local randomValue = math.random(1, 100)
                if randomValue <= missChance then
                    target = nil
                    return 0
                end
            end
            target = nil
        end
    end

    -- DANO CAUSADO
    local m_damage = 0
    local a_damage = 0

    if DamageType == 0 then
        m_damage = 1+(player:getCacheInt("M_NormalDamage")/10000)
        a_damage = player:getCacheInt("A_NormalDamage")
    elseif DamageType == 1 then
        m_damage = 1+(player:getCacheInt("M_PerfectDamage")/10000)
        a_damage = player:getCacheInt("A_PerfectDamage")
    elseif DamageType == 2 then
        m_damage = 1+(player:getCacheInt("M_ExcellentDamage")/10000)
        a_damage = player:getCacheInt("A_ExcellentDamage")
    elseif DamageType == 3 then
        m_damage = 1+(player:getCacheInt("M_CriticalDamage")/10000)
        a_damage = player:getCacheInt("A_CriticalDamage")
    elseif DamageType == 4 then
        m_damage = 1+(player:getCacheInt("M_ReflectDamage")/10000)
        a_damage = player:getCacheInt("A_ReflectDamage")
    elseif DamageType == 5 then
        m_damage = 1+(player:getCacheInt("M_PoisonDamage")/10000)
        a_damage = player:getCacheInt("A_PoisonDamage")
    end

    if m_damage and m_damage > 0 then
        newDamage = Damage * m_damage
    else
        newDamage = Damage
    end

    if a_damage and a_damage > 0 then
        newDamage = newDamage + a_damage
    end

    -- DANO RECEBIDO (Defense + DamageReduction)
    if aIndex ~= TargetIndex then
        local success, target = pcall(User.new, TargetIndex)
        if success and target ~= nil then
            local successDefense, targetDefense = pcall(target.getUserTable, target, 2)
            if successDefense and targetDefense and targetDefense > 0 then
                local defenseReduction = math.floor(targetDefense / 100)
                if defenseReduction > 0 then
                    newDamage = newDamage - defenseReduction
                    if newDamage < 1 then newDamage = 1 end
                end
            end
            
            local success2, damageReduction = pcall(target.getUserTable, target, 22)
            if success2 and damageReduction and damageReduction > 0 then
                if damageReduction > 60.0 then
                    damageReduction = 60.0
                end
                if type(newDamage) == "number" and newDamage > 0 then
                    local reductionPercent = damageReduction / 100
                    local reductionAmount = math.floor(newDamage * reductionPercent)
                    newDamage = newDamage - reductionAmount
                end
            end
            
            target = nil
        end
    end

    player = nil

    -- Verificação final
    if type(newDamage) ~= "number" then
        newDamage = Damage or 1
    end

    if newDamage < 0 then
        newDamage = 1
    elseif newDamage > 1000000 then
        newDamage = 1000000
    end
    
    newDamage = math.floor(newDamage)
    if newDamage < 1 then newDamage = 1 end
    
    return newDamage
end

----------------------------------------------------------------
-- BLOQUEIO ANTES DO ATAQUE (PlayerAttack)
----------------------------------------------------------------
function PvpControl.PlayerAttack(aIndex, TargetIndex)
    local success, result = pcall(function()
        if aIndex == nil or TargetIndex == nil or aIndex < 0 or TargetIndex < 0 then
            return 0
        end
        
        if aIndex == TargetIndex then
            return 0
        end
        
        local party1 = -1
        local party2 = -1
        
        local success1, attacker = pcall(User.new, aIndex)
        if success1 and attacker then
            local success3, result3 = pcall(function()
                return attacker:getPartyNumber()
            end)
            if success3 and result3 then party1 = result3 end
        end
        
        local success2, target = pcall(User.new, TargetIndex)
        if success2 and target then
            local success4, result4 = pcall(function()
                return target:getPartyNumber()
            end)
            if success4 and result4 then party2 = result4 end
        end
        
        if party1 ~= -1 and party2 ~= -1 and party1 == party2 then
            SendMessage("Você não pode atacar membros da sua party!", aIndex, 2)
            return 1 -- bloqueia ataque
        end
        
        return 0
    end)
    
    if not success then
        return 0
    end
    
    return result
end

----------------------------------------------------------------
-- COMANDO /status
----------------------------------------------------------------
function PvpControl.CommandStatus(aIndex, Arguments)
    if not PvpControl_Config.Enabled then
        SendMessage("[PvpControl] Sistema PvpControl está desativado.", aIndex, 1)
        return
    end
    
    local player = User.new(aIndex)
    if player == nil then
        SendMessage("[PvpControl] Erro ao obter dados do jogador.", aIndex, 1)
        return
    end
    
    local pInv = Inventory.new(aIndex)
    local playerItens = {
        pInv:getIndex(0),
        pInv:getIndex(1),
        pInv:getIndex(2),
        pInv:getIndex(3),
        pInv:getIndex(4),
        pInv:getIndex(5),
        pInv:getIndex(6),
        pInv:getIndex(7),
        pInv:getIndex(8),
        pInv:getIndex(9),
        pInv:getIndex(10),
        pInv:getIndex(11),
        pInv:getIndex(236),
        pInv:getIndex(237),
        pInv:getIndex(238),
        pInv:getIndex(239),
        pInv:getIndex(240),
        pInv:getIndex(241),
        pInv:getIndex(242),
        pInv:getIndex(243),
        pInv:getIndex(244),
        pInv:getIndex(245),
        pInv:getIndex(246),
        pInv:getIndex(247),
        pInv:getIndex(248),
        pInv:getIndex(250)
    }
    
    local playerItensLevel = {
        pInv:getLevel(0),
        pInv:getLevel(1),
        pInv:getLevel(2),
        pInv:getLevel(3),
        pInv:getLevel(4),
        pInv:getLevel(5),
        pInv:getLevel(6),
        pInv:getLevel(7),
        pInv:getLevel(8),
        pInv:getLevel(9),
        pInv:getLevel(10),
        pInv:getLevel(11),
        pInv:getLevel(236),
        pInv:getLevel(237),
        pInv:getLevel(238),
        pInv:getLevel(239),
        pInv:getLevel(240),
        pInv:getLevel(241),
        pInv:getLevel(242),
        pInv:getLevel(243),
        pInv:getLevel(244),
        pInv:getLevel(245),
        pInv:getLevel(246),
        pInv:getLevel(247),
        pInv:getLevel(248),
        pInv:getLevel(250)
    }
    
    local totalBonus = PvpControl.CalculateTotalBonus(player, playerItens, playerItensLevel)
    
    SendMessage("==================== STATUS BÔNUS ====================", aIndex, 1)
    SendMessage("", aIndex, 1)
    
    SendMessage(">>> BÔNUS GERAL <<<", aIndex, 1)
    if totalBonus.Add.Defense > 0 then
        SendMessage(string.format("Defense: +%d", totalBonus.Add.Defense), aIndex, 1)
    end
    if totalBonus.Add.MissRate > 0 then
        SendMessage(string.format("MissRate: +%.1f%%", totalBonus.Add.MissRate / 1000), aIndex, 1)
    end
    if totalBonus.Add.Life > 0 then
        SendMessage(string.format("Life: +%d", totalBonus.Add.Life), aIndex, 1)
    end
    if totalBonus.Add.FullDamageReflectRate > 0 then
        SendMessage(string.format("FullDamageReflectRate: +%d", totalBonus.Add.FullDamageReflectRate), aIndex, 1)
    end
    if totalBonus.Add.DamageReduction > 0 then
        SendMessage(string.format("DamageReduction: +%.1f%%", totalBonus.Add.DamageReduction), aIndex, 1)
    end
    if totalBonus.Add.ShieldDamageReduction > 0 then
        SendMessage(string.format("ShieldDamageReduction: +%.1f%%", totalBonus.Add.ShieldDamageReduction), aIndex, 1)
    end
    if totalBonus.Add.ExcellentDamageRate > 0 then
        SendMessage(string.format("ExcellentDamageRate: +%.1f%%", totalBonus.Add.ExcellentDamageRate), aIndex, 1)
    end
    if totalBonus.Add.ResistExcellentDamageRate > 0 then
        SendMessage(string.format("ResistExcellentDamageRate: +%.1f%%", totalBonus.Add.ResistExcellentDamageRate), aIndex, 1)
    end
    if totalBonus.Add.DoubleDamageRate > 0 then
        SendMessage(string.format("DoubleDamageRate: +%.1f%%", totalBonus.Add.DoubleDamageRate), aIndex, 1)
    end
    if totalBonus.Add.ResistDoubleDamageRate > 0 then
        SendMessage(string.format("ResistDoubleDamageRate: +%.1f%%", totalBonus.Add.ResistDoubleDamageRate), aIndex, 1)
    end
    if totalBonus.Add.CriticalDamageRate > 0 then
        SendMessage(string.format("CriticalDamageRate: +%.1f%%", totalBonus.Add.CriticalDamageRate), aIndex, 1)
    end
    if totalBonus.Add.ResistCriticalDamageRate > 0 then
        SendMessage(string.format("ResistCriticalDamageRate: +%.1f%%", totalBonus.Add.ResistCriticalDamageRate), aIndex, 1)
    end
    if totalBonus.Add.TripleDamageRate > 0 then
        SendMessage(string.format("TripleDamageRate: +%.1f%%", totalBonus.Add.TripleDamageRate), aIndex, 1)
    end
    
    SendMessage("", aIndex, 1)
    
    SendMessage(">>> BÔNUS DE DANO <<<", aIndex, 1)
    if totalBonus.Add.NormalDamage > 0 then
        SendMessage(string.format("NormalDamage: +%d", totalBonus.Add.NormalDamage), aIndex, 1)
    end
    if totalBonus.Add.PerfectDamage > 0 then
        SendMessage(string.format("PerfectDamage: +%d", totalBonus.Add.PerfectDamage), aIndex, 1)
    end
    if totalBonus.Add.ExcellentDamage > 0 then
        SendMessage(string.format("ExcellentDamage: +%d", totalBonus.Add.ExcellentDamage), aIndex, 1)
    end
    if totalBonus.Add.CriticalDamage > 0 then
        SendMessage(string.format("CriticalDamage: +%d", totalBonus.Add.CriticalDamage), aIndex, 1)
    end
    if totalBonus.Add.ReflectDamage > 0 then
        SendMessage(string.format("ReflectDamage: +%d", totalBonus.Add.ReflectDamage), aIndex, 1)
    end
    
    SendMessage("", aIndex, 1)
    
    SendMessage(">>> BÔNUS MULTIPLICATIVOS <<<", aIndex, 1)
    if totalBonus.Multiply.NormalDamage > 0 then
        SendMessage(string.format("NormalDamage: +%.1f%%", totalBonus.Multiply.NormalDamage), aIndex, 1)
    end
    if totalBonus.Multiply.PerfectDamage > 0 then
        SendMessage(string.format("PerfectDamage: +%.1f%%", totalBonus.Multiply.PerfectDamage), aIndex, 1)
    end
    if totalBonus.Multiply.ExcellentDamage > 0 then
        SendMessage(string.format("ExcellentDamage: +%.1f%%", totalBonus.Multiply.ExcellentDamage), aIndex, 1)
    end
    if totalBonus.Multiply.CriticalDamage > 0 then
        SendMessage(string.format("CriticalDamage: +%.1f%%", totalBonus.Multiply.CriticalDamage), aIndex, 1)
    end
    if totalBonus.Multiply.ReflectDamage > 0 then
        SendMessage(string.format("ReflectDamage: +%.1f%%", totalBonus.Multiply.ReflectDamage), aIndex, 1)
    end
    
    SendMessage("", aIndex, 1)
    SendMessage("=====================================================", aIndex, 1)
    
    pInv = nil
    player = nil
end

----------------------------------------------------------------
-- CALCULAR TOTAL BONUS (Add/Multiply + SetCombo)
----------------------------------------------------------------
function PvpControl.CalculateTotalBonus(player, playerItens, playerItensLevel)
    local totalBonus = {
        Add = {
            Defense = 0,
            MissRate = 0,
            Life = 0,
            Mana = 0,
            PhysicSpeed = 0,
            MagicSpeed = 0,
            FullDamageReflectRate = 0,
            AttackSuccessRate = 0,
            DamageReduction = 0,
            ShieldDamageReduction = 0,
            ExcellentDamageRate = 0,
            ResistExcellentDamageRate = 0,
            DoubleDamageRate = 0,
            ResistDoubleDamageRate = 0,
            CriticalDamageRate = 0,
            ResistCriticalDamageRate = 0,
            TripleDamageRate = 0,
            IgnoreShieldGaugeRate = 0,
            ResistIgnoreShieldGaugeRate = 0,
            NormalDamage = 0,
            PerfectDamage = 0,
            ExcellentDamage = 0,
            CriticalDamage = 0,
            ReflectDamage = 0,
            PoisonDamage = 0
        },
        Multiply = {
            NormalDamage = 0,
            PerfectDamage = 0,
            ExcellentDamage = 0,
            CriticalDamage = 0,
            ReflectDamage = 0,
            PoisonDamage = 0
        }
    }
    
    for slot, item in ipairs(playerItens) do
        if item == -1 then goto continue end
        
        local itemCfg = PvpControl_Config.Itens[item]
        if itemCfg == nil then 
            goto continue 
        end

        local itemLevel = playerItensLevel and playerItensLevel[slot] or 0
        
        local addInfo = false
        
        if itemCfg.Visual == nil then 
            addInfo = true 
        elseif itemCfg.Visual == 0 then
            if slot <= 12 then addInfo = true end
        elseif itemCfg.Visual == 1 then
            if slot >= 13 then addInfo = true end
        elseif itemCfg.Visual == -1 then
            addInfo = true
        end
        
        if not addInfo then goto continue end
        
        -- ADD (com LevelAdd)
        local effectiveAdd = itemCfg.Add
        if itemCfg.LevelAdd and itemCfg.LevelAdd[itemLevel] then
            effectiveAdd = {}
            if itemCfg.Add then
                for k, v in pairs(itemCfg.Add) do
                    effectiveAdd[k] = v
                end
            end
            for k, v in pairs(itemCfg.LevelAdd[itemLevel]) do
                effectiveAdd[k] = (effectiveAdd[k] or 0) + v
            end
        end

        if effectiveAdd ~= nil then
            local config = effectiveAdd

            if config.Defense ~= nil and config.Defense ~= 0 then 
                totalBonus.Add.Defense = totalBonus.Add.Defense + config.Defense
            end
            if config.MissRate ~= nil and config.MissRate ~= 0 then 
                totalBonus.Add.MissRate = totalBonus.Add.MissRate + config.MissRate
            end
            if config.Life ~= nil and config.Life ~= 0 then 
                totalBonus.Add.Life = totalBonus.Add.Life + config.Life
            end
            if config.Mana ~= nil and config.Mana ~= 0 then 
                totalBonus.Add.Mana = totalBonus.Add.Mana + config.Mana
            end
            if config.PhysicSpeed ~= nil and config.PhysicSpeed ~= 0 then 
                totalBonus.Add.PhysicSpeed = totalBonus.Add.PhysicSpeed + config.PhysicSpeed
            end
            if config.MagicSpeed ~= nil and config.MagicSpeed ~= 0 then 
                totalBonus.Add.MagicSpeed = totalBonus.Add.MagicSpeed + config.MagicSpeed
            end
            if config.FullDamageReflectRate ~= nil and config.FullDamageReflectRate ~= 0 then 
                totalBonus.Add.FullDamageReflectRate = totalBonus.Add.FullDamageReflectRate + config.FullDamageReflectRate
            end
            if config.AttackSuccessRate ~= nil and config.AttackSuccessRate ~= 0 then 
                totalBonus.Add.AttackSuccessRate = totalBonus.Add.AttackSuccessRate + config.AttackSuccessRate
            end
            if config.DamageReduction ~= nil and config.DamageReduction ~= 0 then 
                totalBonus.Add.DamageReduction = totalBonus.Add.DamageReduction + config.DamageReduction
            end
            if config.ShieldDamageReduction ~= nil and config.ShieldDamageReduction ~= 0 then 
                totalBonus.Add.ShieldDamageReduction = totalBonus.Add.ShieldDamageReduction + config.ShieldDamageReduction
            end
            if config.ExcellentDamageRate ~= nil and config.ExcellentDamageRate ~= 0 then 
                totalBonus.Add.ExcellentDamageRate = totalBonus.Add.ExcellentDamageRate + config.ExcellentDamageRate
            end
            if config.ResistExcellentDamageRate ~= nil and config.ResistExcellentDamageRate ~= 0 then 
                totalBonus.Add.ResistExcellentDamageRate = totalBonus.Add.ResistExcellentDamageRate + config.ResistExcellentDamageRate
            end
            if config.DoubleDamageRate ~= nil and config.DoubleDamageRate ~= 0 then 
                totalBonus.Add.DoubleDamageRate = totalBonus.Add.DoubleDamageRate + config.DoubleDamageRate
            end
            if config.ResistDoubleDamageRate ~= nil and config.ResistDoubleDamageRate ~= 0 then 
                totalBonus.Add.ResistDoubleDamageRate = totalBonus.Add.ResistDoubleDamageRate + config.ResistDoubleDamageRate
            end
            if config.CriticalDamageRate ~= nil and config.CriticalDamageRate ~= 0 then 
                totalBonus.Add.CriticalDamageRate = totalBonus.Add.CriticalDamageRate + config.CriticalDamageRate
            end
            if config.ResistCriticalDamageRate ~= nil and config.ResistCriticalDamageRate ~= 0 then 
                totalBonus.Add.ResistCriticalDamageRate = totalBonus.Add.ResistCriticalDamageRate + config.ResistCriticalDamageRate
            end
            if config.TripleDamageRate ~= nil and config.TripleDamageRate ~= 0 then 
                totalBonus.Add.TripleDamageRate = totalBonus.Add.TripleDamageRate + config.TripleDamageRate
            end
            if config.IgnoreShieldGaugeRate ~= nil and config.IgnoreShieldGaugeRate ~= 0 then 
                totalBonus.Add.IgnoreShieldGaugeRate = totalBonus.Add.IgnoreShieldGaugeRate + config.IgnoreShieldGaugeRate
            end
            if config.ResistIgnoreShieldGaugeRate ~= nil and config.ResistIgnoreShieldGaugeRate ~= 0 then 
                totalBonus.Add.ResistIgnoreShieldGaugeRate = totalBonus.Add.ResistIgnoreShieldGaugeRate + config.ResistIgnoreShieldGaugeRate
            end
            if config.NormalDamage ~= nil and config.NormalDamage ~= 0 then 
                totalBonus.Add.NormalDamage = totalBonus.Add.NormalDamage + config.NormalDamage
            end
            if config.PerfectDamage ~= nil and config.PerfectDamage ~= 0 then 
                totalBonus.Add.PerfectDamage = totalBonus.Add.PerfectDamage + config.PerfectDamage
            end
            if config.ExcellentDamage ~= nil and config.ExcellentDamage ~= 0 then 
                totalBonus.Add.ExcellentDamage = totalBonus.Add.ExcellentDamage + config.ExcellentDamage
            end
            if config.CriticalDamage ~= nil and config.CriticalDamage ~= 0 then 
                totalBonus.Add.CriticalDamage = totalBonus.Add.CriticalDamage + config.CriticalDamage
            end
            if config.ReflectDamage ~= nil and config.ReflectDamage ~= 0 then 
                totalBonus.Add.ReflectDamage = totalBonus.Add.ReflectDamage + config.ReflectDamage
            end
            if config.PoisonDamage ~= nil and config.PoisonDamage ~= 0 then 
                totalBonus.Add.PoisonDamage = totalBonus.Add.PoisonDamage + config.PoisonDamage
            end
        end

        -- MULTIPLY (com LevelMultiply)
        local effectiveMultiply = itemCfg.Multiply
        if itemCfg.LevelMultiply and itemCfg.LevelMultiply[itemLevel] then
            effectiveMultiply = {}
            if itemCfg.Multiply then
                for k, v in pairs(itemCfg.Multiply) do
                    effectiveMultiply[k] = v
                end
            end
            for k, v in pairs(itemCfg.LevelMultiply[itemLevel]) do
                effectiveMultiply[k] = (effectiveMultiply[k] or 0) + v
            end
        end

        if effectiveMultiply ~= nil then
            local config = effectiveMultiply

            if config.NormalDamage ~= nil and config.NormalDamage > 0 then 
                totalBonus.Multiply.NormalDamage = totalBonus.Multiply.NormalDamage + ((config.NormalDamage - 1) * 100)
            end
            if config.PerfectDamage ~= nil and config.PerfectDamage > 0 then 
                totalBonus.Multiply.PerfectDamage = totalBonus.Multiply.PerfectDamage + ((config.PerfectDamage - 1) * 100)
            end
            if config.ExcellentDamage ~= nil and config.ExcellentDamage > 0 then 
                totalBonus.Multiply.ExcellentDamage = totalBonus.Multiply.ExcellentDamage + ((config.ExcellentDamage - 1) * 100)
            end
            if config.CriticalDamage ~= nil and config.CriticalDamage > 0 then 
                totalBonus.Multiply.CriticalDamage = totalBonus.Multiply.CriticalDamage + ((config.CriticalDamage - 1) * 100)
            end
            if config.ReflectDamage ~= nil and config.ReflectDamage > 0 then 
                totalBonus.Multiply.ReflectDamage = totalBonus.Multiply.ReflectDamage + ((config.ReflectDamage - 1) * 100)
            end
            if config.PoisonDamage ~= nil and config.PoisonDamage > 0 then 
                totalBonus.Multiply.PoisonDamage = totalBonus.Multiply.PoisonDamage + ((config.PoisonDamage - 1) * 100)
            end
        end
        
        ::continue::
    end

    -- Bônus de set
    local setBonus = PvpControl.CalculateSetComboBonus(player, playerItens)
    
    if setBonus.Add then
        for key, value in pairs(setBonus.Add) do
            if totalBonus.Add[key] ~= nil then
                totalBonus.Add[key] = totalBonus.Add[key] + value
            end
        end
    end
    
    if setBonus.Multiply then
        for key, value in pairs(setBonus.Multiply) do
            if totalBonus.Multiply[key] ~= nil then
                totalBonus.Multiply[key] = totalBonus.Multiply[key] + value
            end
        end
    end
    
    return totalBonus
end

----------------------------------------------------------------
-- BONUS DE SET PARA O /status
----------------------------------------------------------------
function PvpControl.CalculateSetComboBonus(player, playerItens)
    local setBonus = {
        Add = {},
        Multiply = {}
    }
    
    if PvpControl_Config.SetCombo == nil then 
        return setBonus
    end
    
    local helm   = playerItens[3]
    local armor  = playerItens[4]
    local pants  = playerItens[5]
    local gloves = playerItens[6]
    local boots  = playerItens[7]
    
    if helm == -1 or armor == -1 or pants == -1 or gloves == -1 or boots == -1 then
        return setBonus
    end
    
    local helmId   = helm   % 512
    local armorId  = armor  % 512
    local pantsId  = pants  % 512
    local glovesId = gloves % 512
    local bootsId  = boots  % 512
    
    for setId, setConfig in pairs(PvpControl_Config.SetCombo) do
        local countSet = 0
        
        if helmId   == setId then countSet = countSet + 1 end
        if armorId  == setId then countSet = countSet + 1 end
        if pantsId  == setId then countSet = countSet + 1 end
        if glovesId == setId then countSet = countSet + 1 end
        if bootsId  == setId then countSet = countSet + 1 end
        
        if countSet >= 5 then
            local addInfo = false
            if setConfig.Visual == nil then 
                addInfo = true 
            elseif setConfig.Visual == 0 then
                addInfo = true
            elseif setConfig.Visual == 1 then
                addInfo = false
            elseif setConfig.Visual == -1 then
                addInfo = true 
            end
            
            if addInfo and setConfig.ComboBonus then
                local bonus = setConfig.ComboBonus
                
                if bonus.Add then
                    for key, value in pairs(bonus.Add) do
                        if setBonus.Add[key] == nil then
                            setBonus.Add[key] = 0
                        end
                        setBonus.Add[key] = setBonus.Add[key] + value
                    end
                end
                
                if bonus.Multiply then
                    for key, value in pairs(bonus.Multiply) do
                        if setBonus.Multiply[key] == nil then
                            setBonus.Multiply[key] = 0
                        end
                        setBonus.Multiply[key] = setBonus.Multiply[key] + ((value - 1) * 100)
                    end
                end
            end
        end
    end
    
    return setBonus
end

----------------------------------------------------------------
-- MONITOR SD DOS Membros de Party
----------------------------------------------------------------
function PvpControl.MonitorPartyShields()
    local currentTime = os.time()
    
    if currentTime - lastShieldCleanup > 5 then
        for targetIndex, data in pairs(partyShieldCache) do
            if currentTime - data.timestamp > 10 then
                partyShieldCache[targetIndex] = nil
            end
        end
        lastShieldCleanup = currentTime
    end
    
    for targetIndex, data in pairs(partyShieldCache) do
        local success, target = pcall(User.new, targetIndex)
        if success and target then
            local currentShield = target:getShield()
            if currentShield < data.originalShield and data.originalShield > 0 then
                target:setShield(data.originalShield)
                RefreshCharacter(targetIndex)
            end
        else
            partyShieldCache[targetIndex] = nil
        end
    end
end

PvpControl.Init()

return PvpControl
