#include "func_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_func_screen_load()
{
	struct_player_object *po = &global_player_object;
	po->player_state = player_state_isonground;
	po->player_state = player_state_isintheair;

	engine_font_manager_text( "FUNC SCREEN", 10, 2 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2, input3, input4, input5, input6;
	unsigned char command;

	input1 = engine_input_manager_move( input_type_left );
	input2 = engine_input_manager_move( input_type_right );
	input3 = engine_input_manager_move( input_type_up );
	input4 = engine_input_manager_move( input_type_down );
	input5 = engine_input_manager_hold( input_type_fire1 );
	input6 = engine_input_manager_hold( input_type_fire2 );

	command = engine_command_manager_build( po->player_state, input1, input2, input3, input4, input5, input6 );

	engine_font_manager_text( "     ", 10, 10 );
	engine_font_manager_text( "     ", 10, 11 );
	engine_font_manager_text( "     ", 10, 12 );
	engine_font_manager_text( "     ", 10, 13 );
	engine_font_manager_text( "     ", 10, 14 );

	// Move left, middle, right.
	if( ( COMMAND_MIDD_MASK & command ) == COMMAND_MIDD_MASK )
	{
		engine_font_manager_text( " MIDD", 10, 10 );
	}
	if( ( COMMAND_LEFT_MASK & command ) == COMMAND_LEFT_MASK )
	{
		engine_font_manager_text( " LEFT", 10, 10 );
	}
	if( ( COMMAND_RGHT_MASK & command ) == COMMAND_RGHT_MASK )
	{
		engine_font_manager_text( "RIGHT", 10, 10 );
	}

	// Move up, down.
	if( ( COMMAND_HIGH_MASK & command ) == COMMAND_HIGH_MASK )
	{
		engine_font_manager_text( " HIGH", 10, 11 );
	}
	if( ( COMMAND_DOWN_MASK & command ) == COMMAND_DOWN_MASK )
	{
		engine_font_manager_text( " DOWN", 10, 11 );
	}

	// Hold button1, button2.
	if( ( COMMAND_JUMP_MASK & command ) == COMMAND_JUMP_MASK )
	{
		engine_font_manager_text( " JUMP", 10, 12 );
	}
	if( ( COMMAND_SWAP_MASK & command ) == COMMAND_SWAP_MASK )
	{
		engine_font_manager_text( " SWAP", 10, 12 );
	}
	if( ( COMMAND_JUMP_MASK & command ) == COMMAND_JUMP_MASK )
	{
		engine_font_manager_text( " JUMP", 10, 12 );
	}

	if( COMMAND_NONE_MASK == command )
	{
		engine_font_manager_text( " NONE", 10, 10 );
	}

	*screen_type = screen_type_func;
}




//static void foo()
//{
//	engine_font_manager_data( COMMAND_NONE_MASK, 10, 3 );
//	engine_font_manager_data( COMMAND_LEFT_MASK, 10, 5 );
//	engine_font_manager_data( COMMAND_MIDD_MASK, 10, 6 );
//	engine_font_manager_data( COMMAND_RGHT_MASK, 10, 7 );
//	engine_font_manager_data( COMMAND_HIGH_MASK, 10, 8 );
//	engine_font_manager_data( COMMAND_JUMP_MASK, 10, 10 );
//	engine_font_manager_data( COMMAND_DOWN_MASK, 10, 11 );
//	engine_font_manager_data( COMMAND_SWAP_MASK, 10, 12 );
//	engine_font_manager_data( COMMAND_FLIP_MASK, 10, 13 );
//}