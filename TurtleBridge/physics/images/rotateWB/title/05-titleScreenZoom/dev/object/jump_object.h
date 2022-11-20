#ifndef _JUMP_OBJECT_H_
#define _JUMP_OBJECT_H_

#include "../engine/global_manager.h"

typedef struct tag_struct_jump_object
{
	unsigned int num_jumps;
	unsigned int jump_high[ MAX_JUMPS ];

} struct_jump_object;

#endif//_JUMP_OBJECT_H_