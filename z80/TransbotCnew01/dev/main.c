#include "main.h"

void main( void )
{
	PSGSilenceChannels();

	SMS_setSpritePaletteColor( 0, RGB( 0, 0, 0 ) );
	SMS_displayOn();
	for( ;;)
	{
		SMS_waitForVBlank();
		PSGFrame();
		PSGSFXFrame();
	}
}

#ifdef _CONSOLE
#else
SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2021, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware" );
#endif
