#include "title_screen.h"
#include "splash_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sprite_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank3.h"

#define MAX_SPOTS	9
#define FLIP_INDEX	6		// TODO delete

static void draw_sprite( unsigned char idx, unsigned char mode, unsigned char x, unsigned char y );

static unsigned char flip_posX[ MAX_SPOTS ] = { 8, 30, 52, 74, 96, 118, 140, 162, 184 };
static unsigned char flip_posY[ MAX_SPOTS ] = { 128, 112, 104, 100, 96, 100, 104, 112, 128 };

void screen_title_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_titles();
	// IMPORTANT must draw title !!
	engine_graphics_manager_image( titles_tiles__tilemap__bin, TILE_IMAGE_SCREEN, 8, 0, 16, 12 );

	engine_content_manager_sprite();
	engine_util_manager_locale_texts( 1, 28, 23 );
	engine_util_manager_locale_texts( 2, 8, 22 );
	engine_util_manager_locale_texts( 3, 7, 23 );
	devkit_SMS_displayOn();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_ZOOMED() );
}

void screen_title_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		draw_sprite( 4, sprite_mode_zoomed, 176, 128 );
	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		*screen_type = screen_type_begin;
		return;
	}

	*screen_type = screen_type_title;
}

static void draw_sprite( unsigned char idx, unsigned char mode, unsigned char x, unsigned char y )
{
	engine_sprite_manager_mode( idx, mode, x, y );

	engine_sprite_manager_zoom( mode, 0, y + mode * 0 );
	engine_sprite_manager_zoom( mode, 8, y + mode * 0 );
	engine_sprite_manager_zoom( mode, 192, y + mode * 0 );
	engine_sprite_manager_zoom( mode, 224, y + mode * 0 );

	engine_sprite_manager_zoom( mode, 0, y + mode * 16 );
	engine_sprite_manager_zoom( mode, 8, y + mode * 16 );
	engine_sprite_manager_zoom( mode, 192, y + mode * 16 );
	engine_sprite_manager_zoom( mode, 224, y + mode * 16 );
}