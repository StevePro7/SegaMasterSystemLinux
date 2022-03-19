#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "../object/player_object.h"
#include <stdbool.h>

// Global variable.
extern struct_player_object global_player_object;

void engine_player_manager_load();
void engine_player_manager_calc();
void engine_player_manager_stats();
void engine_player_manager_rest();
void engine_player_manager_draw();
void engine_player_manager_hplo();
void engine_player_manager_dec_gold( unsigned char gold );
void engine_player_manager_inc_gold( unsigned char xp, unsigned char gold );
void engine_player_manager_hit( char hp );
bool engine_player_manager_dead();

#endif//_PLAYER_MANAGER_H_