#ifndef ORIGINAL_RAM_H
#define ORIGINAL_RAM_H

/*
* The ported original routines address fixed RAM ($C000-$C61F, decode buffer at
* $D000). The link places SDCC's own variables at $C620 so the two never overlap.
*/
#define ORIGINAL_RAM_START 0xc100u
#define ORIGINAL_RAM_SIZE  0x0520u
#define ORIGINAL_WORK_RAM_START 0xd000u
#define ORIGINAL_WORK_RAM_SIZE  0x0f02u

#define ORIG_BYTE(address) (*(volatile unsigned char *)(address))
#define ORIG_WORD(address) (*(volatile unsigned int *)(address))

#define ORIG_MODE_FLAGS      ORIG_BYTE(0xc000)  /* bit2 input, bit4 1P pad, bit5 2P pad, bit3 demo */
#define ORIG_FRAME_READY     ORIG_BYTE(0xc001)
#define ORIG_PAD_DETECT      ORIG_BYTE(0xc002)
#define ORIG_FRAME_COUNTER   ORIG_BYTE(0xc00c)
#define ORIG_SAT_FLAGS       ORIG_BYTE(0xc181)  /* bit7: sprite buffers ready for upload */
#define ORIG_SCROLL_X_BOTTOM ORIG_BYTE(0xc145)
#define ORIG_SCROLL_X_TOP    ORIG_BYTE(0xc14f)
#define ORIG_SCROLL_FLAGS    ORIG_BYTE(0xc152)  /* bit3 scrolling, bit5 bonus, bit7 redraw */
#define ORIG_STAGE_STATE     ORIG_BYTE(0xc16e)

#define SCROLL_FLAG_BONUS  0x20

#endif//ORIGINAL_RAM_H
