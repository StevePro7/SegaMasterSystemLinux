#include "_gsl_manager.h"

#ifdef _CONSOLE
#include "../../tmp/GSLib.h"
#else
#include "../../lib/GSLib.h"
#endif

void devkit_GSL_initializeMap( void *scrolltable, void *metatiles )
{
	GSL_initializeMap( scrolltable, metatiles );
}
void devkit_GSL_positionWindow( unsigned int X, unsigned int Y )
{
	GSL_positionWindow( X, Y );
}
unsigned int *devkit_GSL_metatileLookup( unsigned int x, unsigned int y )
{
	return GSL_metatileLookup( x, y );
}
void devkit_GSL_tileLookup( unsigned int x, unsigned int y )
{
	GSL_tileLookup( x, y );
}
void devkit_GSL_refreshVDP()
{
	GSL_refreshVDP();
}
void devkit_GSL_scroll( char x, char y )
{
	GSL_scroll( x, y );
}
void devkit_GSL_VBlank()
{
	GSL_VBlank();
}
void devkit_GSL_metatileUpdate()
{
	GSL_metatileUpdate();
}
void devkit_GSL_metatileUpdateCustom( unsigned int x, unsigned int y, unsigned int offset )
{
	GSL_metatileUpdateCustom( x, y, offset );
}
unsigned int devkit_GSL_getMapWidthInPixels()
{
	return GSL_getMapWidthInPixels();
}
unsigned int devkit_GSL_getMapHeightInPixels()
{
	return GSL_getMapHeightInPixels();
}
unsigned int devkit_GSL_getMapWidthInMetatiles()
{
	return GSL_getMapWidthInMetatiles();
}
unsigned int devkit_GSL_getMapHeightInMetatiles()
{
	return GSL_getMapHeightInMetatiles();
}
unsigned int devkit_GSL_getScrolltableSize()
{
	return GSL_getScrolltableSize();
}
unsigned int devkit_GSL_getCurrentX()
{
	return GSL_getCurrentX();
}
unsigned int devkit_GSL_getCurrentY()
{
	return GSL_getCurrentY();
}
unsigned char devkit_GSL_getCollisionCount()
{
	return GSL_getCollisionCount();
}
unsigned char *devkit_GSL_getScrolltableAddress()
{
	return GSL_getScrolltableAddress();
}