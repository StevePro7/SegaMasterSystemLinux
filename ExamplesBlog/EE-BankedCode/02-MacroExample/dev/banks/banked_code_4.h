#ifndef _BANK_4_H_
#define _BANK_4_H_

#ifdef _CONSOLE
int banked_code_4();
#else
int banked_code_4() __banked;
#endif

#endif//_BANK_4_H_