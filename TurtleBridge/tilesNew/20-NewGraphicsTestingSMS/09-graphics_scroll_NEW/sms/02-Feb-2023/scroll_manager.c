#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

#define PARALLAX_SCROLLING		1
#define SCROLL_COLUMNS			8
#define SCROLL_PARA_ARRAY		6
#define SCROLL_LINE_COUNT		30

// Global variable.
struct_scroll_object global_scroll_object;

#ifdef _CONSOLE
#else
#pragma disable_warning 126
#pragma disable_warning 158
#endif

// Private helper functions.
static void( *load_method )( unsigned char screen, int scroll_complete );
static enum_scroll_state( *update_method )( unsigned char delta );
static void lineScrollHandler( void );

static void para_scroll_load( unsigned char screen, int scroll_complete );
static enum_scroll_state para_scroll_update( unsigned char delta );
static void full_scroll_load( unsigned char screen, int scroll_complete );
static enum_scroll_state full_scroll_update( unsigned char delta );

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

void engine_scroll_manager_load( unsigned char screen, int scroll_complete )
{
	load_method( screen, scroll_complete );
}

enum_scroll_state engine_scroll_manager_update( unsigned char delta )
{
	return update_method( delta );
}

static void para_scroll_load( unsigned char screen, int scroll_complete )
{
	struct_scroll_object *so = &global_scroll_object;
	so->scrollRight = 0;
	//so->offset_right = SCREEN_WIDE - 1;
	so->offset_right = ( screen * SCREEN_WIDE ) + SCREEN_WIDE - 1;
	so->scroll_complete = scroll_complete;
	devkit_SMS_setBGScrollX( so->scroll );

	so->scroll_x0 = 0;
	so->scroll_x1 = 0;
	so->scroll_x2 = 0;
	so->scroll_x3 = 0;
	so->scroll_x4 = 0;
	so->scroll_x5 = 0;
	so->scroll_half = 0;
	so->lineCnt = 0;

	devkit_SMS_setLineInterruptHandler( &lineScrollHandler );
	devkit_SMS_setLineCounter( SCROLL_LINE_COUNT );
	devkit_SMS_enableLineInterrupt();
}
static enum_scroll_state para_scroll_update( unsigned char delta )
{
	struct_scroll_object *so = &global_scroll_object;
	enum_scroll_state scroll_state;

	so->scroll -= delta;
	so->scrollRight += delta;
	scroll_state = scroll_state_none;

	if( so->scrollRight >= SCROLL_COLUMNS )
	{
		so->scrollRight = 0;
		if( so->offset_right == so->scroll_complete )
		{
			scroll_state = scroll_state_comp;
		}
	}

	if( delta > 0 )
	{
		if( delta == so->scrollRight )
		{
			scroll_state = scroll_state_tile;
			so->offset_right++;
		}

		// Scroll cloud section at half pace.
		so->scroll_half = 1 - so->scroll_half;
		so->scroll_x0 -= so->scroll_half;
	}

	// Scroll game screen at full pace.
	so->scroll_x1 -= delta;
	so->scroll_x2 -= delta;
	so->scroll_x3 -= delta;
	so->scroll_x4 -= delta;
	so->scroll_x5 -= 0;
	so->lineCnt = 0;

	return scroll_state;
}

static void full_scroll_load( unsigned char screen, int scroll_complete )
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll = 0;
	so->scrollRight = 0;
	so->offset_right = ( screen * SCREEN_WIDE ) + SCREEN_WIDE - 1;
	so->scroll_complete = scroll_complete;
	devkit_SMS_setBGScrollX( so->scroll );
}
static enum_scroll_state full_scroll_update( unsigned char delta )
{
	struct_scroll_object *so = &global_scroll_object;
	enum_scroll_state scroll_state;

	so->scroll -= delta;
	so->scrollRight += delta;
	scroll_state = scroll_state_none;

	// Scroll pixel by pixel.
	devkit_SMS_setBGScrollX( so->scroll );

	if( so->scrollRight >= SCROLL_COLUMNS )
	{
		so->scrollRight = 0;
		if( so->offset_right == so->scroll_complete )
		{
			scroll_state = scroll_state_comp;
		}
	}

	if( delta > 0 )
	{
		if( delta == so->scrollRight )
		{
			scroll_state = scroll_state_tile;
			so->offset_right++;
		}
	}

	return scroll_state;
}

static void lineScrollHandler( void )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char index, value;

	index = so->lineCnt;
	value = 0;
	if( index < SCROLL_PARA_ARRAY )
	{
		if( 0 == so->lineCnt )
		{
			value = so->scroll_x0;
		}
		else if( 1 == so->lineCnt )
		{
			value = so->scroll_x1;
		}
		else if( 2 == so->lineCnt )
		{
			value = so->scroll_x2;
		}
		else if( 3 == so->lineCnt )
		{
			value = so->scroll_x3;
		}
		else if( 4 == so->lineCnt )
		{
			value = so->scroll_x4;
		}
		else if( 5 == so->lineCnt )
		{
			value = so->scroll_x5;
		}

		so->lineCnt++;
		devkit_SMS_setBGScrollX( value );
	}
}
