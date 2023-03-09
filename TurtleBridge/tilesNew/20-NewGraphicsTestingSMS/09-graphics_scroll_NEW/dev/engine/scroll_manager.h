#ifndef _SCROLL_MANAGER_H_
#define _SCROLL_MANAGER_H_

#include "enum_manager.h"
#include "../object/scroll_object.h"
//#include <stdbool.h>

// Global variable.
extern struct_scroll_object global_scroll_object;

void engine_scroll_manager_init();

// Main screen scroll routines.
void engine_scroll_manager_load( unsigned char screen, int scrollFinish );
enum_scroll_state engine_scroll_manager_update( unsigned char delta );

// Full screen scroll routines.
void engine_scroll_manager_full_load( unsigned char screen, int scrollFinish );
enum_scroll_state engine_scroll_manager_full_update( unsigned char delta );

// Parallax scroll routines.
void engine_scroll_manager_para_load( unsigned char screen, int scrollFinish );
enum_scroll_state engine_scroll_manager_para_update( unsigned char delta );

// TODO delete
//enum_scroll_state engine_scroll_manager_section( unsigned char delta );

#endif//_SCROLL_MANAGER_H_