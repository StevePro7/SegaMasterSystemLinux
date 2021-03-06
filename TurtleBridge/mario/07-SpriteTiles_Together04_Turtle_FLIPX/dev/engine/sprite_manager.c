#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_turtle_manager_draw_01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtle_tiles_01__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + 4 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + 5 );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + 6 );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + 7 );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + 8 );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + 9 );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + 10 );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + 11 );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 12 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 13 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 14 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 15 );
}

void engine_turtle_manager_draw_02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtle_tiles_02__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + 4 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + 5 );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + 6 );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + 7 );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + 8 );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + 9 );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + 10 );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + 11 );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 12 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 13 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 14 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 15 );
}

void engine_turtle_manager_draw_03( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtle_tiles_01__tilemap__bin;
	unsigned int priority = devkit_TILE_FLIPPED_X();

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( ( *pnt + 7) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( ( *pnt + 6) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( ( *pnt + 5) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( ( *pnt + 4) | priority );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( ( *pnt + 11 ) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( ( *pnt + 10 ) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( ( *pnt + 9 ) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( ( *pnt + 8 ) | priority );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( ( *pnt + 15 ) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( ( *pnt + 14 ) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( ( *pnt + 13 ) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( ( *pnt + 12 ) | priority );
}

void engine_turtle_manager_draw_04( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtle_tiles_02__tilemap__bin;
	unsigned int priority = devkit_TILE_FLIPPED_X();

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( ( *pnt + 7 ) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( ( *pnt + 6 ) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( ( *pnt + 5 ) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( ( *pnt + 4 ) | priority );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( ( *pnt + 11 ) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( ( *pnt + 10 ) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( ( *pnt + 9 ) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( ( *pnt + 8 ) | priority );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( ( *pnt + 15 ) | priority );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( ( *pnt + 14 ) | priority );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( ( *pnt + 13 ) | priority );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( ( *pnt + 12 ) | priority );
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

void engine_sprite_manager_drawX( unsigned char x, unsigned char y, unsigned int tile )
{
	// Cannot flip on sprites!
	const unsigned char size = 2;
	unsigned int priority = devkit_TILE_USE_SPRITE_PALETTE() | devkit_TILE_FLIPPED_Y();

	devkit_SMS_addSprite( x + size * 0, y + size * 0, ( tile + 0 ) | priority );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, ( tile + 1 ) | priority );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, ( tile + 2 ) | priority );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, ( tile + 3 ) | priority );
}
