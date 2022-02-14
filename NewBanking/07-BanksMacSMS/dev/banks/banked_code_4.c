#include "banked_code_4.h"

#ifdef _CONSOLE
int adi()
#else
int adi() __banked
#endif
{
	return 7;
}
