#include "sprite_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_draw( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char tile = 0;

	unsigned char w;
	unsigned char h;

	for( h = 0; h < 6; h++ )
	{
		for( w = 0; w < 6; w++ )
		{
			devkit_SMS_setNextTileatXY( x + w, y + h );
			devkit_SMS_setTile( *pnt + tile );
			tile++;
		}
	}
	
}
