#ifndef _GUN_MANAGER_H_
#define _GUN_MANAGER_H_

//extern struct inlibDevice *device;
unsigned char devkit_get_device_type();
unsigned char devkit_get_device_absx();
unsigned char devkit_get_device_absy();
//void devkit_set_device_absx( unsigned char x );
//void devkit_set_device_absy( unsigned char y );

unsigned char devkit_INLIB_TYPE_PHASER_HIT();
unsigned int devkit_INLIB_BTN_1();

void devkit_inlib_init();

//struct inlibDevice devkit_inlib_getPortPtr( unsigned char port );
void devkit_inlib_getPortPtr( unsigned char port );
unsigned short devkit_inlib_keysStatus( unsigned char port );
void devkit_inlib_pollLightPhaser_trigger( unsigned char port );

void devkit_inlib_pollLightPhaser_position( unsigned char port );

#endif//_GUN_MANAGER_H_