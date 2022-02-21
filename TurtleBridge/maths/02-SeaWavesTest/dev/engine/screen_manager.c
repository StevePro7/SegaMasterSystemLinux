#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

static unsigned char x = 16;
static unsigned char y = 128-32;// 64;

static void bonus_level();

void engine_screen_manager_init()
{
//	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	bonus_level();

//	engine_tile_manager_draw_clouds();
	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char delta = 0;
	unsigned char input = 0;
	input = engine_input_manager_move_right();
	//input = engine_input_manager_hold_right();
	if( input )
	{
		engine_scroll_manager_update();
	}

	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_font_manager_draw_text( " ", 0, 14 );
	}
	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_draw_text( "X", 0, 14 );
	}

	//engine_sprite_manager_draw( x + 0, y, delta + 0 );

	// fish
	//engine_sprite_manager_draw( x + 40, y, delta + 18 );
	//engine_sprite_manager_draw( x + 80, y, delta + 19 );
	//engine_sprite_manager_draw( x + 120, y, delta + 22 )

	////engine_sprite_manager_fish( x + 96, y );

	
}

static void bonus_level()
{
	engine_tile_manager_sky();
	engine_tile_manager_sea();
	//engine_tile_manager_sea_turtle( 0, 0, 19 );
	//engine_tile_manager_draw_flip2( 2, 0, 12 );
	//engine_tile_manager_fly_turtle( 0, 16, 12 );
}