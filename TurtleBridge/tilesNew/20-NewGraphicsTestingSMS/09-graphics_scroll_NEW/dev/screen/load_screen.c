#include "load_screen.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"

void screen_load_screen_load()
{

}

void screen_load_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_load;
}
