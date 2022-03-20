#include "shop_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

static unsigned char event_stage;
static unsigned char select_type;
static unsigned char gold;
static void setup();

unsigned char inventory[ MAX_ITEMS ] = { 10, 20, 20, 10, 30 };

void screen_shop_screen_load()
{
	struct_player_object *po = &global_player_object;
	gold = po->gold;

	select_type = select_type_shop;
	devkit_SMS_displayOff();
	setup();
	devkit_SMS_displayOn();
}

void screen_shop_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char value;
	unsigned char selection;

	input = engine_input_manager_hold( input_type_fire2 );
	if( input )
	{
		*screen_type = screen_type_stats;
		return;
	}

	selection = engine_select_manager_update( select_type );
	if( NO_SELECTION == selection )
	{
		*screen_type = screen_type_shop;
		return;
	}

	value = inventory[ selection ];
	if( value > gold )
	{
		engine_font_manager_text( LOCALE_NOT_ENOUGH, LEFT_X + 8, SHOP_ROW + 4 );
	}

	*screen_type = screen_type_shop;
}

static void setup()
{
	unsigned char row;
	unsigned char idx;

	row = 1;
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 8; idx++ )
	{
		engine_font_manager_text( ( unsigned char * ) shop_texts[ idx ], LEFT_X + 9, row++ );
	}

	row = 10;
	for( idx = 0; idx < MAX_ITEMS; idx++ )
	{
		engine_font_manager_data( inventory[ idx ], LEFT_X + 24, row++ );
	}

	row = 10;
	engine_select_manager_load( select_type, LEFT_X + 7, row, 5 );

	engine_font_manager_text( LOCALE_SHOP_QUERY, LEFT_X + 7, SHOP_ROW + 0 );
	engine_font_manager_text( LOCALE_YOU_HAVE, LEFT_X + 7, SHOP_ROW + 2 );
	engine_font_manager_text( LOCALE_GOLD, LEFT_X + 16, SHOP_ROW + 2 );
	engine_font_manager_data( gold, LEFT_X + 24, SHOP_ROW + 2 );

	//insufficient
	//engine_font_manager_text( LOCALE_NOT_ENOUGH, LEFT_X + 8, row + 4 );
}