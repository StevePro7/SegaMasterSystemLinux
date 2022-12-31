#ifndef _LEVEL_MANAGER_H_
#define _LEVEL_MANAGER_H_

#include "../object/level_object.h"

// Global variable.
extern struct_level_object global_level_object;

void engine_level_manager_init();
void engine_level_manager_load();
void engine_level_manager_draw( unsigned int offset );

#endif//_LEVEL_MANAGER_H_