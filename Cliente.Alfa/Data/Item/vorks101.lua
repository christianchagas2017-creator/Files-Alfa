OpenFolder("Definitions")

function GET_ITEM_MODEL(x, y)
	return ((x * 512) + y) + 1171
end

local PATENTE_ENABLED = true

local PATENTE_FRAMES = 100 --QUANTOS FRAMES ATÉ A SEGUNDA IMAGEM ATIVAR

--local ADMINS = {
--	{ Enabled = true, Name = "Admin"},
--}
--//=================================================================================================================================================================//--
-- PATENTE TGA
--//=================================================================================================================================================================//--

local PATENT_INFO_IMAGE = {}

--[[ --PATENTES TEXTURAS
hope_p1a  = Hitador 1
hope_p1b  = Hitador 2
hope_p2a  = Sanguinário 1
hope_p2b  = Sanguinário 2
hope_p3a  = Assassino 1
hope_p3b  = Assassino 2
hope_p4a  = Algoz 1
hope_p4b  = Algoz 2
hope_p5a  = Carrasco 1
hope_p5b  = Carrasco 2
hope_p6a  = Ceifador de Bronze 1
hope_p6b  = Ceifador de Bronze 2
hope_p7a  = Ceifador de Prata 1
hope_p7b  = Ceifador de Prata 2
hope_p8a  = Ceifador de Ouro 1
hope_p8b  = Ceifador de Ouro 2
hope_p9a  = Ceifador de Platina 1
hope_p9b  = Ceifador de Platina 2
hope_p11a = Ceifador de Diamante 1
hope_p11b = Ceifador de Diamante 2
hope_p12a = Senhor da Morte 1
hope_p12b = Senhor da Morte 2
hope_p10a = Príncipe da Morte 1
hope_p10b = Príncipe da Morte 2
--]]

PATENT_INFO_IMAGE[1] = {
	PatentIndex = 1,  ImageIndex = 590064, ImageIndex2 = 590065, NameLoad = "Interface\\hope_p1a.tga",  NameLoad2 = "Interface\\hope_p1b.tga",  Width = 55.0, Height = 55.0, PosX = -30.0, PosY = -70.0
}
PATENT_INFO_IMAGE[2] = {
	PatentIndex = 2,  ImageIndex = 620002, ImageIndex2 = 620003, NameLoad = "Interface\\hope_p2a.tga",  NameLoad2 = "Interface\\hope_p2b.tga",  Width = 55.0, Height = 55.0, PosX = -30.0, PosY = -70.0
}
PATENT_INFO_IMAGE[3] = {
	PatentIndex = 3,  ImageIndex = 620004, ImageIndex2 = 620005, NameLoad = "Interface\\hope_p3a.tga",  NameLoad2 = "Interface\\hope_p3b.tga",  Width = 55.0, Height = 55.0, PosX = -36.0, PosY = -70.0
}
PATENT_INFO_IMAGE[4] = {
	PatentIndex = 4,  ImageIndex = 620006, ImageIndex2 = 620007, NameLoad = "Interface\\hope_p4a.tga",  NameLoad2 = "Interface\\hope_p4b.tga",  Width = 55.0, Height = 55.0, PosX = -36.0, PosY = -70.0
}
PATENT_INFO_IMAGE[5] = { 
	PatentIndex = 5,  ImageIndex = 620008, ImageIndex2 = 620009, NameLoad = "Interface\\hope_p5a.tga",  NameLoad2 = "Interface\\hope_p5b.tga",  Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[6] = { 
	PatentIndex = 6,  ImageIndex = 620010, ImageIndex2 = 620011, NameLoad = "Interface\\hope_p6a.tga",  NameLoad2 = "Interface\\hope_p6b.tga",  Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[7] = {
	PatentIndex = 7,  ImageIndex = 620012, ImageIndex2 = 620013, NameLoad = "Interface\\hope_p7a.tga",  NameLoad2 = "Interface\\hope_p7b.tga",  Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[8] = {
	PatentIndex = 8,  ImageIndex = 620014, ImageIndex2 = 620015, NameLoad = "Interface\\hope_p8a.tga",  NameLoad2 = "Interface\\hope_p8b.tga",  Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[9] = {
	PatentIndex = 9,  ImageIndex = 620016, ImageIndex2 = 620017, NameLoad = "Interface\\hope_p11a.tga", NameLoad2 = "Interface\\hope_p11b.tga", Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[10] = {
	PatentIndex = 10, ImageIndex = 620018, ImageIndex2 = 620019, NameLoad = "Interface\\hope_p12a.tga", NameLoad2 = "Interface\\hope_p12b.tga", Width = 55.0, Height = 55.0, PosX = -32.0, PosY = -70.0
}
PATENT_INFO_IMAGE[11] = {
	PatentIndex = 11, ImageIndex = 620020, ImageIndex2 = 620021, NameLoad = "Interface\\hope_p9a.tga",  NameLoad2 = "Interface\\hope_p9b.tga",  Width = 80.0, Height = 80.0, PosX = -49.0, PosY = -70.0
}
PATENT_INFO_IMAGE[12] = {
	PatentIndex = 12, ImageIndex = 620022, ImageIndex2 = 620023, NameLoad = "Interface\\hope_p10a.tga", NameLoad2 = "Interface\\hope_p10b.tga", Width = 50.0, Height = 50.0, PosX = -20.0, PosY = -70.0
}

--[[ --JOINTS DO PERSONAGEM
BonePlayer = 18		= Espinha
BonePlayer = 25		= OMBRO DIREITO
BonePlayer = 0		=
BonePlayer = 4 		= Perna Esquerda	(5  = PÃ© esquerdo)
BonePlayer = 11		= Perna Direita 	(12 = PÃ© direito)
BonePlayer = 21		= PescoÃ§o 			(20 = CabeÃ§a)
BonePlayer = 30		= Dedo Direito  	(25 = MÃ£o direita)
BonePlayer = 41		= Dedo Esquerdo 	(34 = MÃ£o esquerda)
BonePlayer = 43		= Pants
]]--

local PATENT_INFO_MODEL = {}

PATENT_INFO_MODEL[13] = { 
	PatentIndex = 13, ModelIndex = -1, ModelFolder = "Skill\\", ModelName = "ReiDaMorte",		 BoneBase = 20, PosX = 90.0, PosY = 0.0, PosZ = 0.0, AngleX = 0.0, AngleY = 0.0, AngleZ = 220.0,
}

--//=================================================================================================================================================================//--
-- PATENTE BMD
--//=================================================================================================================================================================//--

local PATENT_MODEL_GLOW = {}

PATENT_MODEL_GLOW[13] = {
	{ Mesh = 0, Glow = 66,  R = 0.50, G = 0.50, B = 0.50, Render = true, Effect = -1, FixEffect = true, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
	{ Mesh = 1, Glow = 66,  R = 0.50, G = 0.50, B = 0.50, Render = true, Effect = -1, FixEffect = true, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
}

local PATENT_MODEL_EFFECT = { }

PATENT_MODEL_EFFECT[13] = {
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 1, EffectIndex = 32260, EffectLevel = 9,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
	{ EffectType = 0, EffectIndex = 32140, EffectLevel = 0,  Skeleton = 1,  Size = 3.90, LightR = 0.32, LightG = 0.64, LightB = 0.0, PosX = -1, PosY = -1, PosZ = -1, Black = 0.0 },
}

--//=================================================================================================================================================================//--
-- MUSIGN
--//=================================================================================================================================================================//--
local MUSIGN_MODEL_GLOW = {
{ Mesh = 0, Glow = 2,  R = 1.0, G = 1.0, B = 1.0, Render = false, Effect = -1, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
{ Mesh = 0, Glow = 70, R = 0.1, G = 0.1, B = 0.1, Render = false, Effect = -1, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },

{ Mesh = 1, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Render = true,  Effect = 00, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 0.4, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
{ Mesh = 2, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Render = true,  Effect = 01, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.02, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
{ Mesh = 3, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Render = true,  Effect = 05, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.25, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
{ Mesh = 4, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Render = true,  Effect = 05, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.25, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
{ Mesh = 0, Glow = 66, R = 0.2, G = 0.0, B = 0.0, Render = true,  Effect = 00, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 0.5, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
}

local MUSIGN_MODEL_EFFECT = {
--{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 2.00, LightR = 1.0, LightG = 0.0, LightB = 0.0, PosX = 0, PosY = 0, PosZ = 0, Black = 0.0 },
--{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Skeleton = 1,  Size = 2.00, LightR = 1.0, LightG = 0.0, LightB = 0.0, PosX = 0, PosY = 0, PosZ = 0, Black = 0.0 },
--{ EffectType = 0, EffectIndex = 32140, EffectLevel = 0,  Skeleton = 1,  Size = 0.30, LightR = 0.0, LightG = 0.0, LightB = 1.0, PosX = 0, PosY = 0, PosZ = 0, Black = 0.0 },
--{ EffectType = 1, EffectIndex = 32260, EffectLevel = 9,  Skeleton = 1,  Size = 0.50, LightR = 1.0, LightG = 0.0, LightB = 0.0, PosX = 0, PosY = 0, PosZ = 0, Black = 0.0 },
}

--//=================================================================================================================================================================//--
-- CODIGO BRUTO
--//=================================================================================================================================================================//--

function StartPatentLoadModel()
	for key in pairs(PATENT_INFO_MODEL) do
		SetPatentModel(PATENT_INFO_MODEL[key].PatentIndex, PATENT_INFO_MODEL[key].ModelFolder, PATENT_INFO_MODEL[key].ModelName)
	end
end

function StartPatentLoadImage()
	for key in pairs(PATENT_INFO_IMAGE) do
		LoadImage(PATENT_INFO_IMAGE[key].NameLoad, PATENT_INFO_IMAGE[key].ImageIndex)
		LoadImage(PATENT_INFO_IMAGE[key].NameLoad2, PATENT_INFO_IMAGE[key].ImageIndex2)
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
	if not PATENTE_ENABLED then
		return
	end

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
	if not PATENTE_ENABLED then
		return
	end

	local patentGlow = PATENT_MODEL_GLOW[PatentIndex]

	local Bmd = BMD.new(BMDStruct)
	local Obj = Object.new(ObjectStruct)

	if patentGlow ~= nil then
		for i = 1, #patentGlow do
			local glow = patentGlow[i]

			math.randomseed(os.time())

			local randValue = 100

			if glow.Timer ~= 100 then
				randValue = math.random(1, 100)
			end

			if glow.Timer >= randValue then
				Bmd:SetLight(glow.R, glow.G, glow.B)
				Bmd:glColor3fv()

				if glow.Render then
					if     glow.Effect == 0 then --EFEITO RENDER (PISCA PISCA)
						local Vertex = GetDoubleRender(glow.RenSpeed, 0.0) + glow.RenOpacity
						if Vertex > glow.RenColor
						then
							Vertex = glow.RenColor
						end

						if glow.Color then
							if glow.R ~= -1 then
								Bmd:SetLight(glow.RR, Vertex, Vertex)
							end
							if glow.G ~= -1 then
								Bmd:SetLight(Vertex, glow.RG, Vertex)
							end
							if glow.B ~= -1 then
								Bmd:SetLight(Vertex, Vertex, glow.RB)
							end
						else
							Bmd:SetLight(Vertex, Vertex, Vertex)
						end

						Bmd:glColor3fv()

						Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
					else
						local AnyTex = worldTime()
						local TexCoordV = Obj:TexCoordV()
						local TexCoordU = Obj:TexCoordU()

						if glow.Effect == 1 then TexCoordV = AnyTex / 100 * glow.RenSpeed end
						if glow.Effect == 2 then TexCoordV = AnyTex / 100 * -glow.RenSpeed end
						if glow.Effect == 3 then TexCoordU = AnyTex / 100 * glow.RenSpeed end
						if glow.Effect == 4 then TexCoordU = AnyTex / 100 * -glow.RenSpeed end
						if glow.Effect == 5 then
							TexCoordU = (math.floor((AnyTex % (15 * 40) / 40) % 4)) * glow.RenSpeed
							TexCoordV = (math.floor((AnyTex % (15 * 40) / 40) / 4)) * glow.RenSpeed
						end
						if glow.Effect == 6 then 
							TexCoordU = (math.floor((AnyTex % (15 * 40) / 40) % 3)) * -glow.RenSpeed
							TexCoordV = (math.floor((AnyTex % (15 * 40) / 40) / 3)) * -glow.RenSpeed
						end

						if glow.FixEffect then
							Bmd:SetLight(0.0, 0.0, 0.0)
							Bmd:glColor3fv()
							Bmd:RenderMesh(glow.Mesh, 2, Obj:Alpha(), glow.Mesh, Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
						end

						Bmd:SetLight(glow.R, glow.G, glow.B)

						Bmd:glColor3fv()

						for c = 1, glow.Value do
							Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), glow.Mesh, Obj:Light(), TexCoordU, TexCoordV, glow.Texture)
						end
					end
				else
					Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
				end
			end
		end
	else
		Bmd:SetLight(8.5, 8.5, 8.5)
		Bmd:glColor3fv()
        Bmd:RenderBody(2, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)
	end

	return 0
end

--MUSIGN STAFF GM
function PatentModelRender(BMDStruct, ObjectStruct, ItemIndex)
	local Bmd = BMD.new(BMDStruct)
	local Obj = Object.new(ObjectStruct)

	--local playerName = UserGetName()
	--for _, adminInfo in ipairs(ADMINS) do
	--	if not adminInfo.Enabled and adminInfo.Name == playerName then
	--		Bmd = nil
	--		Obj = nil
	--		return 1
	--	end
	--end

	if ItemIndex == 349 then

		for i = 1, #MUSIGN_MODEL_GLOW do
			local glow = MUSIGN_MODEL_GLOW[i]

			math.randomseed(os.time())

			local randValue = 100

			if glow.Timer ~= 100 then
				randValue = math.random(1, 100)
			end

			if glow.Timer >= randValue then
				Bmd:SetLight(glow.R, glow.G, glow.B)
				Bmd:glColor3fv()

				if glow.Render then
					if     glow.Effect == 0 then --EFEITO RENDER (PISCA PISCA)
						local Vertex = GetDoubleRender(glow.RenSpeed, 0.0) + glow.RenOpacity
						if Vertex > glow.RenColor
						then
							Vertex = glow.RenColor
						end

						if glow.Color then
							if glow.R ~= -1 then
								Bmd:SetLight(glow.RR, Vertex, Vertex)
							end
							if glow.G ~= -1 then
								Bmd:SetLight(Vertex, glow.RG, Vertex)
							end
							if glow.B ~= -1 then
								Bmd:SetLight(Vertex, Vertex, glow.RB)
							end
						else
							Bmd:SetLight(Vertex, Vertex, Vertex)
						end

						Bmd:glColor3fv()

						Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
					else
						local AnyTex = worldTime()
						local TexCoordV = Obj:TexCoordV()
						local TexCoordU = Obj:TexCoordU()

						if glow.Effect == 1 then TexCoordV = AnyTex / 100 * glow.RenSpeed end
						if glow.Effect == 2 then TexCoordV = AnyTex / 100 * -glow.RenSpeed end
						if glow.Effect == 3 then TexCoordU = AnyTex / 100 * glow.RenSpeed end
						if glow.Effect == 4 then TexCoordU = AnyTex / 100 * -glow.RenSpeed end
						if glow.Effect == 5 then
							TexCoordU = (math.floor((AnyTex % (15 * 40) / 40) % 4)) * glow.RenSpeed
							TexCoordV = (math.floor((AnyTex % (15 * 40) / 40) / 4)) * glow.RenSpeed
						end
						if glow.Effect == 6 then 
							TexCoordU = (math.floor((AnyTex % (15 * 40) / 40) % 4)) * -glow.RenSpeed
							TexCoordV = (math.floor((AnyTex % (15 * 40) / 40) / 4)) * -glow.RenSpeed
						end

						if glow.FixEffect then
							Bmd:SetLight(0.0, 0.0, 0.0)
							Bmd:glColor3fv()
							Bmd:RenderMesh(glow.Mesh, 2, Obj:Alpha(), glow.Mesh, Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
						end

						Bmd:SetLight(glow.R, glow.G, glow.B)

						Bmd:glColor3fv()

						for c = 1, glow.Value do
							Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), glow.Mesh, Obj:Light(), TexCoordU, TexCoordV, glow.Texture)
						end
					end
				else
					Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
				end
			end
		end

		for i = 1, #MUSIGN_MODEL_EFFECT do
			local effect = MUSIGN_MODEL_EFFECT[i]

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

		Bmd = nil
		Obj = nil
		return 1
	else
		Bmd:SetLight(8.5, 8.5, 8.5)
		Bmd:glColor3fv()
        Bmd:RenderBody(2, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)

		Bmd = nil
		Obj = nil
		return 1
	end

	Bmd = nil
	Obj = nil
	
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

local imageControl = {
	standBy = false,
	standByTime = 0,
	changePosition = 0,
	changeImage = 0,
	currentImage = 1,
	currentPosition = {x = 1, y = 1},
	imageAdjustment = {
		[1] = {
			[1] = {sx = 0.0061129, sy =  -0.0020 , ex = 0.0826123, ey = 0.164012},
			[2] = {sx = 0.0061129, sy =  0.158212, ex = 0.0826123, ey = 0.164012},
			[3] = {sx = 0.0061129, sy =  0.318212, ex = 0.0826123, ey = 0.164012},
			[4] = {sx = 0.0061129, sy =  0.478212, ex = 0.0826123, ey = 0.164012},
			[5] = {sx = 0.0061129, sy =  0.638212, ex = 0.0826123, ey = 0.164012},
		},

		[2] = {
			[1] = {sx = 0.103724,  sy =  -0.0020 , ex = 0.0826123, ey = 0.164012},
			[2] = {sx = 0.103724,  sy =  0.158212, ex = 0.0826123, ey = 0.164012},
			[3] = {sx = 0.103724,  sy =  0.318212, ex = 0.0826123, ey = 0.164012},
			[4] = {sx = 0.103724,  sy =  0.478212, ex = 0.0826123, ey = 0.164012},
			[5] = {sx = 0.103724,  sy =  0.638212, ex = 0.0826123, ey = 0.164012},
		},

		[3] = {
			[1] = {sx = 0.201424,  sy =  -0.0020 , ex = 0.0826123, ey = 0.164012},
			[2] = {sx = 0.201424,  sy =  0.158212, ex = 0.0826123, ey = 0.164012},
			[3] = {sx = 0.201424,  sy =  0.318212, ex = 0.0826123, ey = 0.164012},
			[4] = {sx = 0.201424,  sy =  0.478212, ex = 0.0826123, ey = 0.164012},
			[5] = {sx = 0.201424,  sy =  0.638212, ex = 0.0826123, ey = 0.164012},
		},

		[4] = {
			[1] = {sx = 0.299124,  sy =  -0.0020 , ex = 0.0826123, ey = 0.164012},
			[2] = {sx = 0.299124,  sy =  0.158212, ex = 0.0826123, ey = 0.164012},
			[3] = {sx = 0.299124,  sy =  0.318212, ex = 0.0826123, ey = 0.164012},
			[4] = {sx = 0.299124,  sy =  0.478212, ex = 0.0826123, ey = 0.164012},
			[5] = {sx = 0.299124,  sy =  0.638212, ex = 0.0826123, ey = 0.164012},
		},

		[5] = {      
			[1] = {sx = 0.396824,  sy =  -0.0020 , ex = 0.0826123, ey = 0.164019},
			[2] = {sx = 0.396824,  sy =  0.158219, ex = 0.0826123, ey = 0.164019},
			[3] = {sx = 0.396824,  sy =  0.318219, ex = 0.0826123, ey = 0.164019},
			[4] = {sx = 0.396824,  sy =  0.478219, ex = 0.0826123, ey = 0.164019},
			[5] = {sx = 0.396824,  sy =  0.638219, ex = 0.0826123, ey = 0.164019},
		},

		[6] = {
			[1] = {sx = 0.494524,  sy =  -0.0020 , ex = 0.0826123, ey = 0.164012},
			[2] = {sx = 0.494524,  sy =  0.158211, ex = 0.0826123, ey = 0.164012},
			[3] = {sx = 0.494524,  sy =  0.318211, ex = 0.0826123, ey = 0.164012},
			[4] = {sx = 0.494524,  sy =  0.478211, ex = 0.0826123, ey = 0.164019},
			[5] = {sx = 0.494524,  sy =  0.638211, ex = 0.0826123, ey = 0.164019},
		},
		

	}
}

local size = {

	[8] =  {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[9] =  {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[10] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[11] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[12] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[13] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[14] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[15] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[16] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
	[17] = {x = -15, y = -03, w = 30, h = 90}, --MAX ZOOM
    [18] = {x = -14, y = -02, w = 28, h = 28},
    [19] = {x = -13, y = -01, w = 26, h = 26},
    [20] = {x = -12, y = -00, w = 24, h = 24},
    [21] = {x = -11, y = -01, w = 22, h = 22},
    [22] = {x = -10, y = -02, w = 20, h = 20},
    [23] = {x = -09, y =  03, w = 18, h = 18},
    [24] = {x = -08, y =  04, w = 16, h = 16},
    [25] = {x = -07, y =  05, w = 14, h = 14},
    [26] = {x = -06, y =  06, w = 12, h = 12},
    [27] = {x = -05, y =  07, w = 10, h = 10},
    [28] = {x = -04, y =  08, w = 08, h = 08},
    [29] = {x = -03, y =  09, w = 06, h = 06},
    [30] = {x = -02, y =  10, w = 04, h = 04},
    [31] = {x = -01, y =  11, w = 02, h = 02},
    [32] = {x =  00, y =  12, w = 00, h = 00},
	--MEIO
    [33] = {x =  01, y = 13, w = -01, h = -01},
    [34] = {x =  02, y = 13, w = -02, h = -02},
    [35] = {x =  02, y = 13, w = -02, h = -02},
    [36] = {x =  03, y = 14, w = -04, h = -04},
    [37] = {x =  03, y = 14, w = -04, h = -04},
    [38] = {x =  03, y = 14, w = -04, h = -04},
    [39] = {x =  03, y = 14, w = -04, h = -04},
    [40] = {x =  04, y = 14, w = -06, h = -06},
    [41] = {x =  04, y = 14, w = -06, h = -06},
    [42] = {x =  04, y = 14, w = -06, h = -06},
    [43] = {x =  04, y = 14, w = -06, h = -06},
    [44] = {x =  05, y = 15, w = -08, h = -08},
    [45] = {x =  05, y = 15, w = -08, h = -08},
    [46] = {x =  05, y = 15, w = -08, h = -08},
    [47] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [48] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [49] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [50] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [51] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [52] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [53] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [54] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
    [55] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM

--[[
	[17] = {x = -15, y = -03, w = 30, h = 30}, --MAX ZOOM
    [18] = {x = -14, y = -02, w = 28, h = 28},
    [19] = {x = -13, y = -01, w = 26, h = 26},
    [20] = {x = -12, y = -00, w = 24, h = 24},
    [21] = {x = -11, y = -01, w = 22, h = 22},
    [22] = {x = -10, y = -02, w = 20, h = 20},
    [23] = {x = -09, y =  03, w = 18, h = 18},
    [24] = {x = -08, y =  04, w = 16, h = 16},
    [25] = {x = -07, y =  05, w = 14, h = 14},
    [26] = {x = -06, y =  06, w = 12, h = 12},
    [27] = {x = -05, y =  07, w = 10, h = 10},
    [28] = {x = -04, y =  08, w = 08, h = 08},
    [29] = {x = -03, y =  09, w = 06, h = 06},
    [30] = {x = -02, y =  10, w = 04, h = 04},
    [31] = {x = -01, y =  11, w = 02, h = 02},
    [32] = {x =  00, y =  12, w = 00, h = 00},
	--MEIO
    [33] = {x =  01, y = 13, w = -01, h = -01},
    [34] = {x =  02, y = 13, w = -02, h = -02},
    [35] = {x =  02, y = 13, w = -02, h = -02},
    [36] = {x =  03, y = 14, w = -04, h = -04},
    [37] = {x =  03, y = 14, w = -04, h = -04},
    [38] = {x =  03, y = 14, w = -04, h = -04},
    [39] = {x =  03, y = 14, w = -04, h = -04},
    [40] = {x =  04, y = 14, w = -06, h = -06},
    [41] = {x =  04, y = 14, w = -06, h = -06},
    [42] = {x =  04, y = 14, w = -06, h = -06},
    [43] = {x =  04, y = 14, w = -06, h = -06},
    [44] = {x =  05, y = 15, w = -08, h = -08},
    [45] = {x =  05, y = 15, w = -08, h = -08},
    [46] = {x =  05, y = 15, w = -08, h = -08},
    [47] = {x =  05, y = 15, w = -08, h = -08}, --MIN ZOOM
--]]
}

-- HORSE = 01
-- FENRIR = 01
-- PETS = 0

local PetHeight = {
	[GET_ITEM_MODEL(13, 201)] = {Type = 0, X = 00,  Y = -50}, 
	[GET_ITEM_MODEL(13, 299)] = {Type = 0, X = 00,  Y = -35}, 
}

function RenderPatentImage(arrayUser, PatentIndex, Wing, Pet, Safezone)
	if not PATENTE_ENABLED then
		return
	end

	local res = GetResolutionPatent()

	local infoPatent = PATENT_INFO_IMAGE[PatentIndex]


	if infoPatent ~= nil
	then
		if infoPatent.PatentIndex ~= PatentIndex then
			return
		end

		local PosX, PosY = GetPosFromPlayer(arrayUser, 100.0)
		local zoom = 35
		local BackupPosY = PosY

		--zoom = math.floor( 35)

		if Safezone == 1 then
			PosY = BackupPosY
		else
			if Pet ~= -1 then
				if Wing ~= -1 then
					if PetHeight[Pet] ~= nil then
						if PetHeight[Pet].Type == 0 then
							PosY = PosY - 10
						end
						PosY = PosY + PetHeight[Pet].Y
						PosX = PosX + PetHeight[Pet].X
					else
						PosY = PosY - 10
					end
				else
					if PetHeight[Pet] ~= nil then
						PosY = PosY + PetHeight[Pet].Y
						PosX = PosX + PetHeight[Pet].X
					end
				end
			else
				if Wing ~= -1 then
					PosY = PosY - 10
				else
					PosY = BackupPosY
				end
			end
		end

		SetBlend(1)
		if imageControl.changePosition >= 2 then
			imageControl.changePosition = 0
			if imageControl.currentPosition.x >= 6 then
				imageControl.currentPosition.x = 1
				if imageControl.currentPosition.y >= 5 then
					imageControl.currentPosition.y = 1
					if imageControl.changeImage >= 7 then	
						imageControl.currentImage = 1
						imageControl.changeImage = 0
					else
						imageControl.changeImage = imageControl.changeImage + 1
						imageControl.currentImage = 0
					end
					imageControl.standBy = true
					imageControl.standByTime = 0
				else
					imageControl.currentPosition.y = imageControl.currentPosition.y + 1
				end
			else
				imageControl.currentPosition.x = imageControl.currentPosition.x + 1
			end

			local adjust = imageControl.imageAdjustment[imageControl.currentPosition.x][imageControl.currentPosition.y]
			local imageIndex = infoPatent.ImageIndex
			if imageControl.currentImage == 1 then
				imageIndex = infoPatent.ImageIndex2
			end

			 RenderImage2(imageIndex, PosX + infoPatent.PosX+size[34].x, PosY + infoPatent.PosY +size[34].y, infoPatent.Width+size[34].w, infoPatent.Height+size[34].h, adjust.sx, adjust.sy, adjust.ex, adjust.ey, 1,1, 1.0)
			 --RenderImage2(imageIndex, PosX + infoPatent.PosX+size[35].x, PosY + infoPatent.PosY +size[35].y, 300/6+size[35].w, 205/5+size[35].h, adjust.sx, adjust.sy, adjust.ex, adjust.ey, 1,1, 1.0)
			 --RenderImage2(imageIndex, PosX + infoPatent.PosX+size[35].x, PosY + infoPatent.PosY +size[35].y, 1024/6+size[35].w, 700/5+size[35].h, 1024/6+size[35].w, 700/5+size[35].h, adjust.ex, adjust.ey, 1,1, 1.0)

			if imageControl.standBy then
				imageControl.standByTime = imageControl.standByTime + 1
				if imageControl.standByTime >= 0 then
					imageControl.standBy = false
					imageControl.standByTime = 0
				end
			else
				imageControl.changePosition = imageControl.changePosition + 1
			end

		else
			local adjust = imageControl.imageAdjustment[imageControl.currentPosition.x][imageControl.currentPosition.y]
			local imageIndex = infoPatent.ImageIndex
			if imageControl.currentImage == 1 then
				imageIndex = infoPatent.ImageIndex2
			end

			 RenderImage2(imageIndex, PosX + infoPatent.PosX+size[35].x, PosY + infoPatent.PosY +size[35].y, infoPatent.Width+size[35].w, infoPatent.Height+size[35].h, adjust.sx, adjust.sy, adjust.ex, adjust.ey, 1,1, 1.0)
			 --RenderImage2(imageIndex, PosX + infoPatent.PosX+size[35].x, PosY + infoPatent.PosY +size[35].y, 300/6+size[35].w, 205/5+size[35].h, adjust.sx, adjust.sy, adjust.ex, adjust.ey, 1,1, 1.0)
			 --RenderImage2(imageIndex, PosX + infoPatent.PosX+size[35].x, PosY + infoPatent.PosY +size[35].y, 1024/6+size[35].w, 700/5+size[35].h, adjust.sx, adjust.sy, adjust.ex, adjust.ey, 1,1, 1.0)

			if imageControl.standBy then
				imageControl.standByTime = imageControl.standByTime + 1
				if imageControl.standByTime >= 0 then
					imageControl.standBy = false
					imageControl.standByTime = 0
				end
			else
				imageControl.changePosition = imageControl.changePosition + 1
			end
		end

		GLSwitch()
	end
end

function SetPlayerPatente(arrayUser, PatentIndex)
	if not PATENTE_ENABLED then
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