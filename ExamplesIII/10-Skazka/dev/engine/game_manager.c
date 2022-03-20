#include "game_manager.h"

// Global variable.
struct_game_object global_game_object;

void engine_game_manager_init()
{
	engine_game_manager_intro_on();
}

void engine_game_manager_intro_on()
{
	struct_game_object *go = &global_game_object;
	go->play_intro = true;
}

void engine_game_manager_intro_off()
{
	struct_game_object *go = &global_game_object;
	go->play_intro = false;
}