#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

static unsigned char index = 0;
static unsigned char x = 0;
static unsigned char z = 0;

void engine_screen_manager_init()
{
	engine_music_manager_play();
	engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 4 );
	index = 0;
	x = 96;
	z = 0;
}

void engine_screen_manager_update()
{
	unsigned char input = 0;
	unsigned char diff = 1;
	input = engine_input_manager_move_fire1();
	if( input )
	{
		diff = 2;
	}
	input = engine_input_manager_move_right();
	//input = engine_input_manager_hold_right();
	if( input )
	{
		//x++;
		z += diff;
		if( z >= 8 )
		{
			z = 0;
			index++;
			if( index > 3 )
			{
				index = 0;
			}
		}
	}

	engine_sprite_manager_draw( x, 96, SPRITE_TILES + index * 4 );
}


//void engine_screen_manager_update2()
//{
//	unsigned char input = 0;
//	unsigned char diff = 1;
//	input = engine_input_manager_move_fire1();
//	if( input )
//	{
//		diff = 2;
//	}
//	input = engine_input_manager_move_right();
//	//input = engine_input_manager_hold_right();
//	if( input )
//	{
//		//x++;
//		z += diff;
//		if( z >= 8 )
//		{
//			z = 0;
//			index++;
//			if( index > 3 )
//			{
//				index = 0;
//			}
//		}
//	}
//
//	engine_sprite_manager_draw( x, 96, SPRITE_TILES + index * 4 );
//}