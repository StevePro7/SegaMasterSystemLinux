#include "util_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"

#define BYTE_NIBBLE_MASK	0x0F

// Locale Manager.
//void engine_util_manager_locale_text( unsigned char *text, unsigned char x, unsigned char y )
//{
//	devkit_SMS_mapROMBank( FIXED_BANK );
//	//text = ( unsigned char * ) locale_object_texts[ 0 ];
//	//text = locale_object_texts[ index ];
//	engine_font_manager_text( text, x, y );
//}

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