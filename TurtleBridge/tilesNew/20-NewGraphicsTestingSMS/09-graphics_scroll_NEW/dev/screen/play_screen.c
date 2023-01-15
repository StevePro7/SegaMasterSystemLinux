#include "back_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

void screen_play_screen_load()
{
	unsigned char idx;

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();

	for( idx = 0; idx < 4; idx++ )
	{
		engine_tile_manager_draw_columns( tile_type_turtle_fly4, 10 + idx, 0 + idx );
	}

	devkit_SMS_displayOn();

	////TODO
	////engine_music_manager_play();
}

void screen_play_screen_update( unsigned char *screen_type )
{
	//struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	

	input = engine_input_manager_hold( input_type_down);
	if( input )
	{
		//engine_scroll_manager_update( 2 );
	//	print( newTile );
	}



	*screen_type = screen_type_play;
}

