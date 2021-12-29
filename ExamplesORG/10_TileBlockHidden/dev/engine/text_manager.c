#include "text_manager.h"
#include "font_manager.h"
#include "locale_manager.h"

void engine_text_manager_draw()
{
	unsigned char move;

	engine_font_manager_draw_text( LOCALE_TITLE1, 10, 11 );
	engine_font_manager_draw_text( LOCALE_TITLE2, 10, 12 );

	engine_font_manager_draw_text( LOCALE_SIDE1, 26, 0 );
	engine_font_manager_draw_text( LOCALE_SIDE2, 26, 1 );

	move = 4;
	engine_font_manager_draw_text( LOCALE_MOVE0, 26, move + 0 );
	engine_font_manager_draw_text( LOCALE_MOVE1, 26, move + 1 );
	engine_font_manager_draw_text( LOCALE_MOVE2, 26, move + 2 );
	engine_font_manager_draw_text( LOCALE_MOVE3, 26, move + 3 );
	engine_font_manager_draw_text( LOCALE_MOVE4, 26, move + 4 );
	engine_font_manager_draw_text( LOCALE_MOVE5, 26, move + 5 );

	move += 4;
	engine_font_manager_draw_text( LOCALE_MOVE6, 26, move + 6 );
	engine_font_manager_draw_text( LOCALE_MOVE7, 26, move + 7 );

	move++;
	engine_font_manager_draw_text( LOCALE_MOVE8, 26, move + 8 );
	engine_font_manager_draw_text( LOCALE_MOVE9, 26, move + 9 );

	engine_font_manager_draw_text( LOCALE_STEVEPRO1, 26, 22 );
	engine_font_manager_draw_text( LOCALE_STEVEPRO2, 26, 23 );
}

void engine_text_manager_names()
{
	engine_font_manager_draw_text( LOCALE_NAME1, 5, 7 );
	engine_font_manager_draw_text( LOCALE_NAME2, 5, 21 );
	engine_font_manager_draw_text( LOCALE_NAME3, 19, 7 );
	engine_font_manager_draw_text( LOCALE_NAME4, 19, 21 );
}

void engine_text_manager_space()
{
	engine_font_manager_draw_text( LOCALE_SPACE, 5, 7 );
	engine_font_manager_draw_text( LOCALE_SPACE, 5, 21 );
	engine_font_manager_draw_text( LOCALE_SPACE, 19, 7 );
	engine_font_manager_draw_text( LOCALE_SPACE, 19, 21 );
}

