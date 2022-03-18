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

static unsigned char curr_event_stage;
static unsigned char prev_event_stage;
static void setup();

void screen_forest_screen_load()
{
	struct_player_object *po = &global_player_object;
	engine_enemy_manager_load( po->level );

	devkit_SMS_displayOff();
	setup();
	devkit_SMS_displayOn();

	curr_event_stage = forest_type_select;
	prev_event_stage = forest_type_select;
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char selection;

	//input = engine_input_manager_hold( input_type_fire2 );
	//if( input )
	//{
	//	engine_font_manager_text( LOCALE_FIGHT_NOTRUN, LEFT_X + 5, FIGHT_ROW - 3 );
	//	//engine_font_manager_text( LOCALE_FIGHT_ENEMYS, LEFT_X + 5, FIGHT_ROW - 3 );
	//	//engine_font_manager_text( LOCALE_FIGHT_PLAYER, LEFT_X + 5, FIGHT_ROW - 2 );
	//}

	if( forest_type_select == curr_event_stage )
	{
		input = engine_input_manager_hold( input_type_fire2 );
		if( input )
		{
			*screen_type = screen_type_stats;
			return;
		}

		selection = engine_select_manager_update( select_type_forest );
		if( NO_SELECTION == selection )
		{
			*screen_type = screen_type_forest;
			return;
		}

		//if ( )

		
	}

	if( forest_type_decide == curr_event_stage )
	{

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