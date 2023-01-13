#include "level_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "tile_manager.h"

// Global variable.
struct_level_object global_level_object;

//static unsigned char column;
//static unsigned char level_tile_type[] = { tile_type_bridge, tile_type_bridge, tile_type_bridge, tile_type_bridge };
static unsigned char level_tile_cols[] = { 0, 1, 2, 3, 0, 1, 2, 3, 4, 5, 6, 7 };
//static unsigned char level_tile_high[] = { 0, 1, 2, 3 };
static unsigned char level_x;

void engine_level_manager_init()
{
	struct_level_object *lo = &global_level_object;
	lo->level_cols_offset = 0;
	lo->level_draw_offset = 0;
	//column = 0;
	level_x = 0;
}

void engine_level_manager_load()
{
}

void engine_level_manager_draw( unsigned int offset )
{
	offset += 2;
	//struct_level_object *lo = &global_level_object;
	//unsigned char index, type, cols;

	//lo->level_cols_offset = offset;
	//lo->level_draw_offset = offset % SCREEN_WIDE;
	////engine_font_manager_data( lo->level_cols_offset, 10, 2 );
	////engine_font_manager_data( lo->level_draw_offset, 20, 2 );

	//// TODO hack while debugging
	//if( lo->level_draw_offset >= 12 )
	//{
	//	//engine_font_manager_text( "NOPE!", 4, 2 );
	//	return;
	//}

	////engine_font_manager_text( "     ", 4, 2 );
	//index = lo->level_draw_offset;
	//type = tile_type_bridge;// level_tile_type[ index ];
	//cols = level_tile_cols[ index ];
	////engine_tile_manager_draw_columns( tile_type_island, column, 18, column, false );
	//engine_tile_manager_draw_columns( type, level_x, 12, cols, false );
	//level_x++;
}