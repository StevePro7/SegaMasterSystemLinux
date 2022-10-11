#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "ADRIANA HOMEWORK", 2, 2 );
	frame = 0;
}

void engine_screen_manager_update()
{
	unsigned char input;
	//frame = 0;

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		frame++;
		if( frame > 7 )
		{
			frame = 0;
		}
	}
	else
	{
		input = engine_input_manager_hold_fire2();
		if( input )
		{
			if( frame == 0 )
			{
				frame = 7;
			}
			else
			{
				frame--;
			}
		}
	}

	draw_sprite( frame, 96, 96 );
}

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y )
{
	//unsigned char row, col;
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