#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

//void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
//{
//	devkit_SMS_addSprite( x + 0, y + 0, tile + 0 );
//	devkit_SMS_addSprite( x + 8, y + 0, tile + 1 );
//	devkit_SMS_addSprite( x + 16, y + 0, tile + 2 );
//	devkit_SMS_addSprite( x + 24, y + 0, tile + 3 );
//
//	devkit_SMS_addSprite( x + 0, y + 8, tile + 4 );
//	devkit_SMS_addSprite( x + 8, y + 8, tile + 5 );
//	devkit_SMS_addSprite( x + 16, y + 8, tile + 6 );
//	devkit_SMS_addSprite( x + 24, y + 8, tile + 7 );
//
//	devkit_SMS_addSprite( x + 0, y + 16, tile + 8 );
//	devkit_SMS_addSprite( x + 8, y + 16, tile + 9 );
//	devkit_SMS_addSprite( x + 16, y + 16, tile + 10 );
//	devkit_SMS_addSprite( x + 24, y + 16, tile + 11 );
//
//	devkit_SMS_addSprite( x + 0, y + 24, tile + 12 );
//	devkit_SMS_addSprite( x + 8, y + 24, tile + 13 );
//	devkit_SMS_addSprite( x + 16, y + 24, tile + 14 );
//	devkit_SMS_addSprite( x + 24, y + 24, tile + 15 );
//}

void engine_turtle_manager_draw_01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + 1 );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + 2 );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + 3 );

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
	const unsigned char *pnt = font_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + 1 );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + 2 );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + 3 );

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


// zoom sprites
void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );
}
