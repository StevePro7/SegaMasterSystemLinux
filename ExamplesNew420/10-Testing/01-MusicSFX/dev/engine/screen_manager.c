#include "screen_manager.h"
#include "audio_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "sound_manager.h"
#include "../object/audio_data.h"
//#include "../devkit/_snd_manager.h"

static unsigned char num1;
static unsigned char num2;

void engine_screen_manager_init()
{
	unsigned char res;
	num1 = 1;
	num2 = 4;
	res = foo();
	engine_font_manager_draw_text( " !? HELLO SOUND ?! ", 4, 6 );
	engine_font_manager_draw_data( res, 12, 7 );
	engine_font_manager_draw_data( num1, 12, 8 );
	engine_font_manager_draw_data( num2, 12, 9 );
}

void engine_screen_manager_update()
{
	unsigned char input;

	input = engine_input_manager_hold_left();
	if( input )
	{
		num2--;
		engine_font_manager_draw_data( num2, 12, 9 );
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
		num2++;
		engine_font_manager_draw_data( num2, 12, 9 );
	}

	input = engine_input_manager_hold_up();
	if( input )
	{
		num1--;
		engine_font_manager_draw_data( num1, 12, 8 );
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
		num1++;
		engine_font_manager_draw_data( num1, 12, 8 );
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		audio_play_sfx( num1 );
	}
	input = engine_input_manager_hold_fire2();
	if( input )
	{
		audio_play_music( num2, 0xFF );
	}
}