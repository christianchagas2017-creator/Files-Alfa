#pragma once

static const BYTE gFileProtectLuaHeader[8] = { 0x18, 0x02, 0xA2, 0x8B, 0xDA, 0x40, 0xA0, 0x34 };
static const BYTE gFileProtectLuaXorTable[16] = { 0xCC, 0x79, 0xE6, 0xA3, 0xAD, 0x23, 0xEF, 0x33, 0x8F, 0x4D, 0x69, 0xCC, 0xEC, 0x56, 0x08, 0xE0 };

class CFileLuaProtect
{
public:
	CFileLuaProtect();
	virtual ~CFileLuaProtect();
	bool LoadFile(char* path);
	bool EncryptFile(char* path, char * n_path);
	bool DecryptFile(char* path, char * n_path);
	void FindFile(char * path, char * n_path);
	void FindFile2(char * path, char * n_path);

private:
	char* m_buff;
	DWORD m_size;
	char m_path[256];

public:
	char m_PrivateCode[125];
};

extern CFileLuaProtect gFileProtectLua;