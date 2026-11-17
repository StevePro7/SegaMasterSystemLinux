#include "scroll_manager.h"

#ifdef _CONSOLE
const unsigned char engine_scroll_sequence[] = { 0 };
#endif

/* Entry points of the byte-exact conversion in scroll_manager_z80.s. */
#ifdef _CONSOLE
void engine_scroll_prepare( void )
{
}
#else
void engine_scroll_prepare( void ) __naked
{
	__asm
		push ix
		push iy
		call _engine_scroll_prepare_z80
		pop iy
		pop ix
		ret
	__endasm;
}
#endif

#ifdef _CONSOLE
void engine_scroll_frame( void )
{
}
#else
void engine_scroll_frame( void ) __naked
{
	__asm
		push ix
		push iy
		call _engine_scroll_draw_columns
		call _engine_scroll_advance
		pop iy
		pop ix
		ret
	__endasm;
}
#endif