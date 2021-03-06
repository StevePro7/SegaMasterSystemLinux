#include "detail_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../banks/fixedbank.h"

static void section01();
static void section02();
static void section03();
static void section04();
static void section05();

void screen_detail_screen_load()
{
	//section01();
	//section02();
	//section03();
	//section04();
	section05();

	//engine_font_manager_text( "DETAIL SCREEN!!", 2, 20 );
}

void screen_detail_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_detail;
}

// 11120 CURSOR 11,1
static void section05()
{
	engine_text_manager_args( LEFT_X + 11, 1, 7, 0x20, 0x20, 0x20, 0x20, 0x20, 0x95, 0x96 );
	engine_text_manager_args( LEFT_X + 11, 2, 11, 0x20, 0x95, 0x96, 0x20, 0x20, 0xEF, 0xEF, 0x20, 0x20, 0x95, 0x96 );
	engine_text_manager_args( LEFT_X + 11, 3, 11, 0x20, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF );
	engine_text_manager_args( LEFT_X + 11, 4, 12, 0x96, 0xEF, 0xEF, 0x96, 0xEF, 0x98, 0x97, 0xEF, 0x95, 0xEF, 0xEF, 0x95 );
	engine_text_manager_args( LEFT_X + 11, 5, 12, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0x96, 0x95, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF );
	engine_text_manager_args( LEFT_X + 11, 6, 12, 0x97, 0x98, 0x95, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x96, 0x97, 0x98 );
	engine_text_manager_args( LEFT_X + 11, 7, 11, 0x20, 0x98, 0x97, 0x96, 0x20, 0x90, 0x90, 0x20, 0x95, 0x98, 0x97 );
	engine_text_manager_args( LEFT_X + 11, 8, 12, 0x96, 0x9F, 0x97, 0xF7, 0x97, 0x98, 0x97, 0x98, 0xF7, 0x98, 0xE4, 0x95 );
	engine_text_manager_args( LEFT_X + 11, 9, 12, 0xEF, 0x97, 0x20, 0x20, 0x98, 0x20, 0x20, 0x97, 0x20, 0x20, 0x98, 0xEF );
	engine_text_manager_args( LEFT_X + 11, 10, 12, 0x97, 0x20, 0x97, 0x90, 0x20, 0xEE, 0xEE, 0x20, 0x90, 0x98, 0x20, 0x98 );
	engine_text_manager_args( LEFT_X + 11, 11, 11, 0x20, 0x97, 0x20, 0x90, 0x20, 0xE1, 0xE2, 0x20, 0x90, 0x20, 0x98 );
	engine_text_manager_args( LEFT_X + 11, 12, 10, 0x20, 0x20, 0x90, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x90 );
	engine_text_manager_args( LEFT_X + 11, 13, 11, 0x20, 0x95, 0x90, 0x20, 0xE1, 0xEE, 0xEE, 0xE2, 0x20, 0x90, 0x96 );
	engine_text_manager_args( LEFT_X + 11, 14, 10, 0x20, 0x20, 0x97, 0x90, 0x20, 0x20, 0x20, 0x20, 0x90, 0x98 );
	engine_text_manager_args( LEFT_X + 11, 15, 9, 0x20, 0x20, 0x20, 0x97, 0x98, 0x90, 0x90, 0x97, 0x98 );
	engine_text_manager_args( LEFT_X + 11, 16, 8, 0x20, 0x20, 0x20, 0x20, 0x97, 0x98, 0x97, 0x98 );
}

// 13000 REM TITLE SCREEN
static void section04()
{
	//unsigned char index;
	unsigned char row, col;

	engine_font_manager_char( 0x8A, LEFT_X + 1,  1 );
	engine_font_manager_char( 0x8C, LEFT_X + 31, 1 );
	engine_font_manager_char( 0x8B, LEFT_X + 1, 20 );
	engine_font_manager_char( 0x8D, LEFT_X + 31, 20 );

	for( col = 2; col <= 30; col++ )
	{
		engine_font_manager_char( 0x81, LEFT_X + col, 1 );
		engine_font_manager_char( 0x81, LEFT_X + col, 20 );
	}

	for( row = 2; row <= 19; row++ )
	{
		engine_font_manager_char( 0x80, LEFT_X + 1, row );
		engine_font_manager_char( 0x80, LEFT_X + 31, row );
	}

	// SKAZKA
	engine_text_manager_args( LEFT_X + 3, 4, 26, 0x90, 0x90, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90, 0x90, 0x20, 0x20, 0x90, 0x90, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 3, 5, 27, 0x90, 0x20, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90 );
	engine_text_manager_args( LEFT_X + 3, 6, 27, 0x90, 0x90, 0x90, 0x20, 0x90, 0x90, 0x20, 0x20, 0x20, 0x90, 0x90, 0x90, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90, 0x90, 0x20, 0x20, 0x20, 0x90, 0x90, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 3, 7, 27, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x20, 0x90 );
	engine_text_manager_args( LEFT_X + 3, 8, 27, 0x90, 0x90, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x90, 0x90, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90, 0x20, 0x90, 0x20, 0x20, 0x90 );

	engine_font_manager_text( LOCALE_TITLE_MSG1, LEFT_X + 7, 13 );
	engine_font_manager_text( LOCALE_TITLE_MSG2, LEFT_X + 3, 18 );
}

// 350 CURSOR 13,10:PRINT"WHAT SHALL WE DO?"
static void section03()
{
	unsigned char index;
	unsigned char row;

	engine_font_manager_text( ( unsigned char* ) options_texts[ 0 ], LEFT_X + 13, 10 );
	engine_font_manager_text( ( unsigned char* ) options_texts[ 6 ], LEFT_X + 12, 22 );

	row = 12;
	for( index = 1; index <= 5; index++ )
	{
		engine_font_manager_text( ( unsigned char* ) options_texts[ index ], LEFT_X + 12, row++ );
	}
}

// 300 CURSOR 16,0:PRINT"OLD VILLAGE"
static void section02()
{
	engine_font_manager_text( LOCALE_OLD_VILLAGE, LEFT_X + 16, 0 );
	engine_font_manager_text( LOCALE_6_SPCS, LEFT_X + 13, 3 );
	engine_text_manager_args( LEFT_X + 13, 4, 15, 0x20, 0x20, 0xE1, 0x20, 0xE4, 0xE9, 0xE9, 0x20, 0x20, 0x20, 0xE0, 0x20, 0x20, 0x20, 0xE8 );
	engine_text_manager_args( LEFT_X + 13, 5, 16, 0x95, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0x96, 0x20, 0x20, 0x95, 0xEF, 0x96, 0x20, 0xE8, 0x90, 0xE8 );
	engine_text_manager_args( LEFT_X + 13, 6, 16, 0xEF, 0xE5, 0xEF, 0xE5, 0xEF, 0xE5, 0xEF, 0x20, 0x20, 0xEF, 0xE5, 0xEF, 0x20, 0x90, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 13, 7, 16, 0xEF, 0x92, 0xEF, 0x92, 0xEF, 0x92, 0xEF, 0x20, 0x20, 0xEF, 0x92, 0xEF, 0x20, 0x90, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 13, 8, 16, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xFD, 0x20, 0xEF, 0xEF, 0xEF, 0xFD, 0x20, 0xE6, 0x20 );
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
	engine_text_manager_args( LEFT_X, 19, 9, 0x20, 0x20, 0x20, 0x20, 0x93, 0x20, 0x20, 0x20, 0x94 );
}