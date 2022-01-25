#include "scroll_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

//unsigned int BG_TILE_WIDTH = 64;
unsigned int X_TILE_MAX = 32;
//unsigned int X_TILE_DIFF = 6; // 64 - 32;
//unsigned int Y_TILE_MAX = 24;

unsigned char test = 0;
unsigned int test2 = 0;
unsigned char scroll = 0;
//unsigned int scrollDivided8 = 0;
unsigned char scrollRight = 0;
unsigned char scrollRightDivided8 = 0;
//unsigned int xtile = 0;
unsigned int ytile = 0;
//unsigned int yDelta = 0;


void engine_scroll_manager_init()
{
	ytile = 16;
}

void engine_scroll_manager_update()
{
	const unsigned char delta = 1;

	test2++;
	if( test2 > 0 )
	{
		test2 = 0;

		scroll -= delta;
		scrollRight += delta;
		scrollRightDivided8 = scrollRight / 8;
		devkit_SMS_setBGScrollX( scroll );

		// This works but does not update the top row
		if( ( scrollRight % 8 ) == delta )
		{
			//scrollRightDivided8 = scrollRight / 8;
			test = scrollRightDivided8 % 2;

			engine_tilemap_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1 );
		}
	}
}
