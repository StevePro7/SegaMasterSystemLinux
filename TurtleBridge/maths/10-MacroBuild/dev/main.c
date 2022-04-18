#include "main.h"

void main( void )
{
	int col;
	col = Bar();
	devkit_SMS_init();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( col, 0, 0 ) );
	devkit_SMS_displayOn();
	for( ;;)
	{
		devkit_SMS_waitForVBlank();
	}
}
