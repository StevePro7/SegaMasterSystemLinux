#include "screen_manager.h"
#include "audio_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "../object/audio_data.h"
#include "../devkit/_snd_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( " == HELLO SOUND == ", 4, 6 );
}

void engine_screen_manager_update()
{
	unsigned char status;
	unsigned char input;

	// If sound effect already playing then return.
	status = devkit_PSGSFXGetStatus();
	if( status )
	{
		return;
	}

	input = engine_input_manager_hold_left();
	if( input )
	{
		//audio_play_music( MUSIC_TRACK_0, 0xFF );
		engine_font_manager_draw_text( "PRESS LEFT", 4, 8 );
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
	}
}