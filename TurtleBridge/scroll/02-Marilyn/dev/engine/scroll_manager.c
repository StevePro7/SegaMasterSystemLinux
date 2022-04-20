#include "scroll_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;


// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll = 0;
	so->test = 32 * 8 - 1;
}

void engine_scroll_manager_up()
{
	
}

void engine_scroll_manager_down()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned int blah;
	unsigned int y;

	if( so->scroll < so->test )
	{
		so->scroll++;
		devkit_SMS_setBGScrollY( so->scroll );

		if( ( so->scroll % 8 ) == 0 )
		{
			blah = ( 24 + ( so->scroll / 8 ) );
			blah = blah * 32 * 2;

			y = ( 24 + ( so->scroll / 8 ) ) % 28;
			//SMS_loadTileMap(0, y, (void *)&MM__tilemap__bin[blah], 32 * 2);  // 32 tiles * 2 bytes each 
			devkit_SMS_loadTileMap( 0, ( 24 + ( so->scroll / 8 ) ) % 28, ( void * ) &MM__tilemap__bin[ ( 24 + ( so->scroll / 8 ) ) * 32 * 2 ], 32 * 2 );  // 32 tiles * 2 bytes each 
		}
	}
}