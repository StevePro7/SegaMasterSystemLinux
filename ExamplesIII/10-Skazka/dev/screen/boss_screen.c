#include "boss_screen.h"
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

static unsigned char select_type;
static unsigned char event_stage;
static unsigned char enemys_damage;
static unsigned char player_damage;

void screen_boss_screen_load()
{
	unsigned char row;
	unsigned char idx;

	select_type = select_type_boss;
	row = 1;

	engine_boss_manager_load();
	engine_player_manager_boss();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	// query text...
	//row = 19;
	//devkit_SMS_mapROMBank( FIXED_BANK );
	//for( idx = 0; idx < 2; idx++ )
	//{
	//	engine_font_manager_text( ( unsigned char* ) query_texts[ idx ], LEFT_X + 3, row );
	//	row++;
	//}

	row = 19;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_text( ( unsigned char* ) boss_texts[ idx ], LEFT_X + 7, row );
		row++;
	}

	engine_font_manager_text( LOCALE_FIGHT_MSG1, LEFT_X + 3, FIGHT_ROW + 3 );
	engine_font_manager_text( LOCALE_BOSSX_MSG2, LEFT_X + 17, FIGHT_ROW + 3 );

	engine_player_manager_hplo();
	engine_enemy_manager_hplo();

	engine_boss_manager_draw( 10, 0 );
	engine_font_manager_text( "HA HA HA", LEFT_X + 22, FIGHT_ROW - 6 );

	row = 19;
	engine_select_manager_load( select_type, LEFT_X + 5, row, 2 );
	devkit_SMS_displayOn();

	event_stage = forest_type_select;
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	unsigned char selection = 0;
	if( forest_type_select == event_stage )
	{
		selection = engine_select_manager_update( select_type );
		if( NO_SELECTION == selection )
		{
			*screen_type = screen_type_boss;
			return;
		}

		event_stage = forest_type_decide;
	}

	if( forest_type_decide == event_stage )
	{
		if( boss_type_beg == selection )
		{
			engine_font_manager_text( "HA HA HA", LEFT_X + 23, FIGHT_ROW - 13 );
		}
	}

	*screen_type = screen_type_boss;
}

//static void print_intro()
//{
//	unsigned char row;
//	//unsigned char idx;
//
//
//	row = 10;
//	//for( idx = 0; idx < 2; idx++ )
//	//{
//	//	engine_font_manager_text( ( unsigned char* ) query_texts[ idx ], LEFT_X + 3, row );
//	//	row++;
//	//}
//	engine_font_manager_text( ( unsigned char* ) query_texts[ 0 ], LEFT_X + 3, row );
//	//engine_font_manager_text( "SO YOU HAVE COME TO CALLENGE", LEFT_X + 3, row );
//}