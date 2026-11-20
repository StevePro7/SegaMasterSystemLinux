#include "main.h"

#ifdef _CONSOLE
#else
__sfr __at 0x7f PSGPort;
#endif

static void silence_psg( void )
{
#ifdef _CONSOLE
#else
	/* Same four volume writes as the original boot code ($27A8 area). */
	PSGPort = 0x9f;
	PSGPort = 0xbf;
	PSGPort = 0xdf;
	PSGPort = 0xff;
#endif
}


void main( void )
{
	silence_psg();
	screen_game_screen_load();

	for( ;;)
	{
		SMS_waitForVBlank();
		screen_game_screen_update();
	}
}
