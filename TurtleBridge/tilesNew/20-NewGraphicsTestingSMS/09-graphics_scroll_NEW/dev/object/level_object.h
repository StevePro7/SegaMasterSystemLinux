#ifndef _LEVEL_OBJECT_H_
#define _LEVEL_OBJECT_H_

#include "../engine/global_manager.h"

typedef struct tag_struct_level_object
{
	// TODO
	// store level_tile* pointer to current level
	// store level_bank  value   to current level bank
	unsigned char *level_data;
	unsigned char level_size;
	unsigned char level_bank;
	//unsigned int level_cols_offset;
	unsigned char level_draw_offset;
	
	//unsigned char *level_platforms;		// IMPORTANT 28/03/2023 - don't use fixed size array here as corrupts other memory e.g. playerX
	//unsigned char level_platforms[ 32 ] = { 0 };

} struct_level_object;

extern unsigned char level_platforms[];
//extern const unsigned char level_planesA[];
//extern const unsigned char level_columnA[];

#endif//_LEVEL_OBJECT_H_