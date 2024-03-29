#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

#define PARALLAX_SCROLLING		0
#define SCROLL_COLUMNS			8
#define SCROLL_LINE_COUNT		30

// Global variable.
struct_scroll_object global_scroll_object;

#ifdef _CONSOLE
#else
#pragma disable_warning 126
#pragma disable_warning 158
#endif


static void( *load_method )();
static bool( *update_method )( unsigned char delta );
static void lineScrollHandler( void );

// Private helper functions - TODO - delete
static void para_scroll_load();
static bool para_scroll_update( unsigned char delta );
static void full_scroll_load();
static bool full_scroll_update( unsigned char delta );

void engine_scroll_manager_init()
{
	if( PARALLAX_SCROLLING )
	{
		load_method = para_scroll_load;
		update_method = para_scroll_update;
	}
	else
	{
		load_method = full_scroll_load;
		update_method = full_scroll_update;
	}
}

void engine_scroll_manager_load()
{
	load_method();
}

bool engine_scroll_manager_update( unsigned char delta )
{
	return update_method( delta );
}

static void para_scroll_load()
{
//	engine_font_manager_data( 12, 10, 4 );
	struct_scroll_object *so = &global_scroll_object;
	
	//so->scroll_right = 0;

	//so->scroll = 0;
	so->scrollRight = 0;
	//so->offset_left = 0;
	so->offset_right = SCREEN_WIDE - 1;

	devkit_SMS_setBGScrollX( 0 );
	

	// NEW
	so->scroll_x[ 0 ] = 0;
	so->scroll_x[ 1 ] = 0;
	so->scroll_x[ 2 ] = 0;
	so->scroll_x[ 3 ] = 0;
	so->scroll_x[ 4 ] = 0;
	so->scroll_x[ 5 ] = 0;
	so->scroll_half = 0;
	so->lineCnt = 0;

	devkit_SMS_setLineInterruptHandler( &lineScrollHandler );
	//devkit_SMS_setLineCounter( 30 );
	devkit_SMS_setLineCounter( SCROLL_LINE_COUNT );
	devkit_SMS_enableLineInterrupt();
}
static bool para_scroll_update( unsigned char delta )
{
	//engine_font_manager_data( delta, 10, 6 );
	struct_scroll_object *so = &global_scroll_object;
	//unsigned char temp;
	bool newTile;
	//const unsigned char delta = 1;

	//so->scroll -= delta;
	so->scrollRight += delta;
	// IMPORTANT - performance improvement - would like to test to triple check but looks good at the mo'	09-Jan-2023
	if( so->scrollRight >= SCROLL_COLUMNS )
	{
		so->scrollRight = 0;
	}

	newTile = false;
	if( delta > 0 )
	{
		// IMPORTANT - performance improvement - would like to test to triple check but looks good at the mo'	09-Jan-2023
		newTile = so->scrollRight == delta;
		//newTile = so->scrollRight % 8 == delta;
		if( newTile )
		{
			so->offset_right++;
		}
	}

	//temp = 0;
	//temp = so->scroll_x[ 0 ];
	////engine_font_manager_draw_data( temp, 15, 10 );
	////engine_font_manager_draw_data( so->scroll_x[ 0 ], 15, 11 );
	//so->scroll_x[ 0 ] = so->scroll_x[ 0 ] - delta;
	if( delta > 0 )
	{
		so->scroll_half = 1 - so->scroll_half;
		so->scroll_x[ 0 ] -= so->scroll_half;
	}

	so->scroll_x[ 1 ] -= delta;
	so->scroll_x[ 2 ] -= delta;
	so->scroll_x[ 3 ] -= delta;
	so->scroll_x[ 4 ] -= delta;
	so->scroll_x[ 5 ] -= 0;
	so->lineCnt = 0;

	return newTile;
}

static void full_scroll_load()
{
	struct_scroll_object *so = &global_scroll_object;
	//so->scroll_right = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	
	so->offset_right = SCREEN_WIDE - 1;

	devkit_SMS_setBGScrollX( so->scroll );
}
static bool full_scroll_update( unsigned char delta )
{
	//engine_font_manager_data( delta, 10, 16 );
	struct_scroll_object *so = &global_scroll_object;
	bool newTile;
	//const unsigned char delta = 1;

	so->scroll -= delta;
	so->scrollRight += delta;
	// IMPORTANT - performance improvement - would like to test to triple check but looks good at the mo'	09-Jan-2023
	if( so->scrollRight >= SCROLL_COLUMNS )
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

	return newTile;
}


static void lineScrollHandler( void )
{
	struct_scroll_object *so = &global_scroll_object;
	//unsigned int val = scroll_x[ lineCnt++ ] >> 8;
	unsigned int val = so->scroll_x[ so->lineCnt++ ];

	devkit_SMS_setBGScrollX( val );
}