#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/content_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

static void draw_leshy();
static void draw_title();
static void draw_intro();
static void draw_boss();

static void draw_text();
static void draw_punc();
static void draw_flip();

void screen_func_screen_load()
{
	engine_font_manager_draw_text( "FUNC SCREEN", 10, 10 );
	//unsigned char row;
	//unsigned char idx;

	////select_type = select_type_boss;
	//row = 1;

	//devkit_SMS_displayOff();
	//engine_content_manager_load_koschey();
	//engine_text_manager_clear( TOP_Y + 1, TOP_Y + 22 );

	//row = 19;
	//devkit_SMS_mapROMBank( FIXED_BANK );
	//for( idx = 0; idx < 2; idx++ )
	//{
	//	engine_font_manager_draw_text( ( unsigned char* ) query_texts[ idx ], LEFT_X + 2, TOP_Y + row );
	//	row++;
	//}

	//engine_font_manager_draw_punc( LOCALE_QUOTE, LEFT_X + 8, TOP_Y + 19 );
	//engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 19, TOP_Y + 20 );

	//engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, devkit_TILE_USE_SPRITE_PALETTE() );
	//engine_graphics_manager_draw_border();

	//devkit_SMS_displayOn();

	//event_stage = scene_type_select;

	//draw_title();		// screen_01_title
	//draw_boss();
	//draw_intro();
	//draw_leshy();
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}

static void draw_leshy()
{
	engine_graphics_manager_draw_leshy( 4, 6 );
}

// TODO - move into intro screen => DONE!
static void draw_intro()
{
	unsigned char row;
	unsigned char idx;

	engine_content_manager_load_logo_big();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	row = 10;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 10; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) intro_texts[ idx ], LEFT_X + 2, row );
		row++;
	}

	engine_graphics_manager_draw_border();
	engine_text_manager_cont();

	engine_font_manager_draw_punc( LOCALE_STOP, LEFT_X + 25, TOP_Y + 13 );
	engine_font_manager_draw_punc( LOCALE_STOP, LEFT_X + 27, TOP_Y + 16 );
	engine_font_manager_draw_punc( LOCALE_STOP, LEFT_X + 16, TOP_Y + 19 );
}

static void draw_boss()
{
	engine_graphics_manager_draw_border();

	engine_content_manager_load_koschey();

	// TODO - replace hard coded values!
	engine_graphics_manager_draw_koschey( 10, 2, devkit_TILE_USE_SPRITE_PALETTE() );

	engine_font_manager_draw_text( "SO YOU VE COME TO CHALLENGE", 2, 19 );
	engine_font_manager_draw_text( "ME FOOLISH MORTAL  VERY WELL", 2, 20 );

	engine_font_manager_draw_punc( LOCALE_QUOTE, 8, 19 );
	engine_font_manager_draw_punc( LOCALE_QMARK, 19, 20 );
}

static void draw_title()
{
	engine_graphics_manager_draw_border();

	engine_content_manager_load_logo_big();

	// TODO - replace hard coded values!
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	engine_font_manager_draw_text( LOCALE_TITLE_MSG1, 6, 10 );
	engine_font_manager_draw_text( LOCALE_TITLE_MSG2, 3, 15 );

	// IMPORTANT - must draw text before number!
	engine_font_manager_draw_numb( 8, 16, 15 );

	engine_text_manager_cont();
}

static void draw_text()
{
	engine_font_manager_draw_numb( 8, 10, 15 );
	engine_font_manager_draw_zero( 7, 10, 18 );
	engine_font_manager_draw_zero( 12, 10, 19 );
	engine_font_manager_draw_zero( 512, 10, 20 );

	engine_font_manager_draw_text( "STATS VILLAGE", 10, 20 );
	engine_font_manager_draw_char( 'X', 20, 1 );
	engine_font_manager_draw_punc( LOCALE_QMARK, 12, 1 );
}

static void draw_punc()
{
	unsigned char idx = 0;

	engine_font_manager_draw_punc( LOCALE_PLUS, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_HYPHEN, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_QUOTE, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_STOP, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_COMMA, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_COLON, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_QMARK, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_POINT, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_SLASH, 10, idx++ );
	//engine_font_manager_draw_punc( LOCALE_BRACKET, 10, idx++ );
	engine_font_manager_draw_punc( LOCALE_ARROW, 10, idx++ );
}

static void draw_flip()
{
	unsigned char idx = 0;

	engine_font_manager_draw_flip( LOCALE_PLUS, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_HYPHEN, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_QUOTE, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_STOP, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_COMMA, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_COLON, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_QMARK, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_POINT, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_SLASH, 20, idx++ );
	//engine_font_manager_draw_flip( LOCALE_BRACKET, 20, idx++ );
	engine_font_manager_draw_flip( LOCALE_ARROW, 20, idx++ );
}