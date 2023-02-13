#include "game_manager.h"
#include "enum_manager.h"

// Global variable.
struct_game_object global_game_object;

void engine_game_manager_init()
{
	struct_game_object *go = &global_game_object;
	go->game_difficulty = difficulty_type_normal;
}