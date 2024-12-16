#ifndef _GSL_MANAGER_H_
#define _GSL_MANAGER_H_

void devkit_GSL_initializeMap( void *scrolltable, void *metatiles );
void devkit_GSL_positionWindow( unsigned int X, unsigned int Y );
unsigned int * devkit_GSL_metatileLookup( unsigned int x, unsigned int y );
void devkit_GSL_tileLookup( unsigned int x, unsigned int y );
void devkit_GSL_refreshVDP();
void devkit_GSL_scroll( char x, char y );
void devkit_GSL_VBlank();
void devkit_GSL_metatileUpdate();
void devkit_GSL_metatileUpdateCustom( unsigned int x, unsigned int y, unsigned int offset );
unsigned int devkit_GSL_getMapWidthInPixels();
unsigned int devkit_GSL_getMapHeightInPixels();
unsigned int devkit_GSL_getMapWidthInMetatiles();
unsigned int devkit_GSL_getMapHeightInMetatiles();
unsigned int devkit_GSL_getScrolltableSize();
unsigned int devkit_GSL_getCurrentX();
unsigned int devkit_GSL_getCurrentY();
unsigned char devkit_GSL_getCollisionCount();
unsigned char *devkit_GSL_getScrolltableAddress();

#endif//_GSL_MANAGER_H_