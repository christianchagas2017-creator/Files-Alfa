OpenFolder("Definitions")

--[[ RENDERIZAÇÃO COMPLETA
	--RenderAurora(32141, Glow, Size, R, G, B, bool Render, ObjectStruct)
	--RenderAurora2(32141, Glow, Size, R, G, B, Speed, Alpha, bool Render, ObjectStruct)
	--RenderTerrain(32312, Glow, Size, R, G, B, Speed, Alpha, Height, bool Render, ObjectStruct)

	--AURORA GM
	local size = 1.0
	RenderAurora(32141, RENDER_BRIGHT, size + 1.5, 0.3, 0.2, 1.0, false, ObjectStruct)
	EnableColor()
	RenderTerrain(32312, RENDER_BRIGHT, size + 0.5, 1.0, 1.0, 1.0,  0.01, 1.0, 5.0, true, ObjectStruct)
	RenderTerrain(32312, RENDER_BRIGHT,size, 1.0, 1.0, 1.0, -0.01, 1.0, 5.0, true, ObjectStruct)
--]]

function StartRuneEffect(charObj, ObjectStruct)
	local char = Character.new(charObj)
	local Obj = Object.new(ObjectStruct)

	local itens = {
		[0] = char:getSword(),
		[1] = char:getShield() ,
		[2] = char:getHelm() ,
		[3] = char:getArmor() ,
		[4] = char:getPants() ,
		[5] = char:getGloves() ,
		[6] = char:getBoots() ,
		[7] = char:getWing(),
		[8] = char:getHelper(),
		
		--====================== SLOTS TIER 2
		[242] = char:getHelm() ,
		[243] = char:getArmor() ,
		[244] = char:getPants() ,
		[245] = char:getGloves() ,
		[246] = char:getBoots() ,
		[247] = char:getWing(),	
		[248] = char:getHelper(),		
	}


	if (itens[6] == GET_ITEM_MODEL(11, 371)) then --WING DEATH 1.0
		local size = 0.8
		RenderAurora2(32141, RENDER_DARK, size + 0.8, 1.0, 1.0, 1.0,  0.025, 0.3, true, ObjectStruct)
		--RenderAurora2(32141, RENDER_DARK, size + 1, 1.0, 1.0, 1.0, -0.025, 0.3, true, ObjectStruct)
		--RenderTerrain(32312, RENDER_DARK, size + 0.5, 1.0, 1.0, 1.0,  0.01, 1.0, 5.0, false, ObjectStruct)
		EnableDark()
		RenderTerrain(32371, RENDER_DARK,   size, 0.8, 1.0, 1.0, 0.025, 1.0, 5.0, true, ObjectStruct)
		RenderTerrain(32371, RENDER_DARK,   size+0.8, 1.0, 1.0, 1.0, -0.025, 1.0, 5.0, true, ObjectStruct)
		RenderTerrain(32312, RENDER_BRIGHT, size+0.8, 1.0, 1.0, 1.0, 0.005, 1.0, 5.0, false, ObjectStruct)

	elseif (itens[6] == GET_ITEM_MODEL(11, 357)) then -- SET DRAGON KNIGHT
		local size = 1.0
		RenderAurora(32141,  RENDER_BRIGHT, size + 1.3,  0.328, 0.0, 0.41,  true, ObjectStruct)
		--RenderAurora(32141,  RENDER_BRIGHT, size + 1.3,  0.6, 0.519, 0.33,  true, ObjectStruct)
		EnableColor()
		RenderTerrain(40069, RENDER_BRIGHT,  size + 1.00, 0.512, 0.0, 0.64,  0.01, 0.70, 15.00, true, ObjectStruct)
		RenderTerrain(40069, RENDER_BRIGHT,  size + 1.00, 0.512, 0.0, 0.64,  0.01, 0.70, 15.00, true, ObjectStruct)
		RenderTerrain(40071, RENDER_BRIGHT,  size + 0.75, 0.512, 0.0, 0.64,  0.03, 1.00, 15.00, true, ObjectStruct)
		--RenderTerrain(40071, RENDER_BRIGHT,  size + 0.75, 0.86, 0.7542, 0.5074,  0.03, 1.00, 15.00, true, ObjectStruct)

	elseif (itens[7] == GET_ITEM_MODEL(12, 477)) then -- RUNE TIER HARD ( VERMELHO )
		local size = 1.0
		--RenderAurora(40084,  RENDER_BRIGHT, size + 1.2,  0.6785, 0.00, 0.69,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40083, RENDER_METAL, size + 0.70, 0.90, 0.00, 0.00,  1.05, 0.80, 1.00, false, ObjectStruct)
		RenderTerrain(40083, RENDER_METAL, size + 0.50, 0.90, 0.00, 0.00,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40084, RENDER_METAL, size + 1.50, 0.90, 0.00, 0.00,  0.01, 2.00, 1.00, false, ObjectStruct)
		RenderTerrain(40071, RENDER_METAL, size + 0.80, 1.00, 0.6167, 0.0000,  0.01, 0.60, 0.00, false, ObjectStruct)

	elseif (itens[7] == GET_ITEM_MODEL(12, 478)) then -- RUNE TIER EASY ( VERDE )
		local size = 1.0
		--RenderAurora(40084,  RENDER_BRIGHT, size + 1.2,  0.6785, 0.00, 0.69,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40083, RENDER_METAL, size + 0.70, 0.336,  0.72, 0.2592,  1.05, 0.50, 1.00, false, ObjectStruct)
		RenderTerrain(40083, RENDER_METAL, size + 0.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40084, RENDER_METAL, size + 1.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40071, RENDER_METAL, size + 0.80, 1.00, 0.6167, 0.0000,  0.01, 0.60, 0.00, false, ObjectStruct)

	elseif (itens[242] == GET_ITEM_MODEL(7, 648)) then -- RUNE TIER EASY ( VERDE )
		local size = 1.0
		--RenderAurora(40084,  RENDER_BRIGHT, size + 1.2,  0.6785, 0.00, 0.69,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40083, RENDER_METAL, size + 0.70, 0.336,  0.72, 0.2592,  1.05, 0.50, 1.00, false, ObjectStruct)
		RenderTerrain(40083, RENDER_METAL, size + 0.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40084, RENDER_METAL, size + 1.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40071, RENDER_METAL, size + 0.80, 1.00, 0.6167, 0.0000,  0.01, 0.60, 0.00, false, ObjectStruct)	

	elseif (itens[242] == GET_ITEM_MODEL(7, 05)) then -- RUNE TIER EASY ( VERDE )
		local size = 1.0
		--RenderAurora(40084,  RENDER_BRIGHT, size + 1.2,  0.6785, 0.00, 0.69,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40083, RENDER_METAL, size + 0.70, 0.336,  0.72, 0.2592,  1.05, 0.50, 1.00, false, ObjectStruct)
		RenderTerrain(40083, RENDER_METAL, size + 0.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40084, RENDER_METAL, size + 1.50, 0.1227, 0.46, 0.0552,  0.01, 1.00, 1.00, false, ObjectStruct)
		RenderTerrain(40071, RENDER_METAL, size + 0.80, 1.00, 0.6167, 0.0000,  0.01, 0.60, 0.00, false, ObjectStruct)		

	elseif (itens[242] == GET_ITEM_MODEL(7, 53)) then -- RUNE TIER MEDIO ( ROXO )
		local size = 1.0
		--RenderAurora(40084,  RENDER_BRIGHT, size + 1.2,  0.6785, 0.00, 0.69,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40083, RENDER_METAL, size + 0.70, 0.521,  0.1479, 0.87,  1.05, 2.20, 1.00, false, ObjectStruct)
		RenderTerrain(40083, RENDER_METAL, size + 0.50, 0.2866, 0.0265, 0.53,  0.01, 2.20, 1.00, false, ObjectStruct)
		RenderTerrain(40084, RENDER_METAL, size + 1.50, 0.2866, 0.0265, 0.53,  0.01, 2.20, 1.00, false, ObjectStruct)
		RenderTerrain(40071, RENDER_METAL, size + 0.80, 1.00, 0.6167, 0.0000,  0.01, 0.60, 0.00, false, ObjectStruct)		

	elseif (itens[6] == GET_ITEM_MODEL(11, 632)) then -- SET HYON
		local size = 1.0
		RenderAurora(32141,  RENDER_BRIGHT, size + 1.7,  0.1617, 0.3746, 0.77,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(40070, RENDER_BRIGHT, size + 2.80, 0.3694, 0.5833, 1.00,  0.01, 0.70, 15.00, true, ObjectStruct)
		RenderTerrain(32312, RENDER_BRIGHT, size + 1.00, 0.3694, 0.5833, 1.00, -0.01, 0.70, 15.00, true, ObjectStruct)

	elseif (itens[6] == GET_ITEM_MODEL(11, 61)) then -- SET BRAVE
		local size = 1.0
		RenderAurora(32141,  RENDER_BRIGHT, size + 1.5,  0.3694, 0.64, 0.2624,  false, ObjectStruct)
		EnableColor()
		RenderTerrain(32312, RENDER_BRIGHT, size + 0.50, 0.3694, 0.64, 0.2624,  0.01, 0.70, 15.00, true, ObjectStruct)
		RenderTerrain(32312, RENDER_BRIGHT, size + 0.50, 0.3694, 0.64, 0.2624, -0.01, 0.70, 15.00, true, ObjectStruct)

	elseif (itens[6] == GET_ITEM_MODEL(11, 45)) then --WING STYLE 1.0
		local size = 1.0
		RenderAurora(32141, RENDER_BRIGHT, size + 1.5, 0.56, 0.45, 1.00, false, ObjectStruct)
		EnableColor()
		RenderTerrain(32312, RENDER_BRIGHT, size + 0.50, 1.00, 1.00, 1.00,  0.01, 0.70, 5.00, true, ObjectStruct)
		RenderTerrain(32312, RENDER_BRIGHT, size + 0.00, 1.00, 1.00, 1.00, -0.01, 0.70, 5.00, true, ObjectStruct)
		
	elseif (itens[7] == GET_ITEM_MODEL(12, 207)) then --CAPE STYLE 1.0
		local size = 1.0
		RenderAurora2(32141, RENDER_BRIGHT, size + 1.50, 0.56, 0.45, 1.00, -0.01, 0.50, false, ObjectStruct)
		EnableColor()
		RenderTerrain(32312, RENDER_BRIGHT, size + 0.50, 1.00, 1.00, 1.00,  0.01, 1.00, 5.00, true, ObjectStruct)
	end


	char = nil
end