#include "main.h"

int main()
{
	// Initialize.
	engine_font_manager_init();
	//engine_font_manager_char( 'C', 10, 10 );
	engine_font_manager_text( "HELLO", 10, 10 );
	engine_font_manager_text( "WORLD", 10, 11 );
	engine_font_manager_text( "STEVEPRO STUDIOS", 1, 1 );
	engine_font_manager_text( "ADRIANA LAPPIN BOLAND", 1, 3 );
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}