#include "stdafx.h"
#include "FileProtect.h"
#include "stdio.h"

CFileProtect gFileProtect;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CFileProtect::CFileProtect() // OK
{
	this->m_buff = 0;
	this->m_size = 0;
	memset(this->m_path,0,sizeof(this->m_path));
}

CFileProtect::~CFileProtect() // OK
{

}

bool CFileProtect::LoadFile(char* path) // OK
{
	FILE* file = fopen(path, "rb");

	if (file == NULL)
	{
		return 0;
	}

	fseek(file, 0, SEEK_END);
	this->m_size = ftell(file);
	fseek(file, 0, SEEK_SET);
	this->m_buff = new unsigned char[this->m_size];
	if (this->m_buff == NULL)
	{
		fclose(file);
		return 0;
	}

	fread(this->m_buff, 1, this->m_size, file);
	fclose(file);

	return 1;
}

bool CFileProtect::FileEncrypt(char* path, char * n_path) // OK
{
	if(this->LoadFile(path) == 0)
	{
		return 0;
	}

	FILE* fp = fopen(n_path, "wb");

	if (fp == NULL) return false;

	for(int n=0;n < (int)this->m_size;n++)
	{
		this->m_buff[n] ^= gFileProtectXorTable[n % sizeof(gFileProtectXorTable)];
	}

	fwrite(this->m_buff, 1, this->m_size, fp);
	fclose(fp);

	return 1;
}

void CFileProtect::FindFile(char * path, char * n_path)
{
	char wildcard_path[256];

	wsprintf(wildcard_path,"%s*",path);

	WIN32_FIND_DATA data;

	HANDLE file = FindFirstFile(wildcard_path,&data);

	if(file == INVALID_HANDLE_VALUE)
	{
		return;
	}

	do
	{
		if((data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) == 0)
		{
			char file_name[256];
			char n_file_name[256];
			wsprintf(file_name,"%s%s",path,data.cFileName);
			wsprintf(n_file_name,"%s%s",n_path,data.cFileName);

			int len = strlen(n_file_name);

			n_file_name[len-3] = 'v';
			n_file_name[len-2] = 'o';

			printf("%s encrypted \n", n_file_name);

			this->FileEncrypt(file_name, n_file_name);
			continue;
		}

		if(strcmp(data.cFileName,".") != 0 && strcmp(data.cFileName,"..") != 0)
		{
			char next_path[256];
			char n_next_path[256];
			wsprintf(next_path,"%s%s\\",path,data.cFileName);
			wsprintf(n_next_path,"%s%s\\",n_path,data.cFileName);
			this->FindFile(next_path, n_next_path);
			continue;
		}
	}
	while(FindNextFile(file,&data) != 0);
}