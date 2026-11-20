#include "game_screen.h"
#include "../engine/content_manager.h"
#include "../object/original_ram.h"
#include "../source/original_game.h"
#include "../game.h"
#include <string.h>

static void game_frame_body( void );

#ifdef _CONSOLE
unsigned char vdp_data_port;
#else
__sfr __at( 0xbe ) vdp_data_port;
#endif

/*
* Copies to VRAM without SMSlib's helpers: those re-enable interrupts, and the
* original handler keeps them off, so a line interrupt cannot corrupt the VDP
* address in the middle of a transfer.
*/
static void vram_write( unsigned int address, const unsigned char *source, unsigned int size )
{
	SMS_VDPControlPort = ( unsigned char ) address;
	SMS_VDPControlPort = ( unsigned char ) ( address >> 8 ) | 0x40;
	do 
	{
		vdp_data_port = *source++;
	} while (--size);
}

/*
* VBlank part of $0FA6. SMSlib's handler preserves AF/BC/DE/HL/IX/IY, but the
* original code also uses the alternate register set, so this wrapper saves it.
*/
#ifdef _CONSOLE
static void game_frame_interrupt( void )
{
}
#else
static void game_frame_interrupt( void ) __naked
{
	__asm
		.db 0x08; exchange af with the alternate af
		push af
		.db 0x08; exchange af with the alternate af
		exx
		push bc
		push de
		push hl
		exx
		call _game_frame_body
		exx
		pop hl
		pop de
		pop bc
		exx
		.db 0x08; exchange af with the alternate af
		pop af
		.db 0x08; exchange af with the alternate af
		ret
	__endasm;
}
#endif

static void game_frame_body( void )
{
	INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_TOP );
	SMS_VDPControlPort = 0x7f;
	SMS_VDPControlPort = 0x8a;

	if( ORIG_FRAME_COUNTER < 0x0f )
	{
		++ORIG_FRAME_COUNTER;
	}
	if( ORIG_FRAME_READY )
	{
		return;
	}

	if( ORIG_SAT_FLAGS & 0x80 )
	{
		vram_write( 0x3f00, ( const unsigned char * ) 0xc240, 0x40 );
		vram_write( 0x3f80, ( const unsigned char * ) 0xc280, 0x80 );
		ORIG_SAT_FLAGS &= 0x7f;
	}
	orig_vblank_columns();
	orig_scroll_advance();
	orig_input_update();
	orig_player_update();
	orig_timer_update();
	orig_score_update();
	orig_hud_update();
	orig_stage_timer();
	ORIG_FRAME_READY = 1;
}

/* Line-interrupt part of $0FA6: scroll for the lower region of the screen. */
static void game_line_interrupt( void )
{
	if( ORIG_SCROLL_FLAGS & SCROLL_FLAG_BONUS )
	{
		return;
	}

	INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_BOTTOM );
	SMS_VDPControlPort = 0xff;
	SMS_VDPControlPort = 0x8a;
}

/* Gameplay start of the original state 4 ($03B2): stage 1, one player. */
void screen_game_screen_load( void )
{
	SMS_displayOff();

	// Title screen
	SMS_VRAMmemsetW( 0, 0, 0x4000 );
	SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	SMS_setBGScrollX( 0 );
	SMS_setBGScrollY( 0 );
	engine_content_manager_load_boot_tiles();

	// Game screen
	SMS_setFrameInterruptHandler( 0 );
	SMS_setLineInterruptHandler( 0 );

	memset( ( void * ) ORIGINAL_RAM_START, 0, ORIGINAL_RAM_SIZE );
	memset( ( void * ) ORIGINAL_WORK_RAM_START, 0, ORIGINAL_WORK_RAM_SIZE );
	ORIG_FRAME_READY = 0;
	ORIG_FRAME_COUNTER = 0;
	ORIG_PAD_DETECT = 0xff;
	ORIG_MODE_FLAGS = 0x50;

	/* The original performs screen and object initialization with interrupts disabled. */
#ifdef _CONSOLE
#else
	__asm
		di
	__endasm;
#endif
		orig_screen_setup();
		orig_stage_start();
		ORIG_STAGE_STATE = 1;
		/* The original init table ($003B) puts sprite tiles at VRAM $0000; SMSlib defaults to $2000. */
		SMS_VDPControlPort = 0xfb;
		SMS_VDPControlPort = 0x86;
#ifdef _CONSOLE
#else
	__asm
		ei
	__endasm;
#endif

	SMS_setLineCounter( 0x7f );
	SMS_setFrameInterruptHandler( game_frame_interrupt );
	//SMS_VDPturnOnFeature( VDPFEATURE_FRAMEIRQ );
	SMS_setLineInterruptHandler( game_line_interrupt );
	SMS_enableLineInterrupt();
	SMS_displayOn();
}

void screen_game_screen_update( void )
{
	if( !ORIG_FRAME_READY )
	{
		return;
	}

	ORIG_FRAME_READY = 0;
//#ifdef _CONSOLE
//#else
//	__asm
//	di
//		__endasm;
//#endif
	orig_object_update();
	orig_stage_sequencer();
	orig_scroll_prepare();
	orig_map_trigger();
	orig_map_next();
	orig_spawn_pending();
//#ifdef _CONSOLE
//#else
//	__asm
//	ei
//		__endasm;
//#endif
}