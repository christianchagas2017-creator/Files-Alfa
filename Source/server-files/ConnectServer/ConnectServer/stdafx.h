#pragma once

#define WIN32_LEAN_AND_MEAN

#define _WIN32_WINNT _WIN32_WINNT_WINXP

#define _WINSOCK_DEPRECATED_NO_WARNINGS

#define CONNECTSERVER_VERSION "VoxMu"


// System Include
#include <windows.h>
#include <winsock2.h>
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

#define ENC(x) (char*)(x)


#pragma comment(lib,"ws2_32.lib")
#pragma comment(lib,"Rpcrt4.lib")
#pragma comment(lib,"dbghelp.lib")
#pragma comment(lib,"Psapi.lib")

extern char CustomerName[50];
extern char CustomerHardwareId[45];
extern long MaxIpConnection;
extern int ClientId;

typedef unsigned __int64 QWORD;
