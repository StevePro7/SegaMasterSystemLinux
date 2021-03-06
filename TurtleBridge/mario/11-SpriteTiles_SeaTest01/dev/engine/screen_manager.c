#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

static unsigned char tx;
static unsigned char ty;
static void draw_waves();
//static void draw_turtle( unsigned char i );
//static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
//static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };

void engine_screen_manager_init()
{
	//engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 1 );
	//draw_turtle( 0 );

	engine_turtle_manager_draw_sky();

	tx = 14;
	ty = 12;
	//engine_turtle_manager_draw_01( tx, ty );
	//engine_turtle_manager_draw_02( 8, 13 );
	//engine_turtle_manager_draw_03( 14, 14 );
	//engine_turtle_manager_draw_04( 20, 15 );

	//engine_music_manager_play();
	draw_waves();

	//engine_turtle_manager_draw_01( 10, 18 );
	engine_turtle_manager_draw_01( 10, 18 );
	engine_turtle_manager_draw_01( 10, 21 );
	engine_turtle_manager_draw_01( 16, 19 );
	engine_turtle_manager_draw_01( 22, 20 );
	engine_turtle_manager_draw_01( 28, 21 );
}

void engine_screen_manager_update()
{
	/*unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
		if( 12 == ty )
		{
			ty = 13;
			engine_turtle_manager_draw_02( tx, ty );
		}
		else if( 13 == ty )
		{
			ty = 14;
			engine_turtle_manager_draw_03( tx, ty );
		}
		else if( 14 == ty )
		{
			ty = 15;
			engine_turtle_manager_draw_04( tx, ty );
		}
	}
	input = engine_input_manager_hold_up();
	if( input )
	{
		if( 15 == ty )
		{
			ty = 14;
			engine_turtle_manager_draw_03( tx, ty );
		}
		else if( 14 == ty )
		{
			ty = 13;
			engine_turtle_manager_draw_02( tx, ty );
		}
	}*/
	/*	unsigned char test;
		rand();

		test = rand() % 20;
		if( 1 == test )
		{
			test = rand() % 6;
			flag[ test ] = 1 - flag[ test ];
			draw_turtle( test );
		*/

	//engine_sprite_manager_draw( 88, 64, SPRITE_TILES );
	ty = 112;
	engine_sprite_manager_draw( 10 * 8, ty, SPRITE_TILES );

	ty = 136 - 24 + 16;
	engine_sprite_manager_draw( 16 * 8 + 4, ty, SPRITE_TILES );

	ty = 144 - 24 + 16;
	engine_sprite_manager_draw( 22 * 8, ty + 1, SPRITE_TILES );

	ty = 160 - 24 + 8;
	engine_sprite_manager_draw( 28 * 8, ty, SPRITE_TILES );
}

static void draw_waves()
{
	unsigned sx, sy;
	sy = 21;
	for( sx = 0; sx < 32; sx += 4 )
	{
		engine_sprite_manager_tile( sx + 0, sy + 0, 35 );
		engine_sprite_manager_tile( sx + 1, sy + 0, 35 );
		engine_sprite_manager_tile( sx + 2, sy + 0, 36 );
		engine_sprite_manager_tile( sx + 3, sy + 0, 36 );
	}

	for( sx = 0; sx < 32; sx += 4 )
	{
		//sy = 18;
		//engine_sprite_manager_tile( sx + 0, sy + 0, 38 );
		//engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 2, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 3, sy + 0, 37 );

		//sy = 20;
		//engine_sprite_manager_tile( sx + 0, sy + 0, 38 );
		//engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 2, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 3, sy + 0, 37 );

		sy = 22;
		engine_sprite_manager_tile( sx + 0, sy + 0, 38 );
		engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		engine_sprite_manager_tile( sx + 2, sy + 0, 33 );
		engine_sprite_manager_tile( sx + 3, sy + 0, 37 );
	}

	for( sx = 0; sx < 32; sx += 4 )
	{
		//sy = 19;
		//engine_sprite_manager_tile( sx + 0, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 2, sy + 0, 41 );
		//engine_sprite_manager_tile( sx + 3, sy + 0, 33 );

		//sy = 21;
		//engine_sprite_manager_tile( sx + 0, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		//engine_sprite_manager_tile( sx + 2, sy + 0, 41 );
		//engine_sprite_manager_tile( sx + 3, sy + 0, 33 );

		sy = 23;
		engine_sprite_manager_tile( sx + 0, sy + 0, 33 );
		engine_sprite_manager_tile( sx + 1, sy + 0, 33 );
		engine_sprite_manager_tile( sx + 2, sy + 0, 41 );
		engine_sprite_manager_tile( sx + 3, sy + 0, 33 );
	}

	//engine_font_manager_draw_text( "XXXXXXXX", tx, ty );
//	unsigned char i;
//	for( i = 0; i < 6; i++ )
//	{
//		draw_turtle( i );
//	}
}
//static void draw_turtle( unsigned char i )
//{
//	if( 0 == i )
//	{
//		engine_turtle_manager_draw_01( 10, 20 );
//	}
//	else
//	{
//		engine_turtle_manager_draw_02( 10, 20 );
//	}
//}