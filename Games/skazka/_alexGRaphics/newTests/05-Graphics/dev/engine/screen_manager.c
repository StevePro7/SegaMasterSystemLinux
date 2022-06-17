#include "screen_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "graphics_manager.h"
#include "locale_manager.h"

static void draw_title();

static void draw_text();
static void draw_punc();
static void draw_flip();

void engine_screen_manager_init()
{
	draw_title();		// screen_01_title
}

void engine_screen_manager_update()
{
//	engine_sprite_manager_draw( 64, 64, 256 );
}

static void draw_title()
{
	engine_graphics_manager_draw_border();
	engine_content_manager_load_logo_big();

	// TODO - replace hard coded values!
	engine_graphics_manager_draw_logo_big( 2, 3 );

	engine_font_manager_draw_text( LOCALE_TITLE_MSG1, 6, 10 );
	engine_font_manager_draw_data( 8, 16, 15 );
}

static void draw_text()
{
	engine_font_manager_draw_zero( 7, 10, 18 );
	engine_font_manager_draw_zero( 12, 10, 19 );
	engine_font_manager_draw_zero( 512, 10, 20 );

	engine_font_manager_draw_text( "STATS VILLAGE", 10, 20 );
	engine_font_manager_draw_char( 'X', 20, 1 );

	engine_font_manager_draw_punc( '?', 12, 1 );

}

static void draw_punc()
{
	unsigned char idx = 0;

	engine_font_manager_draw_punc( '+', 10, idx++ );
	engine_font_manager_draw_punc( '-', 10, idx++ );
	engine_font_manager_draw_punc( '\'', 10, idx++ );
	engine_font_manager_draw_punc( '.', 10, idx++ );
	engine_font_manager_draw_punc( ',', 10, idx++ );
	engine_font_manager_draw_punc( ':', 10, idx++ );
	engine_font_manager_draw_punc( '?', 10, idx++ );
	engine_font_manager_draw_punc( '!', 10, idx++ );
	engine_font_manager_draw_punc( '/', 10, idx++ );
	engine_font_manager_draw_punc( ')', 10, idx++ );
	engine_font_manager_draw_punc( '>', 10, idx++ );
}

static void draw_flip()
{
	unsigned char idx = 0;

	engine_font_manager_draw_flip( '+', 20, idx++ );
	engine_font_manager_draw_flip( '-', 20, idx++ );
	engine_font_manager_draw_flip( '\'', 20, idx++ );
	engine_font_manager_draw_flip( '.', 20, idx++ );
	engine_font_manager_draw_flip( ',', 20, idx++ );
	engine_font_manager_draw_flip( ':', 20, idx++ );
	engine_font_manager_draw_flip( '?', 20, idx++ );
	engine_font_manager_draw_flip( '!', 20, idx++ );
	engine_font_manager_draw_flip( '/', 20, idx++ );
	engine_font_manager_draw_flip( ')', 20, idx++ );
	engine_font_manager_draw_flip( '>', 20, idx++ );
}