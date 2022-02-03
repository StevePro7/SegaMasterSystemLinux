#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

static unsigned char tx;
static unsigned char ty;
static unsigned char tz;
static unsigned char flag;
static unsigned int timer, delta;

static void draw_turtle();

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 1 );

	tx = 10;
	ty = 12;
	tz = 1;
	//engine_turtle_manager_draw_sea();

	timer = 0;
	delta = 20;
	flag = 1;
	//draw_turtle();

	//engine_turtle_manager_draw_01( tx + 5, ty + 1 );
	//engine_turtle_manager_draw_01( tx + 10, ty + 2 );
	//engine_turtle_manager_draw_02( tx + 15, ty + 1 );
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	flag = 0;
	//	draw_turtle();
	//}
	//input = engine_input_manager_hold_up();
	//if( input )
	//{
	//	flag = 1;
	//	draw_turtle();
	//}

	timer++;
	if( timer > delta )
	{
		timer = 0;
		flag = 1 - flag;
		if( 1 == flag )
		{
			//ty = ty + tz;
			ty = ty + 0;
			if( ty >= 18 || ty <= 8 )
			{
				tz *= -1;
			}
		}

		//draw_turtle();
	}
}

static void draw_turtle()
{
	if( flag )
	{
		engine_turtle_manager_draw_01( tx, ty );
	}
	else
	{
		engine_turtle_manager_draw_02( tx, ty );
	}
}