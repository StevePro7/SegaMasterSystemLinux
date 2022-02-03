#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_turtle01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	unsigned char start = 0;
	unsigned char index = 0;
	unsigned char count = 74;

	unsigned char ax, ay;
	unsigned char mx, my;
	unsigned char row = 0;
	mx = 4;
	my = 3;

	for( ay = 0; ay < my; ay++ )
	{
		for( ax = 0; ax < mx; ax++ )
		{
			index = pnt[ start + count * 2 ];
			count++;

			devkit_SMS_setNextTileatXY( x + ax, y + ay );
			devkit_SMS_setTile( *pnt + index );
		}
	}
}