CUSTOM_SERVER_NAME = {
	--{ ServerID = 0,    ServerName = "Servidor Trade + PvP"},
	--{ ServerID = 1,    ServerName = "Servidor Spots - PvP" },
	--{ ServerID = 2,   ServerName = "Servidor  Spots" },
}

function StartLoadCustomServerName()
	for i = 1, #CUSTOM_SERVER_NAME do
		SetServerName(CUSTOM_SERVER_NAME[i].ServerID, CUSTOM_SERVER_NAME[i].ServerName)
	end
end