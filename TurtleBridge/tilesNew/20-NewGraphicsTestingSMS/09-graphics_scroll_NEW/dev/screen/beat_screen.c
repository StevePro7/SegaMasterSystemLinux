#include "beat_screen.h"
#include "../engine/cartoon_manager.h"
#include "../engine/command_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"

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
	

	*screen_type = screen_type_beat;
}
