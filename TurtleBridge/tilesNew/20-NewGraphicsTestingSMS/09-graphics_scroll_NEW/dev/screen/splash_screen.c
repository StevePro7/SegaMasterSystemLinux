#include "splash_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../devkit/_sms_manager.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_splash();
	engine_font_manager_splash_data( 80, 4, 2 );
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_splash;
}
