#include "main.h"

int main()
{
	// Initialize.
	engine_font_manager_init();
	engine_font_manager_char( 'X', 10, 2 );
	engine_font_manager_text( "HELLO WORLD", 10, 10 );
	//engine_font_manager_text( "STEVEPRO STUDIOS", 1, 1 );
	//engine_font_manager_text( "ADRIANA LAPPIN BOLAND", 1, 3 );
	engine_font_manager_data( 456, 15, 15 );
	engine_font_manager_numb( 7, 15, 16 );
	engine_font_manager_zero( 13, 15, 17 );

	engine_font_manager_punc( '>', 2, 20 );
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}