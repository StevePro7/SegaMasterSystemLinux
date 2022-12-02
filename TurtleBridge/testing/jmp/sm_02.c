#include "screen_manager.h"
//#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "riff_manager.h"
#include "tile_manager.h"
#include "../object/flip_object.h"
#include "../devkit/_sms_manager.h"

#define MAX_SPOTS	9

static void draw_sprite( unsigned char idx, unsigned char size, unsigned char x, unsigned char y );

static unsigned char posX[ MAX_SPOTS ] = { 8, 30,52,74,96,118,140,162,184 };
static unsigned char posY[ MAX_SPOTS ] = { 128, 112, 104, 100, 96, 100, 104, 112, 128 };
//static unsigned char flip[ MAX_SPOTS ] = { 2, 2, 3, 4, 4, 5, 5, 2, 2 };`// flip 01
//static unsigned char flip[ MAX_SPOTS ] = { 2, 2, 3, 4, 4, 8, 8, 9, 9 };	// flip 02
//static unsigned char flip[ MAX_SPOTS ] = { 2, 2, 6, 6, 2, 2, 6, 6, 2 };	// flip 02
//static unsigned char flip[ MAX_SPOTS ] = { 2, 5, 4, 3, 2, 5, 4, 3, 2 };	// flip double inwards
//static unsigned char flip[ MAX_SPOTS ] = { 2, 3, 4, 5, 2, 3, 4, 5, 2 };	// flip double outwards
//static unsigned char flip[ MAX_SPOTS ];
static const unsigned char *jump_ptr;
static unsigned char index;
static unsigned char check;

void engine_screen_manager_init()
{
	devkit_SMS_displayOff();
	engine_tile_manager_draw_title();
	engine_font_manager_draw_text( "A TRIBUTE TO THE", 8, 22 );
	engine_font_manager_draw_text( "GREATEST DAREDEVIL", 7, 23 );
	devkit_SMS_displayOn();

	jump_ptr = flip_array_ptr[ 1 ];
	index = 0;
	check = 0;
}

void engine_screen_manager_update()
{
	unsigned char x, y, f;
	
	//unsigned char input;
	if (check)
	{
		x = posX[ index ];
		y = posY[ index ];
		f = jump_ptr[ index ];
		draw_sprite( f, 2, x, y );
		return;
	}

	engine_riff_manager_play( index );
	
	x = posX[ index ];
	y = posY[ index ];
	f = jump_ptr[ index ];
	draw_sprite( f, 2, x, y );
	//engine_font_manager_draw_data( f, 30, 0 );

	if ( index + 1 >= MAX_SPOTS )
	{
		check = 1;
		return;
	}

	index++;
	/*
	engine_font_manager_draw_data( index, 30, 0 );
	engine_riff_manager_play( index );
	
	x = posX[ index ];
	y = posY[ index ];
	f = flip[ index ];
	draw_sprite( f, 2, x, y );
	*/

/*
	for (index = 1; index < MAX_SPOTS - 2; index++ )
	{
		x = posX[ index ];
		y = posY[ index ];
		f = flip[ index ];
		draw_sprite( f, 2, x, y );

		engine_font_manager_draw_data( index, 30, 0 );
		engine_riff_manager_play( index );

		draw_sprite( f, 2, x, y );		
	}
*/	
}

void engine_screen_manager_updateX()
{
	/*
	unsigned char input;
	unsigned char x, y, f;

	input = engine_input_manager_hold_left();
	if( input )
	{
		if( 0 == idx )
		{
			idx = 0;
		}
		else
		{
			idx--;
		}
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
		if( MAX_SPOTS - 1 == idx )
		{
			idx = MAX_SPOTS - 1;
		}
		else
		{
			idx++;
		}
	}

	x = posX[ idx ];
	y = posY[ idx ];
	f = flip[ idx ];

	engine_font_manager_draw_data( idx, 30, 0 );
	draw_sprite( f, 2, x, y );
	*/
}

static void draw_sprite( unsigned char idx, unsigned char size, unsigned char x, unsigned char y )
{
	const unsigned char wide = 4;
	const unsigned char high = 4;
	unsigned char num;
	
	unsigned char i, j;
	if( 0 == idx || 1 == idx || 2 == idx || 4 == idx || 6 == idx || 8 == idx )
	{
		x += 4 * size;
	}
	else //if( 3 == idx || 1 == idx || 2 == idx )
	{
		y += 4 * size;
	}
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * wide + i;
			devkit_SMS_addSprite( x + i * size * 8, y + j * size * 8, SPRITE_TILES + num );
		}
	}
}