#include "text_manager.h"
#include "font_manager.h"
#include <stdarg.h>

void engine_text_manager_draw( unsigned char x, unsigned char y, unsigned char num, ... )
{
	char ch;
	unsigned char idx;
	unsigned char col = x;

	va_list arglist;
	va_start( arglist, num );

	for( idx = 0; idx < num; idx++ )
	{
		ch = va_arg( arglist, unsigned char );
		engine_font_manager_char( ch, col, y );
		col++;
	}

	va_end( arglist );
}	