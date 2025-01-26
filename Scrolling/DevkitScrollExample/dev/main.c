#include "main.h"

#define MAP_WIDTH 37
#define MAX_SCROLL ((MAP_WIDTH-31)*8)

unsigned char scroll[ 2 ] = { 0,0 };
bool scroll_dir[ 2 ] = { true,true };

unsigned char i;

void loadAssets( void ) 
{
	// load the tiles for both pictures
	devkit_SMS_loadPSGaidencompressedTiles( p1__tiles__psgcompr, 0 );
	devkit_SMS_loadPSGaidencompressedTiles( p2__tiles__psgcompr, 224 );
}

void lineIRQhandler( void ) 
{
	// this is the line interrupt service routine (handler)
	// this function gets called at line 92, and we change the X scroll register and the
	//     BG palette so that it matches with second picture
	devkit_SMS_disableLineInterrupt();
	devkit_SMS_setBGScrollX( -scroll[ 1 ] );
	devkit_SMS_loadBGPalette( (unsigned char *)p2__palette__bin );
}

void scrollBG( unsigned char which, bool dir )
{
	unsigned char y;
	const unsigned int *p;
	if( dir )
	{            // this direction is 'right'
		if( which == 0 ) {           // this is picture 1
			p = &p1__tilemap__bin[ ( scroll[ 0 ] / 8 ) + 31 ];
			for( y = 0; y < 12; y++ ) {
				devkit_SMS_setNextTileatXY( scroll[ 0 ] / 8, y );
				devkit_SMS_setTile( *p );
				p += MAP_WIDTH;
			}
		}
		else 
		{                  // this is picture 2
			p = &p2__tilemap__bin[ ( scroll[ 1 ] / 8 ) + 31 ];
			for( y = 12; y < 24; y++ ) {
				devkit_SMS_setNextTileatXY( scroll[ 1 ] / 8, y );
				devkit_SMS_setTile( *p );
				p += MAP_WIDTH;
			}
		}
	}
	else 
	{               // this is 'left'
		if( which == 0 ) 
		{           // this is picture 1
			p = &p1__tilemap__bin[ ( scroll[ 0 ] / 8 ) ];
			for( y = 0; y < 12; y++ ) {
				devkit_SMS_setNextTileatXY( scroll[ 0 ] / 8, y );
				devkit_SMS_setTile( *p );
				p += MAP_WIDTH;
			}
		}
		else
		{                  // this is picture 2
			p = &p2__tilemap__bin[ ( scroll[ 1 ] / 8 ) ];
			for( y = 12; y < 24; y++ ) {
				devkit_SMS_setNextTileatXY( scroll[ 1 ] / 8, y );
				devkit_SMS_setTile( *p );
				p += MAP_WIDTH;
			}
		}
	}
}

void prepare( void ) 
{
	unsigned char i, y;
	const unsigned int *p;

	// prepare the upper half of the screen, from picture 1
	p = p1__tilemap__bin;
	for( y = 0; y < 12; y++ )
	{
		devkit_SMS_loadTileMapArea( 1, y, ( unsigned char * ) p, 31, 1 );
		p += MAP_WIDTH;
	}

	// prepare the lower half of the screen, from picture 2
	p = p2__tilemap__bin;
	for( y = 12; y < 24; y++ ) {
		devkit_SMS_loadTileMapArea( 1, y, ( unsigned char * ) p, 31, 1 );
		p += MAP_WIDTH;
	}

	// let's scroll lower half 24 pixel to the right, to start unaligned
	for( i = 0; i < 3; i++ ) {
		scrollBG( 1, true );
		scroll[ 1 ] += 8;
	}
}

void main( void ) 
{
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_LEFTCOLBLANK() );
	loadAssets();
	prepare();
	devkit_SMS_setLineInterruptHandler( lineIRQhandler );
	devkit_SMS_setLineCounter( 92 );
	devkit_SMS_displayOn();

	for( ;;) 
	{
		devkit_SMS_waitForVBlank();
		devkit_SMS_enableLineInterrupt();
		devkit_SMS_setBGScrollX( -scroll[ 0 ] );
		devkit_SMS_loadBGPalette( (unsigned char *)p1__palette__bin );

		for( i = 0; i < 2; i++ ) 
		{
			if( ( scroll[ i ] % 8 ) == 0 )
				scrollBG( i, scroll_dir[ i ] );

			if( scroll_dir[ i ] )
				scroll[ i ] += 1;
			else
				scroll[ i ] -= 1;

			if( ( !scroll_dir[ i ] ) && ( scroll[ i ] == 0 ) )
				scroll_dir[ i ] = true;
			else if( ( scroll_dir[ i ] ) && ( scroll[ i ] == MAX_SCROLL ) )
				scroll_dir[ i ] = false;
		}
	}
}

