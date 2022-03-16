#include "select_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"

void screen_select_screen_load()
{
	engine_font_manager_text( "SELECT SCREEN??", 2, 2 );
	engine_font_manager_text( "1", 12, 12 );
	engine_font_manager_text( "2", 12, 13 );
	engine_font_manager_text( "3", 12, 14 );
	engine_font_manager_text( "4", 12, 15 );


	engine_select_manager_load( select_type_stats, 10, 12, 4 );
}

void screen_select_screen_update( unsigned char *screen_type )
{
	unsigned char selection;

	selection = engine_select_manager_update( select_type_stats );
	if( NO_SELECTION != selection )
	{
		engine_font_manager_data( selection + 1, 15, 18 );
	}

	*screen_type = screen_type_select;
}
