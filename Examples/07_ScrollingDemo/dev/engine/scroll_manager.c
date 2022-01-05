#include "scroll_manager.h"
#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

// 400px wide / 8px tiles
unsigned int BG_TILE_WIDTH = 50;		// Hockey = 400 x 192	i.e. 50 x 8 tiles wide
unsigned int X_TILE_MAX = 32;
unsigned int Y_TILE_MAX = 24;

static unsigned char delta = 2;
static unsigned int scroll = 0;
static unsigned int scrollDivided8 = 0;
static unsigned int scrollRight = 0;
static unsigned int scrollRightDivided8 = 0;

void engine_scroll_manager_load()
{
	unsigned int ytile = 0;
	for( ytile = 0; ytile < Y_TILE_MAX; ytile++ )
	{
		// 32 tiles * 2 bytes each.
		unsigned char *src = ( void * ) &hockey__tilemap__bin[ BG_TILE_WIDTH * ytile * 2 ];
		int size = X_TILE_MAX * 2;

		devkit_SMS_loadTileMap( 0, ytile, src, size );
	}
}

void engine_scroll_manager_update_left()
{
	unsigned int ytile = 0;
	if( scrollRight > 0 )
	{
		scroll += delta;
		scrollRight -= delta;
		scrollRightDivided8 = scrollRight / 8;
		devkit_SMS_setBGScrollX( scroll );

		if( ( scrollRight % 8 ) == 0 )
		{
			for( ytile = 1; ytile < Y_TILE_MAX; ytile++ )
			{
				// 1 tile * 2 bytes.
				unsigned char x = X_TILE_MAX + scrollRightDivided8;
				unsigned char y = ytile - 1;
				unsigned char *src = ( void * ) &hockey__tilemap__bin[ ( ( BG_TILE_WIDTH*ytile ) + scrollRightDivided8 ) * 2 ];

				devkit_SMS_loadTileMap( x, y, src, 2 );
			}
		}
	}
}

void engine_scroll_manager_update_right()
{
	unsigned int ytile = 0;
	if( scrollRightDivided8 < ( BG_TILE_WIDTH - X_TILE_MAX ) )
	{
		scroll -= delta;
		scrollRight += delta;
		scrollRightDivided8 = scrollRight / 8;
		devkit_SMS_setBGScrollX( scroll );

		if( ( scrollRight % 8 ) == delta )
		{
			for( ytile = 1; ytile < Y_TILE_MAX; ytile++ )
			{
				unsigned char x = X_TILE_MAX + scrollRightDivided8;
				unsigned char y = ytile - 1;
				unsigned char *src = ( void * ) &hockey__tilemap__bin[ ( ( BG_TILE_WIDTH*ytile ) + ( X_TILE_MAX + scrollRightDivided8 ) ) * 2 ];

				devkit_SMS_loadTileMap( x, y, src, 2 );
			}
		}
	}
}