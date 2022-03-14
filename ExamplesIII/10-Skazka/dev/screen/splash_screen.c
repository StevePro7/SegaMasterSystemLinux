#include "splash_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/input_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"

#define SPLASH_SCREEN_DELAY		150

void screen_splash_screen_load()
{
	engine_timer_manager_load( SPLASH_SCREEN_DELAY );

	devkit_SMS_displayOff();
	engine_content_manager_load_splash();
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char timer;

	input = engine_input_manager_hold( input_type_fire1 );
	timer = engine_timer_manager_update();

	if( input || timer )
	{
		*screen_type = screen_type_scroll;
		return;
	}

	*screen_type = screen_type_splash;
}
