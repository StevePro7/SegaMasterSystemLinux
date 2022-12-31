#include "scroll_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

unsigned int BG_TILE_WIDTH = 64;
unsigned int X_TILE_MAX = 32;
unsigned int X_TILE_DIFF = 6; // 64 - 32;
unsigned int Y_TILE_MAX = 24;

unsigned char test = 0;
unsigned int test2 = 0;
//unsigned int scrollDivided8 = 0;
unsigned char scroll = 0;
unsigned char scrollRight = 0;
//unsigned char scrollRightDivided8 = 0;
//unsigned int xtile = 0;
unsigned int ytile = 0;
unsigned int yDelta = 0;

unsigned int scroll_x[ 6 ];
unsigned char lineCnt;

static void lineScrollHandler(void);

void engine_scroll_manager_init()
{
	//engine_font_manager_draw_text( "123456789A123456789B123456789CX", 1, 0 );
	//engine_font_manager_draw_text( "123456789A123456789B123456789CX", 1, 1 );
	//engine_font_manager_draw_text( "123456789A123456789B123456789CX", 1, 2 );
	//engine_font_manager_draw_text( "SCROLL", 10, 3 );

	scroll_x[ 0 ] = 0; // 255 << 8;
	scroll_x[ 1 ] = 0; // 255 << 8;
	scroll_x[ 2 ] = 0; // 255 << 8;
	scroll_x[ 3 ] = 0; // 255 << 8;
	scroll_x[ 4 ] = 0; // 255 << 8;
	scroll_x[ 5 ] = 0; // 255 << 8;
	//scroll_x[ 6 ] = 0; // 255 << 8;
	//scroll_x[ 7 ] = 0; // 255 << 8;
	lineCnt = 0;

	devkit_SMS_setLineInterruptHandler( &lineScrollHandler );
	devkit_SMS_setLineCounter(30); // this almost works!!
	//devkit_SMS_setLineCounter( 22 ); // this almost works!!
	devkit_SMS_enableLineInterrupt();
}

void engine_scroll_manager_update2()
{
	const unsigned char delta = 1;
	//const unsigned char h1 = 144;
	//const unsigned char h2 = 144;

	scroll -= delta;
	scrollRight += delta;
	//scrollRightDivided8 = scrollRight / 8;
	//devkit_SMS_setBGScrollX( scroll );

	// This works but does not update the top row
	if( ( scrollRight % 8 ) == delta )
	{
		//test = scrollRightDivided8 % 2;
		//ytile = 18;
		//engine_tilemap_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1 );
	}
}

void engine_scroll_manager_update( unsigned char h1, unsigned char h2 )
{
	//engine_font_manager_draw_data( h1, 20, 2 );
	//engine_font_manager_draw_data( h2, 20, 3 );
	scroll_x[ 0 ] = scroll_x[ 0 ] - h1; // 128;                             // 0.5<<8
	scroll_x[ 1 ] = scroll_x[ 1 ] - h2; // 160; // 0.5<<8 + (0.125<<8)
	scroll_x[ 2 ] = scroll_x[ 2 ] - h2; // 160;
	scroll_x[ 3 ] = scroll_x[ 3 ] - h2; // 160;
	scroll_x[ 4 ] = scroll_x[ 4 ] - h2; // 160;
//	scroll_x[ 5 ] = scroll_x[ 5 ] - h2; // 160;
//	scroll_x[ 6 ] = scroll_x[ 6 ] - h2; // 160;
//	scroll_x[ 7 ] = scroll_x[ 7 ] - 0; // 160;
	lineCnt = 0;
}

static void lineScrollHandler(void)
{
	//unsigned int val = scroll_x[ lineCnt++ ] >> 8;
	unsigned int val = scroll_x[ lineCnt++ ];

	//engine_font_manager_draw_data( lineCnt, 10, 0 );
	//engine_font_manager_draw_data( val, 20, 0 );
	//engine_font_manager_draw_data( lineCnt, 10, 0 );
	//devkit_SMS_setBGScrollX( ( scroll_x[ lineCnt++ ] ) >> 8 );

	devkit_SMS_setBGScrollX( val );
}
