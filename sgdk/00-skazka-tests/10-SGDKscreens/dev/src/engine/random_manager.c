#include "random_manager.h"
#include "global_manager.h"

#ifdef _CONSOLE
#include <stdlib.h>
#else
#include <genesis.h>
#endif

void engine_random_manager_rand()
{
#ifdef _CONSOLE
	rand();
#else
	random();
#endif
}

unsigned char engine_random_manager_next()
{
#ifdef _CONSOLE
	return rand() % MAX_RANDOM;
#else
	return random() % MAX_RANDOM;
#endif
}


bool engine_random_manager_diff( unsigned char level )
{
	//return level == 0 ? 0 : 1;
	unsigned char value = 0;
#ifdef _CONSOLE
	value = rand() % HLF_RANDOM;
#else
	value = random() % HLF_RANDOM;
#endif

	return level <= value;
}