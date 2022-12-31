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

static void lineScrollHandler( void );
static void print( bool newTile );

void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	//->scroll_left = 0;
	//so->scroll_right = 0;
	//so->scrollRightDivided8 = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	//so->offset_left = 0;
	so->offset_right = 31;

	devkit_SMS_setBGScrollX( so->scroll );
	print( false );

	// NEW
	so->scroll_x[ 0 ] = 0; 
	so->scroll_x[ 1 ] = 0; 
	so->scroll_x[ 2 ] = 0; 
	so->scroll_x[ 3 ] = 0; 
	so->scroll_x[ 4 ] = 0; 
	so->scroll_x[ 5 ] = 0; 
	so->lineCnt = 0;
}

bool engine_scroll_manager_update( unsigned char delta )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char temp;
	bool newTile;
	//const unsigned char delta = 1;

	so->scroll -= delta;
	so->scrollRight += delta;

	newTile = false;
	if( delta > 0 )
	{
		newTile = so->scrollRight % 8 == delta;
		if( newTile )
		{
			so->offset_right++;
		}
	}

	temp = 0;
	//temp = so->scroll_x[ 0 ];
	//engine_font_manager_draw_data( temp, 15, 10 );
	//engine_font_manager_draw_data( so->scroll_x[ 0 ], 15, 11 );
	//so->scroll_x[ 0 ] = so->scroll_x[ 0 ] - delta;
	so->scroll_x[ 0 ] -= delta;
	so->scroll_x[ 1 ] -= delta;
	so->scroll_x[ 2 ] -= delta;
	so->scroll_x[ 3 ] -= delta;
	so->scroll_x[ 4 ] -= delta;
	so->lineCnt = 0;

	temp = so->scroll_x[ 0 ];
	//engine_font_manager_draw_data( temp, 25, 12 );
	//engine_font_manager_draw_data( so->scroll_x[ 0 ], 25, 13 );

	return newTile;
}

bool engine_scroll_manager_updateZ()
{
	struct_scroll_object *so = &global_scroll_object;
	bool newTile;
	const unsigned char delta = 1;

	so->scroll -= delta;
	so->scrollRight += delta;

	// scroll pixel by pixel
	devkit_SMS_setBGScrollX( so->scroll );
	newTile = so->scrollRight % 8 == delta;
	if( newTile )
	{
		so->offset_right++;
	}

	print( newTile );
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

static void lineScrollHandler( void )
{
	struct_scroll_object *so = &global_scroll_object;
	//unsigned int val = scroll_x[ lineCnt++ ] >> 8;
	unsigned int val = so->scroll_x[ so->lineCnt++ ];

	//engine_font_manager_draw_data( lineCnt, 10, 0 );
	//engine_font_manager_draw_data( val, 20, 0 );
	//engine_font_manager_draw_data( lineCnt, 10, 0 );
	//devkit_SMS_setBGScrollX( ( scroll_x[ lineCnt++ ] ) >> 8 );

	devkit_SMS_setBGScrollX( val );
}