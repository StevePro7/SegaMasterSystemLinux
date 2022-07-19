#ifndef _RANDOM_MANAGER_H_
#define _RANDOM_MANAGER_H_

#ifdef _CONSOLE
#include <stdlib.h>
#include <stdbool.h>
#else
#include <genesis.h>
#endif

void engine_random_manager_rand();
unsigned char engine_random_manager_next();
unsigned char engine_random_manager_data( unsigned char max );
unsigned char engine_random_manager_diff( unsigned char level );

#endif//_RANDOM_MANAGER_H_
