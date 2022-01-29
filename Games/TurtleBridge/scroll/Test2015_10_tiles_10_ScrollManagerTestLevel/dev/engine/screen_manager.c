#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "scroll_manager.h"
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

void engine_screen_manager_init()
{
	engine_scroll_manager_init();
	engine_scroll_manager_load();

	//engine_music_manager_play();
	test2 = 0;
}

void engine_screen_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	const unsigned char delta = 1;
	unsigned char input;
	unsigned char posX;
	unsigned char posY;
	unsigned char col = 1;

	//input = engine_input_manager_hold_right();
	input = engine_input_manager_move_right();
	if( input )
	{
		engine_scroll_manager_update();
	}

	posX = ( ( col + 0 ) * 8 ) - 0;
	posY = engine_scroll_manager_getPosY( col );
	if( posY == 0 )
	{
		engine_sprite_manager_draw( posX, 184 );
		return;
	}

	engine_sprite_manager_draw( posX, (posY - 1) * 8 );
}
