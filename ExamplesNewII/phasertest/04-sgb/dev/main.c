#include "main.h"

#define DEFAULT_BG_COLOR  devkit_RGB(1,2,3)
#define DEFAULT_TEXT_COLOR  devkit_RGB(0,0,0)
#define HIGH_BG_COLOR devkit_RGB(3,3,3)

#ifdef _CONSOLE

#else
__sfr __at 0xBF VDPControlPort;
__sfr __at 0xBE VDPDataPort;

#endif
void engine_asm_manager_clear_VRAM()
{
#ifdef _CONSOLE

#else

	__asm
	ld a, #0x00
		out( _VDPControlPort ), a
		ld a, #0x40
		out( _VDPControlPort ), a
		ld bc, #0x4000
		ClearVRAMLoop:
	ld a, #0x00
		out( _VDPDataPort ), a
		dec bc
		ld a, b
		or c
		jp nz, ClearVRAMLoop
		__endasm;

#endif
}

void main( void )
{
	char i;
	char y;
	char bright_bg = 0;
	char controllerPort = 99;
	//struct inlibDevice *device;

	///* Position and visibility of mouse pointers */
	unsigned char px[ 2 ] = { 64, 168 };
	unsigned char py[ 2 ] = { 96, 96 };
	char pvisible[ 2 ] = { 0, 0 };

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 0, 0, 0 ) );
	//devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 3, 0 ) );
		
	devkit_inlib_init();

	/* Clear VRAM */
	devkit_SMS_VRAMmemsetW( 0, 0x0000, 16384 );

	/* load a standard font character set into tiles 0-95,
	* set BG palette to B/W and turn on the screen */
	devkit_SMS_autoSetUpTextRenderer();

	/* For this light gun demo, modify the palette to display black
	* on light grey */
	devkit_SMS_setBGPaletteColor( 0, DEFAULT_BG_COLOR );
	devkit_SMS_setBGPaletteColor( 1, DEFAULT_TEXT_COLOR );

	/* Tiles for numbers 1 and 2 are used as sprites for mouse
	* pointers. Configure palette since the above does not
	* set a sprite palette... */
	devkit_SMS_setSpritePaletteColor( 1, devkit_RGB( 0, 0, 3 ) );

	/* We are using tiles from the font (index 17 and 18)
	* which are in the first 256 tiles. */
	devkit_SMS_useFirstHalfTilesforSprites( 1 );

	/* Set the target of the next background write */
	devkit_SMS_setNextTileatXY( 1, 0 );

	/* Write text to the background */
	printf( "inlib light phaser test" );

	/* Turn on the display */
	devkit_SMS_displayOn();

	devkit_SMS_setNextTileatXY( 1, 2 );
	printf( "Pull trigger to begin..." );

	while( controllerPort == 99 ) {

		for( i = 0; i < 2; i++ ) {
			devkit_inlib_pollLightPhaser_trigger( i );
			if( devkit_inlib_keysStatus( i ) & devkit_INLIB_BTN_1() ) {
				controllerPort = i;
				break;
			}
		}
	}

	devkit_SMS_setNextTileatXY( 1, 2 );
	printf( "Using light phaser in port %d", controllerPort );

	//device = devkit_inlib_getPortPtr( controllerPort );
	devkit_inlib_getPortPtr( controllerPort );

	for( ;; )
	{
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();
		devkit_SMS_initSprites();

		if( !bright_bg ) {
			devkit_SMS_setBGPaletteColor( 0, DEFAULT_BG_COLOR );
		}

		bright_bg = 0;
		y = 6;

		devkit_inlib_pollLightPhaser_trigger( controllerPort );
		if( devkit_inlib_keysStatus( controllerPort ) & devkit_INLIB_BTN_1() ) {
			bright_bg = 1;
			devkit_SMS_setBGPaletteColor( 0, HIGH_BG_COLOR );
			devkit_SMS_waitForVBlank();
			devkit_inlib_pollLightPhaser_position( i );
		}

		devkit_SMS_setNextTileatXY( 3, y++ );
		if( devkit_inlib_keysStatus( controllerPort ) & devkit_INLIB_BTN_1() ) {
			printf( "Trigger ON " );
		}
		else {
			printf( "Trigger OFF" );
		}

		if( devkit_get_device_type() == devkit_INLIB_TYPE_PHASER_HIT() )
		{
			// Center sprite 8x8 sprite on the position
			unsigned char absx = devkit_get_device_absx();
			if( absx > 4 )
			{
				px[ i ] = absx- 4; 
			}
			else {
				px[ i ] = 0; 
			}
			unsigned char absy = devkit_get_device_absy();
			if( absy > 4 )
			{
				py[ i ] = absy - 4;
			}
			else {
				py[ i ] = 0;
			}

			pvisible[ i ] = 1;
		}

		if( pvisible[ i ] ) 
		{
			devkit_SMS_addSprite( px[ i ], py[ i ], 16 + i );
			devkit_SMS_setNextTileatXY( 3, y++ );
			printf( "Position: %03u,%03u", px[ i ], py[ i ] );
		}
	}
}
