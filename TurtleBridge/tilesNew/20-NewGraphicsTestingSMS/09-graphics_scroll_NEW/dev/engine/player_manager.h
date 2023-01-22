#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "../object/player_object.h"

// Global variable.
extern struct_player_object global_player_object;

void engine_player_manager_init();
void engine_player_manager_load();
void engine_player_manager_update();
void engine_player_manager_left();
void engine_player_manager_right();
void engine_player_manager_up();
void engine_player_manager_down();
void engine_player_manager_draw();

#endif//_PLAYER_MANAGER_H_
