OpenFolder("Definitions")

--MODEL 0 = BMD
--MODEL 1 = IMAGE
--MODEL 2 = GIF

local PATENTE_INFO = {


   --{ Index = 1, Model = 0, Dir = "Custom\\Patente\\Model\\", Bmd = "voideye",  Type = 0, Bone = 20, PosX = 70.00, PosY = -5.00, PosZ = 00.00, AngleX = 0.0, AngleY = 0.0, AngleZ = 45.0},
   --{ Index = 2, Model = 1, Dir = "Custom\\Patente\\Image\\Patente1.tga", Type = 0, Bone = 20, PosX = 120.0, PosY = 00.00, PosZ = 00.00, Width  = 64,  Height = 64, Blend  = 2},
   
   --{ Index = 4, Model = 2, FirstImage = "Custom\\Patente\\Image\\void_p4a.tga", SecondImage  = "Custom\\Patente\\Image\\void_p4b.tga", Type = 0, Bone = 20, PosX = 90.00, PosY = 00.00, PosZ = 00.00, Width  = 75,  Height = 62, Blend  = 2, FramesH = 6, FramesV = 5, WaitTime = 0, FrameSpeed = 0, ChangeImageCount = 2},
   --{ Index = 5, Model = 2, FirstImage = "Custom\\Patente\\Image\\void_p9b.tga",  SecondImage = "", Type = 0, Bone = 20, PosX = 90.00, PosY = 0.00, PosZ = 00.00, Width  = 120,  Height = 99,  Blend  = 2, FramesH = 6, FramesV = 5, WaitTime = 60, FrameSpeed = 0, ChangeImageCount = 2},

   
     { Index = 1, Model = 2, FirstImage = "Custom\\Patente\\Image\\vox_p1a.tga" , SecondImage = "Custom\\Patente\\Image\\vox_p1b.tga", Type = 0, Bone = 20, PosX = 90.00, PosY = 00.00, PosZ = 0.00, Width  = 75,  Height = 62, Blend  = 2, FramesH = 6, FramesV = 5, WaitTime = 2,  FrameSpeed = 1, ChangeImageCount = 2},
     { Index = 2, Model = 2, FirstImage = "Custom\\Patente\\Image\\vox_p2a.tga" , SecondImage = "Custom\\Patente\\Image\\vox_p2b.tga", Type = 0, Bone = 20, PosX = 90.00, PosY = 00.00, PosZ = 0.00, Width  = 75,  Height = 62, Blend  = 2, FramesH = 6, FramesV = 5, WaitTime = 2,  FrameSpeed = 1, ChangeImageCount = 2},
     { Index = 3, Model = 2, FirstImage = "Custom\\Patente\\Image\\vox_p3a.tga" , SecondImage = "Custom\\Patente\\Image\\vox_p3b.tga", Type = 0, Bone = 20, PosX = 90.00, PosY = 00.00, PosZ = 0.00, Width  = 75,  Height = 62, Blend  = 2, FramesH = 6, FramesV = 5, WaitTime = 2,  FrameSpeed = 1, ChangeImageCount = 2},
 

}

local PATENTE_MODEL = {}

PATENTE_MODEL[1] = {
    Model = {
        { Mesh = 0, Glow = 2,  R = 1.0, G = 1.0, B = 1.0, Shadow = false, Render = false, Effect = -1, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
        { Mesh = 0, Glow = 70, R = 0.1, G = 0.1, B = 0.1, Shadow = false, Render = false, Effect = -1, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 1.0, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },

        { Mesh = 1, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Shadow = false, Render = true,  Effect = 00, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 0.4, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },
        { Mesh = 2, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Shadow = false, Render = true,  Effect = 01, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.02, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
        { Mesh = 3, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Shadow = false, Render = true,  Effect = 05, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.25, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
        { Mesh = 4, Glow = 66, R = 0.5, G = 0.8, B = 1.0, Shadow = false, Render = true,  Effect = 05, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = 0.25, RenColor = 1.0, Color = true,  RR = 0.5, RG = 0.8, RB = 1.0, Timer = 100, Texture = -1 },
        { Mesh = 0, Glow = 66, R = 0.2, G = 0.0, B = 0.0, Shadow = false, Render = true,  Effect = 00, FixEffect = false, Value = 1, RenOpacity = 0.0, RenSpeed = -2.0, RenColor = 0.5, Color = false, RR = 1.0, RG = 1.0, RB = 1.0, Timer = 100, Texture = -1 },

    },

    Effect = {
        { EffectType = 0, EffectIndex = 32002, EffectLevel = 0, Bone = 1, Size = 2.00, R = 0.50, G = 0.00, B = 1.00, PosX = 0,  PosY = 0,  PosZ = 0, Black = false, RandTime = 100 },
        { EffectType = 0, EffectIndex = 32002, EffectLevel = 0, Bone = 1, Size = 2.00, R = 0.00, G = 0.00, B = 1.00, PosX = 0,  PosY = 0,  PosZ = 0, Black = false, RandTime = 100 },
        { EffectType = 0, EffectIndex = 32140, EffectLevel = 0, Bone = 1, Size = 0.30, R = 0.00, G = 0.00, B = 1.00, PosX = 0,  PosY = 0,  PosZ = 0, Black = false, RandTime = 100 },
        { EffectType = 1, EffectIndex = 32260, EffectLevel = 9, Bone = 1, Size = 0.50, R = 0.30, G = 0.00, B = 1.00, PosX = 0,  PosY = 0,  PosZ = 0, Black = false, RandTime = 100 },
    }
}





local SIGN_EFFECT = {

	
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 2   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 3   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 4   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 5   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 6   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 7   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 8   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 9   , Size = 0.4, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 10  , Size = 0.3, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 11  , Size = 0.2, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	{ EffectType = 0, EffectIndex = 32002, EffectLevel = 0,  Bone = 12  , Size = 0.2, R = 0.0, G = 0.3, B = 0.5, PosX = 0.0, PosY = 0.0, PosZ = 0.0, Black = false, RandTime = 100 },
	

	
}




function StartLoadPatentes()
    for _, patente in ipairs(PATENTE_INFO) do
        if patente.Model == 0 then
            LoadPatenteModel(patente.Index, patente.Dir, patente.Bmd, patente.Type, patente.Bone, patente.PosX, patente.PosY, patente.PosZ, patente.AngleX, patente.AngleY, patente.AngleZ, true)
        elseif patente.Model == 1 then
            LoadPatenteImage(patente.Index, patente.Blend, patente.Dir, patente.Type, patente.Bone, patente.PosX, patente.PosY, patente.PosZ, patente.Width, patente.Height, true)
        else
            LoadPatenteImageAnimation(patente.Index, patente.Blend, patente.FirstImage, patente.SecondImage, patente.Type, patente.Bone, patente.PosX, patente.PosY, patente.PosZ, patente.Width, patente.Height, patente.FramesH, patente.FramesV, patente.WaitTime, patente.FrameSpeed, patente.ChangeImageCount, false)
        end
    end
end






function GMSignRender(BMDStruct, ObjectStruct)
	local Bmd = BMD.new(BMDStruct)
    local Obj = Object.new(ObjectStruct)
	
	--Bmd:glColor3fv()
	Bmd:SetLight(1.0, 1.0, 1.0)
	Bmd:RenderMesh(0, 2, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
	Bmd:RenderMesh(1, 66, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
	Bmd:RenderMesh(3, 66, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)



	--#region Efeito de Fogo
	local AnyTex = worldTime()
	local TexCoordU = (math.floor((AnyTex % (15 * 40) / 40) % 4)) * -0.98
	local TexCoordV = (math.floor((AnyTex % (15 * 40) / 40) / 4)) * -0.98

		
	--#region Efeito Y (Pra cima, efeito death)
	local AnyTex = worldTime()
	local TexCoordV = AnyTex / 100 * 0.1 --(100 velocidade padrão)
	Bmd:SetLight(1.0, 1.0, 1.0)
	Bmd:glColor3fv()
	Bmd:RenderMesh(3, 66, Obj:Alpha(), 3, Obj:Light(), Obj:TexCoordU(), TexCoordV, Obj:Hidden())
	--#endregion











	if SIGN_EFFECT ~= nil then
		for _, effect in ipairs(SIGN_EFFECT) do
			local Black = 0 if effect.Black then Black = 1 end
			if (effect.EffectType == 0)
			then
				Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateSprite(effect.EffectIndex, effect.Size, effect.R, effect.G, effect.B, ObjectStruct, Black)
			elseif (effect.EffectType == 1)
			then
				Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateParticle(effect.EffectIndex, effect.EffectLevel, effect.Size, effect.R, effect.G, effect.B, ObjectStruct)
			elseif (effect.EffectType == 2)
			then
				Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
				Bmd:CreateEffect(effect.EffectIndex, effect.EffectLevel, effect.R, effect.G, effect.B, ObjectStruct)
			end
		end
	end

	
	Bmd = nil
    Obj = nil
end










function PatentModelRender(BMDStruct, ObjectStruct, PatenteIndex)
    local Bmd = BMD.new(BMDStruct)
    local Obj = Object.new(ObjectStruct)

    Bmd:setMesh(0)

    local patente = PATENTE_MODEL[PatenteIndex]

    if patente ~= nil then
		patente = PATENTE_MODEL[PatenteIndex].Model
		for i = 1, #patente do
			local glow = patente[i]

			math.randomseed(os.time())

			local randValue = 100

			if glow.Timer ~= 100 then
				randValue = math.random(1, 100)
			end

			if glow.Timer >= randValue then
				if glow.R ~= -1 and glow.G ~= -1 and glow.B ~= -1 then
					Bmd:SetLight(glow.R, glow.G, glow.B)
				end
				Bmd:glColor3fv()

				if glow.Render then
					if glow.Effect == 0 then --EFEITO RENDER (PISCA PISCA)
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
						if (glow.Glow ~= 66) then
							Bmd:setMesh(glow.Mesh)
						end
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
							Bmd:setMesh(glow.Mesh)
							Bmd:RenderMesh(glow.Mesh, 1, Obj:Alpha(), glow.Mesh, Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
						end

						if glow.R ~= -1 and glow.G ~= -1 and glow.B ~= -1 then
							Bmd:SetLight(glow.R, glow.G, glow.B)
						end
						Bmd:glColor3fv()

						for c = 1, glow.Value do
							Bmd:glColor3fv()
							if (glow.Glow ~= 66) then
									Bmd:setMesh(glow.Mesh)
							end
							Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), glow.Mesh, Obj:Light(), TexCoordU, TexCoordV, glow.Texture)
						end
					end
				else
					Bmd:glColor3fv()
					if (glow.Glow ~= 66) then
						Bmd:setMesh(glow.Mesh)
					end
					Bmd:RenderMesh(glow.Mesh, glow.Glow, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), glow.Texture)
				end
			end

			if glow.Shadow then
				--Bmd:RenderShadowModel()
				--ou
				Bmd:SetLight(0.0, 0.0, 0.0)
				Bmd:glColor3fv()
				Bmd:setMesh(glow.Mesh)
				Bmd:RenderMesh(glow.Mesh, 1185, 0.9, Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1) --OPACIDADE DO ALPHA 0.9
			end
		end

	else
		Bmd:glColor3fv()
		Bmd:RenderBody(RENDER_TEXTURE, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)
	end

    local patente = PATENTE_MODEL[PatenteIndex].Effect

    for _, effect in ipairs(patente) do
        local Black = 0 if effect.Black then Black = 1 end
        if (effect.EffectType == 0)
        then
            Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
            Bmd:CreateSprite(effect.EffectIndex, effect.Size, effect.R, effect.G, effect.B, ObjectStruct, Black)
        elseif (effect.EffectType == 1)
        then
            Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
            Bmd:CreateParticle(effect.EffectIndex, effect.EffectLevel, effect.Size, effect.R, effect.G, effect.B, ObjectStruct)
        elseif (effect.EffectType == 2)
        then
            Bmd:TransformPosition2(effect.Bone, effect.PosX, effect.PosY, effect.PosZ)
            Bmd:CreateEffect(effect.EffectIndex, effect.EffectLevel, effect.R, effect.G, effect.B, ObjectStruct)
        end
    end

    Bmd:setMesh(-1)

    Bmd = nil
    Obj = nil
end