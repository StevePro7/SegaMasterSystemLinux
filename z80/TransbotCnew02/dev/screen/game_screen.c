#include "game_screen.h"
#include "../engine/content_manager.h"
#include "../engine/scroll_manager.h"
#include "../object/original_ram.h"
#include "../game.h"
#include <string.h>

/* VBlank part of $0FA6: top-region scroll, line counter, then the ported scroll engine. */
static void game_frame_interrupt( void )
{
	INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_TOP );
	SMS_VDPControlPort = 0x7f;
	SMS_VDPControlPort = 0x8a;
	engine_scroll_frame();
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

/* Scroll-related part of $0429 and the stage-1 start of $03B2; objects are not ported yet. */
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

	engine_content_manager_load_stage();
	SMS_VRAMmemsetW( 0x3800, 0x1100, 0x0700 );
	SMS_initSprites();
	SMS_copySpritestoSAT();

	ORIG_SCROLL_ROW_PTR = ( unsigned int ) engine_scroll_sequence;
	ORIG_ROW_INDEX = 0xff;
	ORIG_ROW_INDEX_2 = 0xff;
	ORIG_STAGE_STATE = 1;
	engine_scroll_prepare();
	ORIG_SCROLL_FLAGS |= SCROLL_FLAG_ACTIVE;

	SMS_setLineCounter( 0x7f );
	SMS_setFrameInterruptHandler( game_frame_interrupt );
	SMS_setLineInterruptHandler( game_line_interrupt );
	SMS_enableLineInterrupt();
	SMS_displayOn();
}

void screen_game_screen_update( void )
{
	engine_scroll_prepare();
}