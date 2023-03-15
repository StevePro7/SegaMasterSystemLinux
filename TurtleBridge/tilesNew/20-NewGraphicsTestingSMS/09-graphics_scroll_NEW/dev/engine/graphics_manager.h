#ifndef _GRAPHICS_MANAGER_H_
#define _GRAPHICS_MANAGER_H_

//void engine_graphics_manager_black();
//void engine_graphics_manager_blue();

void engine_graphics_manager_common();
void engine_graphics_manager_screen( unsigned int tile );
void engine_graphics_manager_level( unsigned char cloud_formation );
void engine_graphics_manager_sea();
void engine_graphics_manager_clouds( unsigned char data );
//void engine_graphics_manager_cloud();
void engine_graphics_manager_title();
void engine_graphics_manager_image( const unsigned char *tiles, unsigned int tileMap, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
//void engine_graphics_manager_seaX( unsigned char x );

#endif//_GRAPHICS_MANAGER_H_