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
	unsigned char idx, val;
	unsigned char beg, end;

	row = 1;
	engine_player_manager_calc();

//	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	val = rand() % MAX_RANDOM;
	val = 1;
	beg = val * MAX_CHAT;
	end = beg + MAX_CHAT;

	// TODO delete
	engine_font_manager_data( beg, 20, 20 );
	engine_font_manager_data( end, 20, 21 );
	// TODO delete

	idx = 0;
	row = 7;

	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = beg; idx < end; idx++ )
	{
	//	engine_font_manager_text( "SPLAT", LEFT_X + 4, row++ );
		engine_font_manager_text( ( unsigned char * ) villager_texts[ idx ], LEFT_X + 4, row );
		row++;
	}

	engine_text_manager_fire();
//	devkit_SMS_displayOn();
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_talk;
}
