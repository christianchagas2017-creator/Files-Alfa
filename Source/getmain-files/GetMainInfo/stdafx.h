#pragma once

// System Include
#include <stdio.h>
#include <tchar.h>
#include <string>
#include <windows.h>

#ifndef IMPORTS_H_
#define IMPORTS_H_

#define MAX_CATEGORY 16
#define MAX_ITEM_PER_CATEGORY 512
#define GET_ITEM(x,y) (x*MAX_ITEM_PER_CATEGORY+y) + 1296
#define GET_ITEMN(x,y) (x*MAX_ITEM_PER_CATEGORY+y)

#define STRING_CRIPT(str) (char*)(str)

#define ALLOW_DECRYPT

#define FILE_EXTENSION "vox"

#endif