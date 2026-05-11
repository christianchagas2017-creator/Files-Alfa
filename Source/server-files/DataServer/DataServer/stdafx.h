#pragma once

#define WIN32_LEAN_AND_MEAN

#define _WIN32_WINNT _WIN32_WINNT_WINXP

#define _WINSOCK_DEPRECATED_NO_WARNINGS

//#define FAIRPLAY

#define DATASERVER_VERSION "VoxMu"

#ifndef DATASERVER_UPDATE
#define DATASERVER_UPDATE 803
#endif

// System Include
#include <windows.h>
#include <winsock2.h>
#include <commctrl.h>
#include <sql.h>
#include <sqltypes.h>
#include <sqlext.h>
#include <process.h>
#include <iostream>
#include <stdlib.h>
#include <malloc.h>
#include <memory.h>
#include <tchar.h>
#include <time.h>
#include <math.h>
#include <map>
#include <vector>
#include <queue>
#include <string>
#include <Rpc.h>
#include <dbghelp.h>
#include <Psapi.h>
#include <algorithm> // std::transform
#include <cctype>    // std::tolower

#define ENC(x) (char*)(x)

#pragma comment(lib,"ws2_32.lib")
#pragma comment(lib,"comctl32.lib")
#pragma comment(lib,"Rpcrt4.lib")
#pragma comment(lib,"dbghelp.lib")
#pragma comment(lib,"Psapi.lib")

extern char CustomerName[50];
extern char CustomerHardwareId[45];
extern int ClientId;
extern int MaxCharacters;
const int CharacterCount = 10;
typedef unsigned __int64 QWORD;
