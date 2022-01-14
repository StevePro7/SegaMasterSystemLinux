#include "scroll_manager.h"
#include "../devkit/_sms_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

unsigned int scroll_x[6];
unsigned char lineCnt;

static void lineScrollHandler(void);

void engine_scroll_manager_init()
{
	//scroll_x[0] = 255 << 8;
	//scroll_x[1] = 255 << 8;
	//scroll_x[2] = 255 << 8;
	//scroll_x[3] = 255 << 8;
	//scroll_x[4] = 255 << 8;
	//scroll_x[5] = 255 << 8;
	//lineCnt = 0;

	//devkit_SMS_setLineInterruptHandler(&lineScrollHandler);
	//devkit_SMS_setLineCounter(31); /* we're updating every 32 scanlines... */
	//devkit_SMS_enableLineInterrupt();
}

void engine_scroll_manager_update()
{
	//const unsigned char h1 = 128;
	//const unsigned char h2 = 144;
	//scroll_x[0] = scroll_x[0] - h1; // 128;                             // 0.5<<8
	//scroll_x[1] = scroll_x[1] - h1; // 160; // 0.5<<8 + (0.125<<8)
	//scroll_x[2] = scroll_x[2] - h2; // 160;
	//scroll_x[3] = scroll_x[3] - h2; // 160;
	//scroll_x[4] = scroll_x[4] - h2; // 160;
	//// scroll_x[5] = scroll_x[5] - 200;
	//lineCnt = 0;
}

static void lineScrollHandler(void)
{
	//devkit_SMS_setBGScrollX((scroll_x[lineCnt++]) >> 8);
}
