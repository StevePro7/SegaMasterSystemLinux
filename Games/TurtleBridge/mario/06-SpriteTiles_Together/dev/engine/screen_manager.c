#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 4 );
}

void engine_screen_manager_update()
{
	unsigned char input = 0;
	unsigned char diff = 1;
	input = engine_input_manager_move_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 7 );
	}

	engine_sprite_manager_draw( 88, 96, SPRITE_TILES );
	engine_sprite_manager_draw( 88, 144, SPRITE_TILES + 48 );
}