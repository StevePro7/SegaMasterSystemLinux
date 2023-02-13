#include "util_manager.h"
#include "font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"
#include <stdlib.h>

#define BYTE_NIBBLE_MASK	0x0F

// Locale Manager.
//void engine_util_manager_locale_text( unsigned char *text, unsigned char x, unsigned char y )
void engine_util_manager_locale_text( unsigned char index, unsigned char x, unsigned char y )
{
	unsigned char *text;
	devkit_SMS_mapROMBank( 2 );
	//text = ( unsigned char * ) locale_object_texts[ 0 ];
	text = ( unsigned char * ) locale_object_texts[ index ];
	engine_font_manager_text( text, x, y );
}

void engine_util_manager_locale_blank( unsigned char index, unsigned char x, unsigned char y )
{
	unsigned char *blank;
	devkit_SMS_mapROMBank( 2 );
	blank = ( unsigned char * ) locale_object_blank[ index ];
	engine_font_manager_text( blank, x, y );
}

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

// Random Manager.
void engine_random_manager_rand()
{
	rand();
}
unsigned char engine_random_manager_next( unsigned char max )
{
	return rand() % max;
}