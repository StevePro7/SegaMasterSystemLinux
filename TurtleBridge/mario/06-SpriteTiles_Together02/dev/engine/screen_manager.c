#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

static unsigned char x = 88;
static unsigned char y = 96;

static void print_coords();

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );

	//engine_turtle_manager_draw( 2, y );
	//engine_turtle_manager_draw( 6, y );
	engine_turtle_manager_draw( 11, 18 );
	//engine_turtle_manager_draw( 18, y );
	//engine_turtle_manager_draw( 24, y );
	//engine_turtle_manager_draw( 38, y );
}

void engine_screen_manager_update()
{
	unsigned char input = 0;
	input = engine_input_manager_move_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 7 );
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

	print_coords();

	engine_sprite_manager_draw( x, y, SPRITE_TILES );
}

static void print_coords()
{
	engine_font_manager_draw_data( x, 14, 6 );
	engine_font_manager_draw_data( y, 14, 7 );
}