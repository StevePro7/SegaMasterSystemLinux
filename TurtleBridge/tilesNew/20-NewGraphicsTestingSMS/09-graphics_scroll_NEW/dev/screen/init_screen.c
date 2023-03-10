#include "init_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/game_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"

void screen_init_screen_load()
{
	struct_game_object *go = &global_game_object;
	engine_level_manager_init( go->game_level );
	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_collision_manager_init( go->game_difficulty );
}

void screen_init_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_load;
}
