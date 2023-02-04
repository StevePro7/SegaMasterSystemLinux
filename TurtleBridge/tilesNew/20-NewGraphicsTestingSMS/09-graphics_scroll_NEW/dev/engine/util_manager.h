#ifndef _UTIL_MANAGER_H_
#define _UTIL_MANAGER_H_

// Locale Manager.

// Maths Manager.
void engine_util_manager_convertByteToNibbles( unsigned char byte, unsigned char *upper_nibble, unsigned char *lower_nibble );
void engine_util_manager_convertNibblesToByte( unsigned char upper_nibble, unsigned char lower_nibble, unsigned char *byte );

#endif//#define _MATHS_MANAGER_H_