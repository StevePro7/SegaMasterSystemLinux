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
	//char i, y;
	//char bright_bg = 0;
	//char controllerPort = 99;
	//struct inlibDevice *device;

	///* Position and visiblity of mouse pointers */
	//unsigned char px[ 2 ] = { 64, 168 };
	//unsigned char py[ 2 ] = { 96, 96 };
	//char pvisible[ 2 ] = { 0, 0 };

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

	
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}
