#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/riff_manager.h"

static unsigned char indexs[] = { 0, 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 22, 23, 25, 27, 29, 33, 37, 39, 48, };
static unsigned char counts[] = { 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 3, 1, 2, 2, 2, 4, 4, 2, 9, 9, };

// Intro, Check, Death
static unsigned char starts[] = { 0, 0, 9, 17, 20, };
static unsigned char maxims[] = { 3, 9, 8, 3, 3,};

static void playRiff( unsigned char maxim, unsigned char index )
{
	unsigned char loops, count, value;
	engine_font_manager_data( index, 14, 9 );
	engine_font_manager_text( ( unsigned char* ) riff_object_texts[ index ], 10, 10 );

	count = counts[ index ];
	value = indexs[ index ];
	for( loops = 0; loops < count; loops++ )
	{
		engine_riff_manager_play( loops + value );
	}
}
void screen_test_screen_load()
{
	engine_riff_manager_init();
	engine_font_manager_text( "TEST SCREEN!!", 10, 2 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char index, start, maxim;

	input = engine_input_manager_hold_right();
	if( input )
	{
		// Splash
		//start = 25;
		//maxim = 1; index = 0; playRiff( maxim, start + index );

		// Title
		start = 24;
		maxim = 1; index = 0; playRiff( maxim, start + index );

		// Over
		//start = 23;
		//maxim = 1; index = 0; playRiff( maxim, start + index );

		// Intro
		//start = 20;
		//maxim = 3; index = 2; playRiff( maxim, start + index );

		// Pass
		//start = 17;
		//maxim = 3; index = 2; playRiff( maxim, start + index );

		// Death
		//start = 9;
		//maxim = 8; index = 7; playRiff( maxim, start + index );

		// Check
		//start = 0;
		//maxim = 9; index = 7; playRiff( maxim, index );

		// Start
		//start = 0;
		//maxim = 3; 	index = 1; playRiff( maxim, index );
	}

	//input = engine_input_manager_hold_up();
	//if( input )
	//{
	//	engine_font_manager_text( "SPLASH", 10, 10 );
	//	for( index = 9; index < 18; index++ )
	//	{
	//		engine_riff_manager_play( index );
	//	}
	//}

	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	engine_font_manager_text( "TITLES", 10, 10 );
	//	for( index = 0; index < 9; index++ )
	//	{
	//		engine_riff_manager_play( index );
	//	}
	//}

	*screen_type = screen_type_test;
}