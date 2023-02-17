#include "command_manager.h"
#include "global_manager.h"

void engine_command_manager_init()
{
}

unsigned char engine_command_manager_build( unsigned char  state, unsigned char input1, unsigned char input2, unsigned char input3, unsigned char input4, unsigned char input5, unsigned char input6 )
{
	unsigned char command = COMMAND_NONE_MASK;

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

	if( input3 )
	{
//		command |= COMMAND_RGHT_MASK;
	}

	return command;
}