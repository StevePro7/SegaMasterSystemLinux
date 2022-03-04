#include "SGlib.h"
#include "gfx.h"

void engine_font_manager_draw_char(unsigned char ch, unsigned char x, unsigned char y)
{
  const unsigned char *pnt = font_tiles__tilemap__bin;
  unsigned char tile = ch - 32;
  SG_setNextTileatXY(x, y);
  SG_setTile(*pnt + tile);
}

void main(void)
{
  SG_init();
  // SG_setBackdropColor(SG_COLOR_BLACK);
  SG_loadTilePatterns(font_tiles__tiles__psgcompr, 0, font_tiles__tiles__psgcompr_size);
  SG_loadTileColours(font_tiles__palette__bin, 0, font_tiles__palette__bin_size);
  // SG_setBackdropColor(SG_COLOR_BLACK);
  // engine_font_manager_draw_char('A', 10, 5);
  SG_displayOn();
  for (;;)
  {
    SG_waitForVBlank();
  }
}
