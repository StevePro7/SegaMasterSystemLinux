//
// Created by Jordi Montornes on 04/04/2017.
//
#include "montylib.h"
#include "randLut.h"
#include "../engine/soundengine.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../devkit/_gsl_manager.h"

bool pause;
unsigned char rand_index =  0;
unsigned int frame_cnt;


void init_console()
{
	devkit_SMS_init();
	devkit_SMS_VRAMmemset(0x4000, 0x00, 0x4000);
	devkit_SMS_VRAMmemset(0xC000, 0x00, 0x0020);
	devkit_SMS_setSpriteMode(devkit_SPRITEMODE_NORMAL());
	devkit_SMS_displayOn();
	devkit_SMS_VDPturnOnFeature(devkit_VDPFEATURE_LEFTCOLBLANK());
	devkit_SMS_setBackdropColor(0);
	pause = false;
}

void init_scroll(void *scrolltable, void *metatiles, unsigned int scroll_x, unsigned int scroll_y)
{
	devkit_GSL_initializeMap(scrolltable, metatiles);
	devkit_GSL_positionWindow(scroll_x,scroll_y);
	devkit_GSL_refreshVDP();
}

void move_scroll(signed char delta_x, signed char delta_y)
{
	signed int currentx = devkit_GSL_getCurrentX();
	signed int currenty = devkit_GSL_getCurrentY();
	if((currentx + delta_x) < 0) delta_x = 0;
	if((currentx + delta_x) > (devkit_GSL_getMapWidthInPixels() - 256)) delta_x = 0;
	if((currenty + delta_y) < 0) delta_y = 0;
	if((currenty + delta_y) > (devkit_GSL_getMapHeightInPixels() - 192)) delta_y = 0;
    
	devkit_GSL_scroll(delta_x,delta_y);
}

unsigned int get_scroll_x()
{
	return devkit_GSL_getCurrentX();
}

unsigned int get_scroll_y()
{
	return devkit_GSL_getCurrentY();
}

void waitForFrame()
{
	if(!pause)
	{
		manage_sound_frame();
	}
	devkit_SMS_waitForVBlank();
	devkit_GSL_VBlank();
	devkit_SMS_copySpritestoSAT();
}

unsigned char rand() {

	return randLUT[rand_index++];
}
