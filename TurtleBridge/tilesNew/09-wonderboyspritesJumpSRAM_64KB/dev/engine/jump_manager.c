#include "jump_manager.h"
#include "global_manager.h"

// Global variable.
struct_jump_object global_jump_object;

void engine_jump_manager_init( unsigned int num_jumps )
{
	struct_jump_object *jo = &global_jump_object;
	unsigned int index;

	jo->num_jumps = num_jumps;
	for( index = 0; index < MAX_JUMPS; index++ )
	{
		jo->jump_high[ index ] = 0;
	}
}

void engine_jump_manager_load( unsigned int index, unsigned char value )
{
	struct_jump_object *jo = &global_jump_object;
	jo->jump_high[ index ] = value;
}