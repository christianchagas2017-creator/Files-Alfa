#include "stdafx.h"
#include "CCRC32.h"
#include "ThemidaSDK.h"
#include "CustomJewel.h"
#include "LuaProtect.h"
#include "FileProtect.h"

#define MACRO_CONFIG_TXT STRING_CRIPT(".\\Configs.txt")
#define MCRO_DEFINE_CONFIG STRING_CRIPT("Configs")

void CreateConfig();
void CreateCustomJewels();
void EncryptFiles();
void EncryptModels();
void CreateAll();

static BYTE bBuxCode[3] = { 0x4B, 0xE9, 0x8C };

struct MAIN_FILE_INFO
{
	char CustomerName[32];
	char IpAddress[32];
	WORD IpAddressPort;
	char ClientVersion[8];
	char ClientSerial[17];
	char WindowName[32];
	char ScreenShotPath[50];
	BYTE EnableVisualIventory;
	BYTE LuaReload;
	BYTE LuaCrypt;
	char m_registerPath[125];
	char m_PrivateCode[125];
	BYTE m_PersonalShop_Coins;
	int m_AttackSpeedDW;
	int m_AttackSpeedDK;
	int m_AttackSpeedELF;
	int m_AttackSpeedMG;
	int m_AttackSpeedDL;
	int m_AttackSpeedSUM;
	int m_MagicSpeedDW;
	int m_MagicSpeedDK;
	int m_MagicSpeedELF;
	int m_MagicSpeedMG;
	int m_MagicSpeedDL;
	int m_MagicSpeedSUM;
};

struct LOAD_CUSTOM_JEWEL_INFO
{
	CUSTOM_JEWEL_INFO CustomJewelInfo[MAX_CUSTOM_JEWEL];
};

int _tmain(int argc, _TCHAR* argv[])
{
	printf("What do you want to do?: \n");

	printf("1 - Gerar Config \n");

	printf("2 - Custom Jewels \n");

	printf("3 - Encrypt Lua \n");

	printf("4 - Encrypt Models \n");

	printf("5 - Gerar Tudo \n");


	int execute = 0;

	scanf_s("%i", &execute);

	switch (execute) {
	case 1:
		CreateConfig();
		break;
	case 2:
		CreateCustomJewels();
		break;
	case 3:
		EncryptFiles();
		break;
	case 4:
		EncryptModels();
		break;
	default:
		CreateAll();
		break;
	}

	printf("Arquivo gerado com sucesso! \n");

	system("pause");
}

void CreateAll() 
{
	CreateConfig();
	CreateCustomJewels();
	EncryptFiles();
	EncryptModels();
}

void CreateConfig()// OK
{
	CLEAR_START

	ENCODE_START

	MAIN_FILE_INFO info;

	memset(&info, 0, sizeof(info));

	info.IpAddressPort = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "IpAddressPort", 44405, MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "CustomerName", "", info.CustomerName, sizeof(info.CustomerName), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "IpAddress", "", info.IpAddress, sizeof(info.IpAddress), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "ClientVersion", "", info.ClientVersion, sizeof(info.ClientVersion), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "ClientSerial", "", info.ClientSerial, sizeof(info.ClientSerial), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "WindowName", "", info.WindowName, sizeof(info.WindowName), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "ScreenShotPath", "", info.ScreenShotPath, sizeof(info.ScreenShotPath), MACRO_CONFIG_TXT);

	info.EnableVisualIventory = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "EnableVisualInventory", 0, MACRO_CONFIG_TXT);

	info.LuaReload = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "ReloadLua", 0, MACRO_CONFIG_TXT);

	info.LuaCrypt = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "LuaCrypted", 0, MACRO_CONFIG_TXT);

	info.m_PersonalShop_Coins = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "PersonalShop_Coins", 1, MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "RegisterPath", "", info.m_registerPath, sizeof(info.m_registerPath), MACRO_CONFIG_TXT);

	GetPrivateProfileString(MCRO_DEFINE_CONFIG, "PrivateCode", "", info.m_PrivateCode, sizeof(info.m_PrivateCode), MACRO_CONFIG_TXT);

	info.m_AttackSpeedDW = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedDW", 12000, MACRO_CONFIG_TXT);
	info.m_AttackSpeedDK = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedDK", 12000, MACRO_CONFIG_TXT);
	info.m_AttackSpeedELF = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedELF", 12000, MACRO_CONFIG_TXT);
	info.m_AttackSpeedMG = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedMG", 12000, MACRO_CONFIG_TXT);
	info.m_AttackSpeedDL = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedDL", 12000, MACRO_CONFIG_TXT);
	info.m_AttackSpeedSUM = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "AttackSpeedSUM", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedDW = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedDW", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedDK = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedDK", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedELF = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedELF", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedMG = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedMG", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedDL = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedDL", 12000, MACRO_CONFIG_TXT);
	info.m_MagicSpeedSUM = GetPrivateProfileInt(MCRO_DEFINE_CONFIG, "MagicSpeedSUM", 12000, MACRO_CONFIG_TXT);

	for(int n=0;n < sizeof(MAIN_FILE_INFO);n++)
	{
		((BYTE*)&info)[n] ^= bBuxCode[n % 3];
	}

	CreateDirectory("Data", NULL);
	CreateDirectory("Data\\Custom", NULL);

	char path[256];
	wsprintf(path, "Data\\Custom\\Config.%s", FILE_EXTENSION);

	DeleteFile(path);

	HANDLE file = CreateFile(STRING_CRIPT(path), GENERIC_WRITE, FILE_SHARE_READ, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_ARCHIVE, 0);


	if(file == INVALID_HANDLE_VALUE)
	{
		return;
	}

	DWORD OutSize = 0;

	if (WriteFile(file, &info, sizeof(MAIN_FILE_INFO), &OutSize, 0) == 0)
	{
		CloseHandle(file);
		return;
	}

	CloseHandle(file);

	ENCODE_END

	CLEAR_END
}

void CreateCustomJewels()
{
	LOAD_CUSTOM_JEWEL_INFO info;

	memset(&info, 0, sizeof(info));

	gCustomJewel.Load("CustomJewel.txt");

	memcpy(info.CustomJewelInfo, gCustomJewel.m_CustomJewelInfo, sizeof(info.CustomJewelInfo));

	for (int n = 0; n < sizeof(LOAD_CUSTOM_JEWEL_INFO); n++)
	{
		((BYTE*)&info)[n] ^= (BYTE)(0xF6 ^ LOBYTE(n));
		((BYTE*)&info)[n] -= (BYTE)(0x2B ^ HIBYTE(n));
	}

	CreateDirectory("Data", NULL);
	CreateDirectory("Data\\Custom", NULL);

	char path[256];
	wsprintf(path, "Data\\Custom\\CustomJewel.%s", FILE_EXTENSION);

	DeleteFile(path);

	HANDLE file = CreateFile(path, GENERIC_WRITE, FILE_SHARE_READ, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_ARCHIVE, 0);

	if (file == INVALID_HANDLE_VALUE)
	{
		return;
	}

	DWORD OutSize = 0;

	if (WriteFile(file, &info, sizeof(LOAD_CUSTOM_JEWEL_INFO), &OutSize, 0) == 0)
	{
		CloseHandle(file);
		return;
	}

	CloseHandle(file);
}

void EncryptFiles() {
	GetPrivateProfileString(MCRO_DEFINE_CONFIG, STRING_CRIPT("PrivateCode"), "", gFileProtectLua.m_PrivateCode, sizeof(gFileProtectLua.m_PrivateCode), MACRO_CONFIG_TXT);

	Sleep(20);

	gFileProtectLua.FindFile("LuaScripts\\Decrypted\\", "LuaScripts\\Encrypted\\");
}

void EncryptModels() {
	gFileProtect.FindFile("Models\\Decrypted\\", "Models\\Encrypted\\");
}

