#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/text_manager.h"

static void section04();

void screen_func_screen_load()
{
	section04();

	//unsigned char code[] = { 0x87, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x89 };
	//engine_font_manager_text( "FUNC SCREEN...!!", 2, 10 );

	//engine_text_manager_args( 2, 7, 12, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
	//engine_text_manager_list( 2, 8, 12, code );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}

// 13000 REM TITLE SCREEN
static void section04()
{
	//unsigned char index;
	unsigned char row, col;

	engine_font_manager_char( 0x8A, LEFT_X + 1, 0 );
	engine_font_manager_char( 0x8C, LEFT_X + 31, 0 );
	engine_font_manager_char( 0x8B, LEFT_X + 1, 23 );
	engine_font_manager_char( 0x8D, LEFT_X + 31, 23 );

	//for( col = LEFT_X + 1; col <= LEFT_X + 31; col++ )
	//{
	//	engine_font_manager_char( 0x81, LEFT_X + col, 1 );
	//	engine_font_manager_char( 0x81, LEFT_X + col, 20 );
	//}

	for( row = 1; row <= 22; row++ )
	{
		engine_font_manager_char( 0x80, LEFT_X + 1, row );
		engine_font_manager_char( 0x80, LEFT_X + 31, row );
	}
}