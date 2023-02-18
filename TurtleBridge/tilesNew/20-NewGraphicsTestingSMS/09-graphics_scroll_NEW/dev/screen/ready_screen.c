#include "ready_screen.h"
#include "../engine/asm_manager.h"
//#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/collision_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static void drawScreen();

void screen_ready_screen_load()
{
	unsigned int posnX;
	unsigned char tileX;

	posnX = 256 * 8 - 1;
	tileX = posnX >> 3;
	engine_font_manager_text( "READY", 10, 2 );

	engine_font_manager_data( posnX, 10, 10 );
	engine_font_manager_data( tileX, 10, 11 );
}

//unsigned int input = devkit_SMS_getKeysStatus();
void screen_ready_screen_update( unsigned char *screen_type )
{
	
	*screen_type = screen_type_ready;
}
