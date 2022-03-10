#include "sound_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../devkit/_snd_manager.h"

static unsigned char index;
static void draw_index();

void screen_sound_screen_load()
{
	engine_font_manager_draw_text( "AUDIO", 10, 2 );
	index = 0;
	draw_index();
}

void screen_sound_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold_up();
	if (input )
	{
		if( index <= 0 )
		{
			index = MAX_EFFECTS;
		}

		index--;
		draw_index();
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
		index++;
		if( index >= MAX_EFFECTS )
		{
			index = 0;
		}

		draw_index();
	}


	input = engine_input_manager_hold_fire1();
	if( input )
	{
		if( !devkit_PSGSFXGetStatus() )
		{
			engine_audio_manager_play( index );
		}
	}

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		devkit_PSGSFXStop();
		devkit_PSGSilenceChannels();
	}

	*screen_type = screen_type_sound;
}

static void draw_index()
{
	engine_font_manager_draw_data( index + 1, 20, 2 );
}