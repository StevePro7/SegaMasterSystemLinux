#include "SMSlib.h"
#include "gfx.h"

#define SPLASH_TILES_OFFSET 128

void engine_content_manager_load_splash_screen()
{
  SMS_loadPSGaidencompressedTiles((unsigned char *)splash__tiles__psgcompr, SPLASH_TILES_OFFSET);
  SMS_loadSTMcompressedTileMap(0, 0, (void *)splash__tilemap__stmcompr);
  SMS_loadBGPalette((void *)splash__palette__bin);
}

void main(void)
{
  engine_content_manager_load_splash_screen();
  SMS_displayOn();
  for (;;)
  {
    SMS_waitForVBlank();
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2021, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");