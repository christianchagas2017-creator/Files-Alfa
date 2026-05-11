OpenFolder("Definitions")

local MAX_CHARACTER_LIST = 5 -- max character list if you want 5 set 5, i not recommend minus 5, the max of the system is 10 if you try put more you can't

local MOUNT_ADD_SIZE = 0.40 -- Add size in mount pet
local FLYING_ADD_SIZE = 0.20 -- Add size in flying pet
local FLYING_ADD_HEIGHT = 80.0 -- Add height in flying pet

local Button1Index = -1
local Button2Index = -1
local Button3Index = -1

CHARACTER_LIST_MESSAGES = {}

CHARACTER_LIST_MESSAGES['Por'] = {
[1] = 'Sem personagem',
}

CHARACTER_LIST_MESSAGES['Eng'] = {
[1] = 'Empty character',
}

CHARACTER_LIST_MESSAGES['Spn'] = {
[1] = 'Sin personaje'
}

function StartLoadImages()
	Button1Index = LoadImageByDir("Interface\\CharacterSelect_Button01.tga")
	Button2Index = LoadImageByDir("Interface\\CharacterSelect_Button02.tga")
	Button3Index = LoadImageByDir("Interface\\CharacterSelect_Button03.tga")
end

function SetCharacterPosition(index)
	if index == 0
	then
		CharacterSetPositionX(index, 7878.0) -- VAI PARA TRAS
		CharacterSetPositionY(index, 19410.0) -- VAI PARA OS LADOS
		CharacterSetPositionZ(index, 900.0)
		CharacterSetAngleZ(index, 85.0)
	else
		CharacterSetPositionX(index, 0.0)
		CharacterSetPositionY(index, 19410.0)
		CharacterSetPositionZ(index, 200.0)
		CharacterSetAngleZ(index, 85.0)
	end

	CharacterSetScale(index, 2.7)
end

function SetCharacterScale(index)
	CharacterSetScale(index, 2.7)
end

function CharacterRotate(index)
	CharacterSetAngleZ(index, CharacterGetAngleZ(index) + 5.0)
end

local SelectedButton = -1
local ClickedButton = -1

function UpdateProc(maxCharacter)
	if CheckCreateCharacterWindow() ~= 0
	then
		return
	end

	SelectedButton = -1
	ClickedButton = -1

	addY = 0.0

	local frame_cx = WindowGetWidthAdd()

	for i = 0, (maxCharacter-1) do
		if (MousePosX() >= 470 + frame_cx and MousePosX() <= 470 + 150 + frame_cx)
			and (MousePosY() >= (50 + addY) and MousePosY() <= (50 + addY + 35))
		then
			SelectedButton = i

			if CheckRepeatKey(Keys.LButton) == 1
			then
				CharacterRotate(i)
			end

			if (CheckPressedKey(Keys.LButton) == 1)
			then
				if (CharacterGetIsLive(i) == 1) 
				then
					ClickedButton = i

					--Set action in character
					SetCharacterAction(i, 207)

					SetSelectedHero(i)
					SetTargetCharacter(i)

					DisableClickClient()
				end
			end
		end

		addY = addY + 37.0
	end
end

function GetGuildType(index)
	local GuildStatus = CharacterGetGuildStatus(index)
	local TextIndex = 488

	if GuildStatus == 0
	then
		TextIndex = 1330
	elseif GuildStatus == 32
	then
		TextIndex = 1302
	elseif GuildStatus == 64
	then
		TextIndex = 1301
	elseif GuildStatus == 128
	then
		TextIndex = 1300
	end
		
	return GetGlobalText(TextIndex)
end

function RenderCharacterStatus(posX, posY, index)
	SetTextColor(255, 189, 25, 255)

	RenderText3(posX + 18, posY + 10, CharacterGetName(index), 150, 2)

	RenderText3(posX + 132, posY + 10, math.floor(CharacterGetLevel(index)), 150, 7)

	SetTextColor(255, 255, 255, 255)

	RenderText3(posX + 15, posY - 3, GetClassName(CharacterGetFullClass(index)), 150, 0)

	RenderText3(posX + 138, posY - 3, GetGuildType(index), 150, 7)
end

function ChangeCharacterView(index, posX, posY, posZ)
	CharacterSetPositionX(index, posX)
	CharacterSetPositionY(index, posY)
	CharacterSetPositionZ(index, posZ)

	CharacterSetAngleX(index, 00.0) --PRA CIMA E PRA BAIXO
	CharacterSetAngleY(index, 00.0) --PARA OS LADOS
	CharacterSetAngleZ(index, 85.0) --PRA FRENTE E PRA TRAZ
end

function RenderProc(maxCharacter)
	if CheckCreateCharacterWindow() ~= 0
	then
		return
	end
	
	addY = 0.0

	local frame_cx = WindowGetWidthAdd()

	EnableAlphaTest()

	glColor3f(1.0, 1.0, 1.0)

	SetFontType(13)

	SetTextBg(0, 0, 0, 0)

	SetTextColor(255, 255, 255, 255)
	
    RenderText3(488 + frame_cx, 50 + addY + 198.5, "CRIAR", 150, 11) 
    RenderText3(576 + frame_cx, 50 + addY + 198.5, "DELETAR", 150, 11) 

	local ChangeView = 0
	local addY = 0.0

	for i = 0, (maxCharacter-1) do
		if (CharacterGetIsLive(i) == 1) 
		then
			RenderImageAuto(Button1Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)

			if SelectedButton == i
			then
				RenderImageAuto(Button2Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)
			end

			if ClickedButton == i or (GetSelectedHero() == i)
			then
				RenderImageAuto(Button3Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)
			end

			if ClickedButton == i
			then
				ChangeView = 1
			end

			--Set size character
			SetCharacterScale(i)

			--Render Status
			RenderCharacterStatus(470 + frame_cx, 50 + 10 + addY, i)
		else
			--Render Empty character
			RenderImageAuto(Button1Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)

			if SelectedButton == i
			then
				RenderImageAuto(Button2Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)
			end

			if ClickedButton == i
			then
				RenderImageAuto(Button3Index, 470 + frame_cx, 50 + addY, 150, 35,0,0,0.878,0.82,1,1,0)
			end

			RenderText3(470 + frame_cx, 50 + 10 + addY, CHARACTER_LIST_MESSAGES[GetLanguage()][1], 150, 3)
		end

		addY = addY + 37.0
	end

	if ChangeView == 1
	then
		if CharacterGetIsLive(ClickedButton) == 1
		then
			SetSelectedHero(ClickedButton)
			SetTargetCharacter(ClickedButton)

			for i = 0, (MAX_CHARACTER_LIST-1) do
				if i ~= GetSelectedHero()
				then
					ChangeCharacterView(i, 0.0, 19410.0, 200.0)

				else
					ChangeCharacterView(i, 7878.0, 19410.0, 200.0)
				end
			end
		end
	end

	DisableAlphaBlend()
end

SetMaxCharacter(MAX_CHARACTER_LIST)
SetPetSize(MOUNT_ADD_SIZE, FLYING_ADD_SIZE, FLYING_ADD_HEIGHT)