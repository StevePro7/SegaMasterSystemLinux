#ifndef _LEVEL_OBJECT_H_
#define _LEVEL_OBJECT_H_

#include "../engine/global_manager.h"

typedef struct tag_struct_level_object
{
	unsigned int level_cols_offset;
	unsigned char level_draw_offset;

} struct_level_object;

extern const unsigned char level_planesA[];
//extern const unsigned char level_heightA[];
extern const unsigned char level_columnA[];

#endif//_LEVEL_OBJECT_H_