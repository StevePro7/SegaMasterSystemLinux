#include "splash_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../devkit/_sms_manager.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_splash();
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	/*unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_text( "HELLO??", 10, 15 );
	}
*/
	*screen_type = screen_type_splash;
}
