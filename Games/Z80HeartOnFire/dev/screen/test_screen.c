#include "test_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../devkit/_snd_manager.h"

static unsigned char index;
static unsigned char start;

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "START", 4, 6 );
	start = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char value;
	unsigned char input;

	input = engine_input_manager_hold( input_type_fire1 );
	if( !start && input )
	{
		start = 1;
		engine_font_manager_draw_text( "PRESS FIRE1", 4, 8 );
		index = 0;
		engine_font_manager_draw_data( index, 4, 9 );
		devkit_PSGRestoreVolumes();
		engine_audio_manager_play( index );
		engine_font_manager_draw_data( index, 4, 10 );
	}

	input = engine_input_manager_hold( input_type_fire2 );
	if( start && input )
	{
		engine_font_manager_draw_text( "SPLAT", 4, 15 );
		start = 0;
		devkit_PSGSilenceChannels();
		devkit_PSGSStop();
	}
	
	value = devkit_PSGGetStatus();
	engine_font_manager_draw_data( value, 4, 20 );
	if( start && !value )
	{
		engine_font_manager_draw_data( index, 4, 9 );
		if( index < MAX_SAMPLES )
		{
			index++;
			engine_audio_manager_play( index );
			engine_font_manager_draw_data( index, 4, 10 );
		}
		else
		{
			devkit_PSGSilenceChannels();
			start = 0;
		}
	}

	*screen_type = screen_type_test;
}
