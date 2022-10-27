#include "funcs.h"
#include "defines.h"
#include "vars.h"
#include "devkit/_sms_manager.h"

static void InterruptHandler( void )
{
	numinterrupts++;
}

void InitConsole()
{
	devkit_SMS_init();

	// We need this
	devkit_SMS_getKeysStatus();

	devkit_SMS_setLineInterruptHandler( &InterruptHandler );
	devkit_SMS_setLineCounter( 192 );
	devkit_SMS_enableLineInterrupt();

	// Kagesan asked for this ;)
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_LEFTCOLBLANK() );
}