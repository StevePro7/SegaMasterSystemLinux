#include "next_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_next_screen_load()
{
	//devkit_SMS_displayOff();
	//engine_content_manager_load_splash_screen();
	//devkit_SMS_displayOn();
	engine_font_manager_draw_text( "PRESS FIRE 2 THEN FIRE 1", 4, 23 );
}

void screen_next_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_next;
}
