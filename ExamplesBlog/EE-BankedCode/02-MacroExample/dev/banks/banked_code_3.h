#ifndef _BANK_3_H_
#define _BANK_3_H_

#ifdef _CONSOLE
int sgb();
#else
int sgb() __banked;
#endif

#endif//_BANK_3_H_