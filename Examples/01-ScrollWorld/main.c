#include "SMSlib.h"
#include "gfx.h"
#define SPLASH_TILES_OFFSET 128
void main(void)
{
  SMS_init();
  SMS_displayOff();
  // SMS_setSpritePaletteColor(0, RGB(3, 3, 3));
  SMS_loadPSGaidencompressedTiles(splash__tiles__psgcompr, SPLASH_TILES_OFFSET);
  SMS_loadSTMcompressedTileMap(0, 0, (void *)splash__tilemap__stmcompr);
  SMS_loadBGPalette((void *)splash__palette__bin);
  SMS_displayOn();
  for (;;)
  {
    SMS_waitForVBlank();
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");