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
	po->def_xp = 0;							// Z
	po->def_hp = 10;						// N
	po->def_gold = 10;						// V
	po->def_weapon = weapon_type_none;		// Q$	ATK
	po->def_armor = armor_type_none;		// W$	ARM
	po->def_life = life_type_none;			// E$	UP
}

void engine_player_manager_load()
{
	struct_player_object *po = &global_player_object;
	po->xp = po->def_xp;					// Z
	po->hp = po->def_hp;					// N
	po->gold = po->def_gold;				// V
	po->weapon = po->def_weapon;			// Q$	ATK
	po->armor = po->def_armor;				// W$	ARM
	po->life = po->def_life;				// E$	UP
}

void engine_player_manager_calc()
{
	struct_player_object *po = &global_player_object;
	if( po->xp > 34 && po->xp <= 60 )
	{
		po->level = 3;						// X
		po->max_hp = 30;					// M
		po->max_xp = 60;					// Y
	}
	else if( po->xp > 11 && po->xp <= 34 )
	{
		po->level = 2;						// X
		po->max_hp = 20;					// M
		po->max_xp = 34;					// Y
	}
	else if( po->xp > 60  )
	{
		po->level = 3;						// X
		po->max_hp = 30;					// M
		po->max_xp = 99;					// Y
	}
	else if( po->xp <= 11 )
	{
		po->level = 1;						// X
		po->max_hp = 10;					// M
		po->max_xp = 11;					// Y
	}
}

void engine_player_manager_stats()
{
	struct_player_object *po = &global_player_object;

	// Print HP, XP, gold, level.
	engine_font_manager_draw_numb( 2, LEFT_X + 8, TOP_Y + 6 );
	//engine_font_manager_draw_numb( po->level, LEFT_X + 9, TOP_Y + 6 );

	engine_font_manager_draw_data( po->hp, LEFT_X + 9, TOP_Y + 6 );
	//engine_font_manager_draw_punc( LOCALE_SLASH, LEFT_X + 8, TOP_Y + 3 );		// TODO use punc!
	//engine_font_manager_draw_data( po->max_hp, LEFT_X + 11, TOP_Y + 3 );

	//engine_font_manager_draw_data( po->xp, LEFT_X + 6, TOP_Y + 4 );
	//engine_font_manager_draw_data( po->max_xp, LEFT_X + 11, TOP_Y + 4 );
	////engine_font_manager_draw_punc( LOCALE_SLASH, LEFT_X + 8, TOP_Y + 4 );		// TODO use punc!

	//engine_font_manager_draw_data( po->gold, LEFT_X + 10, TOP_Y + 5 );

	// Print inventory.
	devkit_SMS_mapROMBank( FIXED_BANK );
	engine_font_manager_draw_text( ( unsigned char * ) weapon_texts[ po->weapon ], LEFT_X + 2, TOP_Y + 11 );
	engine_font_manager_draw_text( ( unsigned char * ) armor_texts[ po->armor ], LEFT_X + 4, TOP_Y + 12 );
	//if( po->life )
	{
		engine_font_manager_draw_punc( LOCALE_PLUS, LEFT_X + 2, TOP_Y + 13 );
		engine_font_manager_draw_numb( 1, LEFT_X + 3, TOP_Y + 13 );
		engine_font_manager_draw_text( ( unsigned char * ) life_texts[ po->life ], LEFT_X + 5, TOP_Y + 13 );
	}
	

	// TODO - do I want to show this?
	if( po->xp > 60 )
	{
		engine_font_manager_draw_flip( LOCALE_BRACKET, LEFT_X + 7, TOP_Y + 21 );
		engine_font_manager_draw_punc( LOCALE_BRACKET, LEFT_X + 12, TOP_Y + 21 );
		engine_font_manager_draw_text( LOCALE_HERO, LEFT_X + 8, TOP_Y + 21 );
	}
}

void engine_player_manager_rest()
{
	struct_player_object *po = &global_player_object;
	po->hp = po->max_hp;
}

void engine_player_manager_draw()
{
	//engine_font_manager_draw_data( LEFT_X + 8, FIGHT_ROW + 0, 2, 0x20, 0xBC );
	//engine_font_manager_draw_data( LEFT_X + 8, FIGHT_ROW + 1, 3, 0x8E, 0x92, 0x29 );
	//engine_font_manager_draw_data( LEFT_X + 8, FIGHT_ROW + 2, 2, 0x20, 0x5E );
}

void engine_player_manager_hplo()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_draw_data( po->hp, LEFT_X + 14, FIGHT_ROW + 3 );
}

void engine_player_manager_dec_gold( unsigned char gold )
{
	struct_player_object *po = &global_player_object;
	if( po->gold > gold )
	{
		po->gold -= gold;
	}
	else
	{
		po->gold = 0;
	}
}

void engine_player_manager_inc_gold( unsigned char xp, unsigned char gold )
{
	struct_player_object *po = &global_player_object;
	po->won = gold;

	po->xp += xp;
	if( po->xp >= MAX_XP )
	{
		po->xp = MAX_XP;
	}

	po->gold += gold;
	if( po->gold >= MAX_GOLD )
	{
		po->gold = MAX_GOLD;
	}
}

void engine_player_manager_hit( char hp )
{
	struct_player_object *po = &global_player_object;
	if( po->hp > hp )
	{
		po->hp -= hp;
	}
	else
	{
		po->hp = 0;
	}
}

void engine_player_manager_armor( unsigned char armor )
{
	struct_player_object *po = &global_player_object;
	po->hp += armor;
}

bool engine_player_manager_dead()
{
	struct_player_object *po = &global_player_object;
	return po->hp <= 0;
}

bool engine_player_manager_life()
{
	struct_player_object *po = &global_player_object;
	return life_type_oneup == po->life;
}

void engine_player_manager_def_currxp( unsigned currxp )
{
	struct_player_object *po = &global_player_object;
	po->def_xp = currxp;
}
void engine_player_manager_def_currhp( unsigned currhp )
{
	struct_player_object *po = &global_player_object;
	po->def_hp = currhp;
}
void engine_player_manager_def_goldno( unsigned goldno )
{
	struct_player_object *po = &global_player_object;
	po->def_gold = goldno;
}
void engine_player_manager_def_weapon( unsigned weapon )
{
	struct_player_object *po = &global_player_object;
	po->def_weapon = weapon;
}
void engine_player_manager_def_armors( unsigned armors )
{
	struct_player_object *po = &global_player_object;
	po->def_armor = armors;
}
void engine_player_manager_def_oneups( unsigned oneups )
{
	struct_player_object *po = &global_player_object;
	po->def_life = oneups;
}

void engine_player_manager_set_weapon( unsigned weapon )
{
	struct_player_object *po = &global_player_object;
	po->weapon = weapon;
}
void engine_player_manager_set_armors( unsigned armors )
{
	struct_player_object *po = &global_player_object;
	po->armor = armors;
}
void engine_player_manager_set_oneups( unsigned oneups )
{
	struct_player_object *po = &global_player_object;
	po->life = oneups;
}
