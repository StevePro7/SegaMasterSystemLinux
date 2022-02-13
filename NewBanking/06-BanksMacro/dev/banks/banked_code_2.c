#include "banked_code_2.h"

#ifdef _CONSOLE
int bar()
#else
int bar() __banked
#endif
{
	return 2;
}
