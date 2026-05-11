OpenFolder("Definitions")

Render_Light = true

CLASS = {
	SOUL_MASTER = 0,
	MAX_SOUL_MASTER = 2,
	BLADE_KNIGHT = 2,
	MAX_BLADE_KNIGHT = 4,
	FAIRY_ELF = 4,
	MAGIC_GLADIATOR = 6,
	MAX_MAGIC_GLADIATOR = 6
}


function RenderMonster(BMDStruct, ObjectStruct, MonsterID)
    local Bmd = BMD.new(BMDStruct)
    local Obj = Object.new(ObjectStruct)

    --Obj:RenderShadow(false)

    Bmd:setMesh(0)


    if MonsterID == 603 then
        Bmd:RenderBody(2, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)
        Obj:RenderShadow(true)
		
			Bmd:SetLight(10.00, 10.00, 10.00)
		    Bmd:RenderMesh(0 , 2,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 2,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 2,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
				
			
			

        Bmd = nil
        Obj = nil
        --collectgarbage()
        return 1
    end

    if MonsterID == 602 then
        Bmd:RenderBody(2, Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), Obj:Hidden(), -1)
        Obj:RenderShadow(true)
		
			Bmd:glColor3fv()
		    Bmd:RenderMesh(0 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
			
			Bmd:SetLight(1.0, 0.7333, 0.0)			
		    Bmd:RenderMesh(0 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)		
			
			Bmd:SetLight(1.0, 0.7333, 0.0)			
		    Bmd:RenderMesh(0 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)		
			
			Bmd:SetLight(1.0, 0.7333, 0.0)			
		    Bmd:RenderMesh(0 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 66,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)	
			
			Bmd:SetLight(1.0, 0.7333, 0.0)			
		    Bmd:RenderMesh(0 , 65600,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 65600,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 65600,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
			
			Bmd:SetLight(1.0, 0.7333, 0.0)			
		    Bmd:RenderMesh(0 , 70,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(1 , 70,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
		    Bmd:RenderMesh(2 , 70,          Obj:Alpha(), Obj:Mesh(), Obj:Light(), Obj:TexCoordU(), Obj:TexCoordV(), -1)
			

        Bmd = nil
        Obj = nil
        --collectgarbage()
        return 1
    end

    Bmd:setMesh(-1)
    Bmd = nil
    Obj = nil
    --collectgarbage()
    return 0
end