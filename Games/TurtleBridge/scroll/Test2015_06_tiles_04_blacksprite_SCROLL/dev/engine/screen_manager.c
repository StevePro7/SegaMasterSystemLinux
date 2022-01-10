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

	engine_tile_manager_draw( 10, 10 );
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

}
