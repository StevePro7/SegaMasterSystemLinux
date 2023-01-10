#include "splash_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../devkit/_sms_manager.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_splash();
	engine_font_manager_splash_data( 8, 14, 12 );
	engine_font_manager_titles_text( "SPLASH SCREEN	", 10, 2 );
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		engine_font_manager_splash_data( 9, 14, 14 );
		*screen_type = screen_type_title;
		return;
	}

	*screen_type = screen_type_splash;
}
