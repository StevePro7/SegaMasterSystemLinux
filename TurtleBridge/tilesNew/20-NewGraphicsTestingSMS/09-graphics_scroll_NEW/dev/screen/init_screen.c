#include "init_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

static void drawScreen();

void screen_init_screen_load()
{
	drawScreen();
}

void screen_init_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_init;
}

static void drawScreen()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 2, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 10, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 18, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 26, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_ISLAND_01, 0, 8, 8, 14 );
	engine_tile_manager_stevepro( TILE_WAVE, 8, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_ISLAND_01, 12, 8, 8, 14 );
	devkit_SMS_displayOn();
}
