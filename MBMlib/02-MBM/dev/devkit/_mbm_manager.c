#include "_mbm_manager.h"

#ifdef _CONSOLE
#include "../../tmp/MBMlib.h"
#else
#include "../../lib/MBMlib.h"
#endif

unsigned char devkit_SMS_GetFMAudioCapabilities()
{
	return SMS_GetFMAudioCapabilities();
}
void devkit_SMS_EnableAudio( unsigned char chips )
{
	SMS_EnableAudio( chips );
}

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