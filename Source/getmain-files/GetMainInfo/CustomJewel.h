// CustomJewel.h: interface for the CCustomJewel class.
//
//////////////////////////////////////////////////////////////////////

#pragma once

#define MAX_CUSTOM_JEWEL 100

struct CUSTOM_JEWEL_INFO
{
	int Index;
	int ItemIndex;
	int MinItemLevel;
	int MaxItemLevel;
	int MaxItemOption1;
	int MaxItemOption2;
	int MinItemOption3;
	int MaxItemOption3;
	int MinItemNewOption;
	int MaxItemNewOption;
	int MaxItemSetOption;
	int MinItemSocketOption;
	int MaxItemSocketOption;
	int EnableSlotWeapon;
	int EnableSlotArmor;
	int EnableSlotWing;
	int SuccessRate[4];
	int SalePrice;
	char ModelName[32];
	char Dir[256];
	int Type;
};

class CCustomJewel
{
public:
	CCustomJewel();
	virtual ~CCustomJewel();
	void Init();
	void Load(char* path);
	void SetInfo(CUSTOM_JEWEL_INFO info);
public:
	CUSTOM_JEWEL_INFO m_CustomJewelInfo[MAX_CUSTOM_JEWEL];
};

extern CCustomJewel gCustomJewel;
