#include "shop_screen.h"
#include "audio_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "game_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "hack_manager.h"
#include "input_manager.h"
#include "locale_manager.h"
#include "player_manager.h"
#include "select_manager.h"
#include "timer_manager.h"
#include "text_manager.h"
#include "fixedbank.h"

#define SHOP_SCREEN_DELAY1	50

static unsigned char event_stage;
static unsigned char select_type;
static unsigned char gold;

unsigned char inventory[ MAX_ITEMS ] = { 10, 20, 10, 20, 30 };

void screen_shop_screen_load()
{
	struct_player_object *po = &global_player_object;
	unsigned char row;
	unsigned char idx;
	gold = po->gold;

	select_type = select_type_shop;

	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();

	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	row = 7;
	for( idx = 0; idx < 8; idx++ )
	{
		engine_font_manager_draw_text( ( char * ) shop_texts[ idx ], LEFT_X + 9, TOP_Y + row );
		row++;
	}
	row = 10;
	for( idx = 0; idx < MAX_ITEMS; idx++ )
	{
		engine_font_manager_draw_data( inventory[ idx ], LEFT_X + 24, TOP_Y + row++ );
	}

	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	row = 10;
	engine_select_manager_load( select_type, LEFT_X + 7, TOP_Y + row, 5 );

	engine_font_manager_draw_text( LOCALE_SHOP_QUERY, LEFT_X + 7, TOP_Y + 17 );
	engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 24, TOP_Y + 17 );
	engine_font_manager_draw_text( LOCALE_YOU_HAVE, LEFT_X + 7, TOP_Y + 19 );
	engine_font_manager_draw_data( gold, LEFT_X + 24, TOP_Y + 19 );

	engine_timer_manager_load( SHOP_SCREEN_DELAY1 );
	event_stage = event_stage_start;
}

void screen_shop_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_shop;
}
