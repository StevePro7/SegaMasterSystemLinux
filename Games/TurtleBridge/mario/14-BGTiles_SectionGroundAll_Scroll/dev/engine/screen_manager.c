#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

//unsigned int BG_TILE_WIDTH = 64;
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

void engine_screen_manager_init()
{
	//unsigned char x = 10;
	//unsigned char y = 10;
	engine_tile_manager_draw( 0, 18 );
	engine_tile_manager_init();
	test2 = 0;

//	engine_font_manager_draw_data( test2, 15, 2 );
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char delta = 1;
	unsigned char input;// , input2;
	//input2 = engine_input_manager_move_fire2();
	//if( input2 )
	//{
	//	delta = 2;
	//}
	input = engine_input_manager_move_right();
	//input = 1;
	if( input )
	{
		test2++;
		if( test2 > 0 )
			//if( scrollRightDivided8 < X_TILE_DIFF )
		{
			test2 = 0;

			scroll -= delta;
			scrollRight += delta;
			
			devkit_SMS_setBGScrollX( scroll );

			//engine_font_manager_draw_data( scroll, 10, 11 );
			//engine_font_manager_draw_data( scrollRight, 10, 10 );
			//engine_font_manager_draw_data( scrollRightDivided8, 10, 12 );

			// This works but does not update the top row
			if( ( scrollRight % 8 ) == delta )
			{
				scrollRightDivided8 = scrollRight / 8;

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
		//engine_scroll_manager_update();
	}
}