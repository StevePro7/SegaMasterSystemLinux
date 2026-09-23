#include "main.h"

void main( void )
{
	SMS_setSpritePaletteColor( 0, RGB( 0, 0, 3 ) );
	SMS_displayOn();
	for( ;;)
	{
		SMS_waitForVBlank();
	}
}
