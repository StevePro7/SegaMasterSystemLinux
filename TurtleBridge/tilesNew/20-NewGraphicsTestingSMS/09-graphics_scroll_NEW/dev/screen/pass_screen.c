#include "pass_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/maths_manager.h"
#include "../devkit/_sms_manager.h"

void screen_pass_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();
	engine_font_manager_text( "PASS[SCREEN", 10, 2 );
	devkit_SMS_displayOn();
}

void screen_pass_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_pass;
}