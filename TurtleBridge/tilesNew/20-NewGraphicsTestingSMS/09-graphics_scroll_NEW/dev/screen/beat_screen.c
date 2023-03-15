#include "beat_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/content_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_beat_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char value;
	value = 1;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	// Draw screen specific graphics.
	engine_graphics_manager_sea();
	engine_font_manager_text( "BEAT SCREEN", 21, 0 );
	engine_font_manager_text( "BEAT SCREEN", value, 2 );
	devkit_SMS_displayOn();

	//value = so->scrollLeftX >> 0;
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	unsigned char input, index;
	unsigned char loops, count, value;
	
	index = 2;
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		//value = engine_random_manager_next( SPRITE_TILES );
		//engine_font_manager_data( value, 10, 10 );
	}


	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_font_manager_text( "PCM PLAYING", 10, 4 );

		count = riff_counts[ index ];
		value = riff_indexs[ index ];
		if( 1 == count )
		{
			engine_riff_manager_play( value );
		}
		else
		{
			for( loops = 0; loops < count; loops++ )
			{
				engine_riff_manager_play( loops + value );
			}
		}
	}

	engine_random_manager_rand();
	*screen_type = screen_type_beat;
}
