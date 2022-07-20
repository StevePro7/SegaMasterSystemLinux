#include "forest_screen.h"
#include "audio_manager.h"
#include "enemy_manager.h"
#include "enum_manager.h"
#include "fight_manager.h"
#include "font_manager.h"
#include "game_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "hack_manager.h"
#include "input_manager.h"
#include "locale_manager.h"
#include "player_manager.h"
#include "random_manager.h"
#include "select_manager.h"
#include "text_manager.h"
#include "fixedbank.h"
//
//static unsigned char curr_selection;
//static unsigned char prev_selection;
//
//static unsigned char event_stage;
//static unsigned char enemys_damage;
//static unsigned char player_damage;
//static unsigned char player_gold;
//static unsigned char select_type;
//static unsigned char run_away_val;

static void setup();
//static unsigned char calc_add_armor();

void screen_forest_screen_load()
{
	setup();
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_forest;
}

static void setup()
{
	struct_enemy_object *eo = &global_enemy_object;
	struct_player_object *po = &global_player_object;
	unsigned char row;
	unsigned char idx;

	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();

	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );
	engine_graphics_manager_draw_underline();

	engine_enemy_manager_draw( eo->index, LEFT_X + 27, TOP_Y + 16 );
	engine_player_manager_draw( po->weapon, po->armor, LEFT_X + 2, TOP_Y + 16 );

	row = 6;
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_draw_text( ( char * ) forest_texts[ idx ], LEFT_X + 5, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 26, TOP_Y + 6 );
	engine_font_manager_draw_punc( LOCALE_COLON, LEFT_X + 26, TOP_Y + 7 );
}

//static unsigned char calc_add_armor()
//{
//	struct_game_object *go = &global_game_object;
//	struct_enemy_object *eo = &global_enemy_object;
//	struct_player_object *po = &global_player_object;
//
//	unsigned char add_armor = 1;
//	if( diff_type_hard == go->difficulty )
//	{
//		if( po->level >= 2 )
//		{
//			// For weaker enemies on hard difficulty do not factor in armor.
//			if( enemy_type_razboynik == eo->index || enemy_type_hungry_wolf == eo->index )
//			{
//				add_armor = 0;
//			}
//		}
//		if( add_armor )
//		{
//			add_armor = engine_random_manager_diff( po->level );
//		}
//	}
//
//	return add_armor;
//}