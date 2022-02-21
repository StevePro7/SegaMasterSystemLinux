#include "scroll_manager.h"
#include "font_manager.h"
#include "level_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 1;
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

	//engine_level_manager_update( so->column_X, so->scroll_X );
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