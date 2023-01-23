#ifndef _MATHS_MANAGER_H_
#define _MATHS_MANAGER_H_

void engine_function_manager_convertByteToNibbles( unsigned char byte, unsigned char *upper_nibble, unsigned char *lower_nibble );
void engine_function_manager_convertNibblesToByte( unsigned char upper_nibble, unsigned char lower_nibble, unsigned char *byte );

#endif//_MATHS_MANAGER_H_