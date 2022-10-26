#ifndef _JUMP_MANAGER_H_
#define _JUMP_MANAGER_H_

#include "../object/jump_object.h"

// Global variable.
extern struct_jump_object global_jump_object;

void engine_jump_manager_init( unsigned int num_jumps );
void engine_jump_manager_load( unsigned int index, unsigned char value );

#endif//_JUMP_MANAGER_H_