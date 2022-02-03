#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdlib.h>

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

static void printout();

void engine_screen_manager_init()
{
	unsigned char xx, yy;

	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 10, 2 );
	//engine_font_manager_draw_data( test, 30, yDelta++ );

	//for( xx = 0; xx < 32; xx += 2 )
	{
		xx = 28;
		yy = 18;
		engine_content_manager_draw_tile( xx, yy + 0 );
		//engine_content_manager_draw_tileX( xx, yy + 2 );
		//engine_content_manager_draw_tileX( xx, yy + 4 );
	}

	engine_music_manager_play();
	//yDelta = 2;

	printout();
	test2 = 0;
}

void engine_screen_manager_update()
{
	const unsigned char delta = 1;
	unsigned char xx, yy;
	unsigned char input;
	//unsigned char value;

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		xx = 24;
		yy = 12;
		engine_content_manager_draw_tile2( xx, yy + 0 );
	}
	input = engine_input_manager_hold_fire2();
	if( input )
	{
		xx = 24;
		yy = 12;
		engine_content_manager_draw_tile( xx, yy + 0 );
	}


	//input = engine_input_manager_move_right();
	input = engine_input_manager_hold_right();

	//if( input && ( ( scrollRightDivided8 < ( BG_TILE_WIDTH - X_TILE_MAX ) ) /*|| (scroll == 0)*/ ) )
	//if( input && ( ( scrollRightDivided8 < ( X_TILE_DIFF ) ) /*|| (scroll == 0)*/ ) )
	if( input )
	{
		test2++;
		if (test2 > 0)
		//if( scrollRightDivided8 < X_TILE_DIFF )
		{
			test2 = 0;

			scroll -= delta;
			scrollRight += delta;
			scrollRightDivided8 = scrollRight / 8;
			devkit_SMS_setBGScrollX( scroll );

			//engine_font_manager_draw_data( scroll, 10, 11 );
			engine_font_manager_draw_data( scrollRight, 10, 10 );
			engine_font_manager_draw_data( scrollRightDivided8, 10, 12 );

			// This works but does not update the top row
			if( ( scrollRight % 8 ) == delta )
			{
				test = scrollRightDivided8 % 2;
				

				// This works except the top row which doesn't seem to scroll.
				//for( ytile = 14; ytile < Y_TILE_MAX; ytile += 2 )
				//{
					//engine_content_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1, (test+0) * 2 + 0 );
					//engine_content_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 0, (test+0) * 2 + 4 );
				//}

				ytile = 18;
				//engine_content_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1, ( test + 0 ) * 2 + 0 );

				engine_tilemap_manager_draw_tile( X_TILE_MAX + scrollRightDivided8, ytile - 1 );

				//engine_font_manager_draw_text( "HI", 30, ytile );
				//test2 = ( test + 0 ) * 2 + 0;
				
				//test2 = ( test + 0 ) * 2 + 4;
				//engine_font_manager_draw_data( test2, 20, yDelta + 2 );
				//printout();
			}
		}
	}

}

static void printout()
{
	//engine_font_manager_draw_data( test, 10, yDelta );
	//engine_font_manager_draw_data( scrollRight, 15, yDelta );
	//engine_font_manager_draw_data( scrollRightDivided8, 20, yDelta );
	//engine_font_manager_draw_data( scroll, 30, yDelta );
	//yDelta++;
}