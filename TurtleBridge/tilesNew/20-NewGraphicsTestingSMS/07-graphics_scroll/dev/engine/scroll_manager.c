#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

// Global variable.
struct_scroll_object global_scroll_object;

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

static void print( bool newTile );

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


bool engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	bool newTile;
	const unsigned char delta = 1;

	so->scroll -= delta;
	so->scrollRight += delta;
	// IMPORTANT - performance improvement - would like to test to triple check but looks good at the mo'	09-Jan-2023
	if( so->scrollRight >= 8 )
	{
		so->scrollRight = 0;
	}

	// scroll pixel by pixel
	devkit_SMS_setBGScrollX( so->scroll );

	// IMPORTANT - performance improvement - would like to test to triple check but looks good at the mo'	09-Jan-2023
	newTile = so->scrollRight == delta;
	//newTile = so->scrollRight % 8 == delta;
	if( newTile )
	{
		so->offset_right++;
	}

	//print( newTile );
	return newTile;
}

static void print( bool newTile )
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scroll, 25, 0 );
	engine_font_manager_draw_data( so->scrollRight, 25, 1 );
	//engine_font_manager_draw_data( so->scrollRightDivided8, 25, 2 );

	//engine_font_manager_draw_data( so->offset_left, 25, 5 );
	engine_font_manager_draw_data( so->offset_right, 20, 2 );
	engine_font_manager_draw_data( so->offset_right % SCREEN_WIDE, 25, 2 );

	//engine_font_manager_draw_data( so->scroll + so->scrollRight, 25, 8 );
	//engine_font_manager_draw_data( so->scroll, so->scroll, 1 );

	engine_font_manager_draw_text( "      ", 21, 3 );
	if( newTile )
	{
		engine_font_manager_draw_text( "TILES", 21, 3 );
	}
}