#include "util_manager.h"

#define BYTE_NIBBLE_MASK	0x0F

// Locale Manager.

// Maths Manager.
void engine_util_manager_convertByteToNibbles( unsigned char byte, unsigned char *upper_nibble, unsigned char *lower_nibble )
{
	*upper_nibble = ( byte >> 4 ) & BYTE_NIBBLE_MASK;
	*lower_nibble = byte & BYTE_NIBBLE_MASK;
}
void engine_util_manager_convertNibblesToByte( unsigned char upper_nibble, unsigned char lower_nibble, unsigned char *byte )
{
	*byte = lower_nibble | ( upper_nibble << 4 );
}