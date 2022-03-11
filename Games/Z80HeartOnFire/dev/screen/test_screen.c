#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"
#include "../devkit/_snd_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "PRESS FIRE1..!", 4, 6 );
	engine_riff_manager_play( 1 );
}

void screen_test_screen_update( unsigned char *screen_type )
{	
	unsigned char value;
	//unsigned char input = engine_input_manager_hold( input_type_fire1 );
	//if( input )
	//{
	//	engine_font_manager_draw_text( "PRESS FIRE2!!", 4, 8 );
	//	engine_riff_manager_play( 0 );
	//}
	
	value = devkit_PSGSFXGetStatus();
	engine_font_manager_draw_data( value, 4, 10 );
	if( 0 == value )
	{
		engine_font_manager_draw_text( "PRESS FIRE2!!", 4, 8 );
		engine_riff_manager_play( 1 );
	}
	//if( input )
	//{
	//	engine_font_manager_draw_text( "PLAY SOUND FX 01!!", 10, 8 );
	//	engine_riff_manager_play( 6 );
	//}
	//else
	//{
	//	input = engine_input_manager_hold( input_type_up );
	//	if( input )
	//	{
	//		engine_font_manager_draw_text( "PLAY SOUND FX 02", 10, 9 );
	//		engine_riff_manager_play( 0 );
	//	}
	//	else
	//	{
	//		input = engine_input_manager_hold( input_type_right );
	//		if( input )
	//		{
	//			engine_font_manager_draw_text( "PLAY SOUND FX 03", 10, 10 );
	//			engine_riff_manager_play( 3 );
	//		}
	//		else
	//		{
	//			input = engine_input_manager_hold( input_type_right );
	//			if( input )
	//			{
	//				//engine_font_manager_draw_text( "PLAY WRONG1", 10, 12 );
	//				//engine_riff_manager_play( 3 );
	//			}
	//			else
	//			{
	//				input = engine_input_manager_hold( input_type_fire1 );
	//				if( input )
	//				{
	//					engine_font_manager_draw_text( "PLAY SOUND FX", 10, 13 );
	//					engine_riff_manager_play( 1 );
	//					engine_riff_manager_play( 2 );
	//					engine_riff_manager_play( 3 );
	//				}
	//				else
	//				{
	//					input = engine_input_manager_hold( input_type_fire2 );
	//					if( input )
	//					{
	//						engine_font_manager_draw_text( "PLAY GAME OVER", 10, 14 );
	//						engine_riff_manager_play( 4 );
	//						engine_riff_manager_play( 5 );
	//					}
	//				}
	//			}
	//		}
	//	}
	//}

	*screen_type = screen_type_test;
}
