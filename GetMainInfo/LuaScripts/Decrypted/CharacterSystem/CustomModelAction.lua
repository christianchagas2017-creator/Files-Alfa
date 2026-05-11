OpenFolder("Definitions")

CUSTOM_MODEL_ACTION = {


    --[GET_ITEM_MODEL(12, 5)] = {Stop = 0, Run = 1, SafeZone = 0}, --WING GHOST
	
	
	
}

function CustomModelAction()
    for itemIndex, itemData in pairs(CUSTOM_MODEL_ACTION) do
        SetModelAction(itemIndex, itemData.Stop, itemData.Run, itemData.SafeZone)
    end
end

function CheckSetModelAction(charObj)
    local char = Character.new(charObj)

    for itemIndex in pairs(CUSTOM_MODEL_ACTION) do
        return itemIndex
    end

    char = nil

    return 0
end