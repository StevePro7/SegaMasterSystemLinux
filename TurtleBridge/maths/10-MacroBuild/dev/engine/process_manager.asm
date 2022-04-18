;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module process_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bar
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
	.area _CODE
	G$Bar$0$0	= .
	.globl	G$Bar$0$0
	C$process_manager.c$3$0_0$1	= .
	.globl	C$process_manager.c$3$0_0$1
;process_manager.c:3: int Bar()
;	---------------------------------
; Function Bar
; ---------------------------------
_Bar::
	C$process_manager.c$5$1_0$1	= .
	.globl	C$process_manager.c$5$1_0$1
;process_manager.c:5: return 3;
	ld	hl, #0x0003
	C$process_manager.c$6$1_0$1	= .
	.globl	C$process_manager.c$6$1_0$1
;process_manager.c:6: }
	C$process_manager.c$6$1_0$1	= .
	.globl	C$process_manager.c$6$1_0$1
	XG$Bar$0$0	= .
	.globl	XG$Bar$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
