#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_sea( unsigned char x, unsigned char y, unsigned char offset );

void engine_sprite_manager_tile( unsigned char x, unsigned char y, unsigned char offset )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );
	devkit_SMS_setTile( *pnt + offset );
}

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

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 28 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 29 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 30 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 31 );
}

void engine_turtle_manager_draw_03( unsigned char x, unsigned char y )
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

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + 24 );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + 25 );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + 26 );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + 27 );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 28 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 29 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 30 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 31 );
}

void engine_turtle_manager_draw_04( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + 1 );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + 2 );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + 3 );

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + 20 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + 21 );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + 22 );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + 23 );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + 24 );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + 25 );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + 26 );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + 27 );

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 28 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 29 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 30 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 31 );
}

void engine_turtle_manager_draw_sea()
{
	unsigned char x;
	unsigned char y;

	for( y = 0; y <= 16; y++ )
	{
		for( x = 0; x < 32; x+=4 )
		{
			draw_sea( x, y, 32 );
		}
	}

	for( y = 18; y < 24; y++ )
	{
		for( x = 0; x < 32; x += 4 )
		{
			draw_sea( x, y, 33 );
		}
	}
}
static void draw_sea( unsigned char x, unsigned char y, unsigned char offset )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + offset );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + offset );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + offset );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + offset );
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
