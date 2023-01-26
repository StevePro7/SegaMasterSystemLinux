#include "sprite_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdlib.h>

void engine_sprite_manager_clear( unsigned char ch )
{
	unsigned char row, col;
	for( row = 0; row < 24; row++ )
	{
		for( col = 0; col < 32; col++ )
		{
			engine_font_manager_char( ch, col, row );
		}
	}
}

void engine_sprite_manager_draw( unsigned char idx, unsigned char x, unsigned char y )
{
	const unsigned char wide = 4;
	const unsigned char high = 4;
	unsigned char num;

	unsigned char i, j;

	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * 4 + i;
			devkit_SMS_addSprite( x + i * 8, y + j * 8, SPRITE_TILES + num );
		}
	}
}

//void engine_sprite_manager_fish( unsigned char x, unsigned char y )
//{
	//unsigned int tile;
	//tile = 20; engine_sprite_manager_draw( x + 0, y, tile );
	//tile = 21; engine_sprite_manager_draw( x + 32, y, tile );
	//tile = 22; engine_sprite_manager_draw( x + 64, y, tile );
//}

//void engine_sprite_manager_octopus( unsigned char x, unsigned char y )
//{
//	unsigned int tile;
//	tile = 20; engine_sprite_manager_draw( x + 0, y, tile );
//	tile = 21; engine_sprite_manager_draw( x + 32, y, tile );
//	tile = 22; engine_sprite_manager_draw( x + 64, y, tile );
//}