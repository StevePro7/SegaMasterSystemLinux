#include "sprite_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"

void engine_sprite_manager_draw( unsigned char x, unsigned char y )
{
	const unsigned char size = 1;
	unsigned int tile = SPRITE_TILES;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	//devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	//devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
	//devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );

}