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
void devkit_MBMCancelLoop( void )
{
	MBMCancelLoop();
}
void devkit_MBMPlayNoRepeat( void *module )
{
	MBMPlayNoRepeat( module );
}

void devkit_MBMStop( void )
{
	MBMStop();
}
void devkit_MBMResume( void )
{
	MBMResume();
}


void devkit_MBMFrame( void )
{
	MBMFrame();
}
unsigned char devkit_MBMSFXGetStatus( void )
{
	return MBMSFXGetStatus();
}


unsigned char devkit_SMS_GetFMAudioCapabilities()
{
	return SMS_GetFMAudioCapabilities();
}
void devkit_SMS_EnableAudio( unsigned char chips )
{
	SMS_EnableAudio( chips );
}