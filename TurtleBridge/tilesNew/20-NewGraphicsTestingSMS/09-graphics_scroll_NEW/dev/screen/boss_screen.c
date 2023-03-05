#include "boss_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_boss_screen_load()
{
	//unsigned char byte1, byte2;
	unsigned int command_frame_index;

	//byte1 = 0xA4;
	//byte2 = 0x00;

	//command_frame_index = byte2 * 256 + byte1;

	command_frame_index = 0x00A5;
	engine_font_manager_data( command_frame_index, 15, 5 );
	engine_font_manager_text( "BOSS SCREEN!!", 10, 2 );
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}
