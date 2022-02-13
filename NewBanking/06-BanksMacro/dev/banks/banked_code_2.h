#ifndef _BANK_2_H_
#define _BANK_2_H_

#ifdef _CONSOLE
int bar();
#else
int bar() __banked;
#endif

#endif//_BANK_2_H_