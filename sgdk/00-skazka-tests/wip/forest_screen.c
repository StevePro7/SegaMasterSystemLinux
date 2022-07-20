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

//static unsigned char curr_selection;
//static unsigned char prev_selection;
//
//static unsigned char event_stage;
//static unsigned char enemys_damage;
//static unsigned char player_damage;
//static unsigned char player_gold;
//static unsigned char select_type;
//static unsigned char run_away_val;
//
//static void setup();
//static unsigned char calc_add_armor();

void screen_forest_screen_load()
{
	//struct_player_object *po = &global_player_object;
	//struct_game_object *go = &global_game_object;
	//select_type = select_type_forest;

	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_forest;
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
//				add_armor = false;
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