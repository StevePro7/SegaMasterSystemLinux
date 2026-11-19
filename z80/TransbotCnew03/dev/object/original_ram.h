#ifndef ORIGINAL_RAM_H
#define ORIGINAL_RAM_H

/*
 * The ported original routines address fixed RAM ($C000-$C61F, decode buffer at
 * $D000). The link places SDCC's own variables at $C620 so the two never overlap.
 */
#define ORIGINAL_RAM_START 0xc100u
#define ORIGINAL_RAM_SIZE  0x0520u

#define ORIG_BYTE(address) (*(volatile unsigned char *)(address))
#define ORIG_WORD(address) (*(volatile unsigned int *)(address))

#define ORIG_SCROLL_X_BOTTOM ORIG_BYTE(0xc145)
#define ORIG_SCROLL_X_TOP    ORIG_BYTE(0xc14f)
#define ORIG_SCROLL_FLAGS    ORIG_BYTE(0xc152)  /* bit3 scrolling, bit5 bonus, bit7 redraw */
#define ORIG_SCROLL_ROW_PTR  ORIG_WORD(0xc153)
#define ORIG_STAGE_STATE     ORIG_BYTE(0xc16e)
#define ORIG_ROW_INDEX       ORIG_BYTE(0xc15a)
#define ORIG_ROW_INDEX_2     ORIG_BYTE(0xc15c)

#define SCROLL_FLAG_ACTIVE 0x08
#define SCROLL_FLAG_BONUS  0x20

#endif
