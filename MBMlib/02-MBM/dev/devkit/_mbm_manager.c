#include "_mbm_manager.h"

#ifdef _CONSOLE
#include "../../tmp/MBMlib.h"
#else
#include "../../lib/MBMlib.h"
#endif

unsigned char devkit_MBMSFXGetStatus( void )
{
	return MBMSFXGetStatus();
}