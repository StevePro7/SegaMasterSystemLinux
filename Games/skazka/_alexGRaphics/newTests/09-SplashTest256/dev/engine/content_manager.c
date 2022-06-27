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
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) logo_small__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) background__palette__bin );
}

void engine_content_manager_draw_logo1()
{
	const unsigned char wide = 32;
	const unsigned char high = 22;
	unsigned char x, y;
	unsigned int index = 0;
	unsigned int value = 0;
	unsigned int tile = 0;
	unsigned char i, j;

	x = 0;
	y = 0;
	for( j = 0; j < high; j++ )
	{
		if( j == 21 )
		{
			j = 21;
		}
		for( i = 0; i < wide; i++ )
		{
			index = j * wide + i;
			value = index * 2;
			tile = splash__tilemap__bin[ value ];
			//tile = logo_big__tilemap__bin[ value ] | palette;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( tile );
		}
	}
}

void engine_content_manager_draw_logo2()
{
	const unsigned char *pnt = splash__tilemap__bin;
	unsigned char x, y;
	unsigned char i, j;
	unsigned char idx = 0;
	unsigned int tile;
	//unsigned int palette;

	//palette = devkit_TILE_USE_SPRITE_PALETTE();
	j = 0;
	i = 0;
	for( j = 0; j < 5; j++ )
	{
		for( i = 0; i < 28; i++ )
		{
			x = 2 + i;
			y = 2 + j;
			tile = ( 0 + idx );
			devkit_SMS_setNextTileatXY( x, y );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}
//
//void engine_content_manager_draw_logo2()
//{
//	const unsigned char *pnt = logo_small__tilemap__bin;
//	unsigned char x, y;
//	unsigned char i, j;
//	unsigned char idx = 0;
//	unsigned int tile;
//	unsigned int palette;
//
//	palette = devkit_TILE_USE_SPRITE_PALETTE();
//	j = 0;
//	i = 0;
//	for( j = 0; j < 3; j++ )
//	{
//		for( i = 0; i < 30; i++ )
//		{
//			x = 1 + i;
//			y = 12 + j;
//			tile = ( 256 + idx ) | palette;
//			devkit_SMS_setNextTileatXY( x, y );
//			devkit_SMS_setTile( *pnt + tile );
//			idx++;
//		}
//	}
//}