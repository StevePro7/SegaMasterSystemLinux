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

/*  functions to detect and enable FM/PSG audio hardware */
unsigned char devkit_MBMGetStatus( void )
{
	return MBMGetStatus();
}
void devkit_MBMFadeOut( unsigned char fade_fraction )
{
	MBMFadeOut( fade_fraction );
}
void devkit_MBMFrame( void )
{
	MBMFrame();
}

unsigned char devkit_SMS_GetFMAudioCapabilities()
{
	return SMS_GetFMAudioCapabilities();
}
void devkit_SMS_EnableAudio( unsigned char chips )
{
	SMS_EnableAudio( chips );
}

/* SFX */
void devkit_MBMSFXPlay( void *sound_effect )
{
	MBMSFXPlay( sound_effect );
}
void devkit_MBMSFXPlayLoop( void *sound_effect )
{
	MBMSFXPlayLoop( sound_effect );
}
void devkit_MBMSFXCancelLoop( void )
{
	MBMSFXCancelLoop();
}

void devkit_MBMSFXStop( void )
{
	MBMSFXStop();
}

unsigned char devkit_MBMSFXGetStatus( void )
{
	return MBMSFXGetStatus();
}
void devkit_MBMSFXFrame( void )
{
	MBMSFXFrame();
}