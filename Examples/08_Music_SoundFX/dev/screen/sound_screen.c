#include "sound_screen.h"
#include "..\devkit\_snd_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\sound_manager.h"
#include "..\engine\text_manager.h"

void screen_sound_screen_load()
{
	engine_text_manager_sound();
}

void screen_sound_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_fire1();
	if( input )
	{
		devkit_PSGSFXStop();
		*screen_type = screen_type_joint;
		return;
	}

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		*screen_type = screen_type_music;
		return;
	}

	if( engine_input_manager_hold_left() ||
		engine_input_manager_hold_right() ||
		engine_input_manager_hold_up() ||
		engine_input_manager_hold_down() )
	{
		engine_sound_manager_play();
	}

	*screen_type = screen_type_sound;
}