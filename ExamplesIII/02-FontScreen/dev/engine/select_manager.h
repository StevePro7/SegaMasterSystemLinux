#ifndef _SELECT_MANAGER_H_
#define _SELECT_MANAGER_H_

#include "../object/select_object.h"

// Global variables.
extern struct_select_object global_select_object;

void engine_select_manager_init();
void engine_select_manager_load();
void engine_select_manager_update();

#endif//_SELECT_MANAGER_H_
