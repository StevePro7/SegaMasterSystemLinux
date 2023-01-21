#include "ready_screen.h"
#include "../engine/asm_manager.h"
//#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

void screen_ready_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();
	engine_font_manager_text( "READY[SCREEN", 10, 2 );
	devkit_SMS_displayOn();
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	unsigned int input = devkit_SMS_getKeysStatus();
	//input = engine_input_manager_hold( input_type_left );
	//if( input )
	//{
	//	engine_font_manager_text( "LEFT", 10, 10 );
	//}
	engine_font_manager_data( input, 15, 5 );

	*screen_type = screen_type_ready;
}