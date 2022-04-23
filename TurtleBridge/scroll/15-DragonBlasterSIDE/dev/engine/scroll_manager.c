#include "scroll_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// Global variable.
struct_scroll_object global_scroll_object;


// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	
}

void engine_scroll_manager_load()
{
}

void engine_scroll_manager_update()
{
	
}

unsigned char engine_scroll_manager_getPosY( unsigned int col )
{
	//struct_scroll_object *so = &global_scroll_object;
	//unsigned int idx = so->offset_left + col;
	//return tiles[ idx  ];
	return col;
}

