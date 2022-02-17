#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "scroll_manager.h"

void engine_screen_manager_init()
{
	engine_scroll_manager_init();
	engine_scroll_manager_load();

	engine_music_manager_play();
	//test2 = 0;
}

void engine_screen_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	const unsigned char delta = 1;
	unsigned char input;
	unsigned char posX;
	unsigned char posY;
	unsigned char col = 8;

	posX = 64;
	input = engine_input_manager_hold_right();
	//input = engine_input_manager_move_right();
	if( input )
	{
		engine_scroll_manager_update();
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_draw_text( "X", 2, 15 );
	}
	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_font_manager_draw_text( " ", 2, 15 );
	}

	col = posX / 8;
	//posX = ( ( col + 0 ) * 8 ) - 0;
	posY = engine_scroll_manager_getPosY( col );
	if( posY == 0 )
	{
		engine_sprite_manager_draw( posX, 184 );
		return;
	}

	engine_sprite_manager_draw( posX, (posY - 1) * 8 );
}
