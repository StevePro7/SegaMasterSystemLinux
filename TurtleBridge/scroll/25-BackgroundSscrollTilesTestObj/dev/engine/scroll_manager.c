#include "scroll_manager.h"
#include "font_manager.h"
#include "level_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 2;
static void print();

// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	//so->scroll_left = 0;
	//so->scroll_right = 0;

	so->scrollleft = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;
	//so->offset_left = 0;
	//so->offset_right = 31;
	so->column_X = 0;
	so->scroll_X = 31;
	
	devkit_SMS_setBGScrollX( so->column_X );
	//print();
}

void engine_scroll_manager_load()
{
}

void engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	if( so->scroll_X >= 100 )
	{
		return;
	}

	so->scrollleft -= delta;
	so->scrollRight += delta;

	// scroll pixel by pixel
	devkit_SMS_setBGScrollX( so->scrollleft );
	//print();

	if( ( so->scrollRight % 8 ) != delta )
	{
		return;
	}

	// Add new column!
	so->scrollRightDivided8 = so->scrollRight / 8;
	//so->offset_left++;
	//so->offset_right++;
	so->scroll_X++;
	so->column_X = so->scroll_X % SCREEN_WIDE;

	//engine_tile_manager_blank_column( so->column_X, so->scroll_X );
	engine_level_manager_update( so->column_X, so->scroll_X );

	//// IMPORTANT - here 8 is tile 4 * x	remember 2x bytes for each tile loaded from the TILEMAP
	//// i.e. so 8 => 4 i.e. 8/2 = 4 and 4 is tile '$'.
	//index = ( base + offset ) * 2 + 8;
	//engine_font_manager_draw_data( index, 25, 0 );
	//
	//y = tiles[ idx ];
	//src = ( void * ) &pnt[ index ];
	//devkit_SMS_loadTileMap(x, y-1, src, 2 );

	////engine_font_manager_draw_text( "X", 32 + so->scrollRightDivided8, tiles[ idx ] - 1);
	//print();
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	//struct_scroll_object *so = &global_scroll_object;
	//unsigned int idx = so->offset_left + col;
	//return tiles[ idx  ];
	return col;
}

static void print()
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scrollleft, 25, 0 );
	engine_font_manager_draw_data( so->scrollRight, 25, 1 );
	engine_font_manager_draw_data( so->scrollRightDivided8, 25, 2 );
	engine_font_manager_draw_data( so->column_X, 25, 3 );
	engine_font_manager_draw_data( so->scroll_X, 25, 4 );


	engine_font_manager_draw_data( so->scrollleft + so->scrollRight, 25, 6 );

	engine_font_manager_draw_text( "      ", 21, 7 );
	if( ( so->scrollRight % 8 ) == delta )
	{
		engine_font_manager_draw_text( "SCROLL", 21, 7 );
	}
}