#ifndef _SCROLL_MANAGER_H_
#define _SCROLL_MANAGER_H_

#include "enum_manager.h"
#include "../object/scroll_object.h"
#include <stdbool.h>

// Global variable.
extern struct_scroll_object global_scroll_object;

void engine_scroll_manager_init();
void engine_scroll_manager_load( int scroll_complete );
//void engine_scroll_manager_screen( unsigned char screen );		// TODO set this correctly for checkpoint and test
enum_scroll_state engine_scroll_manager_update( unsigned char delta );

#endif//_SCROLL_MANAGER_H_