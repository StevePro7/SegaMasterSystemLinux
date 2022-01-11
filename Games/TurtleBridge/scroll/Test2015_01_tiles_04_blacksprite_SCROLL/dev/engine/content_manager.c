#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES			0
#define BACK_TILES			64

void engine_content_manager_load_tiles()
{
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) BlockA0__tiles__psgcompr, 16 );
	//SMS_loadBGPalette((void *)BlockA0__palette__bin);

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) Platform__tiles__psgcompr, 64 );
	devkit_SMS_loadBGPalette( ( void * ) Platform__palette__bin );
}

//void engine_content_manager_load_turtle()
//{
//	 Turtle tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, TURTLE_TILES );
//	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
//}

//void engine_content_manager_load_sprites()
//{
//	// Sprite tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) back_tiles__tiles__psgcompr, SPRITE_TILES + ( 0 * 4 ) );
//	devkit_SMS_loadSpritePalette( ( void * ) back_tiles__palette__bin );
//}
