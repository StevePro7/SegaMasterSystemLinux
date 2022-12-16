;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module flip_object
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _flip_array_06
	.globl _flip_array_05
	.globl _flip_array_04
	.globl _flip_array_03
	.globl _flip_array_02
	.globl _flip_array_01
	.globl _flip_array_00
	.globl _flip_array_ptr
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
G$flip_array_ptr$0_0$0==.
_flip_array_ptr::
	.ds 14
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
	.area _CODE
G$flip_array_00$0_0$0 == .
_flip_array_00:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
G$flip_array_01$0_0$0 == .
_flip_array_01:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x02	; 2
G$flip_array_02$0_0$0 == .
_flip_array_02:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x02	; 2
G$flip_array_03$0_0$0 == .
_flip_array_03:
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
G$flip_array_04$0_0$0 == .
_flip_array_04:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x02	; 2
G$flip_array_05$0_0$0 == .
_flip_array_05:
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
G$flip_array_06$0_0$0 == .
_flip_array_06:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.area _INITIALIZER
Fflip_object$__xinit_flip_array_ptr$0_0$0 == .
__xinit__flip_array_ptr:
	.dw _flip_array_00
	.dw _flip_array_01
	.dw _flip_array_02
	.dw _flip_array_03
	.dw _flip_array_04
	.dw _flip_array_05
	.dw _flip_array_06
	.area _CABS (ABS)
