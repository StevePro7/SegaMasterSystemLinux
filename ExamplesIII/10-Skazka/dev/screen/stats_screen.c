#include "stats_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

// Private helper functions.
static void print_stats();
static void print_village();
static void print_player();

void screen_stats_screen_load()
{
	unsigned char row;
	unsigned char idx;

	row = 1;
	engine_player_manager_calc();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_clear( row + 2, row + 9 );
	engine_text_manager_border();

	print_stats();
	print_village();
	print_player();

	row = 12;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 8; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) stats_texts[ idx ], LEFT_X + 12, row++ );
	}

	engine_select_manager_load( select_type_stats, LEFT_X + 10, 14, 6 );
	devkit_SMS_displayOn();
}

void screen_stats_screen_update( unsigned char *screen_type )
{
	//unsigned char input;
	unsigned char selection;

	selection = engine_select_manager_update( select_type_stats );
	if( INVALID_INDEX != selection )
	{
		engine_font_manager_data( selection + 1, 10, 0 );
	}

	*screen_type = screen_type_stats;
}

static void print_stats()
{
	unsigned char row = 2;
	engine_player_manager_stats( row );
	engine_font_manager_text( LOCALE_STATISTICS, LEFT_X + 2, row + 2 );
	engine_font_manager_text( LOCALE_HP, LEFT_X + 2, row + 3 );
	engine_font_manager_text( LOCALE_XP, LEFT_X + 2, row + 4 );
	engine_font_manager_text( LOCALE_GOLD, LEFT_X + 2, row + 5 );
	engine_font_manager_text( LOCALE_YOU_HAVE, LEFT_X + 4, row + 6 );
	engine_font_manager_text( LOCALE_YOUR_LVL, LEFT_X + 3, 22 );
}

static void print_village()
{
	unsigned char row = 2;
	engine_font_manager_text( LOCALE_OLD_VILLAGE, LEFT_X + 16, row + 2 );
	engine_font_manager_text( LOCALE_6_SPCS, LEFT_X + 13, row + 3 );
	engine_text_manager_args( LEFT_X + 13, row + 4, 15, 0x20, 0x20, 0xE1, 0x20, 0xE4, 0xE9, 0xE9, 0x20, 0x20, 0x20, 0xE0, 0x20, 0x20, 0x20, 0xE8 );
	engine_text_manager_args( LEFT_X + 13, row + 5, 16, 0x95, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0x96, 0x20, 0x20, 0x95, 0xEF, 0x96, 0x20, 0xE8, 0x90, 0xE8 );
	engine_text_manager_args( LEFT_X + 13, row + 6, 16, 0xEF, 0xE5, 0xEF, 0xE5, 0xEF, 0xE5, 0xEF, 0x20, 0x20, 0xEF, 0xE5, 0xEF, 0x20, 0x90, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 13, row + 7, 16, 0xEF, 0x92, 0xEF, 0x92, 0xEF, 0x92, 0xEF, 0x20, 0x20, 0xEF, 0x92, 0xEF, 0x20, 0x90, 0x90, 0x90 );
	engine_text_manager_args( LEFT_X + 13, row + 8, 16, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xEF, 0xFD, 0x20, 0xEF, 0xEF, 0xEF, 0xFD, 0x20, 0xE6, 0x20 );
}

static void print_player()
{
	unsigned char row = 0;
	engine_text_manager_args( LEFT_X + 2, row + 12, 5,  0x20, 0x20, 0x8A, 0x81, 0x8C );
	engine_text_manager_args( LEFT_X + 2, row + 13, 5,  0x20, 0x20, 0x80, 0x20, 0x80 );
	engine_text_manager_args( LEFT_X + 2, row + 14, 5,  0x8E, 0x20, 0x8B, 0x83, 0x8D );
	engine_text_manager_args( LEFT_X + 2, row + 15, 8, 0x80, 0x20, 0x86, 0x82, 0x88, 0x8A, 0x81, 0x8C );
	engine_text_manager_args( LEFT_X + 2, row + 16, 8, 0xF8, 0x81, 0x84, 0x20, 0x85, 0x84, 0x20, 0x80 );
	engine_text_manager_args( LEFT_X + 2, row + 17, 8, 0x20, 0x20, 0x87, 0x83, 0x89, 0x8B, 0x81, 0x8D );
	engine_text_manager_args( LEFT_X + 2, row + 18, 5,  0x20, 0x20, 0x93, 0x20, 0x94 );
	engine_text_manager_args( LEFT_X + 2, row + 19, 6,  0x20, 0x93, 0x20, 0x20, 0x20, 0x94 );
}