#include "SMSlib.h"
//#include "font_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 158
#endif

#define SPLASH_TILES_OFFSET 128
#define BACK_TILES_OFFSET 0
#define MISC_TILES_OFFSET 128
#define TEXT_ROOT 32 // 32 is " " in ASCII.

// title screen
unsigned int scroll_x[6];
unsigned char lineCnt;

void engine_content_manager_load_back_tiles();
void engine_font_manager_draw_text(unsigned char *text, unsigned char x, unsigned char y);

void init_scroll_title_screen();
void scroll_title_screen();

void main(void)
{
  unsigned char i;
  SMS_init();
  SMS_displayOff();
  engine_content_manager_load_back_tiles();
  // SMS_setSpritePaletteColor(0, RGB(3, 3, 3));
  // SMS_loadPSGaidencompressedTiles(splash__tiles__psgcompr, SPLASH_TILES_OFFSET);
  // SMS_loadSTMcompressedTileMap(0, 0, (void *)splash__tilemap__stmcompr);
  // SMS_loadBGPalette((void *)splash__palette__bin);

  for (i = 0; i < 24; i++)
  {
    engine_font_manager_draw_text("HELLO", 10, i);
  }

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
  const unsigned char h1 = 128;
  const unsigned char h2 = 128;
  scroll_x[0] = scroll_x[0] - h1; // 128;                             // 0.5<<8
  scroll_x[1] = scroll_x[1] - h2; // 160; // 0.5<<8 + (0.125<<8)
  scroll_x[2] = scroll_x[2] - h2; // 160;
  scroll_x[3] = scroll_x[3] - h2; // 160;
  scroll_x[4] = scroll_x[4] - h2; // 160;
  // scroll_x[5] = scroll_x[5] - 1;

  lineCnt = 0;
}

void engine_content_manager_load_back_tiles()
{
  // Back tiles.
  SMS_loadPSGaidencompressedTiles(back_tiles__tiles__psgcompr, BACK_TILES_OFFSET);
  SMS_loadBGPalette((void *)back_tiles__palette__bin);
}

void engine_font_manager_draw_text(unsigned char *text, unsigned char x, unsigned char y)
{
  const unsigned char *pnt = back_tiles__tilemap__bin;
  unsigned char idx = 0;

  while ('\0' != text[idx])
  {
    signed char tile = text[idx] - TEXT_ROOT;
    SMS_setNextTileatXY(x++, y);
    SMS_setTile(*pnt + tile);
    idx++;
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");