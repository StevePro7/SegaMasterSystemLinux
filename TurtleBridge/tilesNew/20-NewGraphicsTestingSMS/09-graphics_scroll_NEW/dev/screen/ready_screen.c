#include "ready_screen.h"
#include "..\engine\enum_manager.h"

void screen_ready_screen_load()
{
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_ready;
}