;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module banked_code_1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_banked_code_1
	.globl _banked_code_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _BANK1
	G$banked_code_1$0$0	= .
	.globl	G$banked_code_1$0$0
	C$banked_code_1.c$6$0_0$1	= .
	.globl	C$banked_code_1.c$6$0_0$1
;banked_code_1.c:6: int banked_code_1() __banked
;	---------------------------------
; Function banked_code_1
; ---------------------------------
	b_banked_code_1	= 1
_banked_code_1::
	C$banked_code_1.c$9$1_0$1	= .
	.globl	C$banked_code_1.c$9$1_0$1
;banked_code_1.c:9: return 1;
	ld	de, #0x0001
	C$banked_code_1.c$10$1_0$1	= .
	.globl	C$banked_code_1.c$10$1_0$1
;banked_code_1.c:10: }
	C$banked_code_1.c$10$1_0$1	= .
	.globl	C$banked_code_1.c$10$1_0$1
	XG$banked_code_1$0$0	= .
	.globl	XG$banked_code_1$0$0
	ret
	.area _BANK1
	.area _INITIALIZER
	.area _CABS (ABS)
