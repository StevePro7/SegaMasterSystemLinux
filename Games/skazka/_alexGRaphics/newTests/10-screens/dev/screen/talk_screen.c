#include "talk_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

#define MAX_CHAT	3
#define NUM_GOLD	5

static void display_msg();

void screen_talk_screen_load()
{
	

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );
	display_msg();

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	engine_text_manager_cont();
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_talk;
}

static void display_msg()
{
	unsigned char row;
	unsigned char val;
	unsigned char idx = 0;
	unsigned char beg = 0;
	unsigned char txt = 0;

	val = ( unsigned char ) ( rand() % MAX_RANDOM );
	val = 2;

	beg = val * MAX_CHAT;
	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < MAX_CHAT; idx++ )
	{
		txt = beg + idx;
		engine_font_manager_draw_text( ( unsigned char * ) villager_texts[ txt ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	if( 0 == val )
	{
		engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 23, TOP_Y + 7 );
	}
	else if( 1 == val )
	{
		engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 12, TOP_Y + 9 );
	}
	else if( 2 == val )
	{
		engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 27, TOP_Y + 9 );
	}
}