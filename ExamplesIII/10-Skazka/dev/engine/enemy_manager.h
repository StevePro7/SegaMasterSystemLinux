#ifndef _ENEMY_MANAGER_H_
#define _ENEMY_MANAGER_H_

#include "../object/enemy_object.h"

// Global variable.
extern struct_enemy_object global_enemy_object;

void engine_enemy_manager_init();
void engine_enemy_manager_load( unsigned char level );
void engine_enemy_manager_draw();

#endif//_ENEMY_MANAGER_H_
