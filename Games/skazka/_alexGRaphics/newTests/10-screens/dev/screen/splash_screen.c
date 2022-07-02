#include "splash_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../devkit/_sms_manager.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_splash();
	engine_graphics_manager_draw_splash();
	engine_graphics_manager_draw_splash2( LEFT_X + 2, TOP_Y + 2 );
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
		engine_asm_manager_clear_VRAM();
		devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
		*screen_type = screen_type_title;
		return;
	}

	//input = engine_input_manager_hold( input_type_fire2 );
	//if( input )
	//{
	//	*screen_type = screen_type_title;
	//	return;
	//}

	*screen_type = screen_type_splash;
}
