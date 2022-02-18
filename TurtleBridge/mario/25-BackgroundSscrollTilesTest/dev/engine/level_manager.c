#include "level_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "tile_manager.h"

// Global variable.
struct_level_object global_level_object;

void engine_level_manager_init()
{
}

void engine_level_manager_update( unsigned char column_X, unsigned int scroll_X )
{
	unsigned char type;
	unsigned char sect;
	unsigned char four;
	//engine_tile_manager_blank_column( column_X );

	type = level_object_type[ scroll_X ];
	sect = level_object_sect[ scroll_X ];

	if( type == 0 )
	{
		four = column_X % 4;
		engine_tile_manager_draw_pipe( tile_type_sea_tiles, column_X, WAVES_HIGH, four );
	}
	else
	{
		engine_tile_manager_draw_pipe( tile_type_section03, column_X, WAVES_HIGH - 3, sect );
	}
}