#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define TEXT_ROOT	64		// 64 is "A" (65-01).
#define DATA_ROOT	27		// 27 is "0" (48-27).
#define UNIT_ROOT	10		// 10 is decimal
#define DATA_LONG	3		// 3 placeholder

//void engine_font_manager_draw_hero( unsigned char x, unsigned char y )
//{
//	// TODO - define HERO in locale_manager
//	const unsigned char *pnt = font__tilemap__bin;
//	unsigned char tile = 46;
//	unsigned int flipY = devkit_TILE_FLIPPED_X();
//	devkit_SMS_setNextTileatXY( x, y );
//	devkit_SMS_setTile( *pnt + ( tile | flipY ) );
//
//	engine_font_manager_draw_text( "HERO", x + 1, y );
//	devkit_SMS_setNextTileatXY( x+5, y );
//	devkit_SMS_setTile( *pnt + tile );
//}

static void draw_char( unsigned char tile, unsigned char x, unsigned char y )
{
	const unsigned char *pnt = font__tilemap__bin;
	devkit_SMS_setNextTileatXY( x, y );
	devkit_SMS_setTile( *pnt + tile );
}

static unsigned char get_tile( unsigned char ch )
{
	unsigned char tile = 0;
	if( '+' == ch )
	{
		tile = 37;
	}
	else if( '?' == ch )
	{
		tile = 43;
	}

	return tile;
}
void engine_font_manager_draw_punc( unsigned char ch, unsigned char x, unsigned char y )
{
	//unsigned char tile = 0;
	//if( '+' == ch )
	//{
	//	tile = 37;
	//}
	//else if( '?' == ch )
	//{
	//	tile = 43;
	//}

	unsigned char tile = get_tile( ch );
	draw_char( tile, x, y );
}
void engine_font_manager_draw_flip( unsigned char ch, unsigned char x, unsigned char y )
{
	unsigned char tile = get_tile( ch );
	unsigned int flipX = devkit_TILE_FLIPPED_X();
	draw_char( ( tile | flipX ), x, y );
}

void engine_font_manager_draw_char( unsigned char ch, unsigned char x, unsigned char y )
{
	//const unsigned char *pnt = font__tilemap__bin;
	unsigned char tile = ch - TEXT_ROOT;
	draw_char( tile, x, y );
	//devkit_SMS_setNextTileatXY( x, y );
	//devkit_SMS_setTile( *pnt + tile );
}

void engine_font_manager_draw_text( unsigned char *text, unsigned char x, unsigned char y )
{
	//const unsigned char *pnt = font__tilemap__bin;
	unsigned char idx = 0;
	while( '\0' != text[idx] )
	{
		unsigned char ch = text[ idx ];
		unsigned char tile = ch - TEXT_ROOT;
		draw_char( tile, x, y );
		//devkit_SMS_setNextTileatXY( x++, y );
		//devkit_SMS_setTile( *pnt + tile );
		x++;
		idx++;
	}
}

void engine_font_manager_draw_data( unsigned int data, unsigned char x, unsigned char y )
{
	//const unsigned char *pnt = font__tilemap__bin;

	unsigned char idx;
	signed char tile;

	unsigned int quotient = 0;
	unsigned char remainder = 0;

	char hold[DATA_LONG];
	for( idx = 0; idx < DATA_LONG; ++idx )
	{
		quotient = data / UNIT_ROOT;
		remainder = data % UNIT_ROOT;

		hold[idx] = remainder;
		data /= UNIT_ROOT;

		tile = hold[idx] + DATA_ROOT;
		if( 0 == quotient && 0 == remainder && idx > 0 )
		{
			// Replace with space!
			tile = 0;
		}

		draw_char( tile, x, y );
		x--;
		//devkit_SMS_setNextTileatXY( x--, y );
		//devkit_SMS_setTile( *pnt + tile );
	}
}

void engine_font_manager_draw_zero( unsigned int data, unsigned char x, unsigned char y )
{
	//const unsigned char *pnt = font__tilemap__bin;

	unsigned char idx;
	unsigned char tile;

	char hold[DATA_LONG];
	for( idx = 0; idx < DATA_LONG; ++idx )
	{
		hold[idx] = data % UNIT_ROOT;
		data /= UNIT_ROOT;

		tile = hold[idx] + DATA_ROOT;
		draw_char( tile, x, y );
		x--;
		//devkit_SMS_setNextTileatXY( x--, y );
		//devkit_SMS_setTile( *pnt + tile );
	}
}