#ifndef _TILE_MANAGER_H_
#define _TILE_MANAGER_H_

void engine_tile_manager_sky();
void engine_tile_manager_sea();

void engine_tile_manager_blank_column( unsigned char column_X, unsigned char column_Y );

void engine_tile_manager_draw_pipe( unsigned char type, unsigned int x, unsigned char y, unsigned char col );
//void engine_tile_manager_draw_pipe2( unsigned char type, unsigned int x, unsigned char y, unsigned char wide, unsigned char high, unsigned char col );
void engine_tile_manager_draw_tile( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_draw_norm( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end );
void engine_tile_manager_draw_flip( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end );
void engine_tile_manager_draw_offset( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end, unsigned char off );

//void engine_tile_manager_draw_norm2( unsigned char type, unsigned char x, unsigned char y );
//void engine_tile_manager_draw_size2( unsigned char type, unsigned char x, unsigned char y );

void engine_tile_manager_sea_turtle( unsigned char turtle, unsigned char x, unsigned char y );
void engine_tile_manager_fly_turtle( unsigned char turtle, unsigned char x, unsigned char y );
void engine_tile_manager_section03( unsigned char sect, unsigned char x, unsigned char y );
//void engine_tile_manager_cloud( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y );

//void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col );

void engine_tile_manager_draw_flip2( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_draw_norm2( unsigned char type, unsigned char x, unsigned char y );
void engine_tile_manager_draw_offset2( unsigned char type, unsigned char offset, unsigned char x, unsigned char y );

void engine_tile_manager_draw_clouds();

#endif//_TILE_MANAGER_H_