#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"

static unsigned char data;

void engine_screen_manager_init()
{
	data = 0;
	engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 0 );
	engine_font_manager_draw_data( data, 10, 2 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	//engine_font_manager_draw_data( seed2, 10, 3 );
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_font_manager_draw_data( data, 10, 3 );

#ifdef _CONSOLE

#else

		__asm
			ld a, ( _data )
			inc a
			ld( _data ), a
		__endasm;

#endif
		engine_font_manager_draw_data( data, 10, 4 );
	}
}