#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_turtle_manager_draw_sea()
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char x, y;
	for( y = 0; y < 24; y++ )
	{
		for( x = 0; x < 32; x++ )
		{
			devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 3 );
		}
	}
}


void engine_turtle_manager_draw_01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 1, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 2, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 3, y - 1 );	devkit_SMS_setTile( *pnt + 3 );

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

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 3 );

}

void engine_turtle_manager_draw_02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 1, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 2, y - 1 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 3, y - 1 );	devkit_SMS_setTile( *pnt + 3 );

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

	devkit_SMS_setNextTileatXY( x + 0, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 1, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 2, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
	devkit_SMS_setNextTileatXY( x + 3, y + 3 );	devkit_SMS_setTile( *pnt + 3 );
}