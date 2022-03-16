#include "menu_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

void screen_menu_screen_load()
{
	unsigned char row;
	unsigned char idx;

	row = 1;
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 5; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) menus_texts[ idx ], LEFT_X + 10, row++ );
	}

	row = 9;
	engine_select_manager_load( select_type_menu, LEFT_X + 8, row, 3 );
	devkit_SMS_displayOn();
}

void screen_menu_screen_update( unsigned char *screen_type )
{
	unsigned char selection = engine_select_manager_update( select_type_stats );
	if( NO_SELECTION == selection )
	{
		*screen_type = screen_type_menu;
		return;
	}

	switch( selection )
	{
	case menu_type_exit:
		*screen_type = screen_type_title;
		break;
	case menu_type_restart:
		*screen_type = screen_type_intro;
		break;
	case menu_type_continue:
		*screen_type = screen_type_stats;
		break;
	}
}
