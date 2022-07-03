#include "credit_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdbool.h>
#include <stdlib.h>

static void display();

void screen_credit_screen_load()
{
	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_text_manager_clear( TOP_Y + 8, TOP_Y + 22 );
	engine_content_manager_load_logo_big();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	engine_font_manager_draw_text( LOCALE_CREDITS, LEFT_X + 12, TOP_Y + 10 );
	display();

	engine_graphics_manager_draw_border();
	engine_text_manager_cont();
	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??
}

void screen_credit_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_credit;
}

static void display()
{
	unsigned char x1;
	unsigned char x2;

	x1 = 4;
	x2 = 4 + 12 + 4;

	engine_font_manager_draw_text( "PROGRAMMING", LEFT_X + x1, TOP_Y + 13 );
	engine_font_manager_draw_text( "STEVEPRO",    LEFT_X + x2, TOP_Y + 13 );

	engine_font_manager_draw_text( "ART GRAPHICS", LEFT_X + x1, TOP_Y + 15 );
	engine_font_manager_draw_text( "KAGESAN",      LEFT_X + x2, TOP_Y + 15 );

	engine_font_manager_draw_text( "PCM SAMPLING", LEFT_X + x1, TOP_Y + 16 );
	engine_font_manager_draw_text( "MAXIM",        LEFT_X + x2, TOP_Y + 16 );

	engine_font_manager_draw_text( "DEVKIT SMS", LEFT_X + x1, TOP_Y + 18 );
	engine_font_manager_draw_text( "SVERX",      LEFT_X + x2, TOP_Y + 18 );

	engine_font_manager_draw_text( "EMULICIOUS", LEFT_X + x1, TOP_Y + 19 );
	engine_font_manager_draw_text( "CALINDRO",   LEFT_X + x2, TOP_Y + 19 );
}