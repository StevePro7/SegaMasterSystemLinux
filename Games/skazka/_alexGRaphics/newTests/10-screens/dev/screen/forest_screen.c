#include "forest_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdbool.h>
#include <stdlib.h>

static unsigned char curr_selection;
static unsigned char prev_selection;

static unsigned char event_stage;
static unsigned char enemys_damage;
static unsigned char player_damage;
static unsigned char player_gold;
static unsigned char select_type;
static unsigned char run_away_val;

static void setup();
//static bool calc_add_armor();

unsigned char run_away_hit[ MAX_ENEMIES ] = { 1, 2, 1 };

void screen_forest_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;
	select_type = select_type_forest;

	// TODO delete this from here
	engine_player_manager_calc();

	engine_enemy_manager_load( po->level );

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	setup();
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_forest;
}

static void setup()
{
	unsigned char row;
	unsigned char idx;

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );

	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_content_manager_load_enemies();
	engine_enemy_manager_draw( LEFT_X + 27, TOP_Y + 16 );

	engine_content_manager_load_player();
	engine_player_manager_draw( LEFT_X + 2, TOP_Y + 16 );		// TODO implement

	row = 6;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) forest_texts[ idx ], LEFT_X + 5, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 26, TOP_Y + 6 );
	engine_font_manager_draw_punc( LOCALE_COLON, LEFT_X + 26, TOP_Y + 7 );

	row = 11;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 4; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) fight_texts[ idx ], LEFT_X + 7, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 23, TOP_Y + 11 );
	engine_enemy_manager_text();

	engine_font_manager_draw_text( LOCALE_FIGHT_MSG1, LEFT_X + 2, TOP_Y + 21 );
	engine_font_manager_draw_text( LOCALE_FIGHT_MSG2, LEFT_X + 17, TOP_Y + 21 );
	engine_font_manager_draw_punc( LOCALE_HYPHEN, LEFT_X + 10, TOP_Y + 21 );
	engine_font_manager_draw_punc( LOCALE_HYPHEN, LEFT_X + 26, TOP_Y + 21 );

	engine_player_manager_hplo();
	engine_enemy_manager_hplo();

	// TODO put in update function
	engine_font_manager_draw_text( LOCALE_FIGHT_ENEMYS, LEFT_X + 7, TOP_Y + 17 );
	engine_font_manager_draw_text( LOCALE_FIGHT_PLAYER, LEFT_X + 7, TOP_Y + 18 );
	engine_font_manager_draw_data( 4, LEFT_X + 24, TOP_Y + 17 );
	engine_font_manager_draw_data( 0, LEFT_X + 24, TOP_Y + 18 );

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );
}