#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "locale_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

// Global variable.
struct_player_object global_player_object;

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->xp = 0;							// Z
	po->hp = 10;						// N
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

void engine_player_manager_stats( unsigned char row )
{
	struct_player_object *po = &global_player_object;

	// Print HP, XP, gold, level.
	engine_font_manager_data( po->hp, LEFT_X + 6, row + 3 );
	engine_font_manager_text( LOCALE_SLASH, LEFT_X + 8, row + 3 );
	engine_font_manager_data( po->max_hp, LEFT_X + 11, row + 3 );

	engine_font_manager_data( po->xp, LEFT_X + 6, row + 4 );
	engine_font_manager_data( po->max_xp, LEFT_X + 11, row + 4 );
	engine_font_manager_text( LOCALE_SLASH, LEFT_X + 8, row + 4 );

	engine_font_manager_data( po->gold, LEFT_X + 10, row + 5 );
	engine_font_manager_data( po->level, LEFT_X + 12, row + 20 );

	// Print inventory.
	devkit_SMS_mapROMBank( FIXED_BANK );
	engine_font_manager_text( ( unsigned char * ) weapon_texts[ po->weapon ], LEFT_X + 4, row + 7 );
	engine_font_manager_text( ( unsigned char * ) armor_texts[ po->armor ], LEFT_X + 4, row + 8 );
	engine_font_manager_text( ( unsigned char * ) life_texts[ po->life ], LEFT_X + 4, row + 9 );

	if( po->xp > 60 )
	{

	}

	engine_font_manager_text( LOCALE_HERO, LEFT_X + 15, row + 20 );
}