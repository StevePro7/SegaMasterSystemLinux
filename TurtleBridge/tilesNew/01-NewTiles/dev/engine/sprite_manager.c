#include "sprite_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "../object/tile_object.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_seaX( unsigned char equator )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_dataX[ tile_type_wave_equator ];
	const unsigned char wide = tile_object_wideX[ tile_type_wave_equator ];
	const unsigned char high = tile_object_highX[ tile_type_wave_equator ];

	unsigned char idx;
	unsigned char val;
	unsigned char row, col, mul;

	unsigned char x = 0;
	unsigned char y = SCREEN_HIGH - equator;
	for( row = 0; row < equator; row++ )
	{
		for( col = 0; col < wide; col++ )
		{
			idx = row * wide + col;
			val = array[ idx ];

			// 8x pillars 4x tiles wide.
			for( mul = 0; mul < 8; mul++ )
			{
				devkit_SMS_setNextTileatXY( x + col + ( mul * 4 ), y + row );
				devkit_SMS_setTile( ( *tiles + val ) );
			}
		}
	}
}


void engine_tile_manager_draw_normX( unsigned char type, unsigned char x, unsigned char y )
{
	engine_tile_manager_draw_offsetX( type, 0, x, y );
}

void engine_tile_manager_draw_flipX( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_dataX[ type ];
	const unsigned char wide = tile_object_wideX[ type ];
	const unsigned char high = tile_object_highX[ type ];

	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	unsigned int flip = devkit_TILE_FLIPPED_X();
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( tmp = 0; tmp < wide; tmp++ )
		{
			col = wide - tmp - 1;
			idx = row * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) | flip );
			spc++;
		}
	}
}

void engine_tile_manager_draw_moveX( unsigned char type, unsigned char move, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_dataX[ type ];
	const unsigned char wide = tile_object_wideX[ type ];
	const unsigned char high = tile_object_highX[ type ];

	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	tmp = move * high;
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( col = 0; col < wide; col++ )
		{
			idx = ( row + tmp ) * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) );
			spc++;
		}
	}
}


// zoom sprites
void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;
	tile = SPRITE_TILES + tile * 4;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );
}

void engine_sprite_manager_fish( unsigned char x, unsigned char y )
{
	unsigned int tile;
	tile = 20; engine_sprite_manager_draw( x + 0, y, tile );
	tile = 21; engine_sprite_manager_draw( x + 32, y, tile );
	tile = 22; engine_sprite_manager_draw( x + 64, y, tile );
}