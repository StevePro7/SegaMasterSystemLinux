#include "sprite_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
//#include "../object/tile_object.h"
#include "../devkit/_sms_manager.h"
//#include "../content/gfx.h"
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

// zoom sprites
//void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
//{
//	const unsigned char size = 2;
//	tile = SPRITE_TILES + tile * 4;
//
//	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
//	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
//	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
//	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );
//}

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