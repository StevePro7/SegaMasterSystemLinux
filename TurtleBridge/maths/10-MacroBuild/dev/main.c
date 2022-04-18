#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 3, 0 ) );
	devkit_SMS_displayOn();
	for( ;;)
	{
		devkit_SMS_waitForVBlank();
	}
}
