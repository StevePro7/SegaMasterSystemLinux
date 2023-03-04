#include "game_manager.h"
#include "enum_manager.h"

// Global variable.
struct_game_object global_game_object;

void engine_game_manager_init()
{
	struct_game_object *go = &global_game_object;
	go->game_difficulty = difficulty_type_normal;
}

//TODO complete this
//void engine_game_manager_load( unsigned char storage_difficulty )
//{
//	struct_game_object *go = &global_game_object;
//	go->game_difficulty = storage_difficulty;
//}

void engine_game_manager_set_difficulty( unsigned char game_difficulty )
{
	struct_game_object *go = &global_game_object;
	go->game_difficulty = game_difficulty;
}