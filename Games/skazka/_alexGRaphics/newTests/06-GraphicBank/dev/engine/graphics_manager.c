#include "graphics_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include "../banks/bank2.h"

void engine_graphics_manager_draw_border()
{
	const unsigned char *pnt = border__tilemap__bin;
	unsigned char idx;

	devkit_SMS_setNextTileatXY( 0, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( 0, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );

	// Vertical.
	for( idx = 1; idx <= TILES_HEIGHT - 2; idx++ )
	{
		devkit_SMS_setNextTileatXY( 0, idx ); devkit_SMS_setTile( *pnt + 1 );
		devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, idx ); devkit_SMS_setTile( *pnt + 1 );
	}
	// Horizontal.
	for( idx = 1; idx <= TILES_WIDTH - 2; idx++ )
	{
		devkit_SMS_setNextTileatXY( idx, 0 ); devkit_SMS_setTile( *pnt + 2 );
		devkit_SMS_setNextTileatXY( idx, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 2 );
	}
}

void engine_graphics_manager_draw_logo_big( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = logo_big__tilemap__bin;
	unsigned char wide = 28;
	unsigned char high = 5;
	unsigned char i, j;

	unsigned int tile = 0;
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			tile++;
		}
	}
}

void engine_graphics_manager_draw_koschey( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = koschey__tilemap__bin;
	unsigned char wide = 12;
	unsigned char high = 15;
	unsigned char i, j;
	unsigned char idx = 0;

	unsigned int tile = 0;
	unsigned int palette = devkit_TILE_USE_SPRITE_PALETTE();
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			tile = ( ENEMY_TILES + idx) | palette;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}