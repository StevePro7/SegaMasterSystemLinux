#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 1;

// Methods.
void engine_scroll_manager_init( unsigned char *level_data )
{
	struct_scroll_object *so = &global_scroll_object;
	so->level_data = level_data;
	so->next_row = level_data;

	so->scrollleft = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;
	//so->offset_left = 0;
	//so->offset_right = 31;
	so->column_X = 0;
	so->scroll_X = 31;

	devkit_SMS_setBGScrollX( so->column_X );
	
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
}

void engine_scroll_manager_draw()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char column_X;
	unsigned int scroll_X;
	unsigned char y;
	unsigned int base_tile, tile;

	column_X = 0;// so->column_X;
	scroll_X = 32;// so->scroll_X;

	base_tile = 256;

	for( y = 0; y < 23; y++ )
	{
		devkit_SMS_setNextTileatXY( column_X, y );

		tile = base_tile;
		devkit_SMS_setTile( tile );
	}
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	//struct_scroll_object *so = &global_scroll_object;
	//unsigned int idx = so->offset_left + col;
	//return tiles[ idx  ];
	return col;
}

