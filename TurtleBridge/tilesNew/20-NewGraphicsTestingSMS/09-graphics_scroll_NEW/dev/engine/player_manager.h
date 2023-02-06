#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "../object/player_object.h"
	
// Global variable.
extern struct_player_object global_player_object;

void engine_player_manager_init();
void engine_player_manager_initX( unsigned char difficulty );
void engine_player_manager_loadX( unsigned char checkPoint );
void engine_player_manager_loadY( unsigned char player_loadY );

//void engine_player_manager_load( unsigned char difficulty, unsigned char player_startY );
void engine_player_manager_update();
void engine_player_manager_update2();		// TODO update better
void engine_player_manager_update3();
void engine_player_manager_left();
void engine_player_manager_right( unsigned char deltaX );
void engine_player_manager_up();
void engine_player_manager_down( unsigned char deltaY );
void engine_player_manager_downX();
void engine_player_manager_draw();
void engine_player_manager_pass();
void engine_player_manager_count();

#endif//_PLAYER_MANAGER_H_
