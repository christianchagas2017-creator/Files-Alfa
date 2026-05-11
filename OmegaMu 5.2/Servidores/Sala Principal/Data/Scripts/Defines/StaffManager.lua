StaffManager = {
    Characters = {

        --[[
            ADMIN/SUBADMIN  = 6
            COORDENADOR     = 5
            GAMEMASTER      = 4
            MODERADOR       = 3
            COLABORADORES   = 2
            STREAMERS       = 1
        --]]

        --ADMINISTRADORES
        ["Admin"]       = 6,
    }
}

function StaffManager.IsPlayerAuthorized(name, level)
    local gamemaster = StaffManager.Characters[name]

    if gamemaster ~= nil then
		if gamemaster >= level then
            return true
        end
    end

    return false

end

function StaffManager.GetAuthority(name)
    local gamemaster = StaffManager.Characters[name]

    if gamemaster ~= nil then
        return gamemaster
    end

    return 0
end

return StaffManager