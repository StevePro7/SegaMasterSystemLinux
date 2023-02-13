#ifndef _GAME_MANAGER_H_
#define _GAME_MANAGER_H_

#include "../object/game_object.h"

// Global variable.
extern struct_game_object global_game_object;

void engine_game_manager_init();
void engine_game_manager_set_difficulty( unsigned char game_difficulty );

#endif//_GAME_MANAGER_H_