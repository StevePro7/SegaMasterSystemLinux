#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"
#include "../engine/sprite_manager.h"
#include "../engine/tile_manager.h"
#include "../object/flip_object.h"
#include "../devkit/_sms_manager.h"

#define MAX_SPOTS	9

#define FLIP_INDEX	6

static void draw_sprite( unsigned char idx, unsigned char mode, unsigned char x, unsigned char y );

static unsigned char posX[ MAX_SPOTS ] = { 8, 30, 52, 74, 96, 118, 140, 162, 184 };
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

void screen_test_screen_load()
{
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_ZOOMED() );
	devkit_SMS_displayOff();
	engine_tile_manager_draw_title();
	engine_font_manager_draw_text( "A TRIBUTE TO THE", 8, 22 );
	engine_font_manager_draw_text( "GREATEST DAREDEVIL", 7, 23 );
	devkit_SMS_displayOn();

	jump_ptr = flip_array_ptr[ 2 ];
	index = 0;
	check = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char x, y, f;
	
	if (check)
	{
		x = posX[ index ];
		y = posY[ index ];
		f = jump_ptr[ index ];
		draw_sprite( f, sprite_mode_zoomed, x, y );
		return;
	}

	engine_riff_manager_play( index );
	
	x = posX[ index ];
	y = posY[ index ];
	f = jump_ptr[ index ];
	draw_sprite( f, sprite_mode_zoomed, x, y );
	//engine_font_manager_draw_data( f, 30, 0 );

	engine_input_manager_update();
	input = engine_input_manager_move_fire2();
	if ( input || index + 1 >= MAX_SPOTS )
	{
		check = 1;
		return;
	}

	index++;	

	*screen_type = screen_type_test;
}

static void draw_sprite( unsigned char idx, unsigned char mode, unsigned char x, unsigned char y )
{
	engine_sprite_manager_draw_player( idx, mode, x, y );

	engine_sprite_manager_draw_tile( mode, 0, y + mode * 0 );
	engine_sprite_manager_draw_tile( mode, 8, y + mode * 0 );
	engine_sprite_manager_draw_tile( mode, 192, y + mode * 0 );
	engine_sprite_manager_draw_tile( mode, 224, y + mode * 0 );

	engine_sprite_manager_draw_tile( mode, 0, y + mode * 16 );
	engine_sprite_manager_draw_tile( mode, 8, y + mode * 16 );
	engine_sprite_manager_draw_tile( mode, 192, y + mode * 16 );
	engine_sprite_manager_draw_tile( mode, 224, y + mode * 16 );


	// const unsigned char wide = 4;
	// const unsigned char high = 4;
	// unsigned char num;
	
	// unsigned char i, j;
	// if( 0 == idx || 1 == idx || 2 == idx || 4 == idx || 6 == idx || 8 == idx )
	// {
	// 	x += 4 * size;
	// }
	// else //if( 3 == idx || 1 == idx || 2 == idx )
	// {
	// 	y += 4 * size;
	// }
	// for( j = 0; j < high; j++ )
	// {
	// 	for( i = 0; i < wide; i++ )
	// 	{
	// 		num = ( idx * wide * high ) + j * wide + i;
	// 		devkit_SMS_addSprite( x + i * size * 8, y + j * size * 8, SPRITE_TILES + num );
	// 	}
	// }
}
