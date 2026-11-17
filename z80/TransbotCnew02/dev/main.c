#include "main.h"

void main( void )
{
	PSGSilenceChannels();
	screen_game_screen_load();

	for( ;;)
	{
		SMS_waitForVBlank();
		PSGFrame();
		PSGSFXFrame();
	}
}
