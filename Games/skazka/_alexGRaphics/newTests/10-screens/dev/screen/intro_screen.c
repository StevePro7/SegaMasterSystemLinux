#include "intro_screen.h"
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
#include <stdlib.h>

void screen_intro_screen_load()
{
	unsigned char row;
	unsigned char idx;

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_big();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	engine_text_manager_clear( TOP_Y + 8, TOP_Y + 22 );

	row = 10;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 10; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) intro_texts[ idx ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	
	engine_graphics_manager_draw_border();
	engine_text_manager_cont();

	engine_font_manager_draw_punc( '.', LEFT_X + 25, TOP_Y + 13 );
	engine_font_manager_draw_punc( '.', LEFT_X + 27, TOP_Y + 16 );
	engine_font_manager_draw_punc( '.', LEFT_X + 16, TOP_Y + 19 );

	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
