#include "tree_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Private helper functions.
static void draw( unsigned char x, unsigned char y );
static void engine_tree_manager_draw_border();
static void engine_tree_manager_draw_inside();

void engine_tree_manager_draw()
{
	engine_tree_manager_draw_border();
	engine_tree_manager_draw_inside();
}

static void engine_tree_manager_draw_border()
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

static void engine_tree_manager_draw_inside()
{
	unsigned char tx = 0;
	unsigned char ty = 0;
	for( tx = 8; tx < 20; tx += 2 )
	{
		draw( tx, 8 );
		draw( tx, 14 );
	}
	for( ty = 10; ty < 14; ty += 2 )
	{
		draw( 8, ty );
		draw( 18, ty );
	}
}

static void draw( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 ); devkit_SMS_setTile( *pnt + 1 );
	devkit_SMS_setNextTileatXY( x + 0, y + 1 ); devkit_SMS_setTile( *pnt + 2 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 ); devkit_SMS_setTile( *pnt + 3 );
}