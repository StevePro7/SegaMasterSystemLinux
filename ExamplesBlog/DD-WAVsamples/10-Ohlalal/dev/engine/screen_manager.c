#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "riff_manager.h"
#include "../devkit/_snd_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( " == PCM SAMPLE TESTER == ", 4, 6 );
	engine_font_manager_draw_text( "PRESS LEFT, RIGHT OR DOWN", 4, 8 );
	engine_font_manager_draw_text( "PRESS FIRE TO PLAY SAMPLE", 4, 9 );
}

void engine_screen_manager_update()
{
	unsigned char status;
	unsigned char input;
	unsigned char index;

	// If sound effect already playing then return.
	status = devkit_PSGSFXGetStatus();
	if( status )
	{
		return;
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_riff_manager_init();
		engine_riff_manager_play( 0 );
	}

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		engine_riff_manager_init();
		for( index = 0; index < 9; index++ )
		{
			engine_font_manager_draw_data( index, 10, 10 + index );
			engine_riff_manager_play( index );
		}
	}
}