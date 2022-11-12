#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );

static unsigned char posX[] = { 8, 184 };
static unsigned char posY[] = { 128, 128 };
static unsigned char idx;

void engine_screen_manager_init()
{
	devkit_SMS_displayOff();
	engine_tile_manager_draw_title();
	engine_font_manager_draw_text( "A TRIBUTE TO THE", 8, 22 );
	engine_font_manager_draw_text( "GREATEST DAREDEVIL", 7, 23 );
	devkit_SMS_displayOn();
	idx = 0;
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char x, y;

	input = engine_input_manager_hold_left();
	if( input )
	{
		idx = 1 - idx;
	}
	input = engine_input_manager_hold_right();
	if( input )
	{
		idx = 1 - idx;
	}

	x = posX[ idx ];
	y = posY[ idx ];


	draw_sprite( 0, x, y );
	//draw_sprite( 0, 8, 128 );	//left 
	//draw_sprite( 0, 200, 112 );		// far right
	//draw_sprite( 0, 200 - 16, 128 );		// far right
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