#ifndef ORIGINAL_GAME_H
#define ORIGINAL_GAME_H

/*
 * Symbols of the original Z80 game code, converted by tools/port_asm.py into
 * build/original_game.s. Every routine takes no arguments and may clobber all
 * registers; the wrappers preserve IX/IY for the SDCC ABI. The graphics data
 * is linked with the code inside the 32 KB ROM, as in the original.
 */
extern const unsigned char boot_font[];
extern const unsigned char boot_tiles_a[];
extern const unsigned char boot_tiles_b[];
extern const unsigned char boot_tiles_c[];
extern const unsigned char title_tiles[];
extern const unsigned char title_map[];
extern const unsigned char title_text[];
extern const unsigned char stage_tiles[];
extern const unsigned char stage_map[];
extern const unsigned char orig_scroll_sequence[];

void orig_screen_setup(void);    /* $0429 */
void orig_stage_start(void);     /* $06A9 */
void orig_decode_stage_tiles(void); /* $290A */
void orig_decode_stage_map(void);   /* $28EA */
void orig_object_update(void);   /* $0123 */
void orig_stage_sequencer(void); /* $050A */
void orig_scroll_prepare(void);  /* $2957 */
void orig_map_trigger(void);     /* $0817 */
void orig_map_next(void);        /* $0835 */
void orig_spawn_pending(void);   /* $097B */

void orig_vblank_columns(void);  /* name-table streaming from the $0FA6 handler */
void orig_scroll_advance(void);  /* $29FA */
void orig_input_update(void);    /* $2433 */
void orig_player_update(void);   /* $0AEC */
void orig_timer_update(void);    /* $266F */
void orig_score_update(void);    /* $2DFD */
void orig_hud_update(void);      /* $2E3E */
void orig_stage_timer(void);     /* $0934 */

#endif
