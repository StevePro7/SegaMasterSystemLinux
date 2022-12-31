#include "scroll_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

// Global variable.
struct_scroll_object global_scroll_object;

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

void engine_scroll_manager_init()
{
	struct_scroll_object *so = &global_scroll_object;
	so->scroll_left = 0;
	so->scroll_right = 0;

	so->scroll = 0;
	so->scrollRight = 0;
	so->scrollRightDivided8 = 0;
	so->offset_left = 0;
	so->offset_right = 31;

	devkit_SMS_setBGScrollX( so->scroll );
}


void engine_scroll_manager_update()
{
}

