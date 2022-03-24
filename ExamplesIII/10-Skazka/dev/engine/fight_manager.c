#include "fight_manager.h"
#include "enemy_manager.h"
#include "global_manager.h"
#include "hack_manager.h"
#include "player_manager.h"
#include "text_manager.h"
#include <stdlib.h>

static unsigned char get_damage( unsigned char extra );

void engine_fight_manager_player_to_enemy( unsigned char *e_damage )
{
	// Damage to enemy.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;

	unsigned char damage;
	unsigned char extra;

	extra = po->weapon;
	damage = get_damage( extra );

	*e_damage = damage + extra;
}

void engine_fight_manager_enemy_to_player( unsigned char *p_damage )
{
	// Damage to player.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;
	struct_hack_object *ho = &global_hack_object;

	unsigned char damage;
	if( ho->hack_nodead )
	{
		*p_damage = 0;
		return;
	}

	damage = get_damage( 0 );
	*p_damage = damage + eo->ax + po->armor;
}

void engine_fight_manager_boss_to_player( unsigned char *p_damage )
{
	// Damage to player.
	struct_player_object *po = &global_player_object;
	struct_enemy_object *eo = &global_enemy_object;
	struct_hack_object *ho = &global_hack_object;

	unsigned char damage;
	unsigned char extra;

	if( ho->hack_nodead )
	{
		*p_damage = 0;
		return;
	}

	extra = eo->ax;
	damage = get_damage( extra );

	// TODO check
	*p_damage = damage + eo->ax - po->armor;
}

static unsigned char get_damage( unsigned char extra )
{
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
		damage = 4 + extra;
	}

	return damage;
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