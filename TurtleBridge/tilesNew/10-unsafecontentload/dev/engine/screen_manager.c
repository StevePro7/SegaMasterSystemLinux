#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank6.h"
#include "../content/gfx.h"

static unsigned char stageframe;

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "ADRIANA HOMEWORK!!", 2, 2 );
	stageframe = 25;
}

void engine_screen_manager_update()
{
	unsigned char input;
	//frame = 0;

	input = engine_input_manager_move_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "ADRIANA HOMEWORK", 2, 4 );
		//devkit_UNSAFE_SMS_VRAMmemcpy128( 0, ( unsigned char * ) watertiles_bin + ( ( ( stageframe >> 1 ) % 8 ) << 5 ) );
		//devkit_UNSAFE_SMS_VRAMmemcpy32( 240, ( unsigned char * ) bggame_tiles__tiles__psgcompr + 0 );

		//devkit_SMS_VRAMmemcpy( 0, ( unsigned char * ) bggame_tiles__tiles__psgcompr, 4 );
	}
}

void engine_screen_manager_update2()
{
	devkit_SMS_VRAMmemcpy( 2, ( unsigned char * ) bggame_tiles__tiles__psgcompr, 4 );
	//devkit_UNSAFE_SMS_VRAMmemcpy128( 0, ( unsigned char * ) watertiles_bin + ( ( ( stageframe >> 1 ) % 8 ) << 5 ) );

	//devkit_UNSAFE_SMS_load1Tile( ( unsigned char * ) watertiles_bin, 12 );
}