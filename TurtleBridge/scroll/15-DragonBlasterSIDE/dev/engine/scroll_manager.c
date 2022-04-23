#include "scroll_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;

static void decompress_map_row( unsigned char *buffer );
static unsigned char delta = 1;

// Methods.
void engine_scroll_manager_init( unsigned char *level_data )
{
	struct_scroll_object *so = &global_scroll_object;
	so->level_data = level_data;
	so->next_row = level_data;
	so->background_y = SCROLL_CHAR_H - 2;

	so->scrollleft = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;
	so->column_X = 0;
	so->scroll_X = 31;

	devkit_SMS_setBGScrollX( so->column_X );
}

void engine_scroll_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;

	so->scrollleft -= delta;
	so->scrollRight += delta;

	// scroll pixel by pixel
	devkit_SMS_setBGScrollX( so->scrollleft );

	if( ( so->scrollRight % 8 ) != delta )
	{
		return;
	}

	// Add new column!
	so->scrollRightDivided8 = so->scrollRight / 8;
	so->scroll_X++;
	so->column_X = so->scroll_X % SCREEN_WIDE;

	engine_scroll_manager_draw();
}

void engine_scroll_manager_draw()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char column_X;
	unsigned int scroll_X;
	unsigned char y;
	unsigned int base_tile, tile;
	unsigned char *map_char;
	unsigned char buffer[ 16 ];

	decompress_map_row( buffer );
	column_X = so->column_X;
	scroll_X = so->scroll_X;

	base_tile = 256;
	map_char = buffer;
	for( y = 0; y < 32; y+=2 )
	{
		if( y > 28 )
		{
			continue;
		}

		tile = base_tile + ( *map_char << 2 );
		map_char++;

		devkit_SMS_setNextTileatXY( column_X, y + 0 );
		devkit_SMS_setTile( tile );

		devkit_SMS_setNextTileatXY( column_X, y + 1 );
		devkit_SMS_setTile( tile );
	}

	if( *so->next_row == 0xFF )
	{
		// Reached the end of the map; reset
		so->next_row = so->level_data;
	}
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	//struct_scroll_object *so = &global_scroll_object;
	//unsigned int idx = so->offset_left + col;
	//return tiles[ idx  ];
	return col;
}
static void decompress_map_row( unsigned char *buffer )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char *o, *d;
	unsigned char remaining, ch, repeat;

	unsigned char test;

	o = so->next_row;
	d = buffer;
	for( remaining = 16; remaining; )
	{
		ch = *o;
		o++;

		test = ch & 0x80;
		if( ch & 0x80 )
		{
			// Has repeat flag: repeat n times
			repeat = ch & 0x7F;
			ch = *o;
			o++;

			for( ; repeat && remaining; repeat--, remaining-- ) {
				*d = ch;
				d++;
			}
		}
		else
		{
			// Just use the char
			*d = ch;
			d++;
			remaining--;
		}
	}

	so->next_row = o;
}