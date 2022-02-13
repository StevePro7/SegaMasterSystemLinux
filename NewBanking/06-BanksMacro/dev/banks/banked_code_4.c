#include "banked_code_3.h"

#ifdef _CONSOLE
int adi()
#else
int adi() __banked
#endif
{
	return 8;
}
