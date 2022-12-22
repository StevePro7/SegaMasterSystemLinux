#include "jump_manager.h"
#include "global_manager.h"
//#include "../banks/data.h"

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

void engine_jump_manager_data()
{
	//struct_jump_object *jo = &global_jump_object;
	//unsigned int index;

	//jo->num_jumps = data_val_size;
	//for( index = 0; index < jo->num_jumps; index++ )
	//{
	//	jo->jump_high[ index ] = data_val[ index ];
	//}
}