#include "SMSlib.h"
#include "gfx.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

#define SPLASH_TILES_OFFSET 128

// title screen
unsigned int scroll_x[6];
unsigned char lineCnt;

void init_scroll_title_screen();
void scroll_title_screen();
void main(void)
{
  SMS_init();
  SMS_displayOff();
  // SMS_setSpritePaletteColor(0, RGB(3, 3, 3));
  SMS_loadPSGaidencompressedTiles(splash__tiles__psgcompr, SPLASH_TILES_OFFSET);
  SMS_loadSTMcompressedTileMap(0, 0, (void *)splash__tilemap__stmcompr);
  SMS_loadBGPalette((void *)splash__palette__bin);
  SMS_displayOn();

  init_scroll_title_screen();
  for (;;)
  {
    SMS_waitForVBlank();
    scroll_title_screen();
  }
}

void lineScrollHandler(void)
{
  SMS_setBGScrollX((scroll_x[lineCnt++]) >> 8);
}

void init_scroll_title_screen()
{
  scroll_x[0] = 255 << 8;
  scroll_x[1] = 255 << 8;
  scroll_x[2] = 255 << 8;
  scroll_x[3] = 255 << 8;
  scroll_x[4] = 255 << 8;
  scroll_x[5] = 255 << 8;
  lineCnt = 0;
  SMS_VDPturnOnFeature(VDPFEATURE_LEFTCOLBLANK);
  SMS_setLineInterruptHandler(&lineScrollHandler);
  SMS_setLineCounter(31); /* we're updating every 32 scanlines... */
  SMS_enableLineInterrupt();
}

void scroll_title_screen()
{
  scroll_x[0] = scroll_x[0] - 128; // 0.5<<8
  scroll_x[1] = scroll_x[1] - 160; // 0.5<<8 + (0.125<<8)
  scroll_x[2] = scroll_x[2] - 160;
  scroll_x[3] = scroll_x[3] - 160;
  scroll_x[4] = scroll_x[4] - 160;
  // scroll_x[5] = scroll_x[5] - 1;

  lineCnt = 0;
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");