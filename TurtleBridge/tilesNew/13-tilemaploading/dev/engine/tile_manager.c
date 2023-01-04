#include "tile_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_gfx4( unsigned int tmp, unsigned char h )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned x, y;
	unsigned w/*, h*/;
	w = 16;
	//h = 10;
	x = 10;
	y = 12;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}