#include "next_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
//#include "../devkit/_sms_manager.h"

void screen_next_screen_load()
{
	//devkit_SMS_displayOff();
	//engine_content_manager_load_splash_screen();
	//devkit_SMS_displayOn();
	engine_font_manager_draw_text( "PRESS FIRE 2 THEN FIRE 1", 4, 23 );
}

void screen_next_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		*screen_type = screen_type_test;
		return;
	}

	*screen_type = screen_type_next;
}
