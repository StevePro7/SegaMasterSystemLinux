#ifndef _TILE_MANAGER_H_
#define _TILE_MANAGER_H_

void engine_tile_manager_sky();
void engine_tile_manager_sea();
void engine_tile_manager_turtle( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_cloud( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y );

void engine_tile_manager_section01( unsigned char x, unsigned char y );
void engine_tile_manager_section01_left( unsigned char x, unsigned char y );
void engine_tile_manager_section02( unsigned char x, unsigned char y );
void engine_tile_manager_section03( unsigned char x, unsigned char y );

void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col );

#endif//_TILE_MANAGER_H_