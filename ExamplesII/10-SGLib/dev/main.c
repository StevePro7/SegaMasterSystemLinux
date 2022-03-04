#include "SGlib.h"

void main(void)
{
  SG_setBackdropColor(SG_COLOR_MAGENTA);
  SG_displayOn();
  for (;;)
  {
    SG_waitForVBlank();
  }
}

// SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
// SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");