#include "original_game.h"

#ifdef _CONSOLE
const unsigned char boot_font[] = { 0 };
const unsigned char boot_tiles_a[] = { 0 };
const unsigned char boot_tiles_b[] = { 0 };
const unsigned char boot_tiles_c[] = { 0 };
const unsigned char title_tiles[] = { 0 };
const unsigned char title_map[] = { 0 };
const unsigned char title_text[] = { 0 };
const unsigned char stage_tiles[] = { 0 };
const unsigned char stage_map[] = { 0 };
const unsigned char orig_scroll_sequence[] = { 0 };

void orig_screen_setup( void ) {}		/* $0429 */
void orig_stage_start( void ) {}		/* $06A9 */
void orig_decode_stage_tiles( void ) {}	/* $290A */
void orig_decode_stage_map( void ) {}	/* $28EA */
void orig_object_update( void ) {}		/* $0123 */
void orig_stage_sequencer( void ) {}	 /* $050A */
void orig_scroll_prepare( void ) {}		/* $2957 */
void orig_map_trigger( void ) {}		/* $0817 */
void orig_map_next( void ) {}			/* $0835 */
void orig_spawn_pending( void ) {}		/* $097B */

void orig_vblank_columns( void ) {}		/* name-table streaming from the $0FA6 handler */
void orig_scroll_advance( void ) {}		/* $29FA */
void orig_input_update( void ) {}		/* $2433 */
void orig_player_update( void ) {}		/* $0AEC */
void orig_timer_update( void ) {}		/* $266F */
void orig_score_update( void ) {}		/* $2DFD */
void orig_hud_update( void ) {}			/* $2E3E */
void orig_stage_timer( void ) {}		/* $0934 */
#endif
