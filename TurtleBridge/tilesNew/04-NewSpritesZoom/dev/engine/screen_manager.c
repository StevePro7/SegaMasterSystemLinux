#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"
#include <stdbool.h>

#define MAX_COUNT	20
static unsigned char x = 32;
static unsigned char y = 64;// 8 * 8;// 64;
static unsigned char y2 = 8 * 8;// 64;

static void texts_level();
static unsigned char dx;
static unsigned char count;
static unsigned char tiles;
static unsigned char frame;
static bool walking;
static unsigned char frames[] = { 0, 1, 2, 1 };

void engine_screen_manager_init()
{
	//engine_font_manager_draw_text( "STEVEPRO STUDIOS ??", 4, 4 );
	texts_level();

	count = 0;
	tiles = 0;
	frame = 0;
	dx = 0;
	walking = false;

	engine_font_manager_draw_data( x, 7, 2 );
	engine_font_manager_draw_data( y, 14, 2 );
	engine_font_manager_draw_data( y2, 24, 2 );
}

void engine_screen_manager_update()
{
	unsigned char input = 0;

	input = engine_input_manager_move_left();
	if( input )
	{
		x -= 1;
	}
	input = engine_input_manager_move_right();
	if( input )
	{
		x += 1;
	}
	input = engine_input_manager_move_up();
	if( input )
	{
		y -= 1;
	}
	input = engine_input_manager_move_down();
	if( input )
	{
		y += 1;
	}

	input = engine_input_manager_move_fire1();
	if( input )
	{
		y2 -= 1;
	}
	input = engine_input_manager_move_fire2();
	if( input )
	{
		y2 += 1;
	}

	// Draw octopus
	engine_sprite_manager_draw( 128, y2, 8 + tiles );

	// Draw Mario
	engine_sprite_manager_draw( x + dx, y, 1 + tiles );


	engine_sprite_manager_draw( 0, y, 0 + tiles );
	engine_sprite_manager_draw( 0, y, 0 + tiles );

	if( y + 32 > y2 && y < y2 + 32 )
	{
		engine_font_manager_draw_text( "OVERLAP7", 10, 3 );

		engine_sprite_manager_draw( 192, y- 32, 0 + tiles );
		engine_sprite_manager_draw( 224, y- 32, 0 + tiles );

		engine_sprite_manager_draw( 192, y + 32, 0 + tiles );
		engine_sprite_manager_draw( 224, y + 32, 0 + tiles );
	}
	else
	{
		engine_font_manager_draw_text( "        ", 10, 3 );

		engine_sprite_manager_draw( 192, y2, 0 + tiles );
		engine_sprite_manager_draw( 224, y2, 0 + tiles );
	}

	engine_font_manager_draw_data( x, 7, 2 );
	engine_font_manager_draw_data( y, 14, 2 );
	engine_font_manager_draw_data( y2, 24, 2 );
}

static void texts_level()
{
	engine_font_manager_draw_text( "1234", 4, 7 );
	engine_font_manager_draw_text( "1234", 16, 17 );
	engine_font_manager_draw_text( "1", 3, 8 );	engine_font_manager_draw_text( "1", 15, 18 );
	engine_font_manager_draw_text( "2", 3, 9 ); engine_font_manager_draw_text( "2", 15, 19 );
	engine_font_manager_draw_text( "3", 3, 10 ); engine_font_manager_draw_text( "3", 15, 20 );
	engine_font_manager_draw_text( "4", 3, 11 ); engine_font_manager_draw_text( "4", 15, 21 );
}

