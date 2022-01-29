#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include <stdlib.h>

static unsigned int offset;
static void draw_turtle( unsigned char x, unsigned char y, unsigned char temp );

void engine_content_manager_draw_tile( unsigned char x, unsigned char y )
{
	draw_turtle( x, y, 0 );
}
void engine_content_manager_draw_tile2( unsigned char x, unsigned char y )
{
	draw_turtle( x, y, 12 );
}

void draw_turtle( unsigned char x, unsigned char y, unsigned char temp )
{
	const unsigned char *pnt = back_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + temp + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + temp + 1 );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + temp + 2 );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + temp + 3 );

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + temp + 4 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + temp + 5 );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + temp + 6 );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + temp + 7 );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + temp + 8 );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + temp + 9 );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + temp + 10 );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + temp + 11 );
}

void engine_tilemap_manager_draw_tile( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = back_tiles__tilemap__bin;
	unsigned int index = 0;
	//unsigned char base = 12;			// down
	unsigned char base = 0;			// up

	index = ( base + offset ) * 2 + 0;
	devkit_SMS_loadTileMap( x, y - 0, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	index = ( base + offset ) * 2 + 8;
	devkit_SMS_loadTileMap( x, y + 1, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each
	
	index = ( base + offset ) * 2 + 16;
	devkit_SMS_loadTileMap( x, y + 2, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	offset++;
	if( offset >= 4 )
	{
		offset = 0;
	}
}


// zoom sprites
void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );
}
