/* ***************************************************************** */
/* Cartridge mapper handling - additions                             */
/* ***************************************************************** */

/* macro to retrieve the currently mapped ROM bank */
#define SMS_getROMBank() (ROM_bank_to_be_mapped_on_slot2)

/* macros to preserve and restore the currently mapped ROM bank */
#define SMS_saveROMBank() unsigned char _saved_slot2_ROM_bank = ROM_bank_to_be_mapped_on_slot2
#define SMS_restoreROMBank() SMS_mapROMBank(_saved_slot2_ROM_bank)

/* additional mapper slot controls */
unsigned char ROM_bank_to_be_mapped_on_slot1;
unsigned char ROM_bank_to_be_mapped_on_slot0;

/* ***************************************************************** */
/* Tiles / Background handling - additions                           */
/* ***************************************************************** */

void outi_block(void) {}

/* functions to load tiles into VRAM */
void SMS_load2bppTilesatAddr(
    const void *src,
    unsigned int dest,
    unsigned int size) {}

#define SMS_load2bppTiles(src, tilefrom, size) \
    SMS_load2bppTilesatAddr((src), TILEtoADDR(tilefrom), (size))

/* functions to load compressed tiles into VRAM */
void SMS_loadSTC0compressedTilesatAddr(
    const void *src,
    unsigned int dst) {}

#define SMS_loadSTC0compressedTiles(src, tilefrom) \
    SMS_loadSTC0compressedTilesatAddr((src), TILEtoADDR(tilefrom))

void SMS_loadSTC4compressedTilesatAddr(
    const void *src,
    unsigned int dst) {}

#define SMS_loadSTC4compressedTiles(src, tilefrom) \
    SMS_loadSTC4compressedTilesatAddr((src), TILEtoADDR(tilefrom))

/*
 * Replaces the old UNSAFE_SMS_loadZX7compressedTiles* API.
 * Your existing SMS_loadPSGaidencompressedTiles* stubs remain valid.
 */
void SMS_decompressZX7toVRAM(
    const void *src,
    unsigned int dst) {}

#define SMS_loadZX7compressedTiles(src, tilefrom) \
    SMS_decompressZX7toVRAM((src), TILEtoADDR(tilefrom))

#define SMS_loadZX7compressedTilesatAddr(src, dst) \
    SMS_decompressZX7toVRAM((src), (dst))

/* functions for the tilemap */
void SMS_loadTileMapAreaatAddr(
    unsigned int dst,
    const void *src,
    unsigned char width,
    unsigned char height) {}

#define SMS_loadTileMapArea(x, y, src, width, height) \
    SMS_loadTileMapAreaatAddr(XYtoADDR((x), (y)), (src), (width), (height))

void SMS_loadTileMapColumnatAddr(
    unsigned int dst,
    const void *src,
    unsigned int height) {}

#define SMS_loadTileMapColumn(x, y, src, height) \
    SMS_loadTileMapColumnatAddr(XYtoADDR((x), (y)), (src), (height))

/* function for reading back tiles from PNT */
unsigned int SMS_getTile(void) { return 0; }

/* PNT define and helpers for reading */
#define SMS_PNTAddress_READ 0x3800

#define XYtoREADADDR(x, y) \
    (SMS_PNTAddress_READ | ((((unsigned int)(y) << 5) + ((unsigned char)(x))) << 1))

#define SMS_readNextTilefromXY(x, y) SMS_setAddr(XYtoREADADDR((x), (y)))
#define SMS_readNextTilefromLoc(loc) SMS_setAddr(SMS_PNTAddress_READ | ((unsigned int)(loc) << 1))
#define SMS_readNextTilefromAddr(a) SMS_setAddr(a)

#define SMS_getTileatXY(x, y) \
    (SMS_setAddr(XYtoREADADDR((x), (y))), SMS_getTile())

/* functions for reading back tilemap and VRAM */
void SMS_saveTileMapArea(
    unsigned char x,
    unsigned char y,
    void *dst,
    unsigned char width,
    unsigned char height) {}

void *SMS_saveTileMapColumnatAddr(
    unsigned int src,
    void *dst,
    unsigned int height)
{
    return dst;
}

#define SMS_saveTileMapColumn(x, y, dst, height) \
    SMS_saveTileMapColumnatAddr(XYtoADDR((x), (y)), (dst), (height))

void SMS_readVRAM(
    void *dst,
    unsigned int src,
    unsigned int size) {}

/* ***************************************************************** */
/* Sprites handling - replace previous add-sprite declarations       */
/* ***************************************************************** */

/*
 * Replace the old direct SMS_addSprite(),
 * SMS_addTwoAdjoiningSprites(), and SMS_addThreeAdjoiningSprites()
 * function stubs with this macro / _f-function form.
 */
#define SMS_addSprite(x, y, tile) \
    SMS_addSprite_f((y), (((unsigned int)(x) & 0xff) << 8) | (((tile) & 0xff)))

#define SMS_addTwoAdjoiningSprites(x, y, tile) \
    SMS_addTwoAdjoiningSprites_f((y), (((unsigned int)(x) & 0xff) << 8) | (((tile) & 0xff)))

#define SMS_addThreeAdjoiningSprites(x, y, tile) \
    SMS_addThreeAdjoiningSprites_f((y), (((unsigned int)(x) & 0xff) << 8) | (((tile) & 0xff)))

#define SMS_addFourAdjoiningSprites(x, y, tile) \
    SMS_addFourAdjoiningSprites_f((y), (((unsigned int)(x) & 0xff) << 8) | (((tile) & 0xff)))

#ifdef NO_SPRITE_CHECKS
void SMS_addSprite_f(unsigned char y, unsigned int x_tile) {}
void SMS_addTwoAdjoiningSprites_f(unsigned char y, unsigned int x_tile) {}
void SMS_addThreeAdjoiningSprites_f(unsigned char y, unsigned int x_tile) {}
void SMS_addFourAdjoiningSprites_f(unsigned char y, unsigned int x_tile) {}
#else
signed char SMS_addSprite_f(unsigned int y, unsigned int x_tile) { return -1; }
void SMS_addTwoAdjoiningSprites_f(unsigned int y, unsigned int x_tile) {}
void SMS_addThreeAdjoiningSprites_f(unsigned int y, unsigned int x_tile) {}
void SMS_addFourAdjoiningSprites_f(unsigned int y, unsigned int x_tile) {}
#endif

/* metasprites */
#define METASPRITE_END 0x80

#define SMS_addMetaSprite(x, y, metasprite) \
    SMS_addMetaSprite_f(((x) & 0xff) | (((unsigned int)(y) & 0xff) << 8), (metasprite))

void SMS_addMetaSprite_f(
    unsigned int origin_yx,
    void *metasprite) {}

/* ***************************************************************** */
/* Colors / palettes handling - additions                            */
/* ***************************************************************** */

#ifdef TARGET_GG

void GG_loadBGPaletteHalfBrightness(const void *palette) {}
void GG_loadSpritePaletteHalfBrightness(const void *palette) {}
void GG_zeroBGPalette(void) {}
void GG_zeroSpritePalette(void) {}

void GG_loadBGPaletteafterColorAddition(
    const void *palette,
    const unsigned int addition_color) {}

void GG_loadSpritePaletteafterColorAddition(
    const void *palette,
    const unsigned int addition_color) {}

void GG_loadBGPaletteafterColorSubtraction(
    const void *palette,
    const unsigned int subtraction_color) {}

void GG_loadSpritePaletteafterColorSubtraction(
    const void *palette,
    const unsigned int subtraction_color) {}

#else

void SMS_loadBGPaletteafterColorAddition(
    const void *palette,
    const unsigned char addition_color) {}

void SMS_loadSpritePaletteafterColorAddition(
    const void *palette,
    const unsigned char addition_color) {}

void SMS_loadBGPaletteafterColorSubtraction(
    const void *palette,
    const unsigned char subtraction_color) {}

void SMS_loadSpritePaletteafterColorSubtraction(
    const void *palette,
    const unsigned char subtraction_color) {}

#endif

/* text renderer */
void SMS_putchar(unsigned char c) {}
void SMS_print(const unsigned char *str) {}

#define SMS_printatXY(x, y, s)     \
    do                             \
    {                              \
        SMS_setNextTileatXY(x, y); \
        SMS_print(s);              \
    } while (0)

/* decompress compressed data to RAM */
void SMS_decompressaPLib(const void *src, void *dst) {}

/* ***************************************************************** */
/* Input handling - add inside the existing MD_PAD_SUPPORT section   */
/* ***************************************************************** */

#ifdef MD_PAD_SUPPORT

#define SMS_getDetectedPadType() (DetectedPadType)
unsigned char DetectedPadType;

#define PAD_TYPE_SMS 0
#define PAD_TYPE_MD_3BTN 1
#define PAD_TYPE_MD_6BTN 2

#endif

/* ***************************************************************** */
/* Interrupt additions                                               */
/* ***************************************************************** */

#ifndef NO_FRAME_INT_HOOK
void SMS_setFrameInterruptHandler(
    void (*theHandlerFunction)(void)) {}
#endif

/*
 * Host-safe substitute for the 4.2.0 direct VDP-port raster helper.
 * Do not add the real SMS_VDPControlPort hardware declaration here.
 */
#define INLINE_SMS_setBGScrollX(scrollX) SMS_setBGScrollX(scrollX)

/* ***************************************************************** */
/* Low-level VRAM additions and API change                           */
/* ***************************************************************** */

/*
 * Replace your direct SMS_VRAMmemset() function with the 4.2.0 macro
 * and renamed implementation stub.
 */
#define SMS_VRAMmemset(dst, value, size) \
    SMS_VRAMmemset_f((value), (dst), (size))

void SMS_VRAMmemset_f(
    unsigned char value,
    unsigned int dst,
    unsigned int size) {}

/* VRAM unsafe functions */
void *UNSAFE_SMS_VRAMmemcpy96(
    unsigned int dst,
    const void *src)
{
    return 0;
}

void *UNSAFE_SMS_VRAMmemcpy(
    unsigned int dst,
    const void *src,
    unsigned int size)
{
    return 0;
}

/* handy macros for UNSAFE_SMS_VRAMmemcpy* */
#define UNSAFE_SMS_load3Tiles(src, tilefrom) \
    UNSAFE_SMS_VRAMmemcpy96((tilefrom) * 32, (src))

#define UNSAFE_SMS_loadNTiles(src, tilefrom, tilecount) \
    UNSAFE_SMS_VRAMmemcpy((tilefrom) * 32, (src), (tilecount) * 32)

#define UNSAFE_SMS_loadTiles(src, tilefrom, size) \
    UNSAFE_SMS_VRAMmemcpy((tilefrom) * 32, (src), (size))

/* function to print messages to the debug console of emulators */
void SMS_debugPrintf(const unsigned char *format, ...) {}