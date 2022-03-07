#include "detail_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/text_manager.h"

static void section01();

void screen_detail_screen_load()
{
	section01();

	engine_font_manager_text( "DETAIL SCREEN!!", 2, 20 );
}

void screen_detail_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_detail;
}

// 120 CURSOR 0,0:PRINT"\x86\x81\x81\x81\x81\x81\x81\x81\x81\x81\x81\x88"
static void section01()
{
	unsigned char row;

	engine_text_manager_args( LEFT_X,  0, 12, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
	engine_text_manager_args( LEFT_X, 10, 12, 0x87, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x89 );

	for( row = 1; row <= 9; row++ )
	{
		engine_font_manager_char( 0x80, LEFT_X, row );
		engine_font_manager_char( 0x80, LEFT_X + 11, row );
	}

	// TODO statistics etc.


	
}