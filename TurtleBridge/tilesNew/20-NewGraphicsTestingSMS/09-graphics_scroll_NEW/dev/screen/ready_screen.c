#include "ready_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/scroll_manager.h"

void screen_ready_screen_load()
{
	//unsigned int posnX;
	//unsigned char tileX;

	//posnX = 256 * 8 - 1;
	//tileX = posnX >> 3;
	//engine_font_manager_text( "READY", 10, 2 );

	//engine_font_manager_data( posnX, 10, 10 );
	//engine_font_manager_data( tileX, 10, 11 );

	engine_scroll_manager_update( 0 );
//	engine_music_manager_play( 0 );		// glitch
	//engine_music_manager_play( 1 );		// NO gfx
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	//engine_scroll_manager_update( 0 );
	//*screen_type = screen_type_ready;
	*screen_type = screen_type_play;
}
