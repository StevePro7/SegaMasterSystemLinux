#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS()", 4, 4 );
	
}

void engine_screen_manager_update()
{
	unsigned char input;
	//input = engine_input_manager_hold_fire1();
	//if( input )
	//{
	//	engine_font_manager_draw_text( "MUSIC TUNES", 4, 15 );
	//	//engine_music_manager_play();
	//	devkit_SMS_VRAMmemcpy( 0x100, 0x3f, 32 );
	//	
	//	engine_font_manager_draw_text( "MUSIC TUNES", 4, 16 );
	//}

	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOSXX", 4, 5 );
		engine_content_manager_load_sprites01();
		engine_font_manager_draw_text( "STEVEPRO STUDIOSXX", 4, 7 );
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 6 );
		engine_content_manager_load_sprites02();
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 8 );
	}

	engine_sprite_manager_draw( 32, 96, SPRITE_TILES );
}