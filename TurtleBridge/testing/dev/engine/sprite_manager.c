#include "sprite_manager.h"
//#include "enum_manager.h"
//#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"

void engine_sprite_manager_draw_tile( unsigned char mode, unsigned char x, unsigned char y )
{
	devkit_SMS_addSprite( x + mode * 0, y + mode * 0, SPRITE_TILES );
	devkit_SMS_addSprite( x + mode * 8, y + mode * 0, SPRITE_TILES );
	devkit_SMS_addSprite( x + mode * 0, y + mode * 8, SPRITE_TILES );
	devkit_SMS_addSprite( x + mode * 8, y + mode * 8, SPRITE_TILES );
}

void engine_sprite_manager_draw_player( unsigned char idx, unsigned char mode, unsigned char x, unsigned char y )
{
	const unsigned char wide = 4;
	const unsigned char high = 4;
	unsigned char num;
	
	unsigned char i, j;
	if( 0 == idx || 1 == idx || 2 == idx || 4 == idx || 6 == idx || 8 == idx )
	{
		x += 4 * mode;
	}
	else //if( 3 == idx || 1 == idx || 2 == idx )
	{
		y += 4 * mode;
	}
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * wide + i;
			devkit_SMS_addSprite( x + i * mode * 8, y + j * mode * 8, SPRITE_TILES + num );
		}
	}
}
