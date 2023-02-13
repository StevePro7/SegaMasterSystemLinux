#include "beat_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"

void screen_beat_screen_load()
{
	//struct_game_object *go = &global_game_object;
	engine_font_manager_text( "BEAT SCREEN!!", 10, 4 );
	//engine_font_manager_data( go->game_difficulty, 10, 4 );
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_beat;
}
