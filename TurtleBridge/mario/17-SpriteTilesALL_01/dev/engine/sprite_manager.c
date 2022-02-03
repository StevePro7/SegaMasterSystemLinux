#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 16 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 17 );
}

void engine_sprite_manager_fish( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 16, y + size * 0, tile + 2 );
	devkit_SMS_addSprite( x + size * 24, y + size * 0, tile + 3 );
	devkit_SMS_addSprite( x + size * 32, y + size * 0, tile + 4 );
	devkit_SMS_addSprite( x + size * 40, y + size * 0, tile + 5 );

	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 16 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 17 );
	devkit_SMS_addSprite( x + size * 16, y + size * 8, tile + 18 );
	devkit_SMS_addSprite( x + size * 24, y + size * 8, tile + 19 );
	devkit_SMS_addSprite( x + size * 32, y + size * 8, tile + 20 );
	devkit_SMS_addSprite( x + size * 40, y + size * 8, tile + 21 );
}