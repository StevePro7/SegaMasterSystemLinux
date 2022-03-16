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

void screen_talk_screen_load()
{
	unsigned char row;
	unsigned char idx;
	unsigned char val, beg;

	row = 1;
	engine_player_manager_calc();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	val = rand() % MAX_RANDOM;
	val = 0;
	beg = val * MAX_CHAT;

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = beg; idx < beg + MAX_CHAT; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) villager_texts[ idx ], LEFT_X + 4, row++ );
	}

	engine_text_manager_fire();
	devkit_SMS_displayOn();
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_talk;
}
