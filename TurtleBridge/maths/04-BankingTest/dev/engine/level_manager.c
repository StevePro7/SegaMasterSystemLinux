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
		lo->planeA_total = 0;
		lo->planeA_type = planeA_object_object[ lo->planeA_index ];
		lo->planeA_data = planeA_object_metadata[ lo->planeA_index ];
		lo->planeA_wide = tile_object_wide[ lo->planeA_type ];
		lo->planeA_repeat = 0;
		lo->planeA_index++;

		if( tile_type_section01 == lo->planeA_type || tile_type_section02 == lo->planeA_type || tile_type_section03 == lo->planeA_type )
		{
			lo->planeA_wide += lo->planeA_data * GENTILE_WIDE;
		}
	}

	if( scroll_X == planeB_column )
	{
		lo->planeB_count = 0;
		lo->planeB_type = planeB_object_object[ lo->planeB_index ];
		lo->planeB_data = planeB_object_metadata[ lo->planeB_index ];
		lo->planeB_index++;
	}

	column_Y = WAVES_HIGH;
	engine_tile_manager_blank_column( column_X );

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

	// Draw existing planeA.
	if( lo->planeA_type != tile_type_no_tiles )
	{
		if( tile_type_section03 == lo->planeA_type )
		{
			if( lo->planeA_repeat < lo->planeA_data )
			{
				if( lo->planeA_count > 5 )
				{
					lo->planeA_count = 2;
					lo->planeA_repeat++;
				}
			}
		}
		else if( tile_type_section01 == lo->planeA_type || tile_type_section02 == lo->planeA_type )
		{
			if( lo->planeA_repeat < lo->planeA_data )
			{
				if( lo->planeA_count > 9 )
				{
					lo->planeA_count = 6;
					lo->planeA_repeat++;
				}
			}
		}

		// TODO - high relative to sea level.
		engine_tile_manager_draw_pipe( lo->planeA_type, column_X, 18, lo->planeA_count );	// section03	sign = 15
		//engine_tile_manager_draw_pipe( lo->planeA_type, column_X, 12, lo->planeA_count );	// section01	sign = 9
		//engine_tile_manager_draw_pipe( lo->planeA_type, column_X, 16, lo->planeA_count );	// section01	sign = 13
		lo->planeA_count++;
		lo->planeA_total++;

		if( lo->planeA_total >= lo->planeA_wide )
		{
			lo->planeA_type = tile_type_no_tiles;
		}

		return;
	}


	// Draw sea wave at a minimum.
	four = column_X % 4;
	engine_tile_manager_draw_pipe( tile_type_sea_tiles, column_X, WAVES_HIGH, four );
}