#include "splash_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include <stdarg.h>

int Add( int x, ... )
{
	va_list arglist;
	int i;
	int result = 0;
	va_start( arglist, x );
	for( i = 0; i < x; i++ )
	{
		result += va_arg( arglist, int );
	}
	va_end( arglist );
	return result;
}

void screen_splash_screen_load()
{
	int a;
	int b;
	int c;

	a = 1;
	b = 2;
	c = 0;
	//const unsigned char	text[] = { 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 };
	//unsigned char x;
	//for( x = 0; x < 12; x++ )
	//{
	//	//engine_font_manager_asci( text[ x ], x, 0 );
	//	engine_font_manager_char( text[ x ], x, 0 );
	//}

	engine_font_manager_text( "SPLASH SCREEN??", 2, 10 );
	c = Add( 2, a, b );
	engine_font_manager_data( c, 2, 12 );
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_text( "HELLO??", 10, 15 );
	}

	*screen_type = screen_type_splash;
}
