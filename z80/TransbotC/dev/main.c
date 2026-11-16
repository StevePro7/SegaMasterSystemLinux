#include "main.h"

static unsigned char scratch[ 0x0c00 ];

static const unsigned char initial_bg_palette[16] =
{
	0x30, 0x3f, 0x2f, 0x1b, 0x17, 0x13, 0x3e, 0x10,
	0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f
};

static void asset_error( void )
{
	SMS_displayOff();
	SMS_setBackdropColor( 0 );
	SMS_setSpritePaletteColor( 0, RGB( 3, 0, 0 ) );
	SMS_displayOn();
	for( ;; )
	{
		SMS_waitForVBlank();
	}
}

static void load_compressed( const unsigned char *data, unsigned int size,
	unsigned int lane_length, unsigned char lanes,
	unsigned int vram_address )
{
	unsigned char result = rle_decode( data, size, scratch, lane_length, lanes, 0 );
	if( !result )
	{
		asset_error();
	}

	SMS_VRAMmemcpy( vram_address, scratch, lane_length * lanes );
}

static void draw_title_text( void )
{
	const unsigned char *p = title_text;
	unsigned char count = *p++;

	while( count-- )
	{
		unsigned int address = p[ 0 ] | ( ( unsigned int ) p[ 1 ] << 8 );
		unsigned int size = p[ 2 ] | ( ( unsigned int ) p[ 3 ] << 8 );
		p += 4;
		SMS_VRAMmemcpy( address, p, size );
		p += size;
	}
}

static void show_title( void )
{
	unsigned char row;
	unsigned char result;

	SMS_displayOff();
	SMS_VRAMmemset( 0, 0, 0x4000 );
	SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	SMS_setBGScrollX( 0 );
	SMS_setBGScrollY( 0 );

	/* Boot graphics from $2902/$28F0/$28F6/$28FC. */
	load_compressed( boot_font, sizeof( boot_font ), 0x0300, 4, 0x2000 );
	load_compressed( boot_tiles_a, sizeof( boot_tiles_a ), 0x0600, 2, 0x0000 );
	load_compressed( boot_tiles_b, sizeof( boot_tiles_b ), 0x0500, 2, 0x0c00 );
	load_compressed( boot_tiles_c, sizeof( boot_tiles_c ), 0x0500, 2, 0x1600 );

	/* Title setup at $02B9; the name table uses blank tile $100, palette 1. */
	SMS_VRAMmemsetW( 0x3800, 0x1100, 0x0700 );
	SMS_initSprites();
	SMS_copySpritestoSAT();
	SMS_loadBGPalette( ( unsigned char* ) initial_bg_palette );
	SMS_setSpritePaletteColor( 0, 0x30 );
	load_compressed( title_tiles, sizeof( title_tiles ), 0x01a0, 4, 0x2c00 );

	/* Only the first 68 words of this stream are used by the title screen. */
	result = rle_decode( title_map, sizeof( title_map ), scratch, 68, 2, 1 );
	if( !result )
	{
		asset_error();
	}

	// Draw TRANSBOT title image.
	for( row = 0; row < 4; ++row )
	{
		SMS_VRAMmemcpy( 0x398e + ( unsigned int ) row * 64, scratch + row * 34, 34 );
	}

	draw_title_text();
	SMS_displayOn();
}

void main( void )
{
	PSGSilenceChannels();
	show_title();

	for( ;;)
	{
		SMS_waitForVBlank();
		PSGFrame();
		PSGSFXFrame();
	}
}

#ifdef _CONSOLE
#else
SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2021, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware" );
#endif
