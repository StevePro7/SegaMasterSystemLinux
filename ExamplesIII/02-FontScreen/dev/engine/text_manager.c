#include "text_manager.h"
#include "font_manager.h"
#include <stdarg.h>

void engine_text_manager_draw( unsigned char x, unsigned char y, unsigned char num, ... )
{
	int idx;

	va_list arglist;
	va_start( arglist, num );

	for( idx = 0; idx < num; idx++ )
	{
		char ch = va_arg( arglist, char );
		engine_font_manager_char( ch, x, y );
	}

	va_end( arglist );
}