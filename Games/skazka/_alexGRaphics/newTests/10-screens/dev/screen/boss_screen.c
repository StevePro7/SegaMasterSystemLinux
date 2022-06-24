#include "boss_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdbool.h>
#include <stdlib.h>

static unsigned char select_type;
static unsigned char event_stage;

void screen_boss_screen_load()
{
	// BOSS Part II
	unsigned char row;
	unsigned char idx;

	select_type = select_type_boss;
	row = 1;

	devkit_SMS_displayOff();
	engine_content_manager_load_koschey();
	engine_text_manager_clear( TOP_Y + 1, TOP_Y + 22 );

	row = 18;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char* ) boss_texts[ idx ], LEFT_X + 8, TOP_Y + row );
		row++;
	}
	engine_font_manager_draw_punc( '!', LEFT_X + 13, TOP_Y + 19 );
	engine_font_manager_draw_punc( '!', LEFT_X + 14, TOP_Y + 19 );

	// Print fight text and reset selection.
	engine_font_manager_draw_text( LOCALE_FIGHT_MSG1, LEFT_X + 2, TOP_Y + FIGHT_ROW + 3 );
	engine_font_manager_draw_text( LOCALE_BOSSX_MSG2, LEFT_X + 16, TOP_Y + FIGHT_ROW + 3 );
	engine_font_manager_draw_punc( '-', LEFT_X + 10, TOP_Y + FIGHT_ROW + 3 );
	engine_font_manager_draw_punc( '-', LEFT_X + 26, TOP_Y + FIGHT_ROW + 3 );
	engine_font_manager_draw_punc( '\'', LEFT_X + 23, TOP_Y + FIGHT_ROW + 3 );

	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2 );
	engine_graphics_manager_draw_border();

	engine_select_manager_load( select_type, LEFT_X + 6, TOP_Y + FIGHT_ROW, 2 );
	devkit_SMS_displayOn();


	//event_stage = scene_type_select;

	// BOSS Part I
	/*
	unsigned char row;
	unsigned char idx;

	select_type = select_type_boss;
	row = 1;

	devkit_SMS_displayOff();
	engine_content_manager_load_koschey();
	engine_text_manager_clear( TOP_Y + 1, TOP_Y + 22 );

	row = 19;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 2; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char* ) query_texts[ idx ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( '\'', LEFT_X + 8, TOP_Y + 19 );
	engine_font_manager_draw_punc( '?', LEFT_X + 19, TOP_Y + 20 );

	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2 );
	engine_graphics_manager_draw_border();

	devkit_SMS_displayOn();
	event_stage = scene_type_select;
	*/
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}
