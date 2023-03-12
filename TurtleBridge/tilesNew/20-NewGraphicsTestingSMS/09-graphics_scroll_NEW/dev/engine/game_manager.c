#include "game_manager.h"
#include "enum_manager.h"
#include "global_manager.h"

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

void engine_game_manager_set_cloud_form( unsigned char game_cloud )
{
	struct_game_object *go = &global_game_object;
	go->game_cloud = game_cloud;
}
void engine_game_manager_set_difficulty( unsigned char game_difficulty )
{
	struct_game_object *go = &global_game_object;
	go->game_difficulty = game_difficulty;
}
void engine_game_manager_set_level_data( unsigned char game_world, unsigned char game_round, unsigned char game_point )
{
	struct_game_object *go = &global_game_object;
	go->game_world = game_world;
	go->game_round = game_round;
	go->game_point = game_point;

	// TODO implement this once all levels set!
	go->game_level = game_world * MAX_ROUNDS + game_round;
}
void engine_game_manager_inc_checkpoint()
{
	struct_game_object *go = &global_game_object;
	go->game_point++;
}

// TODO delete - only used for testing
void engine_game_manager_set_level_test( unsigned char game_level )
{
	struct_game_object *go = &global_game_object;
	go->game_level = game_level;
}