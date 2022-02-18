#include "level_manager.h"
#include "enum_manager.h"
#include "tile_manager.h"

// Global variable.
struct_level_object global_level_object;

void engine_level_manager_init()
{
}

void engine_level_manager_update( unsigned char column_X, unsigned int scroll_X )
{
	unsigned char sect;

	engine_tile_manager_blank_column( column_X );

	sect = level_object_sect[ scroll_X ];
	engine_tile_manager_draw_pipe( tile_type_section03, column_X, 15, sect );
}