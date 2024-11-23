#include "_mbm_manager.h"

#ifdef _CONSOLE
#include "../../tmp/MBMlib.h"
#else
#include "../../lib/MBMlib.h"
#endif

void devkit_MBMPlay( void *module )
{
	MBMPlay( module );
}
void devkit_MBMFrame( void )
{
	MBMFrame();
}
unsigned char devkit_MBMSFXGetStatus( void )
{
	return MBMSFXGetStatus();
}