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

// Global variable.
struct_level_object global_level_object;

// TODO checkpoints!!
void engine_level_manager_init()
{
	struct_level_object *lo = &global_level_object;
	lo->level_draw_offset = SCREEN_WIDE - 1;
}

void engine_level_manager_load( unsigned char index )
{
	struct_level_object *lo = &global_level_object;
	lo->level_draw_offset = SCREEN_WIDE - 1;

	devkit_SMS_mapROMBank( FIXED_BANK );
	lo->level_data = ( unsigned char* ) level_object_data[ index ];
	lo->level_size = level_object_size[ index ];
	//lo->level_size = 40;	// stevepro
	lo->level_bank = level_object_bank[ index ];

	// IMPORTANT
	// must store level_size as 1px less because size=64 thus range is 0-63 i.e. store 63 NOT 64...!
	lo->level_size -= 1;
}

// TODO - need to get this correct!
void engine_level_manager_show( unsigned char screen )
{
	struct_level_object *lo = &global_level_object;
	unsigned char index;
	unsigned int offset;
	offset = screen * SCREEN_WIDE;
	for( index = 0; index < SCREEN_WIDE; index++ )
	{
		engine_level_manager_draw( offset + index );
	}
}

void engine_level_manager_draw( unsigned int offset )
{
	struct_level_object *lo = &global_level_object;
	//unsigned char data, planesA, columnA;
	unsigned char level_data, level_column, level_object, level_platform;
	bool flip = false;

	lo->level_draw_offset++;
	if( lo->level_draw_offset >= SCREEN_WIDE )
	{
		lo->level_draw_offset = 0;
	}

	devkit_SMS_mapROMBank( lo->level_bank );
	//data = lo->level_data[ offset ];
	//planesA = 0;
	//columnA = 0;
	//engine_function_manager_convertByteToNibbles( data, &columnA, &planesA );
	//if( columnA >= 8 )
	//{
	//	flip = true;
	//	columnA -= 8;
	//}
	//engine_tile_manager_draw_columns( planesA, lo->level_draw_offset, columnA, flip );

	level_data = lo->level_data[ offset ];
	engine_function_manager_convertByteToNibbles( level_data, &level_column, &level_object );
	level_platform = tiles_object_platform[ level_object ];
	//lo->level_platforms[ offset ] = level_platform;
//	lo->level_platforms[ offset ] = tiles_object_platform[ level_object ];
	//level_platforms[ lo->level_draw_offset ] = level_platform;// tiles_object_platform[ level_object ];
	level_platforms[ offset ] = level_platform;// tiles_object_platform[ level_object ];
	if( level_column >= 8 )
	{
		flip = true;
		level_column -= 8;		// TODO - #define
	}
	engine_tile_manager_draw_columns( level_object, lo->level_draw_offset, level_column, flip );

	//devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( offset, 12, 12 );
	//engine_font_manager_data( level_object, 12, 13 );
	//engine_font_manager_data( level_platform, 12, 14 );
	//engine_font_manager_data( lo->level_platforms[ offset ], 12, 15 );
}