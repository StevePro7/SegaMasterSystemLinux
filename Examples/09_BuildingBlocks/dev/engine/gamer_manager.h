#ifndef _GAMER_MANAGER_H_
#define _GAMER_MANAGER_H_

#include "../object/gamer_object.h"

void engine_gamer_manager_load();
void engine_gamer_manager_toggle_color();
void engine_gamer_manager_toggle_frame();
void engine_gamer_manager_setdirection( unsigned char direction );
void engine_gamer_manager_incmovements();
void engine_gamer_manager_setlifecycle();
void engine_gamer_manager_update();
void engine_gamer_manager_draw();

// Global variable.
extern struct_gamer_object global_gamer_object;

#endif//_GAMER_MANAGER_H_
