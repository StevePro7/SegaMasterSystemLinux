#include "riff_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/riff_manager.h"
#include "../banks/fixedbank.h"

#define MAX_RIFFS	25

static unsigned char index;

static unsigned char indexs[] = { 0,1,2,3,4,5,6,8,10,11,12,13,15,17,21,23,27,28,30,33,34,36,37,38,39,48, };
static unsigned char counts[] = { 1,1,1,1,1,1,2,2, 1, 1, 1, 2, 2, 4, 2, 4, 1, 2, 3, 1, 2, 1, 1, 1, 9, 9, };

//static unsigned char indexs[] = { 0,1,2,3,4,5,6,8,10,11,12,13,15,17,21,23,27,36,45,46,48,51,52,54,55,56, };
//static unsigned char counts[] = { 1,1,1,1,1,1,2,2, 1, 1, 1, 2, 2, 4, 2, 4, 9, 9, 1, 2, 3, 1, 2, 1, 1, 1 };

void screen_riff_screen_load()
{
	index = 22;
	engine_riff_manager_init();
	engine_font_manager_text( "RIFF SCREEN!!", 10, 2 );
	engine_font_manager_data( FIXED_BANK, 14, 7 );
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
	if( input && index < MAX_RIFFS )
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

	*screen_type = screen_type_riff;
}
