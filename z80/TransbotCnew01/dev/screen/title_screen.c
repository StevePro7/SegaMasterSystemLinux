#include "title_screen.h"
#include "../engine/content_manager.h"
#include "../game.h"

void screen_title_screen_load( void )
{
	SMS_displayOff();
	SMS_VRAMmemsetW( 0, 0, 0x4000 );
	SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	SMS_setBGScrollX( 0 );
	SMS_setBGScrollY( 0 );
	engine_content_manager_load_boot_tiles();

	SMS_displayOn();
}