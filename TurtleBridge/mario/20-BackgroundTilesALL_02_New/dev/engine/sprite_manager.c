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

void draw_tops( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char z;

	for( z = 0; z < 23; z++ )
	{
		devkit_SMS_setNextTileatXY( x + z, y + 0 );
		devkit_SMS_setTile( *pnt + 139 );
	}
}


void draw_ones( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	devkit_SMS_setNextTileatXY( x + 0, y + 0 );
	devkit_SMS_setTile( *pnt + 139 );
}

void draw_four( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char z;

	for( z = 0; z < 3; z++ )
	{
		devkit_SMS_setNextTileatXY( x + z, y + 0 );
		devkit_SMS_setTile( *pnt + 139 );
	}
}
void draw_five( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char z;

	for( z = 0; z < 5; z++ )
	{
		devkit_SMS_setNextTileatXY( x + 0, y + z );
		devkit_SMS_setTile( *pnt + 139 );
	}
}

void engine_turtle_manager_draw_title( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	draw_tops( x, y - 2 );

	draw_four( x + 0, y + 0 );
	draw_five( x + 1, y + 0);

	draw_five( x + 4, y + 0 );
	draw_five( x + 6, y + 0 );
	draw_four( x + 4, y + 4 );

	draw_five( x + 8, y + 0);
	draw_ones( x + 9, y + 0 );
	draw_ones( x + 9, y + 2 );
	draw_ones( x + 10, y + 1 );
	draw_ones( x + 10, y + 3 );
	draw_ones( x + 10, y + 4 );

	draw_four( x + 12, y + 0 );
	draw_five( x + 13, y + 0 );

	draw_five( x + 16, y + 0 );
	draw_four( x + 16, y + 4 );

	draw_four( x + 20, y + 0 );
	draw_four( x + 20, y + 2 );
	draw_four( x + 20, y + 4 );
	draw_five( x + 20, y + 0 );

	//draw_ones( x + 9, y + 2 );
	//draw_ones( x + 10, y + 1 );
	//draw_ones( x + 10, y + 3 );
	//draw_ones( x + 10, y + 4 );
	
//	draw_five( x + 13, y );
//
//	draw_five( x + 15, y );
//	draw_four( x + 15, y + 6 );
//
//	draw_five( x + 19, y );
//	draw_four( x + 19, y + 0 );
//	draw_four( x + 19, y + 2 );
//	draw_four( x + 19, y + 4 );
}
