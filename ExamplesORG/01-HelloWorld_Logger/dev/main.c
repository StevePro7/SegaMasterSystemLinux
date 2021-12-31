#include "main.h"

void main( void )
{
	int i = 0;
	devkit_SMS_init();
	devkit_SMS_displayOff();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	devkit_SMS_displayOn();

	log_open();
	for( i = 0; i < 10; i++ )
	{
		log_info( "adriana" );
		devkit_SMS_waitForVBlank();
	}
	log_close();
}
