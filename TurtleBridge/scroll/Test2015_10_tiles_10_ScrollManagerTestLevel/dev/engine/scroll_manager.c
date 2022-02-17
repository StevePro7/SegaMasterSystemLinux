#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include "../banks/bank3.h"

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
	so->offset_left = 0;
	so->offset_right = 31;

	devkit_SMS_setBGScrollX( so->scroll );
}

void engine_scroll_manager_load()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char t, x;
	print();

	devkit_SMS_mapROMBank( level0301_txt_bank );
	for( x = 0; x < 32; x++ )
	{
		t = level0301_txt[ x ];
		if( t == 0 )
		{
			continue;;
		}

		engine_font_manager_draw_text( "X", x, level0301_txt[x] );
	}
}

void engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	const unsigned char *pnt = font_tiles__tilemap__bin;
	unsigned int idx;

	unsigned char x;
	unsigned char y;
	unsigned int *src;

	//unsigned int index = 0;
	unsigned int offset = 0;
	unsigned char base = 0;

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
	so->offset_left++;
	so->offset_right++;


	x = so->offset_right % SCREEN_WIDE;
	//x = so->offset_right;					// will wrap every 32 down 1x forever
	//x = 32 + so->scrollRightDivided8;		// will wrap every 32 only once as is % 32 i.e. 32 + (0-31)
	src = ( void * ) &pnt[ 0 ];	// space
	devkit_SMS_loadTileMap( x, 18, src, 2 );
	devkit_SMS_loadTileMap( x, 19, src, 2 );
	devkit_SMS_loadTileMap( x, 20, src, 2 );
	devkit_SMS_loadTileMap( x, 21, src, 2 );
	devkit_SMS_loadTileMap( x, 22, src, 2 );

	idx = so->offset_right;

	// IMPORTANT - here 8 is tile 4 * x	remember 2x bytes for each tile loaded from the TILEMAP
	// i.e. so 8 => 4 i.e. 8/2 = 4 and 4 is tile '$'.
	devkit_SMS_mapROMBank( level0301_txt_bank );
	y = level0301_txt[ idx ];
	//src = ( void * ) &pnt[ index ];
	src = ( void * ) &pnt[ 16 ];				// 8 == "$"
	devkit_SMS_loadTileMap(x, y-0, src, 2 );

	print();
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned int idx = so->offset_left + col;
	devkit_SMS_mapROMBank( level0301_txt_bank );
	return level0301_txt[ idx  ];
}

static void print()
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scroll, 25, 0 );
	engine_font_manager_draw_data( so->scrollRight, 25, 1 );
	engine_font_manager_draw_data( so->scrollRightDivided8, 25, 2 );

	engine_font_manager_draw_data( so->offset_left, 25, 5 );
	engine_font_manager_draw_data( so->offset_right, 25, 6 );

	engine_font_manager_draw_data( so->scroll + so->scrollRight, 25, 8 );
	//engine_font_manager_draw_data( so->scroll, so->scroll, 1 );

	engine_font_manager_draw_text( "      ", 21, 9 );
	if( ( so->scrollRight % 8 ) == delta )
	{
		engine_font_manager_draw_text( "SCROLL", 21, 9 );
	}
}