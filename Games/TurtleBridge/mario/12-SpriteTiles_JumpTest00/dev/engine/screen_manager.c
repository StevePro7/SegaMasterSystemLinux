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
static unsigned char sy;

static unsigned int ascent[ 17 ] = { 2958, 2347, 1960, 1673, 1441, 1247, 1079, 930, 796, 675, 564, 461, 365, 276, 191, 112, 36 };

//static void draw_turtle( unsigned char i );
//static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
//static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };

void engine_screen_manager_init()
{
	//engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 1 );
	//draw_turtle( 0 );

	unsigned char index;
	for( index = 0; index < 17; index++ )
	{
		//engine_font_manager_draw_data( ascent[ index ], 20, index );
	}

	//engine_turtle_manager_draw_sea();

	
	sy = 104;
	tx = 14;
	ty = 15;
	//engine_turtle_manager_draw_01( tx, ty );
	//engine_turtle_manager_draw_02( 8, 13 );
	//engine_turtle_manager_draw_03( 14, 14 );
	//engine_turtle_manager_draw_04( 20, 15 );

	//engine_music_manager_play();

	//engine_turtle_manager_draw_01( 16, 14 );
	//engine_turtle_manager_draw_01( tx, ty );
	//engine_turtle_manager_draw_02( 16, 16 );
	//engine_turtle_manager_draw_03( 22, 17 );
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	if( 15 == ty )
	//	{
	//		ty = 16;
	//		engine_turtle_manager_draw_02( tx, ty );
	//	}
	//	else if( 16 == ty )
	//	{
	//		ty = 17;
	//		engine_turtle_manager_draw_03( tx, ty );
	//	}
	//	//else if( 14 == ty )
	//	//{
	//	//	ty = 15;
	//	//	engine_turtle_manager_draw_04( tx, ty );
	//	//}
	//}
	//input = engine_input_manager_hold_up();
	//if( input )
	//{
	//	if( 17 == ty )
	//	{
	//		ty = 16;
	//		engine_turtle_manager_draw_02( tx, ty );
	//	}
	//	else if( 16 == ty )
	//	{
	//		ty = 15;
	//		engine_turtle_manager_draw_01( tx, ty );
	//	}
	//}
	/*	unsigned char test;
		rand();

		test = rand() % 20;
		if( 1 == test )
		{
			test = rand() % 6;
			flag[ test ] = 1 - flag[ test ];
			draw_turtle( test );
		*/

	engine_sprite_manager_draw( 88, sy, SPRITE_TILES );
}