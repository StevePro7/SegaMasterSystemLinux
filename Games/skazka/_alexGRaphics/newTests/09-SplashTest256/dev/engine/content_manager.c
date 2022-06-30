#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0
#define LOGO_TILES		64
#define SPRITE_TILES	256

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) background__palette__bin );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) splash__tiles__psgcompr, LOGO_TILES );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) logo_big__tiles__psgcompr, SPRITE_TILES + 16 );
	devkit_SMS_loadSpritePalette( ( void * ) logo_big__palette__bin );
	//devkit_SMS_loadSpritePalette( ( void * ) background__palette__bin );
}

void engine_content_manager_draw_logo1()
{
	const unsigned char wide = 32;
	const unsigned char high = 24;
	unsigned char x, y;
	unsigned int index = 0;
	unsigned int value = 0;
	unsigned int tile = 0;
	unsigned char i, j;

	x = 0;
	y = 0;
	for( j = 0; j < high; j++ )
	{
		//if( j == 21 )
		//{
		//	j = 21;
		//}
		for( i = 0; i < wide; i++ )
		{
			index = j * wide + i;
			value = index * 2;
			tile = splash__tilemap__bin[ value ];
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( tile );
		}
	}
}

void engine_content_manager_draw_logo2()
{
	const unsigned char *pnt = logo_big__tilemap__bin;
	unsigned char wide;
	unsigned char high;
	unsigned char x, y;
	unsigned char i, j;
	unsigned char idx = 0;
	unsigned int tile;
	unsigned int palette;

	palette = devkit_TILE_USE_SPRITE_PALETTE();
	wide = 28;
	high = 5;
	x = 2;
	y = 2;
	j = 0;
	i = 0;
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			tile = ( SPRITE_TILES + idx ) | palette;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}