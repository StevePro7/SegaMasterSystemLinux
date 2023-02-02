#include "level_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "maths_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank6.h"
#include "../banks/bank2.h"
#include <stdbool.h>

#define LEVEL_FLIP_TILE_FLAG	8

// Global variable.
struct_level_object global_level_object;

void engine_level_manager_load( unsigned char level )
{
	struct_level_object *lo = &global_level_object;
	lo->colunn_draw = SCREEN_WIDE - 1;

	devkit_SMS_mapROMBank( FIXED_BANK );
	lo->level_data = ( unsigned char* ) level_object_data[ level ];
	lo->level_size = level_object_size[ level ];
	lo->level_bank = level_object_bank[ level ];

	// IMPORTANT
	// Must store level_size as 1px less to ensure scrolling finishes OK.
	lo->level_size -= 1;
}

void engine_level_manager_show( unsigned char screen )
{
	struct_level_object *lo = &global_level_object;
	unsigned char index;

	unsigned int scrollColumn = screen * SCREEN_WIDE;
	for( index = 0; index < SCREEN_WIDE; index++ )
	{
		engine_level_manager_draw( scrollColumn + index );
	}
}

void engine_level_manager_draw( unsigned int scrollColumn )
{
	struct_level_object *lo = &global_level_object;
	unsigned char level_data, level_column;
	unsigned char level_object, level_platform;
	bool flip = false;

	lo->colunn_draw++;
	if( lo->colunn_draw >= SCREEN_WIDE )
	{
		lo->colunn_draw = 0;
	}

	devkit_SMS_mapROMBank( lo->level_bank );
	level_data = lo->level_data[ scrollColumn ];
	engine_function_manager_convertByteToNibbles( level_data, &level_column, &level_object );

	level_platform = tiles_object_platform[ level_object ];
	level_platforms[ lo->colunn_draw ] = level_platform;
	if( level_column >= LEVEL_FLIP_TILE_FLAG )
	{
		flip = true;
		level_column -= LEVEL_FLIP_TILE_FLAG;
	}

	engine_tile_manager_draw_columns( level_object, lo->colunn_draw, level_column, flip );
}