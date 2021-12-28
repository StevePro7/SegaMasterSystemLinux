#include "load_screen.h"
#include "../devkit/_sms_manager.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/tree_manager.h"

void screen_load_screen_load()
{
	engine_font_manager_draw_text( LOCALE_LINE1, 10, 11 );
	engine_font_manager_draw_text( LOCALE_LINE2, 10, 12 );

	engine_font_manager_draw_text( LOCALE_BLANK, 4, 21 );
	engine_font_manager_draw_text( LOCALE_BLANK, 15, 21 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_fire1();
	if( input )
	{
		*screen_type = screen_type_test;
		return;
	}

	*screen_type = screen_type_load;
}