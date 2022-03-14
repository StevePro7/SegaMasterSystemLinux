#include "scroll_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../devkit/_sms_manager.h"

void screen_scroll_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_load_tiles();
	engine_font_manager_text( "SCROLL SCREEN!!", 2, 10 );
	devkit_SMS_displayOn();
}

void screen_scroll_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_scroll;
}
