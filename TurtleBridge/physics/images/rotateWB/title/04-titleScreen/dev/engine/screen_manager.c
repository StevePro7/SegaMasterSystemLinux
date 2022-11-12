#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "jump_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );

void engine_screen_manager_init()
{
	devkit_SMS_displayOff();
	engine_tile_manager_draw_title();
	engine_font_manager_draw_text( "A TRIBUTE TO THE", 8, 22 );
	engine_font_manager_draw_text( "GREATEST DAREDEVIL", 7, 23 );
	devkit_SMS_displayOn();
}

void engine_screen_manager_update()
{
	draw_sprite( 0, 16, 112 );
}


static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y )
{
	const unsigned char wide = 6;
	const unsigned char high = 8;
	unsigned char num;

	unsigned char i, j;
	if( 0 == idx )//|| 1 == idx || 2 == idx || 4 == idx || 6 == idx || 8 == idx )
	{
		x += 8;
		x += 0;
	}
	else //if( 3 == idx || 1 == idx || 2 == idx )
	{
		y += 8;
		y += 0;
	}
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * wide + i;
			devkit_SMS_addSprite( x + i * 8, y + j * 8, SPRITE_TILES + num );
		}
	}
}