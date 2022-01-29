#include "scroll_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;

static unsigned char delta = 1;
static void print();

static unsigned char tiles[] =
{
	0, 20, 20, 20, 20, 20, 0, 20, 21, 21, 21, 22, 22, 0, 22, 22, 21, 21,21, 0, 0, 22, 22, 22, 21, 21,0, 21, 20, 20, 20, 20,
	19, 19, 18, 19, 18, 18, 18, 20, 21, 21, 21, 21, 22, 20, 22, 22, 21, 21,21, 20, 20, 22, 22, 22, 21, 21, 20, 21, 20, 20, 20, 20,
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
	unsigned char t, x;
	print();

	for( x = 0; x < 32; x++ )
	{
		t = tiles[ x ];
		if( t == 0 )
		{
			continue;;
		}

		engine_font_manager_draw_text( "X", x, tiles[x] );
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

	unsigned int index = 0;
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

	//engine_font_manager_draw_text( "A", 32 + so->scrollRightDivided8, 18 );
	//engine_font_manager_draw_text( "B", 32 + so->scrollRightDivided8, 19 );
	//engine_font_manager_draw_text( "C", 32 + so->scrollRightDivided8, 20 );
	//engine_font_manager_draw_text( "D", 32 + so->scrollRightDivided8, 21 );

	x = 32 + so->scrollRightDivided8;
	src = ( void * ) &pnt[ 0 ];
	devkit_SMS_loadTileMap( x, 18, src, 2 );
	devkit_SMS_loadTileMap( x, 19, src, 2 );
	devkit_SMS_loadTileMap( x, 20, src, 2 );
	devkit_SMS_loadTileMap( x, 21, src, 2 );
	devkit_SMS_loadTileMap( x, 22, src, 2 );

	idx = so->offset_right;

	// IMPORTANT - here 8 is tile 4 * x	remember 2x bytes for each tile loaded from the TILEMAP
	// i.e. so 8 => 4 i.e. 8/2 = 4 and 4 is tile '$'.
	index = ( base + offset ) * 2 + 8;
	engine_font_manager_draw_data( index, 25, 0 );
	
	y = tiles[ idx ];
	src = ( void * ) &pnt[ index ];
	devkit_SMS_loadTileMap(x, y-1, src, 2 );

	//engine_font_manager_draw_text( "X", 32 + so->scrollRightDivided8, tiles[ idx ] - 1);
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
	//engine_font_manager_draw_data( so->scroll, 25, 0 );
	engine_font_manager_draw_data( so->scrollRight, 25, 1 );
	engine_font_manager_draw_data( so->scrollRightDivided8, 25, 2 );
	engine_font_manager_draw_data( so->scrollRight % 8, 25, 3 );

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