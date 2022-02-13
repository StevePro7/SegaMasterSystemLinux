#include "banked_code_3.h"

#ifdef _CONSOLE
int sgb()
#else
int sgb() __banked
#endif
{
	return 3;
}
