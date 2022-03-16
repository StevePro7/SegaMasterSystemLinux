#include "enemy_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "text_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

// Global variable.
struct_enemy_object global_enemy_object;

unsigned char hplo_num[ MAX_ENEMIES ] = { 10, 10, 25, 25, 35 };
unsigned char ax_num[ MAX_ENEMIES ] = { 1, 1, 2, 2, 3 };
unsigned char gldo_num[ MAX_ENEMIES ] = { 5, 5, 10, 10, 15 };
unsigned char xpo_num[ MAX_ENEMIES ] = { 2, 2, 4, 4, 10 };

void engine_enemy_manager_init()
{
	struct_enemy_object *eo = &global_enemy_object;
	eo->hplo = 0;
	eo->ax = 0;
	eo->gldo = 0;
	eo->xpo = 0;
}

void engine_enemy_manager_load( unsigned char level )
{
	struct_enemy_object *eo = &global_enemy_object;
	unsigned char value = rand() % 10;
	unsigned char index = 0;

	switch( level )
	{
	case 1:
		index = value < 5 ? enemy_type_razboynik : enemy_type_hungry_wolf;
		break;
	case 2:
		if( value < 3 )
		{
			index = enemy_type_razboynik;
		}
		else if( value < 6 )
		{
			index = enemy_type_kikimora;
		}
		else if( value < 8 )
		{
			index = enemy_type_hungry_wolf;
		}
		else
		{
			index = enemy_type_leshy;
		}
		break;
	case 3:
		if( value < 1 )
		{
			index = enemy_type_razboynik;
		}
		else if( value < 2 )
		{
			index = enemy_type_hungry_wolf;;
		}
		else if( value < 5 )
		{
			index = enemy_type_kikimora;
		}
		else if( value < 8 )
		{
			index = enemy_type_leshy;
		}
		else
		{
			index = enemy_type_baby_yaga;
		}
		break;
	}

	eo->index = index;
	eo->hplo = hplo_num[ index ];
	eo->ax = ax_num[ index ];
	eo->gldo = gldo_num[ index ];
	eo->xpo = xpo_num[ index ];
}

void engine_enemy_manager_draw()
{
	struct_enemy_object *eo = &global_enemy_object;
	engine_font_manager_text( ( unsigned char * ) enemy_texts[ eo->index ], LEFT_X + 16, ENEMY_ROW );

	engine_text_manager_args( LEFT_X + 23, FIGHT_ROW + 0, 2, 0x20, 0x40 );
	engine_text_manager_args( LEFT_X + 23, FIGHT_ROW + 1, 3, 0x2D, 0x8E, 0x2D );
	engine_text_manager_args( LEFT_X + 23, FIGHT_ROW + 2, 2, 0x20, 0x5E );
}

void engine_enemy_manager_hplo()
{
	struct_enemy_object *eo = &global_enemy_object;
	engine_font_manager_data( eo->hplo, LEFT_X + 29, FIGHT_ROW + 3 );
}