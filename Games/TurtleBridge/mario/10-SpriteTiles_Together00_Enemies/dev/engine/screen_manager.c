#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

//static void draw_turtles();
//static void draw_turtle( unsigned char i );
//static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
//static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };
static unsigned char flag = 0;

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 4 );
	//draw_turtle( 1 );

	//engine_music_manager_play();
	flag = 0;
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char value;
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		flag = 1 - flag;
	}

	value = 0;
	input = engine_input_manager_move_fire2();
	if( input )
	{
		value = 1;
	}

	/*	unsigned char test;
		rand();

		test = rand() % 20;
		if( 1 == test )
		{
			test = rand() % 6;
			flag[ test ] = 1 - flag[ test ];
			draw_turtle( test );
		*/

	if( value == 0 )
	{
		engine_sprite_manager_draw( 88, 64, SPRITE_TILES + ( flag * 4 ) );
	}
	else
	{
		engine_sprite_manager_draw( 88, 64, SPRITE_TILES + 8 );
	}
}

//static void draw_turtles()
//{
//	unsigned char i;
//	for( i = 0; i < 6; i++ )
//	{
//		draw_turtle( i );
//	}
//}
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