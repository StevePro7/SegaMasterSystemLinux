#include "riff_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/riff_manager.h"

static unsigned char index;

static unsigned char indexs[] = { 0, 9 };
static unsigned char counts[] = { 9, 9 };

void screen_riff_screen_load()
{
	index = 0;
	engine_riff_manager_init();
	engine_font_manager_text( "RIFF SCREEN!!", 10, 2 );
	engine_font_manager_data( index, 14, 9 );
	engine_font_manager_text( ( unsigned char* ) riff_object_texts[ index ], 10, 10 );
}

void screen_riff_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char loops, count, value;

	input = engine_input_manager_hold_up();
	if( input && index > 0 )
	{
		index--;
		engine_font_manager_data( index, 14, 9 );
		engine_font_manager_text( ( unsigned char* ) riff_object_texts[ index ], 10, 10 );
	}

	input = engine_input_manager_hold_down();
	if( input && index < 1 )
	{
		index++;
		engine_font_manager_data( index, 14, 9 );
		engine_font_manager_text( ( unsigned char* ) riff_object_texts[ index ], 10, 10 );
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		count = counts[ index ];
		value = indexs[ index ];
		if( 0 == count )
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

	*screen_type = screen_type_riff;
}