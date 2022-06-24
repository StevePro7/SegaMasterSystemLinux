#include "complete_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

void screen_complete_screen_load()
{
	unsigned char row;
	unsigned char idx;

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_text_manager_clear( TOP_Y + 8, TOP_Y + 22 );

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 11; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) beat_texts[ idx ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( '!', LEFT_X + 22, TOP_Y + 7 );
	engine_font_manager_draw_punc( '!', LEFT_X + 23, TOP_Y + 7 );
	engine_font_manager_draw_punc( '!', LEFT_X + 27, TOP_Y + 17 );
	engine_font_manager_draw_punc( '.', LEFT_X + 16, TOP_Y + 13 );

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	engine_text_manager_cont();
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_complete_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_complete;
}
