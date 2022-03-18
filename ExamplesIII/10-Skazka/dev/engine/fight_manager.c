#include "fight_manager.h"
#include "enemy_manager.h"
#include "global_manager.h"
#include "player_manager.h"
#include <stdlib.h>

void engine_fight_manager_battle()
{
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char enemys, e_damage;
	unsigned char player, p_damage;

	// Damage to enemy.
	enemys = rand() % MAX_RANDOM;
	if( enemys  < 1 )
	{
		e_damage = 0;
	}
	else if( enemys  < 4 )
	{
		e_damage = 1 + po->weapon;
	}
	else if( enemys < 7 )
	{
		e_damage = 2 + po->weapon;
	}
	else if( enemys < 9 )
	{
		e_damage = 3 + po->weapon;
	}
	else if( enemys == 9 )
	{
		e_damage = 4 + po->weapon;
	}

	// Damage to player.
	player = rand() % MAX_RANDOM;
	if( player < 1 )
	{
		p_damage = 0;
	}
	else if( player < 4 )
	{
		p_damage = 1 + eo->ax;
	}
	else if( player < 7 )
	{
		p_damage = 2 + eo->ax;
	}
	else if( player < 9 )
	{
		p_damage = 3 + eo->ax;
	}
	else if( player == 9 )
	{
		p_damage = 4 + eo->ax;
	}

	engine_enemy_manager_hit( e_damage );
	engine_player_manager_hit( p_damage + po->armor );
}

void engine_fight_manager_draw()
{

}