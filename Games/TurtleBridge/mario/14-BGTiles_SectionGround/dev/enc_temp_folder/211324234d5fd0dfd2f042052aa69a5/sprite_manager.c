#include "sprite_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_draw( unsigned char x, unsigned char y, unsigned char tile )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	devkit_SMS_setNextTileatXY( x, y );
	devkit_SMS_setTile( *pnt + tile + GAME_TILES);
}
