#include "start_screen.h"
#include "../devkit/_sms_manager.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sound_manager.h"

void screen_start_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_load_tiles();
	engine_font_manager_draw_text( "PRESS FIRE1", 4, 2 );
	devkit_SMS_displayOn();
}

void screen_start_screen_update( unsigned char *screen_type )
{
	unsigned char input1 = engine_input_manager_hold_fire1();
	unsigned char input2 = engine_input_manager_hold_fire2();
	if( input1 )
	{
		engine_font_manager_draw_text( "HELLO MUSIC", 4, 4 );
		engine_music_manager_play();
	}

	if( input2 )
	{
		engine_font_manager_draw_text( "HELLO SOUND", 4, 14 );
		engine_sound_manager_play();
	}

	*screen_type = screen_type_start;
}