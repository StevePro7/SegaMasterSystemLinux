#include "graphics_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
//#include "../banks/bank3.h"

void engine_graphics_manager_draw_border()
{
	const unsigned char *pnt = border__tilemap__bin;
	//unsigned char idx;

	//devkit_SMS_setNextTileatXY( 0, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( 0, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );
}
