OpenFolder("Definitions")

CHARACTER_NAME = {


   { Player = "Admin", Charactername = "/cn", Uncharactername = "/ucn" },
   -- { Player = "ADMIN", Charactername = "/cn", Uncharactername = "/ucn" },
}

function StartCharactername()
    for _, Command in pairs(CHARACTER_NAME) do
        SetCharactername(Command.Player, Command.Charactername, Command.Uncharactername)
    end
end