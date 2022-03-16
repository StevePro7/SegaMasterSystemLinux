#ifndef _TEXT_MANAGER_H_
#define _TEXT_MANAGER_H_

void engine_text_manager_clear( unsigned char start, unsigned char stop );
void engine_text_manager_border();
void engine_text_manager_title( unsigned char row );

void engine_text_manager_args( unsigned char x, unsigned char y, unsigned char num, ... );
//void engine_text_manager_list( unsigned char x, unsigned char y, unsigned char num, unsigned char *arr );

#endif//_TEXT_MANAGER_H_