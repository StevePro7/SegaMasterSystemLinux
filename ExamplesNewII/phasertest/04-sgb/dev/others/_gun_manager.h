#ifndef _GUN_MANAGER_H_
#define _GUN_MANAGER_H_



unsigned int devkit_INLIB_BTN_1();

void devkit_inlib_init();

//struct inlibDevice devkit_inlib_getPortPtr( unsigned char port );
void devkit_inlib_getPortPtr( unsigned char port );
unsigned short devkit_inlib_keysStatus( unsigned char port );
void devkit_inlib_pollLightPhaser_trigger( unsigned char port );

#endif//_GUN_MANAGER_H_