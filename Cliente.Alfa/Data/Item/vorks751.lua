--[[
System Config
]]--

local PATENT_SWITCH = 1

--[[
Configs for patent image limit 500000 images
]]--
local PATENT_INFO_IMAGE = {}

PATENT_INFO_IMAGE[0] = { 
PatentIndex = 0, ImageIndex = 90000, NameLoad = "Interface\\75x75.tga", Width = 70.0, Height = 70.0, PosX = -40.0, PosY = -70.0
}

--[[
Configs for patent model limit 200 models
--]]
local PATENT_INFO_MODEL = {}

PATENT_INFO_MODEL[23] = { 
PatentIndex = 23, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth1", BoneBase = 20, PosX = 115.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}

PATENT_INFO_MODEL[24] = { 
PatentIndex = 24, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth2", BoneBase = 20, PosX = 115.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}


PATENT_INFO_MODEL[25] = { 
PatentIndex = 25, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth3", BoneBase = 20, PosX = 115.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}

PATENT_INFO_MODEL[26] = { 
PatentIndex = 26, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth4", BoneBase = 20, PosX = 115.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}


PATENT_INFO_MODEL[27] = { 
PatentIndex = 27, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth5", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}


PATENT_INFO_MODEL[28] = { 
PatentIndex = 28, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth6", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}


PATENT_INFO_MODEL[29] = { 
PatentIndex = 29, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth7", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}

PATENT_INFO_MODEL[30] = { 
PatentIndex = 30, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth8", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}


PATENT_INFO_MODEL[31] = { 
PatentIndex = 31, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "PtDth9", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}

PATENT_INFO_MODEL[32] = { 
PatentIndex = 32, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "Patent13th", BoneBase = 20, PosX = 125.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 40.0
}

--this work only on Type 1 BMD PATENT
local PATENT_MODEL_GLOW = {}


PATENT_MODEL_GLOW[23] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}

PATENT_MODEL_GLOW[24] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}


PATENT_MODEL_GLOW[25] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}

PATENT_MODEL_GLOW[26] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}


PATENT_MODEL_GLOW[27] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}



PATENT_MODEL_GLOW[28] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}


PATENT_MODEL_GLOW[29] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2, LightR = 1.0, LightG = 1.0, LightB = 1.0 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.40, LightG = 0.40, LightB = 0.40 },
}

PATENT_MODEL_GLOW[30] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2,  LightR = 1.00, LightG = 1.00, LightB = 1.00 },
{ RenderType = 0, Mesh = 0,  ModelGlow = 70, LightR = 0.45, LightG = 0.45, LightB = 0.45 },
}

PATENT_MODEL_GLOW[31] = {
{ RenderType = 0, Mesh = 0,  ModelGlow = 2,  LightR = 1.00, LightG = 1.00, LightB = 1.00, },
{ RenderType = 0, Mesh = 0,  ModelGlow = 66, LightR = 0.30, LightG = 0.30, LightB = 0.30, },
}

--this work only on Type 1 BMD PATENT
local PATENT_MODEL_EFFECT = { }

PATENT_MODEL_EFFECT[30] = {
{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 0, Size = 1.9, LightR = 1.00, LightG = 0.6667, LightB = 0.00, PosX = 10.0, PosY = 2.0, PosZ = 18.0, Black = 0.0 },

}


PATENT_MODEL_EFFECT[23] = {
{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 0, Size = 1.9, LightR = 0.45, LightG = 0.247, LightB = 0.153, PosX = 10.0, PosY = 2.0, PosZ = 18.0, Black = 0.0 },

}

PATENT_MODEL_EFFECT[31] = {
{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 0, Size = 2.0, LightR = 1.0, LightG = 0.0, LightB = 0.0, PosX = 10.0, PosY = 2.0, PosZ = 18.0, Black = 0.0 },

}

--[[
System Manager
--]]

function StartPatentLoadModel()
	for key in pairs(PATENT_INFO_MODEL) do
		SetPatentModel(PATENT_INFO_MODEL[key].PatentIndex, PATENT_INFO_MODEL[key].ModelFolder, PATENT_INFO_MODEL[key].ModelName)
	end
end

function StartPatentLoadImage()
	for key in pairs(PATENT_INFO_IMAGE) do
		LoadImage(PATENT_INFO_IMAGE[key].NameLoad, PATENT_INFO_IMAGE[key].ImageIndex)
	end
end

function PatentModelSetIndex(PatentIndex, ModelIndex)
	local patent = PATENT_INFO_MODEL[PatentIndex]
	
	if patent ~= nil
	then
		patent.ModelIndex = ModelIndex
	end
end

function RenderEffectModel(Bmd, Obj, ObjectStruct, PatentIndex)
	local patentEffect = PATENT_MODEL_EFFECT[PatentIndex]
	
	if patentEffect ~= nil
	then
		for i = 1, #patentEffect do
			local effect = patentEffect[i]
			
			if (effect.EffectType == 0)
			then
				Bmd:TransformPosition2(effect.Skeleton, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateSprite(effect.EffectIndex, effect.Size, effect.LightR, effect.LightG, effect.LightB, ObjectStruct)
				
			elseif (effect.EffectType == 1)
			then
				Bmd:TransformPosition2(effect.Skeleton, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateParticle(effect.EffectIndex, effect.EffectLevel, effect.Size, effect.LightR, effect.LightG, effect.LightB, ObjectStruct)
			elseif (effect.EffectType == 2)
			then
				Bmd:TransformPosition2(effect.Skeleton, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateEffect(effect.EffectIndex, effect.EffectLevel, effect.LightR, effect.LightG, effect.LightB, ObjectStruct)
			end
		end
	end
end

function RenderGlowPatent(BMDStruct, ObjectStruct, PatentIndex)
	local patentGlow = PATENT_MODEL_GLOW[PatentIndex]
	
	if patentGlow ~= nil
	then
		local Bmd = BMD.new(BMDStruct)
		local Obj = Object.new(ObjectStruct)
		
		for i = 1, #patentGlow do
			local glow = patentGlow[i]
			
			Bmd:SetLight(glow.LightR, glow.LightG, glow.LightB)
			
			if glow.RenderType == 1
			then
				Bmd:RenderBody(glow.Mesh, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)
			else
				Bmd:RenderMesh(glow.Mesh, glow.ModelGlow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
			end
		end
		
		RenderEffectModel(Bmd, Obj, ObjectStruct, PatentIndex)
		
		Bmd = nil
		Obj = nil
		return 1
	end
	
	return 0
end

function PatentModelRender(BMDStruct, ObjectStruct, ItemIndex)
	for key in pairs(PATENT_INFO_MODEL) do
		if PATENT_INFO_MODEL[key].ModelIndex == ItemIndex
		then
			local ret = RenderGlowPatent(BMDStruct, ObjectStruct, PATENT_INFO_MODEL[key].PatentIndex)
			
			if ret == 1
			then
				return 1
			else
				goto continue
			end
		end
	end
	
	::continue::
	
	return 0
end

function RenderPatentImage(arrayUser, PatentIndex)
	if PATENT_SWITCH == 0
	then
		return
	end
	
	local infoPatent = PATENT_INFO_IMAGE[PatentIndex]
	
	if infoPatent ~= nil
	then
		if infoPatent.PatentIndex ~= PatentIndex
		then
			return
		end
		
		local PosX, PosY = GetPosFromPlayer(arrayUser, 100.0)

		SetBlend()
		
		RenderImage(infoPatent.ImageIndex, PosX + infoPatent.PosX, PosY + infoPatent.PosY, infoPatent.Width, infoPatent.Height)
		
		GLSwitch()
	end
end

function SetPlayerPatente(arrayUser, PatentIndex)
	if PATENT_SWITCH == 0
	then
		return
	end

	local infoPatent = PATENT_INFO_MODEL[PatentIndex]
	
	if infoPatent ~= nil
	then
		if infoPatent.PatentIndex ~= PatentIndex
		then
			return
		end
		
		if infoPatent.ModelIndex == -1
		then
			return
		end
		
		CreatePartsModel(arrayUser, PatentIndex, infoPatent.ModelIndex, infoPatent.BoneBase, 1, infoPatent.PosX, infoPatent.PosY, infoPatent.PosZ, infoPatent.AngleX, infoPatent.AngleY, infoPatent.AngleZ)
	end
end