#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "../object/player_object.h"
	
// Global variable.
extern struct_player_object global_player_object;

void engine_player_manager_init();
void engine_player_manager_startX( unsigned char difficulty );
void engine_player_manager_startY( unsigned char startY );
void engine_player_manager_screen( unsigned char screen );
//void engine_player_manager_load( unsigned char difficulty, unsigned char player_startY );
void engine_player_manager_update();
void engine_player_manager_update2();		// TODO update better
void engine_player_manager_update3();
void engine_player_manager_left();
void engine_player_manager_right();
void engine_player_manager_up();
void engine_player_manager_down();
void engine_player_manager_draw();
void engine_player_manager_pass();
void engine_player_manager_count();

#endif//_PLAYER_MANAGER_H_
