#include "intro_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

void screen_intro_screen_load()
{
	unsigned char row = 5;
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	engine_graphics_manager_title();

	engine_font_manager_text( "===== CHEAT SHEET ======", 4, 3 );
	engine_font_manager_text( "TYPE  DESCRIPTION       ACTION", 2, row + 0 );
	engine_font_manager_text( "TYPE  DESCRIPTION       ACTION", 2, row + 0 );
	engine_font_manager_text( "TYPE  DESCRIPTION       ACTION", 2, row + 0 );
	engine_font_manager_text( "TYPE  DESCRIPTION       ACTION", 2, row + 0 );
	devkit_SMS_displayOn();
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
