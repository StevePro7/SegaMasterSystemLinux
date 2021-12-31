#include "main.h"

void main( void )
{
	int i = 0;
	devkit_SMS_init();
	devkit_SMS_displayOff();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 3, 0, 0 ) );
	devkit_SMS_displayOn();

	engine_log_manager_open();
	for( i = 0; i < 20; i++ )
	{
		engine_log_manager_debug( "check?" );
		engine_log_manager_infos( "testing" );
		engine_log_manager_error( "uh-oh" );
		devkit_SMS_waitForVBlank();
	}
	engine_log_manager_close();
}
