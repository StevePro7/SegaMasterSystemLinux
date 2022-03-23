#include "game_manager.h"

// Global variable.
struct_game_object global_game_object;

void engine_game_manager_init()
{
	engine_game_manager_intro_on();
	engine_game_manager_music_on();
}

void engine_game_manager_intro_on()
{
	struct_game_object *go = &global_game_object;
	go->intro_once = true;
}
void engine_game_manager_intro_off()
{
	struct_game_object *go = &global_game_object;
	go->intro_once = false;
}

void engine_game_manager_music_on()
{
	struct_game_object *go = &global_game_object;
	go->play_music = true;
}
void engine_game_manager_music_off()
{
	struct_game_object *go = &global_game_object;
	go->play_music = false;
}