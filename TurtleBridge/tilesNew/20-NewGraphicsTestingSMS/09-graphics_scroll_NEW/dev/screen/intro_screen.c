#include "intro_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/level_manager.h"
#include "../devkit/_sms_manager.h"

void screen_intro_screen_load()
{
	engine_level_manager_load( 0 );
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_graphics_manager_sea();
	engine_level_manager_show( 1 );
	devkit_SMS_displayOn();
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
