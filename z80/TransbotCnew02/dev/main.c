#include "main.h"

void main( void )
{
	PSGSilenceChannels();
	screen_title_screen_load();

	for( ;;)
	{
		SMS_waitForVBlank();
		PSGFrame();
		PSGSFXFrame();
	}
}
