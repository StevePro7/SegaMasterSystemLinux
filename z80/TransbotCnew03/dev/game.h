#ifndef _GAME_H_
#define _GAME_H_

#define productCode	9999
#define revision	0

#define verMaj		1
#define verMin		0
#define dateYear	2026
#define dateMonth	1
#define dateDay		1
#define author		"StevePro Studios"
#define name		"Hello World"
#define descr		"Simple Sega Master System demo to run on real hardware"

#ifdef _CONSOLE
#include "../tmp/SMSlib.h"
#include "../tmp/PSGlib.h"
#else
#include "../lib/SMSlib.h"
#include "../lib/PSGlib.h"
#endif

#endif//_GAME_H_