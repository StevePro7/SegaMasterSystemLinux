#include "title_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"

#define TITLE_SCREEN_DELAY		300

void screen_title_screen_load()
{
	unsigned char row = 1;
	engine_timer_manager_load( TITLE_SCREEN_DELAY );

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	// SKAZKA.
	engine_text_manager_title( row + 2 );
	engine_font_manager_text( LOCALE_TITLE_MSG1, LEFT_X + 7, 12 );
	engine_font_manager_text( LOCALE_TITLE_MSG2, LEFT_X + 3, 17 );
	engine_font_manager_text( LOCALE_FIRE1_CONT, LEFT_X + 5, 22 );
	devkit_SMS_displayOn();
}

void screen_title_screen_update( unsigned char *screen_type )
{
	// TODO music intro yes or no.
	unsigned char input;
	unsigned char timer;

	input = engine_input_manager_hold( input_type_fire1 );
	timer = engine_timer_manager_update();

	if( input || timer )
	{
		*screen_type = screen_type_intro;
		return;
	}

	*screen_type = screen_type_title;
}
