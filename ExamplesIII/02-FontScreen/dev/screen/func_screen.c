#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/text_manager.h"

void screen_func_screen_load()
{
	unsigned char code[] = { 0x87, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x89 };
	engine_font_manager_text( "FUNC SCREEN...!!", 2, 10 );

	engine_text_manager_args( 2, 7, 12, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
	engine_text_manager_list( 2, 8, 12, code );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}
