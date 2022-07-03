#include "test_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

#define KILL_SCREEN_DELAY		50

static unsigned int palette;
static unsigned char count;
static bool flag;


void screen_test_screen_load()
{
	//devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_koschey();
	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, devkit_TILE_USE_SPRITE_PALETTE() );
	//engine_graphics_manager_draw_border();
	//devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??

	//palette = devkit_TILE_USE_SPRITE_PALETTE();
	
	engine_timer_manager_load( KILL_SCREEN_DELAY );
	engine_sound_manager_kill();
	count = 0;
	flag = true;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	//unsigned char input;
	unsigned char timer;

	timer = engine_timer_manager_update();
	if( timer )
	{
		count++;
		if( count < 5 )
		{
			flag = !flag;
			palette = flag ? devkit_TILE_USE_SPRITE_PALETTE() : 0;
			engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, palette );
		}
	}

	if (count > 5 )
	{
		*screen_type = screen_type_complete;
		return;
	}
	
	//input = engine_input_manager_move( input_type_fire1 );
	//if( input )
	//{
	//	flag = !flag;
	//	if( flag )
	//	{
	//		engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, palette );
	//	}
	//	if( !flag )
	//	{
	//		engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, 0 );
	//	}
	//}

	*screen_type = screen_type_test;
}
