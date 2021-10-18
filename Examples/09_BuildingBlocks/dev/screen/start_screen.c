#include "start_screen.h"
#include "..\devkit\_sms_manager.h"
#include "..\engine\asm_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\input_manager.h"

#define SPLASH_DELAY		150

static unsigned char timer;

void screen_start_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_load_splash();
	devkit_SMS_displayOn();
	timer = 0;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_fire1();

	timer++;
	if( input || timer > SPLASH_DELAY )
	{
		*screen_type = screen_type_title;
		return;
	}

	*screen_type = screen_type_start;
}