#include "sound_screen.h"
#include "../devkit/_snd_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"

void screen_sound_screen_load()
{
	engine_font_manager_draw_text( "AUDIO", 10, 2 );
}

void screen_sound_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_audio_manager_play( 1 );
	}

	//input = engine_input_manager_hold_fire2();
	//if( input )
	//{
	//	*screen_type = screen_type_music;
	//	return;
	//}

	//if( engine_input_manager_hold_left() ||
	//	engine_input_manager_hold_right() ||
	//	engine_input_manager_hold_up() ||
	//	engine_input_manager_hold_down() )
	//{
	//	engine_sound_manager_play();
	//}

	*screen_type = screen_type_sound;
}