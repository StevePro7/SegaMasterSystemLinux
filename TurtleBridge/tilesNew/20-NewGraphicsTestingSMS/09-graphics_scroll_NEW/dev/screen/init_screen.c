#include "init_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdbool.h>

static void drawScreen();
static void statPlater();
//static unsigned char collision_array[] = { 20,20,20,20,20,20,20,20,0,0,0,0,20,20,20,20,20,20,20,20,0,0,0,0,0,0,0,0,0,0,0,0 };
static unsigned char collision_array[] = { 18,18,18,18,18,18,18,18,0,0,0,0,18,18,18,18,18,18,18,18,0,0,0,0,0,0,0,0,0,0,0,0 };

void screen_init_screen_load()
{
	drawScreen();
	statPlater();
}

void screen_init_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input;
	unsigned char tempCollY;
	unsigned char tile;
	unsigned char tempPosnY;
	unsigned char tempTileY;
	bool isMoveDown;
	bool onPlatform;

	input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		engine_player_manager_left();
		statPlater();
	}
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_player_manager_right();
		statPlater();
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		isMoveDown = false;
		tempCollY = 0;
		tile = 0;

		tempPosnY = po->posnY;
		tempTileY = tempPosnY >> 3;

		isMoveDown = false;
		//tile = po->tileX - 2;    // Easy
		tile = po->tileX - 1;	// Hard
		tempCollY = collision_array[ tile ];
		if( tempTileY == tempCollY )
		{
			goto printout;
		}
		else
		{
			tile = po->tileX + 1;
			tempCollY = collision_array[ tile ];
			if( tempTileY == tempCollY )
			{
				goto printout;
			}
		}

		tempCollY = 0;
		tile = 0;
		isMoveDown = true;
		

	printout:
		onPlatform = !isMoveDown;
		engine_font_manager_data( po->posnY, 16, 2 );
		engine_font_manager_data( tempCollY, 24, 2 );

		engine_font_manager_data( po->tileX, 8, 3 );
		engine_font_manager_data( po->tileX - 2, 16, 3 );
		engine_font_manager_data( po->tileX - 1, 24, 3 );

		engine_font_manager_data( po->tileX, 8, 4 );
		engine_font_manager_data( po->tileX + 0, 16, 4 );
		engine_font_manager_data( po->tileX + 1, 24, 4 );

		engine_font_manager_data( tile, 16, 6 );
		engine_font_manager_data( onPlatform, 24, 6 );
	}

	engine_player_manager_draw();
	*screen_type = screen_type_init;
}

static void statPlater()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_data( po->drawX, 8, 0 );
	engine_font_manager_data( po->posnX, 16, 0 );
	engine_font_manager_data( po->tileX, 24, 0 );
}

static void drawScreen()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	//engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUDB, 2, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUDS, 10, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUDB, 18, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUDS, 26, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_ISLAND_01, 0, 8, 8, 14 );
	engine_tile_manager_stevepro( TILE_WAVE, 8, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_ISLAND_01, 12, 8, 8, 14 );
	engine_player_manager_draw();
	devkit_SMS_displayOn();
}
