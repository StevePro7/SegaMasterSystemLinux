#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdlib.h>

static void draw_turtles();
static void draw_turtle( unsigned char i );
static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };
static unsigned char scrollX;
static unsigned char y;

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	draw_turtles();

	engine_music_manager_play();
	scrollX = 0;
	y = 96;
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_move_left();
	if( input )
	{
		engine_font_manager_draw_data( scrollX, 10, 16 );
		devkit_SMS_setBGScrollX( scrollX++ );
		engine_font_manager_draw_data( scrollX, 10, 17 );
	}
	input = engine_input_manager_move_right();
	if( input )
	{
		engine_font_manager_draw_data( scrollX, 10, 16 );
		devkit_SMS_setBGScrollX( scrollX-- );
		engine_font_manager_draw_data( scrollX, 10, 17 );
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

	engine_sprite_manager_draw( 88, y, SPRITE_TILES );
}

static void draw_turtles()
{
	unsigned char i;
	for( i = 0; i < 6; i++ )
	{
		draw_turtle( i );
	}
}
static void draw_turtle( unsigned char i )
{
	if( 0 == flag[ i ] )
	{
		engine_turtle_manager_draw_01( wide[ i ], 18 );
	}
	else
	{
		engine_turtle_manager_draw_02( wide[ i ], 18 );
	}
}