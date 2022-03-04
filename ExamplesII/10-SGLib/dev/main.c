#include "SGlib.h"

void main(void)
{
  SG_init();
  // SG_setBackdropColor(SG_COLOR_BLACK);
  SG_setBackdropColor(SG_COLOR_DARK_YELLOW);
  SG_displayOn();
  for (;;)
  {
    SG_waitForVBlank();
  }
}
  