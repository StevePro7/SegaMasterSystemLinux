#ifndef _SCROLL_MANAGER_H_
#define _SCROLL_MANAGER_H_

#include "../object/scroll_object.h"
#include <stdbool.h>

// Global variable.
extern struct_scroll_object global_scroll_object;

void engine_scroll_manager_init();
void engine_scroll_manager_load( int scroll_complete );
bool engine_scroll_manager_update( unsigned char delta );

#endif//_SCROLL_MANAGER_H_