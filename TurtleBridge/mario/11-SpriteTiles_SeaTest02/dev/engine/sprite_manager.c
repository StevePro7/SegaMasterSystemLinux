#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_sea( unsigned char x, unsigned char y, unsigned char offset );
static void draw_bod( const unsigned char *pnt, unsigned char x, unsigned char y );

void engine_sprite_manager_tile( unsigned char x, unsigned char y, unsigned char offset )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );
	devkit_SMS_setTile( *pnt + offset );
}

static void draw_bod( const unsigned char *pnt, unsigned char x, unsigned char y )
{
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

	//devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 12 );
	//devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 13 );
	//devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 14 );
	//devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 15 );
}

void engine_turtle_manager_draw_00( unsigned char x, unsigned char y )
{
	draw_bod( turtle00__tilemap__bin, x, y );
}

void engine_turtle_manager_draw_01( unsigned char x, unsigned char y )
{
	draw_bod( turtle01__tilemap__bin, x, y );
}

void engine_turtle_manager_draw_02( unsigned char x, unsigned char y )
{
	draw_bod( turtle02__tilemap__bin, x, y );
}

void engine_turtle_manager_draw_03( unsigned char x, unsigned char y )
{
	draw_bod( turtle03__tilemap__bin, x, y );
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

	//for( y = 22; y < 24; y++ )
	//{
	//	for( x = 0; x < 32; x += 4 )
	//	{
	//		draw_sea( x, y, 33 );
	//	}
	//}
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
