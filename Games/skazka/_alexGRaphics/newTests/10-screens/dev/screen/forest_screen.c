#include "forest_screen.h"
#include "../engine/content_manager.h"
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

void screen_forest_screen_load()
{
	unsigned char row;
	unsigned char idx;

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

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

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_forest;
}
