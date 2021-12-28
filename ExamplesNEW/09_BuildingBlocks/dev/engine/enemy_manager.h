#ifndef _ENEMY_MANAGER_H_
#define _ENEMY_MANAGER_H_

#include "../object/enemy_object.h"
#define MAX_ENEMIES				3

void engine_enemy_manager_load();
void engine_enemy_manager_toggle_color();
void engine_enemy_manager_toggle_frame();
void engine_enemy_manager_draw();

// Global variables.
extern struct_enemy_object global_enemy_objects[ MAX_ENEMIES ];

#endif//_ENEMY_MANAGER_H_