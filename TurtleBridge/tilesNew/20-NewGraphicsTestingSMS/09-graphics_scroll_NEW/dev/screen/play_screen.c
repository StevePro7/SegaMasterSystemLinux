#include "play_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include <stdbool.h>

void screen_play_screen_load()
{
}

void screen_play_screen_update( unsigned char *screen_type )
{
	engine_player_manager_draw();
	*screen_type = screen_type_play;
}
