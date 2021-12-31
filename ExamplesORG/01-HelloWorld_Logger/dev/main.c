#include "main.h"

void main( void )
{
	int i = 0;
	devkit_SMS_init();
	devkit_SMS_displayOff();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 3, 3, 2 ) );
	devkit_SMS_displayOn();

	log_open();
	for( i = 0; i < 10; i++ )
	{
		log_info( "stevepro studios!!" );
		devkit_SMS_waitForVBlank();
	}
	//log_close();
}
