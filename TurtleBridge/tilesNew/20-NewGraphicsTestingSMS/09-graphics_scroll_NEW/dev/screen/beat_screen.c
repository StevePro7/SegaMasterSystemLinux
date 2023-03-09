#include "beat_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/util_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_beat_screen_load()
{
	engine_font_manager_text( "BEAT SCREEN!!", 10, 0 );
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	unsigned char value;
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		value = engine_random_manager_next( SPRITE_TILES );
		engine_font_manager_data( value, 10, 10 );
	}

	engine_random_manager_rand();
	*screen_type = screen_type_beat;
}
