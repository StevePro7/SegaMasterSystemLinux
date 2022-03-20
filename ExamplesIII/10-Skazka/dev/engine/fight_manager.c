#include "fight_manager.h"
#include "enemy_manager.h"
#include "global_manager.h"
#include "player_manager.h"
#include "text_manager.h"
#include <stdlib.h>

void engine_fight_manager_player_to_enemy( unsigned char *e_damage )
{
	// Damage to enemy.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char damage;
	unsigned char random;
	unsigned char extra;

	damage = 0;
	extra = po->weapon;
	random = rand() % MAX_RANDOM;
	if( random < 1 )
	{
		damage = 0;
	}
	else if( random < 4 )
	{
		damage = 1;
	}
	else if( random < 7 )
	{
		damage = 2;
	}
	else if( random < 9 )
	{
		damage = 3;
	}
	else if( random == 9 )
	{
		damage = 4 + extra;
	}

	*e_damage = damage + extra;
	*e_damage = 15;
}

void engine_fight_manager_enemy_to_player( unsigned char *p_damage )
{
	// Damage to player.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char damage;
	unsigned char random;

	damage = 0;
	random = rand() % MAX_RANDOM;
	if( random < 1 )
	{
		damage = 0;
	}
	else if( random < 4 )
	{
		damage = 1;
	}
	else if( random < 7 )
	{
		damage = 2;
	}
	else if( random < 9 )
	{
		damage = 3;
	}
	else if( random == 9 )
	{
		damage = 4;
	}

	*p_damage = damage + eo->ax + po->armor;
	*p_damage = 1;
}

void engine_fight_manager_boss_to_player( unsigned char *p_damage )
{
	// Damage to player.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char damage;
	unsigned char random;
	unsigned char extra;

	damage = 0;
	extra = eo->ax;
	random = rand() % MAX_RANDOM;
	if( random < 1 )
	{
		damage = 0;
	}
	else if( random < 4 )
	{
		damage = 1;
	}
	else if( random < 7 )
	{
		damage = 2;
	}
	else if( random < 9 )
	{
		damage = 3;
	}
	else if( random == 9 )
	{
		damage = 4 + extra;
	}

	*p_damage = damage - po->armor + eo->ax;
}

void engine_fight_manager_battle( unsigned char *e_damage, unsigned char *p_damage )
{
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char enemys;
	unsigned char player;

	// Damage to enemy.
	enemys = rand() % MAX_RANDOM;
	if( enemys  < 1 )
	{
		*e_damage = 0;
	}
	else if( enemys  < 4 )
	{
		*e_damage = 1 + po->weapon;
	}
	else if( enemys < 7 )
	{
		*e_damage = 2 + po->weapon;
	}
	else if( enemys < 9 )
	{
		*e_damage = 3 + po->weapon;
	}
	else if( enemys == 9 )
	{
		*e_damage = 4 + po->weapon + po->weapon;
	}

	// Damage to player.
	player = rand() % MAX_RANDOM;
	if( player < 1 )
	{
		*p_damage = 0;
	}
	else if( player < 4 )
	{
		*p_damage = 1 + eo->ax;
	}
	else if( player < 7 )
	{
		*p_damage = 2 + eo->ax;
	}
	else if( player < 9 )
	{
		*p_damage = 3 + eo->ax;
	}
	else if( player == 9 )
	{
		*p_damage = 4 + eo->ax;
	}

	// TODO delete
	//*e_damage = 10;
	//*p_damage = 2;
	// TODO delete

	*p_damage += po->armor;
}

void engine_fight_manager_gold( unsigned char *p_xp, unsigned char *p_gold )
{
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	*p_xp = eo->xpo;
	*p_gold = eo->gldo;
}

void engine_boss_manager_draw( unsigned char x, unsigned char y )
{
	// x = 11.
	// y = 1
	engine_text_manager_args( LEFT_X + x, y + 1, 7, 0x20, 0x20, 0x20, 0x20, 0x20, 0x95, 0x96 );
	engine_text_manager_args( LEFT_X + x, y + 2, 11, 0x20, 0x95, 0x96, 0x20, 0x20, 0xEF, 0xEF, 0x20, 0x20, 0x95, 0x96 );
	engine_text_manager_args( LEFT_X + x, y + 3, 11, 0x20, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF );
	engine_text_manager_args( LEFT_X + x, y + 4, 12, 0x96, 0xEF, 0xEF, 0x96, 0xEF, 0x98, 0x97, 0xEF, 0x95, 0xEF, 0xEF, 0x95 );
	engine_text_manager_args( LEFT_X + x, y + 5, 12, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF );
	engine_text_manager_args( LEFT_X + x, y + 6, 12, 0x97, 0x98, 0x95, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x96, 0x97, 0x98 );
	engine_text_manager_args( LEFT_X + x, y + 7, 11, 0x20, 0x98, 0x97, 0x96, 0x20, 0x90, 0x90, 0x20, 0x95, 0x98, 0x97 );
	engine_text_manager_args( LEFT_X + x, y + 8, 12, 0x96, 0x9F, 0x97, 0xF7, 0x97, 0x98, 0x97, 0x98, 0xF7, 0x98, 0xE4, 0x95 );
	engine_text_manager_args( LEFT_X + x, y + 9, 12, 0xEF, 0x97, 0x20, 0x20, 0x98, 0x20, 0x20, 0x97, 0x20, 0x20, 0x98, 0xEF );
	engine_text_manager_args( LEFT_X + x, y + 10, 12, 0x97, 0x20, 0x97, 0x90, 0x20, 0xEE, 0xEE, 0x20, 0x90, 0x98, 0x20, 0x98 );
	engine_text_manager_args( LEFT_X + x, y + 11, 11, 0x20, 0x97, 0x20, 0x90, 0x20, 0xE1, 0xE2, 0x20, 0x90, 0x20, 0x98 );
	engine_text_manager_args( LEFT_X + x, y + 12, 10, 0x20, 0x20, 0x90, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x90 );
	engine_text_manager_args( LEFT_X + x, y + 13, 11, 0x20, 0x95, 0x90, 0x20, 0xE1, 0xEE, 0xEE, 0xE2, 0x20, 0x90, 0x96 );
	engine_text_manager_args( LEFT_X + x, y + 14, 10, 0x20, 0x20, 0x97, 0x90, 0x20, 0x20, 0x20, 0x20, 0x90, 0x98 );
	engine_text_manager_args( LEFT_X + x, y + 15, 9, 0x20, 0x20, 0x20, 0x97, 0x98, 0x90, 0x90, 0x97, 0x98 );
	engine_text_manager_args( LEFT_X + x, y + 16, 8, 0x20, 0x20, 0x20, 0x20, 0x97, 0x98, 0x97, 0x98 );
}