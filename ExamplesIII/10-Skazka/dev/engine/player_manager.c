#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "locale_manager.h"
#include "text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

// Global variable.
struct_player_object global_player_object;

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->xp = 0;							// Z
	//po->hp = 2;// 10;						// N		// TODO delete!!
	po->hp = 10;						// N
	po->gold = 10;						// V
	po->weapon = weapon_type_none;		// Q$	ATK
	po->armor = armor_type_none;		// W$	ARM
	po->life = life_type_none;			// E$	UP

	// TODO delete
	//po->weapon = 2;
	//po->armor = 2;
	//po->life = 1;
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

	// Print HP, XP, gold, level.
	engine_font_manager_data( po->hp, LEFT_X + 6, STATS_ROW + 3 );
	engine_font_manager_text( LOCALE_SLASH, LEFT_X + 8, STATS_ROW + 3 );
	engine_font_manager_data( po->max_hp, LEFT_X + 11, STATS_ROW + 3 );

	engine_font_manager_data( po->xp, LEFT_X + 6, STATS_ROW + 4 );
	engine_font_manager_data( po->max_xp, LEFT_X + 11, STATS_ROW + 4 );
	engine_font_manager_text( LOCALE_SLASH, LEFT_X + 8, STATS_ROW + 4 );

	engine_font_manager_data( po->gold, LEFT_X + 10, STATS_ROW + 5 );
	engine_font_manager_data( po->level, LEFT_X + 12, STATS_ROW + 20 );

	// Print inventory.
	devkit_SMS_mapROMBank( FIXED_BANK );
	engine_font_manager_text( ( unsigned char * ) weapon_texts[ po->weapon ], LEFT_X + 4, STATS_ROW + 7 );
	engine_font_manager_text( ( unsigned char * ) armor_texts[ po->armor ], LEFT_X + 4, STATS_ROW + 8 );
	engine_font_manager_text( ( unsigned char * ) life_texts[ po->life ], LEFT_X + 4, STATS_ROW + 9 );

	if( po->xp > 60 )
	{
		engine_font_manager_text( LOCALE_HERO, LEFT_X + 15, STATS_ROW + 20 );
	}
}

void engine_player_manager_rest()
{
	// TODO sound effect?
	struct_player_object *po = &global_player_object;
	po->hp = po->max_hp;
	engine_font_manager_data( po->hp, LEFT_X + 6, STATS_ROW + 3 );
}

void engine_player_manager_draw()
{
	engine_text_manager_args( LEFT_X + 8, FIGHT_ROW + 0, 2, 0x20, 0xBC );
	engine_text_manager_args( LEFT_X + 8, FIGHT_ROW + 1, 3, 0x8E, 0x92, 0x29 );
	engine_text_manager_args( LEFT_X + 8, FIGHT_ROW + 2, 2, 0x20, 0x5E );
}

void engine_player_manager_hplo()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_data( po->hp, LEFT_X + 14, FIGHT_ROW + 3 );
}

void engine_player_manager_gold( char gold )
{
	struct_player_object *po = &global_player_object;
	po->gold += gold;
	if( po->gold <= 0 )
	{
		po->gold = 0;
	}
	if( po->gold >= MAX_GOLD )
	{
		po->gold = MAX_GOLD;
	}
}

void engine_player_manager_hit( char hp )
{
	struct_player_object *po = &global_player_object;
	po->hp -= hp;
	if( po->hp <= 0 )
	{
		po->hp = 0;
	}
	else
	{
		engine_player_manager_hplo();
	}
}

bool engine_player_manager_dead()
{
	struct_player_object *po = &global_player_object;
	return po->hp <= 0;
}