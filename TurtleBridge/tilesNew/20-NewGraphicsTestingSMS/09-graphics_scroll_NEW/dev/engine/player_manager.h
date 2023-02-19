#ifndef _PLAYER_MANAGER_H_
#define _PLAYER_MANAGER_H_

#include "enum_manager.h"
#include "../object/player_object.h"
	
// Global variable.
extern struct_player_object global_player_object;

//void engine_player_manager_starts(unsigned char index);
void engine_player_manager_init();
void engine_player_manager_initX( unsigned char difficulty );
void engine_player_manager_loadX( unsigned char checkPoint );
void engine_player_manager_loadY( unsigned char player_loadY );

unsigned char engine_player_manager_get_deltaX( unsigned char state, unsigned char command );
signed int engine_player_manager_get_deltaY();
void engine_player_manager_set_action( unsigned char state, unsigned char command );

void engine_player_manager_horz( unsigned char deltaX );
void engine_player_manager_vert( unsigned int deltaY );
void engine_player_manager_bounds( signed int deltaY, unsigned char posnY, unsigned char invincible );
void engine_player_manager_animate( unsigned char state );
enum_player_state engine_player_manager_collision( unsigned char state, unsigned char lookX, unsigned char tileY, signed int deltaY, unsigned char posnY, unsigned char invincible );

// TODO delete
void engine_player_manager_right( unsigned char deltaX );
void engine_player_manager_down( unsigned char deltaY );

void engine_player_manager_draw();
void engine_player_manager_pass();
void engine_player_manager_count();

#endif//_PLAYER_MANAGER_H_
