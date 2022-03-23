#include "intro_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

#define INTRO_SCREEN_DELAY		600

void screen_intro_screen_load()
{
	unsigned char row;
	unsigned char idx;

	row = 1;
	engine_timer_manager_load( INTRO_SCREEN_DELAY );

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	// SKAZKA.
	engine_text_manager_title( row + 2 );

	// Instructions.
	row = 10;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 10; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) intro_texts[ idx ], LEFT_X + 2, row++ );
	}

	engine_text_manager_fire();
	devkit_SMS_displayOn();
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char timer;

	input = engine_input_manager_hold( input_type_fire1 );
	timer = engine_timer_manager_update();

	if( input || timer )
	{

		*screen_type = screen_type_load;
		return;
	}

	rand();
	*screen_type = screen_type_intro;
}
