#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "../object/player_object.h"

// Global variable.
extern struct_player_object global_player_object;

void engine_player_manager_init();
void engine_player_manager_calc();
void engine_player_manager_stats();
void engine_player_manager_rest();

#endif//_PLAYER_MANAGER_H_