#include "command_manager.h"
#include "enum_manager.h"
#include "global_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void engine_command_manager_init()
{
}

unsigned char engine_command_manager_build( unsigned char  state, unsigned char input1, unsigned char input2, unsigned char input3, unsigned char input4, unsigned char input5, unsigned char input6 )
{
	unsigned char command = COMMAND_NONE_MASK;

	// Horizontal movement.
	if( !input1 && !input2 )
	{
		command |= COMMAND_MIDD_MASK;
	}
	else
	{
		if( input1 )
		{
			command |= COMMAND_LEFT_MASK;
		}
		if( input2 )
		{
			command |= COMMAND_RGHT_MASK;
		}
	}

	// Vertical movement + Action buttons.
	if( player_state_isonground == state )
	{
		if( input3 )
		{
			command |= COMMAND_HIGH_MASK;
		}
		if( input5 || input6 )
		{
			command |= COMMAND_JUMP_MASK;
		}
	}
	if( player_state_isintheair == state )
	{
		if( input4 )
		{
			command |= COMMAND_DOWN_MASK;
		}
		if( input5 )
		{
			command |= COMMAND_SWAP_MASK;
		}
		// TODO do I want to prefer swap over flip or let both at the same time??
		if( input6 )
		{
			command |= COMMAND_FLIP_MASK;
		}
	}

	return command;
}