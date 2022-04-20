#ifndef _MAP_MANAGER_H_
#define _MAP_MANAGER_H_

#include "../object/map_object.h"

// Global variable.
extern struct_map_object global_map_object;

void engine_map_manager_init();
void engine_map_manager_update();

#endif//_MAP_MANAGER_H_