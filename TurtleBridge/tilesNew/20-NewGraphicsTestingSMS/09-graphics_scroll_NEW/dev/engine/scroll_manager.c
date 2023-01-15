#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

#define PARALLAX_SCROLLING	0
#define SCROLL_COLUMNS		8
//#define SCROLL_COLUMNS		30		TODO - for line interrupt

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

//	struct_scroll_object *so = &global_scroll_object;
//	//->scroll_left = 0;
//	//so->scroll_right = 0;
//	//so->scrollRightDivided8 = 0;
//
//	so->scroll = 0;
//	so->scrollRight = 0;
//	//so->offset_left = 0;
//	so->offset_right = 31;
//
//	devkit_SMS_setBGScrollX( so->scroll );
//	//print( false );
//
//	// NEW
//	so->scroll_x[ 0 ] = 0; 
//	so->scroll_x[ 1 ] = 0;
//	so->scroll_x[ 2 ] = 0;
//	so->scroll_x[ 3 ] = 0;
//	so->scroll_x[ 4 ] = 0;
//	so->scroll_x[ 5 ] = 0;
//	so->scroll_half = 0;
//	so->lineCnt = 0;
//
//	devkit_SMS_setLineInterruptHandler( &lineScrollHandler );
//	devkit_SMS_disableLineInterrupt();
}

void engine_scroll_manager_load()
{
	load_method();
	//devkit_SMS_setLineCounter( count );
	//devkit_SMS_enableLineInterrupt();
}

bool engine_scroll_manager_update( unsigned char delta )
{
	return update_method( delta );
	//struct_scroll_object *so = &global_scroll_object;
	////unsigned char temp;
	//bool newTile;
	//////const unsigned char delta = 1;

	//so->scroll -= delta;
	//so->scrollRight += delta;

	//newTile = false;
	//if( delta > 0 )
	//{
	//	
	//	newTile = so->scrollRight % 8 == delta;
	//	if( newTile )
	//	{
	//		so->offset_right++;
	//	}
	//}

	////temp = 0;
	////temp = so->scroll_x[ 0 ];
	//////engine_font_manager_data( temp, 15, 10 );
	//////engine_font_manager_data( so->scroll_x[ 0 ], 15, 11 );
	////so->scroll_x[ 0 ] = so->scroll_x[ 0 ] - delta;
	//if( delta > 0 )
	//{
	//	so->scroll_half = 1 - so->scroll_half;
	//	so->scroll_x[ 0 ] -= so->scroll_half;
	//}

	//so->scroll_x[ 1 ] -= delta;
	//so->scroll_x[ 2 ] -= delta;
	//so->scroll_x[ 3 ] -= delta;
	//so->scroll_x[ 4 ] -= delta;
	//so->lineCnt = 0;

	////temp = so->scroll_x[ 0 ];
	//////engine_font_manager_data( temp, 25, 12 );
	//////engine_font_manager_data( so->scroll_x[ 0 ], 25, 13 );
	////print( newTile );
	//return newTile;
}

//bool engine_scroll_manager_updateZ()
//{
//	struct_scroll_object *so = &global_scroll_object;
//	bool newTile;
//	const unsigned char delta = 1;
//
//	so->scroll -= delta;
//	so->scrollRight += delta;
//
//	// scroll pixel by pixel
//	devkit_SMS_setBGScrollX( so->scroll );
//	newTile = so->scrollRight % 8 == delta;
//	if( newTile )
//	{
//		so->offset_right++;
//	}
//
//	print( newTile );
//	return newTile;
//}


static void para_scroll_load()
{
	engine_font_manager_data( 12, 10, 4 );
}
static bool para_scroll_update( unsigned char delta )
{
	engine_font_manager_data( delta, 10, 6 );
	return true;
}

static void full_scroll_load()
{
//	engine_font_manager_data( count, 10, 12 );
	struct_scroll_object *so = &global_scroll_object;
	//so->scroll_left = 0;
	//so->scroll_right = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	//so->scrollRightDivided8 = 0;
	//so->offset_left = 0;
	so->offset_right = 31;

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

	//print( newTile );
	return newTile;
}


static void lineScrollHandler( void )
{
	struct_scroll_object *so = &global_scroll_object;
	//unsigned int val = scroll_x[ lineCnt++ ] >> 8;
	unsigned int val = so->scroll_x[ so->lineCnt++ ];

	////engine_font_manager_data( lineCnt, 10, 0 );
	////engine_font_manager_data( val, 20, 0 );
	////engine_font_manager_data( lineCnt, 10, 0 );
	//devkit_SMS_setBGScrollX( ( scroll_x[ lineCnt++ ] ) >> 8 );

	devkit_SMS_setBGScrollX( val );
}