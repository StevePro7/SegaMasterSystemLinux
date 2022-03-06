#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/text_manager.h"

void screen_func_screen_load()
{
	engine_font_manager_text( "FUNC SCREEN..!!", 2, 10 );

	engine_text_manager_draw( 2, 8, 1, 0x80 );
	//engine_text_manager_draw( 1, 'C' );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}
