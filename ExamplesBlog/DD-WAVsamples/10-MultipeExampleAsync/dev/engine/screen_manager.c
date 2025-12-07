#include "screen_manager.h"
#include "audio_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "riff_manager.h"
#include "sample_manager.h"
#include "../devkit/_snd_manager.h"

static unsigned char flag;

void engine_screen_manager_init()
{
	flag = 0;
	engine_font_manager_draw_text( " == PCM SAMPLE TESTER == ", 4, 6 );
	engine_font_manager_draw_text( "PRESS LEFT, RIGHT OR DOWN", 4, 8 );
	engine_font_manager_draw_text( "PRESS FIRE TO PLAY SAMPLE", 4, 9 );
	engine_font_manager_draw_data( flag, 4, 11 );
}

void engine_screen_manager_update()
{
	//unsigned char status;
	unsigned char input;
	//unsigned char index;

	engine_sample_manager_update();
	if( flag )
	{
		//engine_font_manager_draw_text( "PLAYING", 4, 12 );
		engine_sample_manager_update();

		//input = engine_input_manager_hold_up();
		//if( input )
		//{
		//	flag = 0;
		//	engine_font_manager_draw_data( flag, 4, 11 );
		//}
	}
	else
	{
		input = engine_input_manager_hold_fire1();
		if( input )
		{
			
			engine_riff_manager_init();
			engine_riff_manager_play( 0 );

			flag = 1;
			engine_font_manager_draw_data( flag, 4, 11 );
		}
		//input = engine_input_manager_hold_fire2();
		//if( input )
		//{
		//	flag = 1;
		//	engine_font_manager_draw_data( flag, 4, 11 );
		//	engine_riff_manager_init();
		//	for( index = 0; index < 4; index++ )
		//	{
		//		engine_riff_manager_play( index + 1 );
		//	}
		//}
	}

}