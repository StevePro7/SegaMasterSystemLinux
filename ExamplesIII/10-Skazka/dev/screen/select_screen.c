#include "select_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"
// TODO delete!!
void screen_select_screen_load()
{
	//engine_font_manager_text( "SELECT SCREEN??", 2, 2 );
	//engine_font_manager_text( "1", 12, 12 );
	//engine_font_manager_text( "2", 12, 13 );
	//engine_font_manager_text( "3", 12, 14 );
	//engine_font_manager_text( "4", 12, 15 );
}

void screen_select_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_select;
}
