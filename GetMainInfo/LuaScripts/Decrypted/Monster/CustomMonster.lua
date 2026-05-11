local CUSTOM_MONSTER_CONFIG = { 
	{ MonsterID = 600, MonsterType = 1, Size = 1.2, Map = -1, PosX = -1, PosY = -1, MonsterName = {["Por"] = "Sr.Globin", ["Eng"] = "Sr.Globin", ["Spn"] = "Sr.Globin"}, MonsterFolder = "Monster\\", MonsterModel = "ElfMerchant01"},
	{ MonsterID = 601, MonsterType = 1, Size = 1.2, Map = -1, PosX = -1, PosY = -1, MonsterName = {["Por"] = "Golden Hell Maine", ["Eng"] = "Golden Hell Maine", ["Spn"] = "Golden Hell Maine"}, MonsterFolder = "Monster\\", MonsterModel = "Monster106"},
	{ MonsterID = 602, MonsterType = 1, Size = 1.2, Map = -1, PosX = -1, PosY = -1, MonsterName = {["Por"] = "The Creator of Fenrir", ["Eng"] = "The Creator of Fenrir", ["Spn"] = "The Creator of Fenrir"}, MonsterFolder = "NPC\\", MonsterModel = "NpcSenatus"},
}

function StartLoadMonster()
	for i = 1, #CUSTOM_MONSTER_CONFIG do
		local monster = CUSTOM_MONSTER_CONFIG[i]

		SetMonsterInfo(monster.MonsterID, monster.MonsterType)
	end
end

MODEL_MONSTER_MAX = 575

function GET_MONSTER_MODEL(index)
	return index + MODEL_MONSTER_MAX
end

function GET_MONSTER_ID(index)
	return index - MODEL_MONSTER_MAX
end

function CreateMonster(MonsterID, PosX, PosY, Key)
	for i = 1, #CUSTOM_MONSTER_CONFIG do
		local monster = CUSTOM_MONSTER_CONFIG[i]

		if monster.MonsterID == MonsterID 
			and (monster.Map == -1 or getMapNumber() == monster.Map) 
			and (monster.PosX == -1 or monster.PosX == PosX)
			and (monster.PosY == -1 or monster.PosY == PosY)
		then
			LoadMonster(MonsterID, monster.MonsterType, monster.MonsterFolder, monster.MonsterModel)

			local monsterObj = CreateMonsterStruct(Key, GET_MONSTER_MODEL(monster.MonsterID), PosX, PosY, monster.MonsterType, monster.Size, monster.MonsterName[GetLanguage()])
			return 1, monsterObj
		end
	end

	return 0, 0
end

function LoadModelMonster(MonsterID)
	for i = 1, #CUSTOM_MONSTER_CONFIG do
		local monster = CUSTOM_MONSTER_CONFIG[i]
		
		if GET_MONSTER_MODEL(monster.MonsterID) == MonsterID
		then
			LoadModel(MonsterID, monster.MonsterFolder, monster.MonsterModel, -1)
			return 1
		end
	end

	return 0
end

function LoadTextureMonster(MonsterID)
	for i = 1, #CUSTOM_MONSTER_CONFIG do
		local monster = CUSTOM_MONSTER_CONFIG[i]
		
		if GET_MONSTER_MODEL(monster.MonsterID) == MonsterID
		then
			LoadTexture(MonsterID, monster.MonsterFolder, monster.MonsterModel, -1)
			return 1
		end
	end

	return 0
end

StartLoadMonster()