#include "stats_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
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
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_clear( row + 2, row + 9 );
	engine_text_manager_border();

	print_stats();
	print_village();
	print_player();
	engine_font_manager_text( LOCALE_YOUR_LVL, LEFT_X + 3, 22 );

	row = 12;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 8; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) stats_texts[ idx ], LEFT_X + 12, row++ );
	}

	//engine_font_manager_text( "WHAT SHALL WE DO?  ", 12, 12 );		// TODO remove
	//engine_font_manager_text( "1) GO FOREST PATROL", 12, 14 );		// TODO remove
	//engine_font_manager_text( "2) PURCHASE AT SHOP", 12, 15 );		// TODO remove
	//engine_font_manager_text( "3) REST BY THE WELL", 12, 16 );		// TODO remove
	//engine_font_manager_text( "4) TALK TO VILLAGER", 12, 17 );		// TODO remove
	//engine_font_manager_text( "5) BEAT THE KOSCHEY", 12, 18 );		// TODO remove
	//engine_font_manager_text( "6) RETURN MAIN MENU", 12, 19 );		// TODO remove

	devkit_SMS_displayOn();
}

void screen_stats_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_stats;
}

static void print_stats()
{
	// TODO 
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