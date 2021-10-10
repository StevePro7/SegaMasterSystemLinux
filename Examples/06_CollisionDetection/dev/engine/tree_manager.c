#include "tree_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

static void draw( unsigned char x, unsigned char y );

void engine_tree_manager_draw()
{
	unsigned char tx = 0;
	unsigned char ty = 0;

	for( tx = 2; tx < 26; tx += 2 )
	{
		draw( tx, 0 );
		draw( tx, 22 );
	}

	for( ty = 2; ty < 22; ty += 2 )
	{
		draw( 2, ty );
		draw( 24, ty );
	}
}

static void draw( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = tree_avoid__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 ); devkit_SMS_setTile( *pnt + 1 );
	devkit_SMS_setNextTileatXY( x + 0, y + 1 ); devkit_SMS_setTile( *pnt + 2 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 ); devkit_SMS_setTile( *pnt + 3 );
}