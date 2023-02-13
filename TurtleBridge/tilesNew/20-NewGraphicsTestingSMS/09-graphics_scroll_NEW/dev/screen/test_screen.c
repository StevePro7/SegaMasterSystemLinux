#include "test_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"


void screen_test_screen_load()
{
	engine_player_manager_init();
//	engine_player_manager_init(0);
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();
	engine_player_manager_draw();
	devkit_SMS_displayOn();
}

void screen_test_screen_update( unsigned char *screen_type )	
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_fire1 );
	if (input)
	{
		engine_font_manager_text("SPLAT", 10, 10);
	}	
	engine_player_manager_draw();
	*screen_type = screen_type_test;
}
