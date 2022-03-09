#include "sound_screen.h"
#include "../devkit/_snd_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sound_manager.h"

void screen_sound_screen_load()
{
	engine_font_manager_draw_text( "HELLO", 10, 8 );
}

void screen_sound_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "PLAY", 10, 10 );
	}

	*screen_type = screen_type_sound;
}