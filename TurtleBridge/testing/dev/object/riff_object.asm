;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module riff_object
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _riff_sample_bank
	.globl _riff_sample_data
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
G$riff_sample_data$0_0$0==.
_riff_sample_data::
	.ds 18
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
G$riff_sample_bank$0_0$0 == .
_riff_sample_bank:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.area _INITIALIZER
Friff_object$__xinit_riff_sample_data$0_0$0 == .
__xinit__riff_sample_data:
	.dw _Riff__01_wav_pcmenc
	.dw _Riff__02_wav_pcmenc
	.dw _Riff__03_wav_pcmenc
	.dw _Riff__04_wav_pcmenc
	.dw _Riff__05_wav_pcmenc
	.dw _Riff__06_wav_pcmenc
	.dw _Riff__07_wav_pcmenc
	.dw _Riff__08_wav_pcmenc
	.dw _Riff__09_wav_pcmenc
	.area _CABS (ABS)
