#include "random_manager.h"
#include "global_manager.h"
#include <stdlib.h>

unsigned char engine_random_manager_next()
{
	return rand() % MAX_RANDOM;
}