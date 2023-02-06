#include "cont_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"

void screen_cont_screen_load()
{
	engine_font_manager_text( "CONT SCREEN!!", 10, 2 );
	engine_player_manager_draw();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_cont;
}
