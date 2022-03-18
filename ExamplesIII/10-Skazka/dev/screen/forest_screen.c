#include "forest_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/fight_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

static unsigned char curr_selection;
static unsigned char prev_selection;

static unsigned char curr_event_stage;
static unsigned char prev_event_stage;
static unsigned char enemys_damage;
static unsigned char player_damage;
static void setup();

void screen_forest_screen_load()
{
	struct_player_object *po = &global_player_object;
	engine_enemy_manager_load( po->level );

	devkit_SMS_displayOff();
	setup();
	devkit_SMS_displayOn();

	curr_selection = 0;
	prev_selection = 0;
	curr_event_stage = forest_type_select;
	prev_event_stage = curr_event_stage;

	enemys_damage = 0;
	player_damage = 0;
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char value;
	//unsigned char selection = 0;

	//unsigned char enemys_damage = 0;
	//unsigned char player_damage = 0;

	if( forest_type_pushon == curr_event_stage )
	{
		//engine_font_manager_data( enemys_damage, 20, 20 );
		//engine_font_manager_data( player_damage, 20, 21 );

		input = engine_input_manager_hold( input_type_fire1 );
		if( input )
		{
			engine_font_manager_text( LOCALE_FIGHT_BLANKS, LEFT_X + 5, FIGHT_ROW - 3 );
			engine_font_manager_text( LOCALE_FIGHT_BLANKS, LEFT_X + 5, FIGHT_ROW - 2 );

			if( fight_type_battle == curr_selection )
			{
				engine_enemy_manager_hit( enemys_damage );
				engine_player_manager_hit( player_damage );

				if( engine_enemy_manager_dead() )
				{
					engine_font_manager_text( "ENEMY", 20, 20 );
					//*screen_type = screen_type_over;
					return;
				}
				if( engine_player_manager_dead() )
				{
					*screen_type = screen_type_over;
					return;
				}
			}

			curr_event_stage = forest_type_select;
			*screen_type = screen_type_forest;
			return;


			//if( fight_type_run == curr_selection )
			//{
			//	curr_event_stage = forest_type_select;
			//	*screen_type = screen_type_forest;
			//	return;
			//}
			//else if( fight_type_battle == curr_selection )
			//{
			//	engine_enemy_manager_hit( enemys_damage );
			//	engine_player_manager_hit( player_damage );

			//	if( engine_enemy_manager_dead() )
			//	{
			//		//*screen_type = screen_type_over;
			//		return;
			//	}
			//	if( engine_player_manager_dead() )
			//	{
			//		*screen_type = screen_type_over;
			//		return;
			//	}

			//	curr_event_stage = forest_type_select;
			//	*screen_type = screen_type_forest;
			//	return;
			//}
		}
	}

	if( forest_type_select == curr_event_stage )
	{
		input = engine_input_manager_hold( input_type_fire2 );
		if( input )
		{
			*screen_type = screen_type_stats;
			return;
		}

		curr_selection = engine_select_manager_update( select_type_forest );
		if( NO_SELECTION == curr_selection )
		{
			*screen_type = screen_type_forest;
			return;
		}

		prev_selection = curr_selection;

		prev_event_stage = curr_event_stage;
		curr_event_stage = forest_type_decide;
	}

	if( forest_type_decide == curr_event_stage )
	{
		if( fight_type_run == curr_selection )
		{
			value = rand() % MAX_RANDOM;
			//value = 2;		// TODO delete
			if( value < 5 )
			{
				*screen_type = screen_type_stats;
				return;
			}
			else
			{
				// Subtract 1x HP as cannot currently run away.
				engine_player_manager_hit( 1 );
				if( engine_player_manager_dead() )
				{
					*screen_type = screen_type_over;
					return;
				}

				engine_font_manager_text( LOCALE_FIGHT_NOTRUN, LEFT_X + 5, FIGHT_ROW - 3 );
				prev_event_stage = curr_event_stage;
				curr_event_stage = forest_type_pushon;
			}
		}
		if( fight_type_battle == curr_selection )
		{
			engine_fight_manager_battle( &enemys_damage, &player_damage );

			engine_font_manager_text( LOCALE_FIGHT_ENEMYS, LEFT_X + 5, FIGHT_ROW - 3 );
			engine_font_manager_text( LOCALE_FIGHT_PLAYER, LEFT_X + 5, FIGHT_ROW - 2 );

			engine_font_manager_data( enemys_damage, LEFT_X + 23, FIGHT_ROW - 3 );
			engine_font_manager_data( player_damage, LEFT_X + 23, FIGHT_ROW - 2 );

			prev_event_stage = curr_event_stage;
			curr_event_stage = forest_type_pushon;

			//enemys_damage = enemys_damage;
			//player_damage = player_damage;
		}
	}

	*screen_type = screen_type_forest;
}

static void setup()
{
	unsigned char row;
	unsigned char idx;

	row = 1;
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	row = 5;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) forest_texts[ idx ], LEFT_X + 5, row++ );
	}

	row = 11;
	for( idx = 0; idx < 3; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) fight_texts[ idx ], LEFT_X + 5, row++ );
	}

	row = 12;
	engine_select_manager_load( select_type_forest, LEFT_X + 3, row, 2 );

	engine_player_manager_draw();
	engine_enemy_manager_draw();

	engine_font_manager_text( LOCALE_FIGHT_MSG1, LEFT_X + 3, FIGHT_ROW + 3 );
	engine_font_manager_text( LOCALE_FIGHT_MSG2, LEFT_X + 17, FIGHT_ROW + 3 );

	engine_player_manager_hplo();
	engine_enemy_manager_hplo();
}