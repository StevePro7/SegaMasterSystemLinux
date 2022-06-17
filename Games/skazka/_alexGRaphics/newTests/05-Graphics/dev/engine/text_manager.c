#include "text_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "locale_manager.h"

void engine_text_manager_cont()
{
	// TODO - replace hard coded values!
	engine_font_manager_draw_text( LOCALE_FIRE1_CONT, 4, 21 );
	engine_font_manager_draw_numb( 1, 15, 21 );
}