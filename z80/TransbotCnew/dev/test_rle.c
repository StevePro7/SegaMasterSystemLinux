#include "rle.h"

/* Translation of the interleaved RLE routine at $291A. */
unsigned char rle_decode( const unsigned char *source, unsigned int source_size,
	unsigned char *destination, unsigned int lane_length,
	unsigned char lanes, unsigned char last_lane_prefix )
{
	unsigned int pos = 0;
	unsigned char lane;

	if( !lanes || !lane_length || lane_length > 65536u / lanes )
	{
		return 0;
	}

	for( lane = 0; lane < lanes; ++lane )
	{
		unsigned int written = 0;
		while( written < lane_length )
		{
			unsigned char command, count, value = 0;
			unsigned int i;

			if( pos >= source_size )
			{
				return 0;
			}

			command = source[ pos++ ];
			count = command & 0x7f;
			if( !count || count > lane_length - written )
			{
				return 0;
			}

			if( !( command & 0x80 ) )
			{
				if( pos >= source_size )
				{
					return 0;
				}
				value = source[ pos++ ];
			}

			for( i = 0; i < count; ++i )
			{
				if( command & 0x80 )
				{
					if( pos >= source_size )
					{
						return 0;
					}
					value = source[ pos++ ];
				}
				destination[ ( written + i ) * lanes + lane ] = value;
			}

			written += count;
		}

		if( !( last_lane_prefix && lane == lanes - 1 ) )
		{
			if( pos >= source_size || source[ pos++ ] != 0 )
			{
				return 0;
			}
		}

	}

	return pos == source_size;
}
