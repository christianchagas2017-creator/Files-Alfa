#pragma once

static const BYTE gFileProtectXorTable[16] = { 0xDF, 0xCA, 0x81, 0xCD, 0x05, 0xBD, 0xAD, 0x7A, 0xF8, 0xE1, 0xBC, 0x8B, 0x4F, 0x33, 0xDB, 0xD9 };

class CFileProtect
{
public:
	CFileProtect();
	virtual ~CFileProtect();
	bool LoadFile(char* path);
	bool FileEncrypt(char* path, char * n_path);
	void FindFile(char * path, char * n_path);

private:
	unsigned char* m_buff;
	int m_size;
	char m_path[256];

public:
	char m_IpServer[17];
	char m_PrivateCode[125];
};

extern CFileProtect gFileProtect;