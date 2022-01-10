#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

unsigned int BG_TILE_WIDTH = 64;
unsigned int X_TILE_MAX = 32;
unsigned int Y_TILE_MAX = 24;

unsigned int test = 0;
unsigned int test2 = 0;
unsigned int scroll = 0;
unsigned int scrollDivided8 = 0;
unsigned int scrollRight = 0;
unsigned int scrollRightDivided8 = 0;
unsigned int xtile = 0;
unsigned int ytile = 0;


void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 4 );
	//draw_turtle( 1 );

	//engine_music_manager_play();
	engine_tile_manager_draw( 10, 10 );
}

void engine_screen_manager_update()
{
	const unsigned char delta = 1;
	unsigned char input;
	//unsigned char value;
	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 5 );

		scroll -= delta;
		scrollRight += delta;
		scrollRightDivided8 = scrollRight / 8;
		devkit_SMS_setBGScrollX( scroll );

		if( ( scrollRight % 8 ) == delta )
		{
			engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 6 );
		}
	}

}
