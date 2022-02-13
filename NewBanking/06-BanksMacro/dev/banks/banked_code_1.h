#ifndef _BANK_1_H_
#define _BANK_1_H_

#ifdef _CONSOLE
int foo();
#else
int foo() __banked;
#endif

#endif//_BANK_1_H_