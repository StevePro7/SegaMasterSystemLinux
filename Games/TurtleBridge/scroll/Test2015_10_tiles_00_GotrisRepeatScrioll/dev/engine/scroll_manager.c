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
unsigned char scroll = 0;
//unsigned int scrollDivided8 = 0;
unsigned char scrollRight = 0;
unsigned char scrollRightDivided8 = 0;
//unsigned int xtile = 0;
unsigned int ytile = 0;
unsigned int yDelta = 0;

unsigned int scroll_x[6];
unsigned char lineCnt;

static void lineScrollHandler(void);

void engine_scroll_manager_init()
{
	engine_font_manager_draw_text( "SCROLL", 10, 0 );
	engine_font_manager_draw_text( "SCROLL", 10, 1 );
	
	scroll_x[0] = 255 << 8;
	scroll_x[1] = 255 << 8;
	scroll_x[2] = 255 << 8;
	scroll_x[3] = 255 << 8;
	scroll_x[4] = 255 << 8;
	scroll_x[5] = 255 << 8;
	lineCnt = 0;

	devkit_SMS_setLineInterruptHandler(&lineScrollHandler);
	devkit_SMS_setLineCounter(31); /* we're updating every 32 scanlines... */
	devkit_SMS_enableLineInterrupt();

	engine_font_manager_draw_text( "SCROLL", 10, 2 );
	engine_font_manager_draw_text( "SCROLL", 10, 3 );
	//engine_font_manager_draw_text( "SCROLL", 10, 4 );
	//engine_font_manager_draw_text( "SCROLL", 10, 5 );
}

//void engine_scroll_manager_update()
void engine_scroll_manager_update()
{
	const unsigned char delta = 1;
	const unsigned char h1 = 144;
	const unsigned char h2 = 144;

	//scroll -= delta;
	//scrollRight += delta;
	//scrollRightDivided8 = scrollRight / 8;
	//devkit_SMS_setBGScrollX( scroll );

	//// This works but does not update the top row
	//if( ( scrollRight % 8 ) == delta )
	//{
	//	test = scrollRightDivided8 % 2;

	//	ytile = 18;

	//	engine_tilemap_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1 );
	//}

	
	scroll_x[0] = scroll_x[0] - h1; // 128;                             // 0.5<<8
	scroll_x[1] = scroll_x[1] - h1; // 160; // 0.5<<8 + (0.125<<8)
	scroll_x[2] = scroll_x[2] - h2; // 160;
	scroll_x[3] = scroll_x[3] - h2; // 160;
	scroll_x[4] = scroll_x[4] - h2; // 160;
	// scroll_x[5] = scroll_x[5] - 200;
	lineCnt = 0;
}

static void lineScrollHandler(void)
{
	devkit_SMS_setBGScrollX((scroll_x[lineCnt++]) >> 8);
}
