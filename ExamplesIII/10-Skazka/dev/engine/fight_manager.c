#include "fight_manager.h"
#include "enemy_manager.h"
#include "global_manager.h"
#include "player_manager.h"
#include <stdlib.h>

void engine_fight_manager_fight()
{
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char enemys;
	unsigned char player;

	// Damage to enemy.
	enemys = rand() % MAX_RANDOM;
	if( enemys  < 1 )
	{
		eo->damage = 0;
	}
	else if( enemys  < 4 )
	{
		eo->damage = 1 + po->weapon;
	}
	else if( enemys < 7 )
	{
		eo->damage = 2 + po->weapon;
	}
	else if( enemys < 9 )
	{
		eo->damage = 3 + po->weapon;
	}
	else if( enemys == 9 )
	{
		eo->damage = 4 + po->weapon;
	}

	// Damage to player.
	player = rand() % MAX_RANDOM;
	if( player < 1 )
	{
		po->damage = 0;
	}
	else if( player < 4 )
	{
		po->damage = 1 + eo->ax;
	}
	else if( player < 7 )
	{
		po->damage = 2 + eo->ax;
	}
	else if( player < 9 )
	{
		po->damage = 3 + eo->ax;
	}
	else if( player == 9 )
	{
		po->damage = 4 + eo->ax;
	}

	eo->hplo -= eo->damage;
	po->hp = po->hp - po->damage + po->armor;
}

void engine_fight_manager_draw()
{

}