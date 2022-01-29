#include "scroll_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 1;
static void print();

// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll_left = 0;
	so->scroll_right = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;

	devkit_SMS_setBGScrollX( so->scroll );
	//devkit_SMS_setBGScrollX( scroll );
}

void engine_scroll_manager_load()
{
	struct_scroll_object *so = &global_scroll_object;
	print();
}

void engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;

	so->scroll -= delta;
	so->scrollRight += delta;
	//so->scrollRightDivided8 = so->scrollRight / 8;
	//so->scroll += 1;
	devkit_SMS_setBGScrollX( so->scroll );
	print();
	
	if( ( so->scrollRight % 8 ) == delta )
	{

	}
}

static void print()
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scroll, 31, 0 );
	engine_font_manager_draw_data( so->scrollRight, 31, 1 );
	engine_font_manager_draw_data( so->scrollRight % 8, 31, 2 );
	engine_font_manager_draw_data( so->scroll + so->scrollRight, 31, 6 );
	//engine_font_manager_draw_data( so->scroll, so->scroll, 1 );

	engine_font_manager_draw_text( "      ", 26, 3 );
	if( ( so->scrollRight % 8 ) == delta )
	{
		engine_font_manager_draw_text( "SCROLL", 26, 3 );
	}
}