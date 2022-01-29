#include "scroll_manager.h"
#include "font_manager.h"

// Global variable.
struct_scroll_object global_scroll_object;

// Methods.
void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll_left = 7;
}

void engine_scroll_manager_load()
{
	struct_scroll_object *so = &global_scroll_object;
	engine_font_manager_draw_data( so->scroll_left, 10, 0 );
}