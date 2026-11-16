#ifndef TRANSBOT_RLE_H
#define TRANSBOT_RLE_H

/* The last lane may omit its terminator when only a prefix is needed. */
unsigned char rle_decode( const unsigned char *source, unsigned int source_size,
	unsigned char *destination, unsigned int lane_length,
	unsigned char lanes, unsigned char last_lane_prefix );

#endif//TRANSBOT_RLE_H
