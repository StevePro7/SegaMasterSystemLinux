#include "text_manager.h"
#include "font_manager.h"
#include <stdarg.h>

void engine_text_manager_text( unsigned char num, ... )
{
	unsigned char x;
	unsigned char y;

	unsigned char ch;
	unsigned char idx;
	va_list arglist;

	x = 10;
	y = 1;

	
	va_start( arglist, num );

	for( idx = 0; idx < num; idx++ )
	{
		engine_font_manager_data( idx, x, idx + 5 );
		ch = va_arg( arglist, int );
		engine_font_manager_char( ch, x, y );
		x++;
	}
}

void engine_text_manager_draw( unsigned char x, unsigned char y, unsigned char num, ... )
{
	unsigned char ch;
	unsigned char idx;
	unsigned char col = x;

	va_list arglist;
	va_start( arglist, num );

	for( idx = 0; idx < num; idx++ )
	{
		ch = va_arg( arglist, int );
		engine_font_manager_char( ch, col, y );
		col++;
	}

	va_end( arglist );
}	