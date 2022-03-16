#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"

// Global variable.
struct_player_object global_player_object;

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->hp = 10;
	po->xp = 0;
	po->weapon = weapon_type_none;
	po->armor = armor_type_none;
	po->life = life_type_none;
}

void engine_player_manager_stats()
{
	struct_player_object *po = &global_player_object;
}