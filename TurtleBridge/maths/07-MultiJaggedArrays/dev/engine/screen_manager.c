#include "screen_manager.h"
#include "array_manager.h"
#include "font_manager.h"
#include "input_manager.h"

static unsigned char index;
static unsigned char value;

void engine_screen_manager_init()
{
	index = 0;
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 0 );
	engine_font_manager_draw_data( index, 10, 2 );
}

void engine_screen_manager_update()
{
	const signed int *ptr;
	unsigned char len;
	signed int data;

	unsigned char input;
	input = engine_input_manager_hold_up();
	if( input )
	{
		if ( 0 ==index )
		{
			index = 2;
		}
		else
		{
			index--;
		}
		value = 0;
		engine_font_manager_draw_data( index, 10, 2 );
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
		if( 2 == index )
		{
			index = 0;
		}
		else
		{
			index++;
		}
		value = 0;
		engine_font_manager_draw_data( index, 10, 2 );
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		ptr = jump_array_ptr[ index ];
		len = jump_array_len[ index ];
		data = ptr[ value ];
		
		engine_font_manager_draw_data( data , 10, 5 + index );
		value++;
		if( value >= len )
		{
			value = 0;
		}
	}
}