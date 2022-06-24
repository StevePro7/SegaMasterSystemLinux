#include "menu_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

static unsigned char select_type;

void screen_menu_screen_load()
{
	unsigned char row;
	unsigned char idx;

	select_type = select_type_menu;

	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 6; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) menus_texts[ idx ], LEFT_X + 12, TOP_Y + row );
		row++;
	}

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	engine_select_manager_load( select_type, LEFT_X + 10, TOP_Y + 10, 3 );
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_menu_screen_update( unsigned char *screen_type )
{
	unsigned char selection;

	selection = engine_select_manager_update( select_type );
	if( NO_SELECTION == selection )
	{
		*screen_type = screen_type_menu;
		return;
	}

	*screen_type = screen_type_menu;
}
