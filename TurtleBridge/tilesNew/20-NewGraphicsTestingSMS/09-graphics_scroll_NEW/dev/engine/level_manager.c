#include "level_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "maths_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank6.h"
#include <stdbool.h>

// Global variable.
struct_level_object global_level_object;

// TODO checkpoints!!
void engine_level_manager_init()
{
	struct_level_object *lo = &global_level_object;
	unsigned char idx;
	//lo->level_cols_offset = 0;
	lo->level_draw_offset = SCREEN_WIDE - 1;

	// TODO - set the platform value to maximum if invincible setting!
	for( idx = 0; idx < SCREEN_WIDE; idx++ )
	{
		lo->level_platforms[ idx ] = tiles_object_platform[ TILE_WAVES_BLOCK ];
	}
}

void engine_level_manager_load( unsigned char index )
{
	struct_level_object *lo = &global_level_object;
	//unsigned char idx;
	//lo->level_cols_offset = 0;
	lo->level_draw_offset = 31;

	devkit_SMS_mapROMBank( FIXED_BANK );
	lo->level_data = ( unsigned char* ) level_object_data[ index ];
	lo->level_size = level_object_size[ index ];
	lo->level_bank = level_object_bank[ index ];
}

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
	//unsigned int index;
	unsigned char data, planesA, columnA;
	bool flip = false;

	//lo->level_cols_offset = offset;
	lo->level_draw_offset++;
	if( lo->level_draw_offset >= SCREEN_WIDE )
	{
		lo->level_draw_offset = 0;
	}

//	engine_font_manager_data( offset, 10, 2 );
	//if( offset >= lo->level_size )
	//{
	//	engine_font_manager_text( "THE END", 10, 3 );
	//}
	//index = lo->level_cols_offset;

	devkit_SMS_mapROMBank( lo->level_bank );
	//data = lo->level_data[ index ];
	data = lo->level_data[ offset ];
	planesA = 0;
	columnA = 0;
	engine_function_manager_convertByteToNibbles( data, &columnA, &planesA );

	if( columnA >= 8 )
	{
		flip = true;
		columnA -= 8;
	}

	engine_tile_manager_draw_columns( planesA, lo->level_draw_offset, columnA, flip );
}