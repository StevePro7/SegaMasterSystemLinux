#include "text_manager.h"
#include "font_manager.h"
#include "locale_manager.h"

void engine_text_manager_title()
{
	unsigned char x = 5;
	unsigned char y = 12;

	engine_font_manager_draw_text( LOCALE_BLANK, x, y );
	engine_font_manager_draw_text( LOCALE_START, x, y );
}

void engine_text_manager_music()
{
	unsigned char x = 5;
	unsigned char y = 12;

	engine_font_manager_draw_text( LOCALE_START, x, y );
	engine_font_manager_draw_text( LOCALE_SPACES, x + 5, y );
}

void engine_text_manager_sound()
{
	unsigned char x = 5;
	unsigned char y = 12;

	engine_font_manager_draw_text( LOCALE_START, x, y );
	engine_font_manager_draw_text( LOCALE_SPACES, x, y );
}
