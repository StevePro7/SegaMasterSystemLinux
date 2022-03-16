#include "enemy_manager.h"
#include <stdlib.h>

// Global variable.
struct_enemy_object global_enemy_object;

void engine_enemy_manager_init()
{
	struct_enemy_object *eo = &global_enemy_object;
	eo->xp = 0;
}

void engine_enemy_manager_load()
{

}

void engine_enemy_manager_draw()
{

}