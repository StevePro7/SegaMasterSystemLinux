#include "boss_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/fight_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/random_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"
#include <stdbool.h>
#include <stdlib.h>

static unsigned char select_type;
static unsigned char event_stage;
static unsigned char enemys_damage;
static unsigned char player_damage;
static bool first_time;

static void boss_laugh( unsigned char selection );

void screen_boss_screen_load()
{
	unsigned char row;
	unsigned char idx;

	select_type = select_type_boss;
	row = 1;

	engine_target_manager_load( enemy_type_koschey );
	engine_player_manager_boss();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	//devkit_PSGStop();
	//devkit_PSGSFXStop();
	//devkit_PSGSilenceChannels();
	//devkit_PSGRestoreVolumes();

	row = 19;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_text( ( unsigned char* ) query_texts[ idx ], LEFT_X + 3, row );
		
		row++;
	}

	engine_boss_manager_draw( 10, 0 );
	devkit_SMS_displayOn();

	event_stage = scene_type_select;
	enemys_damage = 0;
	player_damage = 0;
	first_time = true;
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	struct_hack_object *ho = &global_hack_object;
	unsigned char selection;
	unsigned char random;
	unsigned char input;
	unsigned char idx;
	unsigned char row;

	if( first_time )
	{
		first_time = false;

		// Play boss music.
		engine_sound_manager_init();
		for( idx = 5; idx < 8; idx++ )
		{
			engine_music_manager_play( idx );
			engine_input_manager_update();
			input = engine_input_manager_move( input_type_fire2 );
			if( input )
			{
				idx = 8;
			}
		}

		// Erase wide text.
		engine_font_manager_text( LOCALE_29_SPCS, LEFT_X + 2, FIGHT_ROW + 0 );
		engine_font_manager_text( LOCALE_29_SPCS, LEFT_X + 2, FIGHT_ROW + 1 );

		row = 19;
		devkit_SMS_mapROMBank( FIXED_BANK );
		for( idx = 0; idx < 2; idx++ )
		{
			engine_font_manager_text( ( unsigned char* ) boss_texts[ idx ], LEFT_X + 7, row );
			row++;
		}

		// Print fight text and reset selection.
		engine_font_manager_text( LOCALE_FIGHT_MSG1, LEFT_X + 3, FIGHT_ROW + 3 );
		engine_font_manager_text( LOCALE_BOSSX_MSG2, LEFT_X + 17, FIGHT_ROW + 3 );

		engine_player_manager_hplo();
		engine_enemy_manager_hplo();

		row = 19;
		engine_select_manager_load( select_type, LEFT_X + 5, row, 2 );
	}

	selection = 0;
	if( scene_type_select == event_stage )
	{
		selection = engine_select_manager_update( select_type );
		if( NO_SELECTION == selection )
		{
			*screen_type = screen_type_boss;
			return;
		}

		event_stage = scene_type_decide;
	}

	if( scene_type_decide == event_stage )
	{
		if( boss_type_beg == selection )
		{
			// If not invincible.
			if( !ho->hack_nodead )
			{
				// Subtract 2x HP if you beg.
				engine_player_manager_hit( 2 );
				if( engine_player_manager_dead() )
				{
					// Check if player has extra life!
					if( engine_player_manager_life() )
					{
						*screen_type = screen_type_relive;
						return;
					}

					*screen_type = screen_type_over;
					return;
				}
			}
		}
		if( boss_type_battle == selection )
		{
			random = engine_random_manager_next();
			engine_fight_manager_player_to_boss( &enemys_damage, random );

			random = engine_random_manager_next();
			engine_fight_manager_boss_to_player( &player_damage, random );

			// If both you and boss have 0 HP then you get game over first!
			engine_player_manager_hit( player_damage );
			if( engine_player_manager_dead() )
			{
				// Check if player has extra life!
				if( engine_player_manager_life() )
				{
					*screen_type = screen_type_relive;
					return;
				}

				*screen_type = screen_type_over;
				return;
			}

			engine_enemy_manager_hit( enemys_damage );
			if( engine_enemy_manager_dead() )
			{
				*screen_type = screen_type_complete;
				return;
			}
		}

		boss_laugh( selection );
		engine_sound_manager_fight();
		event_stage = scene_type_select;
	}

	*screen_type = screen_type_boss;
}

static void boss_laugh( unsigned char selection )
{
	devkit_SMS_mapROMBank( FIXED_BANK );
	if( boss_type_battle == selection )
	{
		selection = rand() % 2;
		selection += 1;
	}

	engine_font_manager_text( ( unsigned char* ) laugh_texts[ selection ], LEFT_X + 22, FIGHT_ROW - 6 );
}