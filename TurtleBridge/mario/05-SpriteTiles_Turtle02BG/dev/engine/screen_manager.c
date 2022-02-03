#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	unsigned char y = 16;
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );

	//engine_sprite_manager_draw( 0, 0, TURTLE_TILES );
	engine_sprite_manager_draw( 2, y );
	engine_sprite_manager_draw( 8, y + 1 );
	engine_sprite_manager_draw( 14, y );
	engine_sprite_manager_draw( 20, y );
	engine_sprite_manager_draw( 26, y );

}

void engine_screen_manager_update()
{
	unsigned char input = 0;
	unsigned char diff = 1;
	input = engine_input_manager_move_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 7 );
	}


}