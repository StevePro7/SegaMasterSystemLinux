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

//#define MAX_JUMPS	125
#define MAX_JUMPS	4
#define MAX_FLOOR	128

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned int index;
static unsigned char jumps;
static unsigned char posY;

//static unsigned char deltaY[ MAX_JUMPS ] =
//{
//	1, 	1, 	1, 	1, 	1, 	2, 	2, 	2, 	2, 	3, 	3, 	3, 	3, 	3, 	4, 	4, 	4, 	4, 	4, 	4, 	5, 	5, 	5, 	5, 	5, 	5, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	5, 	5, 	5, 	5, 	5, 	5, 	4, 	4, 	4, 	4, 	4, 	4, 	3, 	3, 	3, 	3, 	3, 	2, 	2, 	2, 	2, 	1, 	1, 	1, 	1, 	1
//};

static unsigned char deltaY[ MAX_JUMPS ] = { 0 };
//{
//	1,	2,	3,	4,	5,	6,	7,	7,	8,	9,	10,	11,	12,	13,	14,	15,	16,	17,	18,	19,	20,	21,	22,	23,	24,	25,	25,	26,	27,	28,	29,	30,	31,	32,	33,	33,	34,	35,	36,	37,	38,	39,	39,	40,	41,	42,	43,	44,	44,	45,	46,	47,	48,	49,	49,	50,	51,	52,	53,	53,	54,	55,	56,	56,	57,	58,	59,	59,	60,	61,	62,	62,	63,	64,	65,	65,	66,	67,	67,	68,	69,	69,	70,	71,	72,	72,	73,	74,	74,	75,	76,	76,	77,	78,	78,	79,	79,	80,	81,	81,	82,	83,	83,	84,	84,	85,	86,	86,	87,	87,	88,	89,	89,	90,	90,	91,	91,	92,	92,	93,	94,	94,	95,	95,	96,	96,	97,	97,	98,	98,	99,	99,	100,	100,	101,	101,	102,	102,	103,	103,	104,	104,	104,	105,	105,	106,	106,	107,	107,	108,	108,	108,	109,	109,	110,	110,	110,	111,	111,	112,	112,	112,	113,	113,	113,	114,	114,	115,	115,	115,	116,	116,	116,	117,	117,	117,	118,	118,	118,	119,	119,	119,	119,	120,	120,	120,	121,	121,	121,	121,	122,	122,	122,	123,	123,	123,	123,	123,	124,	124,	124,	124,	125,	125,	125,	125,	125,	126,	126,	126,	126,	126,	127,	127,	127,	127,	127,	127,	128,	128,	128,	128,	128,	128,	128,	129,	129,	129,	129,	129,	129,	129,	129,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	131,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	130,	129,	129,	129,	129,	129,	129,	129,	129,	129,	128,	128,	128,	128,	128,	128,	128,	127,	127,	127,	127,	127,	127,	126,	126,	126,	126,	126,	125,	125,	125,	125,	125,	124,	124,	124,	124,	123,	123,	123,	123,	122,	122,	122,	122,	121,	121,	121,	120,	120,	120,	120,	119,	119,	119,	118,	118,	118,	117,	117,	117,	116,	116,	116,	115,	115,	115,	114,	114,	114,	113,	113,	113,	112,	112,	111,	111,	111,	110,	110,	109,	109,	109,	108,	108,	107,	107,	106,	106,	106,	105,	105,	104,	104,	103,	103,	102,	102,	101,	101,	100,	100,	99,	99,	98,	98,	97,	97,	96,	96,	95,	95,	94,	94,	93,	93,	92,	92,	91,	90,	90,	89,	89,	88,	88,	87,	86,	86,	85,	85,	84,	83,	83,	82,	82,	81,	80,	80,	79,	78,	78,	77,	77,	76,	75,	75,	74,	73,	73,	72,	71,	71,	70,	69,	68,	68,	67,	66,	66,	65,	64,	63,	63,	62,	61,	61,	60,	59,	58,	58,	57,	56,	55,	54,	54,	53,	52,	51,	51,	50,	49,	48,	47,	47,	46,	45,	44,	43,	42,	42,	41,	40,	39,	38,	37,	36,	36,	35,	34,	33,	32,	31,	30,	29,	29,	28,	27,	26,	25,	24,	23,	22,	21,	20,	19,	19,	18,	17,	16,	15,	14,	13,	12,	11,	10,	9,	8,	7,	6,	5,	4,	3,	2,	1,
//};

//static unsigned char frames[ 100 ] =
//{
//	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	2,	2,	2,	2,	2,	2,	2,	2,	2,	2,	3,	3,	3,	3,	3,	3,	3,	3,	3,	3,	4,	4,	4,	4,	4,	4,	4,	4,	4,	4,	5,	5,	5,	5,	5,	5,	5,	5,	5,	5,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,
//};
//static unsigned char frames[ 100 ] =
//{
//	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6, 	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	6, 	6,	6,	6,	6,	6,	6,	6,	6,	6,	6,	7,	7,	7,	7,	7,	7,	7,	7,	7,	7,
//};
void engine_screen_manager_init()
{
	engine_tile_manager_sky();
	//engine_tile_manager_draw_normX( 4, 0, 20 );
	engine_tile_manager_draw_groundX( 4, 0, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 8, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 16, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 24, 20, 0, 8 );
	engine_font_manager_draw_text( "STORAGE TEST", 2, 2 );
	frame = 0;
	index = 0;
	jumps = 0;
	posY = MAX_FLOOR;
	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char delta = 0;

	frame = 0;
	if( jumps )
	{
		delta = deltaY[ index ];
		index++;
		if( index >= MAX_JUMPS )
		{
			index = 0;
			jumps = 0;
			posY = MAX_FLOOR;
		}

		if( index < 100 )
		{
			frame = 0;// frames[ index ];
		}
	}
	else
	{
		input = engine_input_manager_hold_fire1();
		if( input )
		{
			engine_font_manager_draw_text( "STEVEPRO JUMPING 1", 2, 2 );
			engine_storage_manager_write();
			engine_font_manager_draw_text( "STEVEPRO JUMPING 2", 2, 3 );
			//index = 0;
			//jumps = 1;
			//posY = MAX_FLOOR;
		}
	}

	//engine_font_manager_draw_data( index, 25, 0 );
	//engine_font_manager_draw_data( frame, 25, 1 );
	//engine_font_manager_draw_data( jumps, 25, 2 );
	draw_sprite( frame, 72, posY - delta );
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