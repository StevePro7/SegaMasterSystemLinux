#include "detail_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"

static void section01();
static void section02();

void screen_detail_screen_load()
{
	section02();
	//section01();

	engine_font_manager_text( "DETAIL SCREEN!!", 2, 20 );
}

void screen_detail_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_detail;
}

// 300 CURSOR 16,0:PRINT"OLD VILLAGE"
static void section02()
{
	engine_font_manager_text( LOCALE_OLD_VILLAGE, LEFT_X + 16, 0 );
	//engine_font_manager_text( LOCALE_6_SPCS, LEFT_X + 13, 3 );
	engine_font_manager_text( "1234567890123456", LEFT_X + 13, 3);

	engine_text_manager_args( LEFT_X + 13, 4, 15, 0x20, 0x20, 0xE1, 0x20, 0xE4, 0xE9, 0xE9, 0x20, 0x20, 0x20, 0xE0, 0x20, 0x20, 0x20, 0xE8 );
	
	engine_text_manager_args( LEFT_X + 13, 5, 16, 0x95, 0xE5, 0xE5, 0xE5, 0xE5, 0xE5, 0x96, 0x20, 0x20, 0x95, 0xE5, 0x96, 0x20, 0xE8, 0x90, 0xE8 );
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

	engine_font_manager_text( LOCALE_STATISTICS, LEFT_X + 1, 1 );
	engine_font_manager_text( LOCALE_HP, LEFT_X + 1, 2 );
	engine_font_manager_text( LOCALE_XP, LEFT_X + 1, 3 );
	engine_font_manager_text( LOCALE_GOLD, LEFT_X + 1, 4 );
	engine_font_manager_text( LOCALE_YOU_HAVE, LEFT_X + 2, 5 );
	engine_font_manager_text( LOCALE_YOUR_LVL, LEFT_X + 2, 21 );

	engine_text_manager_args( LEFT_X, 12, 8, 0x20, 0x20, 0x20, 0x20, 0x20, 0x8A, 0x81, 0x8C );
	engine_text_manager_args( LEFT_X, 13, 8, 0x20, 0x20, 0x20, 0x20, 0x20, 0x80, 0x20, 0x80 );
	engine_text_manager_args( LEFT_X, 14, 8, 0x20, 0x20, 0x20, 0x8E, 0x20, 0x8B, 0x83, 0x8D );
	engine_text_manager_args( LEFT_X, 15, 11, 0x20, 0x20, 0x20, 0x80, 0x20, 0x86, 0x82, 0x88, 0x8A, 0x81, 0x8C );
	engine_text_manager_args( LEFT_X, 16, 11, 0x20, 0x20, 0x20, 0xF8, 0x81, 0x84, 0x20, 0x85, 0x84, 0x20, 0x80 );
	engine_text_manager_args( LEFT_X, 17, 11, 0x20, 0x20, 0x20, 0x20, 0x20, 0x87, 0x83, 0x89, 0x8B, 0x81, 0x8D );

	engine_text_manager_args( LEFT_X, 18, 8, 0x20, 0x20, 0x20, 0x20, 0x20, 0x93, 0x20, 0x94 );
	engine_text_manager_args( LEFT_X, 19, 8, 0x20, 0x20, 0x20, 0x20, 0x20, 0x93, 0x20, 0x94 );
}