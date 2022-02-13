#include "banked_code_1.h"

#ifdef _CONSOLE
int foo()
#else
int foo() __banked
#endif
{
	return 1;
}
