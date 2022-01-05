#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

//static void draw_turtles();
static void draw_turtle( unsigned char i );
//static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
//static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 4 );
	draw_turtle( 1 );

	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	/*	unsigned char test;
		rand();

		test = rand() % 20;
		if( 1 == test )
		{
			test = rand() % 6;
			flag[ test ] = 1 - flag[ test ];
			draw_turtle( test );
		*/

	engine_sprite_manager_draw( 88, 64, SPRITE_TILES );
}

//static void draw_turtles()
//{
//	unsigned char i;
//	for( i = 0; i < 6; i++ )
//	{
//		draw_turtle( i );
//	}
//}
static void draw_turtle( unsigned char i )
{
	if( 0 == i )
	{
		engine_turtle_manager_draw_01( 10, 18 );
	}
	else
	{
		engine_turtle_manager_draw_02( 10, 18 );
	}
}