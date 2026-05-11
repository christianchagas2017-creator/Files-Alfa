//////////////////////////////////////////////////////////////////////
// NewUIMainFrameWindow.cpp: implementation of the CNewUIMainFrameWindow class.
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"

#include "NewUIMainFrameWindow.h"	// self
#if CLIENT_VERSION == 1002
#include "NewUIOptionWindowFairPlay.h"
#else
#include "NewUIOptionWindow.h"
#endif
#include "NewUISystem.h"
#include "UIBaseDef.h"
#include "DSPlaySound.h"
#include "ZzzInfomation.h"
#include "ZzzBMD.h"
#include "ZzzObject.h"
#include "ZzzCharacter.h"
#include "ZzzInterface.h"
#include "ZzzInventory.h"
#include "wsclientinline.h"
#include "CSItemOption.h"
#include "CSChaosCastle.h"
#include "MapManager.h"
#include "CharacterManager.h"
#include "SkillManager.h"
#include "GMDoppelGanger1.h"
#include "GMDoppelGanger2.h"
#include "GMDoppelGanger3.h"
#include "GMDoppelGanger4.h"
#include "./Time/CTimCheck.h"
#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
#include "MonkSystem.h"
#endif //PBG_ADD_NEWCHAR_MONK_SKILL

#ifdef PBG_ADD_INGAMESHOP_UI_MAINFRAME
#include "GameShop/InGameShopSystem.h"
#endif //PBG_ADD_INGAMESHOP_UI_MAINFRAME

#include "WideScreen.h"
#include <vector>

extern float g_fScreenRate_x;
extern float g_fScreenRate_y;
extern int  MouseUpdateTime;
extern int  MouseUpdateTimeMax;
extern int SelectedCharacter;
extern int Attacking;


SEASON3B::CNewUIMainFrameWindow::CNewUIMainFrameWindow() 
{
	m_bExpEffect = false;
	m_dwExpEffectTime = 0;
	m_dwPreExp = 0;
	m_dwGetExp = 0;
	m_bButtonBlink = false;
}

SEASON3B::CNewUIMainFrameWindow::~CNewUIMainFrameWindow() 
{ 
	Release(); 
}

void SEASON3B::CNewUIMainFrameWindow::LoadImages()
{
#if CLIENT_VERSION >= 1001
	LoadBitmap("Interface\\Main_FrameNew.tga", NEW_FRAME, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_left.tga", IMAGE_MENU_1, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_right.tga", IMAGE_MENU_2, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_mana.tga", IMAGE_GAUGE_BLUE, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_poison.tga", IMAGE_GAUGE_GREEN, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_life.tga", IMAGE_GAUGE_RED, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_ag.jpg", IMAGE_GAUGE_AG, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_sd.jpg", IMAGE_GAUGE_SD, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_btn_character.jpg", IMAGE_MENU_BTN_CHAINFO, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\main_frame_btn_inventory.jpg", IMAGE_MENU_BTN_MYINVEN, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\main_frame_btn_party.jpg", IMAGE_MENU_BTN_WINDOW, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\newui_SW_Minimap_Frame.tga", 31602, GL_LINEAR);

	//ANIMATED
	LoadBitmap("Interface\\main_frame_mana_animated.tga", IMAGE_GAUGE_BLUE_ANIMATED, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_poison_animated.tga", IMAGE_GAUGE_GREEN_ANIMATED, GL_LINEAR);
	LoadBitmap("Interface\\main_frame_life_animated.tga", IMAGE_GAUGE_RED_ANIMATED, GL_LINEAR);


#elif CLIENT_VERSION >= 401
	LoadBitmap("Interface\\newui_menu01.jpg", IMAGE_MENU_1, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu02.jpg", IMAGE_MENU_2, GL_LINEAR);
	LoadBitmap("Interface\\partCharge1\\newui_menu03.jpg", IMAGE_MENU_3, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu02-03.jpg", IMAGE_MENU_2_1, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu_blue.jpg", IMAGE_GAUGE_BLUE, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu_green.jpg", IMAGE_GAUGE_GREEN, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu_red.jpg", IMAGE_GAUGE_RED, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu_ag.jpg", IMAGE_GAUGE_AG, GL_LINEAR);
	LoadBitmap("Interface\\newui_menu_sd.jpg", IMAGE_GAUGE_SD, GL_LINEAR);
	LoadBitmap("Interface\\newui_exbar.jpg", IMAGE_GAUGE_EXBAR, GL_LINEAR);
	LoadBitmap("Interface\\Exbar_Master.jpg", IMAGE_MASTER_GAUGE_BAR, GL_LINEAR);
	LoadBitmap("Interface\\partCharge1\\newui_menu_Bt05.jpg", IMAGE_MENU_BTN_CSHOP, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\partCharge1\\newui_menu_Bt01.jpg", IMAGE_MENU_BTN_CHAINFO, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\partCharge1\\newui_menu_Bt02.jpg", IMAGE_MENU_BTN_MYINVEN, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\partCharge1\\newui_menu_Bt03.jpg", IMAGE_MENU_BTN_FRIEND, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\partCharge1\\newui_menu_Bt04.jpg", IMAGE_MENU_BTN_WINDOW, GL_LINEAR, GL_CLAMP_TO_EDGE);
	LoadBitmap("Interface\\newui_decor.tga", IMAGE_CUSTOM_ID, GL_LINEAR);
#elif CLIENT_VERSION <= 302
	//LOAD IMAGES OLD
#endif
}

void SEASON3B::CNewUIMainFrameWindow::UnloadImages()
{
#if  CLIENT_VERSION >= 1001
	DeleteBitmap(NEW_FRAME);
	DeleteBitmap(IMAGE_MENU_1);
	DeleteBitmap(IMAGE_MENU_2);
	DeleteBitmap(IMAGE_GAUGE_BLUE);
	DeleteBitmap(IMAGE_GAUGE_GREEN);
	DeleteBitmap(IMAGE_GAUGE_RED);
	DeleteBitmap(IMAGE_GAUGE_AG);
	DeleteBitmap(IMAGE_GAUGE_SD);
	//ANIMATED
	DeleteBitmap(IMAGE_GAUGE_BLUE_ANIMATED);
	DeleteBitmap(IMAGE_GAUGE_GREEN_ANIMATED);
	DeleteBitmap(IMAGE_GAUGE_RED_ANIMATED);

#elif CLIENT_VERSION >= 401
	DeleteBitmap(IMAGE_MENU_1);
	DeleteBitmap(IMAGE_MENU_2);
	DeleteBitmap(IMAGE_MENU_3);
	DeleteBitmap(IMAGE_MENU_2_1);
	DeleteBitmap(IMAGE_GAUGE_BLUE);
	DeleteBitmap(IMAGE_GAUGE_GREEN);
	DeleteBitmap(IMAGE_GAUGE_RED);
	DeleteBitmap(IMAGE_GAUGE_AG);
	DeleteBitmap(IMAGE_GAUGE_SD);
	DeleteBitmap(IMAGE_GAUGE_EXBAR);
	DeleteBitmap(IMAGE_MENU_BTN_CHAINFO);
	DeleteBitmap(IMAGE_MENU_BTN_MYINVEN);
	DeleteBitmap(IMAGE_MENU_BTN_FRIEND);
	DeleteBitmap(IMAGE_MENU_BTN_WINDOW);
#endif
}

bool SEASON3B::CNewUIMainFrameWindow::Create(CNewUIManager* pNewUIMng, CNewUI3DRenderMng* pNewUI3DRenderMng)
{
	if(NULL == pNewUIMng || NULL == pNewUI3DRenderMng)
		return false;

	m_pNewUIMng = pNewUIMng;
	m_pNewUIMng->AddUIObj(SEASON3B::INTERFACE_MAINFRAME, this);

	m_pNewUI3DRenderMng = pNewUI3DRenderMng;
	m_pNewUI3DRenderMng->Add3DRenderObj(this, ITEMHOTKEYNUMBER_CAMERA_Z_ORDER);

	LoadImages();

	SetButtonInfo();

	Show(true);
	
	return true;
}

void SEASON3B::CNewUIMainFrameWindow::SetButtonInfo()
{	
#if  CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
	int x_Next = gWideScreen.GetCenterPosition(489);
	int y_Next = 480-51;
	int x_Add = 30;
	int y_Add = 41;
	m_BtnCShop.ChangeTextBackColor(RGBA(255,255,255,0));
	m_BtnCShop.ChangeButtonImgState( true, IMAGE_MENU_BTN_CSHOP, true );
	m_BtnCShop.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	x_Next += x_Add;
	m_BtnCShop.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnCShop.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnCShop.ChangeToolTipText(GlobalText[2277], true);

	m_BtnChaInfo.ChangeTextBackColor(RGBA(255,255,255,0));
	m_BtnChaInfo.ChangeButtonImgState( true, IMAGE_MENU_BTN_CHAINFO, true );
	m_BtnChaInfo.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);	
	x_Next += x_Add;
	m_BtnChaInfo.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnChaInfo.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnChaInfo.ChangeToolTipText(GlobalText[362], true);

	m_BtnMyInven.ChangeTextBackColor(RGBA(255,255,255,0));
	m_BtnMyInven.ChangeButtonImgState( true, IMAGE_MENU_BTN_MYINVEN, true );
	m_BtnMyInven.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);	
	x_Next += x_Add;
	m_BtnMyInven.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnMyInven.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnMyInven.ChangeToolTipText(GlobalText[363], true);

	m_BtnFriend.ChangeTextBackColor(RGBA(255,255,255,0));
	m_BtnFriend.ChangeButtonImgState( true, IMAGE_MENU_BTN_FRIEND, true );
	m_BtnFriend.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);	
	x_Next += x_Add;
	m_BtnFriend.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnFriend.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnFriend.ChangeToolTipText(GlobalText[1043], true);

	m_BtnWindow.ChangeTextBackColor(RGBA(255,255,255,0));
	m_BtnWindow.ChangeButtonImgState( true, IMAGE_MENU_BTN_WINDOW, true );
	m_BtnWindow.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);	
	m_BtnWindow.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnWindow.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnWindow.ChangeToolTipText(GlobalText[1744], true);
#elif CLIENT_VERSION <= 302
	int x_Next = gWideScreen.GetCenterPosition(489);
	int y_Next = 480 - 51;
	int x_Add = 30;
	int y_Add = 41;

	m_BtnCShop.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnCShop.ChangeButtonImgState(true, IMAGE_MENU_BTN_CSHOP, true);
	m_BtnCShop.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	x_Next += x_Add;
	m_BtnCShop.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnCShop.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnCShop.ChangeToolTipText(GlobalText[2277], true);

	m_BtnChaInfo.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnChaInfo.ChangeButtonImgState(true, IMAGE_MENU_BTN_CHAINFO, true);
	m_BtnChaInfo.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	x_Next += x_Add;
	m_BtnChaInfo.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnChaInfo.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnChaInfo.ChangeToolTipText(GlobalText[362], true);

	m_BtnMyInven.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnMyInven.ChangeButtonImgState(true, IMAGE_MENU_BTN_MYINVEN, true);
	m_BtnMyInven.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	x_Next += x_Add;
	m_BtnMyInven.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnMyInven.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnMyInven.ChangeToolTipText(GlobalText[363], true);

	m_BtnFriend.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnFriend.ChangeButtonImgState(true, IMAGE_MENU_BTN_FRIEND, true);
	m_BtnFriend.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	x_Next += x_Add;
	m_BtnFriend.ChangeImgColor(BUTTON_STATE_UP, RGBA(255, 255, 255, 255));
	m_BtnFriend.ChangeImgColor(BUTTON_STATE_DOWN, RGBA(255, 255, 255, 255));
	m_BtnFriend.ChangeToolTipText(GlobalText[1043], true);
#elif CLIENT_VERSION >= 1001
	float x_Next = gWideScreen.GetCenterPosition(347);
	int y_Next = gWideScreen.GetBottomPosition(451);
	float x_Add = 32;
	int y_Add = 24;

	m_BtnParty.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnParty.ChangeButtonImgState(true, IMAGE_MENU_BTN_WINDOW, true);
	m_BtnParty.ChangeButtonInfo(x_Next+15, y_Next, x_Add, y_Add);
	m_BtnParty.SetSize(25, 24);
	m_BtnParty.ChangeToolTipText(GlobalText[361], true);
	x_Next += x_Add+14;

	m_BtnChaInfo.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnChaInfo.ChangeButtonImgState(true, IMAGE_MENU_BTN_CHAINFO, true, false, true);
	m_BtnChaInfo.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	m_BtnChaInfo.SetSize(25, 24);
	m_BtnChaInfo.ChangeToolTipText(GlobalText[362], true);
	x_Next += x_Add;

	m_BtnMyInven.ChangeTextBackColor(RGBA(255, 255, 255, 0));
	m_BtnMyInven.ChangeButtonImgState(true, IMAGE_MENU_BTN_MYINVEN, true);
	m_BtnMyInven.ChangeButtonInfo(x_Next, y_Next, x_Add, y_Add);
	m_BtnMyInven.SetSize(25, 24);
	m_BtnMyInven.ChangeToolTipText(GlobalText[363], true);
	x_Next += x_Add;
#endif
}

void SEASON3B::CNewUIMainFrameWindow::Release()
{
	UnloadImages();

	if(m_pNewUI3DRenderMng)
	{
		m_pNewUI3DRenderMng->Remove3DRenderObj(this);
		m_pNewUI3DRenderMng = NULL;
	}

	if(m_pNewUIMng)
	{
		m_pNewUIMng->RemoveUIObj(this);
		m_pNewUIMng = NULL;
	}
}

bool SEASON3B::CNewUIMainFrameWindow::Render()
{
	EnableAlphaTest();
	glColor4f(1.0f, 1.0f, 1.0f, 1.0f);

	RenderFrame();

	g_pSkillList->RenderCurrentSkillAndHotSkillList();

	EnableAlphaTest();
	RenderLifeMana();
	RenderGuageSD();
	RenderGuageAG();
	RenderButtons();
#if CLIENT_VERSION >= 401 && CLIENT_VERSION < 502
	RenderExperience();
#elif CLIENT_VERSION == 1002
	RenderExperience();
#endif

	glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
	g_pNewUISystem->m_Lua.Generic_Call("MainProc", ">");
	glColor4f(1.0f, 1.0f, 1.0f, 1.0f);

	m_pNewUI3DRenderMng->RenderUI2DEffect(ITEMHOTKEYNUMBER_CAMERA_Z_ORDER, UI2DEffectCallback, this, 0, 0);
	/*
	if (!g_pCharacterInfoWindow->IsVisible() && !g_pMyInventory->IsVisible()
		&& !g_pGuildInfoWindow->IsVisible() && !g_pWindowMgr->IsVisible()
		&& !g_pPartyInfoWindow->IsVisible() && !g_pMyQuestInfoWindow->IsVisible()
		&& !g_pCommandWindow->IsVisible())
	{
		DeleteBitmap(31604);
		unicode::t_char szText[256] = { 0, };
		unicode::_sprintf(szText, "Custom\\MiniMap\\Map%d.jpg", gMapManager.WorldActive + 1);
		LoadBitmap(szText, 31604, GL_LINEAR);


		int m_MiniMapPosx = gWideScreen.g_WideWindowWidth - 154;
		int m_MiniMapPosy = 280;

		int m_HeroPosInWorldx = (Hero->PositionX) / 1;
		int m_HeroPosInWorldy = (256 - (Hero->PositionY)) / 1;

		int m_MiniMapScaleOffsetx = max((m_HeroPosInWorldx - (64 * 1)), 0);
		int m_MiniMapScaleOffsety = min(max((m_HeroPosInWorldy - (64 * 1)), 0), 128);

		int m_HeroPosInMiniMapx = m_HeroPosInWorldx - m_MiniMapScaleOffsetx + m_MiniMapPosx + 20;
		int m_HeroPosInMiniMapy = m_HeroPosInWorldy - m_MiniMapScaleOffsety + m_MiniMapPosy;

		float m_fMiniMapTexU = (float)(m_MiniMapScaleOffsetx) / (256.f / (float)1);
		float m_fMiniMapTexV = (float)(m_MiniMapScaleOffsety) / (256.f / (float)1);



		EnableAlphaTest();
		glColor4f(1.f, 1.f, 1.f, 1.0f);
		g_pRenderText->SetFont(g_hFontBold);
		g_pRenderText->SetTextColor(255, 255, 255, 255);
		g_pRenderText->SetBgColor(0, 0, 0, 0);

		RenderBitmap(31604, (float)(m_MiniMapPosx + 20), (float)(m_MiniMapPosy), 128.f, 128.f, m_fMiniMapTexU, m_fMiniMapTexV, 0.5f * 1, 0.5f * 1);

		RenderImage(31602, m_MiniMapPosx, m_MiniMapPosy - 21, 154, 162);
		//RenderImage(31603, m_TimeUIPos.x, m_TimeUIPos.y, 134, 37);

		glColor4f(1.f, 1.f, 1.f, 1.0f);


		glColor4f(1.f, 1.f, 0.f, 1.0f);
		RenderColor((float)(m_HeroPosInMiniMapx), (float)(m_HeroPosInMiniMapy), 3, 3);
	}
	*/
	



	DisableAlphaBlend();

	return true;
}

void SEASON3B::CNewUIMainFrameWindow::Render3D()
{
	m_ItemHotKey.RenderItems();
}

void SEASON3B::CNewUIMainFrameWindow::UI2DEffectCallback(LPVOID pClass, DWORD dwParamA, DWORD dwParamB)
{
	g_pMainFrame->RenderHotKeyItemCount();

}

bool SEASON3B::CNewUIMainFrameWindow::IsVisible() const
{
	return CNewUIObj::IsVisible();
}

void SEASON3B::CNewUIMainFrameWindow::RenderFrame()
{

#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	float width, height;
	float x, y;
	width = 256.f; height = 51.f;
	x = gWideScreen.GetCenterPosition(0); y = 480.f - height;
	SEASON3B::RenderImage(IMAGE_MENU_1, x, y, width, height);
	RenderBitmap(IMAGE_CUSTOM_ID, x- 70.28048780487805, y, 70.28048780487805, height, 0.0, 0.0, 0.8785000443, 0.6409999728, 1, 1, 0.0);
	width = 128.f;
	x += 256;
	SEASON3B::RenderImage(IMAGE_MENU_2, x, y, width, height);
	width = 256.f;
	x += 128;
	SEASON3B::RenderImage(IMAGE_MENU_3, x, y, width, height);
	RenderBitmap(IMAGE_CUSTOM_ID, x + width, y, 70.28048780487805, height, 0.8785000443, 0.0, -0.8785000443, 0.6409999728, 1, 1, 0.0);

	if(g_pSkillList->IsSkillListUp() == true)
	{
		width = 160.f; height = 40.f;
		x = gWideScreen.GetCenterPosition(222);
		SEASON3B::RenderImage(IMAGE_MENU_2_1, x, y, width, height);
	}
#endif

#if CLIENT_VERSION >= 1001
	// Renderiza o fundo (se necessário)
	RenderBitmap(NEW_FRAME, gWideScreen.GetCenterPosition(-110), gWideScreen.GetBottomPosition(369), 1050, 131, 0, 0, 0.8200, 0.829165, 1, 1, 1.0);

	// Exibe os FPS
	unicode::t_char fpsCount[10];
	//int displayedFPS = (int)floor(FPS_AVG);
	//unicode::_sprintf(fpsCount, "%d", displayedFPS);
	g_pRenderText->SetFont(g_hFontBold);
	g_pRenderText->SetBgColor(0, 0, 0, 0);
	g_pRenderText->SetTextColor(225, 225, 225, 200);
	//g_pRenderText->RenderText(77.f + gWideScreen.GetCenterPosition(0), gWideScreen.GetBottomPosition(457), fpsCount, 0, 0, RT3_WRITE_CENTER);

	if (Hero != NULL)
	{
		unicode::t_char szText[9] = { NULL, };
		unicode::_sprintf(szText, "%d   %d", Hero->PositionX, Hero->PositionY);
		g_pRenderText->RenderText(gWideScreen.GetCenterPosition(18), gWideScreen.GetBottomPosition(457), szText, 0, 0, RT3_WRITE_CENTER);


		unicode::t_char levelText[16] = { NULL, };
		unicode::_sprintf(levelText, "Cordenada", Hero->Level);
		g_pRenderText->RenderText(gWideScreen.GetCenterPosition(19), gWideScreen.GetBottomPosition(443), levelText, 0, 0, RT3_WRITE_CENTER);

		//unicode::t_char TextFPS[16] = { NULL, };
		//unicode::_sprintf(TextFPS, "FPS", Hero->Level);
		//g_pRenderText->RenderText(gWideScreen.GetCenterPosition(78), gWideScreen.GetBottomPosition(443), TextFPS, 0, 0, RT3_WRITE_CENTER);


	}
#endif

	//RenderBitmap(600016, gWideScreen.GetAddPosition(345), 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
	//RenderBitmap(600018, gWideScreen.GetAddPosition(345) + 31.5, 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
	//RenderBitmap(600017, gWideScreen.GetAddPosition(345) + 31.5 + 31.5, 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
	//RenderBitmap(600020, 92 + addw, 458, 16, 16, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
}

void SEASON3B::CNewUIMainFrameWindow::RenderLifeMana()
{
	DWORD wLifeMax, wLife, wManaMax, wMana;


	if(gCharacterManager.IsMasterLevel( Hero->Class ) == true )
	{
		wLifeMax = Master_Level_Data.wMaxLife;
		wLife = min(max(0, CharacterAttribute->Life), wLifeMax);
		wManaMax = Master_Level_Data.wMaxMana;
		wMana = min(max(0, CharacterAttribute->Mana), wManaMax);
	}
	else
	{
		wLifeMax = CharacterAttribute->LifeMax;
		wLife = min(max(0, CharacterAttribute->Life), wLifeMax);
		wManaMax = CharacterAttribute->ManaMax;
		wMana = min(max(0, CharacterAttribute->Mana), wManaMax);
	}

	if(wLifeMax > 0)
	{
		if(wLife > 0 && (wLife / (float)wLifeMax) < 0.2f)
		{
			PlayBuffer(SOUND_HEART);
		}
	}

	float fLife = 0.f;
	float fMana = 0.f;

	if(wLifeMax > 0)
	{
		fLife = (wLifeMax - wLife) / (float)wLifeMax;
	}
	if(wManaMax > 0)	
	{
		fMana = (wManaMax - wMana) / (float)wManaMax;
	}

	float width, height;
	float x, y;
	float fY, fH, fV;
	
	// life
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	width = 45.f; 
	x = gWideScreen.GetCenterPosition(158);
	height = 39.f; 
	y = 480.f - 48.f;
#elif CLIENT_VERSION >= 1001
	width = 59;
	x = gWideScreen.GetCenterPosition(142);
	height = 55;
	y = gWideScreen.GetBottomPosition(480.f - 49.5f);
#endif

	// 45, 45, 0, 0, 0.7906, 0.760600, 1, 1, 1.0
	
	fY = y + (fLife * height);
	fH = height - (fLife * height);
	fV = fLife;
	bool animated = true;

	if( g_isCharacterBuff((&Hero->Object), eDeBuff_Poison) )
	{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
		RenderBitmap(IMAGE_GAUGE_GREEN, x, fY, width, fH, 0.f, fV * height / 64.f, width / 64.f, (1.0f - fV) * height / 64.f);
#elif CLIENT_VERSION >= 1001
		if (animated)
		{
			int Cal = (int)(timeGetTime() * 0.75f) % 3150 / 50;
			float CoordU = (float)(Cal % 8) * 0.125f;
			float CoordV = (float)(Cal / 8) * 0.125f;
			float uWidth = 0.125f;
			float vHeight = 0.125f;

			RenderBitmap(IMAGE_GAUGE_GREEN_ANIMATED, x - 45.f, fY - 13.0f, width + 12.15f, fH + 15.8f, CoordU, CoordV + fV * 0.125f, uWidth, vHeight * (1.0f - fV));
}
		else
		{
			RenderBitmap(IMAGE_GAUGE_GREEN, x, fY, width, fH, 0.f, fV * height / 57.f, width / 57.f, (1.0f - fV) * height / 57.f);
		}
#endif
	}
	else
	{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
		RenderBitmap(IMAGE_GAUGE_RED, x, fY, width, fH, 0.f, fV * height / 64.f, width / 64.f, (1.0f - fV) * height / 64.f);
#elif CLIENT_VERSION >= 1001
		if (animated)
		{
			//int Cal = (int)(timeGetTime() * 0.75f) % 3150 / 50;
			int Cal = (int)(timeGetTime() * 0.75f) % 600 / 40;
			float CoordU = (float)(Cal % 8) * 0.125f;
			float CoordV = (float)(Cal / 8) * 0.125f;
			float uWidth = 0.125f;
			float vHeight = 0.125f;

			RenderBitmap(IMAGE_GAUGE_RED_ANIMATED, x - 42.f, fY - 13.0f, width+12.15f, fH + 15.8f, CoordU, CoordV + fV * 0.125f, uWidth, vHeight * (1.0f - fV));
		}
		else
		{
			//RenderBitmap(IMAGE_GAUGE_RED, x, fY, width, fH, 0.f, fV * height / 57.f, width / 57.f, (1.0f - fV) * height / 57.f);
		}
#endif
	}
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	SEASON3B::RenderNumber(x+25, 480-18, wLife);
#endif

#if CLIENT_VERSION >= 1001
	glColor3f(1.0f, 0.81f, 0.55f);
	SEASON3B::RenderOldNumber(x + +5, gWideScreen.GetBottomPosition(480 - 12), wLife, 0.9f);
	glColor3f(1.0f, 1.0f, 1.0f);
#endif

	char strTipText[256];
	if(SEASON3B::CheckMouseIn(x-50, y, width, height) == true)
	{
		sprintf(strTipText, GlobalText[358], wLife, wLifeMax);
		RenderTipText((int)x-50, (int)gWideScreen.GetBottomPosition(418), strTipText);
	}

	// mana
	

#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	width = 45.f;
	x = gWideScreen.GetCenterPosition(256.f + 128.f + 53.f);
	height = 39.f;
	y = 480.f - 48.f;
#endif

#if CLIENT_VERSION >= 1001
	width = 59;
	x = gWideScreen.GetCenterPosition(453)+0.5f;
	height = 55;
	y = gWideScreen.GetBottomPosition(480.f - 49.5f);
#endif

	fY = y + (fMana * height);
	fH = height - (fMana * height);
	fV = fMana;
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	RenderBitmap(IMAGE_GAUGE_BLUE, x, fY, width, fH, 0.f, fV* height / 64.f, width / 64.f, (1.0f - fV)* height / 64.f);
#elif CLIENT_VERSION >= 1001
	if (animated)
	{
		int Cal = (int)(timeGetTime() * 0.75f) % 3150 / 50;
		float CoordU = (float)(Cal % 8) * 0.125f;
		float CoordV = (float)(Cal / 8) * 0.125f;
		float uWidth = 0.125f;
		float vHeight = 0.125f;

		//RenderBitmap(IMAGE_GAUGE_BLUE_ANIMATED, x - 5.35f, fY - 7.0f, width-0.1f, fH + 2.8f, CoordU, CoordV + fV * 0.125f, uWidth, vHeight * (1.0f - fV));
		RenderBitmap(IMAGE_GAUGE_BLUE_ANIMATED, x + 43.f, fY - 13.0f, width + 12.15f, fH + 15.8f, CoordU, CoordV + fV * 0.125f, uWidth, vHeight * (1.0f - fV));
		//RenderBitmap(IMAGE_GAUGE_RED_ANIMATED, x - 10.2f, fY - 7.0f, width - 0.15f, fH + 5.0f, CoordU, CoordV + fV * 0.125f, uWidth, vHeight * (1.0f - fV));
	}
	else
	{
		RenderBitmap(IMAGE_GAUGE_BLUE, x, fY, width, fH, 0.f, fV* height / 57.f, width / 57.f, (1.0f - fV)* height / 57.f);
	}
#endif
	

#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	SEASON3B::RenderNumber(x + 30, 480 - 18, wMana);
#endif

#if CLIENT_VERSION >= 1001
	glColor3f(1.0f, 0.81f, 0.55f);
	SEASON3B::RenderOldNumber(x + 75, gWideScreen.GetBottomPosition(480 - 12), wMana, 0.9f);
	glColor3f(1.0f, 1.0f, 1.0f);
#endif

	// mana
	if(SEASON3B::CheckMouseIn(x+50, y, width, height) == true)
	{
		sprintf(strTipText, GlobalText[359], wMana, wManaMax);
		RenderTipText((int)x+50, (int)gWideScreen.GetBottomPosition(415), strTipText);
	}
}

void SEASON3B::CNewUIMainFrameWindow::RenderGuageAG()
{
	float x, y, width, height;
	float fY, fH, fV;

	DWORD dwMaxSkillMana,dwSkillMana;

	if(gCharacterManager.IsMasterLevel(Hero->Class) == true)
	{
		
		dwMaxSkillMana = max(1, Master_Level_Data.wMaxBP);
		dwSkillMana = min(dwMaxSkillMana, CharacterAttribute->SkillMana);
	}
	else
	{
		dwMaxSkillMana = max(1, CharacterAttribute->SkillManaMax);
		dwSkillMana = min(dwMaxSkillMana, CharacterAttribute->SkillMana);
	}

	float fSkillMana = 0.0f;

	if(dwMaxSkillMana > 0)
	{
		fSkillMana = (dwMaxSkillMana - dwSkillMana) / (float)dwMaxSkillMana;
	}

#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	width = 16.f, height = 39.f;
	x = gWideScreen.GetCenterPosition(256 + 128 + 36); y = 480.f - 49.f;
	fY = y + (fSkillMana * height);
	fH = height - (fSkillMana * height);
	fV = fSkillMana;

	RenderBitmap(IMAGE_GAUGE_AG, x, fY, width, fH, 0.f, fV*height/64.f, width/16.f, (1.0f - fV)*height/64.f);
	SEASON3B::RenderNumber(x+10, 480-18, (int)dwSkillMana);
#elif CLIENT_VERSION >= 1001

	width = 16.f, height = 42.f;
	x = 570.8f; y = gWideScreen.GetBottomPosition(476.f - 42.f);
	x += gWideScreen.GetCenterPosition(0);
	fY = y + (fSkillMana * height);
	fH = height - (fSkillMana * height);
	fV = fSkillMana;

	RenderBitmap(IMAGE_GAUGE_AG, x, fY, width, fH, 0.f, fV * height / 64.f, 0.501351, (1.0f - fV) * height / 64.f, true, true, 0.0f);

	glColor3f(1.0f, 0.81f, 0.55f);
	SEASON3B::RenderOldNumber(x + 12, gWideScreen.GetBottomPosition(480 - 12), (int)dwSkillMana, 0.9f);
	glColor3f(1.0f, 1.0f, 1.0f);
#endif

	if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
	{	
		char strTipText[256];

        sprintf(strTipText, GlobalText[214], dwSkillMana, dwMaxSkillMana);
		RenderTipText((int)x-20, (int)gWideScreen.GetBottomPosition(418), strTipText);
    }
}

void SEASON3B::CNewUIMainFrameWindow::RenderGuageSD()
{
	float x, y, width, height;
	float fY, fH, fV;
	DWORD wMaxShield,wShield;

	//Master_Level_Data.wMaxShield
	if(gCharacterManager.IsMasterLevel(Hero->Class) == true)
	{
		wMaxShield = max (1, Master_Level_Data.wMaxShield);
		wShield = min (wMaxShield, CharacterAttribute->Shield);
	}
	else
	{
		wMaxShield = max (1, CharacterAttribute->ShieldMax);
		wShield = min (wMaxShield, CharacterAttribute->Shield);
	}
	
	float fShield = 0.0f;

	if(wMaxShield > 0)
	{
		fShield = (wMaxShield - wShield) / (float)wMaxShield;
	}
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	width = 16.f, height = 39.f;
	x = gWideScreen.GetCenterPosition(204); y = 480.f - 49.f;
	fY = y + (fShield * height);
	fH = height - (fShield * height);
	fV = fShield;

	RenderBitmap(IMAGE_GAUGE_SD, x, fY, width, fH, 0.f, fV*height/64.f, width/16.f, (1.0f - fV)*height/64.f);
	SEASON3B::RenderNumber(x+15, 480-18, (int)wShield);
#elif CLIENT_VERSION >= 1001
	width = 16.f, height = 39.f;
	x = 116.5f; y = gWideScreen.GetBottomPosition(480.f - 42.f);
	
	x += gWideScreen.GetCenterPosition(0);
	
	fY = y + (fShield * height);
	fH = height - (fShield * height);
	fV = fShield;

	// ATIVAR OU DESATIVAR O SD

	if (wMaxShield > 0) {
		RenderBitmap(IMAGE_GAUGE_SD, x-31, fY-3, width, fH, 0.f, fV * height / 6.f, 0.501351, (1.0f - fV) * height / 70.f, 1, 1, 0.0f);
	
	}
	glColor3f(1.0f, 0.81f, 0.55f);
	SEASON3B::RenderOldNumber(x - 25, gWideScreen.GetBottomPosition(480 - 12), (int)wShield, 0.9f);
	glColor3f(1.0f, 1.0f, 1.0f);
#endif


	height = 39.f;
	y = gWideScreen.GetBottomPosition(480.f - 10.f - 39.f);
	if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
	{	
		char strTipText[256];

        sprintf(strTipText, GlobalText[2037], wShield, wMaxShield);
		RenderTipText((int)x-20, (int)gWideScreen.GetBottomPosition(418), strTipText);
    }
}

void SEASON3B::CNewUIMainFrameWindow::RenderExperience()
{
	
	__int64 wLevel;	
	__int64 dwNexExperience;
	__int64 dwExperience;
	float x, y, width, height;

#if CLIENT_VERSION >= 401 && CLIENT_VERSION < 502
	if (gCharacterManager.IsMasterLevelExpCheck(CharacterAttribute->Class) == true)
	{
		wLevel = (__int64)Master_Level_Data.nMLevel;
		dwNexExperience = (__int64)Master_Level_Data.lNext_MasterLevel_Experince;
		dwExperience = (__int64)Master_Level_Data.lMasterLevel_Experince;
	}
	else
#endif
	{
		wLevel = CharacterAttribute->Level;
		dwNexExperience = CharacterAttribute->NextExperince;
		dwExperience = CharacterAttribute->Experience;
	}

#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
	if (gCharacterManager.IsMasterLevelExpCheck(CharacterAttribute->Class) == true)
	{
		x = gWideScreen.GetCenterPosition(0); y = 470; width = 6; height = 4;

		__int64 iTotalLevel = wLevel + 400;
		__int64 iTOverLevel = iTotalLevel - 255;
		__int64 iBaseExperience = 0;

		__int64 iData_Master =	// A
			(
				(
					(__int64)9 + (__int64)iTotalLevel
				)
				* (__int64)iTotalLevel
				* (__int64)iTotalLevel
				* (__int64)10
			)
			+
			(
				(
					(__int64)9 + (__int64)iTOverLevel
				)
				* (__int64)iTOverLevel
				* (__int64)iTOverLevel
				* (__int64)1000
			);
		iBaseExperience = (iData_Master - (__int64)3892250000) / (__int64)2;	// B

		double fNeedExp = (double)dwNexExperience - (double)iBaseExperience;
		double fExp = (double)dwExperience - (double)iBaseExperience;

		if(dwExperience < iBaseExperience)
		{
			fExp = 0.f;
		}

		double fExpBarNum = 0.f;
		if(fExp > 0.f && fNeedExp > 0)
		{
			fExpBarNum = ((double)fExp / (double)fNeedExp) * (double)10.f;
		}

		double fProgress = fExpBarNum - __int64(fExpBarNum);

		if(m_bExpEffect == true)
		{
			double fPreProgress = 0.f;
			double fPreExp = (double)m_loPreExp - (double)iBaseExperience;
			if(m_loPreExp < iBaseExperience)
			{
				x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
				RenderBitmap(IMAGE_MASTER_GAUGE_BAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
				glColor4f(1.f, 1.f, 1.f, 0.6f);
				RenderColor(x, y, width, height);
				EndRenderColor();
			}
			else
			{
				int iPreExpBarNum = 0;
				int iExpBarNum = 0;
				if(fPreExp > 0.f && fNeedExp > 0.f)
				{
					fPreProgress = ((double)fPreExp / (double)fNeedExp) * (double)10.f;
					iPreExpBarNum = (int)fPreProgress;
					fPreProgress = (double)fPreProgress - __int64(fPreProgress);
				}
				iExpBarNum = (int)fExpBarNum;

				if(iExpBarNum > iPreExpBarNum)
				{
					x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
					RenderBitmap(IMAGE_MASTER_GAUGE_BAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
					glColor4f(1.f, 1.f, 1.f, 0.6f);
					RenderColor(x, y, width, height);
					EndRenderColor();
				}
				else
				{
					double fGapProgress = 0.f;
					fGapProgress = (double)fProgress - (double)fPreProgress;
					x = gWideScreen.GetCenterPosition(2); y = 473.f; width = (double)fPreProgress * (double)629.f; height = 4.f;
					RenderBitmap(IMAGE_MASTER_GAUGE_BAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);

					x += width; width = (double)fGapProgress * (double)629.f;
					RenderBitmap(IMAGE_MASTER_GAUGE_BAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
					glColor4f(1.f, 1.f, 1.f, 0.6f);
					RenderColor(x, y, width, height);
					EndRenderColor();
				}
			}
		}
		else
		{
			x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
			RenderBitmap(IMAGE_MASTER_GAUGE_BAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
		}

		int iExp = (int)fExpBarNum;
		x = gWideScreen.GetCenterPosition(635); y = 469.f;
		SEASON3B::RenderNumber(x, y, iExp);

		x = gWideScreen.GetCenterPosition(2); y = 473.f; width = 629.f; height = 4.f;
		if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{	
			char strTipText[256];
	
			sprintf(strTipText, GlobalText[1748], dwExperience, dwNexExperience);
			RenderTipText(280, 418, strTipText);
		}
	}
	else
#endif
	{
#if CLIENT_VERSION >= 401 && CLIENT_VERSION < 502
		x = gWideScreen.GetCenterPosition(0); y = 470; width = 6; height = 4;

		WORD wPriorLevel = wLevel - 1;
		DWORD dwPriorExperience = 0;

		if(wPriorLevel > 0)
		{
			dwPriorExperience = (9 + wPriorLevel) * wPriorLevel * wPriorLevel * 10;

			if(wPriorLevel > 255)
			{
				int iLevelOverN = wPriorLevel - 255;
				dwPriorExperience += (9 + iLevelOverN) * iLevelOverN * iLevelOverN * 1000;
			}
		}

		float fNeedExp = dwNexExperience - dwPriorExperience;
		float fExp = dwExperience - dwPriorExperience;

		if(dwExperience < dwPriorExperience)
		{
			fExp = 0.f;
		}

		float fExpBarNum = 0.f;
		if(fExp > 0.f && fNeedExp > 0)
		{
			fExpBarNum = (fExp / fNeedExp) * 10.f;
		}

		float fProgress = fExpBarNum;
		fProgress = fProgress - (int)fProgress;

		if(m_bExpEffect == true)
		{
			float fPreProgress = 0.f;
			fExp = m_dwPreExp - dwPriorExperience;
			if(m_dwPreExp < dwPriorExperience)
			{
				x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
				RenderBitmap(IMAGE_GAUGE_EXBAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
				glColor4f(1.f, 1.f, 1.f, 0.4f);
				RenderColor(x, y, width, height);
				EndRenderColor();
			}
			else
			{
				int iPreExpBarNum = 0;
				int iExpBarNum = 0;
				if(fExp > 0.f && fNeedExp > 0.f)
				{
					fPreProgress = (fExp / fNeedExp) * 10.f;
					iPreExpBarNum = (int)fPreProgress;
					fPreProgress = fPreProgress - (int)fPreProgress;
				}

				iExpBarNum = (int)fExpBarNum;

				if(iExpBarNum > iPreExpBarNum)
				{
					x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
					RenderBitmap(IMAGE_GAUGE_EXBAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
					glColor4f(1.f, 1.f, 1.f, 0.4f);
					RenderColor(x, y, width, height);
					EndRenderColor();
				}
				else
				{
					float fGapProgress = 0.f;
					fGapProgress = fProgress - fPreProgress;
					x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fPreProgress * 629.f; height = 4.f;
					RenderBitmap(IMAGE_GAUGE_EXBAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
					x += width; width = fGapProgress * 629.f;
					RenderBitmap(IMAGE_GAUGE_EXBAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
					glColor4f(1.f, 1.f, 1.f, 0.4f);
					RenderColor(x, y, width, height);
					EndRenderColor();
				}
			}
		}
		else
		{
			x = gWideScreen.GetCenterPosition(2); y = 473.f; width = fProgress * 629.f; height = 4.f;
			RenderBitmap(IMAGE_GAUGE_EXBAR, x, y, width, height, 0.f, 0.f, 6.f/8.f, 4.f/4.f);
		}

		int iExp = (int)fExpBarNum;
		x = gWideScreen.GetCenterPosition(635); y = 469.f;
		SEASON3B::RenderNumber(x, y, iExp);

		x = gWideScreen.GetCenterPosition(2); y = 473.f; width = 629.f; height = 4.f;
		if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{	
			char strTipText[256];
	
			sprintf(strTipText, GlobalText[1748], dwExperience, dwNexExperience);
			RenderTipText(280, 418, strTipText);
		}
#elif CLIENT_VERSION == 1002

	WORD wPriorLevel = wLevel - 1;
	DWORD dwPriorExperience = 0;
	
	if (wPriorLevel > 0)
	{
		dwPriorExperience = (9 + wPriorLevel) * wPriorLevel * wPriorLevel * 10;
	
		if (wPriorLevel > 255)
		{
			int iLevelOverN = wPriorLevel - 255;
			dwPriorExperience += (9 + iLevelOverN) * iLevelOverN * iLevelOverN * 1000;
		}
	}
	
	float fNeedExp = floor(dwNexExperience - dwPriorExperience);
	int fExp = dwExperience - dwPriorExperience;
	
	if (dwExperience < dwPriorExperience)
	{
		fExp = 0.f;
	}

	float stepValue = fNeedExp / 10;

	int currentSection = floor(fExp / stepValue);

	double sectionExp = fExp % (int)stepValue;

	float sectionProgress = sectionExp / stepValue;

	width = sectionProgress * 200;


	x = gWideScreen.GetCenterPosition(220); y = gWideScreen.GetBottomPosition(437.f); height = 4.f;

	glColor4f(1.0f, 0.81f, 0.55f, 0.4f);
	RenderColor(x, y, width, height);
	EndRenderColor();

	glColor3f(1.0f, 0.81f, 0.55f);
	SEASON3B::RenderOldNumber(x + 206, y-2.5f, currentSection, 0.8f);
	glColor3f(1.0f, 1.0f, 1.0f);

#endif
	}
}

void SEASON3B::CNewUIMainFrameWindow::RenderHotKeyItemCount()
{
	m_ItemHotKey.RenderItemCount();
}

void SEASON3B::CNewUIMainFrameWindow::RenderButtons()
{


#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
#ifdef PBG_ADD_INGAMESHOP_UI_MAINFRAME
	m_BtnCShop.Render();
#endif //defined PBG_ADD_INGAMESHOP_UI_MAINFRAME
	RenderCharInfoButton();
	m_BtnMyInven.Render();

	RenderFriendButton();
	m_BtnWindow.Render();
#endif
#if CLIENT_VERSION >= 1001
	if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_INVENTORY)) {
		m_BtnMyInven.ForceButtonDown(true);
	}
	else {
		m_BtnMyInven.ForceButtonDown(false);
	}

	if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHARACTER)) {
		m_BtnChaInfo.ForceButtonDown(true);
	}
	else {
		m_BtnChaInfo.ForceButtonDown(false);
	}

	if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_PARTY)) {
		m_BtnParty.ForceButtonDown(true);
	}
	else {
		m_BtnParty.ForceButtonDown(false);
	}

	m_BtnMyInven.Render();
	m_BtnParty.Render();
	m_BtnChaInfo.Render();
	//RenderBitmap(IMAGE_MENU_BTN_WINDOW, gWideScreen.GetCenterPosition(347), 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
	//RenderBitmap(IMAGE_MENU_BTN_MYINVEN, gWideScreen.GetCenterPosition(347) + 32 + 32, 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
#endif


	
}

void SEASON3B::CNewUIMainFrameWindow::RenderCharInfoButton()
{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	m_BtnChaInfo.Render();



	if (g_QuestMng.IsQuestIndexByEtcListEmpty())
		return;

	if (g_Time.GetTimeCheck(5, 500))
		m_bButtonBlink = !m_bButtonBlink;

	if (m_bButtonBlink)
	{
		if (!(g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_QUEST_PROGRESS_ETC)
			|| g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHARACTER)))
			RenderImage(IMAGE_MENU_BTN_CHAINFO, gWideScreen.GetCenterPosition(489)+30, 480-51, 30, 41, 0.0f, 41.f);
	}
#endif

#if CLIENT_VERSION >= 1001
	RenderBitmap(IMAGE_MENU_BTN_CHAINFO, gWideScreen.GetCenterPosition(347) + 32, 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);

	//if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHARACTER)) {
	//
	//RenderBitmap(IMAGE_MENU_BTN_CHAINFO, gWideScreen.GetCenterPosition(345) + 31.5, 450, 25, 24, 0.008, 0.002, 0.83, 0.20, 1, 1, 1.0);
	//}
#endif
}

void SEASON3B::CNewUIMainFrameWindow::RenderFriendButton()
{
	m_BtnFriend.Render();

	int iBlinkTemp = g_pFriendMenu->GetBlinkTemp();
	BOOL bIsAlertTime = (iBlinkTemp % 24 < 12);

	if (g_pFriendMenu->IsNewChatAlert() && bIsAlertTime)
	{
		RenderFriendButtonState();	
	}
	if (g_pFriendMenu->IsNewMailAlert())
	{
		if (bIsAlertTime)
		{
			RenderFriendButtonState();

			if (iBlinkTemp % 24 == 11) 
			{
				g_pFriendMenu->IncreaseLetterBlink();
			}
		}
	}
	else if (g_pLetterList->CheckNoReadLetter())
	{
		RenderFriendButtonState();
	}

	g_pFriendMenu->IncreaseBlinkTemp();
}

void SEASON3B::CNewUIMainFrameWindow::RenderFriendButtonState()
{
#ifdef PBG_ADD_INGAMESHOP_UI_MAINFRAME
	if(g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_FRIEND) == true)
	{
		RenderImage(IMAGE_MENU_BTN_FRIEND, gWideScreen.GetCenterPosition(489) +(30*3), 480-51, 30, 41, 0.0f, 123.f);
	}
	else
	{
		RenderImage(IMAGE_MENU_BTN_FRIEND, gWideScreen.GetCenterPosition(489) +(30*3), 480-51, 30, 41, 0.0f, 41.f);
	}
#else //defined PBG_ADD_INGAMESHOP_UI_MAINFRAME
	if(g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_FRIEND) == true)
	{
		RenderImage(IMAGE_MENU_BTN_FRIEND, gWideScreen.GetCenterPosition(488) +76, 480-51, 38, 42, 0.0f, 126.f);
	}
	else
	{
		RenderImage(IMAGE_MENU_BTN_FRIEND, gWideScreen.GetCenterPosition(488) +76, 480-51, 38, 42, 0.0f, 42.f);
	}
#endif//defined PBG_ADD_INGAMESHOP_UI_MAINFRAME
}

bool SEASON3B::CNewUIMainFrameWindow::UpdateMouseEvent()
{
	if( g_pNewUIHotKey->IsStateGameOver() == true )
	{
		return true;
	}

	if(BtnProcess() == true)
	{
		return false;
	}

	return true;
}

bool SEASON3B::CNewUIMainFrameWindow::BtnProcess()
{
	if(g_pNewUIHotKey->CanUpdateKeyEventRelatedMyInventory() == true)
	{
		if(m_BtnMyInven.UpdateMouseEvent() == true)
		{
			g_pNewUISystem->Toggle(SEASON3B::INTERFACE_INVENTORY);
			PlayBuffer(SOUND_CLICK01);
			return true;
		}
	}
	else if(g_pNewUIHotKey->CanUpdateKeyEvent() == true)
	{
		if(m_BtnMyInven.UpdateMouseEvent() == true)
		{
			g_pNewUISystem->Toggle(SEASON3B::INTERFACE_INVENTORY);
			PlayBuffer(SOUND_CLICK01);
			return true;
		}
		else if(m_BtnChaInfo.UpdateMouseEvent() == true)
		{
			g_pNewUISystem->Toggle(SEASON3B::INTERFACE_CHARACTER);
			PlayBuffer(SOUND_CLICK01);

			if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHARACTER))
				g_QuestMng.SendQuestIndexByEtcSelection();

			return true;
		}
		else if(m_BtnFriend.UpdateMouseEvent() == true)
		{
			if( gMapManager.InChaosCastle() == true )
			{
				PlayBuffer(SOUND_CLICK01);
				return true;
			}

			int iLevel = CharacterAttribute->Level;
			
			if(iLevel < 6)
			{
				if(g_pChatListBox->CheckChatRedundancy(GlobalText[1067]) == FALSE)
				{
					g_pChatListBox->AddText("",GlobalText[1067],SEASON3B::TYPE_SYSTEM_MESSAGE);
				}
			}
			else
			{
				g_pNewUISystem->Toggle(SEASON3B::INTERFACE_FRIEND);
			}
			PlayBuffer(SOUND_CLICK01);
			return true;
		}
#if CLIENT_VERSION >= 1001
		else if (m_BtnParty.UpdateMouseEvent() == true)
		{
			g_pNewUISystem->Toggle(SEASON3B::INTERFACE_PARTY);
			PlayBuffer(SOUND_CLICK01);

			if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHARACTER))
				g_pNewUISystem->Toggle(SEASON3B::INTERFACE_CHARACTER);

			if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_INVENTORY))
				g_pNewUISystem->Toggle(SEASON3B::INTERFACE_INVENTORY);

			if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_GUILDINFO))
				g_pNewUISystem->Toggle(SEASON3B::INTERFACE_GUILDINFO);

			return true;
		}
#endif
		//else if(m_BtnWindow.UpdateMouseEvent() == true)
		//{
		//	g_pNewUISystem->Toggle(SEASON3B::INTERFACE_WINDOW_MENU);
		//	PlayBuffer(SOUND_CLICK01);
		//	return true;
		//}
		/*
#ifdef PBG_ADD_INGAMESHOP_UI_MAINFRAME
		else if(m_BtnCShop.UpdateMouseEvent() == true)
		{
			if(g_pInGameShop->IsInGameShopOpen() == false)
				return false;

#ifdef KJH_MOD_SHOP_SCRIPT_DOWNLOAD
			if( g_InGameShopSystem->IsScriptDownload() == true )
			{
				if( g_InGameShopSystem->ScriptDownload() == false )
					return false;
			}
			
			if( g_InGameShopSystem->IsBannerDownload() == true )
			{
				g_InGameShopSystem->BannerDownload();
			}
#endif // KJH_MOD_SHOP_SCRIPT_DOWNLOAD
			
			if( g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_INGAMESHOP) == false)
			{
				if( g_InGameShopSystem->GetIsRequestShopOpenning() == false )		
				{
					SendRequestIGS_CashShopOpen(0);
					g_InGameShopSystem->SetIsRequestShopOpenning(true);

#ifdef KJH_MOD_SHOP_SCRIPT_DOWNLOAD
					g_pMainFrame->SetBtnState(MAINFRAME_BTN_PARTCHARGE, true);
#endif // KJH_MOD_SHOP_SCRIPT_DOWNLOAD

				}
			}
			else
			{
				SendRequestIGS_CashShopOpen(1);
				g_pNewUISystem->Hide(SEASON3B::INTERFACE_INGAMESHOP);
			}		

			return true;
		}
#endif //PBG_ADD_INGAMESHOP_UI_MAINFRAME
		*/
	}

	return false;
}

bool SEASON3B::CNewUIMainFrameWindow::UpdateKeyEvent()
{
	if(m_ItemHotKey.UpdateKeyEvent() == false)
	{
		return false;
	}
	return true;
}

bool SEASON3B::CNewUIMainFrameWindow::Update()
{
	if(m_bExpEffect == true)
	{
		if(timeGetTime() - m_dwExpEffectTime > 2000)
		{
			m_bExpEffect = false;
			m_dwExpEffectTime = 0;
			m_dwGetExp = 0;
		}
	}
	
	return true;
}

float SEASON3B::CNewUIMainFrameWindow::GetLayerDepth()
{
	return 10.6f;
}

float SEASON3B::CNewUIMainFrameWindow::GetKeyEventOrder()
{
	return 2.9f;
}

void SEASON3B::CNewUIMainFrameWindow::SetItemHotKey(int iHotKey, int iItemType, int iItemLevel)
{
	m_ItemHotKey.SetHotKey(iHotKey, iItemType, iItemLevel);	
}

int SEASON3B::CNewUIMainFrameWindow::GetItemHotKey(int iHotKey)
{
	return m_ItemHotKey.GetHotKey(iHotKey);
}

int SEASON3B::CNewUIMainFrameWindow::GetItemHotKeyLevel(int iHotKey)
{
	return m_ItemHotKey.GetHotKeyLevel(iHotKey);
}

void SEASON3B::CNewUIMainFrameWindow::UseHotKeyItemRButton()
{
	m_ItemHotKey.UseItemRButton();
}

void SEASON3B::CNewUIMainFrameWindow::UpdateItemHotKey()
{
	m_ItemHotKey.UpdateKeyEvent();
}

void SEASON3B::CNewUIMainFrameWindow::ResetSkillHotKey()
{
	g_pSkillList->Reset();
}

void SEASON3B::CNewUIMainFrameWindow::SetSkillHotKey(int iHotKey, int iSkillType)
{
	g_pSkillList->SetHotKey(iHotKey, iSkillType);
}

int SEASON3B::CNewUIMainFrameWindow::GetSkillHotKey(int iHotKey)
{
	return g_pSkillList->GetHotKey(iHotKey);
}

int SEASON3B::CNewUIMainFrameWindow::GetSkillHotKeyIndex(int iSkillType)
{
	return g_pSkillList->GetSkillIndex(iSkillType);
}

SEASON3B::CNewUIItemHotKey::CNewUIItemHotKey()
{
	for(int i=0; i<HOTKEY_COUNT; ++i)
	{
		m_iHotKeyItemType[i] = -1;
		m_iHotKeyItemLevel[i] = 0;
	}
}

SEASON3B::CNewUIItemHotKey::~CNewUIItemHotKey()
{

}

bool SEASON3B::CNewUIItemHotKey::UpdateKeyEvent()
{
	int iIndex = -1;
	static bool bAutoHoldQ = false;
	static bool bAutoHoldW = false;
	static bool bAutoHoldE = false;
	
	// Verifica se houve um novo pressionamento (sem repetição)
	//if (SEASON3B::IsPress('Q')) 
	//{
	//    bAutoHoldQ = !bAutoHoldQ; // Alterna entre ligado/desligado
	//}
	//if (SEASON3B::IsPress('W')) 
	//{
	//    bAutoHoldW = !bAutoHoldW;
	//}
	//if (SEASON3B::IsPress('E')) 
	//{
	//    bAutoHoldE = !bAutoHoldE;
	//}
	//
	//// Define iIndex com base no estado atual
	if (SEASON3B::IsPress('Q'))
	{
		iIndex = GetHotKeyItemIndex(HOTKEY_Q);
	}
	else if (SEASON3B::IsPress('W'))
	{
		iIndex = GetHotKeyItemIndex(HOTKEY_W);
	}
	else if (SEASON3B::IsPress('E'))
	{
		iIndex = GetHotKeyItemIndex(HOTKEY_E);
	}
	else
	{
		iIndex = -1; // Nenhuma tecla ativa
	}


#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
	else if(SEASON3B::IsPress('R') == true)
	{
		iIndex = GetHotKeyItemIndex(HOTKEY_R);
	}
#endif
	
	if(iIndex != -1)
	{
		ITEM* pItem = NULL;
		pItem = g_pMyInventory->FindItem(iIndex);
		if( ( pItem->Type>=ITEM_POTION+78 && pItem->Type<=ITEM_POTION+82 ) )
		{
			std::list<eBuffState> secretPotionbufflist;
			secretPotionbufflist.push_back( eBuff_SecretPotion1 );
			secretPotionbufflist.push_back( eBuff_SecretPotion2 );
			secretPotionbufflist.push_back( eBuff_SecretPotion3 );
			secretPotionbufflist.push_back( eBuff_SecretPotion4 );
			secretPotionbufflist.push_back( eBuff_SecretPotion5 );
			
			if( g_isCharacterBufflist( (&Hero->Object), secretPotionbufflist ) != eBuffNone ) {
				SEASON3B::CreateOkMessageBox(GlobalText[2530], RGBA(255, 30, 0, 255) );	
			}
			else {
				SendRequestUse(iIndex, 0);
			}
		}
		else
		
		{
			SendRequestUse(iIndex, 0);
		}
		return false;
	}

	return true;
}

int SEASON3B::CNewUIItemHotKey::GetHotKeyItemIndex(int iType, bool bItemCount)
{
	int iStartItemType = 0, iEndItemType = 0;
	int i, j;

	switch(iType)
	{
	case HOTKEY_Q:
		if(GetHotKeyCommonItem(iType, iStartItemType, iEndItemType) == false)
		{
			if(m_iHotKeyItemType[iType] >= ITEM_POTION+4 && m_iHotKeyItemType[iType] <= ITEM_POTION+6)
            {
                iStartItemType = ITEM_POTION+6; iEndItemType = ITEM_POTION+4;
            }
			else
			{
				iStartItemType = ITEM_POTION+3; iEndItemType = ITEM_POTION+0;
			}
		}
		break;
	case HOTKEY_W:
		if(GetHotKeyCommonItem(iType, iStartItemType, iEndItemType) == false)
		{
			if(m_iHotKeyItemType[iType] >= ITEM_POTION+0 && m_iHotKeyItemType[iType] <= ITEM_POTION+3)
            {
                iStartItemType = ITEM_POTION+3; iEndItemType = ITEM_POTION+0;
            }
			else
			{
				iStartItemType = ITEM_POTION+6; iEndItemType = ITEM_POTION+4;
			}	
		}
		break;
	case HOTKEY_E:
		if(GetHotKeyCommonItem(iType, iStartItemType, iEndItemType) == false)
		{
			if(m_iHotKeyItemType[iType] >= ITEM_POTION+0 && m_iHotKeyItemType[iType] <= ITEM_POTION+3)
            {
                iStartItemType = ITEM_POTION+3; iEndItemType = ITEM_POTION+0;
            }
			else if(m_iHotKeyItemType[iType] >= ITEM_POTION+4 && m_iHotKeyItemType[iType] <= ITEM_POTION+6)
            {
                iStartItemType = ITEM_POTION+6; iEndItemType = ITEM_POTION+4;
            }
			else
			{
				iStartItemType = ITEM_POTION+8; iEndItemType = ITEM_POTION+8;
			}
		}
		break;
#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
	case HOTKEY_R:
		if(GetHotKeyCommonItem(iType, iStartItemType, iEndItemType) == false)
		{
			if(m_iHotKeyItemType[iType] >= ITEM_POTION+0 && m_iHotKeyItemType[iType] <= ITEM_POTION+3)
            {
                iStartItemType = ITEM_POTION+3; iEndItemType = ITEM_POTION+0;
            }
			else if(m_iHotKeyItemType[iType] >= ITEM_POTION+4 && m_iHotKeyItemType[iType] <= ITEM_POTION+6)
            {
                iStartItemType = ITEM_POTION+6; iEndItemType = ITEM_POTION+4;
            }
			else
			{
				iStartItemType = ITEM_POTION+37; iEndItemType = ITEM_POTION+35;	
			}
		}
		break;	
#endif
	}

	int iItemCount = 0;
	ITEM* pItem = NULL;

	int iNumberofItems = g_pMyInventory->GetInventoryCtrl()->GetNumberOfItems();
	for(i=iStartItemType; i>=iEndItemType; --i)
	{
		if(bItemCount)
		{
			for(j=0; j<iNumberofItems; ++j)
			{
				pItem = g_pMyInventory->GetInventoryCtrl()->GetItem(j);
				if(pItem == NULL)
				{
					continue;
				}

				if( 
					(pItem->Type == i && ((pItem->Level>>3)&15) == m_iHotKeyItemLevel[iType])
				|| (pItem->Type == i && (pItem->Type >= ITEM_POTION+0 && pItem->Type <= ITEM_POTION+3)) 
				)
				{
					if(pItem->Type == ITEM_POTION+9
						|| pItem->Type == ITEM_POTION+10
						|| pItem->Type == ITEM_POTION+20
						)
					{
						iItemCount++;
					}
					else
					{
						iItemCount += pItem->Durability;
					}
				}
			}
		}
		else
		{
			int iIndex = -1;
			if(i >= ITEM_POTION+0 && i <= ITEM_POTION+3)	
			{
				iIndex = g_pMyInventory->FindItemReverseIndex(i);
			}
			else
			{
				iIndex = g_pMyInventory->FindItemReverseIndex(i, m_iHotKeyItemLevel[iType]);
			}
			
			if (-1 != iIndex)
			{
				pItem = g_pMyInventory->FindItem(iIndex);
				if((pItem->Type != ITEM_POTION+7
					&& pItem->Type != ITEM_POTION+10
					&& pItem->Type != ITEM_POTION+20)
					|| ((pItem->Level>>3)&15) == m_iHotKeyItemLevel[iType]
					)
				{
					return iIndex;
				}
			}
		}
	}

	if(bItemCount == true)
	{
		return iItemCount;
	}

	return -1;
}

bool SEASON3B::CNewUIItemHotKey::GetHotKeyCommonItem(IN int iHotKey, OUT int& iStart, OUT int& iEnd)
{
	switch(m_iHotKeyItemType[iHotKey])
	{
	case ITEM_POTION+7:
	case ITEM_POTION+8:
	case ITEM_POTION+9:
	case ITEM_POTION+10:
	case ITEM_POTION+20:
	case ITEM_POTION+46:
	case ITEM_POTION+47:
	case ITEM_POTION+48:
	case ITEM_POTION+49:
	case ITEM_POTION+50:
	case ITEM_POTION+70:
	case ITEM_POTION+71:
	case ITEM_POTION+78:
	case ITEM_POTION+79:
	case ITEM_POTION+80:
	case ITEM_POTION+81:
	case ITEM_POTION+82:
	case ITEM_POTION+94:
	case ITEM_POTION+85:
	case ITEM_POTION+86:
	case ITEM_POTION+87:
	case ITEM_POTION+133:
		if(m_iHotKeyItemType[iHotKey] != ITEM_POTION+20 || m_iHotKeyItemLevel[iHotKey] == 0)
		{
			iStart = iEnd = m_iHotKeyItemType[iHotKey];
			return true;
		}
		break;
	default:
		if(m_iHotKeyItemType[iHotKey] >= ITEM_POTION+35 && m_iHotKeyItemType[iHotKey] <= ITEM_POTION+37)
		{
			iStart = ITEM_POTION+37; iEnd = ITEM_POTION+35;
			return true;
		}
		else if(m_iHotKeyItemType[iHotKey] >= ITEM_POTION+38 && m_iHotKeyItemType[iHotKey] <= ITEM_POTION+40)
		{
			iStart = ITEM_POTION+40; iEnd = ITEM_POTION+38;
			return true;
		}
		break;
	}
	return false;
}

int SEASON3B::CNewUIItemHotKey::GetHotKeyItemCount(int iType)
{
	return 0;
}

void SEASON3B::CNewUIItemHotKey::SetHotKey(int iHotKey, int iItemType, int iItemLevel)
{
	if(iHotKey != -1 && CNewUIMyInventory::CanRegisterItemHotKey(iItemType) == true
		)
	{
		m_iHotKeyItemType[iHotKey] = iItemType;
		m_iHotKeyItemLevel[iHotKey] = iItemLevel;
	}
	else
	{
		m_iHotKeyItemType[iHotKey] = -1;
		m_iHotKeyItemLevel[iHotKey] = 0;
	}
}

int SEASON3B::CNewUIItemHotKey::GetHotKey(int iHotKey)
{
	if(iHotKey != -1)
	{
		return m_iHotKeyItemType[iHotKey];
	}

	return -1;
}

int SEASON3B::CNewUIItemHotKey::GetHotKeyLevel(int iHotKey)
{
	if(iHotKey != -1)
	{
		return m_iHotKeyItemLevel[iHotKey];
	}
	
	return 0;
}

void SEASON3B::CNewUIItemHotKey::RenderItems()
{
	float x, y, width, height;


	for (int i = 0; i < HOTKEY_COUNT; ++i)
	{
		int iIndex = GetHotKeyItemIndex(i);
		if (iIndex != -1)
		{
			ITEM* pItem = g_pMyInventory->FindItem(iIndex);
			if (pItem)
			{
#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
				x = gWideScreen.GetCenterPosition(10) + (i * 38); y = gWideScreen.GetBottomPosition(443); width = 20; height = 20;
#elif CLIENT_VERSION >= 1001	
				x = gWideScreen.GetCenterPosition(207) + (i * 32)+17; y = gWideScreen.GetBottomPosition(454); width = 20; height = 20;
#endif
				RenderItem3D(x, y, width, height, pItem->Type, pItem->Level, 0, 0);
			}
		}
	}
}

void SEASON3B::CNewUIItemHotKey::RenderItemCount()
{
	float x, y, width, height;


	for(int i=0; i<HOTKEY_COUNT; ++i)
	{
		int iCount = GetHotKeyItemIndex(i, true);
		if(iCount > 0)
		{
#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
			glColor4f(1.f, 1.f, 1.f, 1.f);
			x = gWideScreen.GetCenterPosition(30) + (i*38); y = 457; width = 8; height = 9;
			SEASON3B::RenderNumber(x, y, iCount);
#elif CLIENT_VERSION >= 1001
			glColor4f(1.0f, 0.81f, 0.55f, 1.f);
			x = gWideScreen.GetCenterPosition(216)+ 0.5f + (i * 32); y = gWideScreen.GetBottomPosition(447.7f); width = 8; height = 9;
			SEASON3B::RenderNumber(x+22, y, iCount, 0.8f);
#endif
		}
	}
}

void SEASON3B::CNewUIItemHotKey::UseItemRButton()
{
	int x, y, width, height;

	for(int i=0; i<HOTKEY_COUNT; ++i)
	{
		x = gWideScreen.GetCenterPosition(10) + (i * 38); y = gWideScreen.GetBottomPosition(445); width = 20; height = 20;
		if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
			if(MouseRButtonPush)
			{
				MouseRButtonPush = false;
				int iIndex = GetHotKeyItemIndex(i);
				if(iIndex != -1)
				{
					SendRequestUse(iIndex, 0);
					break;
				}
			}
		}
	}	
}

SEASON3B::CNewUISkillList::CNewUISkillList()
{
	m_pNewUIMng = NULL;
	Reset();
}

SEASON3B::CNewUISkillList::~CNewUISkillList()
{
	Release();
}

bool SEASON3B::CNewUISkillList::Create(CNewUIManager* pNewUIMng, CNewUI3DRenderMng* pNewUI3DRenderMng)
{
	if(NULL == pNewUIMng)
		return false;
	
	m_pNewUIMng = pNewUIMng;
	m_pNewUIMng->AddUIObj(SEASON3B::INTERFACE_SKILL_LIST, this);

	m_pNewUI3DRenderMng = pNewUI3DRenderMng;

	LoadImages();

#if CLIENT_VERSION >= 1001
	SetButtonInfo();
#endif

	Show(true);

	return true;
}

#if CLIENT_VERSION >= 1001
void SEASON3B::CNewUISkillList::SetButtonInfo()
{
	m_SkillListButtonUp.ChangeButtonImgState(true, IMAGE_SKILL_ARROW_UP, true);
	m_SkillListButtonUp.ChangeButtonInfo(gWideScreen.GetCenterPosition(320) + 182.f, gWideScreen.GetBottomPosition(363.5f), 14, 14);
	m_SkillListButtonUp.ForceButtonDown(true);
	m_SkillListButtonUp.Lock();

	m_SkillListButtonDown.ChangeButtonImgState(true, IMAGE_SKILL_ARROW_DOWN, true);
	m_SkillListButtonDown.ChangeButtonInfo(gWideScreen.GetCenterPosition(320) + 182.f, gWideScreen.GetBottomPosition(381.5f), 14, 14);
	m_SkillListButtonDown.ForceButtonDown(true);
	m_SkillListButtonDown.Lock();

}
#endif

void SEASON3B::CNewUISkillList::Release()
{
	if(m_pNewUI3DRenderMng)
	{
		m_pNewUI3DRenderMng->DeleteUI2DEffectObject(UI2DEffectCallback);
	}
	
	UnloadImages();

	if(m_pNewUIMng)
	{
		m_pNewUIMng->RemoveUIObj(this);
		m_pNewUIMng = NULL;
	}
}

void SEASON3B::CNewUISkillList::Reset()
{
	m_bSkillList = false;
	m_bHotKeySkillListUp = false;

#if CLIENT_VERSION >= 1001
	m_SkillPage = 0;
	m_SkillListButtonUp.ForceButtonDown(true);
	m_SkillListButtonUp.Lock();

	m_SkillListButtonDown.ForceButtonDown(true);
	m_SkillListButtonDown.Lock();
#endif
	m_bRenderSkillInfo = false;
	m_iRenderSkillInfoType = 0;
	m_iRenderSkillInfoPosX = 0;
	m_iRenderSkillInfoPosY = 0;

	for(int i=0; i<SKILLHOTKEY_COUNT; ++i)
	{
		m_iHotKeySkillType[i] = -1;
	}

	m_EventState = EVENT_NONE;
}

void SEASON3B::CNewUISkillList::LoadImages()
{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	LoadBitmap("Interface\\newui_skill.jpg", IMAGE_SKILL1, GL_LINEAR);
	LoadBitmap("Interface\\newui_skill2.jpg", IMAGE_SKILL2, GL_LINEAR);
	LoadBitmap("Interface\\newui_command.jpg", IMAGE_COMMAND, GL_LINEAR);
	LoadBitmap("Interface\\newui_skillbox.jpg", IMAGE_SKILLBOX, GL_LINEAR);
	LoadBitmap("Interface\\newui_skillbox2.jpg", IMAGE_SKILLBOX_USE, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_skill.jpg", IMAGE_NON_SKILL1, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_skill2.jpg", IMAGE_NON_SKILL2, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_command.jpg", IMAGE_NON_COMMAND, GL_LINEAR);
#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	LoadBitmap("Interface\\newui_skill3.jpg", IMAGE_SKILL3, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_skill3.jpg", IMAGE_NON_SKILL3, GL_LINEAR);
#endif //PBG_ADD_NEWCHAR_MONK_SKILL
#elif CLIENT_VERSION >= 1001
	LoadBitmap("Interface\\newui_skill.jpg", IMAGE_SKILL1, GL_LINEAR);
	LoadBitmap("Interface\\newui_skill2.jpg", IMAGE_SKILL2, GL_LINEAR);
	LoadBitmap("Interface\\newui_command.jpg", IMAGE_COMMAND, GL_LINEAR);
	LoadBitmap("Interface\\newui_skillbox.jpg", IMAGE_SKILLBOX, GL_LINEAR);
	LoadBitmap("Interface\\newui_skillbox2.jpg", IMAGE_SKILLBOX_USE, GL_LINEAR);
	//LoadBitmap("Interface\\newui_non_skill.jpg", IMAGE_NON_SKILL1, GL_LINEAR);
	//("Interface\\newui_non_skill2.jpg", IMAGE_NON_SKILL2, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_command.jpg", IMAGE_NON_COMMAND, GL_LINEAR);
#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	LoadBitmap("Interface\\newui_skill3.jpg", IMAGE_SKILL3, GL_LINEAR);
	LoadBitmap("Interface\\newui_non_skill3.jpg", IMAGE_NON_SKILL3, GL_LINEAR);
#endif //PBG_ADD_NEWCHAR_MONK_SKILL
	LoadBitmap("Interface\\skill_render.jpg", IMAGE_SKILLBOX_LARGE, GL_LINEAR);
	LoadBitmap("Interface\\skill_render_on.tga", IMAGE_SKILL_USE, GL_LINEAR);
	LoadBitmap("Interface\\skill_render_page.jpg", IMAGE_SKILL_PAGE, GL_LINEAR);
	LoadBitmap("Interface\\btn_arrowup.jpg", IMAGE_SKILL_ARROW_UP, GL_LINEAR);
	LoadBitmap("Interface\\btn_arrowdown.jpg", IMAGE_SKILL_ARROW_DOWN, GL_LINEAR);

#endif
}

void SEASON3B::CNewUISkillList::UnloadImages()
{
	DeleteBitmap(IMAGE_SKILL1);
	DeleteBitmap(IMAGE_SKILL2);
	DeleteBitmap(IMAGE_COMMAND);
	DeleteBitmap(IMAGE_SKILLBOX);
	DeleteBitmap(IMAGE_SKILLBOX_USE);
	//DeleteBitmap(IMAGE_NON_SKILL1);
	//DeleteBitmap(IMAGE_NON_SKILL2);
	DeleteBitmap(IMAGE_NON_COMMAND);
#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	DeleteBitmap(IMAGE_SKILL3);
	DeleteBitmap(IMAGE_NON_SKILL3);
#endif //PBG_ADD_NEWCHAR_MONK_SKILL
#if CLIENT_VERSION >= 1001
	DeleteBitmap(IMAGE_SKILLBOX_LARGE);
	DeleteBitmap(IMAGE_SKILL_USE);
	DeleteBitmap(IMAGE_SKILL_PAGE);
	DeleteBitmap(IMAGE_SKILL_ARROW_UP);
	DeleteBitmap(IMAGE_SKILL_ARROW_DOWN);
#endif
}

// TOOLTIP E CLICK
bool SEASON3B::CNewUISkillList::UpdateMouseEvent()
{
	if(g_isCharacterBuff((&Hero->Object), eBuff_DuelWatch))
	{
		m_bSkillList = false;
		return true;
	}

	BYTE bySkillNumber = CharacterAttribute->SkillNumber;
	BYTE bySkillMasterNumber = CharacterAttribute->SkillMasterNumber;

	float x, y, width, height;

	m_bRenderSkillInfo = false;

	if(bySkillNumber <= 0)
	{
		return true;
	}
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	x = gWideScreen.GetCenterPosition(385); y = 431.f; width = 32.f; height = 38.f;
#elif CLIENT_VERSION >= 1001
	x = gWideScreen.GetCenterPosition(310) - 0.5f; y = gWideScreen.GetBottomPosition(447.5f); width = 20; height = 28;
#endif
	if(m_EventState == EVENT_NONE && MouseLButtonPush == false 
		&& SEASON3B::CheckMouseIn(x+15, y, width, height) == true)
	{
		m_EventState = EVENT_BTN_HOVER_CURRENTSKILL;
		return true;
	}
	if(m_EventState == EVENT_BTN_HOVER_CURRENTSKILL && MouseLButtonPush == false
		&& SEASON3B::CheckMouseIn(x+15, y, width, height) == false)
	{
		m_EventState = EVENT_NONE;
		return true;
	}
	if(m_EventState == EVENT_BTN_HOVER_CURRENTSKILL && (MouseLButtonPush == true || MouseLButtonDBClick == true)
		&& SEASON3B::CheckMouseIn(x+15, y, width, height) == true)
	{
#if CLIENT_VERSION >= 1001
		if (!g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHATINPUTBOX))
#endif
			m_EventState = EVENT_BTN_DOWN_CURRENTSKILL;
		return false;
	}
	if(m_EventState == EVENT_BTN_DOWN_CURRENTSKILL)
	{
		if(MouseLButtonPush == false && MouseLButtonDBClick == false)
		{
			if(SEASON3B::CheckMouseIn(x+15, y, width, height) == true)
			{		
				m_bSkillList = !m_bSkillList;

				PlayBuffer(SOUND_CLICK01);

#if CLIENT_VERSION >= 1001
				m_SkillPage = 0;
				m_SkillListButtonUp.ForceButtonDown(true);
				m_SkillListButtonUp.Lock();

				m_SkillListButtonDown.ForceButtonDown(true);
				m_SkillListButtonDown.Lock();
#endif
				m_EventState = EVENT_NONE;
				return false;
			}
			m_EventState = EVENT_NONE;
			return true;
		}
		
	}
	
	if(m_EventState == EVENT_BTN_HOVER_CURRENTSKILL)
	{
		if (m_bSkillList) {
			m_EventState = EVENT_NONE;
			return false;
		}
		m_bRenderSkillInfo = true;
		m_iRenderSkillInfoType = Hero->CurrentSkill;
		m_iRenderSkillInfoPosX = x + 5+5;
		m_iRenderSkillInfoPosY = y-10;
		
		return false;
	}
	else if(m_EventState == EVENT_BTN_DOWN_CURRENTSKILL)
	{
		return false;
	}
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	x = gWideScreen.GetCenterPosition(222); y =431.f; width = 32.f*5.f; height = 38.f;
	if(m_EventState == EVENT_NONE && MouseLButtonPush == false 
		&& SEASON3B::CheckMouseIn(x, y, width, height) == true)
	{
		m_EventState = EVENT_BTN_HOVER_SKILLHOTKEY;
		return true;
	}
	if(m_EventState == EVENT_BTN_HOVER_SKILLHOTKEY && MouseLButtonPush == false
		&& SEASON3B::CheckMouseIn(x, y, width, height) == false)
	{
		m_EventState = EVENT_NONE;
		return true;
	}
	if(m_EventState == EVENT_BTN_HOVER_SKILLHOTKEY && MouseLButtonPush == true
		&& SEASON3B::CheckMouseIn(x, y, width, height) == true)
	{
		m_EventState = EVENT_BTN_DOWN_SKILLHOTKEY;
		return false;
	}
	
	x = gWideScreen.GetCenterPosition(190); y =431.f; width = 32.f; height = 38.f;
	int iStartIndex = (m_bHotKeySkillListUp == true) ? 6 : 1;
	for(int i=0, iIndex = iStartIndex; i<5; ++i, iIndex++)
	{
		x += width;

		if(iIndex == 10)
		{
			iIndex = 0;
		}
		if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
			if(m_iHotKeySkillType[iIndex] == -1)
			{
				if(m_EventState == EVENT_BTN_HOVER_SKILLHOTKEY)
				{
					m_bRenderSkillInfo = false;
					m_iRenderSkillInfoType = -1;
				}
				if(m_EventState == EVENT_BTN_DOWN_SKILLHOTKEY && MouseLButtonPush == false)
				{
					m_EventState = EVENT_NONE;
				}
				continue;
			}

			WORD bySkillType = CharacterAttribute->Skill[m_iHotKeySkillType[iIndex]];

			if(bySkillType == 0 || ( bySkillType >= AT_SKILL_STUN && bySkillType <= AT_SKILL_REMOVAL_BUFF ))
				continue;

			BYTE bySkillUseType = SkillAttribute[bySkillType].SkillUseType;

			if(bySkillUseType == SKILL_USE_TYPE_MASTERLEVEL)
			{
				continue;
			}

			if(m_EventState == EVENT_BTN_HOVER_SKILLHOTKEY)
			{
				m_bRenderSkillInfo = true;
				m_iRenderSkillInfoType = m_iHotKeySkillType[iIndex];
				m_iRenderSkillInfoPosX = x - 5;
				m_iRenderSkillInfoPosY = y;
				return true;
			}
			if(m_EventState == EVENT_BTN_DOWN_SKILLHOTKEY)
			{
				if(MouseLButtonPush == false)
				{
					if(m_iRenderSkillInfoType == m_iHotKeySkillType[iIndex])
					{
						m_EventState = EVENT_NONE;
						m_wHeroPriorSkill = CharacterAttribute->Skill[Hero->CurrentSkill];
						Hero->CurrentSkill = m_iHotKeySkillType[iIndex];
						PlayBuffer(SOUND_CLICK01);
						return false;
					}
					else
					{
						m_EventState = EVENT_NONE;
					}
				}
			}
		}
	}
	
	x = gWideScreen.GetCenterPosition(222); y =431.f; width = 32.f*5.f; height = 38.f;
	if(m_EventState == EVENT_BTN_DOWN_SKILLHOTKEY)
	{
		if(MouseLButtonPush == false && SEASON3B::CheckMouseIn(x, y, width, height) == false)
		{
			m_EventState = EVENT_NONE;
			return true;	
		}
		return false;
	}

	if(m_bSkillList == false)
		return true;
	
	WORD bySkillType = 0;

	int iSkillCount = 0;
	bool bMouseOnSkillList = false;
	
	x = gWideScreen.GetCenterPosition(385); y = 390; width = 32; height = 38;
	float fOrigX = x;// 385.f;
	
	EVENT_STATE PrevEventState = m_EventState;

	for(int i=0; i<MAX_MAGIC; ++i)
	{
		bySkillType = CharacterAttribute->Skill[i];

		if(bySkillType == 0 || ( bySkillType >= AT_SKILL_STUN && bySkillType <= AT_SKILL_REMOVAL_BUFF ))
			continue;

		BYTE bySkillUseType = SkillAttribute[bySkillType].SkillUseType;

		if(bySkillUseType == SKILL_USE_TYPE_MASTERLEVEL)
		{
			continue;
		}


		if(iSkillCount == 18)
		{
			y -= height;
		}
		
		if(iSkillCount < 14)
		{
			int iRemainder = iSkillCount % 2;
			int iQuotient = iSkillCount / 2;
			
			if(iRemainder == 0)
			{
				x = fOrigX + iQuotient * width;
			}
			else
			{
				x = fOrigX - (iQuotient + 1) * width;
			}
		}
		else if(iSkillCount >= 14 && iSkillCount < 18)
		{
			x = fOrigX - (8 * width) - ((iSkillCount - 14) * width);
		}
		else
		{
			x = fOrigX - (12 * width) + ((iSkillCount - 17) * width);
		}

		iSkillCount++;
		
		if(SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
			bMouseOnSkillList = true;
			if(m_EventState == EVENT_NONE && MouseLButtonPush == false)
			{
				m_EventState = EVENT_BTN_HOVER_SKILLLIST;
				break;
			}
		}
		
		if(m_EventState == EVENT_BTN_HOVER_SKILLLIST && MouseLButtonPush == true
			&& SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
#if CLIENT_VERSION >= 1001
			if (!g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHATINPUTBOX))
#endif
				m_EventState = EVENT_BTN_DOWN_SKILLLIST;
			break;
		}
		
		if(m_EventState == EVENT_BTN_HOVER_SKILLLIST && MouseLButtonPush == false
			&& SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
			m_bRenderSkillInfo = true;
			m_iRenderSkillInfoType = i;
			m_iRenderSkillInfoPosX = x;
			m_iRenderSkillInfoPosY = y;
		}
		
		if(m_EventState == EVENT_BTN_DOWN_SKILLLIST && MouseLButtonPush == false
			&& m_iRenderSkillInfoType == i && SEASON3B::CheckMouseIn(x, y, width, height) == true)
		{
			m_EventState = EVENT_NONE;

			m_wHeroPriorSkill = CharacterAttribute->Skill[Hero->CurrentSkill];

			Hero->CurrentSkill = i;
			m_bSkillList = false;
	
			PlayBuffer(SOUND_CLICK01);
			return false;
		}
	}
#elif CLIENT_VERSION >= 1001

	if (m_bSkillList == false)
		return true;

	if (g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHATINPUTBOX))
	{
		m_bSkillList = !m_bSkillList;
		m_SkillPage = 0;
		m_SkillListButtonUp.ForceButtonDown(true);
		m_SkillListButtonUp.Lock();

		m_SkillListButtonDown.ForceButtonDown(true);
		m_SkillListButtonDown.Lock();
		return true;
	}

	std::vector<int> m_skillList;

	m_skillList.clear();

	int skillOffset = 0;

	int skillCount = 0;

	bool bMouseOnSkillList = false;

	x = gWideScreen.GetCenterPosition(320) - 175.f; y = gWideScreen.GetBottomPosition(339); width = 35; height = 40;

	float originalX = x;

	if (Hero->m_pPet == NULL) goto RENDERSKILL;

	for (int i = AT_PET_COMMAND_DEFAULT; i < AT_PET_COMMAND_END; ++i)
	{
		m_skillList.push_back(i);
	}

RENDERSKILL:
	for (int i = 0; i < MAX_MAGIC; ++i)
	{
		int iSkillType = CharacterAttribute->Skill[i];

		if (iSkillType == 0 || (iSkillType >= AT_SKILL_STUN && iSkillType <= AT_SKILL_REMOVAL_BUFF)) continue;

		BYTE bySkillUseType = SkillAttribute[iSkillType].SkillUseType;

		if (bySkillUseType == SKILL_USE_TYPE_MASTER || bySkillUseType == SKILL_USE_TYPE_MASTERLEVEL) continue;

		m_skillList.push_back(i);
	}

	skillOffset += m_SkillPage * 10;

	for (std::vector<int>::iterator it = m_skillList.begin() + skillOffset; it != m_skillList.end(); ++it) 
	{
		int tempX = originalX;

		if (skillCount < 10) {
			tempX += (skillCount * 35);
		}
		else {
			tempX += ((skillCount - 10) * 35);
		}

		int tempY = y + (skillCount > 9 ? 40 : 0);

		if (SEASON3B::CheckMouseIn(tempX, tempY, width, height) == true)
		{
			bMouseOnSkillList = true;
			if (m_EventState == EVENT_NONE && MouseLButtonPush == false)
			{
				m_EventState = EVENT_BTN_HOVER_SKILLLIST;
				break;
			}
		}

		if (m_EventState == EVENT_BTN_HOVER_SKILLLIST && MouseLButtonPush == true
			&& SEASON3B::CheckMouseIn(tempX, tempY, width, height) == true)
		{
			if (!g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHATINPUTBOX))
				m_EventState = EVENT_BTN_DOWN_SKILLLIST;
			break;
		}

		if (m_EventState == EVENT_BTN_HOVER_SKILLLIST && MouseLButtonPush == false
			&& SEASON3B::CheckMouseIn(tempX, tempY, width, height) == true)
		{
			m_bRenderSkillInfo = true;
			m_iRenderSkillInfoType = *it;
			m_iRenderSkillInfoPosX = tempX;
			m_iRenderSkillInfoPosY = tempY;
		}

		if (m_EventState == EVENT_BTN_DOWN_SKILLLIST && MouseLButtonPush == false
			&& m_iRenderSkillInfoType == *it && SEASON3B::CheckMouseIn(tempX, tempY, width, height) == true)
		{
			m_EventState = EVENT_NONE;

			m_wHeroPriorSkill = CharacterAttribute->Skill[Hero->CurrentSkill];

			Hero->CurrentSkill = *it;
			m_bSkillList = false;

			PlayBuffer(SOUND_CLICK01);
			return false;
		}

		skillCount++;
		if (skillCount == 20) break;
	}

#endif

	if(bMouseOnSkillList == false && m_EventState == EVENT_BTN_HOVER_SKILLLIST)
	{
		m_EventState = EVENT_NONE;
		return true;
	}
	if(bMouseOnSkillList == false && MouseLButtonPush == false
		&& m_EventState == EVENT_BTN_DOWN_SKILLLIST )
	{
		m_EventState = EVENT_NONE;
		return false;
	}
	if(m_EventState == EVENT_BTN_DOWN_SKILLLIST)
	{
		if(MouseLButtonPush == false)
		{
			m_EventState = EVENT_NONE;
			return true;
		}
		return false;
	}
#if CLIENT_VERSION >= 1001

	if (m_SkillPage == 0) {
		m_SkillListButtonUp.Lock();
		m_SkillListButtonUp.ForceButtonDown(true);
	}
	else{
		m_SkillListButtonUp.UnLock();
		m_SkillListButtonUp.ForceButtonDown(false);
	}

	if (m_skillList.size() < 20 || m_SkillPage == 1) {
		m_SkillListButtonDown.Lock();
		m_SkillListButtonDown.ForceButtonDown(true);
	}
	else {
		m_SkillListButtonDown.UnLock();
		m_SkillListButtonDown.ForceButtonDown(false);
	}

	if (m_SkillListButtonUp.UpdateMouseEvent() == true && m_SkillPage > 0)
	{
		
			m_SkillPage--;
			PlayBuffer(SOUND_CLICK01);
			m_EventState = EVENT_NONE;
			return false;
		
	}

	if (m_SkillListButtonDown.UpdateMouseEvent() == true && m_skillList.size() > 20)
	{
		
			if (m_SkillPage < 1) {
				m_SkillPage++;
				PlayBuffer(SOUND_CLICK01);
				m_EventState = EVENT_NONE;
				return false;
			}
	}


	if (m_bSkillList && SEASON3B::CheckMouseIn(gWideScreen.GetCenterPosition(320) - 175.f, gWideScreen.GetBottomPosition(339), 350, 81) )
	{
		return false;
	}

#endif

	if (SEASON3B::CheckMouseIn(x + 355.f, y + 22.5f, 18, 36) == true)
	{
		m_EventState = EVENT_NONE;
		return false;
	}

	return true;
}

bool SEASON3B::CNewUISkillList::UpdateKeyEvent()
{
	for(int i=0; i<9; ++i)
	{
		if(SEASON3B::IsPress('1' + i))
		{
			UseHotKey(i+1);
		}
	}

	if(SEASON3B::IsPress('0'))
	{
		UseHotKey(0);
	}

	if(m_EventState == EVENT_BTN_HOVER_SKILLLIST)
	{
		if(SEASON3B::IsRepeat(VK_CONTROL))
		{
			for(int i=0; i<9; ++i)
			{
				if(SEASON3B::IsPress('1' + i))
				{
					SetHotKey(i+1, m_iRenderSkillInfoType);

					return false;
				}
			}

			if(SEASON3B::IsPress('0'))
			{
				SetHotKey(0, m_iRenderSkillInfoType);

				return false;
			}
		}
	}

	if(SEASON3B::IsRepeat(VK_SHIFT))
	{
		for(int i=0; i<4; ++i)
		{
			if(SEASON3B::IsPress('1' + i))
			{
				Hero->CurrentSkill = AT_PET_COMMAND_DEFAULT + i;
				return false;
			}
		}
	}
		
	return true;
}

bool SEASON3B::CNewUISkillList::IsArrayUp(BYTE bySkill)
{
	for(int i=0; i<SKILLHOTKEY_COUNT; ++i)
	{
		if(m_iHotKeySkillType[i] == bySkill)
		{
			if(i == 0 || i > 5)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
	}

	return false;
}

bool SEASON3B::CNewUISkillList::IsArrayIn(BYTE bySkill)
{
	for(int i=0; i<SKILLHOTKEY_COUNT; ++i)
	{
		if(m_iHotKeySkillType[i] == bySkill)
		{
			return true;
		}
	}

	return false;
}

void SEASON3B::CNewUISkillList::SetHotKey(int iHotKey, int iSkillType)
{
	for(int i=0; i<SKILLHOTKEY_COUNT; ++i)
	{
		if(m_iHotKeySkillType[i] == iSkillType)
		{
			m_iHotKeySkillType[i] = -1;
			break;
		}
	}	

	m_iHotKeySkillType[iHotKey] = iSkillType;
}

int SEASON3B::CNewUISkillList::GetHotKey(int iHotKey)
{
	return m_iHotKeySkillType[iHotKey];
}

int SEASON3B::CNewUISkillList::GetSkillIndex(int iSkillType)
{
	int iReturn = -1;
	for(int i=0; i<MAX_MAGIC; ++i)
	{
		if(CharacterAttribute->Skill[i] == iSkillType)
		{
			iReturn = i;
			break;
		}
	}

	return iReturn;
}

void SEASON3B::CNewUISkillList::UseHotKey(int iHotKey)
{
	if(m_iHotKeySkillType[iHotKey] != -1)
	{
		if(m_iHotKeySkillType[iHotKey] >= AT_PET_COMMAND_DEFAULT && m_iHotKeySkillType[iHotKey] < AT_PET_COMMAND_END)
		{
			if(Hero->m_pPet == NULL)
			{
				return;
			}
		}

		WORD wHotKeySkill = CharacterAttribute->Skill[m_iHotKeySkillType[iHotKey]];

		if(wHotKeySkill == 0)
		{
			return;
		}

		m_wHeroPriorSkill = CharacterAttribute->Skill[Hero->CurrentSkill];

		Hero->CurrentSkill = m_iHotKeySkillType[iHotKey];

		WORD bySkill = CharacterAttribute->Skill[Hero->CurrentSkill];


        if ( 
			g_pOption->IsAutoAttack() == true
			&& gMapManager.WorldActive != WD_6STADIUM 
			&& gMapManager.InChaosCastle()==false 
			&& ( bySkill == AT_SKILL_TELEPORT || bySkill == AT_SKILL_TELEPORT_B ) )
        {
            SelectedCharacter = -1;
            Attacking = -1;
        }
	}
}

bool SEASON3B::CNewUISkillList::Update()
{
	if(IsArrayIn(Hero->CurrentSkill) == true)
	{
		if(IsArrayUp(Hero->CurrentSkill) == true)
		{
			m_bHotKeySkillListUp = true;
		}
		else
		{
			m_bHotKeySkillListUp = false;
		}
	}

	if(Hero->m_pPet == NULL)
	{
		if(Hero->CurrentSkill >= AT_PET_COMMAND_DEFAULT && Hero->CurrentSkill < AT_PET_COMMAND_END)
		{
			Hero->CurrentSkill = 0;
		}
	}

	return true;
}

// SKILL ATUAL
void SEASON3B::CNewUISkillList::RenderCurrentSkillAndHotSkillList()
{
	float x, y, width, height;
	
	BYTE bySkillNumber = CharacterAttribute->SkillNumber;
	
	if(bySkillNumber > 0)
	{		
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
		int i;
		int iStartSkillIndex = 1;
		if (m_bHotKeySkillListUp)
		{
			iStartSkillIndex = 6;
		}

		x = gWideScreen.GetCenterPosition(190)-0.5f; y = 431.5f; width = 32; height = 38;
		for(i=0; i<5; ++i)
		{
			x += width;
			
			int iIndex = iStartSkillIndex + i;
			if(iIndex == 10)
			{
				iIndex = 0;
			}
			
			if(m_iHotKeySkillType[iIndex] == -1)
			{
				continue;
			}
			
			if(m_iHotKeySkillType[iIndex] >= AT_PET_COMMAND_DEFAULT && m_iHotKeySkillType[iIndex] < AT_PET_COMMAND_END)
			{
				if(Hero->m_pPet == NULL)
				{
					continue;
				}
			}
			
			if(Hero->CurrentSkill == m_iHotKeySkillType[iIndex])
			{
				SEASON3B::RenderImage(IMAGE_SKILLBOX_USE, x, y, width, height);
			}
			RenderSkillIcon(m_iHotKeySkillType[iIndex], x+6, y+6, 20, 28);
		}
		x = gWideScreen.GetCenterPosition(392); y = 437; width = 20; height = 28;
#endif
#if CLIENT_VERSION >= 1001

		x = gWideScreen.GetCenterPosition(310)+15.5f; y = gWideScreen.GetBottomPosition(447.5f); width = 20; height = 28;
#endif
		RenderSkillIcon(Hero->CurrentSkill, x, y, width, height);
	}
}

// RENDERIZA LISTA SKILLS
bool SEASON3B::CNewUISkillList::Render()
{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	int i;
	float x, y, width, height;
	
	BYTE bySkillNumber = CharacterAttribute->SkillNumber;

	if(bySkillNumber > 0)
	{
		if(m_bSkillList == true)
		{
			x = gWideScreen.GetCenterPosition(385); y = 390; width = 32; height = 38;
			float fOrigX = gWideScreen.GetCenterPosition(385);
            int iSkillType  = 0;
			int iSkillCount = 0;

			for(i=0; i<MAX_MAGIC; ++i)
			{
                iSkillType = CharacterAttribute->Skill[i];
				
				if(iSkillType != 0 && (iSkillType < AT_SKILL_STUN || iSkillType > AT_SKILL_REMOVAL_BUFF))
				{
                    BYTE bySkillUseType = SkillAttribute[iSkillType].SkillUseType;
                  
                    if(bySkillUseType == SKILL_USE_TYPE_MASTER || bySkillUseType == SKILL_USE_TYPE_MASTERLEVEL)
					{
                        continue;
					}

					if(iSkillCount == 18)
					{
						y -= height;
					}

					if(iSkillCount < 14)
					{
						int iRemainder = iSkillCount % 2;
						int iQuotient = iSkillCount / 2;

						if(iRemainder == 0)
						{
							x = fOrigX + iQuotient * width;
						}
						else
						{
							x = fOrigX - (iQuotient + 1) * width;
						}
					}
					else if(iSkillCount >= 14 && iSkillCount < 18)
					{
						x = fOrigX - (8 * width) - ((iSkillCount - 14) * width);
					}
					else
					{
						x = fOrigX - (12 * width) + ((iSkillCount - 17) * width);
					}

					iSkillCount++;

					if(i == Hero->CurrentSkill)
					{
						SEASON3B::RenderImage(IMAGE_SKILLBOX_USE, x, y, width, height);
					}
					else
					{
						SEASON3B::RenderImage(IMAGE_SKILLBOX, x, y, width, height);	
					}
					
					RenderSkillIcon(i, x+6, y+6, 20, 28);
				}
			}
			RenderPetSkill();
		}
	}

#elif CLIENT_VERSION >- 1001
	float x, y, width, height, boxWidth, boxHeight, originalX;

	BYTE bySkillNumber = CharacterAttribute->SkillNumber;

	std::vector<int> m_skillList;

	m_skillList.clear();

	int skillOffset = 0;

	int skillCount = 0;

	if (bySkillNumber < 1 || m_bSkillList == false) goto ENDSKILLRENDER;
	
	x = gWideScreen.GetCenterPosition(320)-175.f; y = gWideScreen.GetBottomPosition(339); width = 350; height = 81, boxWidth = 35, boxHeight = 40;

	originalX = x + 7;

	SEASON3B::RenderImageScale(IMAGE_SKILLBOX_LARGE, x, y, width, height, 0.f, 0.f, 701.f, 163.f);
	SEASON3B::RenderImageScale(IMAGE_SKILL_PAGE, x+355.f, y+22.5f, 18, 36, 0.f, 0.f, 72.f, 144.f);

	m_SkillListButtonUp.Render();
	m_SkillListButtonDown.Render();

	if (Hero->m_pPet == NULL) goto RENDERSKILL;

	for (int i = AT_PET_COMMAND_DEFAULT; i < AT_PET_COMMAND_END; ++i)
	{
		m_skillList.push_back(i);
	}

RENDERSKILL:
	for (int i = 0; i < MAX_MAGIC; ++i)
	{
		int iSkillType = CharacterAttribute->Skill[i];
	
		if (iSkillType == 0 || (iSkillType >= AT_SKILL_STUN && iSkillType <= AT_SKILL_REMOVAL_BUFF)) continue;
		
		BYTE bySkillUseType = SkillAttribute[iSkillType].SkillUseType;
		
		if (bySkillUseType == SKILL_USE_TYPE_MASTER || bySkillUseType == SKILL_USE_TYPE_MASTERLEVEL) continue;

		m_skillList.push_back(i);
	}

	skillOffset += m_SkillPage * 10;

	for (std::vector<int>::iterator it = m_skillList.begin()+skillOffset; it != m_skillList.end(); ++it) 
	{
		int tempX = originalX;

		if (skillCount < 10) {
			tempX += (skillCount * 35);
		}
		else {
			tempX += ((skillCount-10) * 35);
		}

		int tempY = y + 6 + (skillCount > 9 ? 40 : 0);

		if (*it == Hero->CurrentSkill)
			SEASON3B::RenderImageScale(IMAGE_SKILL_USE, tempX -7, tempY-6, boxWidth, boxHeight, 0.f, 0.f, 69.f, 80.f);

		RenderSkillIcon(*it, tempX, tempY, 20, 28);

		skillCount++;
		if (skillCount == 20) break;
	}

ENDSKILLRENDER:
#endif
	
	if(m_bRenderSkillInfo == true && m_pNewUI3DRenderMng)
	{
		m_pNewUI3DRenderMng->RenderUI2DEffect(INVENTORY_CAMERA_Z_ORDER, UI2DEffectCallback, this, 0, 0);

		m_bRenderSkillInfo = false;
	}

	return true;
}

void SEASON3B::CNewUISkillList::RenderSkillInfo()
{
#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
	::RenderSkillInfo(m_iRenderSkillInfoPosX+15, m_iRenderSkillInfoPosY-10, m_iRenderSkillInfoType);
#elif CLIENT_VERSION >= 1001
	::RenderSkillInfo(m_iRenderSkillInfoPosX+15, m_iRenderSkillInfoPosY-25, m_iRenderSkillInfoType);
#endif
}

float SEASON3B::CNewUISkillList::GetLayerDepth()
{
	return 2.2f;
}

WORD SEASON3B::CNewUISkillList::GetHeroPriorSkill()
{
	return m_wHeroPriorSkill;
}

void SEASON3B::CNewUISkillList::SetHeroPriorSkill(BYTE bySkill)
{
	m_wHeroPriorSkill = bySkill;
}

// RENDERIZA SKILL DE PET
void SEASON3B::CNewUISkillList::RenderPetSkill()
{
	if (Hero->m_pPet == NULL)
	{
		return;
	}

	float x, y, width, height;

	x = gWideScreen.GetCenterPosition(353); y = gWideScreen.GetBottomPosition(352); width = 32; height = 38;
	for (int i = AT_PET_COMMAND_DEFAULT; i < AT_PET_COMMAND_END; ++i)
	{
		if (i == Hero->CurrentSkill)
		{
			SEASON3B::RenderImage(IMAGE_SKILLBOX_USE, x, y, width, height);
		}
		else
		{
			SEASON3B::RenderImage(IMAGE_SKILLBOX, x, y, width, height);
		}

		RenderSkillIcon(i, x + 6, y + 6, 20, 28);
		x += width;
	}
}

void SEASON3B::CNewUISkillList::RenderSkillIcon(int iIndex, float x, float y, float width, float height)
{
	WORD bySkillType = CharacterAttribute->Skill[iIndex];

	if(bySkillType == 0)
	{
		return;
	}

	if(iIndex >= AT_PET_COMMAND_DEFAULT)
    {
        bySkillType = iIndex;
    }

	bool bCantSkill = false;

    BYTE bySkillUseType = SkillAttribute[bySkillType].SkillUseType;
	int Skill_Icon = SkillAttribute[bySkillType].Magic_Icon;

 	if( !gSkillManager.DemendConditionCheckSkill(bySkillType))
 	{
		bCantSkill = true;
	}

	if(IsCanBCSkill(bySkillType) == false)
	{
		bCantSkill = true;
	}
	if( g_isCharacterBuff((&Hero->Object), eBuff_AddSkill) && bySkillUseType == SKILL_USE_TYPE_BRAND )
	{
		bCantSkill = true;
	}

	if(bySkillType == AT_SKILL_SPEAR && ( Hero->Helper.Type<MODEL_HELPER+2 || Hero->Helper.Type>MODEL_HELPER+3 ) && Hero->Helper.Type != MODEL_HELPER+37)
	{
		bCantSkill = true;
	}

	if(bySkillType == AT_SKILL_SPEAR && (Hero->Helper.Type == MODEL_HELPER+2 || Hero->Helper.Type == MODEL_HELPER+3	|| Hero->Helper.Type == MODEL_HELPER+37))
	{
		int iTypeL = CharacterMachine->Equipment[EQUIPMENT_WEAPON_LEFT].Type;
		int iTypeR = CharacterMachine->Equipment[EQUIPMENT_WEAPON_RIGHT].Type;
		if((iTypeL < ITEM_SPEAR || iTypeL >= ITEM_BOW) && (iTypeR < ITEM_SPEAR || iTypeR >= ITEM_BOW))
		{
			bCantSkill = true;
		}
	}

	if(bySkillType >= AT_SKILL_BLOCKING && bySkillType <= AT_SKILL_SWORD5 && (Hero->Helper.Type == MODEL_HELPER+2 || Hero->Helper.Type == MODEL_HELPER+3 || Hero->Helper.Type == MODEL_HELPER+37))
	{
		bCantSkill = true;
	}

	if((bySkillType == AT_SKILL_ICE_BLADE ||(AT_SKILL_POWER_SLASH_UP <= bySkillType && AT_SKILL_POWER_SLASH_UP+4 >= bySkillType)) && (Hero->Helper.Type == MODEL_HELPER+2 || Hero->Helper.Type == MODEL_HELPER+3 || Hero->Helper.Type == MODEL_HELPER+37))
	{
		bCantSkill = true;
	}
                   
    int iEnergy = CharacterAttribute->Energy+CharacterAttribute->AddEnergy;

    if(g_csItemOption.IsDisableSkill(bySkillType, iEnergy))
	{
		bCantSkill = true;
	}

    if(bySkillType == AT_SKILL_PARTY_TELEPORT && PartyNumber <= 0)
    {
		bCantSkill = true;
    }

	if (bySkillType == AT_SKILL_PARTY_TELEPORT && (IsDoppelGanger1() || IsDoppelGanger2() || IsDoppelGanger3() || IsDoppelGanger4()))
	{
		bCantSkill = true;
	}

	if(bySkillType == AT_SKILL_DARK_HORSE || (AT_SKILL_ASHAKE_UP <= bySkillType && bySkillType <= AT_SKILL_ASHAKE_UP+4))
	{
		BYTE byDarkHorseLife = 0;
		byDarkHorseLife = CharacterMachine->Equipment[EQUIPMENT_HELPER].Durability;
		if(byDarkHorseLife == 0)
		{
			if (Hero->Helper.Type != MODEL_HELPER + 4 && !gHelperSystem.CheckHelperType(Hero->Helper.Type, 16))
			{
				bCantSkill = true;
			}
		}
	}
#ifdef PJH_FIX_SPRIT
/*¹ÚÁ¾ÈÆ*/
	if( bySkillType>=AT_PET_COMMAND_DEFAULT && bySkillType<AT_PET_COMMAND_END )
	{
		int iCharisma = CharacterAttribute->Charisma+CharacterAttribute->AddCharisma;
		PET_INFO PetInfo;
		giPetManager::GetPetInfo(PetInfo, 421-PET_TYPE_DARK_SPIRIT);
		int RequireCharisma = (185+(PetInfo.m_wLevel*15));
		if( RequireCharisma > iCharisma ) 
		{
			bCantSkill = true;
		}
	}
#endif //PJH_FIX_SPRIT
	if( (bySkillType == AT_SKILL_INFINITY_ARROW) || (bySkillType == AT_SKILL_SWELL_OF_MAGICPOWER))
	{
		if(g_csItemOption.IsDisableSkill(bySkillType, iEnergy))
		{
			bCantSkill = true;
		}
		if( ( g_isCharacterBuff((&Hero->Object), eBuff_InfinityArrow) )	|| ( g_isCharacterBuff((&Hero->Object), eBuff_SwellOfMagicPower)))
		{
			bCantSkill = true;
		}
	}

	if( bySkillType == AT_SKILL_REDUCEDEFENSE || (AT_SKILL_BLOOD_ATT_UP <= bySkillType && bySkillType <= AT_SKILL_BLOOD_ATT_UP+4))
	{
		WORD Strength;
		const WORD wRequireStrength = 596;
		Strength = CharacterAttribute->Strength + CharacterAttribute->AddStrength;
		if(Strength < wRequireStrength)
		{
			bCantSkill = true;
		}
		int iTypeL = CharacterMachine->Equipment[EQUIPMENT_WEAPON_LEFT].Type;
		int iTypeR = CharacterMachine->Equipment[EQUIPMENT_WEAPON_RIGHT].Type;
		
		if ( !( iTypeR!=-1 && ( iTypeR<ITEM_STAFF || iTypeR>=ITEM_STAFF+MAX_ITEM_INDEX ) &&	( iTypeL<ITEM_STAFF || iTypeL>=ITEM_STAFF+MAX_ITEM_INDEX ) ) )
		{
			bCantSkill = true;
		}
	}
	
	switch( bySkillType )
	{
	//case AT_SKILL_PIERCING:
	case AT_SKILL_PARALYZE:
		{
			WORD  Dexterity;
			const WORD wRequireDexterity = 646;
			Dexterity = CharacterAttribute->Dexterity + CharacterAttribute->AddDexterity;
			if(Dexterity < wRequireDexterity)
			{
				bCantSkill = true;
			}
		}break;
	}

	if( bySkillType == AT_SKILL_WHEEL || (AT_SKILL_TORNADO_SWORDA_UP <= bySkillType && bySkillType <= AT_SKILL_TORNADO_SWORDA_UP+4)	|| (AT_SKILL_TORNADO_SWORDB_UP <= bySkillType && bySkillType <= AT_SKILL_TORNADO_SWORDB_UP+4)
		)
	{
		int iTypeL = CharacterMachine->Equipment[EQUIPMENT_WEAPON_LEFT].Type;
		int iTypeR = CharacterMachine->Equipment[EQUIPMENT_WEAPON_RIGHT].Type;
		
		
		if ( !( iTypeR!=-1 && ( iTypeR<ITEM_STAFF || iTypeR>=ITEM_STAFF+MAX_ITEM_INDEX ) && ( iTypeL<ITEM_STAFF || iTypeL>=ITEM_STAFF+MAX_ITEM_INDEX ) ) )
		{
			bCantSkill = true;
		}
	}

	if(gMapManager.InChaosCastle() == true)
	{
		if( bySkillType == AT_SKILL_DARK_HORSE || bySkillType == AT_SKILL_RIDER	|| (bySkillType >= AT_PET_COMMAND_DEFAULT && bySkillType <= AT_PET_COMMAND_TARGET) ||(AT_SKILL_ASHAKE_UP <= bySkillType && bySkillType <= AT_SKILL_ASHAKE_UP+4))
		{
			bCantSkill = true;
		}
	}
	else
	{
		if(bySkillType == AT_SKILL_DARK_HORSE || (AT_SKILL_ASHAKE_UP <= bySkillType && bySkillType <= AT_SKILL_ASHAKE_UP+4))
		{
			BYTE byDarkHorseLife = 0;
			byDarkHorseLife = CharacterMachine->Equipment[EQUIPMENT_HELPER].Durability;
			if(byDarkHorseLife == 0) 
			{
				bCantSkill = true;
			}
		}
	}

	int iCharisma = CharacterAttribute->Charisma+CharacterAttribute->AddCharisma;

	if(g_csItemOption.IsDisableSkill(bySkillType, iEnergy, iCharisma))
	{
		bCantSkill = true;
	}

#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	if(!g_CMonkSystem.IsSwordformGlovesUseSkill(bySkillType))
	{
		bCantSkill = true;
	}
	if(g_CMonkSystem.IsRideNotUseSkill(bySkillType, Hero->Helper.Type))
	{
		bCantSkill = true;
	}

	ITEM* pLeftRing = &CharacterMachine->Equipment[EQUIPMENT_RING_LEFT];
	ITEM* pRightRing = &CharacterMachine->Equipment[EQUIPMENT_RING_RIGHT];
	
	if(g_CMonkSystem.IsChangeringNotUseSkill(pLeftRing->Type, pRightRing->Type, pLeftRing->Level, pRightRing->Level)
		&& (GetBaseClass(Hero->Class) == CLASS_RAGEFIGHTER))
	{
		bCantSkill = true;
	}
#endif //PBG_ADD_NEWCHAR_MONK_SKILL
	
	float fU, fV;
	int iKindofSkill = 0;
	
	if(g_csItemOption.Special_Option_Check() == false && (bySkillType == AT_SKILL_ICE_BLADE||(AT_SKILL_POWER_SLASH_UP <= bySkillType && AT_SKILL_POWER_SLASH_UP+4 >= bySkillType)))
	{
		bCantSkill = true;
	}


	if(g_csItemOption.Special_Option_Check(1) == false && (bySkillType == AT_SKILL_CROSSBOW||(AT_SKILL_MANY_ARROW_UP <= bySkillType && AT_SKILL_MANY_ARROW_UP+4 >= bySkillType)))
		bCantSkill = true;

	if(bySkillType >= AT_PET_COMMAND_DEFAULT && bySkillType <= AT_PET_COMMAND_END)
    {
		fU = ((bySkillType - AT_PET_COMMAND_DEFAULT) % 8) * width / 256.f;
		fV = ((bySkillType - AT_PET_COMMAND_DEFAULT) / 8) * height / 256.f;
		iKindofSkill = KOS_COMMAND;
    }
    else if(bySkillType == AT_SKILL_PLASMA_STORM_FENRIR)
	{
		fU = 4 * width / 256.f;
		fV = 0.f;
		iKindofSkill = KOS_COMMAND;
	}
	else if((bySkillType >= AT_SKILL_ALICE_DRAINLIFE && bySkillType <= AT_SKILL_ALICE_THORNS))
	{
		fU = ((bySkillType - AT_SKILL_ALICE_DRAINLIFE) % 8) * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if(bySkillType >= AT_SKILL_ALICE_SLEEP && bySkillType <= AT_SKILL_ALICE_BLIND)
	{
		fU = ((bySkillType - AT_SKILL_ALICE_SLEEP + 4) % 8) * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_ALICE_BERSERKER)
	{
		fU = 10 * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType >= AT_SKILL_ALICE_WEAKNESS && bySkillType <= AT_SKILL_ALICE_ENERVATION)
	{
		fU = (bySkillType - AT_SKILL_ALICE_WEAKNESS + 8) * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if(bySkillType >= AT_SKILL_SUMMON_EXPLOSION && bySkillType <= AT_SKILL_SUMMON_REQUIEM)
	{
		fU = ((bySkillType - AT_SKILL_SUMMON_EXPLOSION + 6) % 8) * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_SUMMON_POLLUTION)
	{
		fU = 11 * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_BLOW_OF_DESTRUCTION)
	{
		fU = 7 * width / 256.f;
		fV = 2 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_GAOTIC)
	{
		fU = 3 * width / 256.f;
		fV = 8 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_RECOVER)
	{
		fU = 9 * width / 256.f;
		fV = 2 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_MULTI_SHOT)
	{
		if (gCharacterManager.GetEquipedBowType_Skill() == BOWTYPE_NONE)
		{
			bCantSkill = true;
		}

		fU = 0 * width / 256.f;
		fV = 8 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_FLAME_STRIKE)
	{
		int iTypeL = CharacterMachine->Equipment[EQUIPMENT_WEAPON_LEFT].Type;
		int iTypeR = CharacterMachine->Equipment[EQUIPMENT_WEAPON_RIGHT].Type;
		
		if ( !( iTypeR!=-1 && ( iTypeR<ITEM_STAFF || iTypeR>=ITEM_STAFF+MAX_ITEM_INDEX ) &&	( iTypeL<ITEM_STAFF || iTypeL>=ITEM_STAFF+MAX_ITEM_INDEX ) ) )
		{
			bCantSkill = true;
		}

		fU = 1 * width / 256.f;
		fV = 8 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_GIGANTIC_STORM)
	{
		fU = 2 * width / 256.f;
		fV = 8 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if (bySkillType == AT_SKILL_LIGHTNING_SHOCK)
	{
		fU = 2 * width / 256.f;
		fV = 3 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if(AT_SKILL_LIGHTNING_SHOCK_UP <= bySkillType && bySkillType <= AT_SKILL_LIGHTNING_SHOCK_UP+4)
	{
		fU = 6 * width / 256.f;
		fV = 8 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if( bySkillType == AT_SKILL_SWELL_OF_MAGICPOWER )
	{
		fU = 8 * width / 256.f;
		fV = 2 * height / 256.f;
		iKindofSkill = KOS_SKILL2;
	}
	else if(bySkillUseType == 4)
	{
		fU = (width/256.f) * (Skill_Icon%12);
		fV = (height/256.f)*((Skill_Icon/12)+4);
		iKindofSkill = KOS_SKILL2;
	}
#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	else if(bySkillType >= AT_SKILL_THRUST)
	{
		fU = ((bySkillType - 260) % 12) * width / 256.f;
		fV = ((bySkillType - 260) / 12) * height / 256.f;
		iKindofSkill = KOS_SKILL3;
	}
#endif //PBG_ADD_NEWCHAR_MONK_SKILL
	else if(bySkillType >= 57)
    {
		fU = ((bySkillType - 57) % 8) * width / 256.f;
		fV = ((bySkillType - 57) / 8) * height / 256.f;
		iKindofSkill = KOS_SKILL2;
    }
    else
    {
		fU = ((bySkillType - 1) % 8) * width / 256.f;
		fV = ((bySkillType - 1) / 8) * height / 256.f;
		iKindofSkill = KOS_SKILL1;
    }
	int iSkillIndex = 0;
	switch(iKindofSkill)
	{
	case KOS_COMMAND:
		{
			iSkillIndex = IMAGE_COMMAND;
		}break;
	case KOS_SKILL1:
		{
			iSkillIndex = IMAGE_SKILL1;
		}break;
	case KOS_SKILL2:
		{
			iSkillIndex = IMAGE_SKILL2;
		}break;
	}

	if( bCantSkill == true )
	{
		iSkillIndex += 5;
	}
	
	if( iSkillIndex != 0)
	{
		RenderBitmap(iSkillIndex, x, y, width, height, fU, fV, width/256.f, height/256.f);	
	}

	int iHotKey = -1;
	for(int i=0; i<SKILLHOTKEY_COUNT; ++i)
	{
		if(m_iHotKeySkillType[i] == iIndex)
		{
			iHotKey = i;
			break;
		}
	}

	if(iHotKey != -1)
	{
		glColor3f(1.f, 0.9f, 0.8f);
		SEASON3B::RenderNumber(x+20, y+20, iHotKey);
	}

#ifdef PBG_ADD_NEWCHAR_MONK_SKILL
	if((bySkillType == AT_SKILL_GIANTSWING || bySkillType == AT_SKILL_DRAGON_KICK
		|| bySkillType == AT_SKILL_DRAGON_LOWER) && (bCantSkill))
		return;
#endif //PBG_ADD_NEWCHAR_MONK_SKILL

	if( (bySkillType != AT_SKILL_INFINITY_ARROW) && (bySkillType != AT_SKILL_SWELL_OF_MAGICPOWER))

	{
		RenderSkillDelay(iIndex, x, y, width, height);
	}
}

void SEASON3B::CNewUISkillList::RenderSkillDelay(int iIndex, float x, float y, float width, float height)
{
    int iSkillDelay = CharacterAttribute->SkillDelay[iIndex];
    if ( iSkillDelay > 0 )
    {
        int iSkillType  = CharacterAttribute->Skill[iIndex];
		
		if(iSkillType == AT_SKILL_PLASMA_STORM_FENRIR)
		{
			if(!CheckAttack())
			{
				return;
			}
		}

        int iSkillMaxDelay = SkillAttribute[iSkillType].Delay;
		
        float fPersent = (float)(iSkillDelay/(float)iSkillMaxDelay);
        
		EnableAlphaTest();
        glColor4f(1.f, 0.5f, 0.5f, 0.5f);
        float fdeltaH = height * fPersent;
        RenderColor(x, y+height-fdeltaH, width, fdeltaH);
		EndRenderColor();
    }
}

bool SEASON3B::CNewUISkillList::IsSkillListUp()
{
	return m_bHotKeySkillListUp;
}

void SEASON3B::CNewUISkillList::ResetMouseLButton()
{
	MouseLButton = false;
	MouseLButtonPop = false;
	MouseLButtonPush = false;
}

void SEASON3B::CNewUISkillList::UI2DEffectCallback(LPVOID pClass, DWORD dwParamA, DWORD dwParamB)
{
	if(pClass)
	{
		CNewUISkillList* pSkillList= (CNewUISkillList*)(pClass);

#if CLIENT_VERSION >= 402 && CLIENT_VERSION <= 502
		pSkillList->RenderSkillInfo();
#elif CLIENT_VERSION >= 1001
		if (!g_pNewUISystem->IsVisible(SEASON3B::INTERFACE_CHATINPUTBOX))
			pSkillList->RenderSkillInfo();
#endif
	}
}

void SEASON3B::CNewUIMainFrameWindow::SetPreExp_Wide(__int64 dwPreExp)
{
	m_loPreExp = dwPreExp;
}

void SEASON3B::CNewUIMainFrameWindow::SetGetExp_Wide(__int64 dwGetExp)
{
	m_loGetExp = dwGetExp;

	if(m_loGetExp > 0)
	{
		m_bExpEffect = true;
		m_dwExpEffectTime = timeGetTime();
	}
}

void SEASON3B::CNewUIMainFrameWindow::SetPreExp(DWORD dwPreExp)
{
	m_dwPreExp = dwPreExp;
}

void SEASON3B::CNewUIMainFrameWindow::SetGetExp(DWORD dwGetExp)
{
	m_dwGetExp = dwGetExp;

	if(m_dwGetExp > 0)
	{
		m_bExpEffect = true;
		m_dwExpEffectTime = timeGetTime();
	}
}

void SEASON3B::CNewUIMainFrameWindow::SetBtnState(int iBtnType, bool bStateDown)
{
	switch(iBtnType)
	{
#ifdef PBG_ADD_INGAMESHOP_UI_MAINFRAME 
		#if CLIENT_VERSION >= 302 && CLIENT VERSION <= 502
	case MAINFRAME_BTN_PARTCHARGE:
		{
			if(bStateDown) 
			{
				m_BtnCShop.UnRegisterButtonState();
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_CSHOP, 2);
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_CSHOP, 3);
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_CSHOP, 2);
				m_BtnCShop.ChangeImgIndex(IMAGE_MENU_BTN_CSHOP, 2);
			}
			else 
			{
				m_BtnCShop.UnRegisterButtonState();
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_CSHOP, 0);
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_CSHOP, 1);
				m_BtnCShop.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_CSHOP, 2);
				m_BtnCShop.ChangeImgIndex(IMAGE_MENU_BTN_CSHOP, 0);
			}
		}
		break;
#endif
#endif //defined defined PBG_ADD_INGAMESHOP_UI_MAINFRAME
	case MAINFRAME_BTN_CHAINFO:
		{
			if(bStateDown)
			{
				m_BtnChaInfo.UnRegisterButtonState();
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_CHAINFO, 2);
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_CHAINFO, 3);
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_CHAINFO, 2);
				m_BtnChaInfo.ChangeImgIndex(IMAGE_MENU_BTN_CHAINFO, 2);
				
			}
			else
			{
				m_BtnChaInfo.UnRegisterButtonState();
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_CHAINFO, 0);
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_CHAINFO, 1);
				m_BtnChaInfo.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_CHAINFO, 2);
				m_BtnChaInfo.ChangeImgIndex(IMAGE_MENU_BTN_CHAINFO, 0);
			}
		}
		break;
	case MAINFRAME_BTN_MYINVEN:
		{
			if(bStateDown)
			{
				m_BtnMyInven.UnRegisterButtonState();
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_MYINVEN, 2);
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_MYINVEN, 3);
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_MYINVEN, 2);
				m_BtnMyInven.ChangeImgIndex(IMAGE_MENU_BTN_MYINVEN, 2);
			}
			else
			{
				m_BtnMyInven.UnRegisterButtonState();
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_MYINVEN, 0);
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_MYINVEN, 1);
				m_BtnMyInven.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_MYINVEN, 2);
				m_BtnMyInven.ChangeImgIndex(IMAGE_MENU_BTN_MYINVEN, 0);
			}
		}
		break;
#if CLIENT_VERSION <= 502
	case MAINFRAME_BTN_FRIEND:
		{
			if(bStateDown)
			{
				m_BtnFriend.UnRegisterButtonState();
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_FRIEND, 2);
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_FRIEND, 3);
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_FRIEND, 2);
				m_BtnFriend.ChangeImgIndex(IMAGE_MENU_BTN_FRIEND, 2);
			}
			else
			{
				m_BtnFriend.UnRegisterButtonState();
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_FRIEND, 0);
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_FRIEND, 1);
				m_BtnFriend.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_FRIEND, 2);
				m_BtnFriend.ChangeImgIndex(IMAGE_MENU_BTN_FRIEND, 0);
			}
		}
		break;
#endif
#if CLIENT_VERSION >= 401 && CLIENT_VERSION <= 502
	case MAINFRAME_BTN_WINDOW:
		{
			if(bStateDown)
			{
				m_BtnWindow.UnRegisterButtonState();
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_WINDOW, 2);
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_WINDOW, 3);
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_WINDOW, 2);
				m_BtnWindow.ChangeImgIndex(IMAGE_MENU_BTN_WINDOW, 2);
			}
			else
			{
				m_BtnWindow.UnRegisterButtonState();
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_UP, IMAGE_MENU_BTN_WINDOW, 0);
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_OVER, IMAGE_MENU_BTN_WINDOW, 1);
				m_BtnWindow.RegisterButtonState(BUTTON_STATE_DOWN, IMAGE_MENU_BTN_WINDOW, 2);
				m_BtnWindow.ChangeImgIndex(IMAGE_MENU_BTN_WINDOW, 0);
			}
		}
		break;
#endif
	}
}
