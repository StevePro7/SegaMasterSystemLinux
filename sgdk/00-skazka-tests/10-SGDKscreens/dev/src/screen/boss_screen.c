#include "boss_screen.h"
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

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

static unsigned char select_type;
static unsigned char event_stage;
static unsigned char enemys_damage;
static unsigned char player_damage;
static unsigned char player_weapon;
static unsigned char player_armor;
static unsigned char beg_boss_val;
static unsigned char first_time;

static void boss_init( unsigned char *p_weapon, unsigned char *p_armor );
static void boss_stats( unsigned char *p_weapon, unsigned char *p_armor );
//static void boss_laugh( unsigned char selection );

unsigned char beg_boss_hit[ 2 ] = { 2, 4 };

void screen_boss_screen_load()
{
	struct_game_object *go = &global_game_object;
	unsigned char row;
	unsigned char idx;

	//select_type = select_type_boss;
	//row = 1;		//TODO delete

	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();

	row = 19;
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_draw_text( ( char* ) query_texts[ idx ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_QUOTE, LEFT_X + 8, TOP_Y + 19 );
	engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 19, TOP_Y + 20 );

	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL1 );

	event_stage = scene_type_select;

	event_stage = scene_type_select;
	enemys_damage = 0;
	player_damage = 0;

	engine_target_manager_load( enemy_type_koschey );
	player_weapon = 0;
	player_armor = 0;

	// Easy mode gets increases weapon + armor.
	boss_init( &player_weapon, &player_armor );
	boss_stats( &player_weapon, &player_armor );

	if( diff_type_hard != go->difficulty )
	{
		boss_stats( &player_weapon, &player_armor );
	}

	beg_boss_val = beg_boss_hit[ go->difficulty ];

	//first_time = 1;
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}


static void boss_init( unsigned char *p_weapon, unsigned char *p_armor )
{
	struct_player_object *po = &global_player_object;

	*p_weapon = po->weapon;
	*p_armor = po->armor;
}

static void boss_stats( unsigned char *p_weapon, unsigned char *p_armor )
{
	struct_player_object *po = &global_player_object;
	if( po->xp > 60 )
	{
		*p_weapon += 1;
		*p_armor += 1;
	}
}

//static void boss_laugh( unsigned char selection )
//{
//	devkit_SMS_mapROMBank( FIXED_BANK );
//	if( boss_type_battle == selection )
//	{
//		selection = rand() % 2;
//		selection += 1;
//	}
//
//	engine_font_manager_draw_text( ( unsigned char* ) laugh_texts[ selection ], LEFT_X + 22, TOP_Y + 12 );
//	if( 1 == selection )
//	{
//		engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 29, TOP_Y + 12 );
//	}
//}