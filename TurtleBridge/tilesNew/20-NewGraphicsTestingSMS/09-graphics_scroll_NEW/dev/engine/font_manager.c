#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"

#define TEXT_ROOT	32		// 32 is " " in ASCII.
#define DATA_ROOT	16		// 16 is "0" (48=16+32)
#define UNIT_ROOT	10		// 10 is decimal
#define DATA_LONG	5		// 5 placeholder

static void draw_data( const unsigned char *tilemap, unsigned int data, unsigned char x, unsigned char y );
//static void draw_data( const unsigned char *pnt, unsigned char bank, unsigned int data, unsigned char x, unsigned char y );

void engine_font_manager_splash_data( unsigned int data, unsigned char x, unsigned char y )
{
	//draw_data( splash_tiles__tilemap__bin, splash_tiles__tilemap__bin_bank, data, x, y );
	draw_data( splash_tiles__tilemap__bin, data, x, y );
}

void engine_font_manager_titles_data( unsigned int data, unsigned char x, unsigned char y )
{
	draw_data( titles_tiles__tilemap__bin, data, x, y );
}

//static void draw_data( const unsigned char *pnt, unsigned char bank, unsigned int data, unsigned char x, unsigned char y )
static void draw_data( const unsigned char *tilemap, unsigned int data, unsigned char x, unsigned char y )
{
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

		devkit_SMS_setNextTileatXY( x--, y );
		devkit_SMS_setTile( *tilemap + tile );
	}
}

//void engine_font_manager_text( unsigned char *text, unsigned char x, unsigned char y )
//{
//	//const unsigned char *pnt = bggame_tiles__tilemap__bin;
//	//unsigned char idx = 0;
//
//	//while( '\0' != text[ idx ] )
//	//{
//	//	signed char tile = text[ idx ] - TEXT_ROOT;
//	//	devkit_SMS_setNextTileatXY( x++, y );
//	//	devkit_SMS_setTile( *pnt + tile );
//	//	idx++;
//	//}
//}

//void engine_font_manager_char( unsigned char ch, unsigned char x, unsigned char y )
//{
//	//const unsigned char *pnt = bggame_tiles__tilemap__bin;
//	//unsigned char tile = ch - TEXT_ROOT;
//	//devkit_SMS_setNextTileatXY( x, y );
//	//devkit_SMS_setTile( *pnt + tile );
//}
//

//void engine_font_manager_zero( unsigned int data, unsigned char x, unsigned char y )
//{
//	//const unsigned char *pnt = bggame_tiles__tilemap__bin;
//
//	//unsigned char idx;
//	////signed char tile;
//	//unsigned char tile;
//
//	//char hold[DATA_LONG];
//	//for( idx = 0; idx < DATA_LONG; ++idx )
//	//{
//	//	hold[idx] = data % UNIT_ROOT;
//	//	data /= UNIT_ROOT;
//
//	//	tile = hold[idx] + DATA_ROOT;
//
//	//	devkit_SMS_setNextTileatXY( x--, y );
//	//	devkit_SMS_setTile( *pnt + tile );
//	//}
//}