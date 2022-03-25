#include "start_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

#define START_FLASH_DELAY		50
#define START_FLASH_TOTAL		3
static unsigned char flash_index;
static unsigned char flash_count;

void screen_start_screen_load()
{
	unsigned char row;
//	unsigned char idx;

	row = 1;
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	engine_game_manager_print_stats();
	engine_game_manager_print_village();
	engine_game_manager_print_player();
	engine_game_manager_print_version();
	engine_game_manager_print_texts();

	//row = 13;
	//devkit_SMS_mapROMBank( FIXED_BANK );
	//for( idx = 0; idx < 8; idx++ )
	//{
	//	engine_font_manager_text( ( unsigned char * ) stats_texts[ idx ], LEFT_X + 12, row++ );
	//}

	//engine_font_manager_text( LOCALE_BUILD_VER, LEFT_X + 27, FIRE1_ROW );

	engine_font_manager_text( "START SCREEN!!", 10, 0 );

	engine_font_manager_text( LOCALE_ARROWS, LEFT_X + 10, OPTION_ROW );
	devkit_SMS_displayOn();

	engine_timer_manager_load( START_FLASH_DELAY );
	flash_index = 0;
	flash_count = 0;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	struct_hack_object *ho = &global_hack_object;
	unsigned char timer;

	timer = engine_timer_manager_update();
	if( timer )
	{
		if( !ho->hack_delays )
		{
			flash_count = 1 - flash_count;
		}

		if( flash_count )
		{
			engine_font_manager_text( LOCALE_2_SPCS, LEFT_X + 10, OPTION_ROW );
		}
		else
		{
			engine_font_manager_text( LOCALE_ARROWS, LEFT_X + 10, OPTION_ROW );
		}
	}

	if( devkit_SMS_getKeysStatus() )
	{
		engine_font_manager_text( LOCALE_ARROWS, LEFT_X + 10, OPTION_ROW );
		engine_font_manager_text( "12345", LEFT_X + 10, 23);

		*screen_type = screen_type_stats;
		return;
	}

	*screen_type = screen_type_start;
}
