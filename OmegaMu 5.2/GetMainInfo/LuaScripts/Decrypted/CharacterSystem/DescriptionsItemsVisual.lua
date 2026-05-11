OpenFolder("Definitions")

VISUAL_ITEM_SWITCH = 0
VISUAL_ITEM_SHOW_ORIGINAL_DESCRIPTION = 0

VISUAL_ITEM_TEXTS = {}

VISUAL_ITEM_TEXTS['Por'] = {
    [1] = 'Item Visual',
    [2] = 'Esse Item não Fornece Nenhum Tipo',
    [3] = 'De Dano Ou Defesa',
    [4] = 'Equipe-o no inventário visual',
}

VISUAL_ITEM_TEXTS['Eng'] = {
    [1] = 'Item Visual',
    [2] = 'Esse Item não Fornece Nenhum Tipo',
    [3] = 'De Dano Ou Defesa',
	[4] = 'Equipe-o no inventário visual',
}

VISUAL_ITEM_TEXTS['Spn'] = {
    [1] = 'Item Visual',
    [2] = 'Esse Item não Fornece Nenhum Tipo',
    [3] = 'De Dano Ou Defesa',
    [4] = 'Equipe-o no inventário visual',	
}


function RegisterItemHybridName()

    --SetItemHybridName(GET_ITEM(7,  5), "Majestyc Set Helm [V]")
    --SetItemHybridName(GET_ITEM(8,  5), "Majestyc Set Armor [V]")
    --SetItemHybridName(GET_ITEM(9,  5), "Majestyc Set Pants [V]")
    --SetItemHybridName(GET_ITEM(10, 5), "Majestyc Set Gloves [V]")
    --SetItemHybridName(GET_ITEM(11, 5), "Majestyc Set Boots [V]")

end

function RenderDescriptionVisualItem(ItemIndex)
    local matched = false
    
    
    --== Abyss
    if not matched then
        for AbyssWing = 12, 12 do
            if ItemIndex == GET_ITEM(AbyssWing, 466) then
            createDescription(0, "\n", 0, 0)
            createDescription(1, string.format("%s", GetNameByIndex(ItemIndex)), 91, 5)
            createDescription(2, "\n", 0, 0)
            createDescription(3, "Este Item (Auxiliar) Altera Danos e Defesas", 1, 0)
            createDescription(4, "Sobrepõe o Visual dos itens Tier 1", 1, 0)
            createDescription(5, "\n", 0, 0)   
            createDescription(6, "Refinary - Legend", 6, 12)
            createDescription(7, "\n", 0, 0) 			
            createDescription(8, "Defesa Especial +1%%", 3, 13)
            createDescription(9, "Chance de Dano Crítico +1%%", 3, 13)
			createDescription(10, "\n", 0, 0) 	
			createDescription(11, "New Tier: Atributed (Exclusive Donate)", 0, 13)
                matched = true
                break
            end
        end
    end
	
    if not matched then
        for AbyssShield = 6, 6 do
            if ItemIndex == GET_ITEM(AbyssShield, 179) then
            createDescription(0, "\n", 0, 0)
            createDescription(1, string.format("%s", GetNameByIndex(ItemIndex)), 91, 5)
            createDescription(2, "\n", 0, 0)
            createDescription(3, "Este Item (Auxiliar) Altera Danos e Defesas", 1, 0)
            createDescription(4, "Sobrepõe o Visual dos itens Tier 1", 1, 0)
            createDescription(5, "\n", 0, 0)   
            createDescription(6, "Refinary - Legend", 6, 12)
            createDescription(7, "\n", 0, 0) 			
            createDescription(8, "Defesa Especial +1%%", 3, 13)
			createDescription(9, "\n", 0, 0) 	
			createDescription(10, "New Tier: Atributed (Exclusive Donate)", 0, 13)			
                matched = true
                break
            end
        end
    end
	
    if not matched then
        for Abyss = 7, 11 do
            if ItemIndex == GET_ITEM(Abyss, 357) then
            createDescription(0, "\n", 0, 0)
            createDescription(1, string.format("%s", GetNameByIndex(ItemIndex)), 91, 5)
            createDescription(2, "\n", 0, 0)
            createDescription(3, "Este Item (Auxiliar) Altera Danos e Defesas", 1, 0)
            createDescription(4, "Sobrepõe o Visual dos itens Tier 1", 1, 0)
            createDescription(5, "\n", 0, 0)   
            createDescription(6, "Refinary - Legend", 6, 12)
            createDescription(7, "\n", 0, 0) 			
            createDescription(8, "Adicional de Life +1000", 3, 13)
            createDescription(9, "Defesa Especial +1%%", 3, 13)
			createDescription(10, "\n", 0, 0) 	
			createDescription(11, "New Tier: Atributed (Exclusive Donate)", 0, 13)			
                matched = true
                break
            end
        end
    end
	
    if not matched then
        for Abyss = 345, 346, 347 do
            if ItemIndex == GET_ITEM(0, Abyss) then
            createDescription(0, "\n", 0, 0)
            createDescription(1, string.format("%s", GetNameByIndex(ItemIndex)), 91, 5)
            createDescription(2, "\n", 0, 0)
            createDescription(3, "Este Item (Auxiliar) Altera Danos e Defesas", 1, 0)
            createDescription(4, "Sobrepõe o Visual dos itens Tier 1", 1, 0)
            createDescription(5, "\n", 0, 0)   
            createDescription(6, "Refinary - Legend", 6, 12)
            createDescription(7, "\n", 0, 0) 			
            createDescription(8, "Aumenta o Sucesso de Ataque Excelente +1%%", 3, 13)
			createDescription(9, "\n", 0, 0) 	
			createDescription(10, "New Tier: Atributed (Exclusive Donate)", 0, 13)			
                matched = true
                break
            end
        end
    end
	
    
    if not matched then
        createDescription(0, "\n", 0, 0)
        createDescription(1, string.format("%s", GetNameByIndex(ItemIndex)), 1, 6)
        createDescription(2, "\n", 0, 0)
        createDescription(3, VISUAL_ITEM_TEXTS[GetLanguage()][1], 100, 1)
        createDescription(4, "\n", 0, 0)    
        createDescription(5, VISUAL_ITEM_TEXTS[GetLanguage()][2], 0, 1)
        createDescription(6, VISUAL_ITEM_TEXTS[GetLanguage()][3], 0, 1)
        createDescription(7, "\n", 0, 0)  			
        createDescription(8, VISUAL_ITEM_TEXTS[GetLanguage()][4], 0, 1)
    end
end

setVisualInventory(VISUAL_ITEM_SWITCH, VISUAL_ITEM_SHOW_ORIGINAL_DESCRIPTION)