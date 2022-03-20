#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/sound_manager.h"

unsigned char index;

void screen_test_screen_load()
{
	index = 0;
	engine_player_manager_calc();
	engine_font_manager_text( "TEST SCREEN!!", 2, 10 );
	engine_font_manager_data( index, 10, 14 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_up );
	if( input )
	{
		index--;
		engine_font_manager_data( index, 10, 14 );
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		index++;
		engine_font_manager_data( index, 10, 14 );
	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_font_manager_text( "HELLO", 20, 20 );
		engine_effect_manager_play( index );
	//	engine_font_manager_text( "BEG!", 2, 12 );
	//	// Intro.
	//	for( index = 0; index < 5; index++ )
	//	{
	//		engine_sound_manager_play( index );
	//	}
	//	// Boss.
	//	for( index = 5; index < 8; index++ )
	//	{
	//		engine_sound_manager_play( index );
	//	}
	//	engine_font_manager_text( "END!!", 2, 14 );
	}

	*screen_type = screen_type_test;
}
