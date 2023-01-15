#include "level_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "tile_manager.h"

// Global variable.
struct_level_object global_level_object;

//static unsigned char column;
//static unsigned char level_tile_type[] = { tile_type_bridge, tile_type_bridge, tile_type_bridge, tile_type_bridge };
//static unsigned char level_tile_cols[] = { 0, 1, 2, 3, 0, 1, 2, 3, 4, 5, 6, 7 };
//static unsigned char level_tile_high[] = { 0, 1, 2, 3 };
static unsigned char level_x;

void engine_level_manager_init()
{
	struct_level_object *lo = &global_level_object;
	lo->level_cols_offset = 0;
	lo->level_draw_offset = 31;
	//column = 0;
	level_x = 0;
}

void engine_level_manager_load()
{
	struct_level_object *lo = &global_level_object;
	lo->level_cols_offset = 0;
	lo->level_draw_offset = 31;
	//column = 0;
	level_x = 0;
}

void engine_level_manager_draw( unsigned int offset )
{
	struct_level_object *lo = &global_level_object;
	unsigned int index;
	unsigned char planesA, columnA;
	lo->level_cols_offset = offset;
	lo->level_draw_offset = offset % SCREEN_WIDE;

	index = lo->level_cols_offset;
	//engine_font_manager_draw_data( index, 10, 1);
	//engine_font_manager_draw_data( lo->level_draw_offset, 20, 1 );

	planesA = level_planesA[ index ];
	columnA = level_columnA[ index ];
	//type = level_tile_type[ index ];
	//cols = level_tile_cols[ index ];
	//engine_tile_manager_draw_columns( tile_type_island, column, 18, column, false );
	//engine_tile_manager_draw_columns( type, cols, 12, cols, false );

	//flip = false;
	if( columnA >= 128 )
	{
		//flip = true;
		columnA -= 128;
	}
	//engine_tile_manager_draw_empties( lo->level_draw_offset );
	//if( 0 != planesA )
	//{
		engine_tile_manager_draw_columns( planesA, lo->level_draw_offset, columnA );
	//}
	//else
	//{
		//engine_tile_manager_draw_empties( lo->level_draw_offset );
	//}
}