#include "level_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "tile_manager.h"
#include "../object/tile_object.h"

// Global variable.
struct_level_object global_level_object;

void engine_level_manager_init()
{
	struct_level_object *lo = &global_level_object;
	lo->planeA_index = 0;
	lo->planeA_type = tile_type_no_tiles;
	lo->planeB_type = tile_type_no_tiles;
	lo->planeA_count = 0;
}

void engine_level_manager_update( unsigned char column_X, unsigned int scroll_X )
{
	struct_level_object *lo = &global_level_object;
	//unsigned char index;
	unsigned char four;
	unsigned char column_Y;

	unsigned int planeA_column;
	unsigned int planeB_column;

	//index = lo->planeA_index;
	planeA_column = planeA_object_column[ lo->planeA_index ];
	planeB_column = planeB_object_column[ lo->planeB_index ];

	// Set column.
	if( scroll_X == planeA_column )
	{
		lo->planeA_count = 0;
		lo->planeA_type = planeA_object_object[ lo->planeA_index ];
		lo->planeA_data = planeA_object_metadata[ lo->planeA_index ];
		lo->planeA_index++;
	}

	if( scroll_X == planeB_column )
	{
		lo->planeB_count = 0;
		lo->planeB_type = planeB_object_object[ lo->planeB_index ];
		lo->planeB_data = planeB_object_metadata[ lo->planeB_index ];
		lo->planeB_index++;
	}

	column_Y = WAVES_HIGH;
	engine_tile_manager_blank_column( column_X, column_Y );

	// Draw existing planeB.
	if( lo->planeB_type != tile_type_no_tiles )
	{
		engine_tile_manager_draw_pipe( lo->planeB_type, column_X, lo->planeB_data, lo->planeB_count );
		lo->planeB_count++;

		if( lo->planeB_count >= tile_object_wide[ lo->planeB_type ] )
		{
			lo->planeB_type = tile_type_no_tiles;
		}
	}

	// Draw existing planeB.
	if( lo->planeA_type != tile_type_no_tiles )
	{
		engine_tile_manager_draw_pipe( lo->planeA_type, column_X, lo->planeA_data, lo->planeA_count );
		lo->planeA_count++;

		if( lo->planeA_count >= tile_object_wide[ lo->planeA_type ] )
		{
			lo->planeA_type = tile_type_no_tiles;
		}

		return;
	}


	// Draw sea wave at a minimum.
	four = column_X % 4;
	engine_tile_manager_draw_pipe( tile_type_sea_tiles, column_X, WAVES_HIGH, four );


	//unsigned char type;
	//unsigned char sect;
	//unsigned char four;


	//type = level_object_type[ scroll_X ];
	//sect = level_object_sect[ scroll_X ];

	//if( type == 0 )
	//{
	//	four = column_X % 4;
	//	engine_tile_manager_draw_pipe( tile_type_sea_tiles, column_X, WAVES_HIGH, four );
	//}
	//else
	//{
	//	engine_tile_manager_draw_pipe( tile_type_section03, column_X, WAVES_HIGH - 3, sect );
	//}
}