#include "start_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"
#include <stdbool.h>

static unsigned char screen_intro_screen_delay;
static unsigned char cheat_count;
static unsigned char delay;
static bool flag;

void screen_start_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();
	engine_font_manager_text( LOCALE_INTRO_SCREEN, 8, 7 );
	devkit_SMS_displayOn();

	engine_scroll_manager_init();
	engine_scroll_manager_load(0,0);
	screen_intro_screen_delay = NORMAL_DELAY;
	engine_delay_manager_load(50);
	flag = true;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	//unsigned char input; 
	delay = engine_delay_manager_update();
	if (delay)
	{
		flag = !flag;
		if (flag)
		{
			engine_font_manager_text( LOCALE_INTRO_SCREEN, 8, 7 );
		}
		else
		{
			engine_font_manager_text( LOCALE_BLANK16, 8, 7 );
		}
		
	}

			engine_scroll_manager_update( 1 );
	*screen_type = screen_type_start;
}


/* option_screen test jagged arrays
#include "option_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include <stdlib.h>

static const signed int *ptr;
static signed char index;
static unsigned char value;
static unsigned char len;

static void reset();

void screen_option_screen_load()
{
	engine_font_manager_text( "OPTION SCREEN", 10, 0 );
	engine_player_manager_draw();
	reset();
}

void screen_option_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_frame_object *fo = &global_frame_object;
	struct_game_object *go = &global_game_object;
	unsigned char input;
	unsigned char deltaX;
	//signed char deltaY;	//gravity;
	//signed char collision;
	//enum_scroll_state scroll_state;


	signed int data;

	data = 0;
	deltaX = 0;
	if( INVALID_INDEX == index )
	{
		input = engine_input_manager_move( input_type_left );
		if( input )
		{
			index = 0;
			value = 0;
			ptr = jump_array_ptr[ index ];
			len = jump_array_len[ index ];
			data = ptr[ value ];
		}

		input = engine_input_manager_move( input_type_right );
		if( input )
		{
			index = 1;
			value = 0;
			ptr = jump_array_ptr[ index ];
			len = jump_array_len[ index ];
			data = ptr[ value ];
		}

		engine_font_manager_data( index, 10, 2 );
		engine_font_manager_data( value, 10, 3 );
		engine_font_manager_data( len, 10, 4 );
		engine_font_manager_data( data, 10, 5 );
	}
	else
	{
		input = engine_input_manager_move( input_type_fire1 );
		if( input )
		{
			if( value < len - 1 )
			{
				value++;
				data = ptr[ value ];

				engine_font_manager_data( index, 10, 2 );
				engine_font_manager_data( value, 10, 3 );
				engine_font_manager_data( len, 10, 4 );
				engine_font_manager_data( data, 10, 5 );
			}
		}

		input = engine_input_manager_move( input_type_fire2 );
		if( input )
		{
			reset();
		}
	}

	engine_player_manager_draw();
	*screen_type = screen_type_option;
}

static void reset()
{
	ptr = NULL;
	index = INVALID_INDEX;
	value = 0;
	len = 0;
}*/