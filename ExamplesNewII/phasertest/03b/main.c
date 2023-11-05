#include <stdio.h>
#include "SMSlib.h"
#include "inlib.h"


void main(void)
{
	SMS_init();
	SMS_VRAMmemsetW(0, 0x0000, 16384);
	SMS_setSpritePaletteColor(0, RGB(3, 3, 3));
	SMS_displayOn();
	for (;;)
	{
		SMS_waitForVBlank();
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2022, 4, 1, "StevePro Studios", "Simple Hello World", "Simple Sega Master System demo to run on real hardware");