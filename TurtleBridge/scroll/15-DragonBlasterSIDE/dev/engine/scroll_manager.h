#ifndef _SCROLL_MANAGER_H_
#define _SCROLL_MANAGER_H_

#include "../object/scroll_object.h"
#include <stdbool.h>

// Global variable.
extern struct_scroll_object global_scroll_object;

// Methods.
void engine_scroll_manager_init( unsigned char *level_data );
void engine_scroll_manager_load();
bool engine_scroll_manager_update();
void engine_scroll_manager_draw();
unsigned char engine_scroll_manager_getPosY( unsigned int col );

#endif//_SCROLL_MANAGER_H_