;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module spriteengine
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
	.globl _malloc
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_loadTiles
	.globl _devkit_SMS_mapROMBank
	.globl _entityVramPosition
	.globl _entityIndex
	.globl _entitylist
	.globl _initEngine
	.globl _addEntity
	.globl _setAnimation
	.globl _forceReload
	.globl _isFrameEnded
	.globl _isAnimationEnded
	.globl _setDirection
	.globl _updateAnimations
	.globl _updateTiles
	.globl _drawEntities
	.globl _move_entity
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$entitylist$0_0$0==.
_entitylist::
	.ds 10
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$entityIndex$0_0$0==.
_entityIndex::
	.ds 1
G$entityVramPosition$0_0$0==.
_entityVramPosition::
	.ds 2
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
	G$initEngine$0$0	= .
	.globl	G$initEngine$0$0
	C$spriteengine.c$9$0_0$115	= .
	.globl	C$spriteengine.c$9$0_0$115
;spriteengine.c:9: void initEngine() 
;	---------------------------------
; Function initEngine
; ---------------------------------
_initEngine::
	C$spriteengine.c$12$3_0$117	= .
	.globl	C$spriteengine.c$12$3_0$117
;spriteengine.c:12: for(i = 0;i < MAX_ENTITIES; i++)
	ld	bc, #0x0000
00102$:
	C$spriteengine.c$14$3_0$117	= .
	.globl	C$spriteengine.c$14$3_0$117
;spriteengine.c:14: free(entitylist[i]);
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	de, #_entitylist
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	push	hl
	push	bc
	push	de
	call	_free
	pop	af
	pop	bc
	pop	hl
	C$spriteengine.c$15$3_0$117	= .
	.globl	C$spriteengine.c$15$3_0$117
;spriteengine.c:15: entitylist[i] = 0;
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	C$spriteengine.c$12$2_0$116	= .
	.globl	C$spriteengine.c$12$2_0$116
;spriteengine.c:12: for(i = 0;i < MAX_ENTITIES; i++)
	inc	bc
	ld	a, c
	sub	a, #0x05
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00102$
	C$spriteengine.c$17$1_0$115	= .
	.globl	C$spriteengine.c$17$1_0$115
;spriteengine.c:17: entityIndex = 0;
	ld	a, #0x00
	ld	(#_entityIndex), a
	C$spriteengine.c$18$1_0$115	= .
	.globl	C$spriteengine.c$18$1_0$115
;spriteengine.c:18: }
	C$spriteengine.c$18$1_0$115	= .
	.globl	C$spriteengine.c$18$1_0$115
	XG$initEngine$0$0	= .
	.globl	XG$initEngine$0$0
	ret
	G$addEntity$0$0	= .
	.globl	G$addEntity$0$0
	C$spriteengine.c$20$1_0$119	= .
	.globl	C$spriteengine.c$20$1_0$119
;spriteengine.c:20: entity* addEntity(character* characterData, unsigned char px, unsigned char py)
;	---------------------------------
; Function addEntity
; ---------------------------------
_addEntity::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$22$1_0$119	= .
	.globl	C$spriteengine.c$22$1_0$119
;spriteengine.c:22: entitylist[entityIndex] = malloc(sizeof(entity));
	ld	bc, #_entitylist+0
	ld	a, (#_entityIndex + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	push	hl
	push	bc
	ld	de, #0x000e
	push	de
	call	_malloc
	pop	af
	ex	de, hl
	pop	bc
	pop	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$spriteengine.c$23$1_0$119	= .
	.globl	C$spriteengine.c$23$1_0$119
;spriteengine.c:23: entitylist[entityIndex]->entityIndex = entityIndex;
	ld	iy, #_entityIndex
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	a, 0 (iy)
	ld	(de), a
	C$spriteengine.c$24$1_0$119	= .
	.globl	C$spriteengine.c$24$1_0$119
;spriteengine.c:24: entitylist[entityIndex]->currentAnimation = 0;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x00
	C$spriteengine.c$25$1_0$119	= .
	.globl	C$spriteengine.c$25$1_0$119
;spriteengine.c:25: entitylist[entityIndex]->currentFrame = 0;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
	C$spriteengine.c$26$1_0$119	= .
	.globl	C$spriteengine.c$26$1_0$119
;spriteengine.c:26: entitylist[entityIndex]->framecnt = 0;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x00
	C$spriteengine.c$27$1_0$119	= .
	.globl	C$spriteengine.c$27$1_0$119
;spriteengine.c:27: entitylist[entityIndex]->has2ReloadTiles = true;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$28$1_0$119	= .
	.globl	C$spriteengine.c$28$1_0$119
;spriteengine.c:28: entitylist[entityIndex]->frameEnded = true;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$29$1_0$119	= .
	.globl	C$spriteengine.c$29$1_0$119
;spriteengine.c:29: entitylist[entityIndex]->animationEnded = true;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$30$1_0$119	= .
	.globl	C$spriteengine.c$30$1_0$119
;spriteengine.c:30: entitylist[entityIndex]->characterData = characterData;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, 4 (ix)
	ld	(de), a
	inc	de
	ld	a, 5 (ix)
	ld	(de), a
	C$spriteengine.c$31$1_0$119	= .
	.globl	C$spriteengine.c$31$1_0$119
;spriteengine.c:31: entitylist[entityIndex]->px = px;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, 6 (ix)
	ld	(hl), a
	C$spriteengine.c$32$1_0$119	= .
	.globl	C$spriteengine.c$32$1_0$119
;spriteengine.c:32: entitylist[entityIndex]->py = py;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a, 7 (ix)
	ld	(de), a
	C$spriteengine.c$33$1_0$119	= .
	.globl	C$spriteengine.c$33$1_0$119
;spriteengine.c:33: entitylist[entityIndex]->direction = RIGHT_DIRECTION;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x00
	C$spriteengine.c$34$1_0$119	= .
	.globl	C$spriteengine.c$34$1_0$119
;spriteengine.c:34: entitylist[entityIndex]->vramposition = entityVramPosition;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	ld	iy, #_entityVramPosition
	ld	a, 0 (iy)
	ld	(hl), a
	inc	hl
	ld	a, 1 (iy)
	ld	(hl), a
	C$spriteengine.c$35$1_0$119	= .
	.globl	C$spriteengine.c$35$1_0$119
;spriteengine.c:35: entityVramPosition = entityVramPosition + characterData->maxsprites;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	inc	hl
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_entityVramPosition
	ld	a, (hl)
	add	a, e
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, d
	ld	(hl), a
	C$spriteengine.c$36$1_0$119	= .
	.globl	C$spriteengine.c$36$1_0$119
;spriteengine.c:36: entityIndex++;
	ld	iy, #_entityIndex
	inc	0 (iy)
	C$spriteengine.c$37$1_0$119	= .
	.globl	C$spriteengine.c$37$1_0$119
;spriteengine.c:37: return entitylist[entityIndex - 1];
	ld	a, 0 (iy)
	dec	a
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	C$spriteengine.c$38$1_0$119	= .
	.globl	C$spriteengine.c$38$1_0$119
;spriteengine.c:38: }
	pop	ix
	C$spriteengine.c$38$1_0$119	= .
	.globl	C$spriteengine.c$38$1_0$119
	XG$addEntity$0$0	= .
	.globl	XG$addEntity$0$0
	ret
	G$setAnimation$0$0	= .
	.globl	G$setAnimation$0$0
	C$spriteengine.c$40$1_0$121	= .
	.globl	C$spriteengine.c$40$1_0$121
;spriteengine.c:40: void setAnimation(unsigned char entitynumber, int animationNumber)
;	---------------------------------
; Function setAnimation
; ---------------------------------
_setAnimation::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$42$1_0$121	= .
	.globl	C$spriteengine.c$42$1_0$121
;spriteengine.c:42: if(entitylist[entitynumber]->currentAnimation != animationNumber)
	ld	bc, #_entitylist+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	h, #0x00
	ld	a, (hl)
	sub	a, 5 (ix)
	jr	NZ, 00110$
	ld	a, h
	sub	a, 6 (ix)
	jr	Z, 00102$
00110$:
	C$spriteengine.c$44$2_0$122	= .
	.globl	C$spriteengine.c$44$2_0$122
;spriteengine.c:44: entitylist[entitynumber]->has2ReloadTiles = true;	
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
00102$:
	C$spriteengine.c$46$1_0$121	= .
	.globl	C$spriteengine.c$46$1_0$121
;spriteengine.c:46: entitylist[entitynumber]->currentAnimation = animationNumber;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ld	a, 5 (ix)
	ld	(hl), a
	C$spriteengine.c$47$1_0$121	= .
	.globl	C$spriteengine.c$47$1_0$121
;spriteengine.c:47: entitylist[entitynumber]->frameEnded = false;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$48$1_0$121	= .
	.globl	C$spriteengine.c$48$1_0$121
;spriteengine.c:48: entitylist[entitynumber]->animationEnded = false;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$49$1_0$121	= .
	.globl	C$spriteengine.c$49$1_0$121
;spriteengine.c:49: entitylist[entitynumber]->currentFrame = 0;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0007
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$50$1_0$121	= .
	.globl	C$spriteengine.c$50$1_0$121
;spriteengine.c:50: entitylist[entitynumber]->framecnt = 0;	
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$51$1_0$121	= .
	.globl	C$spriteengine.c$51$1_0$121
;spriteengine.c:51: }
	pop	ix
	C$spriteengine.c$51$1_0$121	= .
	.globl	C$spriteengine.c$51$1_0$121
	XG$setAnimation$0$0	= .
	.globl	XG$setAnimation$0$0
	ret
	G$forceReload$0$0	= .
	.globl	G$forceReload$0$0
	C$spriteengine.c$53$1_0$124	= .
	.globl	C$spriteengine.c$53$1_0$124
;spriteengine.c:53: void forceReload(unsigned char entitynumber)
;	---------------------------------
; Function forceReload
; ---------------------------------
_forceReload::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$55$1_0$124	= .
	.globl	C$spriteengine.c$55$1_0$124
;spriteengine.c:55: entitylist[entitynumber]->has2ReloadTiles = true;
	ld	bc, #_entitylist+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
	C$spriteengine.c$56$1_0$124	= .
	.globl	C$spriteengine.c$56$1_0$124
;spriteengine.c:56: }
	pop	ix
	C$spriteengine.c$56$1_0$124	= .
	.globl	C$spriteengine.c$56$1_0$124
	XG$forceReload$0$0	= .
	.globl	XG$forceReload$0$0
	ret
	G$isFrameEnded$0$0	= .
	.globl	G$isFrameEnded$0$0
	C$spriteengine.c$58$1_0$126	= .
	.globl	C$spriteengine.c$58$1_0$126
;spriteengine.c:58: bool isFrameEnded(unsigned char entitynumber)
;	---------------------------------
; Function isFrameEnded
; ---------------------------------
_isFrameEnded::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$60$1_0$126	= .
	.globl	C$spriteengine.c$60$1_0$126
;spriteengine.c:60: return entitylist[entitynumber]->frameEnded;
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	de, #_entitylist
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #13
	add	hl, bc
	ld	l, (hl)
	C$spriteengine.c$61$1_0$126	= .
	.globl	C$spriteengine.c$61$1_0$126
;spriteengine.c:61: }
	pop	ix
	C$spriteengine.c$61$1_0$126	= .
	.globl	C$spriteengine.c$61$1_0$126
	XG$isFrameEnded$0$0	= .
	.globl	XG$isFrameEnded$0$0
	ret
	G$isAnimationEnded$0$0	= .
	.globl	G$isAnimationEnded$0$0
	C$spriteengine.c$63$1_0$128	= .
	.globl	C$spriteengine.c$63$1_0$128
;spriteengine.c:63: bool isAnimationEnded(unsigned char entitynumber)
;	---------------------------------
; Function isAnimationEnded
; ---------------------------------
_isAnimationEnded::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$65$1_0$128	= .
	.globl	C$spriteengine.c$65$1_0$128
;spriteengine.c:65: return entitylist[entitynumber]->animationEnded;
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	de, #_entitylist
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #12
	add	hl, bc
	ld	l, (hl)
	C$spriteengine.c$66$1_0$128	= .
	.globl	C$spriteengine.c$66$1_0$128
;spriteengine.c:66: }
	pop	ix
	C$spriteengine.c$66$1_0$128	= .
	.globl	C$spriteengine.c$66$1_0$128
	XG$isAnimationEnded$0$0	= .
	.globl	XG$isAnimationEnded$0$0
	ret
	G$setDirection$0$0	= .
	.globl	G$setDirection$0$0
	C$spriteengine.c$68$1_0$130	= .
	.globl	C$spriteengine.c$68$1_0$130
;spriteengine.c:68: void setDirection(unsigned char entitynumber, unsigned char direction)
;	---------------------------------
; Function setDirection
; ---------------------------------
_setDirection::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$70$1_0$130	= .
	.globl	C$spriteengine.c$70$1_0$130
;spriteengine.c:70: entitylist[entitynumber]->direction = direction;
	ld	bc, #_entitylist+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, 5 (ix)
	ld	(hl), a
	C$spriteengine.c$71$1_0$130	= .
	.globl	C$spriteengine.c$71$1_0$130
;spriteengine.c:71: entitylist[entitynumber]->has2ReloadTiles = true;
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
	C$spriteengine.c$72$1_0$130	= .
	.globl	C$spriteengine.c$72$1_0$130
;spriteengine.c:72: }
	pop	ix
	C$spriteengine.c$72$1_0$130	= .
	.globl	C$spriteengine.c$72$1_0$130
	XG$setDirection$0$0	= .
	.globl	XG$setDirection$0$0
	ret
	G$updateAnimations$0$0	= .
	.globl	G$updateAnimations$0$0
	C$spriteengine.c$74$1_0$132	= .
	.globl	C$spriteengine.c$74$1_0$132
;spriteengine.c:74: void updateAnimations()
;	---------------------------------
; Function updateAnimations
; ---------------------------------
_updateAnimations::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	C$spriteengine.c$77$3_0$133	= .
	.globl	C$spriteengine.c$77$3_0$133
;spriteengine.c:77: for(i = 0;i < entityIndex; i++)
	ld	bc, #0x0000
00108$:
	ld	a, (#_entityIndex + 0)
	ld	e, a
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	PO, 00133$
	xor	a, #0x80
00133$:
	jp	P, 00110$
	C$spriteengine.c$79$2_0$132	= .
	.globl	C$spriteengine.c$79$2_0$132
;spriteengine.c:79: entitylist[i]->framecnt++;
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	a, l
	add	a, #<(_entitylist)
	ld	-7 (ix), a
	ld	a, h
	adc	a, #>(_entitylist)
	ld	-6 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	inc	(hl)
	C$spriteengine.c$80$3_0$133	= .
	.globl	C$spriteengine.c$80$3_0$133
;spriteengine.c:80: if(entitylist[i]->framecnt > entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].frame_time)
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #8
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ex	de, hl
	inc	de
	inc	de
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	a, (hl)
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ld	de, #0x0008
	add	hl, de
	ld	a, (hl)
	sub	a, -1 (ix)
	jp	NC, 00109$
	C$spriteengine.c$82$4_0$134	= .
	.globl	C$spriteengine.c$82$4_0$134
;spriteengine.c:82: entitylist[i]->frameEnded = true;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000d
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$83$4_0$134	= .
	.globl	C$spriteengine.c$83$4_0$134
;spriteengine.c:83: if(entitylist[i]->currentFrame < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].numframes - 1) { //tenir en compte els mirrored!
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x07
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	inc	hl
	ld	e, (hl)
	ld	d, #0x00
	dec	de
	ld	a, -1 (ix)
	ld	h, #0x00
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00134$
	xor	a, #0x80
00134$:
	jp	P, 00102$
	C$spriteengine.c$84$5_0$135	= .
	.globl	C$spriteengine.c$84$5_0$135
;spriteengine.c:84: entitylist[i]->currentFrame++;
	ld	a, -1 (ix)
	inc	a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	C$spriteengine.c$85$5_0$135	= .
	.globl	C$spriteengine.c$85$5_0$135
;spriteengine.c:85: entitylist[i]->has2ReloadTiles = true;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	(hl), #0x01
	jr	00103$
00102$:
	C$spriteengine.c$89$5_0$136	= .
	.globl	C$spriteengine.c$89$5_0$136
;spriteengine.c:89: entitylist[i]->animationEnded = true;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$90$5_0$136	= .
	.globl	C$spriteengine.c$90$5_0$136
;spriteengine.c:90: entitylist[i]->currentFrame = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
00103$:
	C$spriteengine.c$92$4_0$134	= .
	.globl	C$spriteengine.c$92$4_0$134
;spriteengine.c:92: entitylist[i]->framecnt = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x00
00109$:
	C$spriteengine.c$77$2_0$132	= .
	.globl	C$spriteengine.c$77$2_0$132
;spriteengine.c:77: for(i = 0;i < entityIndex; i++)
	inc	bc
	jp	00108$
00110$:
	C$spriteengine.c$95$2_0$132	= .
	.globl	C$spriteengine.c$95$2_0$132
;spriteengine.c:95: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$95$2_0$132	= .
	.globl	C$spriteengine.c$95$2_0$132
	XG$updateAnimations$0$0	= .
	.globl	XG$updateAnimations$0$0
	ret
	G$updateTiles$0$0	= .
	.globl	G$updateTiles$0$0
	C$spriteengine.c$97$2_0$138	= .
	.globl	C$spriteengine.c$97$2_0$138
;spriteengine.c:97: void updateTiles()
;	---------------------------------
; Function updateTiles
; ---------------------------------
_updateTiles::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
	C$spriteengine.c$100$3_0$139	= .
	.globl	C$spriteengine.c$100$3_0$139
;spriteengine.c:100: for(i = 0;i < entityIndex; i++)
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00108$:
	ld	a, (#_entityIndex + 0)
	ld	c, a
	ld	b, #0x00
	ld	a, -2 (ix)
	sub	a, c
	ld	a, -1 (ix)
	sbc	a, b
	jp	PO, 00133$
	xor	a, #0x80
00133$:
	jp	P, 00110$
	C$spriteengine.c$102$2_0$138	= .
	.globl	C$spriteengine.c$102$2_0$138
;spriteengine.c:102: if(entitylist[i]->has2ReloadTiles)
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	sla	-4 (ix)
	rl	-3 (ix)
	ld	a, -4 (ix)
	add	a, #<(_entitylist)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_entitylist)
	ld	-7 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #11
	add	hl, bc
	bit	0, (hl)
	jp	Z, 00109$
	C$spriteengine.c$104$4_0$140	= .
	.globl	C$spriteengine.c$104$4_0$140
;spriteengine.c:104: if(entitylist[i]->direction == RIGHT_DIRECTION)
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #5
	add	hl, bc
	ld	c, (hl)
	C$spriteengine.c$106$2_0$138	= .
	.globl	C$spriteengine.c$106$2_0$138
;spriteengine.c:106: devkit_SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	de
	inc	de
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	b, (hl)
	ld	e, a
	ld	d, #0x00
	push	de
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	add	hl, de
	inc	hl
	inc	hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	ld	de, #0x0007
	add	hl, de
	ld	e, (hl)
	C$spriteengine.c$104$4_0$140	= .
	.globl	C$spriteengine.c$104$4_0$140
;spriteengine.c:104: if(entitylist[i]->direction == RIGHT_DIRECTION)
	ld	a, c
	or	a, a
	jr	NZ, 00102$
	C$spriteengine.c$106$5_0$141	= .
	.globl	C$spriteengine.c$106$5_0$141
;spriteengine.c:106: devkit_SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	a, e
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$spriteengine.c$102$2_0$138	= .
	.globl	C$spriteengine.c$102$2_0$138
;spriteengine.c:102: if(entitylist[i]->has2ReloadTiles)
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	C$spriteengine.c$107$2_0$138	= .
	.globl	C$spriteengine.c$107$2_0$138
;spriteengine.c:107: devkit_SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bin_size);	
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ex	de, hl
	inc	de
	inc	de
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	a, (hl)
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ld	e, l
	ld	d, h
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	hl, #9
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #3
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	push	bc
	push	de
	call	_devkit_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	jr	00103$
00102$:
	C$spriteengine.c$111$5_0$142	= .
	.globl	C$spriteengine.c$111$5_0$142
;spriteengine.c:111: devkit_SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	a, e
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$spriteengine.c$102$2_0$138	= .
	.globl	C$spriteengine.c$102$2_0$138
;spriteengine.c:102: if(entitylist[i]->has2ReloadTiles)
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	C$spriteengine.c$107$2_0$138	= .
	.globl	C$spriteengine.c$107$2_0$138
;spriteengine.c:107: devkit_SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bin_size);	
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	C$spriteengine.c$112$5_0$142	= .
	.globl	C$spriteengine.c$112$5_0$142
;spriteengine.c:112: devkit_SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tile_bin_size);
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ex	de, hl
	ld	hl, #0x0147
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	a, (hl)
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ld	e, l
	ld	d, h
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	hl, #9
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #3
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	push	bc
	push	de
	call	_devkit_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
00103$:
	C$spriteengine.c$114$4_0$140	= .
	.globl	C$spriteengine.c$114$4_0$140
;spriteengine.c:114: entitylist[i]->has2ReloadTiles = false;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x00
00109$:
	C$spriteengine.c$100$2_0$138	= .
	.globl	C$spriteengine.c$100$2_0$138
;spriteengine.c:100: for(i = 0;i < entityIndex; i++)
	inc	-2 (ix)
	jp	NZ,00108$
	inc	-1 (ix)
	jp	00108$
00110$:
	C$spriteengine.c$117$2_0$138	= .
	.globl	C$spriteengine.c$117$2_0$138
;spriteengine.c:117: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$117$2_0$138	= .
	.globl	C$spriteengine.c$117$2_0$138
	XG$updateTiles$0$0	= .
	.globl	XG$updateTiles$0$0
	ret
	G$drawEntities$0$0	= .
	.globl	G$drawEntities$0$0
	C$spriteengine.c$119$2_0$143	= .
	.globl	C$spriteengine.c$119$2_0$143
;spriteengine.c:119: void drawEntities()
;	---------------------------------
; Function drawEntities
; ---------------------------------
_drawEntities::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-17
	add	hl, sp
	ld	sp, hl
	C$spriteengine.c$122$1_0$143	= .
	.globl	C$spriteengine.c$122$1_0$143
;spriteengine.c:122: devkit_SMS_initSprites();
	call	_devkit_SMS_initSprites
	C$spriteengine.c$123$3_0$145	= .
	.globl	C$spriteengine.c$123$3_0$145
;spriteengine.c:123: for(i = 0; i < entityIndex; i++)
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00114$:
	ld	a, (#_entityIndex + 0)
	ld	c, a
	ld	b, #0x00
	ld	a, -4 (ix)
	sub	a, c
	ld	a, -3 (ix)
	sbc	a, b
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P, 00106$
	C$spriteengine.c$125$3_0$145	= .
	.globl	C$spriteengine.c$125$3_0$145
;spriteengine.c:125: if(entitylist[i]->direction == RIGHT_DIRECTION) {
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, -6 (ix)
	add	a, #<(_entitylist)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #>(_entitylist)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #5
	add	hl, bc
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jp	NZ, 00123$
	C$spriteengine.c$126$5_0$147	= .
	.globl	C$spriteengine.c$126$5_0$147
;spriteengine.c:126: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].numsprites; j++)
	ld	a, -2 (ix)
	ld	-9 (ix), a
	ld	a, -1 (ix)
	ld	-8 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00108$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ex	de, hl
	inc	de
	inc	de
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	a, (hl)
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ld	e, l
	ld	d, h
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	ld	a, -2 (ix)
	sub	a, l
	ld	a, -1 (ix)
	sbc	a, h
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	jp	P, 00115$
	C$spriteengine.c$128$6_0$148	= .
	.globl	C$spriteengine.c$128$6_0$148
;spriteengine.c:128: devkit_SMS_addSprite (entitylist[i]->px + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].dpx,entitylist[i]->py + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].dpy,entitylist[i]->vramposition + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].tile);
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	hl, #0x0011
	add	hl, de
	push	hl
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ex	de, hl
	ld	a, (de)
	ld	h, #0x00
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, h
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	l, -5 (ix)
	add	a, l
	ld	-5 (ix), a
	ld	hl, #3
	add	hl, bc
	ld	c, (hl)
	inc	de
	ld	a, (de)
	add	a, c
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	push	hl
	ld	h, -5 (ix)
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	C$spriteengine.c$126$5_0$147	= .
	.globl	C$spriteengine.c$126$5_0$147
;spriteengine.c:126: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].numsprites; j++)
	inc	-2 (ix)
	jp	NZ,00108$
	inc	-1 (ix)
	jp	00108$
	C$spriteengine.c$133$1_0$143	= .
	.globl	C$spriteengine.c$133$1_0$143
;spriteengine.c:133: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].numsprites; j++)
00123$:
	ld	a, -2 (ix)
	ld	-15 (ix), a
	ld	a, -1 (ix)
	ld	-14 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00111$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	e, -13 (ix)
	ld	d, -12 (ix)
	ld	hl, #6
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0147
	add	hl, de
	ex	de, hl
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	hl, #7
	add	hl, bc
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, de
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	e, (hl)
	ld	d, #0x00
	ld	a, -2 (ix)
	sub	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	P, 00115$
	C$spriteengine.c$135$6_0$151	= .
	.globl	C$spriteengine.c$135$6_0$151
;spriteengine.c:135: devkit_SMS_addSprite (entitylist[i]->px + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].dpx,entitylist[i]->py + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].dpy,entitylist[i]->vramposition + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].tile);
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	hl, #0x0011
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0
	ld	a, -6 (ix)
	add	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -5 (ix)
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -13 (ix)
	ld	-6 (ix), a
	ld	a, -12 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -11 (ix)
	ld	-17 (ix), a
	ld	a, -10 (ix)
	ld	-16 (ix), a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -7 (ix)
	ld	-6 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	push	hl
	ld	h, -5 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	C$spriteengine.c$133$5_0$150	= .
	.globl	C$spriteengine.c$133$5_0$150
;spriteengine.c:133: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].numsprites; j++)
	inc	-2 (ix)
	jp	NZ,00111$
	inc	-1 (ix)
	jp	00111$
00115$:
	C$spriteengine.c$123$2_0$144	= .
	.globl	C$spriteengine.c$123$2_0$144
;spriteengine.c:123: for(i = 0; i < entityIndex; i++)
	inc	-4 (ix)
	jp	NZ,00114$
	inc	-3 (ix)
	jp	00114$
00106$:
	C$spriteengine.c$139$1_0$143	= .
	.globl	C$spriteengine.c$139$1_0$143
;spriteengine.c:139: devkit_SMS_finalizeSprites();
	call	_devkit_SMS_finalizeSprites
	C$spriteengine.c$140$1_0$143	= .
	.globl	C$spriteengine.c$140$1_0$143
;spriteengine.c:140: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$140$1_0$143	= .
	.globl	C$spriteengine.c$140$1_0$143
	XG$drawEntities$0$0	= .
	.globl	XG$drawEntities$0$0
	ret
	G$move_entity$0$0	= .
	.globl	G$move_entity$0$0
	C$spriteengine.c$142$1_0$153	= .
	.globl	C$spriteengine.c$142$1_0$153
;spriteengine.c:142: void move_entity(unsigned char entitynumber, signed char x, signed char y)
;	---------------------------------
; Function move_entity
; ---------------------------------
_move_entity::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$144$1_0$153	= .
	.globl	C$spriteengine.c$144$1_0$153
;spriteengine.c:144: entitylist[entitynumber]->px = entitylist[entitynumber]->px + x;
	ld	bc, #_entitylist+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, 5 (ix)
	ld	(bc), a
	C$spriteengine.c$145$1_0$153	= .
	.globl	C$spriteengine.c$145$1_0$153
;spriteengine.c:145: entitylist[entitynumber]->py = entitylist[entitynumber]->py + y;
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, 6 (ix)
	ld	(bc), a
	C$spriteengine.c$146$1_0$153	= .
	.globl	C$spriteengine.c$146$1_0$153
;spriteengine.c:146: }
	pop	ix
	C$spriteengine.c$146$1_0$153	= .
	.globl	C$spriteengine.c$146$1_0$153
	XG$move_entity$0$0	= .
	.globl	XG$move_entity$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fspriteengine$__xinit_entityIndex$0_0$0 == .
__xinit__entityIndex:
	.db #0x00	; 0
Fspriteengine$__xinit_entityVramPosition$0_0$0 == .
__xinit__entityVramPosition:
	.dw #0x0100
	.area _CABS (ABS)
