#include "beat_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_beat_screen_load()
{
	unsigned char data = 0b00001110;

	//struct_game_object *go = &global_game_object;
	engine_font_manager_text( "BEAT SCREEN..!!", 10, 14 );
	//engine_font_manager_data( go->game_difficulty, 10, 4 );

	engine_graphics_manager_clouds( data );
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_beat;
}
