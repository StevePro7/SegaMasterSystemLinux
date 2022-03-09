#include "select_manager.h"

// Global variables.
struct_select_object global_select_object;

void engine_select_manager_init()
{
	struct_select_object *so = &global_select_object;
	unsigned char index;

	for( index = 0; index < MAX_SELECTS; index++ )
	{
		so->select_index[ index ] = 0;
	}

	so->select_X = 0;
	so->select_Y = 0;
	so->select_min = 0;
	so->select_max = 0;
}

void engine_select_manager_load( unsigned char x, unsigned char y, unsigned char min, unsigned char max )
{
	struct_select_object *so = &global_select_object;
	so->select_X = x;
	so->select_Y = y;
	so->select_min = min;
	so->select_max = max;
}

void engine_select_manager_update( unsigned char index )
{

}
