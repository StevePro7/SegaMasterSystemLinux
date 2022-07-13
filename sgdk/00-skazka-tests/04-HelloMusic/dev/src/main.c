#include "main.h"

int main()
{
	engine_audio_manager_init();
	engine_audio_manager_play_music( 2 );
	//engine_audio_manager_play_effect( 5 );

	VDP_drawText( "Hello Genny World..", 10, 16 );
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}