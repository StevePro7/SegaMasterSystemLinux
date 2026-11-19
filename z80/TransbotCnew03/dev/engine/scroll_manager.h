#ifndef SCROLL_MANAGER_H
#define SCROLL_MANAGER_H

/* Meta-tile row sequence for the first stage ($2B4D in the original ROM). */
extern const unsigned char engine_scroll_sequence[];

/* $2957: per-frame scroll state machine (main loop). */
void engine_scroll_prepare( void );

/* VBlank half of the $0FA6 handler: name-table streaming, then $29FA scrolling. */
void engine_scroll_frame( void );

#endif//SCROLL_MANAGER_H
