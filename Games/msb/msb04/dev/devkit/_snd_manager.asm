;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module _snd_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGRestoreVolumes
	.globl _PSGSilenceChannels
	.globl _PSGSFXGetStatus
	.globl _PSGSFXStop
	.globl _PSGSFXPlay
	.globl _PSGSetMusicVolumeAttenuation
	.globl _PSGGetStatus
	.globl _PSGResume
	.globl _PSGStop
	.globl _PSGPlayNoRepeat
	.globl _PSGPlay
	.globl _devkit_PSGPlay
	.globl _devkit_PSGPlayNoRepeat
	.globl _devkit_PSGStop
	.globl _devkit_PSGResume
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGSetMusicVolumeAttenuation
	.globl _devkit_PSGSFXPlay
	.globl _devkit_PSGSFXStop
	.globl _devkit_PSGSFXGetStatus
	.globl _devkit_PSGSilenceChannels
	.globl _devkit_PSGRestoreVolumes
	.globl _devkit_PSGFrame
	.globl _devkit_PSGSFXFrame
	.globl _devkit_PSG_STOPPED
	.globl _devkit_PSG_PLAYING
	.globl _devkit_SFX_CHANNEL2
	.globl _devkit_SFX_CHANNEL3
	.globl _devkit_SFX_CHANNELS2AND3
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
	G$devkit_PSGPlay$0$0	= .
	.globl	G$devkit_PSGPlay$0$0
	C$_snd_manager.c$9$0_0$32	= .
	.globl	C$_snd_manager.c$9$0_0$32
;_snd_manager.c:9: void devkit_PSGPlay( void *song )
;	---------------------------------
; Function devkit_PSGPlay
; ---------------------------------
_devkit_PSGPlay::
	C$_snd_manager.c$11$1_0$32	= .
	.globl	C$_snd_manager.c$11$1_0$32
;_snd_manager.c:11: PSGPlay( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlay
	pop	af
	C$_snd_manager.c$12$1_0$32	= .
	.globl	C$_snd_manager.c$12$1_0$32
;_snd_manager.c:12: }
	C$_snd_manager.c$12$1_0$32	= .
	.globl	C$_snd_manager.c$12$1_0$32
	XG$devkit_PSGPlay$0$0	= .
	.globl	XG$devkit_PSGPlay$0$0
	ret
	G$devkit_PSGPlayNoRepeat$0$0	= .
	.globl	G$devkit_PSGPlayNoRepeat$0$0
	C$_snd_manager.c$13$1_0$34	= .
	.globl	C$_snd_manager.c$13$1_0$34
;_snd_manager.c:13: void devkit_PSGPlayNoRepeat( void *song )
;	---------------------------------
; Function devkit_PSGPlayNoRepeat
; ---------------------------------
_devkit_PSGPlayNoRepeat::
	C$_snd_manager.c$15$1_0$34	= .
	.globl	C$_snd_manager.c$15$1_0$34
;_snd_manager.c:15: PSGPlayNoRepeat( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlayNoRepeat
	pop	af
	C$_snd_manager.c$16$1_0$34	= .
	.globl	C$_snd_manager.c$16$1_0$34
;_snd_manager.c:16: }
	C$_snd_manager.c$16$1_0$34	= .
	.globl	C$_snd_manager.c$16$1_0$34
	XG$devkit_PSGPlayNoRepeat$0$0	= .
	.globl	XG$devkit_PSGPlayNoRepeat$0$0
	ret
	G$devkit_PSGStop$0$0	= .
	.globl	G$devkit_PSGStop$0$0
	C$_snd_manager.c$17$1_0$36	= .
	.globl	C$_snd_manager.c$17$1_0$36
;_snd_manager.c:17: void devkit_PSGStop( void )
;	---------------------------------
; Function devkit_PSGStop
; ---------------------------------
_devkit_PSGStop::
	C$_snd_manager.c$19$1_0$36	= .
	.globl	C$_snd_manager.c$19$1_0$36
;_snd_manager.c:19: PSGStop();
	C$_snd_manager.c$20$1_0$36	= .
	.globl	C$_snd_manager.c$20$1_0$36
;_snd_manager.c:20: }
	C$_snd_manager.c$20$1_0$36	= .
	.globl	C$_snd_manager.c$20$1_0$36
	XG$devkit_PSGStop$0$0	= .
	.globl	XG$devkit_PSGStop$0$0
	jp	_PSGStop
	G$devkit_PSGResume$0$0	= .
	.globl	G$devkit_PSGResume$0$0
	C$_snd_manager.c$21$1_0$38	= .
	.globl	C$_snd_manager.c$21$1_0$38
;_snd_manager.c:21: void devkit_PSGResume( void )
;	---------------------------------
; Function devkit_PSGResume
; ---------------------------------
_devkit_PSGResume::
	C$_snd_manager.c$23$1_0$38	= .
	.globl	C$_snd_manager.c$23$1_0$38
;_snd_manager.c:23: PSGResume();
	C$_snd_manager.c$24$1_0$38	= .
	.globl	C$_snd_manager.c$24$1_0$38
;_snd_manager.c:24: }
	C$_snd_manager.c$24$1_0$38	= .
	.globl	C$_snd_manager.c$24$1_0$38
	XG$devkit_PSGResume$0$0	= .
	.globl	XG$devkit_PSGResume$0$0
	jp	_PSGResume
	G$devkit_PSGGetStatus$0$0	= .
	.globl	G$devkit_PSGGetStatus$0$0
	C$_snd_manager.c$25$1_0$40	= .
	.globl	C$_snd_manager.c$25$1_0$40
;_snd_manager.c:25: unsigned char devkit_PSGGetStatus( void )
;	---------------------------------
; Function devkit_PSGGetStatus
; ---------------------------------
_devkit_PSGGetStatus::
	C$_snd_manager.c$27$1_0$40	= .
	.globl	C$_snd_manager.c$27$1_0$40
;_snd_manager.c:27: return PSGGetStatus();
	C$_snd_manager.c$28$1_0$40	= .
	.globl	C$_snd_manager.c$28$1_0$40
;_snd_manager.c:28: }
	C$_snd_manager.c$28$1_0$40	= .
	.globl	C$_snd_manager.c$28$1_0$40
	XG$devkit_PSGGetStatus$0$0	= .
	.globl	XG$devkit_PSGGetStatus$0$0
	jp	_PSGGetStatus
	G$devkit_PSGSetMusicVolumeAttenuation$0$0	= .
	.globl	G$devkit_PSGSetMusicVolumeAttenuation$0$0
	C$_snd_manager.c$29$1_0$42	= .
	.globl	C$_snd_manager.c$29$1_0$42
;_snd_manager.c:29: void devkit_PSGSetMusicVolumeAttenuation( unsigned char attenuation )
;	---------------------------------
; Function devkit_PSGSetMusicVolumeAttenuation
; ---------------------------------
_devkit_PSGSetMusicVolumeAttenuation::
	C$_snd_manager.c$31$1_0$42	= .
	.globl	C$_snd_manager.c$31$1_0$42
;_snd_manager.c:31: PSGSetMusicVolumeAttenuation( attenuation );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_PSGSetMusicVolumeAttenuation
	inc	sp
	C$_snd_manager.c$32$1_0$42	= .
	.globl	C$_snd_manager.c$32$1_0$42
;_snd_manager.c:32: }
	C$_snd_manager.c$32$1_0$42	= .
	.globl	C$_snd_manager.c$32$1_0$42
	XG$devkit_PSGSetMusicVolumeAttenuation$0$0	= .
	.globl	XG$devkit_PSGSetMusicVolumeAttenuation$0$0
	ret
	G$devkit_PSGSFXPlay$0$0	= .
	.globl	G$devkit_PSGSFXPlay$0$0
	C$_snd_manager.c$34$1_0$44	= .
	.globl	C$_snd_manager.c$34$1_0$44
;_snd_manager.c:34: void devkit_PSGSFXPlay( void *sfx, unsigned char channels )
;	---------------------------------
; Function devkit_PSGSFXPlay
; ---------------------------------
_devkit_PSGSFXPlay::
	C$_snd_manager.c$36$1_0$44	= .
	.globl	C$_snd_manager.c$36$1_0$44
;_snd_manager.c:36: PSGSFXPlay( sfx, channels );
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_PSGSFXPlay
	pop	af
	inc	sp
	C$_snd_manager.c$37$1_0$44	= .
	.globl	C$_snd_manager.c$37$1_0$44
;_snd_manager.c:37: }
	C$_snd_manager.c$37$1_0$44	= .
	.globl	C$_snd_manager.c$37$1_0$44
	XG$devkit_PSGSFXPlay$0$0	= .
	.globl	XG$devkit_PSGSFXPlay$0$0
	ret
	G$devkit_PSGSFXStop$0$0	= .
	.globl	G$devkit_PSGSFXStop$0$0
	C$_snd_manager.c$38$1_0$46	= .
	.globl	C$_snd_manager.c$38$1_0$46
;_snd_manager.c:38: void devkit_PSGSFXStop( void )
;	---------------------------------
; Function devkit_PSGSFXStop
; ---------------------------------
_devkit_PSGSFXStop::
	C$_snd_manager.c$40$1_0$46	= .
	.globl	C$_snd_manager.c$40$1_0$46
;_snd_manager.c:40: PSGSFXStop();
	C$_snd_manager.c$41$1_0$46	= .
	.globl	C$_snd_manager.c$41$1_0$46
;_snd_manager.c:41: }
	C$_snd_manager.c$41$1_0$46	= .
	.globl	C$_snd_manager.c$41$1_0$46
	XG$devkit_PSGSFXStop$0$0	= .
	.globl	XG$devkit_PSGSFXStop$0$0
	jp	_PSGSFXStop
	G$devkit_PSGSFXGetStatus$0$0	= .
	.globl	G$devkit_PSGSFXGetStatus$0$0
	C$_snd_manager.c$42$1_0$48	= .
	.globl	C$_snd_manager.c$42$1_0$48
;_snd_manager.c:42: unsigned char devkit_PSGSFXGetStatus( void )
;	---------------------------------
; Function devkit_PSGSFXGetStatus
; ---------------------------------
_devkit_PSGSFXGetStatus::
	C$_snd_manager.c$44$1_0$48	= .
	.globl	C$_snd_manager.c$44$1_0$48
;_snd_manager.c:44: return PSGSFXGetStatus();
	C$_snd_manager.c$45$1_0$48	= .
	.globl	C$_snd_manager.c$45$1_0$48
;_snd_manager.c:45: }
	C$_snd_manager.c$45$1_0$48	= .
	.globl	C$_snd_manager.c$45$1_0$48
	XG$devkit_PSGSFXGetStatus$0$0	= .
	.globl	XG$devkit_PSGSFXGetStatus$0$0
	jp	_PSGSFXGetStatus
	G$devkit_PSGSilenceChannels$0$0	= .
	.globl	G$devkit_PSGSilenceChannels$0$0
	C$_snd_manager.c$47$1_0$50	= .
	.globl	C$_snd_manager.c$47$1_0$50
;_snd_manager.c:47: void devkit_PSGSilenceChannels( void )
;	---------------------------------
; Function devkit_PSGSilenceChannels
; ---------------------------------
_devkit_PSGSilenceChannels::
	C$_snd_manager.c$49$1_0$50	= .
	.globl	C$_snd_manager.c$49$1_0$50
;_snd_manager.c:49: PSGSilenceChannels();
	C$_snd_manager.c$50$1_0$50	= .
	.globl	C$_snd_manager.c$50$1_0$50
;_snd_manager.c:50: }
	C$_snd_manager.c$50$1_0$50	= .
	.globl	C$_snd_manager.c$50$1_0$50
	XG$devkit_PSGSilenceChannels$0$0	= .
	.globl	XG$devkit_PSGSilenceChannels$0$0
	jp	_PSGSilenceChannels
	G$devkit_PSGRestoreVolumes$0$0	= .
	.globl	G$devkit_PSGRestoreVolumes$0$0
	C$_snd_manager.c$51$1_0$52	= .
	.globl	C$_snd_manager.c$51$1_0$52
;_snd_manager.c:51: void devkit_PSGRestoreVolumes( void )
;	---------------------------------
; Function devkit_PSGRestoreVolumes
; ---------------------------------
_devkit_PSGRestoreVolumes::
	C$_snd_manager.c$53$1_0$52	= .
	.globl	C$_snd_manager.c$53$1_0$52
;_snd_manager.c:53: PSGRestoreVolumes();
	C$_snd_manager.c$54$1_0$52	= .
	.globl	C$_snd_manager.c$54$1_0$52
;_snd_manager.c:54: }
	C$_snd_manager.c$54$1_0$52	= .
	.globl	C$_snd_manager.c$54$1_0$52
	XG$devkit_PSGRestoreVolumes$0$0	= .
	.globl	XG$devkit_PSGRestoreVolumes$0$0
	jp	_PSGRestoreVolumes
	G$devkit_PSGFrame$0$0	= .
	.globl	G$devkit_PSGFrame$0$0
	C$_snd_manager.c$56$1_0$54	= .
	.globl	C$_snd_manager.c$56$1_0$54
;_snd_manager.c:56: void devkit_PSGFrame( void )
;	---------------------------------
; Function devkit_PSGFrame
; ---------------------------------
_devkit_PSGFrame::
	C$_snd_manager.c$58$1_0$54	= .
	.globl	C$_snd_manager.c$58$1_0$54
;_snd_manager.c:58: PSGFrame();
	C$_snd_manager.c$59$1_0$54	= .
	.globl	C$_snd_manager.c$59$1_0$54
;_snd_manager.c:59: }
	C$_snd_manager.c$59$1_0$54	= .
	.globl	C$_snd_manager.c$59$1_0$54
	XG$devkit_PSGFrame$0$0	= .
	.globl	XG$devkit_PSGFrame$0$0
	jp	_PSGFrame
	G$devkit_PSGSFXFrame$0$0	= .
	.globl	G$devkit_PSGSFXFrame$0$0
	C$_snd_manager.c$60$1_0$56	= .
	.globl	C$_snd_manager.c$60$1_0$56
;_snd_manager.c:60: void devkit_PSGSFXFrame( void )
;	---------------------------------
; Function devkit_PSGSFXFrame
; ---------------------------------
_devkit_PSGSFXFrame::
	C$_snd_manager.c$62$1_0$56	= .
	.globl	C$_snd_manager.c$62$1_0$56
;_snd_manager.c:62: PSGSFXFrame();
	C$_snd_manager.c$63$1_0$56	= .
	.globl	C$_snd_manager.c$63$1_0$56
;_snd_manager.c:63: }
	C$_snd_manager.c$63$1_0$56	= .
	.globl	C$_snd_manager.c$63$1_0$56
	XG$devkit_PSGSFXFrame$0$0	= .
	.globl	XG$devkit_PSGSFXFrame$0$0
	jp	_PSGSFXFrame
	G$devkit_PSG_STOPPED$0$0	= .
	.globl	G$devkit_PSG_STOPPED$0$0
	C$_snd_manager.c$66$1_0$57	= .
	.globl	C$_snd_manager.c$66$1_0$57
;_snd_manager.c:66: unsigned char devkit_PSG_STOPPED()
;	---------------------------------
; Function devkit_PSG_STOPPED
; ---------------------------------
_devkit_PSG_STOPPED::
	C$_snd_manager.c$68$1_0$57	= .
	.globl	C$_snd_manager.c$68$1_0$57
;_snd_manager.c:68: return PSG_STOPPED;
	ld	l, #0x00
	C$_snd_manager.c$69$1_0$57	= .
	.globl	C$_snd_manager.c$69$1_0$57
;_snd_manager.c:69: }
	C$_snd_manager.c$69$1_0$57	= .
	.globl	C$_snd_manager.c$69$1_0$57
	XG$devkit_PSG_STOPPED$0$0	= .
	.globl	XG$devkit_PSG_STOPPED$0$0
	ret
	G$devkit_PSG_PLAYING$0$0	= .
	.globl	G$devkit_PSG_PLAYING$0$0
	C$_snd_manager.c$70$1_0$58	= .
	.globl	C$_snd_manager.c$70$1_0$58
;_snd_manager.c:70: unsigned char devkit_PSG_PLAYING()
;	---------------------------------
; Function devkit_PSG_PLAYING
; ---------------------------------
_devkit_PSG_PLAYING::
	C$_snd_manager.c$72$1_0$58	= .
	.globl	C$_snd_manager.c$72$1_0$58
;_snd_manager.c:72: return PSG_PLAYING;
	ld	l, #0x01
	C$_snd_manager.c$73$1_0$58	= .
	.globl	C$_snd_manager.c$73$1_0$58
;_snd_manager.c:73: }
	C$_snd_manager.c$73$1_0$58	= .
	.globl	C$_snd_manager.c$73$1_0$58
	XG$devkit_PSG_PLAYING$0$0	= .
	.globl	XG$devkit_PSG_PLAYING$0$0
	ret
	G$devkit_SFX_CHANNEL2$0$0	= .
	.globl	G$devkit_SFX_CHANNEL2$0$0
	C$_snd_manager.c$75$1_0$59	= .
	.globl	C$_snd_manager.c$75$1_0$59
;_snd_manager.c:75: unsigned char devkit_SFX_CHANNEL2()
;	---------------------------------
; Function devkit_SFX_CHANNEL2
; ---------------------------------
_devkit_SFX_CHANNEL2::
	C$_snd_manager.c$77$1_0$59	= .
	.globl	C$_snd_manager.c$77$1_0$59
;_snd_manager.c:77: return SFX_CHANNEL2;
	ld	l, #0x01
	C$_snd_manager.c$78$1_0$59	= .
	.globl	C$_snd_manager.c$78$1_0$59
;_snd_manager.c:78: }
	C$_snd_manager.c$78$1_0$59	= .
	.globl	C$_snd_manager.c$78$1_0$59
	XG$devkit_SFX_CHANNEL2$0$0	= .
	.globl	XG$devkit_SFX_CHANNEL2$0$0
	ret
	G$devkit_SFX_CHANNEL3$0$0	= .
	.globl	G$devkit_SFX_CHANNEL3$0$0
	C$_snd_manager.c$79$1_0$60	= .
	.globl	C$_snd_manager.c$79$1_0$60
;_snd_manager.c:79: unsigned char devkit_SFX_CHANNEL3()
;	---------------------------------
; Function devkit_SFX_CHANNEL3
; ---------------------------------
_devkit_SFX_CHANNEL3::
	C$_snd_manager.c$81$1_0$60	= .
	.globl	C$_snd_manager.c$81$1_0$60
;_snd_manager.c:81: return SFX_CHANNEL3;
	ld	l, #0x02
	C$_snd_manager.c$82$1_0$60	= .
	.globl	C$_snd_manager.c$82$1_0$60
;_snd_manager.c:82: }
	C$_snd_manager.c$82$1_0$60	= .
	.globl	C$_snd_manager.c$82$1_0$60
	XG$devkit_SFX_CHANNEL3$0$0	= .
	.globl	XG$devkit_SFX_CHANNEL3$0$0
	ret
	G$devkit_SFX_CHANNELS2AND3$0$0	= .
	.globl	G$devkit_SFX_CHANNELS2AND3$0$0
	C$_snd_manager.c$83$1_0$61	= .
	.globl	C$_snd_manager.c$83$1_0$61
;_snd_manager.c:83: unsigned char devkit_SFX_CHANNELS2AND3()
;	---------------------------------
; Function devkit_SFX_CHANNELS2AND3
; ---------------------------------
_devkit_SFX_CHANNELS2AND3::
	C$_snd_manager.c$85$1_0$61	= .
	.globl	C$_snd_manager.c$85$1_0$61
;_snd_manager.c:85: return SFX_CHANNELS2AND3;
	ld	l, #0x03
	C$_snd_manager.c$86$1_0$61	= .
	.globl	C$_snd_manager.c$86$1_0$61
;_snd_manager.c:86: }
	C$_snd_manager.c$86$1_0$61	= .
	.globl	C$_snd_manager.c$86$1_0$61
	XG$devkit_SFX_CHANNELS2AND3$0$0	= .
	.globl	XG$devkit_SFX_CHANNELS2AND3$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
