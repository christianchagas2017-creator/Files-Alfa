MESSAGE = {}

MESSAGE["Por"] = {
    [1] = "Fechar",
    [2] = " Req. Level: %d ",
}

MESSAGE["Eng"] = {
    [1] = "Close",
    [2] = " Req. Level: %d ",
}

MESSAGE["Spn"] = {
    [1] = "Cerrar",
    [2] = " Req. Level: %d ",
}


function GetMessage(id)
    if MESSAGE[GetLanguage()][id] == nil then return "" end
    return MESSAGE[GetLanguage()][id]
end