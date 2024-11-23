#include "joint_screen.h"
#include "..\devkit\_snd_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\sound_manager.h"
#include "..\engine\text_manager.h"

static unsigned char prev_play_type;
static unsigned char curr_play_type;

void screen_joint_screen_load()
{
	engine_text_manager_title();
	prev_play_type = play_type_stop;
	curr_play_type = play_type_stop;
}

void screen_joint_screen_update( unsigned char *screen_type )
{
	unsigned char sound;
	unsigned char input;

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		*screen_type = screen_type_sound;
		return;
	}

	input = engine_input_manager_hold_left();
	if( input )
	{
		if( play_type_stop == prev_play_type && play_type_stop == curr_play_type )
		{
			engine_music_manager_play();
			curr_play_type = play_type_start;
		}
		else
		{
			devkit_PSGResume();
			curr_play_type = play_type_resume;
		}
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
		prev_play_type = curr_play_type;
		devkit_PSGStop();
		curr_play_type = play_type_pause;
	}

	if( engine_input_manager_hold_up() ||
		engine_input_manager_hold_down() )
	{
		engine_sound_manager_play();
	}

	// Reset if music finished.
	sound = devkit_PSGGetStatus();
	if( !sound )
	{
		curr_play_type = play_type_stop;
	}

	*screen_type = screen_type_joint;
}