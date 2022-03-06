#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/text_manager.h"

void screen_func_screen_load()
{
	unsigned char code[] = { 0x87, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x89 };
	engine_font_manager_text( "FUNC SCREEN...!!", 2, 10 );

	//engine_text_manager_draw( 2, 8, 2, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
	engine_text_manager_draw( 2, 7, 12, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
	//engine_text_manager_draw( 2, 8, 12, code );

	engine_text_manager_arry( 2, 8, 12, code );

	//engine_text_manager_text( 5, 0x87, 0x81, 0x81, 0x81, 0x89 );

	//engine_text_manager_draw( 2, 0, 2, 0x41, 0x42 );
	//engine_text_manager_text( 3, 0x41, 0x42, 0x44 );
	//engine_text_manager_draw( 2, 2, 1, 0x43 );
	//engine_text_manager_draw( 1, 'C' );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}
