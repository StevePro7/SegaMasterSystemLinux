#ifndef _LEVEL_OBJECT_H_
#define _LEVEL_OBJECT_H_

#include "../engine/global_manager.h"

typedef struct tag_struct_level_object
{
	// TODO
	// store level_tile* pointer to current level
	// store level_bank  value   to current level bank
	unsigned char *xlevel_planesA;
	unsigned char *xlevel_columnA;
	unsigned char *level_data;
	unsigned char level_bank;
	unsigned int level_cols_offset;
	unsigned char level_draw_offset;

} struct_level_object;

//extern const unsigned char level_planesA[];
//extern const unsigned char level_columnA[];

#endif//_LEVEL_OBJECT_H_