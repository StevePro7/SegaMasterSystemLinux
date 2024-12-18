#include "test_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../devkit/_gsl_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 261
#endif

void init_scroll( void *scrolltable, void *metatiles, unsigned int scroll_x, unsigned int scroll_y )
{
	devkit_GSL_initializeMap( scrolltable, metatiles );
	devkit_GSL_positionWindow( scroll_x, scroll_y );
	devkit_GSL_refreshVDP();
}

void screen_test_screen_load()
{
	devkit_SMS_displayOff();
	//devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	//engine_font_manager_text( "TEST SCREEN", 11, 5 );
	devkit_SMS_setBackdropColor( 1 );
	engine_content_manager_load_level1_assets();
	devkit_SMS_mapROMBank( level1_metatiles_bin_bank );
	init_scroll( ( unsigned char * ) &level1_scrolltable_bin, ( unsigned char * ) &level1_metatiles_bin, 0, 0 );
	devkit_SMS_displayOn();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold(1);
	if( input )
	{
		engine_font_manager_text( "TEST SCREEN", 11, 7 );
		devkit_SMS_mapROMBank( level1music_psg_bank );
		//current_music_bank = level1music_psg_bank;
		//devkit_PSGPlay( ( unsigned char * ) level1music_psg );
	}

	*screen_type = screen_type_test;
}

