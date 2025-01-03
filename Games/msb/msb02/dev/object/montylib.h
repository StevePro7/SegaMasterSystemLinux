
#ifndef MSB_MONTYLIB_H_H
#define MSB_MONTYLIB_H_H

#define VRAM_BASE_SPRITES 256
#define SCREEN_COLUMNS 32
#define SCREEN_ROWS 24
#define NUM_FPS_FRAME 60

#define UFIX2CHAR(x)      ((unsigned char)((x)>>8))
#define CHAR2UFIX(x)      ((unsigned int)(x)<<8)

#include <stdbool.h>

extern bool pause;
extern unsigned char rand_index;
extern unsigned int frame_cnt;
extern unsigned char music_bank;
extern unsigned char fx_bank;

void init_console();
void waitForFrame();

void init_scroll(void *scrolltable, void *metatiles, unsigned int scroll_x, unsigned int scroll_y);
void move_scroll(signed char delta_x, signed char delta_y);
unsigned int get_scroll_x();
unsigned int get_scroll_y();

unsigned char rand();

#endif //MSB_MONTYLIB_H_H
