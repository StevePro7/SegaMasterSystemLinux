#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"

// Global variable.
struct_player_object global_player_object;

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->hp = 10;						// N
	po->xp = 0;							// Z
	po->gold = 10;						// V
	po->weapon = weapon_type_none;		// Q$	ATK
	po->armor = armor_type_none;		// W$	ARM
	po->life = life_type_none;			// E$	UP
}

void engine_player_manager_calc()
{
	struct_player_object *po = &global_player_object;
	if( po->xp > 34 && po->xp <= 60 )
	{
		po->level = 3;					// X
		po->max_hp = 30;				// M
		po->max_xp = 60;				// Y
	}
	else if( po->xp > 11 && po->xp <= 34 )
	{
		po->level = 2;					// X
		po->max_hp = 20;				// M
		po->max_xp = 34;				// Y
	}
	else if( po->xp > 60  )
	{
		po->level = 3;					// X
		po->max_hp = 30;				// M
		po->max_xp = 99;				// Y
	}
	else if( po->xp <= 11 )
	{
		po->level = 1;					// X
		po->max_hp = 10;				// M
		po->max_xp = 11;				// Y
	}
}

void engine_player_manager_stats()
{
	struct_player_object *po = &global_player_object;
}