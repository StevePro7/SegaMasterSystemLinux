#include "title_screen.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "locale_manager.h"

void screen_title_screen_load()
{
	engine_graphics_manager_clear_full();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	engine_font_manager_draw_text( LOCALE_TITLE_MSG1, LEFT_X + 6, TOP_Y + 10 );
	engine_font_manager_draw_text( LOCALE_TITLE_MSG2, LEFT_X + 3, TOP_Y + 15 );
	engine_font_manager_draw_numb( 8, LEFT_X + 16, TOP_Y + 15 );
}

void screen_title_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_title;
}
