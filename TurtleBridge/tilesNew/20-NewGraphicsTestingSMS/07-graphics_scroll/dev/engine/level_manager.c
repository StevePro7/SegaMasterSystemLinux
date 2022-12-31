#include "level_manager.h"
//#include "global_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "tile_manager.h"

// Global variable.
struct_level_object global_level_object;

static unsigned char column;

void engine_level_manager_init()
{
	column = 0;
}

void engine_level_manager_load()
{
}

void engine_level_manager_draw()
{
	engine_font_manager_draw_text( "LEVEL", 10, 2 );

	engine_tile_manager_draw_columns( tile_type_island, column, 18, column, false );
}