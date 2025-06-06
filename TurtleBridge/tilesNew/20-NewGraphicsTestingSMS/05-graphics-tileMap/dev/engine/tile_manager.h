#ifndef _TILE_MANAGER_H_
#define _TILE_MANAGER_H_

void engine_tile_manager_maps( unsigned int tmp );
void engine_tile_manager_gfx4( unsigned int tmp, unsigned char h );
void engine_tile_manager_gfx3( unsigned char tmp, unsigned char x, unsigned char col );
void engine_tile_manager_gfx2( unsigned char tmp );
void engine_tile_manager_gfx();

void engine_tile_manager_sky();
void engine_tile_manager_sea();
//void engine_tile_manager_draw_pipe( unsigned char type, unsigned int x, unsigned char y, unsigned char wide, unsigned char high, unsigned char col );
//void engine_tile_manager_draw_tile( unsigned char type, unsigned char x, unsigned char y );
//void engine_tile_manager_draw_norm( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end );
//void engine_tile_manager_draw_flip( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end );
//
//void engine_tile_manager_turtle( unsigned char type, unsigned char x, unsigned char y );
////void engine_tile_manager_cloud( unsigned char type, unsigned char x, unsigned char y );
//void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y );
//
////void engine_tile_manager_section01( unsigned char x, unsigned char y );
////void engine_tile_manager_section01_left( unsigned char x, unsigned char y );
////void engine_tile_manager_section02( unsigned char x, unsigned char y );
////void engine_tile_manager_section03( unsigned char x, unsigned char y );
//
//void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col );

#endif//_TILE_MANAGER_H_