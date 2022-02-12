#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

static unsigned char x = 48;
static unsigned char y = 96;

static void bonus_level();

void engine_screen_manager_init()
{
//	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	bonus_level();
}

void engine_screen_manager_update()
{
	unsigned char delta = 0;
	unsigned char input = 0;
	input = engine_input_manager_move_fire1();
	if( input )
	{
		//engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 7 );
	}

	input = engine_input_manager_move_left();
	if( input )
	{
		x--;
	}
	input = engine_input_manager_move_right();
	if( input )
	{
		x++;
	}
	input = engine_input_manager_move_up();
	if( input )
	{
		y--;
	}
	input = engine_input_manager_move_down();
	if( input )
	{
		y++;
	}

	//print_coords();

	// fish
	//engine_sprite_manager_draw( x + 0, y, delta + 17 );
	//engine_sprite_manager_draw( x + 40, y, delta + 18 );
	//engine_sprite_manager_draw( x + 80, y, delta + 19 );
	//engine_sprite_manager_draw( x + 120, y, delta + 22 )

	//engine_sprite_manager_fish( x + 96, y );
}

static void bonus_level()
{
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	engine_tile_manager_draw_flip( tile_type_section01,  0, 12, 16, 10, 6, 16 );
	engine_tile_manager_draw_norm( tile_type_section01, 24, 12, 16, 10, 0, 8 );
}