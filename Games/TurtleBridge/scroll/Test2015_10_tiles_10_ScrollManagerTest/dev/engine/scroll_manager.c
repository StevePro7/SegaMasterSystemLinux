#include "scroll_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 1;
static void print();

static unsigned char tiles[] =
{
	0, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 21, 21,21, 21, 22, 22, 22, 22, 21, 21,21, 21, 22, 22, 23, 23,
};

// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll_left = 0;
	so->scroll_right = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;
	so->offset_left = 0;
	so->offset_right = 31;

	devkit_SMS_setBGScrollX( so->scroll );
}

void engine_scroll_manager_load()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char x;
	print();

	for( x = 0; x < 32; x++ )
	{
		engine_font_manager_draw_text( "X", x, tiles[x] );
	}
}

void engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;

	so->scroll -= delta;
	so->scrollRight += delta;

	// scroll pixel by pixel
	devkit_SMS_setBGScrollX( so->scroll );
	print();

	if( ( so->scrollRight % 8 ) != delta )
	{
		return;
	}

	// Add new tile!
	so->scrollRightDivided8 = so->scrollRight / 8;
	engine_font_manager_draw_text( "X", 32 + so->scrollRightDivided8, 20 );
	print();
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned int idx = so->offset_left + col;
	return tiles[ idx  ];
}

static void print()
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scroll, 31, 0 );
	engine_font_manager_draw_data( so->scrollRight, 31, 1 );
	engine_font_manager_draw_data( so->scrollRightDivided8, 31, 2 );
	engine_font_manager_draw_data( so->scrollRight % 8, 31, 3 );
	engine_font_manager_draw_data( so->scroll + so->scrollRight, 31, 6 );
	//engine_font_manager_draw_data( so->scroll, so->scroll, 1 );

	engine_font_manager_draw_text( "      ", 26, 5 );
	if( ( so->scrollRight % 8 ) == delta )
	{
		engine_font_manager_draw_text( "SCROLL", 26, 5 );
	}
}