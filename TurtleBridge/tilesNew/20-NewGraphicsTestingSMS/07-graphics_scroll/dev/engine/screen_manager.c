#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

#define TMP_HGH		4

static unsigned char x;
static unsigned char col;
static unsigned int tmp;

void engine_screen_manager_init()
{
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	//TODO
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	//unsigned char input;
}
