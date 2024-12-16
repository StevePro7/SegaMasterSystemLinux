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
	.globl _SMS_VRAMmemcpy
	.globl _SMS_finalizeSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _entityVramPosition
	.globl _entityIndex
	.globl _entitylist
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
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
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
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
	C$spriteengine.c$9$0_0$98	= .
	.globl	C$spriteengine.c$9$0_0$98
;spriteengine.c:9: void initEngine() {
;	---------------------------------
; Function initEngine
; ---------------------------------
_initEngine::
	C$spriteengine.c$11$3_0$100	= .
	.globl	C$spriteengine.c$11$3_0$100
;spriteengine.c:11: for(i = 0;i < MAX_ENTITIES; i++) {
	ld	bc, #0x0000
00102$:
	C$spriteengine.c$12$3_0$100	= .
	.globl	C$spriteengine.c$12$3_0$100
;spriteengine.c:12: free(entitylist[i]);
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
	C$spriteengine.c$13$3_0$100	= .
	.globl	C$spriteengine.c$13$3_0$100
;spriteengine.c:13: entitylist[i] = 0;
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	C$spriteengine.c$11$2_0$99	= .
	.globl	C$spriteengine.c$11$2_0$99
;spriteengine.c:11: for(i = 0;i < MAX_ENTITIES; i++) {
	inc	bc
	ld	a, c
	sub	a, #0x05
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00102$
	C$spriteengine.c$15$1_0$98	= .
	.globl	C$spriteengine.c$15$1_0$98
;spriteengine.c:15: entityIndex = 0;
	ld	a, #0x00
	ld	(#_entityIndex), a
	C$spriteengine.c$16$1_0$98	= .
	.globl	C$spriteengine.c$16$1_0$98
;spriteengine.c:16: }
	C$spriteengine.c$16$1_0$98	= .
	.globl	C$spriteengine.c$16$1_0$98
	XG$initEngine$0$0	= .
	.globl	XG$initEngine$0$0
	ret
	G$addEntity$0$0	= .
	.globl	G$addEntity$0$0
	C$spriteengine.c$18$1_0$102	= .
	.globl	C$spriteengine.c$18$1_0$102
;spriteengine.c:18: entity* addEntity(character* characterData, unsigned char px, unsigned char py) {
;	---------------------------------
; Function addEntity
; ---------------------------------
_addEntity::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$19$1_0$102	= .
	.globl	C$spriteengine.c$19$1_0$102
;spriteengine.c:19: entitylist[entityIndex] = malloc(sizeof(entity));
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
	C$spriteengine.c$20$1_0$102	= .
	.globl	C$spriteengine.c$20$1_0$102
;spriteengine.c:20: entitylist[entityIndex]->entityIndex = entityIndex;
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
	C$spriteengine.c$21$1_0$102	= .
	.globl	C$spriteengine.c$21$1_0$102
;spriteengine.c:21: entitylist[entityIndex]->currentAnimation = 0;
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
	C$spriteengine.c$22$1_0$102	= .
	.globl	C$spriteengine.c$22$1_0$102
;spriteengine.c:22: entitylist[entityIndex]->currentFrame = 0;
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
	C$spriteengine.c$23$1_0$102	= .
	.globl	C$spriteengine.c$23$1_0$102
;spriteengine.c:23: entitylist[entityIndex]->framecnt = 0;
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
	C$spriteengine.c$24$1_0$102	= .
	.globl	C$spriteengine.c$24$1_0$102
;spriteengine.c:24: entitylist[entityIndex]->has2ReloadTiles = true;
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
	C$spriteengine.c$25$1_0$102	= .
	.globl	C$spriteengine.c$25$1_0$102
;spriteengine.c:25: entitylist[entityIndex]->frameEnded = true;
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
	C$spriteengine.c$26$1_0$102	= .
	.globl	C$spriteengine.c$26$1_0$102
;spriteengine.c:26: entitylist[entityIndex]->animationEnded = true;
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
	C$spriteengine.c$27$1_0$102	= .
	.globl	C$spriteengine.c$27$1_0$102
;spriteengine.c:27: entitylist[entityIndex]->characterData = characterData;
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
	C$spriteengine.c$28$1_0$102	= .
	.globl	C$spriteengine.c$28$1_0$102
;spriteengine.c:28: entitylist[entityIndex]->px = px;
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
	C$spriteengine.c$29$1_0$102	= .
	.globl	C$spriteengine.c$29$1_0$102
;spriteengine.c:29: entitylist[entityIndex]->py = py;
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
	C$spriteengine.c$30$1_0$102	= .
	.globl	C$spriteengine.c$30$1_0$102
;spriteengine.c:30: entitylist[entityIndex]->direction = RIGHT_DIRECTION;
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
	C$spriteengine.c$31$1_0$102	= .
	.globl	C$spriteengine.c$31$1_0$102
;spriteengine.c:31: entitylist[entityIndex]->vramposition = entityVramPosition;
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
	C$spriteengine.c$32$1_0$102	= .
	.globl	C$spriteengine.c$32$1_0$102
;spriteengine.c:32: entityVramPosition = entityVramPosition + characterData->maxsprites;
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
	C$spriteengine.c$33$1_0$102	= .
	.globl	C$spriteengine.c$33$1_0$102
;spriteengine.c:33: entityIndex++;
	ld	iy, #_entityIndex
	inc	0 (iy)
	C$spriteengine.c$34$1_0$102	= .
	.globl	C$spriteengine.c$34$1_0$102
;spriteengine.c:34: return entitylist[entityIndex - 1];
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
	C$spriteengine.c$35$1_0$102	= .
	.globl	C$spriteengine.c$35$1_0$102
;spriteengine.c:35: }
	pop	ix
	C$spriteengine.c$35$1_0$102	= .
	.globl	C$spriteengine.c$35$1_0$102
	XG$addEntity$0$0	= .
	.globl	XG$addEntity$0$0
	ret
	G$setAnimation$0$0	= .
	.globl	G$setAnimation$0$0
	C$spriteengine.c$37$1_0$104	= .
	.globl	C$spriteengine.c$37$1_0$104
;spriteengine.c:37: void setAnimation(unsigned char entitynumber, int animationNumber) {
;	---------------------------------
; Function setAnimation
; ---------------------------------
_setAnimation::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$38$1_0$104	= .
	.globl	C$spriteengine.c$38$1_0$104
;spriteengine.c:38: if(entitylist[entitynumber]->currentAnimation != animationNumber) {
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
	C$spriteengine.c$39$2_0$105	= .
	.globl	C$spriteengine.c$39$2_0$105
;spriteengine.c:39: entitylist[entitynumber]->has2ReloadTiles = true;	
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
00102$:
	C$spriteengine.c$41$1_0$104	= .
	.globl	C$spriteengine.c$41$1_0$104
;spriteengine.c:41: entitylist[entitynumber]->currentAnimation = animationNumber;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ld	a, 5 (ix)
	ld	(hl), a
	C$spriteengine.c$42$1_0$104	= .
	.globl	C$spriteengine.c$42$1_0$104
;spriteengine.c:42: entitylist[entitynumber]->frameEnded = false;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$43$1_0$104	= .
	.globl	C$spriteengine.c$43$1_0$104
;spriteengine.c:43: entitylist[entitynumber]->animationEnded = false;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$44$1_0$104	= .
	.globl	C$spriteengine.c$44$1_0$104
;spriteengine.c:44: entitylist[entitynumber]->currentFrame = 0;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0007
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$45$1_0$104	= .
	.globl	C$spriteengine.c$45$1_0$104
;spriteengine.c:45: entitylist[entitynumber]->framecnt = 0;	
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x00
	C$spriteengine.c$46$1_0$104	= .
	.globl	C$spriteengine.c$46$1_0$104
;spriteengine.c:46: }
	pop	ix
	C$spriteengine.c$46$1_0$104	= .
	.globl	C$spriteengine.c$46$1_0$104
	XG$setAnimation$0$0	= .
	.globl	XG$setAnimation$0$0
	ret
	G$forceReload$0$0	= .
	.globl	G$forceReload$0$0
	C$spriteengine.c$48$1_0$107	= .
	.globl	C$spriteengine.c$48$1_0$107
;spriteengine.c:48: void forceReload(unsigned char entitynumber) {
;	---------------------------------
; Function forceReload
; ---------------------------------
_forceReload::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$49$1_0$107	= .
	.globl	C$spriteengine.c$49$1_0$107
;spriteengine.c:49: entitylist[entitynumber]->has2ReloadTiles = true;
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
	C$spriteengine.c$50$1_0$107	= .
	.globl	C$spriteengine.c$50$1_0$107
;spriteengine.c:50: }
	pop	ix
	C$spriteengine.c$50$1_0$107	= .
	.globl	C$spriteengine.c$50$1_0$107
	XG$forceReload$0$0	= .
	.globl	XG$forceReload$0$0
	ret
	G$isFrameEnded$0$0	= .
	.globl	G$isFrameEnded$0$0
	C$spriteengine.c$52$1_0$109	= .
	.globl	C$spriteengine.c$52$1_0$109
;spriteengine.c:52: bool isFrameEnded(unsigned char entitynumber) {
;	---------------------------------
; Function isFrameEnded
; ---------------------------------
_isFrameEnded::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$53$1_0$109	= .
	.globl	C$spriteengine.c$53$1_0$109
;spriteengine.c:53: return entitylist[entitynumber]->frameEnded;
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
	C$spriteengine.c$54$1_0$109	= .
	.globl	C$spriteengine.c$54$1_0$109
;spriteengine.c:54: }
	pop	ix
	C$spriteengine.c$54$1_0$109	= .
	.globl	C$spriteengine.c$54$1_0$109
	XG$isFrameEnded$0$0	= .
	.globl	XG$isFrameEnded$0$0
	ret
	G$isAnimationEnded$0$0	= .
	.globl	G$isAnimationEnded$0$0
	C$spriteengine.c$56$1_0$111	= .
	.globl	C$spriteengine.c$56$1_0$111
;spriteengine.c:56: bool isAnimationEnded(unsigned char entitynumber) {
;	---------------------------------
; Function isAnimationEnded
; ---------------------------------
_isAnimationEnded::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$57$1_0$111	= .
	.globl	C$spriteengine.c$57$1_0$111
;spriteengine.c:57: return entitylist[entitynumber]->animationEnded;
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
	C$spriteengine.c$58$1_0$111	= .
	.globl	C$spriteengine.c$58$1_0$111
;spriteengine.c:58: }
	pop	ix
	C$spriteengine.c$58$1_0$111	= .
	.globl	C$spriteengine.c$58$1_0$111
	XG$isAnimationEnded$0$0	= .
	.globl	XG$isAnimationEnded$0$0
	ret
	G$setDirection$0$0	= .
	.globl	G$setDirection$0$0
	C$spriteengine.c$60$1_0$113	= .
	.globl	C$spriteengine.c$60$1_0$113
;spriteengine.c:60: void setDirection(unsigned char entitynumber, unsigned char direction) {
;	---------------------------------
; Function setDirection
; ---------------------------------
_setDirection::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$61$1_0$113	= .
	.globl	C$spriteengine.c$61$1_0$113
;spriteengine.c:61: entitylist[entitynumber]->direction = direction;
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
	C$spriteengine.c$62$1_0$113	= .
	.globl	C$spriteengine.c$62$1_0$113
;spriteengine.c:62: entitylist[entitynumber]->has2ReloadTiles = true;
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
	C$spriteengine.c$63$1_0$113	= .
	.globl	C$spriteengine.c$63$1_0$113
;spriteengine.c:63: }
	pop	ix
	C$spriteengine.c$63$1_0$113	= .
	.globl	C$spriteengine.c$63$1_0$113
	XG$setDirection$0$0	= .
	.globl	XG$setDirection$0$0
	ret
	G$updateAnimations$0$0	= .
	.globl	G$updateAnimations$0$0
	C$spriteengine.c$65$1_0$115	= .
	.globl	C$spriteengine.c$65$1_0$115
;spriteengine.c:65: void updateAnimations() {
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
	C$spriteengine.c$67$3_0$116	= .
	.globl	C$spriteengine.c$67$3_0$116
;spriteengine.c:67: for(i = 0;i < entityIndex; i++) {
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
	C$spriteengine.c$68$2_0$115	= .
	.globl	C$spriteengine.c$68$2_0$115
;spriteengine.c:68: entitylist[i]->framecnt++;
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
	C$spriteengine.c$69$3_0$116	= .
	.globl	C$spriteengine.c$69$3_0$116
;spriteengine.c:69: if(entitylist[i]->framecnt > entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].frame_time){
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
	C$spriteengine.c$70$4_0$117	= .
	.globl	C$spriteengine.c$70$4_0$117
;spriteengine.c:70: entitylist[i]->frameEnded = true;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000d
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$71$4_0$117	= .
	.globl	C$spriteengine.c$71$4_0$117
;spriteengine.c:71: if(entitylist[i]->currentFrame < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].numframes - 1) { //tenir en compte els mirrored!
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
	C$spriteengine.c$72$5_0$118	= .
	.globl	C$spriteengine.c$72$5_0$118
;spriteengine.c:72: entitylist[i]->currentFrame++;
	ld	a, -1 (ix)
	inc	a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	C$spriteengine.c$73$5_0$118	= .
	.globl	C$spriteengine.c$73$5_0$118
;spriteengine.c:73: entitylist[i]->has2ReloadTiles = true;
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
	C$spriteengine.c$75$5_0$119	= .
	.globl	C$spriteengine.c$75$5_0$119
;spriteengine.c:75: entitylist[i]->animationEnded = true;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	(hl), #0x01
	C$spriteengine.c$76$5_0$119	= .
	.globl	C$spriteengine.c$76$5_0$119
;spriteengine.c:76: entitylist[i]->currentFrame = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
00103$:
	C$spriteengine.c$78$4_0$117	= .
	.globl	C$spriteengine.c$78$4_0$117
;spriteengine.c:78: entitylist[i]->framecnt = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x00
00109$:
	C$spriteengine.c$67$2_0$115	= .
	.globl	C$spriteengine.c$67$2_0$115
;spriteengine.c:67: for(i = 0;i < entityIndex; i++) {
	inc	bc
	jp	00108$
00110$:
	C$spriteengine.c$81$2_0$115	= .
	.globl	C$spriteengine.c$81$2_0$115
;spriteengine.c:81: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$81$2_0$115	= .
	.globl	C$spriteengine.c$81$2_0$115
	XG$updateAnimations$0$0	= .
	.globl	XG$updateAnimations$0$0
	ret
	G$updateTiles$0$0	= .
	.globl	G$updateTiles$0$0
	C$spriteengine.c$83$2_0$121	= .
	.globl	C$spriteengine.c$83$2_0$121
;spriteengine.c:83: void updateTiles() {
;	---------------------------------
; Function updateTiles
; ---------------------------------
_updateTiles::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
	C$spriteengine.c$85$3_0$122	= .
	.globl	C$spriteengine.c$85$3_0$122
;spriteengine.c:85: for(i = 0;i < entityIndex; i++) {
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
	C$spriteengine.c$86$2_0$121	= .
	.globl	C$spriteengine.c$86$2_0$121
;spriteengine.c:86: if(entitylist[i]->has2ReloadTiles) {	
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	sla	-4 (ix)
	rl	-3 (ix)
	ld	a, -4 (ix)
	add	a, #<(_entitylist)
	ld	-12 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_entitylist)
	ld	-11 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	hl, #11
	add	hl, bc
	bit	0, (hl)
	jp	Z, 00109$
	C$spriteengine.c$87$4_0$123	= .
	.globl	C$spriteengine.c$87$4_0$123
;spriteengine.c:87: if(entitylist[i]->direction == RIGHT_DIRECTION) {
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	hl, #5
	add	hl, bc
	ld	a, (hl)
	ld	-4 (ix), a
	C$spriteengine.c$88$2_0$121	= .
	.globl	C$spriteengine.c$88$2_0$121
;spriteengine.c:88: SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	inc	bc
	inc	bc
	ld	-6 (ix), c
	ld	-5 (ix), b
	ld	bc, #0x0006
	add	hl, bc
	ld	c, (hl)
	ld	hl, #7
	add	hl, de
	ld	e, (hl)
	ld	b, #0x00
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
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	add	hl, bc
	inc	hl
	inc	hl
	add	hl, de
	ld	de, #0x0007
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	C$spriteengine.c$87$4_0$123	= .
	.globl	C$spriteengine.c$87$4_0$123
;spriteengine.c:87: if(entitylist[i]->direction == RIGHT_DIRECTION) {
	ld	a, -4 (ix)
	or	a, a
	jp	NZ, 00102$
	C$spriteengine.c$88$5_0$124	= .
	.globl	C$spriteengine.c$88$5_0$124
;spriteengine.c:88: SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	a, -3 (ix)
	ld	(#_ROM_bank_to_be_mapped_on_slot2),a
	C$spriteengine.c$86$2_0$121	= .
	.globl	C$spriteengine.c$86$2_0$121
;spriteengine.c:86: if(entitylist[i]->has2ReloadTiles) {	
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	C$spriteengine.c$89$2_0$121	= .
	.globl	C$spriteengine.c$89$2_0$121
;spriteengine.c:89: SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bin_size);	
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
	ld	hl, #3
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	push	bc
	push	de
	push	hl
	call	_SMS_VRAMmemcpy
	jp	00103$
00102$:
	C$spriteengine.c$91$5_0$125	= .
	.globl	C$spriteengine.c$91$5_0$125
;spriteengine.c:91: SMS_mapROMBank(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bank);
	ld	a, -3 (ix)
	ld	(#_ROM_bank_to_be_mapped_on_slot2),a
	C$spriteengine.c$86$2_0$121	= .
	.globl	C$spriteengine.c$86$2_0$121
;spriteengine.c:86: if(entitylist[i]->has2ReloadTiles) {	
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	C$spriteengine.c$89$2_0$121	= .
	.globl	C$spriteengine.c$89$2_0$121
;spriteengine.c:89: SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tile_bin_size);	
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	C$spriteengine.c$92$5_0$125	= .
	.globl	C$spriteengine.c$92$5_0$125
;spriteengine.c:92: SMS_loadTiles(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tiles, entitylist[i]->vramposition, entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tile_bin_size);
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0
	ld	c, a
	ld	b, #0
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x47
	ld	-10 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x01
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	ld	c, a
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	b, #0x05
00135$:
	sla	-6 (ix)
	rl	-5 (ix)
	djnz	00135$
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	or	a, #0x40
	ld	-3 (ix), a
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_SMS_VRAMmemcpy
00103$:
	C$spriteengine.c$94$4_0$123	= .
	.globl	C$spriteengine.c$94$4_0$123
;spriteengine.c:94: entitylist[i]->has2ReloadTiles = false;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x00
00109$:
	C$spriteengine.c$85$2_0$121	= .
	.globl	C$spriteengine.c$85$2_0$121
;spriteengine.c:85: for(i = 0;i < entityIndex; i++) {
	inc	-2 (ix)
	jp	NZ,00108$
	inc	-1 (ix)
	jp	00108$
00110$:
	C$spriteengine.c$97$2_0$121	= .
	.globl	C$spriteengine.c$97$2_0$121
;spriteengine.c:97: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$97$2_0$121	= .
	.globl	C$spriteengine.c$97$2_0$121
	XG$updateTiles$0$0	= .
	.globl	XG$updateTiles$0$0
	ret
	G$drawEntities$0$0	= .
	.globl	G$drawEntities$0$0
	C$spriteengine.c$99$2_0$126	= .
	.globl	C$spriteengine.c$99$2_0$126
;spriteengine.c:99: void drawEntities() {
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
	C$spriteengine.c$101$1_0$126	= .
	.globl	C$spriteengine.c$101$1_0$126
;spriteengine.c:101: SMS_initSprites();
	call	_SMS_initSprites
	C$spriteengine.c$102$3_0$128	= .
	.globl	C$spriteengine.c$102$3_0$128
;spriteengine.c:102: for(i = 0; i < entityIndex; i++) {
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
	C$spriteengine.c$103$3_0$128	= .
	.globl	C$spriteengine.c$103$3_0$128
;spriteengine.c:103: if(entitylist[i]->direction == RIGHT_DIRECTION) {
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
	C$spriteengine.c$104$5_0$130	= .
	.globl	C$spriteengine.c$104$5_0$130
;spriteengine.c:104: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].numsprites; j++){
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00108$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
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
	C$spriteengine.c$105$6_0$131	= .
	.globl	C$spriteengine.c$105$6_0$131
;spriteengine.c:105: SMS_addSprite (entitylist[i]->px + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].dpx,entitylist[i]->py + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].dpy,entitylist[i]->vramposition + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].tilelist[j].tile);
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a, (hl)
	ld	-5 (ix), a
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
	add	a, -5 (ix)
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
	ld	h, -6 (ix)
	push	hl
	inc	sp
	ld	h, -5 (ix)
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	C$spriteengine.c$104$5_0$130	= .
	.globl	C$spriteengine.c$104$5_0$130
;spriteengine.c:104: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].numsprites; j++){
	inc	-2 (ix)
	jp	NZ,00108$
	inc	-1 (ix)
	jp	00108$
	C$spriteengine.c$108$1_0$126	= .
	.globl	C$spriteengine.c$108$1_0$126
;spriteengine.c:108: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].numsprites; j++){
00123$:
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-12 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00111$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	e, -11 (ix)
	ld	d, -10 (ix)
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
	ld	c, -11 (ix)
	ld	b, -10 (ix)
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
	C$spriteengine.c$109$6_0$134	= .
	.globl	C$spriteengine.c$109$6_0$134
;spriteengine.c:109: SMS_addSprite (entitylist[i]->px + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].dpx,entitylist[i]->py + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].dpy,entitylist[i]->vramposition + entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].tilelist[j].tile);
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #9
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	ld	hl, #0x0011
	add	hl, bc
	ex	(sp), hl
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, -15 (ix)
	add	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	add	a, -8 (ix)
	ld	-7 (ix), a
	ld	h, -6 (ix)
	ld	l, -5 (ix)
	push	hl
	ld	a, -7 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	C$spriteengine.c$108$5_0$133	= .
	.globl	C$spriteengine.c$108$5_0$133
;spriteengine.c:108: for(j = 0; j < entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].mirroredframelist[entitylist[i]->currentFrame].numsprites; j++){
	inc	-2 (ix)
	jp	NZ,00111$
	inc	-1 (ix)
	jp	00111$
00115$:
	C$spriteengine.c$102$2_0$127	= .
	.globl	C$spriteengine.c$102$2_0$127
;spriteengine.c:102: for(i = 0; i < entityIndex; i++) {
	inc	-4 (ix)
	jp	NZ,00114$
	inc	-3 (ix)
	jp	00114$
00106$:
	C$spriteengine.c$113$1_0$126	= .
	.globl	C$spriteengine.c$113$1_0$126
;spriteengine.c:113: SMS_finalizeSprites();
	call	_SMS_finalizeSprites
	C$spriteengine.c$114$1_0$126	= .
	.globl	C$spriteengine.c$114$1_0$126
;spriteengine.c:114: }
	ld	sp, ix
	pop	ix
	C$spriteengine.c$114$1_0$126	= .
	.globl	C$spriteengine.c$114$1_0$126
	XG$drawEntities$0$0	= .
	.globl	XG$drawEntities$0$0
	ret
	G$move_entity$0$0	= .
	.globl	G$move_entity$0$0
	C$spriteengine.c$116$1_0$136	= .
	.globl	C$spriteengine.c$116$1_0$136
;spriteengine.c:116: void move_entity(unsigned char entitynumber, signed char x, signed char y) {
;	---------------------------------
; Function move_entity
; ---------------------------------
_move_entity::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$spriteengine.c$117$1_0$136	= .
	.globl	C$spriteengine.c$117$1_0$136
;spriteengine.c:117: entitylist[entitynumber]->px = entitylist[entitynumber]->px + x;
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
	C$spriteengine.c$118$1_0$136	= .
	.globl	C$spriteengine.c$118$1_0$136
;spriteengine.c:118: entitylist[entitynumber]->py = entitylist[entitynumber]->py + y;
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
	C$spriteengine.c$119$1_0$136	= .
	.globl	C$spriteengine.c$119$1_0$136
;spriteengine.c:119: }
	pop	ix
	C$spriteengine.c$119$1_0$136	= .
	.globl	C$spriteengine.c$119$1_0$136
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
