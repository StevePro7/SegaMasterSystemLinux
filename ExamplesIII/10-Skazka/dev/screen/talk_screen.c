#include "talk_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

#define MAX_CHAT	3

static void print( unsigned char val );

void screen_talk_screen_load()
{
	unsigned char row;
	unsigned char idx = 0;
	unsigned char val;
	unsigned char beg = 0;
	unsigned char txt = 0;

	row = 1;
	engine_player_manager_calc();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	val = ( unsigned char ) ( rand() % MAX_RANDOM );
	print( val );

	engine_text_manager_fire();
	devkit_SMS_displayOn();
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_talk;
}

static void print( unsigned char val )
{
	unsigned char row;
	unsigned char idx = 0;
	unsigned char beg = 0;
	unsigned char txt = 0;

	beg = val * MAX_CHAT;
	row = 7;

	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < MAX_CHAT; idx++ )
	{
		txt = beg + idx;
		engine_font_manager_text( ( unsigned char * ) villager_texts[ txt ], LEFT_X + 3, row );
		row++;
	}
}