#ifndef _BANK_4_H_
#define _BANK_4_H_

#ifdef _CONSOLE
int adi();
#else
int adi() __banked;
#endif

#endif//_BANK_4_H_