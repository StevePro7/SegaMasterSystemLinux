#ifndef _TILE_MANAGER_H_
#define _TILE_MANAGER_H_

#include "global_manager.h"
#include "../object/tile_object.h"

// Global variable.
extern struct_tile_object global_tile_object;
extern struct_tile_object global_tile_objects[ MAX_TILE_OBJECTS ];

void engine_tile_manager_init();

void engine_tile_manager_gfx5( unsigned int tmp, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
void engine_tile_manager_gfx4( unsigned int tmp, unsigned char h );
void engine_tile_manager_gfx3( unsigned char tmp, unsigned char x, unsigned char col );
void engine_tile_manager_gfx2( unsigned char tmp );
void engine_tile_manager_gfx();

void engine_tile_manager_clouds();
void engine_tile_manager_island();
void engine_tile_manager_tree();
void engine_tile_manager_bridge();
void engine_tile_manager_turtle();
void engine_tile_manager_sign();

void engine_tile_manager_sky();
void engine_tile_manager_sea();

#endif//_TILE_MANAGER_H_