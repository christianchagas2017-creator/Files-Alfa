OpenFolder("Definitions")

DEATH_STAB_CROMA = {}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 211)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 211)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 201)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 201)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 204)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 204)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 213)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 0.0, ColorG = 0.5167, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 213)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 212)] = {
ImageName = 'Effect//nskill_Gold.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.0, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 212)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 207)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 207)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 208)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 207)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 205)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 205)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 202)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 202)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 203)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 203)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 233)] = {
ImageName = 'Effect//nskill_Gold.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.0, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 233)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 252)] = {
ImageName = 'Effect//nskill_blue.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.0, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 252)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 241)] = {
ImageName = 'Effect//nskill_Gold.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.0, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 241)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 240)] = {
ImageName = 'Effect//nskill_Gold.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.0, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 240)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 247)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 247)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 248)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 248)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 259)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 259)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 255)] = {
ImageName = 'Effect//nskill_red.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 255)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 251)] = {
ImageName = 'Effect//nskill_Gold.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 0.40, ColorB = 0.10, PetIndex = GET_ITEM_MODEL(13, 251)
}


DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 263)] = {
ImageName = 'Effect//cursorpin02.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 263)
}

DEATH_STAB_CROMA[GET_ITEM_MODEL(13, 264)] = {
ImageName = 'Effect//enemy_ring02.jpg', ImageIndex = -1, ColorR = 1.0, ColorG = 1.00, ColorB = 1.00, PetIndex = GET_ITEM_MODEL(13, 264)
}




function LoadCromaSkill()
    for i in pairs(DEATH_STAB_CROMA) do
        local skill = DEATH_STAB_CROMA[i]

        skill.ImageIndex = LoadImageByDir(skill.ImageName)
    end
end

function DeathStabEffect(PetIndex)
    local skill = DEATH_STAB_CROMA[PetIndex]

    if skill ~= nil
    then
        return skill.ImageIndex, skill.ColorR, skill.ColorG, skill.ColorB
    end

    return 0, 1.0, 1.0, 1.0
end