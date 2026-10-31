; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank0.asm disassembly/bank0.bin

	org	00000h

l0000h:
	im 1		;0000	ed 56 	. V 
	ld sp,0dfffh		;0002	31 ff df 	1 . . 
l0005h:
	jp l0069h		;0005	c3 69 00 	. i . 
l0008h:
	ld bc,l0005h+1		;0008	01 06 00 	. . . 
l000bh:
	add hl,bc			;000b	09 	. 
l000ch:
	ld c,(hl)			;000c	4e 	N 
	inc l			;000d	2c 	, 
	ld b,(hl)			;000e	46 	F 
	ex de,hl			;000f	eb 	. 
l0010h:
	add hl,bc			;0010	09 	. 
l0011h:
	ex de,hl			;0011	eb 	. 
	ld (hl),d			;0012	72 	r 
l0013h:
	ld a,d			;0013	7a 	z 
l0014h:
	dec l			;0014	2d 	- 
l0015h:
	ld (hl),e			;0015	73 	s 
l0016h:
	ret			;0016	c9 	. 
	rst 38h			;0017	ff 	. 
l0018h:
	ld bc,00003h		;0018	01 03 00 	. . . 
	add hl,bc			;001b	09 	. 
	ld c,(hl)			;001c	4e 	N 
	inc l			;001d	2c 	, 
	ld b,(hl)			;001e	46 	F 
	ex de,hl			;001f	eb 	. 
l0020h:
	add hl,bc			;0020	09 	. 
	ex de,hl			;0021	eb 	. 
	ld (hl),d			;0022	72 	r 
	ld a,d			;0023	7a 	z 
	dec l			;0024	2d 	- 
	ld (hl),e			;0025	73 	s 
	ret			;0026	c9 	. 
	rst 38h			;0027	ff 	. 
sub_0028h:
	jp l050eh		;0028	c3 0e 05 	. . . 
	nop			;002b	00 	. 
	nop			;002c	00 	. 
	nop			;002d	00 	. 
	nop			;002e	00 	. 
	nop			;002f	00 	. 
sub_0030h:
	jp l0c14h		;0030	c3 14 0c 	. . . 
	nop			;0033	00 	. 
	nop			;0034	00 	. 
	nop			;0035	00 	. 
	nop			;0036	00 	. 
	nop			;0037	00 	. 
	jp l00afh		;0038	c3 af 00 	. . . 
sub_003bh:
	push hl			;003b	e5 	. 
l003ch:
	push bc			;003c	c5 	. 
l003dh:
	ld a,b			;003d	78 	x 
	out (0bfh),a		;003e	d3 bf 	. . 
l0040h:
	ld a,c			;0040	79 	y 
	or 080h		;0041	f6 80 	. . 
	out (0bfh),a		;0043	d3 bf 	. . 
	ld a,b			;0045	78 	x 
	ld b,000h		;0046	06 00 	. . 
	ld hl,0c100h		;0048	21 00 c1 	! . . 
	add hl,bc			;004b	09 	. 
	ld (hl),a			;004c	77 	w 
	pop bc			;004d	c1 	. 
	pop hl			;004e	e1 	. 
	ret			;004f	c9 	. 
	sub e			;0050	93 	. 
	ld l,0d5h		;0051	2e d5 	. . 
	call sub_0c9ch		;0053	cd 9c 0c 	. . . 
	call 02dbch		;0056	cd bc 2d 	. . - 
	pop de			;0059	d1 	. 
	pop hl			;005a	e1 	. 
	jp l2b95h+2		;005b	c3 97 2b 	. . + 
	push de			;005e	d5 	. 
	push bc			;005f	c5 	. 
l0060h:
	ld bc,(05dd8h)		;0060	ed 4b d8 5d 	. K . ] 
	ex de,hl			;0064	eb 	. 
	or a			;0065	b7 	. 
	jp l0154h		;0066	c3 54 01 	. T . 
l0069h:
	di			;0069	f3 	. 
	call sub_04b9h		;006a	cd b9 04 	. . . 
	ld hl,0c000h		;006d	21 00 c0 	! . . 
	ld de,0c001h		;0070	11 01 c0 	. . . 
	ld bc,l1ffeh		;0073	01 fe 1f 	. . . 
	ld (hl),a			;0076	77 	w 
l0077h:
	ldir		;0077	ed b0 	. . 
	call sub_026dh		;0079	cd 6d 02 	. m . 
	call sub_027ah		;007c	cd 7a 02 	. z . 
l007fh:
	call sub_028eh		;007f	cd 8e 02 	. . . 
	call sub_0ab1h		;0082	cd b1 0a 	. . . 
	ld hl,0c111h		;0085	21 11 c1 	! . . 
	ld (hl),000h		;0088	36 00 	6 . 
	inc hl			;008a	23 	# 
	ld (hl),030h		;008b	36 30 	6 0 
	inc hl			;008d	23 	# 
	ld (hl),000h		;008e	36 00 	6 . 
	call sub_0224h		;0090	cd 24 02 	. $ . 
	call sub_024eh		;0093	cd 4e 02 	. N . 
	ei			;0096	fb 	. 
l0097h:
	call sub_04c8h		;0097	cd c8 04 	. . . 
	call sub_059dh		;009a	cd 9d 05 	. . . 
	ld a,001h		;009d	3e 01 	> . 
	call sub_00a4h		;009f	cd a4 00 	. . . 
	jr l0097h		;00a2	18 f3 	. . 
sub_00a4h:
	ei			;00a4	fb 	. 
	ld (0c10ch),a		;00a5	32 0c c1 	2 . . 
l00a8h:
	ld a,(0c10ch)		;00a8	3a 0c c1 	: . . 
	or a			;00ab	b7 	. 
	jr nz,l00a8h		;00ac	20 fa 	  . 
	ret			;00ae	c9 	. 
l00afh:
	di			;00af	f3 	. 
	push af			;00b0	f5 	. 
	push bc			;00b1	c5 	. 
	in a,(0bfh)		;00b2	db bf 	. . 
	push de			;00b4	d5 	. 
	push hl			;00b5	e5 	. 
	ex af,af'			;00b6	08 	. 
	exx			;00b7	d9 	. 
	push af			;00b8	f5 	. 
	push bc			;00b9	c5 	. 
	push de			;00ba	d5 	. 
	push hl			;00bb	e5 	. 
	push ix		;00bc	dd e5 	. . 
	push iy		;00be	fd e5 	. . 
l00c0h:
	ld hl,0c10ch		;00c0	21 0c c1 	! . . 
	ld a,(hl)			;00c3	7e 	~ 
	or a			;00c4	b7 	. 
	jr z,l0130h		;00c5	28 69 	( i 
	dec (hl)			;00c7	35 	5 
	call sub_0614h		;00c8	cd 14 06 	. . . 
	call sub_1e03h		;00cb	cd 03 1e 	. . . 
	call sub_0f5dh		;00ce	cd 5d 0f 	. ] . 
	ld hl,0c10dh		;00d1	21 0d c1 	! . . 
	bit 7,(hl)		;00d4	cb 7e 	. ~ 
	res 7,(hl)		;00d6	cb be 	. . 
	call nz,sub_022ah		;00d8	c4 2a 02 	. * . 
	ld hl,0c10fh		;00db	21 0f c1 	! . . 
	in a,(0ddh)		;00de	db dd 	. . 
l00e0h:
	and 010h		;00e0	e6 10 	. . 
	jr nz,l00f9h		;00e2	20 15 	  . 
	bit 0,(hl)		;00e4	cb 46 	. F 
	res 0,(hl)		;00e6	cb 86 	. . 
	ld a,000h		;00e8	3e 00 	> . 
	call nz,004e3h		;00ea	c4 e3 04 	. . . 
	ld hl,0c10dh		;00ed	21 0d c1 	! . . 
	res 0,(hl)		;00f0	cb 86 	. . 
	ld hl,0c114h		;00f2	21 14 c1 	! . . 
	res 2,(hl)		;00f5	cb 96 	. . 
	jr l00fbh		;00f7	18 02 	. . 
l00f9h:
	set 0,(hl)		;00f9	cb c6 	. . 
l00fbh:
	ld hl,0c10bh		;00fb	21 0b c1 	! . . 
	inc (hl)			;00fe	34 	4 
	ld hl,0c10dh		;00ff	21 0d c1 	! . . 
	bit 0,(hl)		;0102	cb 46 	. F 
	jr z,l0110h		;0104	28 0a 	( . 
	inc hl			;0106	23 	# 
	inc (hl)			;0107	34 	4 
	ld a,(hl)			;0108	7e 	~ 
	and 00fh		;0109	e6 0f 	. . 
	jr nz,l0110h		;010b	20 03 	  . 
	dec hl			;010d	2b 	+ 
	res 0,(hl)		;010e	cb 86 	. . 
l0110h:
	ld hl,0d395h		;0110	21 95 d3 	! . . 
	ld e,001h		;0113	1e 01 	. . 
	call sub_0171h		;0115	cd 71 01 	. q . 
	inc hl			;0118	23 	# 
	ld e,005h		;0119	1e 05 	. . 
	call sub_0171h		;011b	cd 71 01 	. q . 
	inc hl			;011e	23 	# 
	ld e,007h		;011f	1e 07 	. . 
	call sub_0171h		;0121	cd 71 01 	. q . 
	inc hl			;0124	23 	# 
	ld e,00bh		;0125	1e 0b 	. . 
	call sub_0171h		;0127	cd 71 01 	. q . 
	inc hl			;012a	23 	# 
	ld e,00eh		;012b	1e 0e 	. . 
	call sub_0171h		;012d	cd 71 01 	. q . 
l0130h:
	ld a,(0c114h)		;0130	3a 14 c1 	: . . 
	and 004h		;0133	e6 04 	. . 
	jr z,l0140h		;0135	28 09 	( . 
	ld hl,0c10ch		;0137	21 0c c1 	! . . 
	inc (hl)			;013a	34 	4 
	call 07168h		;013b	cd 68 71 	. h q 
	jr l0143h		;013e	18 03 	. . 
l0140h:
	call 06ca8h		;0140	cd a8 6c 	. . l 
l0143h:
	pop iy		;0143	fd e1 	. . 
	pop ix		;0145	dd e1 	. . 
	pop hl			;0147	e1 	. 
	pop de			;0148	d1 	. 
	pop bc			;0149	c1 	. 
	pop af			;014a	f1 	. 
	ex af,af'			;014b	08 	. 
	exx			;014c	d9 	. 
	pop hl			;014d	e1 	. 
	pop de			;014e	d1 	. 
	pop bc			;014f	c1 	. 
	pop af			;0150	f1 	. 
	ei			;0151	fb 	. 
	reti		;0152	ed 4d 	. M 
l0154h:
	push af			;0154	f5 	. 
	push hl			;0155	e5 	. 
	ld hl,0c10dh		;0156	21 0d c1 	! . . 
	bit 0,(hl)		;0159	cb 46 	. F 
	jr nz,l016dh		;015b	20 10 	  . 
	ld a,(0c115h)		;015d	3a 15 c1 	: . . 
	cp 003h		;0160	fe 03 	. . 
	jr nz,l016dh		;0162	20 09 	  . 
	set 0,(hl)		;0164	cb c6 	. . 
	ld hl,0c114h		;0166	21 14 c1 	! . . 
	ld a,004h		;0169	3e 04 	> . 
	xor (hl)			;016b	ae 	. 
	ld (hl),a			;016c	77 	w 
l016dh:
	pop hl			;016d	e1 	. 
	pop af			;016e	f1 	. 
	retn		;016f	ed 45 	. E 
sub_0171h:
	ld a,(hl)			;0171	7e 	~ 
	or a			;0172	b7 	. 
	ret z			;0173	c8 	. 
	push hl			;0174	e5 	. 
	ld d,000h		;0175	16 00 	. . 
	ld hl,0c000h		;0177	21 00 c0 	! . . 
	add hl,de			;017a	19 	. 
	dec a			;017b	3d 	= 
	call sub_0406h		;017c	cd 06 04 	. . . 
	pop hl			;017f	e1 	. 
l0180h:
	ret			;0180	c9 	. 
sub_0181h:
	ld a,007h		;0181	3e 07 	> . 
	out (0deh),a		;0183	d3 de 	. . 
	in a,(0dch)		;0185	db dc 	. . 
	cpl			;0187	2f 	/ 
	ld e,a			;0188	5f 	_ 
	and 03fh		;0189	e6 3f 	. ? 
	ld d,a			;018b	57 	W 
	ld a,e			;018c	7b 	{ 
	and 0c0h		;018d	e6 c0 	. . 
	ld l,a			;018f	6f 	o 
	in a,(0ddh)		;0190	db dd 	. . 
	cpl			;0192	2f 	/ 
	and 00fh		;0193	e6 0f 	. . 
	ld h,a			;0195	67 	g 
	add hl,hl			;0196	29 	) 
	add hl,hl			;0197	29 	) 
	ld l,d			;0198	6a 	j 
	jp l019ch		;0199	c3 9c 01 	. . . 
l019ch:
	ld a,(0c115h)		;019c	3a 15 c1 	: . . 
	cp 003h		;019f	fe 03 	. . 
	ld a,h			;01a1	7c 	| 
	jr nz,l01ach		;01a2	20 08 	  . 
	ld a,(0c114h)		;01a4	3a 14 c1 	: . . 
	bit 6,a		;01a7	cb 77 	. w 
	ld a,h			;01a9	7c 	| 
	jr nz,l01b1h		;01aa	20 05 	  . 
l01ach:
	rla			;01ac	17 	. 
	rla			;01ad	17 	. 
	and 0c0h		;01ae	e6 c0 	. . 
	or l			;01b0	b5 	. 
l01b1h:
	ld (0c11fh),a		;01b1	32 1f c1 	2 . . 
	ld hl,0c0feh		;01b4	21 fe c0 	! . . 
	cp (hl)			;01b7	be 	. 
	jr nz,l01beh		;01b8	20 04 	  . 
	inc hl			;01ba	23 	# 
	ld (hl),000h		;01bb	36 00 	6 . 
	ret			;01bd	c9 	. 
l01beh:
	ld c,a			;01be	4f 	O 
	xor (hl)			;01bf	ae 	. 
	ld (hl),c			;01c0	71 	q 
	inc hl			;01c1	23 	# 
	and c			;01c2	a1 	. 
	ld (hl),a			;01c3	77 	w 
	ld a,c			;01c4	79 	y 
	ret			;01c5	c9 	. 
sub_01c6h:
	push af			;01c6	f5 	. 
	ld a,l			;01c7	7d 	} 
	out (0bfh),a		;01c8	d3 bf 	. . 
	ld a,h			;01ca	7c 	| 
	and 03fh		;01cb	e6 3f 	. ? 
	or 040h		;01cd	f6 40 	. @ 
	out (0bfh),a		;01cf	d3 bf 	. . 
	pop af			;01d1	f1 	. 
	ret			;01d2	c9 	. 
sub_01d3h:
	ld a,l			;01d3	7d 	} 
	out (0bfh),a		;01d4	d3 bf 	. . 
	ld a,h			;01d6	7c 	| 
	and 03fh		;01d7	e6 3f 	. ? 
	out (0bfh),a		;01d9	d3 bf 	. . 
	ret			;01db	c9 	. 
sub_01dch:
	call sub_01d3h		;01dc	cd d3 01 	. . . 
	ex (sp),hl			;01df	e3 	. 
	ex (sp),hl			;01e0	e3 	. 
	in a,(0beh)		;01e1	db be 	. . 
	ret			;01e3	c9 	. 
sub_01e4h:
	ex de,hl			;01e4	eb 	. 
	call sub_01c6h		;01e5	cd c6 01 	. . . 
	ex (sp),hl			;01e8	e3 	. 
	ex (sp),hl			;01e9	e3 	. 
l01eah:
	ld a,(de)			;01ea	1a 	. 
	out (0beh),a		;01eb	d3 be 	. . 
	xor a			;01ed	af 	. 
	push hl			;01ee	e5 	. 
	pop hl			;01ef	e1 	. 
	out (0beh),a		;01f0	d3 be 	. . 
	push hl			;01f2	e5 	. 
	pop hl			;01f3	e1 	. 
	out (0beh),a		;01f4	d3 be 	. . 
	push hl			;01f6	e5 	. 
	pop hl			;01f7	e1 	. 
	out (0beh),a		;01f8	d3 be 	. . 
	inc de			;01fa	13 	. 
	dec bc			;01fb	0b 	. 
	ld a,b			;01fc	78 	x 
	or c			;01fd	b1 	. 
	jp nz,l01eah		;01fe	c2 ea 01 	. . . 
	ret			;0201	c9 	. 
sub_0202h:
	push de			;0202	d5 	. 
	ld d,a			;0203	57 	W 
	call sub_01c6h		;0204	cd c6 01 	. . . 
	ex (sp),hl			;0207	e3 	. 
	ex (sp),hl			;0208	e3 	. 
l0209h:
	ld a,d			;0209	7a 	z 
l020ah:
	out (0beh),a		;020a	d3 be 	. . 
	dec bc			;020c	0b 	. 
	ld a,b			;020d	78 	x 
	or c			;020e	b1 	. 
	jr nz,l0209h		;020f	20 f8 	  . 
	pop de			;0211	d1 	. 
	ret			;0212	c9 	. 
sub_0213h:
	push af			;0213	f5 	. 
	ld a,(0c101h)		;0214	3a 01 c1 	: . . 
	and 0bfh		;0217	e6 bf 	. . 
	ld (0c101h),a		;0219	32 01 c1 	2 . . 
	out (0bfh),a		;021c	d3 bf 	. . 
	ld a,081h		;021e	3e 81 	> . 
	out (0bfh),a		;0220	d3 bf 	. . 
	pop af			;0222	f1 	. 
	ret			;0223	c9 	. 
sub_0224h:
	ld hl,0c10dh		;0224	21 0d c1 	! . . 
	set 7,(hl)		;0227	cb fe 	. . 
	ret			;0229	c9 	. 
sub_022ah:
	push af			;022a	f5 	. 
	ld a,(0c101h)		;022b	3a 01 c1 	: . . 
	or 040h		;022e	f6 40 	. @ 
	ld (0c101h),a		;0230	32 01 c1 	2 . . 
	out (0bfh),a		;0233	d3 bf 	. . 
	ld a,081h		;0235	3e 81 	> . 
	out (0bfh),a		;0237	d3 bf 	. . 
	pop af			;0239	f1 	. 
	ret			;023a	c9 	. 
sub_023bh:
	push af			;023b	f5 	. 
	ld a,(0c101h)		;023c	3a 01 c1 	: . . 
	and 0dfh		;023f	e6 df 	. . 
	or 020h		;0241	f6 20 	.   
	ld (0c101h),a		;0243	32 01 c1 	2 . . 
	out (0bfh),a		;0246	d3 bf 	. . 
	ld a,081h		;0248	3e 81 	> . 
	out (0bfh),a		;024a	d3 bf 	. . 
	pop af			;024c	f1 	. 
	ret			;024d	c9 	. 
sub_024eh:
	push af			;024e	f5 	. 
	ld a,(0c101h)		;024f	3a 01 c1 	: . . 
	or 020h		;0252	f6 20 	.   
	ld (0c101h),a		;0254	32 01 c1 	2 . . 
	out (0bfh),a		;0257	d3 bf 	. . 
	ld a,081h		;0259	3e 81 	> . 
	out (0bfh),a		;025b	d3 bf 	. . 
	pop af			;025d	f1 	. 
	ret			;025e	c9 	. 
l025fh:
	ld c,000h		;025f	0e 00 	. . 
	ld e,00bh		;0261	1e 0b 	. . 
l0263h:
	ld b,(hl)			;0263	46 	F 
	call sub_003bh		;0264	cd 3b 00 	. ; . 
	inc hl			;0267	23 	# 
	inc c			;0268	0c 	. 
	dec e			;0269	1d 	. 
	jr nz,l0263h		;026a	20 f7 	  . 
	ret			;026c	c9 	. 
sub_026dh:
	ld hl,l03dbh		;026d	21 db 03 	! . . 
	jr l025fh		;0270	18 ed 	. . 
sub_0272h:
	ld hl,0c000h		;0272	21 00 c0 	! . . 
	ld bc,l0010h		;0275	01 10 00 	. . . 
	jr l0283h		;0278	18 09 	. . 
sub_027ah:
	ld de,l03e6h		;027a	11 e6 03 	. . . 
	ld hl,0c000h		;027d	21 00 c0 	! . . 
l0280h:
	ld bc,l0020h		;0280	01 20 00 	.   . 
l0283h:
	ld a,l			;0283	7d 	} 
	out (0bfh),a		;0284	d3 bf 	. . 
	ld a,h			;0286	7c 	| 
	out (0bfh),a		;0287	d3 bf 	. . 
	ex (sp),hl			;0289	e3 	. 
	ex (sp),hl			;028a	e3 	. 
	jp l0472h		;028b	c3 72 04 	. r . 
sub_028eh:
	ld hl,l0000h		;028e	21 00 00 	! . . 
	ld bc,l0020h		;0291	01 20 00 	.   . 
	xor a			;0294	af 	. 
	call sub_0202h		;0295	cd 02 02 	. . . 
	ld hl,l3800h		;0298	21 00 38 	! . 8 
	ld bc,l0700h		;029b	01 00 07 	. . . 
	xor a			;029e	af 	. 
	call sub_0202h		;029f	cd 02 02 	. . . 
	ld hl,l0000h		;02a2	21 00 00 	! . . 
	ld bc,l0020h		;02a5	01 20 00 	.   . 
	xor a			;02a8	af 	. 
	call sub_0202h		;02a9	cd 02 02 	. . . 
	ret			;02ac	c9 	. 
sub_02adh:
	ex de,hl			;02ad	eb 	. 
	call sub_01c6h		;02ae	cd c6 01 	. . . 
	ex de,hl			;02b1	eb 	. 
	ld d,b			;02b2	50 	P 
	ld e,c			;02b3	59 	Y 
	ld c,0beh		;02b4	0e be 	. . 
	inc d			;02b6	14 	. 
	dec d			;02b7	15 	. 
	jp z,l02c5h		;02b8	ca c5 02 	. . . 
l02bbh:
	call sub_02d9h		;02bb	cd d9 02 	. . . 
	call sub_02d9h		;02be	cd d9 02 	. . . 
	dec d			;02c1	15 	. 
	jp nz,l02bbh		;02c2	c2 bb 02 	. . . 
l02c5h:
	ld b,e			;02c5	43 	C 
	ld a,e			;02c6	7b 	{ 
	cp 080h		;02c7	fe 80 	. . 
	call nc,sub_02d9h		;02c9	d4 d9 02 	. . . 
	cp 040h		;02cc	fe 40 	. @ 
	call nc,sub_0359h		;02ce	d4 59 03 	. Y . 
	cp 020h		;02d1	fe 20 	.   
	call nc,sub_0399h		;02d3	d4 99 03 	. . . 
	or a			;02d6	b7 	. 
	ret z			;02d7	c8 	. 
	ret			;02d8	c9 	. 
sub_02d9h:
	outi		;02d9	ed a3 	. . 
	outi		;02db	ed a3 	. . 
	outi		;02dd	ed a3 	. . 
	outi		;02df	ed a3 	. . 
	outi		;02e1	ed a3 	. . 
	outi		;02e3	ed a3 	. . 
	outi		;02e5	ed a3 	. . 
	outi		;02e7	ed a3 	. . 
	outi		;02e9	ed a3 	. . 
	outi		;02eb	ed a3 	. . 
	outi		;02ed	ed a3 	. . 
	outi		;02ef	ed a3 	. . 
	outi		;02f1	ed a3 	. . 
	outi		;02f3	ed a3 	. . 
	outi		;02f5	ed a3 	. . 
	outi		;02f7	ed a3 	. . 
	outi		;02f9	ed a3 	. . 
	outi		;02fb	ed a3 	. . 
	outi		;02fd	ed a3 	. . 
	outi		;02ff	ed a3 	. . 
	outi		;0301	ed a3 	. . 
	outi		;0303	ed a3 	. . 
	outi		;0305	ed a3 	. . 
	outi		;0307	ed a3 	. . 
	outi		;0309	ed a3 	. . 
	outi		;030b	ed a3 	. . 
	outi		;030d	ed a3 	. . 
	outi		;030f	ed a3 	. . 
	outi		;0311	ed a3 	. . 
	outi		;0313	ed a3 	. . 
	outi		;0315	ed a3 	. . 
	outi		;0317	ed a3 	. . 
	outi		;0319	ed a3 	. . 
	outi		;031b	ed a3 	. . 
	outi		;031d	ed a3 	. . 
	outi		;031f	ed a3 	. . 
	outi		;0321	ed a3 	. . 
	outi		;0323	ed a3 	. . 
	outi		;0325	ed a3 	. . 
	outi		;0327	ed a3 	. . 
	outi		;0329	ed a3 	. . 
	outi		;032b	ed a3 	. . 
	outi		;032d	ed a3 	. . 
	outi		;032f	ed a3 	. . 
	outi		;0331	ed a3 	. . 
	outi		;0333	ed a3 	. . 
	outi		;0335	ed a3 	. . 
	outi		;0337	ed a3 	. . 
	outi		;0339	ed a3 	. . 
	outi		;033b	ed a3 	. . 
	outi		;033d	ed a3 	. . 
	outi		;033f	ed a3 	. . 
	outi		;0341	ed a3 	. . 
	outi		;0343	ed a3 	. . 
	outi		;0345	ed a3 	. . 
	outi		;0347	ed a3 	. . 
	outi		;0349	ed a3 	. . 
	outi		;034b	ed a3 	. . 
	outi		;034d	ed a3 	. . 
	outi		;034f	ed a3 	. . 
	outi		;0351	ed a3 	. . 
	outi		;0353	ed a3 	. . 
	outi		;0355	ed a3 	. . 
	outi		;0357	ed a3 	. . 
sub_0359h:
	outi		;0359	ed a3 	. . 
	outi		;035b	ed a3 	. . 
	outi		;035d	ed a3 	. . 
	outi		;035f	ed a3 	. . 
	outi		;0361	ed a3 	. . 
	outi		;0363	ed a3 	. . 
	outi		;0365	ed a3 	. . 
	outi		;0367	ed a3 	. . 
	outi		;0369	ed a3 	. . 
	outi		;036b	ed a3 	. . 
	outi		;036d	ed a3 	. . 
	outi		;036f	ed a3 	. . 
	outi		;0371	ed a3 	. . 
	outi		;0373	ed a3 	. . 
	outi		;0375	ed a3 	. . 
	outi		;0377	ed a3 	. . 
	outi		;0379	ed a3 	. . 
	outi		;037b	ed a3 	. . 
	outi		;037d	ed a3 	. . 
	outi		;037f	ed a3 	. . 
	outi		;0381	ed a3 	. . 
	outi		;0383	ed a3 	. . 
	outi		;0385	ed a3 	. . 
	outi		;0387	ed a3 	. . 
	outi		;0389	ed a3 	. . 
	outi		;038b	ed a3 	. . 
	outi		;038d	ed a3 	. . 
	outi		;038f	ed a3 	. . 
	outi		;0391	ed a3 	. . 
	outi		;0393	ed a3 	. . 
	outi		;0395	ed a3 	. . 
	outi		;0397	ed a3 	. . 
sub_0399h:
	outi		;0399	ed a3 	. . 
	outi		;039b	ed a3 	. . 
	outi		;039d	ed a3 	. . 
	outi		;039f	ed a3 	. . 
	outi		;03a1	ed a3 	. . 
	outi		;03a3	ed a3 	. . 
	outi		;03a5	ed a3 	. . 
	outi		;03a7	ed a3 	. . 
	outi		;03a9	ed a3 	. . 
	outi		;03ab	ed a3 	. . 
	outi		;03ad	ed a3 	. . 
	outi		;03af	ed a3 	. . 
	outi		;03b1	ed a3 	. . 
	outi		;03b3	ed a3 	. . 
	outi		;03b5	ed a3 	. . 
	outi		;03b7	ed a3 	. . 
	outi		;03b9	ed a3 	. . 
	outi		;03bb	ed a3 	. . 
	outi		;03bd	ed a3 	. . 
	outi		;03bf	ed a3 	. . 
	outi		;03c1	ed a3 	. . 
	outi		;03c3	ed a3 	. . 
	outi		;03c5	ed a3 	. . 
	outi		;03c7	ed a3 	. . 
	outi		;03c9	ed a3 	. . 
	outi		;03cb	ed a3 	. . 
	outi		;03cd	ed a3 	. . 
	outi		;03cf	ed a3 	. . 
	outi		;03d1	ed a3 	. . 
	outi		;03d3	ed a3 	. . 
	outi		;03d5	ed a3 	. . 
	outi		;03d7	ed a3 	. . 
	ld a,b			;03d9	78 	x 
	ret			;03da	c9 	. 
l03dbh:
	ld h,080h		;03db	26 80 	& . 
	rst 38h			;03dd	ff 	. 
	rst 38h			;03de	ff 	. 
	rst 38h			;03df	ff 	. 
	rst 38h			;03e0	ff 	. 
	rst 38h			;03e1	ff 	. 
	nop			;03e2	00 	. 
	nop			;03e3	00 	. 
	nop			;03e4	00 	. 
	nop			;03e5	00 	. 
l03e6h:
	nop			;03e6	00 	. 
	ccf			;03e7	3f 	? 
	dec hl			;03e8	2b 	+ 
	rrca			;03e9	0f 	. 
	dec bc			;03ea	0b 	. 
	inc bc			;03eb	03 	. 
	dec de			;03ec	1b 	. 
	ld b,030h		;03ed	06 30 	. 0 
	inc b			;03ef	04 	. 
	inc c			;03f0	0c 	. 
	ld hl,(00116h)		;03f1	2a 16 01 	* . . 
	inc de			;03f4	13 	. 
	dec d			;03f5	15 	. 
	nop			;03f6	00 	. 
	ccf			;03f7	3f 	? 
	dec hl			;03f8	2b 	+ 
	rrca			;03f9	0f 	. 
	dec bc			;03fa	0b 	. 
	inc bc			;03fb	03 	. 
	jr nz,l043bh		;03fc	20 3d 	  = 
	jr nc,l0408h		;03fe	30 08 	0 . 
sub_0400h:
	inc c			;0400	0c 	. 
	ld hl,(00216h)		;0401	2a 16 02 	* . . 
sub_0404h:
	inc de			;0404	13 	. 
	nop			;0405	00 	. 
sub_0406h:
	push af			;0406	f5 	. 
	ld a,l			;0407	7d 	} 
l0408h:
	out (0bfh),a		;0408	d3 bf 	. . 
	ld a,h			;040a	7c 	| 
	out (0bfh),a		;040b	d3 bf 	. . 
	ex (sp),hl			;040d	e3 	. 
	ex (sp),hl			;040e	e3 	. 
	pop af			;040f	f1 	. 
	out (0beh),a		;0410	d3 be 	. . 
	ret			;0412	c9 	. 
sub_0413h:
	push af			;0413	f5 	. 
	ld a,l			;0414	7d 	} 
	out (0bfh),a		;0415	d3 bf 	. . 
	ld a,h			;0417	7c 	| 
	and 03fh		;0418	e6 3f 	. ? 
	or 040h		;041a	f6 40 	. @ 
sub_041ch:
	out (0bfh),a		;041c	d3 bf 	. . 
	pop af			;041e	f1 	. 
	out (0beh),a		;041f	d3 be 	. . 
	ret			;0421	c9 	. 
sub_0422h:
	ex de,hl			;0422	eb 	. 
	ld c,004h		;0423	0e 04 	. . 
l0425h:
	push hl			;0425	e5 	. 
l0426h:
	ld a,(de)			;0426	1a 	. 
	or a			;0427	b7 	. 
	jp z,l044fh		;0428	ca 4f 04 	. O . 
	inc a			;042b	3c 	< 
	jp z,l043bh		;042c	ca 3b 04 	. ; . 
	dec a			;042f	3d 	= 
	call sub_0413h		;0430	cd 13 04 	. . . 
	inc hl			;0433	23 	# 
	inc hl			;0434	23 	# 
	inc hl			;0435	23 	# 
	inc hl			;0436	23 	# 
	inc de			;0437	13 	. 
	jp l0426h		;0438	c3 26 04 	. & . 
l043bh:
	inc de			;043b	13 	. 
	ld a,(de)			;043c	1a 	. 
	call sub_0413h		;043d	cd 13 04 	. . . 
	inc hl			;0440	23 	# 
	inc hl			;0441	23 	# 
	inc hl			;0442	23 	# 
	inc hl			;0443	23 	# 
	call sub_0413h		;0444	cd 13 04 	. . . 
	inc hl			;0447	23 	# 
	inc hl			;0448	23 	# 
	inc hl			;0449	23 	# 
	inc hl			;044a	23 	# 
	inc de			;044b	13 	. 
	jp l0426h		;044c	c3 26 04 	. & . 
l044fh:
	inc de			;044f	13 	. 
	ld a,(de)			;0450	1a 	. 
	inc de			;0451	13 	. 
	or a			;0452	b7 	. 
	jr z,l0464h		;0453	28 0f 	( . 
	ld b,a			;0455	47 	G 
	ld a,(de)			;0456	1a 	. 
l0457h:
	call sub_0413h		;0457	cd 13 04 	. . . 
	inc hl			;045a	23 	# 
	inc hl			;045b	23 	# 
	inc hl			;045c	23 	# 
	inc hl			;045d	23 	# 
	djnz l0457h		;045e	10 f7 	. . 
	inc de			;0460	13 	. 
	jp l0426h		;0461	c3 26 04 	. & . 
l0464h:
	pop hl			;0464	e1 	. 
	inc hl			;0465	23 	# 
	dec c			;0466	0d 	. 
	jp nz,l0425h		;0467	c2 25 04 	. % . 
	ex de,hl			;046a	eb 	. 
	ret			;046b	c9 	. 
sub_046ch:
	ex de,hl			;046c	eb 	. 
	call sub_01c6h		;046d	cd c6 01 	. . . 
	ex (sp),hl			;0470	e3 	. 
	ex (sp),hl			;0471	e3 	. 
l0472h:
	ld a,(de)			;0472	1a 	. 
	out (0beh),a		;0473	d3 be 	. . 
	inc de			;0475	13 	. 
	dec bc			;0476	0b 	. 
	ld a,b			;0477	78 	x 
	or c			;0478	b1 	. 
	jr nz,l0472h		;0479	20 f7 	  . 
	ret			;047b	c9 	. 
sub_047ch:
	push af			;047c	f5 	. 
	call sub_01c6h		;047d	cd c6 01 	. . . 
	ex (sp),hl			;0480	e3 	. 
	ex (sp),hl			;0481	e3 	. 
	pop af			;0482	f1 	. 
	out (0beh),a		;0483	d3 be 	. . 
	ret			;0485	c9 	. 
sub_0486h:
	ex de,hl			;0486	eb 	. 
	call sub_01c6h		;0487	cd c6 01 	. . . 
	ex (sp),hl			;048a	e3 	. 
	ex (sp),hl			;048b	e3 	. 
l048ch:
	ld a,(de)			;048c	1a 	. 
	out (0beh),a		;048d	d3 be 	. . 
	ex (sp),hl			;048f	e3 	. 
	ex (sp),hl			;0490	e3 	. 
	xor a			;0491	af 	. 
	out (0beh),a		;0492	d3 be 	. . 
	inc de			;0494	13 	. 
	dec bc			;0495	0b 	. 
	ld a,b			;0496	78 	x 
	or c			;0497	b1 	. 
	jr nz,l048ch		;0498	20 f2 	  . 
	ret			;049a	c9 	. 
sub_049bh:
	ld a,0f5h		;049b	3e f5 	> . 
	out (03fh),a		;049d	d3 3f 	. ? 
	in a,(0ddh)		;049f	db dd 	. . 
	and 0c0h		;04a1	e6 c0 	. . 
	cp 0c0h		;04a3	fe c0 	. . 
	jr nz,l04b7h		;04a5	20 10 	  . 
	ld a,055h		;04a7	3e 55 	> U 
	out (03fh),a		;04a9	d3 3f 	. ? 
	in a,(0ddh)		;04ab	db dd 	. . 
	and 0c0h		;04ad	e6 c0 	. . 
	or a			;04af	b7 	. 
	jr nz,l04b7h		;04b0	20 05 	  . 
	ld a,0ffh		;04b2	3e ff 	> . 
	out (03fh),a		;04b4	d3 3f 	. ? 
	ret			;04b6	c9 	. 
l04b7h:
	xor a			;04b7	af 	. 
	ret			;04b8	c9 	. 
sub_04b9h:
	ld b,00ah		;04b9	06 0a 	. . 
l04bbh:
	push bc			;04bb	c5 	. 
	ld bc,l3333h		;04bc	01 33 33 	. 3 3 
l04bfh:
	dec bc			;04bf	0b 	. 
l04c0h:
	ld a,b			;04c0	78 	x 
	or c			;04c1	b1 	. 
	jr nz,l04bfh		;04c2	20 fb 	  . 
	pop bc			;04c4	c1 	. 
	djnz l04bbh		;04c5	10 f4 	. . 
	ret			;04c7	c9 	. 
sub_04c8h:
	call sub_0181h		;04c8	cd 81 01 	. . . 
	ld a,(0c115h)		;04cb	3a 15 c1 	: . . 
	add a,a			;04ce	87 	. 
	ld l,a			;04cf	6f 	o 
	ld h,000h		;04d0	26 00 	& . 
	ld de,l04dbh		;04d2	11 db 04 	. . . 
	add hl,de			;04d5	19 	. 
	ld e,(hl)			;04d6	5e 	^ 
	inc hl			;04d7	23 	# 
	ld d,(hl)			;04d8	56 	V 
	ex de,hl			;04d9	eb 	. 
	jp (hl)			;04da	e9 	. 
l04dbh:
	rrca			;04db	0f 	. 
	ld (de),a			;04dc	12 	. 
	xor a			;04dd	af 	. 
	ld (de),a			;04de	12 	. 
	rl e		;04df	cb 13 	. . 
	ld (03214h),hl		;04e1	22 14 32 	" . 2 
	dec d			;04e4	15 	. 
	pop bc			;04e5	c1 	. 
	ld hl,0c116h		;04e6	21 16 c1 	! . . 
	ld de,0c117h		;04e9	11 17 c1 	. . . 
	ld bc,l0005h+2		;04ec	01 07 00 	. . . 
	ld (hl),000h		;04ef	36 00 	6 . 
	ldir		;04f1	ed b0 	. . 
	call sub_0ab1h		;04f3	cd b1 0a 	. . . 
	ret			;04f6	c9 	. 
sub_04f7h:
	ld a,(0c0ffh)		;04f7	3a ff c0 	: . . 
	and 0f0h		;04fa	e6 f0 	. . 
	ret			;04fc	c9 	. 
l04fdh:
	exx			;04fd	d9 	. 
	ld a,0f6h		;04fe	3e f6 	> . 
l0500h:
	ld (de),a			;0500	12 	. 
	djnz l0500h		;0501	10 fd 	. . 
	ret			;0503	c9 	. 
l0504h:
	exx			;0504	d9 	. 
	inc l			;0505	2c 	, 
	inc l			;0506	2c 	, 
	ld a,0f6h		;0507	3e f6 	> . 
	ld (de),a			;0509	12 	. 
	inc e			;050a	1c 	. 
	jp l056dh		;050b	c3 6d 05 	. m . 
l050eh:
	ld a,(ix+00dh)		;050e	dd 7e 0d 	. ~ . 
	and 03fh		;0511	e6 3f 	. ? 
	ld e,a			;0513	5f 	_ 
	ld d,000h		;0514	16 00 	. . 
	ld hl,0ca21h		;0516	21 21 ca 	! ! . 
	add hl,de			;0519	19 	. 
	ex de,hl			;051a	eb 	. 
	add hl,de			;051b	19 	. 
	ld a,040h		;051c	3e 40 	> @ 
	add a,l			;051e	85 	. 
	ld l,a			;051f	6f 	o 
	exx			;0520	d9 	. 
	push ix		;0521	dd e5 	. . 
	pop hl			;0523	e1 	. 
	ld c,l			;0524	4d 	M 
	inc l			;0525	2c 	, 
	inc l			;0526	2c 	, 
	inc l			;0527	2c 	, 
	ld a,(hl)			;0528	7e 	~ 
	inc l			;0529	2c 	, 
	rla			;052a	17 	. 
	ld a,(hl)			;052b	7e 	~ 
	rla			;052c	17 	. 
	jr c,l04fdh		;052d	38 ce 	8 . 
	neg		;052f	ed 44 	. D 
	add a,0dch		;0531	c6 dc 	. . 
	ld b,a			;0533	47 	G 
	inc l			;0534	2c 	, 
	inc l			;0535	2c 	, 
	ld e,(hl)			;0536	5e 	^ 
	inc l			;0537	2c 	, 
	ld d,(hl)			;0538	56 	V 
	rl e		;0539	cb 13 	. . 
	ld a,d			;053b	7a 	z 
	adc a,a			;053c	8f 	. 
	ld e,a			;053d	5f 	_ 
	ld l,c			;053e	69 	i 
	exx			;053f	d9 	. 
l0540h:
	exx			;0540	d9 	. 
	ld a,(hl)			;0541	7e 	~ 
	add a,b			;0542	80 	. 
	cp 0d0h		;0543	fe d0 	. . 
	jr z,l0504h		;0545	28 bd 	( . 
	exx			;0547	d9 	. 
	ld (de),a			;0548	12 	. 
	exx			;0549	d9 	. 
	inc l			;054a	2c 	, 
	ld a,(hl)			;054b	7e 	~ 
	ld a,(hl)			;054c	7e 	~ 
	sra a		;054d	cb 2f 	. / 
	add a,d			;054f	82 	. 
	cp 042h		;0550	fe 42 	. B 
	jr c,l0504h		;0552	38 b0 	8 . 
	cp 0c2h		;0554	fe c2 	. . 
	jr nc,l0504h		;0556	30 ac 	0 . 
	ld a,(hl)			;0558	7e 	~ 
	add a,e			;0559	83 	. 
	add a,07ch		;055a	c6 7c 	. | 
	exx			;055c	d9 	. 
	ld (hl),a			;055d	77 	w 
	exx			;055e	d9 	. 
	ld a,00bh		;055f	3e 0b 	> . 
	add a,l			;0561	85 	. 
	ld l,a			;0562	6f 	o 
	ld a,(hl)			;0563	7e 	~ 
	inc a			;0564	3c 	< 
	jr z,l0504h		;0565	28 9d 	( . 
	dec a			;0567	3d 	= 
	exx			;0568	d9 	. 
	inc l			;0569	2c 	, 
	ld (hl),a			;056a	77 	w 
	inc l			;056b	2c 	, 
	inc e			;056c	1c 	. 
l056dh:
	exx			;056d	d9 	. 
	ld a,020h		;056e	3e 20 	>   
	add a,c			;0570	81 	. 
	ld l,a			;0571	6f 	o 
	ld c,l			;0572	4d 	M 
	ld a,000h		;0573	3e 00 	> . 
	adc a,h			;0575	8c 	. 
	ld h,a			;0576	67 	g 
	exx			;0577	d9 	. 
	djnz l0540h		;0578	10 c6 	. . 
	ret			;057a	c9 	. 
sub_057bh:
	ld ix,(0c196h)		;057b	dd 2a 96 c1 	. * . . 
l057fh:
	ld a,(ix+00dh)		;057f	dd 7e 0d 	. ~ . 
	and 03fh		;0582	e6 3f 	. ? 
	ld e,a			;0584	5f 	_ 
	ld d,000h		;0585	16 00 	. . 
	ld hl,0ca21h		;0587	21 21 ca 	! ! . 
	add hl,de			;058a	19 	. 
	ex de,hl			;058b	eb 	. 
	add hl,de			;058c	19 	. 
	ld a,040h		;058d	3e 40 	> @ 
	add a,l			;058f	85 	. 
	ld l,a			;0590	6f 	o 
l0591h:
	xor a			;0591	af 	. 
	ld (hl),a			;0592	77 	w 
	inc l			;0593	2c 	, 
	ld (hl),a			;0594	77 	w 
	inc l			;0595	2c 	, 
	ld a,0f6h		;0596	3e f6 	> . 
	ld (de),a			;0598	12 	. 
	inc e			;0599	1c 	. 
	djnz l0591h		;059a	10 f5 	. . 
	ret			;059c	c9 	. 
sub_059dh:
	ld hl,0cc3fh		;059d	21 3f cc 	! ? . 
	inc (hl)			;05a0	34 	4 
	ld a,(hl)			;05a1	7e 	~ 
	and 03fh		;05a2	e6 3f 	. ? 
	ld c,a			;05a4	4f 	O 
	ld e,a			;05a5	5f 	_ 
	ld d,000h		;05a6	16 00 	. . 
	add a,a			;05a8	87 	. 
	exx			;05a9	d9 	. 
	ld e,a			;05aa	5f 	_ 
	ld d,000h		;05ab	16 00 	. . 
	bit 1,a		;05ad	cb 4f 	. O 
	jr nz,l05dfh		;05af	20 2e 	  . 
	ld hl,0ca61h		;05b1	21 61 ca 	! a . 
	add hl,de			;05b4	19 	. 
	ld de,0cb7fh		;05b5	11 7f cb 	.  . 
	exx			;05b8	d9 	. 
	ld hl,0ca21h		;05b9	21 21 ca 	! ! . 
	add hl,de			;05bc	19 	. 
	ld de,0cb3fh		;05bd	11 3f cb 	. ? . 
	ld a,040h		;05c0	3e 40 	> @ 
	sub c			;05c2	91 	. 
	ld b,a			;05c3	47 	G 
	ld a,c			;05c4	79 	y 
	ld c,b			;05c5	48 	H 
	call sub_05d3h		;05c6	cd d3 05 	. . . 
	or a			;05c9	b7 	. 
	ret z			;05ca	c8 	. 
	ld hl,0ca61h		;05cb	21 61 ca 	! a . 
	exx			;05ce	d9 	. 
	ld hl,0ca21h		;05cf	21 21 ca 	! ! . 
	ld c,a			;05d2	4f 	O 
sub_05d3h:
	ld b,000h		;05d3	06 00 	. . 
	push bc			;05d5	c5 	. 
	ldir		;05d6	ed b0 	. . 
	exx			;05d8	d9 	. 
	pop bc			;05d9	c1 	. 
	rlc c		;05da	cb 01 	. . 
	ldir		;05dc	ed b0 	. . 
	ret			;05de	c9 	. 
l05dfh:
	ld hl,0ca61h		;05df	21 61 ca 	! a . 
	add hl,de			;05e2	19 	. 
	ld de,0cbfdh		;05e3	11 fd cb 	. . . 
	exx			;05e6	d9 	. 
	ld hl,0ca21h		;05e7	21 21 ca 	! ! . 
	add hl,de			;05ea	19 	. 
	ld de,0cb7eh		;05eb	11 7e cb 	. ~ . 
	ld a,040h		;05ee	3e 40 	> @ 
	sub c			;05f0	91 	. 
	ld b,a			;05f1	47 	G 
	ld a,c			;05f2	79 	y 
	call sub_0601h		;05f3	cd 01 06 	. . . 
	or a			;05f6	b7 	. 
	ret z			;05f7	c8 	. 
	exx			;05f8	d9 	. 
	ld hl,0ca61h		;05f9	21 61 ca 	! a . 
	exx			;05fc	d9 	. 
	ld hl,0ca21h		;05fd	21 21 ca 	! ! . 
l0600h:
	ld b,a			;0600	47 	G 
sub_0601h:
	ld c,0ffh		;0601	0e ff 	. . 
l0603h:
	ldi		;0603	ed a0 	. . 
	dec e			;0605	1d 	. 
l0606h:
	dec e			;0606	1d 	. 
	exx			;0607	d9 	. 
	ldi		;0608	ed a0 	. . 
l060ah:
	ldi		;060a	ed a0 	. . 
	dec e			;060c	1d 	. 
	dec e			;060d	1d 	. 
	dec e			;060e	1d 	. 
	dec e			;060f	1d 	. 
	exx			;0610	d9 	. 
	djnz l0603h		;0611	10 f0 	. . 
	ret			;0613	c9 	. 
sub_0614h:
	ld hl,0cb3fh		;0614	21 3f cb 	! ? . 
	ld de,l3f00h		;0617	11 00 3f 	. . ? 
	ld bc,l0040h		;061a	01 40 00 	. @ . 
	call sub_02adh		;061d	cd ad 02 	. . . 
	ld hl,0cb7fh		;0620	21 7f cb 	!  . 
	ld de,l3f80h		;0623	11 80 3f 	. . ? 
	ld bc,l007fh+1		;0626	01 80 00 	. . . 
	call sub_02adh		;0629	cd ad 02 	. . . 
	ret			;062c	c9 	. 
sub_062dh:
	ld hl,l2000h		;062d	21 00 20 	! .   
	xor a			;0630	af 	. 
	ld bc,00800h		;0631	01 00 08 	. . . 
	call sub_0202h		;0634	cd 02 02 	. . . 
	ld hl,0ca21h		;0637	21 21 ca 	! ! . 
	ld de,0ca22h		;063a	11 22 ca 	. " . 
	ld bc,0003fh		;063d	01 3f 00 	. ? . 
	ld (hl),0f6h		;0640	36 f6 	6 . 
	ldir		;0642	ed b0 	. . 
	ld hl,0ca61h		;0644	21 61 ca 	! a . 
	ld de,0ca62h		;0647	11 62 ca 	. b . 
	ld bc,l007fh		;064a	01 7f 00 	.  . 
	ld (hl),000h		;064d	36 00 	6 . 
	ldir		;064f	ed b0 	. . 
	call sub_059dh		;0651	cd 9d 05 	. . . 
	ld hl,0ca21h		;0654	21 21 ca 	! ! . 
	ld de,l3f00h		;0657	11 00 3f 	. . ? 
	ld bc,l0040h		;065a	01 40 00 	. @ . 
	call sub_046ch		;065d	cd 6c 04 	. l . 
	ld hl,0ca61h		;0660	21 61 ca 	! a . 
	ld de,l3f80h		;0663	11 80 3f 	. . ? 
	ld bc,l007fh+1		;0666	01 80 00 	. . . 
	call sub_046ch		;0669	cd 6c 04 	. l . 
	ret			;066c	c9 	. 
sub_066dh:
	xor a			;066d	af 	. 
	ld (0c194h),a		;066e	32 94 c1 	2 . . 
l0671h:
	ld a,(0c194h)		;0671	3a 94 c1 	: . . 
	add a,a			;0674	87 	. 
	add a,a			;0675	87 	. 
	ld c,a			;0676	4f 	O 
	add a,a			;0677	87 	. 
	add a,c			;0678	81 	. 
	ld c,a			;0679	4f 	O 
	ld b,000h		;067a	06 00 	. . 
	ld hl,0c1a1h		;067c	21 a1 c1 	! . . 
	add hl,bc			;067f	09 	. 
	ld a,(hl)			;0680	7e 	~ 
	or a			;0681	b7 	. 
	jr z,l06c0h		;0682	28 3c 	( < 
	add a,a			;0684	87 	. 
	push af			;0685	f5 	. 
	add a,a			;0686	87 	. 
	ld c,a			;0687	4f 	O 
	rl b		;0688	cb 10 	. . 
	pop af			;068a	f1 	. 
	jr c,l0691h		;068b	38 04 	8 . 
	set 7,(hl)		;068d	cb fe 	. . 
	inc c			;068f	0c 	. 
	inc c			;0690	0c 	. 
l0691h:
	push bc			;0691	c5 	. 
	ld de,0c195h		;0692	11 95 c1 	. . . 
	call sub_0708h		;0695	cd 08 07 	. . . 
	pop bc			;0698	c1 	. 
	ld hl,l0721h		;0699	21 21 07 	! ! . 
	add hl,bc			;069c	09 	. 
	ld a,(hl)			;069d	7e 	~ 
	inc hl			;069e	23 	# 
	ld h,(hl)			;069f	66 	f 
	ld l,a			;06a0	6f 	o 
	ld de,l06aah		;06a1	11 aa 06 	. . . 
	push de			;06a4	d5 	. 
	ld ix,(0c196h)		;06a5	dd 2a 96 c1 	. * . . 
	jp (hl)			;06a9	e9 	. 
l06aah:
	ld a,(0c194h)		;06aa	3a 94 c1 	: . . 
	add a,a			;06ad	87 	. 
	add a,a			;06ae	87 	. 
	ld c,a			;06af	4f 	O 
	add a,a			;06b0	87 	. 
	add a,c			;06b1	81 	. 
	ld c,a			;06b2	4f 	O 
	ld b,000h		;06b3	06 00 	. . 
	ld hl,0c1a1h		;06b5	21 a1 c1 	! . . 
	add hl,bc			;06b8	09 	. 
	ex de,hl			;06b9	eb 	. 
	ld hl,0c195h		;06ba	21 95 c1 	! . . 
	call sub_0708h		;06bd	cd 08 07 	. . . 
l06c0h:
	ld hl,0c194h		;06c0	21 94 c1 	! . . 
	inc (hl)			;06c3	34 	4 
	ld a,(hl)			;06c4	7e 	~ 
	cp 00ah		;06c5	fe 0a 	. . 
	jr c,l0671h		;06c7	38 a8 	8 . 
	ld (hl),000h		;06c9	36 00 	6 . 
	ret			;06cb	c9 	. 
	ld hl,0c195h		;06cc	21 95 c1 	! . . 
	ld de,0c196h		;06cf	11 96 c1 	. . . 
	ld bc,l000bh		;06d2	01 0b 00 	. . . 
	ld (hl),000h		;06d5	36 00 	6 . 
	ldir		;06d7	ed b0 	. . 
	ret			;06d9	c9 	. 
l06dah:
	push af			;06da	f5 	. 
l06dbh:
	ld a,080h		;06db	3e 80 	> . 
	ld (0c195h),a		;06dd	32 95 c1 	2 . . 
l06e0h:
	pop af			;06e0	f1 	. 
	ret			;06e1	c9 	. 
sub_06e2h:
	push af			;06e2	f5 	. 
	push bc			;06e3	c5 	. 
	push de			;06e4	d5 	. 
	push hl			;06e5	e5 	. 
	ld hl,0c1a1h		;06e6	21 a1 c1 	! . . 
	ld de,l000ch		;06e9	11 0c 00 	. . . 
	ld b,00ah		;06ec	06 0a 	. . 
	ld c,a			;06ee	4f 	O 
	xor a			;06ef	af 	. 
l06f0h:
	cp (hl)			;06f0	be 	. 
	jr z,l06fch		;06f1	28 09 	( . 
	add hl,de			;06f3	19 	. 
	djnz l06f0h		;06f4	10 fa 	. . 
	pop hl			;06f6	e1 	. 
	pop de			;06f7	d1 	. 
	pop bc			;06f8	c1 	. 
	pop af			;06f9	f1 	. 
	scf			;06fa	37 	7 
	ret			;06fb	c9 	. 
l06fch:
	ld (hl),c			;06fc	71 	q 
	pop de			;06fd	d1 	. 
	inc hl			;06fe	23 	# 
	ld (hl),e			;06ff	73 	s 
l0700h:
	inc hl			;0700	23 	# 
	ld (hl),d			;0701	72 	r 
	pop hl			;0702	e1 	. 
	ex de,hl			;0703	eb 	. 
	pop bc			;0704	c1 	. 
	pop af			;0705	f1 	. 
	or a			;0706	b7 	. 
	ret			;0707	c9 	. 
sub_0708h:
	ldi		;0708	ed a0 	. . 
	ldi		;070a	ed a0 	. . 
	ldi		;070c	ed a0 	. . 
	ldi		;070e	ed a0 	. . 
	ldi		;0710	ed a0 	. . 
	ldi		;0712	ed a0 	. . 
	ldi		;0714	ed a0 	. . 
	ldi		;0716	ed a0 	. . 
	ldi		;0718	ed a0 	. . 
	ldi		;071a	ed a0 	. . 
	ldi		;071c	ed a0 	. . 
	ldi		;071e	ed a0 	. . 
	ret			;0720	c9 	. 
l0721h:
	call z,0cc06h		;0721	cc 06 cc 	. . . 
	ld b,0a4h		;0724	06 a4 	. . 
	ld hl,l217fh		;0726	21 7f 21 	!  ! 
	ld bc,08124h		;0729	01 24 81 	. $ . 
	inc hl			;072c	23 	# 
	ld bc,09724h		;072d	01 24 97 	. $ . 
	inc hl			;0730	23 	# 
	call c,0c824h		;0731	dc 24 c8 	. $ . 
	inc h			;0734	24 	$ 
	jr c,l075ch		;0735	38 25 	8 % 
	inc de			;0737	13 	. 
	dec h			;0738	25 	% 
	jp nc,0b325h		;0739	d2 25 b3 	. % . 
	dec h			;073c	25 	% 
	cp e			;073d	bb 	. 
	jr z,l06dbh		;073e	28 9b 	( . 
	jr z,l06e0h		;0740	28 9e 	( . 
	daa			;0742	27 	' 
	ld h,(hl)			;0743	66 	f 
	daa			;0744	27 	' 
	sbc a,(hl)			;0745	9e 	. 
	daa			;0746	27 	' 
	add a,d			;0747	82 	. 
	daa			;0748	27 	' 
	sbc a,(hl)			;0749	9e 	. 
	daa			;074a	27 	' 
	sub b			;074b	90 	. 
	daa			;074c	27 	' 
	sbc a,(hl)			;074d	9e 	. 
l074eh:
	daa			;074e	27 	' 
	ld (hl),h			;074f	74 	t 
	daa			;0750	27 	' 
	sub a			;0751	97 	. 
	add hl,hl			;0752	29 	) 
	ld (hl),a			;0753	77 	w 
	add hl,hl			;0754	29 	) 
	scf			;0755	37 	7 
	add hl,hl			;0756	29 	) 
	dec d			;0757	15 	. 
	add hl,hl			;0758	29 	) 
	add a,029h		;0759	c6 29 	. ) 
	and (hl)			;075b	a6 	. 
l075ch:
	add hl,hl			;075c	29 	) 
	ld l,b			;075d	68 	h 
	add hl,hl			;075e	29 	) 
	ld b,(hl)			;075f	46 	F 
	add hl,hl			;0760	29 	) 
	ld h,e			;0761	63 	c 
	ld hl,(l2a39h)		;0762	2a 39 2a 	* 9 * 
	ld h,e			;0765	63 	c 
	ld hl,(l29ech)		;0766	2a ec 29 	* . ) 
	ld h,e			;0769	63 	c 
	ld hl,(l29fch)		;076a	2a fc 29 	* . ) 
	ld h,e			;076d	63 	c 
	ld hl,(l2a0bh)		;076e	2a 0b 2a 	* . * 
	ld h,e			;0771	63 	c 
	ld hl,(l2a1ah)		;0772	2a 1a 2a 	* . * 
l0775h:
	ld b,02ch		;0775	06 2c 	. , 
	rst 18h			;0777	df 	. 
	dec hl			;0778	2b 	+ 
	ld c,l			;0779	4d 	M 
	inc l			;077a	2c 	, 
	cpl			;077b	2f 	/ 
	inc l			;077c	2c 	, 
	sbc a,h			;077d	9c 	. 
	inc l			;077e	2c 	, 
	ld a,(hl)			;077f	7e 	~ 
	inc l			;0780	2c 	, 
	ret po			;0781	e0 	. 
	inc l			;0782	2c 	, 
	ret nz			;0783	c0 	. 
	inc l			;0784	2c 	, 
	ld a,e			;0785	7b 	{ 
	jr nc,l0775h		;0786	30 ed 	0 . 
	cpl			;0788	2f 	/ 
	dec e			;0789	1d 	. 
	jr nc,l074eh		;078a	30 c2 	0 . 
	cpl			;078c	2f 	/ 
	ld d,d			;078d	52 	R 
	ld (l31ffh),a		;078e	32 ff 31 	2 . 1 
	ld d,d			;0791	52 	R 
	ld (l3218h),a		;0792	32 18 32 	2 . 2 
	ld a,b			;0795	78 	x 
	cpl			;0796	2f 	/ 
	ld c,e			;0797	4b 	K 
	cpl			;0798	2f 	/ 
	ld a,b			;0799	78 	x 
	cpl			;079a	2f 	/ 
	ld c,a			;079b	4f 	O 
	cpl			;079c	2f 	/ 
	ld a,b			;079d	78 	x 
	cpl			;079e	2f 	/ 
	ld d,e			;079f	53 	S 
	cpl			;07a0	2f 	/ 
	ld a,b			;07a1	78 	x 
	cpl			;07a2	2f 	/ 
	ld d,a			;07a3	57 	W 
	cpl			;07a4	2f 	/ 
	or c			;07a5	b1 	. 
	cpl			;07a6	2f 	/ 
	adc a,a			;07a7	8f 	. 
	cpl			;07a8	2f 	/ 
	and c			;07a9	a1 	. 
	ld d,e			;07aa	53 	S 
	ld a,c			;07ab	79 	y 
	ld d,e			;07ac	53 	S 
	ld hl,0042dh		;07ad	21 2d 04 	! - . 
	dec l			;07b0	2d 	- 
	and e			;07b1	a3 	. 
	ld d,h			;07b2	54 	T 
	ld e,(hl)			;07b3	5e 	^ 
	ld d,h			;07b4	54 	T 
	ex (sp),hl			;07b5	e3 	. 
	ld h,h			;07b6	64 	d 
	call nz,09264h		;07b7	c4 64 92 	. d . 
	ld d,l			;07ba	55 	U 
	halt			;07bb	76 	v 
	ld d,l			;07bc	55 	U 
	dec sp			;07bd	3b 	; 
	ld d,(hl)			;07be	56 	V 
	dec de			;07bf	1b 	. 
	ld d,(hl)			;07c0	56 	V 
	ld e,e			;07c1	5b 	[ 
	ld c,h			;07c2	4c 	L 
	sbc a,b			;07c3	98 	. 
	ld c,e			;07c4	4b 	K 
	jr nc,l07f5h		;07c5	30 2e 	0 . 
	dec c			;07c7	0d 	. 
	ld l,04ah		;07c8	2e 4a 	. J 
	ld l,00dh		;07ca	2e 0d 	. . 
	ld l,064h		;07cc	2e 64 	. d 
	ld l,00dh		;07ce	2e 0d 	. . 
	ld l,07eh		;07d0	2e 7e 	. ~ 
	ld l,00dh		;07d2	2e 0d 	. . 
	ld l,098h		;07d4	2e 98 	. . 
	ld l,00dh		;07d6	2e 0d 	. . 
	ld l,0b2h		;07d8	2e b2 	. . 
	ld l,00dh		;07da	2e 0d 	. . 
	ld l,0cch		;07dc	2e cc 	. . 
	ld c,l			;07de	4d 	M 
	xor c			;07df	a9 	. 
	ld c,l			;07e0	4d 	M 
	ld c,a			;07e1	4f 	O 
	inc sp			;07e2	33 	3 
	jr z,$+53		;07e3	28 33 	( 3 
	add hl,de			;07e5	19 	. 
	inc (hl)			;07e6	34 	4 
	inc bc			;07e7	03 	. 
	inc (hl)			;07e8	34 	4 
	ld (de),a			;07e9	12 	. 
	ld d,a			;07ea	57 	W 
	jp 0cd56h		;07eb	c3 56 cd 	. V . 
	ld l,b			;07ee	68 	h 
	jp m,05267h		;07ef	fa 67 52 	. g R 
	ld (l31c7h),a		;07f2	32 c7 31 	2 . 1 
l07f5h:
	rst 8			;07f5	cf 	. 
	inc hl			;07f6	23 	# 
	ld h,b			;07f7	60 	` 
	inc hl			;07f8	23 	# 
	sub l			;07f9	95 	. 
	ld l,e			;07fa	6b 	k 
	ld l,(hl)			;07fb	6e 	n 
	ld l,e			;07fc	6b 	k 
	ld d,d			;07fd	52 	R 
	ld (l31e3h),a		;07fe	32 e3 31 	2 . 1 
	sbc a,(hl)			;0801	9e 	. 
	ld d,h			;0802	54 	T 
	ld e,(hl)			;0803	5e 	^ 
l0804h:
	ld d,h			;0804	54 	T 
	call p,0be58h		;0805	f4 58 be 	. X . 
	ld e,b			;0808	58 	X 
	call p,0d05bh		;0809	f4 5b d0 	. [ . 
	ld e,e			;080c	5b 	[ 
	ld (0c45ah),hl		;080d	22 5a c4 	" Z . 
	ld e,c			;0810	59 	Y 
	ld sp,l0f5bh		;0811	31 5b 0f 	1 [ . 
	ld e,e			;0814	5b 	[ 
	add a,d			;0815	82 	. 
	inc (hl)			;0816	34 	4 
	ld (hl),034h		;0817	36 34 	6 4 
	call m,0dd26h		;0819	fc 26 dd 	. & . 
	ld h,0c2h		;081c	26 c2 	& . 
	daa			;081e	27 	' 
	and d			;081f	a2 	. 
	daa			;0820	27 	' 
	sbc a,d			;0821	9a 	. 
	scf			;0822	37 	7 
	dec h			;0823	25 	% 
	scf			;0824	37 	7 
	ld b,035h		;0825	06 35 	. 5 
	ex (sp),hl			;0827	e3 	. 
	inc (hl)			;0828	34 	4 
	xor d			;0829	aa 	. 
	ld e,h			;082a	5c 	\ 
	add a,h			;082b	84 	. 
	ld e,h			;082c	5c 	\ 
	sub b			;082d	90 	. 
	ld h,l			;082e	65 	e 
	ld (hl),c			;082f	71 	q 
	ld h,l			;0830	65 	e 
	ld c,(hl)			;0831	4e 	N 
	ld h,(hl)			;0832	66 	f 
	ld de,0fb66h		;0833	11 66 fb 	. f . 
	ld e,h			;0836	5c 	\ 
	push de			;0837	d5 	. 
	ld e,h			;0838	5c 	\ 
	jp po,0be58h		;0839	e2 58 be 	. X . 
	ld e,b			;083c	58 	X 
	ld c,(hl)			;083d	4e 	N 
	ld h,(hl)			;083e	66 	f 
	jr nz,l08a7h		;083f	20 66 	  f 
	call p,0a935h		;0841	f4 35 a9 	. 5 . 
l0844h:
	dec (hl)			;0844	35 	5 
	cp l			;0845	bd 	. 
	dec (hl)			;0846	35 	5 
	ld l,(hl)			;0847	6e 	n 
	dec (hl)			;0848	35 	5 
	cp l			;0849	bd 	. 
	dec (hl)			;084a	35 	5 
	ld a,(hl)			;084b	7e 	~ 
	dec (hl)			;084c	35 	5 
	cp l			;084d	bd 	. 
	dec (hl)			;084e	35 	5 
	sub c			;084f	91 	. 
	dec (hl)			;0850	35 	5 
	cp l			;0851	bd 	. 
	dec (hl)			;0852	35 	5 
	sub h			;0853	94 	. 
	dec (hl)			;0854	35 	5 
	and l			;0855	a5 	. 
	ld c,c			;0856	49 	I 
	ld h,a			;0857	67 	g 
	ld c,c			;0858	49 	I 
	ld d,l			;0859	55 	U 
	ld e,l			;085a	5d 	] 
	dec l			;085b	2d 	- 
	ld e,l			;085c	5d 	] 
	ld c,(hl)			;085d	4e 	N 
	ld h,(hl)			;085e	66 	f 
	cpl			;085f	2f 	/ 
	ld h,(hl)			;0860	66 	f 
	ex (sp),hl			;0861	e3 	. 
	ld h,h			;0862	64 	d 
	cp a			;0863	bf 	. 
	ld h,h			;0864	64 	d 
	ld h,c			;0865	61 	a 
	dec l			;0866	2d 	- 
	ld b,d			;0867	42 	B 
	dec l			;0868	2d 	- 
	ld h,c			;0869	61 	a 
	dec l			;086a	2d 	- 
	ld b,d			;086b	42 	B 
l086ch:
	dec l			;086c	2d 	- 
	ld (0b45ah),hl		;086d	22 5a b4 	" Z . 
	ld e,c			;0870	59 	Y 
	inc h			;0871	24 	$ 
	ld l,h			;0872	6c 	l 
	rlca			;0873	07 	. 
	ld l,h			;0874	6c 	l 
	ld bc,0e267h		;0875	01 67 e2 	. g . 
	ld h,(hl)			;0878	66 	f 
	ld a,e			;0879	7b 	{ 
	ld l,h			;087a	6c 	l 
	ld a,e			;087b	7b 	{ 
	ld l,h			;087c	6c 	l 
	sbc a,a			;087d	9f 	. 
	ld c,(hl)			;087e	4e 	N 
	ld a,c			;087f	79 	y 
	ld c,(hl)			;0880	4e 	N 
	xor 05dh		;0881	ee 5d 	. ] 
	adc a,h			;0883	8c 	. 
	ld e,l			;0884	5d 	] 
	sbc a,a			;0885	9f 	. 
	ld c,(hl)			;0886	4e 	N 
	ld a,c			;0887	79 	y 
	ld c,(hl)			;0888	4e 	N 
	ld d,04fh		;0889	16 4f 	. O 
	or 04eh		;088b	f6 4e 	. N 
	and e			;088d	a3 	. 
	ld c,a			;088e	4f 	O 
	ld h,l			;088f	65 	e 
	ld c,a			;0890	4f 	O 
	sbc a,(hl)			;0891	9e 	. 
	daa			;0892	27 	' 
	ld hl,(09e27h)		;0893	2a 27 9e 	* ' . 
	daa			;0896	27 	' 
	ld c,b			;0897	48 	H 
	daa			;0898	27 	' 
	jp nz,08936h		;0899	c2 36 89 	. 6 . 
	ld (hl),0a9h		;089c	36 a9 	6 . 
	ld (hl),072h		;089e	36 72 	6 r 
	ld (hl),0cch		;08a0	36 cc 	6 . 
	ld l,00dh		;08a2	2e 0d 	. . 
	ld l,074h		;08a4	2e 74 	. t 
	ld e,l			;08a6	5d 	] 
l08a7h:
	dec l			;08a7	2d 	- 
	ld e,l			;08a8	5d 	] 
	sub (hl)			;08a9	96 	. 
	ld l,h			;08aa	6c 	l 
	sub (hl)			;08ab	96 	. 
	ld l,h			;08ac	6c 	l 
	jp z,09b28h		;08ad	ca 28 9b 	. ( . 
	jr z,l0844h		;08b0	28 92 	( . 
	ld d,h			;08b2	54 	T 
	ld e,(hl)			;08b3	5e 	^ 
	ld d,h			;08b4	54 	T 
	sbc a,c			;08b5	99 	. 
	ld d,h			;08b6	54 	T 
	ld e,(hl)			;08b7	5e 	^ 
l08b8h:
	ld d,h			;08b8	54 	T 
	dec c			;08b9	0d 	. 
	ld d,a			;08ba	57 	W 
	jp 0a556h		;08bb	c3 56 a5 	. V . 
	ld e,h			;08be	5c 	\ 
	add a,h			;08bf	84 	. 
	ld e,h			;08c0	5c 	\ 
	ld a,(hl)			;08c1	7e 	~ 
	ld h,a			;08c2	67 	g 
	ld e,h			;08c3	5c 	\ 
	ld h,a			;08c4	67 	g 
	ei			;08c5	fb 	. 
	scf			;08c6	37 	7 
	defb 0ddh,037h,0a5h	;illegal sequence		;08c7	dd 37 a5 	. 7 . 
	jr c,l086ch		;08ca	38 a0 	8 . 
	jr c,l08b8h		;08cc	38 ea 	8 . 
	ld l,00dh		;08ce	2e 0d 	. . 
	ld l,004h		;08d0	2e 04 	. . 
	add hl,sp			;08d2	39 	9 
	call m,06338h		;08d3	fc 38 63 	. 8 c 
	ld hl,(l29d5h)		;08d6	2a d5 29 	* . ) 
	jp c,06d06h		;08d9	da 06 6d 	. . m 
	ld c,(hl)			;08dc	4e 	N 
	inc b			;08dd	04 	. 
	add hl,sp			;08de	39 	9 
	ld bc,0a139h		;08df	01 39 a1 	. 9 . 
	ld d,e			;08e2	53 	S 
	ld (hl),h			;08e3	74 	t 
	ld d,e			;08e4	53 	S 
	inc b			;08e5	04 	. 
	cpl			;08e6	2f 	/ 
	dec c			;08e7	0d 	. 
	ld l,0dah		;08e8	2e da 	. . 
	ld b,007h		;08ea	06 07 	. . 
	add hl,sp			;08ec	39 	9 
	jp c,l1606h		;08ed	da 06 16 	. . . 
	add hl,sp			;08f0	39 	9 
	jp c,l1e06h		;08f1	da 06 1e 	. . . 
	add hl,sp			;08f4	39 	9 
	jp c,l2205h+1		;08f5	da 06 22 	. . " 
	add hl,sp			;08f8	39 	9 
	jp c,l2606h		;08f9	da 06 26 	. . & 
	add hl,sp			;08fc	39 	9 
	jp c,02a06h		;08fd	da 06 2a 	. . * 
	add hl,sp			;0900	39 	9 
l0901h:
	ld bc,l098dh		;0901	01 8d 09 	. . . 
	ld (bc),a			;0904	02 	. 
	adc a,a			;0905	8f 	. 
	add hl,bc			;0906	09 	. 
	inc bc			;0907	03 	. 
	sub e			;0908	93 	. 
	add hl,bc			;0909	09 	. 
	inc b			;090a	04 	. 
	sbc a,c			;090b	99 	. 
	add hl,bc			;090c	09 	. 
	inc c			;090d	0c 	. 
	add hl,de			;090e	19 	. 
	ld a,(bc)			;090f	0a 	. 
	ld b,0a1h		;0910	06 a1 	. . 
	add hl,bc			;0912	09 	. 
	add hl,bc			;0913	09 	. 
	xor l			;0914	ad 	. 
	add hl,bc			;0915	09 	. 
	inc c			;0916	0c 	. 
l0917h:
	pop de			;0917	d1 	. 
	add hl,bc			;0918	09 	. 
	ex af,af'			;0919	08 	. 
	jp (hl)			;091a	e9 	. 
	add hl,bc			;091b	09 	. 
	djnz l0917h		;091c	10 f9 	. . 
	add hl,bc			;091e	09 	. 
	rlca			;091f	07 	. 
	ld sp,l060ah		;0920	31 0a 06 	1 . . 
	ld sp,l020ah		;0923	31 0a 02 	1 . . 
	ld (hl),c			;0926	71 	q 
	ld a,(bc)			;0927	0a 	. 
	ex af,af'			;0928	08 	. 
	ld (hl),l			;0929	75 	u 
	ld a,(bc)			;092a	0a 	. 
sub_092bh:
	ld e,a			;092b	5f 	_ 
	add a,a			;092c	87 	. 
	add a,e			;092d	83 	. 
	ld e,a			;092e	5f 	_ 
	ld d,000h		;092f	16 00 	. . 
	ld hl,l0901h		;0931	21 01 09 	! . . 
	add hl,de			;0934	19 	. 
	ld b,(hl)			;0935	46 	F 
	inc hl			;0936	23 	# 
	ld a,(hl)			;0937	7e 	~ 
	inc hl			;0938	23 	# 
	ld h,(hl)			;0939	66 	f 
	ld l,a			;093a	6f 	o 
	ld a,b			;093b	78 	x 
	exx			;093c	d9 	. 
	call sub_0948h		;093d	cd 48 09 	. H . 
	ret c			;0940	d8 	. 
	exx			;0941	d9 	. 
	call sub_096bh		;0942	cd 6b 09 	. k . 
	exx			;0945	d9 	. 
	or a			;0946	b7 	. 
	ret			;0947	c9 	. 
sub_0948h:
	ld b,024h		;0948	06 24 	. $ 
	ld hl,0ca02h		;094a	21 02 ca 	! . . 
	ld de,0ffe0h		;094d	11 e0 ff 	. . . 
	ld c,a			;0950	4f 	O 
l0951h:
	bit 7,(hl)		;0951	cb 7e 	. ~ 
	jr nz,l0965h		;0953	20 10 	  . 
	dec a			;0955	3d 	= 
	jr nz,l0966h		;0956	20 0e 	  . 
	dec hl			;0958	2b 	+ 
	dec hl			;0959	2b 	+ 
	ld de,(0c196h)		;095a	ed 5b 96 c1 	. [ . . 
	ld (0c196h),hl		;095e	22 96 c1 	" . . 
	ld a,01bh		;0961	3e 1b 	> . 
	add a,b			;0963	80 	. 
	ret			;0964	c9 	. 
l0965h:
	ld a,c			;0965	79 	y 
l0966h:
	add hl,de			;0966	19 	. 
	djnz l0951h		;0967	10 e8 	. . 
	scf			;0969	37 	7 
	ret			;096a	c9 	. 
sub_096bh:
	ld de,(0c196h)		;096b	ed 5b 96 c1 	. [ . . 
	or 080h		;096f	f6 80 	. . 
sub_0971h:
	ex af,af'			;0971	08 	. 
	ld a,080h		;0972	3e 80 	> . 
	ex af,af'			;0974	08 	. 
l0975h:
	push bc			;0975	c5 	. 
	ldi		;0976	ed a0 	. . 
	ldi		;0978	ed a0 	. . 
	ex de,hl			;097a	eb 	. 
	ex af,af'			;097b	08 	. 
	ld (hl),a			;097c	77 	w 
	set 6,a		;097d	cb f7 	. . 
	ex af,af'			;097f	08 	. 
	ld bc,l000bh		;0980	01 0b 00 	. . . 
	add hl,bc			;0983	09 	. 
	ld (hl),a			;0984	77 	w 
	ld c,013h		;0985	0e 13 	. . 
	add hl,bc			;0987	09 	. 
	ex de,hl			;0988	eb 	. 
	pop bc			;0989	c1 	. 
	djnz l0975h		;098a	10 e9 	. . 
	ret			;098c	c9 	. 
l098dh:
	nop			;098d	00 	. 
	nop			;098e	00 	. 
	nop			;098f	00 	. 
	call m,sub_0400h		;0990	fc 00 04 	. . . 
	nop			;0993	00 	. 
	ret m			;0994	f8 	. 
	nop			;0995	00 	. 
	nop			;0996	00 	. 
	nop			;0997	00 	. 
	ex af,af'			;0998	08 	. 
l0999h:
	call m,0fcfch		;0999	fc fc fc 	. . . 
	inc b			;099c	04 	. 
	inc b			;099d	04 	. 
	call m,sub_0404h		;099e	fc 04 04 	. . . 
	ret m			;09a1	f8 	. 
	call m,sub_04f7h+1		;09a2	fc f8 04 	. . . 
	nop			;09a5	00 	. 
	call m,sub_0400h		;09a6	fc 00 04 	. . . 
	ex af,af'			;09a9	08 	. 
	call m,l0408h		;09aa	fc 08 04 	. . . 
	ret m			;09ad	f8 	. 
	ret m			;09ae	f8 	. 
	ret m			;09af	f8 	. 
	nop			;09b0	00 	. 
	ret m			;09b1	f8 	. 
	ex af,af'			;09b2	08 	. 
	nop			;09b3	00 	. 
	ret m			;09b4	f8 	. 
	nop			;09b5	00 	. 
	nop			;09b6	00 	. 
	nop			;09b7	00 	. 
	ex af,af'			;09b8	08 	. 
	ex af,af'			;09b9	08 	. 
	ret m			;09ba	f8 	. 
	ex af,af'			;09bb	08 	. 
	nop			;09bc	00 	. 
	ex af,af'			;09bd	08 	. 
	ex af,af'			;09be	08 	. 
	call p,0f4f4h		;09bf	f4 f4 f4 	. . . 
	nop			;09c2	00 	. 
	call p,l000ch		;09c3	f4 0c 00 	. . . 
	call p,l0000h		;09c6	f4 00 00 	. . . 
	nop			;09c9	00 	. 
	inc c			;09ca	0c 	. 
	inc c			;09cb	0c 	. 
	call p,l000ch		;09cc	f4 0c 00 	. . . 
	inc c			;09cf	0c 	. 
	inc c			;09d0	0c 	. 
l09d1h:
	call p,0f4f8h		;09d1	f4 f8 f4 	. . . 
	nop			;09d4	00 	. 
	call p,0fc08h		;09d5	f4 08 fc 	. . . 
	ret m			;09d8	f8 	. 
	call m,0fc00h		;09d9	fc 00 fc 	. . . 
	ex af,af'			;09dc	08 	. 
	inc b			;09dd	04 	. 
	ret m			;09de	f8 	. 
	inc b			;09df	04 	. 
	nop			;09e0	00 	. 
	inc b			;09e1	04 	. 
	ex af,af'			;09e2	08 	. 
	inc c			;09e3	0c 	. 
	ret m			;09e4	f8 	. 
	inc c			;09e5	0c 	. 
	nop			;09e6	00 	. 
	inc c			;09e7	0c 	. 
	ex af,af'			;09e8	08 	. 
	nop			;09e9	00 	. 
	call po,0ec00h		;09ea	e4 00 ec 	. . . 
	nop			;09ed	00 	. 
	call p,0fc00h		;09ee	f4 00 fc 	. . . 
	nop			;09f1	00 	. 
	inc b			;09f2	04 	. 
	nop			;09f3	00 	. 
	inc c			;09f4	0c 	. 
	nop			;09f5	00 	. 
	inc d			;09f6	14 	. 
	nop			;09f7	00 	. 
	inc e			;09f8	1c 	. 
	call m,0fce4h		;09f9	fc e4 fc 	. . . 
	call pe,0f4fch		;09fc	ec fc f4 	. . . 
	call m,0fcfch		;09ff	fc fc fc 	. . . 
	inc b			;0a02	04 	. 
	call m,0fc0ch		;0a03	fc 0c fc 	. . . 
	inc d			;0a06	14 	. 
	call m,sub_041ch		;0a07	fc 1c 04 	. . . 
	call po,0ec04h		;0a0a	e4 04 ec 	. . . 
	inc b			;0a0d	04 	. 
	call p,0fc04h		;0a0e	f4 04 fc 	. . . 
	inc b			;0a11	04 	. 
	inc b			;0a12	04 	. 
	inc b			;0a13	04 	. 
	inc c			;0a14	0c 	. 
	inc b			;0a15	04 	. 
	inc d			;0a16	14 	. 
	inc b			;0a17	04 	. 
	inc e			;0a18	1c 	. 
	call m,0fcf4h		;0a19	fc f4 fc 	. . . 
	ret m			;0a1c	f8 	. 
	call m,0fcfch		;0a1d	fc fc fc 	. . . 
	inc b			;0a20	04 	. 
	call m,0fc08h		;0a21	fc 08 fc 	. . . 
	inc c			;0a24	0c 	. 
	inc b			;0a25	04 	. 
	call p,0f804h		;0a26	f4 04 f8 	. . . 
	inc b			;0a29	04 	. 
	call m,sub_0404h		;0a2a	fc 04 04 	. . . 
	inc b			;0a2d	04 	. 
	ex af,af'			;0a2e	08 	. 
	inc b			;0a2f	04 	. 
	inc c			;0a30	0c 	. 
	call m,0fcf8h		;0a31	fc f8 fc 	. . . 
	nop			;0a34	00 	. 
	call m,l0408h		;0a35	fc 08 04 	. . . 
	ret m			;0a38	f8 	. 
	inc b			;0a39	04 	. 
	nop			;0a3a	00 	. 
	inc b			;0a3b	04 	. 
	ex af,af'			;0a3c	08 	. 
	inc c			;0a3d	0c 	. 
	nop			;0a3e	00 	. 
	ret p			;0a3f	f0 	. 
	ret p			;0a40	f0 	. 
	ret p			;0a41	f0 	. 
l0a42h:
	ret m			;0a42	f8 	. 
	ret p			;0a43	f0 	. 
	nop			;0a44	00 	. 
	ret p			;0a45	f0 	. 
	ex af,af'			;0a46	08 	. 
	ret p			;0a47	f0 	. 
	djnz l0a42h		;0a48	10 f8 	. . 
	ret p			;0a4a	f0 	. 
	ret m			;0a4b	f8 	. 
	ret m			;0a4c	f8 	. 
	ret m			;0a4d	f8 	. 
	nop			;0a4e	00 	. 
	ret m			;0a4f	f8 	. 
	ex af,af'			;0a50	08 	. 
	ret m			;0a51	f8 	. 
	djnz l0a54h		;0a52	10 00 	. . 
l0a54h:
	ret p			;0a54	f0 	. 
	nop			;0a55	00 	. 
	ret m			;0a56	f8 	. 
	nop			;0a57	00 	. 
	nop			;0a58	00 	. 
	nop			;0a59	00 	. 
	ex af,af'			;0a5a	08 	. 
	nop			;0a5b	00 	. 
	djnz l0a66h		;0a5c	10 08 	. . 
	ret p			;0a5e	f0 	. 
	ex af,af'			;0a5f	08 	. 
	ret m			;0a60	f8 	. 
	ex af,af'			;0a61	08 	. 
	nop			;0a62	00 	. 
l0a63h:
	ex af,af'			;0a63	08 	. 
	ex af,af'			;0a64	08 	. 
	ex af,af'			;0a65	08 	. 
l0a66h:
	djnz l0a78h		;0a66	10 10 	. . 
	ret p			;0a68	f0 	. 
	djnz l0a63h		;0a69	10 f8 	. . 
	djnz l0a6dh		;0a6b	10 00 	. . 
l0a6dh:
	djnz $+10		;0a6d	10 08 	. . 
	djnz l0a81h		;0a6f	10 10 	. . 
	call m,sub_0400h		;0a71	fc 00 04 	. . . 
	nop			;0a74	00 	. 
	call p,0f4fch		;0a75	f4 fc f4 	. . . 
l0a78h:
	inc b			;0a78	04 	. 
	call m,0fcfch		;0a79	fc fc fc 	. . . 
	inc b			;0a7c	04 	. 
	inc b			;0a7d	04 	. 
	call m,sub_0404h		;0a7e	fc 04 04 	. . . 
l0a81h:
	inc c			;0a81	0c 	. 
	call m,0040ch		;0a82	fc 0c 04 	. . . 
	jp m,0fafah		;0a85	fa fa fa 	. . . 
	ld b,006h		;0a88	06 06 	. . 
	call po,0ec06h		;0a8a	e4 06 ec 	. . . 
	ld b,0f4h		;0a8d	06 f4 	. . 
	ld b,0fch		;0a8f	06 fc 	. . 
	ld b,004h		;0a91	06 04 	. . 
	ld b,00ch		;0a93	06 0c 	. . 
	ld b,014h		;0a95	06 14 	. . 
	ld b,01ch		;0a97	06 1c 	. . 
sub_0a99h:
	push hl			;0a99	e5 	. 
	push bc			;0a9a	c5 	. 
	ld hl,0c002h		;0a9b	21 02 c0 	! . . 
	ld b,003h		;0a9e	06 03 	. . 
l0aa0h:
	cp (hl)			;0aa0	be 	. 
	jr z,l0aaeh		;0aa1	28 0b 	( . 
	ld c,(hl)			;0aa3	4e 	N 
	inc c			;0aa4	0c 	. 
	dec c			;0aa5	0d 	. 
	jr nz,l0aabh		;0aa6	20 03 	  . 
	ld (hl),a			;0aa8	77 	w 
	jr l0aaeh		;0aa9	18 03 	. . 
l0aabh:
	inc hl			;0aab	23 	# 
	djnz l0aa0h		;0aac	10 f2 	. . 
l0aaeh:
	pop bc			;0aae	c1 	. 
	pop hl			;0aaf	e1 	. 
	ret			;0ab0	c9 	. 
sub_0ab1h:
	push af			;0ab1	f5 	. 
	push ix		;0ab2	dd e5 	. . 
	push hl			;0ab4	e5 	. 
	push de			;0ab5	d5 	. 
	push bc			;0ab6	c5 	. 
	ld hl,0c002h		;0ab7	21 02 c0 	! . . 
	xor a			;0aba	af 	. 
	ld (hl),a			;0abb	77 	w 
	inc hl			;0abc	23 	# 
	ld (hl),a			;0abd	77 	w 
	inc hl			;0abe	23 	# 
	ld (hl),a			;0abf	77 	w 
	call 07159h		;0ac0	cd 59 71 	. Y q 
	pop bc			;0ac3	c1 	. 
	pop de			;0ac4	d1 	. 
	pop hl			;0ac5	e1 	. 
	pop ix		;0ac6	dd e1 	. . 
	pop af			;0ac8	f1 	. 
	ret			;0ac9	c9 	. 
sub_0acah:
	ld bc,l0008h		;0aca	01 08 00 	. . . 
	call sub_003bh		;0acd	cd 3b 00 	. ; . 
	ld bc,l0008h+1		;0ad0	01 09 00 	. . . 
	call sub_003bh		;0ad3	cd 3b 00 	. ; . 
	ret			;0ad6	c9 	. 
sub_0ad7h:
	ld bc,00084h		;0ad7	01 84 00 	. . . 
	ld hl,0c194h		;0ada	21 94 c1 	! . . 
	ld de,0c195h		;0add	11 95 c1 	. . . 
	ld (hl),000h		;0ae0	36 00 	6 . 
	ldir		;0ae2	ed b0 	. . 
	ret			;0ae4	c9 	. 
sub_0ae5h:
	ld bc,01238h		;0ae5	01 38 12 	. 8 . 
	ld hl,0c163h		;0ae8	21 63 c1 	! c . 
	ld de,0c164h		;0aeb	11 64 c1 	. d . 
	ld (hl),000h		;0aee	36 00 	6 . 
	ldir		;0af0	ed b0 	. . 
	ret			;0af2	c9 	. 
sub_0af3h:
	ld hl,0c220h		;0af3	21 20 c2 	!   . 
	ld de,0c221h		;0af6	11 21 c2 	. ! . 
	ld bc,007ffh		;0af9	01 ff 07 	. . . 
	ld (hl),000h		;0afc	36 00 	6 . 
	ldir		;0afe	ed b0 	. . 
l0b00h:
	ret			;0b00	c9 	. 
sub_0b01h:
	ld a,003h		;0b01	3e 03 	> . 
	call sub_0b13h		;0b03	cd 13 0b 	. . . 
	ld hl,09b6ah		;0b06	21 6a 9b 	! j . 
	ld de,l0020h		;0b09	11 20 00 	.   . 
	ld bc,l05dfh+1		;0b0c	01 e0 05 	. . . 
	call sub_0422h		;0b0f	cd 22 04 	. " . 
	ret			;0b12	c9 	. 
sub_0b13h:
	ld (0ffffh),a		;0b13	32 ff ff 	2 . . 
	ret			;0b16	c9 	. 
sub_0b17h:
	ld a,(0dfffh)		;0b17	3a ff df 	: . . 
	ret			;0b1a	c9 	. 
sub_0b1bh:
	ld hl,0c11eh		;0b1b	21 1e c1 	! . . 
	ld de,0c11fh		;0b1e	11 1f c1 	. . . 
	ld bc,0127dh		;0b21	01 7d 12 	. } . 
	ld (hl),000h		;0b24	36 00 	6 . 
	ldir		;0b26	ed b0 	. . 
	ld a,003h		;0b28	3e 03 	> . 
	ld (0c12dh),a		;0b2a	32 2d c1 	2 - . 
	ld (0c143h),a		;0b2d	32 43 c1 	2 C . 
	ld (0c159h),a		;0b30	32 59 c1 	2 Y . 
	ret			;0b33	c9 	. 
	ld hl,0c520h		;0b34	21 20 c5 	!   . 
	ld de,0c521h		;0b37	11 21 c5 	. ! . 
	ld bc,004ffh		;0b3a	01 ff 04 	. . . 
	jr l0b48h		;0b3d	18 09 	. . 
	ld hl,0c4a0h		;0b3f	21 a0 c4 	! . . 
	ld de,0c4a1h		;0b42	11 a1 c4 	. . . 
	ld bc,l057fh		;0b45	01 7f 05 	.  . 
l0b48h:
	ld (hl),000h		;0b48	36 00 	6 . 
	ldir		;0b4a	ed b0 	. . 
	ld hl,0c1a1h		;0b4c	21 a1 c1 	! . . 
	ld de,0c1a2h		;0b4f	11 a2 c1 	. . . 
	ld bc,l0077h		;0b52	01 77 00 	. w . 
	ld (hl),000h		;0b55	36 00 	6 . 
	ldir		;0b57	ed b0 	. . 
	ld ix,0c4a0h		;0b59	dd 21 a0 c4 	. ! . . 
	ld (ix+00dh),014h		;0b5d	dd 36 0d 14 	. 6 . . 
	ld b,02ch		;0b61	06 2c 	. , 
	call l057fh		;0b63	cd 7f 05 	.  . 
	ret			;0b66	c9 	. 
sub_0b67h:
	push bc			;0b67	c5 	. 
	ld a,004h		;0b68	3e 04 	> . 
	call sub_0b13h		;0b6a	cd 13 0b 	. . . 
	ld a,c			;0b6d	79 	y 
	add a,a			;0b6e	87 	. 
	add a,a			;0b6f	87 	. 
	ld l,a			;0b70	6f 	o 
	ld h,000h		;0b71	26 00 	& . 
	ld de,l0f9bh		;0b73	11 9b 0f 	. . . 
	add hl,de			;0b76	19 	. 
	ld e,(hl)			;0b77	5e 	^ 
	inc hl			;0b78	23 	# 
	ld d,(hl)			;0b79	56 	V 
	inc hl			;0b7a	23 	# 
	ld a,(hl)			;0b7b	7e 	~ 
	inc hl			;0b7c	23 	# 
	ld h,(hl)			;0b7d	66 	f 
	ld l,a			;0b7e	6f 	o 
	ld c,(hl)			;0b7f	4e 	N 
	inc hl			;0b80	23 	# 
	ld b,000h		;0b81	06 00 	. . 
	di			;0b83	f3 	. 
	call sub_0486h		;0b84	cd 86 04 	. . . 
	ei			;0b87	fb 	. 
	pop bc			;0b88	c1 	. 
	ret			;0b89	c9 	. 
sub_0b8ah:
	ld hl,l0bf1h		;0b8a	21 f1 0b 	! . . 
	ld de,0d373h		;0b8d	11 73 d3 	. s . 
	ld bc,l0011h		;0b90	01 11 00 	. . . 
	ldir		;0b93	ed b0 	. . 
	ld hl,l0c02h		;0b95	21 02 0c 	! . . 
	ld de,0d384h		;0b98	11 84 d3 	. . . 
	ld bc,l0011h		;0b9b	01 11 00 	. . . 
	ldir		;0b9e	ed b0 	. . 
	ld hl,0c114h		;0ba0	21 14 c1 	! . . 
	bit 6,(hl)		;0ba3	cb 76 	. v 
	ld a,002h		;0ba5	3e 02 	> . 
	jr z,l0babh		;0ba7	28 02 	( . 
	ld a,003h		;0ba9	3e 03 	> . 
l0babh:
	ld (0d38ch),a		;0bab	32 8c d3 	2 . . 
	ld hl,0d383h		;0bae	21 83 d3 	! . . 
	ld de,0c111h		;0bb1	11 11 c1 	. . . 
	call sub_0bcah		;0bb4	cd ca 0b 	. . . 
	ld hl,0d394h		;0bb7	21 94 d3 	! . . 
	ld de,0c121h		;0bba	11 21 c1 	. ! . 
	call sub_0bcah		;0bbd	cd ca 0b 	. . . 
	ld c,031h		;0bc0	0e 31 	. 1 
	call sub_0b67h		;0bc2	cd 67 0b 	. g . 
	inc c			;0bc5	0c 	. 
	call sub_0b67h		;0bc6	cd 67 0b 	. g . 
	ret			;0bc9	c9 	. 
sub_0bcah:
	ld (hl),001h		;0bca	36 01 	6 . 
	dec hl			;0bcc	2b 	+ 
	ld b,003h		;0bcd	06 03 	. . 
l0bcfh:
	ld a,(de)			;0bcf	1a 	. 
	ld c,a			;0bd0	4f 	O 
	and 00fh		;0bd1	e6 0f 	. . 
	add a,001h		;0bd3	c6 01 	. . 
	ld (hl),a			;0bd5	77 	w 
	dec hl			;0bd6	2b 	+ 
	ld a,c			;0bd7	79 	y 
	rrca			;0bd8	0f 	. 
	rrca			;0bd9	0f 	. 
	rrca			;0bda	0f 	. 
	rrca			;0bdb	0f 	. 
	and 00fh		;0bdc	e6 0f 	. . 
	add a,001h		;0bde	c6 01 	. . 
	ld (hl),a			;0be0	77 	w 
	dec hl			;0be1	2b 	+ 
	inc de			;0be2	13 	. 
	djnz l0bcfh		;0be3	10 ea 	. . 
	ld a,001h		;0be5	3e 01 	> . 
	ld bc,l0600h		;0be7	01 00 06 	. . . 
l0beah:
	inc hl			;0bea	23 	# 
	cp (hl)			;0beb	be 	. 
	ret nz			;0bec	c0 	. 
	ld (hl),c			;0bed	71 	q 
	djnz l0beah		;0bee	10 fa 	. . 
	ret			;0bf0	c9 	. 
l0bf1h:
	djnz $+46		;0bf1	10 2c 	. , 
	dec c			;0bf3	0d 	. 
	ld c,00fh		;0bf4	0e 0f 	. . 
	dec c			;0bf6	0d 	. 
	inc l			;0bf7	2c 	, 
	nop			;0bf8	00 	. 
	nop			;0bf9	00 	. 
	nop			;0bfa	00 	. 
	nop			;0bfb	00 	. 
	nop			;0bfc	00 	. 
	nop			;0bfd	00 	. 
	nop			;0bfe	00 	. 
	nop			;0bff	00 	. 
l0c00h:
	nop			;0c00	00 	. 
	nop			;0c01	00 	. 
l0c02h:
	djnz l0c10h		;0c02	10 0c 	. . 
	ld a,(de)			;0c04	1a 	. 
	dec d			;0c05	15 	. 
	rla			;0c06	17 	. 
	inc de			;0c07	13 	. 
	jr nz,l0c0ah		;0c08	20 00 	  . 
l0c0ah:
	nop			;0c0a	00 	. 
	nop			;0c0b	00 	. 
	nop			;0c0c	00 	. 
	nop			;0c0d	00 	. 
	nop			;0c0e	00 	. 
	nop			;0c0f	00 	. 
l0c10h:
	nop			;0c10	00 	. 
	nop			;0c11	00 	. 
	nop			;0c12	00 	. 
l0c13h:
	ret			;0c13	c9 	. 
l0c14h:
	push af			;0c14	f5 	. 
	push bc			;0c15	c5 	. 
	push de			;0c16	d5 	. 
	push hl			;0c17	e5 	. 
	ld c,a			;0c18	4f 	O 
	dec c			;0c19	0d 	. 
	call sub_0b17h		;0c1a	cd 17 0b 	. . . 
	push af			;0c1d	f5 	. 
	ld b,000h		;0c1e	06 00 	. . 
	ld l,c			;0c20	69 	i 
	ld h,b			;0c21	60 	` 
	add hl,hl			;0c22	29 	) 
	add hl,hl			;0c23	29 	) 
	add hl,bc			;0c24	09 	. 
	ld bc,l0c6ah		;0c25	01 6a 0c 	. j . 
	add hl,bc			;0c28	09 	. 
	ld a,(hl)			;0c29	7e 	~ 
	call sub_0b13h		;0c2a	cd 13 0b 	. . . 
	inc hl			;0c2d	23 	# 
	ld c,(hl)			;0c2e	4e 	N 
	inc hl			;0c2f	23 	# 
	ld b,(hl)			;0c30	46 	F 
	inc hl			;0c31	23 	# 
	push hl			;0c32	e5 	. 
	ld l,c			;0c33	69 	i 
	ld h,000h		;0c34	26 00 	& . 
	add hl,hl			;0c36	29 	) 
	add hl,hl			;0c37	29 	) 
	add hl,hl			;0c38	29 	) 
	add hl,hl			;0c39	29 	) 
	add hl,hl			;0c3a	29 	) 
	ld c,l			;0c3b	4d 	M 
	ld l,b			;0c3c	68 	h 
	ld b,h			;0c3d	44 	D 
	ld h,000h		;0c3e	26 00 	& . 
	add hl,hl			;0c40	29 	) 
	add hl,hl			;0c41	29 	) 
	add hl,hl			;0c42	29 	) 
	add hl,hl			;0c43	29 	) 
	add hl,hl			;0c44	29 	) 
	ld de,l2000h		;0c45	11 00 20 	. .   
	add hl,de			;0c48	19 	. 
	ex de,hl			;0c49	eb 	. 
	pop hl			;0c4a	e1 	. 
	ld a,(hl)			;0c4b	7e 	~ 
l0c4ch:
	inc hl			;0c4c	23 	# 
	ld h,(hl)			;0c4d	66 	f 
	ld l,a			;0c4e	6f 	o 
	ld a,(0cc84h)		;0c4f	3a 84 cc 	: . . 
	or a			;0c52	b7 	. 
	jr z,l0c56h		;0c53	28 01 	( . 
	di			;0c55	f3 	. 
l0c56h:
	call sub_046ch		;0c56	cd 6c 04 	. l . 
	ld a,(0cc84h)		;0c59	3a 84 cc 	: . . 
	or a			;0c5c	b7 	. 
	jr z,l0c60h		;0c5d	28 01 	( . 
	ei			;0c5f	fb 	. 
l0c60h:
	pop af			;0c60	f1 	. 
	call sub_0b13h		;0c61	cd 13 0b 	. . . 
	pop hl			;0c64	e1 	. 
	pop de			;0c65	d1 	. 
	pop bc			;0c66	c1 	. 
	pop af			;0c67	f1 	. 
	inc a			;0c68	3c 	< 
	ret			;0c69	c9 	. 
l0c6ah:
	inc b			;0c6a	04 	. 
	add hl,bc			;0c6b	09 	. 
	jr l0c6eh		;0c6c	18 00 	. . 
l0c6eh:
	add a,b			;0c6e	80 	. 
	inc b			;0c6f	04 	. 
	add hl,bc			;0c70	09 	. 
l0c71h:
	jr l0c93h		;0c71	18 20 	.   
	add a,c			;0c73	81 	. 
	inc b			;0c74	04 	. 
	add hl,bc			;0c75	09 	. 
	jr $+66		;0c76	18 40 	. @ 
	add a,d			;0c78	82 	. 
	inc b			;0c79	04 	. 
	add hl,bc			;0c7a	09 	. 
	jr l0cddh		;0c7b	18 60 	. ` 
	add a,e			;0c7d	83 	. 
	inc b			;0c7e	04 	. 
	add hl,bc			;0c7f	09 	. 
	jr l0c02h		;0c80	18 80 	. . 
	add a,h			;0c82	84 	. 
	inc b			;0c83	04 	. 
	add hl,bc			;0c84	09 	. 
	jr $-94		;0c85	18 a0 	. . 
	add a,l			;0c87	85 	. 
	inc b			;0c88	04 	. 
	add hl,bc			;0c89	09 	. 
	jr l0c4ch		;0c8a	18 c0 	. . 
	add a,(hl)			;0c8c	86 	. 
	inc b			;0c8d	04 	. 
	add hl,bc			;0c8e	09 	. 
	jr l0c71h		;0c8f	18 e0 	. . 
	add a,a			;0c91	87 	. 
	inc b			;0c92	04 	. 
l0c93h:
	add hl,bc			;0c93	09 	. 
	jr l0c96h		;0c94	18 00 	. . 
l0c96h:
	adc a,c			;0c96	89 	. 
	inc b			;0c97	04 	. 
	add hl,bc			;0c98	09 	. 
l0c99h:
	jr l0cbbh		;0c99	18 20 	.   
	adc a,d			;0c9b	8a 	. 
sub_0c9ch:
	inc b			;0c9c	04 	. 
	rrca			;0c9d	0f 	. 
	ld hl,08b40h		;0c9e	21 40 8b 	! @ . 
l0ca1h:
	inc b			;0ca1	04 	. 
l0ca2h:
	ld a,(bc)			;0ca2	0a 	. 
	jr nc,l0cc5h		;0ca3	30 20 	0   
	adc a,l			;0ca5	8d 	. 
	inc b			;0ca6	04 	. 
	rrca			;0ca7	0f 	. 
	ld hl,08e60h		;0ca8	21 60 8e 	! ` . 
	inc b			;0cab	04 	. 
	ld a,(bc)			;0cac	0a 	. 
	jr nc,l0cefh		;0cad	30 40 	0 @ 
	sub b			;0caf	90 	. 
	inc b			;0cb0	04 	. 
	rrca			;0cb1	0f 	. 
	ld hl,09400h		;0cb2	21 00 94 	! . . 
	inc b			;0cb5	04 	. 
	ld a,(bc)			;0cb6	0a 	. 
	jr nc,l0c99h		;0cb7	30 e0 	0 . 
	sub l			;0cb9	95 	. 
	inc b			;0cba	04 	. 
l0cbbh:
	rrca			;0cbb	0f 	. 
	ld hl,09720h		;0cbc	21 20 97 	!   . 
	inc b			;0cbf	04 	. 
	ld a,(bc)			;0cc0	0a 	. 
	jr nc,l0cc3h		;0cc1	30 00 	0 . 
l0cc3h:
	sbc a,c			;0cc3	99 	. 
	inc bc			;0cc4	03 	. 
l0cc5h:
	ld b,0abh		;0cc5	06 ab 	. . 
	sbc a,e			;0cc7	9b 	. 
	xor l			;0cc8	ad 	. 
	inc bc			;0cc9	03 	. 
	ld b,0b1h		;0cca	06 b1 	. . 
	ld e,e			;0ccc	5b 	[ 
	xor (hl)			;0ccd	ae 	. 
	inc b			;0cce	04 	. 
	inc c			;0ccf	0c 	. 
	xor e			;0cd0	ab 	. 
	adc a,l			;0cd1	8d 	. 
	cp d			;0cd2	ba 	. 
	inc b			;0cd3	04 	. 
	inc c			;0cd4	0c 	. 
	ld a,a			;0cd5	7f 	 
	dec c			;0cd6	0d 	. 
	cp c			;0cd7	b9 	. 
	inc bc			;0cd8	03 	. 
	inc c			;0cd9	0c 	. 
	adc a,e			;0cda	8b 	. 
	dec de			;0cdb	1b 	. 
	xor h			;0cdc	ac 	. 
l0cddh:
	inc bc			;0cdd	03 	. 
	inc b			;0cde	04 	. 
	jr nc,sub_0c9ch		;0cdf	30 bb 	0 . 
	and a			;0ce1	a7 	. 
	inc bc			;0ce2	03 	. 
	inc b			;0ce3	04 	. 
	jr nc,l0ca1h		;0ce4	30 bb 	0 . 
	xor b			;0ce6	a8 	. 
	inc b			;0ce7	04 	. 
	inc b			;0ce8	04 	. 
	inc l			;0ce9	2c 	, 
	xor l			;0cea	ad 	. 
	xor (hl)			;0ceb	ae 	. 
	inc b			;0cec	04 	. 
	inc b			;0ced	04 	. 
	inc e			;0cee	1c 	. 
l0cefh:
	dec l			;0cef	2d 	- 
	xor a			;0cf0	af 	. 
	inc b			;0cf1	04 	. 
	inc b			;0cf2	04 	. 
	jr z,l0ca2h		;0cf3	28 ad 	( . 
	or b			;0cf5	b0 	. 
	inc b			;0cf6	04 	. 
	inc b			;0cf7	04 	. 
	jr nz,l0d27h		;0cf8	20 2d 	  - 
	or b			;0cfa	b0 	. 
	inc b			;0cfb	04 	. 
	inc b			;0cfc	04 	. 
	inc h			;0cfd	24 	$ 
	xor l			;0cfe	ad 	. 
	xor a			;0cff	af 	. 
	inc b			;0d00	04 	. 
	inc b			;0d01	04 	. 
	ld c,b			;0d02	48 	H 
	cp l			;0d03	bd 	. 
	and (hl)			;0d04	a6 	. 
	inc b			;0d05	04 	. 
	ex af,af'			;0d06	08 	. 
	ld b,b			;0d07	40 	@ 
	dec c			;0d08	0d 	. 
	cp h			;0d09	bc 	. 
	inc b			;0d0a	04 	. 
	ld (bc),a			;0d0b	02 	. 
	inc (hl)			;0d0c	34 	4 
	call 004ach		;0d0d	cd ac 04 	. . . 
	ld (bc),a			;0d10	02 	. 
	ld (hl),00dh		;0d11	36 0d 	6 . 
	xor l			;0d13	ad 	. 
	inc b			;0d14	04 	. 
	ld (bc),a			;0d15	02 	. 
	jr c,l0d65h		;0d16	38 4d 	8 M 
	xor l			;0d18	ad 	. 
	inc b			;0d19	04 	. 
	ld (bc),a			;0d1a	02 	. 
	ld a,(0ad8dh)		;0d1b	3a 8d ad 	: . . 
	inc b			;0d1e	04 	. 
	inc bc			;0d1f	03 	. 
	jr nz,l0d6fh		;0d20	20 4d 	  M 
	xor (hl)			;0d22	ae 	. 
	inc b			;0d23	04 	. 
	ex af,af'			;0d24	08 	. 
	ld d,h			;0d25	54 	T 
	dec c			;0d26	0d 	. 
l0d27h:
	cp l			;0d27	bd 	. 
	inc b			;0d28	04 	. 
	ex af,af'			;0d29	08 	. 
	ld e,h			;0d2a	5c 	\ 
	dec c			;0d2b	0d 	. 
	cp (hl)			;0d2c	be 	. 
	rlca			;0d2d	07 	. 
	ex af,af'			;0d2e	08 	. 
	ld d,h			;0d2f	54 	T 
	sbc a,b			;0d30	98 	. 
	or b			;0d31	b0 	. 
	rlca			;0d32	07 	. 
	ex af,af'			;0d33	08 	. 
	ld e,h			;0d34	5c 	\ 
	sbc a,b			;0d35	98 	. 
	or c			;0d36	b1 	. 
	rlca			;0d37	07 	. 
	ex af,af'			;0d38	08 	. 
	ld d,h			;0d39	54 	T 
	sbc a,b			;0d3a	98 	. 
	or d			;0d3b	b2 	. 
	rlca			;0d3c	07 	. 
	ex af,af'			;0d3d	08 	. 
	ld e,h			;0d3e	5c 	\ 
	sbc a,b			;0d3f	98 	. 
	or e			;0d40	b3 	. 
	rlca			;0d41	07 	. 
	ex af,af'			;0d42	08 	. 
	ld d,h			;0d43	54 	T 
	sbc a,b			;0d44	98 	. 
	or h			;0d45	b4 	. 
	rlca			;0d46	07 	. 
	ex af,af'			;0d47	08 	. 
	ld e,h			;0d48	5c 	\ 
	sbc a,b			;0d49	98 	. 
	or l			;0d4a	b5 	. 
	rlca			;0d4b	07 	. 
	ex af,af'			;0d4c	08 	. 
	ld d,h			;0d4d	54 	T 
	sbc a,b			;0d4e	98 	. 
	or (hl)			;0d4f	b6 	. 
	rlca			;0d50	07 	. 
	ex af,af'			;0d51	08 	. 
	ld e,h			;0d52	5c 	\ 
	sbc a,b			;0d53	98 	. 
	or a			;0d54	b7 	. 
	rlca			;0d55	07 	. 
	ex af,af'			;0d56	08 	. 
	ld d,h			;0d57	54 	T 
	sbc a,b			;0d58	98 	. 
	cp b			;0d59	b8 	. 
	rlca			;0d5a	07 	. 
	ex af,af'			;0d5b	08 	. 
	ld e,h			;0d5c	5c 	\ 
	sbc a,b			;0d5d	98 	. 
	cp c			;0d5e	b9 	. 
	inc bc			;0d5f	03 	. 
	ex af,af'			;0d60	08 	. 
	ld h,h			;0d61	64 	d 
	nop			;0d62	00 	. 
	add a,b			;0d63	80 	. 
	inc bc			;0d64	03 	. 
l0d65h:
	rlca			;0d65	07 	. 
	ld l,h			;0d66	6c 	l 
	nop			;0d67	00 	. 
	add a,c			;0d68	81 	. 
	inc bc			;0d69	03 	. 
	ld b,064h		;0d6a	06 64 	. d 
	dec de			;0d6c	1b 	. 
	xor a			;0d6d	af 	. 
	inc bc			;0d6e	03 	. 
l0d6fh:
	ld b,06ah		;0d6f	06 6a 	. j 
	in a,(0afh)		;0d71	db af 	. . 
	inc bc			;0d73	03 	. 
	ld b,070h		;0d74	06 70 	. p 
	sbc a,e			;0d76	9b 	. 
	or b			;0d77	b0 	. 
	inc bc			;0d78	03 	. 
	ld b,076h		;0d79	06 76 	. v 
	ld e,e			;0d7b	5b 	[ 
	or c			;0d7c	b1 	. 
	inc bc			;0d7d	03 	. 
	ld b,07ch		;0d7e	06 7c 	. | 
	dec de			;0d80	1b 	. 
	or d			;0d81	b2 	. 
	inc bc			;0d82	03 	. 
	ld b,082h		;0d83	06 82 	. . 
	in a,(0b2h)		;0d85	db b2 	. . 
	inc bc			;0d87	03 	. 
	inc c			;0d88	0c 	. 
	add a,c			;0d89	81 	. 
	in a,(0bbh)		;0d8a	db bb 	. . 
	inc bc			;0d8c	03 	. 
	ld b,0a9h		;0d8d	06 a9 	. . 
	in a,(0b2h)		;0d8f	db b2 	. . 
	inc bc			;0d91	03 	. 
	ld b,0afh		;0d92	06 af 	. . 
	sbc a,e			;0d94	9b 	. 
	or e			;0d95	b3 	. 
	inc bc			;0d96	03 	. 
	ld b,0b5h		;0d97	06 b5 	. . 
	ld e,e			;0d99	5b 	[ 
	or h			;0d9a	b4 	. 
	inc bc			;0d9b	03 	. 
	inc c			;0d9c	0c 	. 
	adc a,e			;0d9d	8b 	. 
	sbc a,e			;0d9e	9b 	. 
	cp l			;0d9f	bd 	. 
	inc bc			;0da0	03 	. 
	ld (de),a			;0da1	12 	. 
	sub a			;0da2	97 	. 
	sbc a,e			;0da3	9b 	. 
	cp c			;0da4	b9 	. 
	inc bc			;0da5	03 	. 
	ld (de),a			;0da6	12 	. 
	xor c			;0da7	a9 	. 
	ld e,e			;0da8	5b 	[ 
	or a			;0da9	b7 	. 
	inc bc			;0daa	03 	. 
	add hl,bc			;0dab	09 	. 
	sub a			;0dac	97 	. 
	dec de			;0dad	1b 	. 
	or l			;0dae	b5 	. 
	inc bc			;0daf	03 	. 
	add hl,bc			;0db0	09 	. 
	and b			;0db1	a0 	. 
	dec sp			;0db2	3b 	; 
	or (hl)			;0db3	b6 	. 
	inc bc			;0db4	03 	. 
	ld (bc),a			;0db5	02 	. 
	ld (hl),h			;0db6	74 	t 
	ld e,e			;0db7	5b 	[ 
	cp l			;0db8	bd 	. 
	inc bc			;0db9	03 	. 
	inc b			;0dba	04 	. 
	ld (hl),d			;0dbb	72 	r 
	dec de			;0dbc	1b 	. 
	cp a			;0dbd	bf 	. 
	inc b			;0dbe	04 	. 
	ex af,af'			;0dbf	08 	. 
	ld c,h			;0dc0	4c 	L 
	dec a			;0dc1	3d 	= 
	and l			;0dc2	a5 	. 
	inc b			;0dc3	04 	. 
	ld (bc),a			;0dc4	02 	. 
	inc h			;0dc5	24 	$ 
	add a,b			;0dc6	80 	. 
	sub c			;0dc7	91 	. 
	inc b			;0dc8	04 	. 
	ld (bc),a			;0dc9	02 	. 
	add hl,hl			;0dca	29 	) 
	ret nz			;0dcb	c0 	. 
	sub c			;0dcc	91 	. 
	inc b			;0dcd	04 	. 
	ld (bc),a			;0dce	02 	. 
	ld l,000h		;0dcf	2e 00 	. . 
	sub d			;0dd1	92 	. 
	inc b			;0dd2	04 	. 
	ld (bc),a			;0dd3	02 	. 
	inc h			;0dd4	24 	$ 
	ld b,b			;0dd5	40 	@ 
	sub d			;0dd6	92 	. 
	inc b			;0dd7	04 	. 
	ld (bc),a			;0dd8	02 	. 
	add hl,hl			;0dd9	29 	) 
	add a,b			;0dda	80 	. 
	sub d			;0ddb	92 	. 
	inc b			;0ddc	04 	. 
	ld (bc),a			;0ddd	02 	. 
	ld l,0c0h		;0dde	2e c0 	. . 
	sub d			;0de0	92 	. 
	inc b			;0de1	04 	. 
	ld (bc),a			;0de2	02 	. 
	inc h			;0de3	24 	$ 
	ld b,b			;0de4	40 	@ 
	sbc a,d			;0de5	9a 	. 
	inc b			;0de6	04 	. 
	ld (bc),a			;0de7	02 	. 
	add hl,hl			;0de8	29 	) 
l0de9h:
	add a,b			;0de9	80 	. 
	sbc a,d			;0dea	9a 	. 
	inc b			;0deb	04 	. 
	ld (bc),a			;0dec	02 	. 
	ld l,0c0h		;0ded	2e c0 	. . 
	sbc a,d			;0def	9a 	. 
	inc b			;0df0	04 	. 
	ld (bc),a			;0df1	02 	. 
	inc h			;0df2	24 	$ 
	nop			;0df3	00 	. 
l0df4h:
	sbc a,e			;0df4	9b 	. 
	inc b			;0df5	04 	. 
	ld (bc),a			;0df6	02 	. 
	add hl,hl			;0df7	29 	) 
	ld b,b			;0df8	40 	@ 
	sbc a,e			;0df9	9b 	. 
	inc b			;0dfa	04 	. 
	ld (bc),a			;0dfb	02 	. 
	ld l,080h		;0dfc	2e 80 	. . 
	sbc a,e			;0dfe	9b 	. 
	inc b			;0dff	04 	. 
	inc c			;0e00	0c 	. 
	ld a,(09300h)		;0e01	3a 00 93 	: . . 
	inc b			;0e04	04 	. 
	ex af,af'			;0e05	08 	. 
	add a,b			;0e06	80 	. 
	dec a			;0e07	3d 	= 
	xor b			;0e08	a8 	. 
	inc b			;0e09	04 	. 
	ex af,af'			;0e0a	08 	. 
	xor e			;0e0b	ab 	. 
	dec a			;0e0c	3d 	= 
	and a			;0e0d	a7 	. 
	inc b			;0e0e	04 	. 
	inc c			;0e0f	0c 	. 
	adc a,e			;0e10	8b 	. 
	dec a			;0e11	3d 	= 
	xor c			;0e12	a9 	. 
	inc bc			;0e13	03 	. 
	add hl,bc			;0e14	09 	. 
	halt			;0e15	76 	v 
	ret po			;0e16	e0 	. 
	add a,c			;0e17	81 	. 
	ld (bc),a			;0e18	02 	. 
	inc c			;0e19	0c 	. 
	ld h,h			;0e1a	64 	d 
	ret nz			;0e1b	c0 	. 
	sbc a,b			;0e1c	98 	. 
	rlca			;0e1d	07 	. 
	inc b			;0e1e	04 	. 
	daa			;0e1f	27 	' 
	ret m			;0e20	f8 	. 
	xor e			;0e21	ab 	. 
	rlca			;0e22	07 	. 
	inc bc			;0e23	03 	. 
	dec hl			;0e24	2b 	+ 
	ld a,b			;0e25	78 	x 
	xor h			;0e26	ac 	. 
	rlca			;0e27	07 	. 
	inc b			;0e28	04 	. 
	daa			;0e29	27 	' 
	ret c			;0e2a	d8 	. 
	xor h			;0e2b	ac 	. 
	rlca			;0e2c	07 	. 
l0e2dh:
	inc bc			;0e2d	03 	. 
	dec hl			;0e2e	2b 	+ 
	ld e,b			;0e2f	58 	X 
	xor l			;0e30	ad 	. 
	rlca			;0e31	07 	. 
	inc b			;0e32	04 	. 
	daa			;0e33	27 	' 
	cp b			;0e34	b8 	. 
	xor l			;0e35	ad 	. 
	rlca			;0e36	07 	. 
	inc bc			;0e37	03 	. 
	dec hl			;0e38	2b 	+ 
	jr c,l0de9h		;0e39	38 ae 	8 . 
	rlca			;0e3b	07 	. 
	inc b			;0e3c	04 	. 
	daa			;0e3d	27 	' 
	sbc a,b			;0e3e	98 	. 
	xor (hl)			;0e3f	ae 	. 
	rlca			;0e40	07 	. 
	inc bc			;0e41	03 	. 
	dec hl			;0e42	2b 	+ 
	jr l0df4h		;0e43	18 af 	. . 
	rlca			;0e45	07 	. 
	add hl,bc			;0e46	09 	. 
	daa			;0e47	27 	' 
	ld a,b			;0e48	78 	x 
	xor a			;0e49	af 	. 
	ld (bc),a			;0e4a	02 	. 
	inc c			;0e4b	0c 	. 
	sub a			;0e4c	97 	. 
	ret nz			;0e4d	c0 	. 
	sbc a,e			;0e4e	9b 	. 
	dec b			;0e4f	05 	. 
	ex af,af'			;0e50	08 	. 
	and e			;0e51	a3 	. 
	ret m			;0e52	f8 	. 
	cp l			;0e53	bd 	. 
	inc b			;0e54	04 	. 
	ld b,08bh		;0e55	06 8b 	. . 
	dec l			;0e57	2d 	- 
	or c			;0e58	b1 	. 
	inc b			;0e59	04 	. 
	ld b,091h		;0e5a	06 91 	. . 
	cpir		;0e5c	ed b1 	. . 
	inc b			;0e5e	04 	. 
	ld bc,0ed80h		;0e5f	01 80 ed 	. . . 
	or e			;0e62	b3 	. 
	inc bc			;0e63	03 	. 
	inc b			;0e64	04 	. 
	cp h			;0e65	bc 	. 
	sbc a,e			;0e66	9b 	. 
	xor e			;0e67	ab 	. 
	inc bc			;0e68	03 	. 
	inc b			;0e69	04 	. 
	jr nc,l0e87h		;0e6a	30 1b 	0 . 
	xor e			;0e6c	ab 	. 
	inc b			;0e6d	04 	. 
	ld b,03ah		;0e6e	06 3a 	. : 
	ret nz			;0e70	c0 	. 
	sbc a,e			;0e71	9b 	. 
	inc b			;0e72	04 	. 
	ld b,03ah		;0e73	06 3a 	. : 
	add a,b			;0e75	80 	. 
	sbc a,h			;0e76	9c 	. 
	inc b			;0e77	04 	. 
	ld b,020h		;0e78	06 20 	.   
	dec l			;0e7a	2d 	- 
	or e			;0e7b	b3 	. 
	inc b			;0e7c	04 	. 
	inc b			;0e7d	04 	. 
	jr nz,l0e2dh		;0e7e	20 ad 	  . 
	or d			;0e80	b2 	. 
	inc b			;0e81	04 	. 
	djnz l0ee8h		;0e82	10 64 	. d 
	call 003aah		;0e84	cd aa 03 	. . . 
l0e87h:
	inc b			;0e87	04 	. 
	inc e			;0e88	1c 	. 
	cp e			;0e89	bb 	. 
	sbc a,(hl)			;0e8a	9e 	. 
	inc bc			;0e8b	03 	. 
	inc b			;0e8c	04 	. 
	jr nz,l0ecah		;0e8d	20 3b 	  ; 
	sbc a,a			;0e8f	9f 	. 
l0e90h:
	inc bc			;0e90	03 	. 
	inc b			;0e91	04 	. 
	inc h			;0e92	24 	$ 
	cp e			;0e93	bb 	. 
	sbc a,a			;0e94	9f 	. 
	inc bc			;0e95	03 	. 
	inc b			;0e96	04 	. 
	jr z,$+61		;0e97	28 3b 	( ; 
	and b			;0e99	a0 	. 
l0e9ah:
	inc bc			;0e9a	03 	. 
	inc b			;0e9b	04 	. 
	inc l			;0e9c	2c 	, 
	cp e			;0e9d	bb 	. 
	and b			;0e9e	a0 	. 
	inc bc			;0e9f	03 	. 
	inc b			;0ea0	04 	. 
	jr nc,$+61		;0ea1	30 3b 	0 ; 
	and c			;0ea3	a1 	. 
	inc bc			;0ea4	03 	. 
	inc b			;0ea5	04 	. 
	inc (hl)			;0ea6	34 	4 
	cp e			;0ea7	bb 	. 
	and c			;0ea8	a1 	. 
	inc bc			;0ea9	03 	. 
	inc b			;0eaa	04 	. 
	jr c,l0ee8h		;0eab	38 3b 	8 ; 
	and d			;0ead	a2 	. 
	inc bc			;0eae	03 	. 
	inc b			;0eaf	04 	. 
	inc a			;0eb0	3c 	< 
	cp e			;0eb1	bb 	. 
	and d			;0eb2	a2 	. 
	inc bc			;0eb3	03 	. 
	inc b			;0eb4	04 	. 
	ld b,b			;0eb5	40 	@ 
	dec sp			;0eb6	3b 	; 
	and e			;0eb7	a3 	. 
	inc bc			;0eb8	03 	. 
	inc b			;0eb9	04 	. 
	ld b,h			;0eba	44 	D 
	cp e			;0ebb	bb 	. 
	and e			;0ebc	a3 	. 
	inc bc			;0ebd	03 	. 
	inc b			;0ebe	04 	. 
	ld c,b			;0ebf	48 	H 
	dec sp			;0ec0	3b 	; 
	and h			;0ec1	a4 	. 
	inc b			;0ec2	04 	. 
	ld (bc),a			;0ec3	02 	. 
	ld a,0cdh		;0ec4	3e cd 	> . 
	xor l			;0ec6	ad 	. 
	inc b			;0ec7	04 	. 
	ld (bc),a			;0ec8	02 	. 
	inc a			;0ec9	3c 	< 
l0ecah:
	dec c			;0eca	0d 	. 
	xor (hl)			;0ecb	ae 	. 
	inc bc			;0ecc	03 	. 
	inc b			;0ecd	04 	. 
	jr nc,l0f0bh		;0ece	30 3b 	0 ; 
	and l			;0ed0	a5 	. 
	inc bc			;0ed1	03 	. 
	inc b			;0ed2	04 	. 
	jr nc,l0e90h		;0ed3	30 bb 	0 . 
	and l			;0ed5	a5 	. 
	inc bc			;0ed6	03 	. 
	inc b			;0ed7	04 	. 
	jr nc,l0f15h		;0ed8	30 3b 	0 ; 
	and (hl)			;0eda	a6 	. 
	inc bc			;0edb	03 	. 
	inc b			;0edc	04 	. 
	jr nc,l0e9ah		;0edd	30 bb 	0 . 
	and (hl)			;0edf	a6 	. 
	inc bc			;0ee0	03 	. 
	inc b			;0ee1	04 	. 
	jr nc,l0f1fh		;0ee2	30 3b 	0 ; 
	and a			;0ee4	a7 	. 
	inc bc			;0ee5	03 	. 
	add hl,bc			;0ee6	09 	. 
	xor c			;0ee7	a9 	. 
l0ee8h:
	adc a,d			;0ee8	8a 	. 
	sub a			;0ee9	97 	. 
l0eeah:
	inc bc			;0eea	03 	. 
	ld a,(bc)			;0eeb	0a 	. 
	or d			;0eec	b2 	. 
	xor d			;0eed	aa 	. 
	sbc a,b			;0eee	98 	. 
	inc b			;0eef	04 	. 
	inc b			;0ef0	04 	. 
	inc e			;0ef1	1c 	. 
	dec c			;0ef2	0d 	. 
	or h			;0ef3	b4 	. 
	inc b			;0ef4	04 	. 
	inc b			;0ef5	04 	. 
	inc e			;0ef6	1c 	. 
	adc a,l			;0ef7	8d 	. 
	or h			;0ef8	b4 	. 
	inc b			;0ef9	04 	. 
	inc b			;0efa	04 	. 
	inc e			;0efb	1c 	. 
	dec c			;0efc	0d 	. 
	or l			;0efd	b5 	. 
	inc b			;0efe	04 	. 
	inc b			;0eff	04 	. 
	inc e			;0f00	1c 	. 
	adc a,l			;0f01	8d 	. 
	or l			;0f02	b5 	. 
	inc b			;0f03	04 	. 
	inc b			;0f04	04 	. 
	inc e			;0f05	1c 	. 
	dec c			;0f06	0d 	. 
	or (hl)			;0f07	b6 	. 
	inc b			;0f08	04 	. 
	inc b			;0f09	04 	. 
	inc e			;0f0a	1c 	. 
l0f0bh:
	adc a,l			;0f0b	8d 	. 
	or (hl)			;0f0c	b6 	. 
	inc b			;0f0d	04 	. 
	inc b			;0f0e	04 	. 
	inc e			;0f0f	1c 	. 
	dec c			;0f10	0d 	. 
	or a			;0f11	b7 	. 
	inc b			;0f12	04 	. 
	inc b			;0f13	04 	. 
	inc e			;0f14	1c 	. 
l0f15h:
	adc a,l			;0f15	8d 	. 
	or a			;0f16	b7 	. 
	inc b			;0f17	04 	. 
	inc b			;0f18	04 	. 
	inc e			;0f19	1c 	. 
	dec c			;0f1a	0d 	. 
	cp b			;0f1b	b8 	. 
	inc b			;0f1c	04 	. 
	inc b			;0f1d	04 	. 
	inc e			;0f1e	1c 	. 
l0f1fh:
	adc a,l			;0f1f	8d 	. 
	cp b			;0f20	b8 	. 
	inc bc			;0f21	03 	. 
	inc c			;0f22	0c 	. 
	ld a,a			;0f23	7f 	 
	jp pe,00499h		;0f24	ea 99 04 	. . . 
	djnz $+129		;0f27	10 7f 	.  
	cp l			;0f29	bd 	. 
	and c			;0f2a	a1 	. 
	inc bc			;0f2b	03 	. 
	inc bc			;0f2c	03 	. 
	jr nc,l0eeah		;0f2d	30 bb 	0 . 
	xor c			;0f2f	a9 	. 
	inc bc			;0f30	03 	. 
	inc b			;0f31	04 	. 
	jr nc,$-99		;0f32	30 9b 	0 . 
	xor d			;0f34	aa 	. 
	rlca			;0f35	07 	. 
	ld b,000h		;0f36	06 00 	. . 
	sbc a,b			;0f38	98 	. 
	cp d			;0f39	ba 	. 
	rlca			;0f3a	07 	. 
	inc b			;0f3b	04 	. 
	ld b,058h		;0f3c	06 58 	. X 
	cp e			;0f3e	bb 	. 
	inc bc			;0f3f	03 	. 
	inc b			;0f40	04 	. 
	ld b,b			;0f41	40 	@ 
	cp e			;0f42	bb 	. 
	and h			;0f43	a4 	. 
	inc b			;0f44	04 	. 
	inc c			;0f45	0c 	. 
	adc a,e			;0f46	8b 	. 
	cp l			;0f47	bd 	. 
	and e			;0f48	a3 	. 
	inc bc			;0f49	03 	. 
	inc b			;0f4a	04 	. 
	jr nc,l0f68h		;0f4b	30 1b 	0 . 
	xor d			;0f4d	aa 	. 
	inc bc			;0f4e	03 	. 
	inc b			;0f4f	04 	. 
	jr nc,l0f8dh		;0f50	30 3b 	0 ; 
	xor b			;0f52	a8 	. 
	inc bc			;0f53	03 	. 
	inc b			;0f54	04 	. 
	jr nc,$+61		;0f55	30 3b 	0 ; 
	xor c			;0f57	a9 	. 
	ld (bc),a			;0f58	02 	. 
	inc c			;0f59	0c 	. 
	ld h,h			;0f5a	64 	d 
l0f5bh:
	ld b,b			;0f5b	40 	@ 
	sbc a,d			;0f5c	9a 	. 
sub_0f5dh:
	ld hl,0cc5fh		;0f5d	21 5f cc 	! _ . 
	bit 6,(hl)		;0f60	cb 76 	. v 
	res 6,(hl)		;0f62	cb b6 	. . 
	ret nz			;0f64	c0 	. 
	ld de,l0000h		;0f65	11 00 00 	. . . 
l0f68h:
	ld hl,(0cc10h)		;0f68	2a 10 cc 	* . . 
	ld a,h			;0f6b	7c 	| 
	or l			;0f6c	b5 	. 
	jr z,l0f78h		;0f6d	28 09 	( . 
	ld (0cc10h),de		;0f6f	ed 53 10 cc 	. S . . 
	ld de,l2000h		;0f73	11 00 20 	. .   
	jr l0f87h		;0f76	18 0f 	. . 
l0f78h:
	ld hl,(0cc12h)		;0f78	2a 12 cc 	* . . 
	ld a,h			;0f7b	7c 	| 
	or l			;0f7c	b5 	. 
	jp z,l0c13h		;0f7d	ca 13 0c 	. . . 
	ld (0cc12h),de		;0f80	ed 53 12 cc 	. S . . 
	ld de,l20beh+2		;0f84	11 c0 20 	. .   
l0f87h:
	call sub_0b17h		;0f87	cd 17 0b 	. . . 
	push af			;0f8a	f5 	. 
l0f8bh:
	ld a,002h		;0f8b	3e 02 	> . 
l0f8dh:
	call sub_0b13h		;0f8d	cd 13 0b 	. . . 
	ld bc,l00c0h		;0f90	01 c0 00 	. . . 
	call sub_02adh		;0f93	cd ad 02 	. . . 
	pop af			;0f96	f1 	. 
	call sub_0b13h		;0f97	cd 13 0b 	. . . 
	ret			;0f9a	c9 	. 
l0f9bh:
	ld (04038h),hl		;0f9b	22 38 40 	" 8 @ 
	sbc a,l			;0f9e	9d 	. 
	ld h,b			;0f9f	60 	` 
	jr c,l0fe8h		;0fa0	38 46 	8 F 
	sbc a,l			;0fa2	9d 	. 
	sbc a,(hl)			;0fa3	9e 	. 
	jr c,l0ff3h		;0fa4	38 4d 	8 M 
	sbc a,l			;0fa6	9d 	. 
	sbc a,038h		;0fa7	de 38 	. 8 
	ld d,l			;0fa9	55 	U 
	sbc a,l			;0faa	9d 	. 
	inc d			;0fab	14 	. 
	add hl,sp			;0fac	39 	9 
	ld e,(hl)			;0fad	5e 	^ 
	sbc a,l			;0fae	9d 	. 
	ld d,h			;0faf	54 	T 
	add hl,sp			;0fb0	39 	9 
	ld l,l			;0fb1	6d 	m 
	sbc a,l			;0fb2	9d 	. 
	sub h			;0fb3	94 	. 
	add hl,sp			;0fb4	39 	9 
	ld a,e			;0fb5	7b 	{ 
	sbc a,l			;0fb6	9d 	. 
	call nz,08839h		;0fb7	c4 39 88 	. 9 . 
	sbc a,l			;0fba	9d 	. 
	ld b,03ah		;0fbb	06 3a 	. : 
	and e			;0fbd	a3 	. 
	sbc a,l			;0fbe	9d 	. 
	ld b,(hl)			;0fbf	46 	F 
	ld a,(09dbfh)		;0fc0	3a bf 9d 	: . . 
	add a,h			;0fc3	84 	. 
	ld a,(09ddbh)		;0fc4	3a db 9d 	: . . 
	call nz,0f83ah		;0fc7	c4 3a f8 	. : . 
	sbc a,l			;0fca	9d 	. 
	ld (bc),a			;0fcb	02 	. 
	dec sp			;0fcc	3b 	; 
	ld d,09eh		;0fcd	16 9e 	. . 
	ld b,d			;0fcf	42 	B 
	dec sp			;0fd0	3b 	; 
	dec (hl)			;0fd1	35 	5 
	sbc a,(hl)			;0fd2	9e 	. 
	ex af,af'			;0fd3	08 	. 
	inc a			;0fd4	3c 	< 
	ld d,h			;0fd5	54 	T 
	sbc a,(hl)			;0fd6	9e 	. 
	ld c,b			;0fd7	48 	H 
	inc a			;0fd8	3c 	< 
l0fd9h:
	ld l,l			;0fd9	6d 	m 
	sbc a,(hl)			;0fda	9e 	. 
	adc a,b			;0fdb	88 	. 
	inc a			;0fdc	3c 	< 
	add a,(hl)			;0fdd	86 	. 
	sbc a,(hl)			;0fde	9e 	. 
	ret z			;0fdf	c8 	. 
l0fe0h:
	inc a			;0fe0	3c 	< 
	sbc a,a			;0fe1	9f 	. 
	sbc a,(hl)			;0fe2	9e 	. 
	inc d			;0fe3	14 	. 
	dec a			;0fe4	3d 	= 
	cp b			;0fe5	b8 	. 
	sbc a,(hl)			;0fe6	9e 	. 
	ld d,h			;0fe7	54 	T 
l0fe8h:
	dec a			;0fe8	3d 	= 
	push bc			;0fe9	c5 	. 
	sbc a,(hl)			;0fea	9e 	. 
	sub h			;0feb	94 	. 
	dec a			;0fec	3d 	= 
	jp nc,0d49eh		;0fed	d2 9e d4 	. . . 
	dec a			;0ff0	3d 	= 
	sbc a,09eh		;0ff1	de 9e 	. . 
l0ff3h:
	ld c,b			;0ff3	48 	H 
	ld a,0eah		;0ff4	3e ea 	> . 
	sbc a,(hl)			;0ff6	9e 	. 
	add a,b			;0ff7	80 	. 
	ld a,081h		;0ff8	3e 81 	> . 
	sbc a,a			;0ffa	9f 	. 
	call c,0033eh		;0ffb	dc 3e 03 	. > . 
	sbc a,a			;0ffe	9f 	. 
	nop			;0fff	00 	. 
	jr c,$-125		;1000	38 81 	8 . 
	sbc a,a			;1002	9f 	. 
	ld c,b			;1003	48 	H 
	jr c,l100ch		;1004	38 06 	8 . 
	sbc a,a			;1006	9f 	. 
	add a,b			;1007	80 	. 
	jr c,l0f8bh		;1008	38 81 	8 . 
	sbc a,a			;100a	9f 	. 
	ret nz			;100b	c0 	. 
l100ch:
	jr c,$-125		;100c	38 81 	8 . 
	sbc a,a			;100e	9f 	. 
	ex af,af'			;100f	08 	. 
	add hl,sp			;1010	39 	9 
	rra			;1011	1f 	. 
	sbc a,a			;1012	9f 	. 
	ld d,h			;1013	54 	T 
	add hl,sp			;1014	39 	9 
	inc (hl)			;1015	34 	4 
	sbc a,a			;1016	9f 	. 
	add a,b			;1017	80 	. 
	add hl,sp			;1018	39 	9 
	add a,c			;1019	81 	. 
	sbc a,a			;101a	9f 	. 
	call nz,04939h		;101b	c4 39 49 	. 9 I 
	sbc a,a			;101e	9f 	. 
	inc b			;101f	04 	. 
	ld a,(09f64h)		;1020	3a 64 9f 	: d . 
	ld b,b			;1023	40 	@ 
	ld a,(09f81h)		;1024	3a 81 9f 	: . . 
	add a,b			;1027	80 	. 
	ld a,(09f81h)		;1028	3a 81 9f 	: . . 
	ret c			;102b	d8 	. 
	jr c,l106fh		;102c	38 41 	8 A 
	call z,sub_3a58h		;102e	cc 58 3a 	. X : 
	ld c,d			;1031	4a 	J 
	call z,sub_3b18h		;1032	cc 18 3b 	. . ; 
	ld d,d			;1035	52 	R 
	call z,sub_3c16h		;1036	cc 16 3c 	. . < 
	ld e,d			;1039	5a 	Z 
	call z,sub_3896h		;103a	cc 96 38 	. . 8 
	and d			;103d	a2 	. 
	sbc a,a			;103e	9f 	. 
	ld c,03bh		;103f	0e 3b 	. ; 
	xor h			;1041	ac 	. 
	sbc a,a			;1042	9f 	. 
	inc h			;1043	24 	$ 
	dec sp			;1044	3b 	; 
	or l			;1045	b5 	. 
	sbc a,a			;1046	9f 	. 
	nop			;1047	00 	. 
	jr c,l10b5h		;1048	38 6b 	8 k 
	djnz l105eh		;104a	10 12 	. . 
	jr c,l10bdh		;104c	38 6f 	8 o 
	djnz l0fe0h		;104e	10 90 	. . 
	jr c,l0fd9h		;1050	38 87 	8 . 
	djnz l1064h		;1052	10 10 	. . 
	add hl,sp			;1054	39 	9 
	sbc a,d			;1055	9a 	. 
	djnz l0fe8h		;1056	10 90 	. . 
	add hl,sp			;1058	39 	9 
	xor (hl)			;1059	ae 	. 
	djnz l106ch		;105a	10 10 	. . 
	add hl,sp			;105c	39 	9 
	and d			;105d	a2 	. 
l105eh:
	djnz l1070h		;105e	10 10 	. . 
	add hl,sp			;1060	39 	9 
	ld (hl),e			;1061	73 	s 
	out (090h),a		;1062	d3 90 	. . 
l1064h:
	add hl,sp			;1064	39 	9 
	add a,h			;1065	84 	. 
	out (018h),a		;1066	d3 18 	. . 
	dec sp			;1068	3b 	; 
	jp nz,00310h		;1069	c2 10 03 	. . . 
l106ch:
	or c			;106c	b1 	. 
	sbc a,a			;106d	9f 	. 
	or h			;106e	b4 	. 
l106fh:
	rla			;106f	17 	. 
l1070h:
	or (hl)			;1070	b6 	. 
	and c			;1071	a1 	. 
	xor c			;1072	a9 	. 
	or b			;1073	b0 	. 
	xor l			;1074	ad 	. 
	nop			;1075	00 	. 
	xor e			;1076	ab 	. 
	or c			;1077	b1 	. 
	sbc a,a			;1078	9f 	. 
	nop			;1079	00 	. 
	xor b			;107a	a8 	. 
	or c			;107b	b1 	. 
	or h			;107c	b4 	. 
	nop			;107d	00 	. 
	or h			;107e	b4 	. 
	and d			;107f	a2 	. 
	or l			;1080	b5 	. 
	xor l			;1081	ad 	. 
	and d			;1082	a2 	. 
	or b			;1083	b0 	. 
	and e			;1084	a3 	. 
	nop			;1085	00 	. 
	xor e			;1086	ab 	. 
	ld (de),a			;1087	12 	. 
	xor (hl)			;1088	ae 	. 
	and d			;1089	a2 	. 
	xor b			;108a	a8 	. 
	and a			;108b	a7 	. 
	nop			;108c	00 	. 
	or (hl)			;108d	b6 	. 
	or c			;108e	b1 	. 
	nop			;108f	00 	. 
	or h			;1090	b4 	. 
	and a			;1091	a7 	. 
	or l			;1092	b5 	. 
	and l			;1093	a5 	. 
	sbc a,a			;1094	9f 	. 
	and a			;1095	a7 	. 
	nop			;1096	00 	. 
	xor a			;1097	af 	. 
	and a			;1098	a7 	. 
	cp l			;1099	bd 	. 
	rlca			;109a	07 	. 
	or c			;109b	b1 	. 
	and c			;109c	a1 	. 
	jp nz,0b1a4h		;109d	c2 a4 b1 	. . . 
	xor e			;10a0	ab 	. 
	jp nz,0b10bh		;10a1	c2 0b b1 	. . . 
	and c			;10a4	a1 	. 
	jp nz,0b1b6h		;10a5	c2 b6 b1 	. . . 
	xor a			;10a8	af 	. 
	pop bc			;10a9	c1 	. 
	or (hl)			;10aa	b6 	. 
	or c			;10ab	b1 	. 
	xor a			;10ac	af 	. 
	jp nz,0a213h		;10ad	c2 13 a2 	. . . 
	nop			;10b0	00 	. 
	xor (hl)			;10b1	ae 	. 
	or c			;10b2	b1 	. 
	cp b			;10b3	b8 	. 
	and a			;10b4	a7 	. 
l10b5h:
	nop			;10b5	00 	. 
	xor e			;10b6	ab 	. 
	or c			;10b7	b1 	. 
	sbc a,a			;10b8	9f 	. 
	nop			;10b9	00 	. 
	or l			;10ba	b5 	. 
	or c			;10bb	b1 	. 
	nop			;10bc	00 	. 
l10bdh:
	xor a			;10bd	af 	. 
	sbc a,a			;10be	9f 	. 
	and l			;10bf	a5 	. 
	and c			;10c0	a1 	. 
	cp a			;10c1	bf 	. 
	rlca			;10c2	07 	. 
	ld (0130dh),hl		;10c3	22 0d 13 	" . . 
	nop			;10c6	00 	. 
	inc de			;10c7	13 	. 
	inc e			;10c8	1c 	. 
	ld (de),a			;10c9	12 	. 
sub_10cah:
	ld a,(0c129h)		;10ca	3a 29 c1 	: ) . 
	cp 004h		;10cd	fe 04 	. . 
	ret nc			;10cf	d0 	. 
	ld hl,0cc80h		;10d0	21 80 cc 	! . . 
	rla			;10d3	17 	. 
	ret c			;10d4	d8 	. 
	ld hl,0c18ch		;10d5	21 8c c1 	! . . 
	bit 0,(hl)		;10d8	cb 46 	. F 
	jr nz,l10e1h		;10da	20 05 	  . 
	inc (hl)			;10dc	34 	4 
	call sub_119dh		;10dd	cd 9d 11 	. . . 
	ret			;10e0	c9 	. 
l10e1h:
	ld a,002h		;10e1	3e 02 	> . 
	call sub_0b13h		;10e3	cd 13 0b 	. . . 
	xor a			;10e6	af 	. 
	ld hl,(0c18dh)		;10e7	2a 8d c1 	* . . 
	ld c,(hl)			;10ea	4e 	N 
	rl c		;10eb	cb 11 	. . 
	ld a,c			;10ed	79 	y 
	cp 0feh		;10ee	fe fe 	. . 
	ret z			;10f0	c8 	. 
	ld a,(0c12ah)		;10f1	3a 2a c1 	: * . 
	cp c			;10f4	b9 	. 
	ret c			;10f5	d8 	. 
	ld a,(hl)			;10f6	7e 	~ 
	rla			;10f7	17 	. 
	jr c,l1156h		;10f8	38 5c 	8 \ 
	inc hl			;10fa	23 	# 
	ld d,(hl)			;10fb	56 	V 
	bit 7,d		;10fc	cb 7a 	. z 
	jr z,l1111h		;10fe	28 11 	( . 
	ld a,(0c128h)		;1100	3a 28 c1 	: ( . 
	cp 020h		;1103	fe 20 	.   
	jr nc,l110fh		;1105	30 08 	0 . 
	ld a,(0c114h)		;1107	3a 14 c1 	: . . 
	and 001h		;110a	e6 01 	. . 
	jp nz,l1198h		;110c	c2 98 11 	. . . 
l110fh:
	res 7,d		;110f	cb ba 	. . 
l1111h:
	inc hl			;1111	23 	# 
	ld a,(0c128h)		;1112	3a 28 c1 	: ( . 
	cp 028h		;1115	fe 28 	. ( 
	jr nz,l112eh		;1117	20 15 	  . 
	ld a,(hl)			;1119	7e 	~ 
	and 003h		;111a	e6 03 	. . 
	ld b,a			;111c	47 	G 
	ld a,(hl)			;111d	7e 	~ 
	and 0fch		;111e	e6 fc 	. . 
	and a			;1120	a7 	. 
	jr z,l112ah		;1121	28 07 	( . 
	ld c,a			;1123	4f 	O 
	ld a,(0c136h)		;1124	3a 36 c1 	: 6 . 
	cp c			;1127	b9 	. 
	jr c,l1190h		;1128	38 66 	8 f 
l112ah:
	ld a,b			;112a	78 	x 
	jp l113eh		;112b	c3 3e 11 	. > . 
l112eh:
	ld a,(hl)			;112e	7e 	~ 
	and 0e0h		;112f	e6 e0 	. . 
	and a			;1131	a7 	. 
	jr z,l113bh		;1132	28 07 	( . 
	ld c,a			;1134	4f 	O 
	ld a,(0c136h)		;1135	3a 36 c1 	: 6 . 
	cp c			;1138	b9 	. 
	jr c,l1190h		;1139	38 55 	8 U 
l113bh:
	ld a,(hl)			;113b	7e 	~ 
	and 01fh		;113c	e6 1f 	. . 
l113eh:
	exx			;113e	d9 	. 
	ld e,a			;113f	5f 	_ 
	ld d,000h		;1140	16 00 	. . 
	ld hl,(0c18fh)		;1142	2a 8f c1 	* . . 
	add hl,de			;1145	19 	. 
	ld a,(hl)			;1146	7e 	~ 
	exx			;1147	d9 	. 
	inc hl			;1148	23 	# 
	ld (0c18dh),hl		;1149	22 8d c1 	" . . 
	ld e,0d0h		;114c	1e d0 	. . 
	ex de,hl			;114e	eb 	. 
	call sub_06e2h		;114f	cd e2 06 	. . . 
	jp l10e1h		;1152	c3 e1 10 	. . . 
	ret			;1155	c9 	. 
l1156h:
	inc hl			;1156	23 	# 
	ld d,(hl)			;1157	56 	V 
	bit 7,d		;1158	cb 7a 	. z 
	jr z,l116ch		;115a	28 10 	( . 
	ld a,(0c128h)		;115c	3a 28 c1 	: ( . 
	cp 020h		;115f	fe 20 	.   
	jr nc,l116ah		;1161	30 07 	0 . 
	ld a,(0c114h)		;1163	3a 14 c1 	: . . 
	and 001h		;1166	e6 01 	. . 
	jr nz,l1198h		;1168	20 2e 	  . 
l116ah:
	res 7,d		;116a	cb ba 	. . 
l116ch:
	inc hl			;116c	23 	# 
	ld a,(0c128h)		;116d	3a 28 c1 	: ( . 
	cp 028h		;1170	fe 28 	. ( 
	jr nz,l1186h		;1172	20 12 	  . 
	ld a,(hl)			;1174	7e 	~ 
	and 003h		;1175	e6 03 	. . 
	ld b,a			;1177	47 	G 
	ld a,(hl)			;1178	7e 	~ 
	and 0fch		;1179	e6 fc 	. . 
	ld c,a			;117b	4f 	O 
	ld a,(0c136h)		;117c	3a 36 c1 	: 6 . 
	cp c			;117f	b9 	. 
	jr nz,l1190h		;1180	20 0e 	  . 
	ld a,b			;1182	78 	x 
	jp l113eh		;1183	c3 3e 11 	. > . 
l1186h:
	ld a,(hl)			;1186	7e 	~ 
	and 0e0h		;1187	e6 e0 	. . 
	ld c,a			;1189	4f 	O 
	ld a,(0c136h)		;118a	3a 36 c1 	: 6 . 
	cp c			;118d	b9 	. 
	jr z,l113bh		;118e	28 ab 	( . 
l1190h:
	inc hl			;1190	23 	# 
	ld (0c18dh),hl		;1191	22 8d c1 	" . . 
	jp l10e1h		;1194	c3 e1 10 	. . . 
	ret			;1197	c9 	. 
l1198h:
	inc hl			;1198	23 	# 
	jp l1190h		;1199	c3 90 11 	. . . 
	ret			;119c	c9 	. 
sub_119dh:
	ld a,002h		;119d	3e 02 	> . 
	call sub_0b13h		;119f	cd 13 0b 	. . . 
	ld a,(0c128h)		;11a2	3a 28 c1 	: ( . 
	add a,a			;11a5	87 	. 
	add a,a			;11a6	87 	. 
	ld l,a			;11a7	6f 	o 
	ld h,000h		;11a8	26 00 	& . 
	ld a,(0c129h)		;11aa	3a 29 c1 	: ) . 
	ld e,a			;11ad	5f 	_ 
	ld d,h			;11ae	54 	T 
	add hl,de			;11af	19 	. 
	add hl,hl			;11b0	29 	) 
	push hl			;11b1	e5 	. 
	ld de,09eb6h		;11b2	11 b6 9e 	. . . 
	add hl,de			;11b5	19 	. 
	ld e,(hl)			;11b6	5e 	^ 
	inc hl			;11b7	23 	# 
	ld d,(hl)			;11b8	56 	V 
	ld (0c18dh),de		;11b9	ed 53 8d c1 	. S . . 
	pop hl			;11bd	e1 	. 
	ld de,09d6eh		;11be	11 6e 9d 	. n . 
	add hl,de			;11c1	19 	. 
	ld e,(hl)			;11c2	5e 	^ 
	inc hl			;11c3	23 	# 
	ld d,(hl)			;11c4	56 	V 
	ld (0c18fh),de		;11c5	ed 53 8f c1 	. S . . 
	ld a,(0c128h)		;11c9	3a 28 c1 	: ( . 
	cp 028h		;11cc	fe 28 	. ( 
	jr nz,l11d8h		;11ce	20 08 	  . 
	ld a,(0c132h)		;11d0	3a 32 c1 	: 2 . 
	and 0fch		;11d3	e6 fc 	. . 
	jp l11e3h		;11d5	c3 e3 11 	. . . 
l11d8h:
	ld hl,l11e7h		;11d8	21 e7 11 	! . . 
	ld a,(0c128h)		;11db	3a 28 c1 	: ( . 
	ld e,a			;11de	5f 	_ 
	ld d,000h		;11df	16 00 	. . 
	add hl,de			;11e1	19 	. 
	ld a,(hl)			;11e2	7e 	~ 
l11e3h:
	ld (0c136h),a		;11e3	32 36 c1 	2 6 . 
	ret			;11e6	c9 	. 
l11e7h:
	nop			;11e7	00 	. 
	nop			;11e8	00 	. 
	nop			;11e9	00 	. 
	nop			;11ea	00 	. 
	nop			;11eb	00 	. 
	nop			;11ec	00 	. 
	nop			;11ed	00 	. 
	jr nz,l11f0h		;11ee	20 00 	  . 
l11f0h:
	nop			;11f0	00 	. 
	ld b,b			;11f1	40 	@ 
	ld b,b			;11f2	40 	@ 
	nop			;11f3	00 	. 
	ld b,b			;11f4	40 	@ 
	nop			;11f5	00 	. 
	nop			;11f6	00 	. 
	ld b,b			;11f7	40 	@ 
	nop			;11f8	00 	. 
	nop			;11f9	00 	. 
	ld h,b			;11fa	60 	` 
	ld b,b			;11fb	40 	@ 
	jr nz,$+66		;11fc	20 40 	  @ 
	add a,b			;11fe	80 	. 
	add a,b			;11ff	80 	. 
	ld b,b			;1200	40 	@ 
	jr nz,$-94		;1201	20 a0 	  . 
	nop			;1203	00 	. 
	add a,b			;1204	80 	. 
	ld b,b			;1205	40 	@ 
	ld b,b			;1206	40 	@ 
	add a,b			;1207	80 	. 
	add a,b			;1208	80 	. 
	ld b,b			;1209	40 	@ 
	ret nz			;120a	c0 	. 
	ld b,b			;120b	40 	@ 
	ret po			;120c	e0 	. 
	add a,b			;120d	80 	. 
	ret po			;120e	e0 	. 
	ld hl,0c116h		;120f	21 16 c1 	! . . 
	bit 0,(hl)		;1212	cb 46 	. F 
	jr nz,l126eh		;1214	20 58 	  X 
	inc (hl)			;1216	34 	4 
	ld hl,0c120h		;1217	21 20 c1 	!   . 
	ld (hl),000h		;121a	36 00 	6 . 
	call sub_0ab1h		;121c	cd b1 0a 	. . . 
	ld a,002h		;121f	3e 02 	> . 
	call sub_00a4h		;1221	cd a4 00 	. . . 
	call sub_0b1bh		;1224	cd 1b 0b 	. . . 
	call sub_049bh		;1227	cd 9b 04 	. . . 
	or a			;122a	b7 	. 
	jr z,l1232h		;122b	28 05 	( . 
	ld a,001h		;122d	3e 01 	> . 
	jp 004e3h		;122f	c3 e3 04 	. . . 
l1232h:
	di			;1232	f3 	. 
	call sub_023bh		;1233	cd 3b 02 	. ; . 
	call sub_0213h		;1236	cd 13 02 	. . . 
	call sub_026dh		;1239	cd 6d 02 	. m . 
	call sub_027ah		;123c	cd 7a 02 	. z . 
	call sub_062dh		;123f	cd 2d 06 	. - . 
	call sub_028eh		;1242	cd 8e 02 	. . . 
	ld a,035h		;1245	3e 35 	> 5 
	ld hl,0c000h		;1247	21 00 c0 	! . . 
	call sub_0406h		;124a	cd 06 04 	. . . 
	ld a,035h		;124d	3e 35 	> 5 
	ld hl,0c010h		;124f	21 10 c0 	! . . 
	call sub_0406h		;1252	cd 06 04 	. . . 
	ld a,005h		;1255	3e 05 	> . 
	call sub_0b13h		;1257	cd 13 0b 	. . . 
	ld hl,0bd18h		;125a	21 18 bd 	! . . 
	ld de,l0020h		;125d	11 20 00 	.   . 
	ld bc,l00e0h		;1260	01 e0 00 	. . . 
	call sub_01e4h		;1263	cd e4 01 	. . . 
	call sub_0224h		;1266	cd 24 02 	. $ . 
	call sub_024eh		;1269	cd 4e 02 	. N . 
	ei			;126c	fb 	. 
	ret			;126d	c9 	. 
l126eh:
	bit 1,(hl)		;126e	cb 4e 	. N 
	jr nz,l1296h		;1270	20 24 	  $ 
	set 1,(hl)		;1272	cb ce 	. . 
	ld a,005h		;1274	3e 05 	> . 
	call sub_0b13h		;1276	cd 13 0b 	. . . 
	ld hl,0bcf2h		;1279	21 f2 bc 	! . . 
	ld de,03a8eh		;127c	11 8e 3a 	. . : 
	ld bc,l0013h		;127f	01 13 00 	. . . 
	di			;1282	f3 	. 
	call sub_0486h		;1283	cd 86 04 	. . . 
	ei			;1286	fb 	. 
	ld hl,0bd05h		;1287	21 05 bd 	! . . 
	ld de,03aceh		;128a	11 ce 3a 	. . : 
	ld bc,l0013h		;128d	01 13 00 	. . . 
	di			;1290	f3 	. 
	call sub_0486h		;1291	cd 86 04 	. . . 
	ei			;1294	fb 	. 
	ret			;1295	c9 	. 
l1296h:
	call sub_04f7h		;1296	cd f7 04 	. . . 
	jr z,l12a1h		;1299	28 06 	( . 
	ld a,001h		;129b	3e 01 	> . 
	call 004e3h		;129d	cd e3 04 	. . . 
	ret			;12a0	c9 	. 
l12a1h:
	ld hl,0c117h		;12a1	21 17 c1 	! . . 
	inc (hl)			;12a4	34 	4 
	ld a,(hl)			;12a5	7e 	~ 
	cp 090h		;12a6	fe 90 	. . 
	ret c			;12a8	d8 	. 
	ld a,001h		;12a9	3e 01 	> . 
	call 004e3h		;12ab	cd e3 04 	. . . 
	ret			;12ae	c9 	. 
	ld hl,0c116h		;12af	21 16 c1 	! . . 
	bit 0,(hl)		;12b2	cb 46 	. F 
	jp nz,l132dh		;12b4	c2 2d 13 	. - . 
	call sub_0b1bh		;12b7	cd 1b 0b 	. . . 
	ld hl,0c116h		;12ba	21 16 c1 	! . . 
	set 0,(hl)		;12bd	cb c6 	. . 
	ld hl,0c120h		;12bf	21 20 c1 	!   . 
	ld (hl),000h		;12c2	36 00 	6 . 
	di			;12c4	f3 	. 
	call sub_023bh		;12c5	cd 3b 02 	. ; . 
	call sub_0213h		;12c8	cd 13 02 	. . . 
	call sub_026dh		;12cb	cd 6d 02 	. m . 
	call sub_027ah		;12ce	cd 7a 02 	. z . 
	call sub_028eh		;12d1	cd 8e 02 	. . . 
	call sub_062dh		;12d4	cd 2d 06 	. - . 
	call sub_0acah		;12d7	cd ca 0a 	. . . 
	ld a,003h		;12da	3e 03 	> . 
	call sub_0b13h		;12dc	cd 13 0b 	. . . 
	ld hl,08300h		;12df	21 00 83 	! . . 
	ld de,l0000h		;12e2	11 00 00 	. . . 
	ld bc,l1fe0h		;12e5	01 e0 1f 	. . . 
	call sub_0422h		;12e8	cd 22 04 	. " . 
	call sub_049bh		;12eb	cd 9b 04 	. . . 
	or a			;12ee	b7 	. 
	jr nz,l1317h		;12ef	20 26 	  & 
	ld a,007h		;12f1	3e 07 	> . 
	call sub_0b13h		;12f3	cd 13 0b 	. . . 
	ld hl,0bbd8h		;12f6	21 d8 bb 	! . . 
	ld de,l2000h		;12f9	11 00 20 	. .   
	call sub_0422h		;12fc	cd 22 04 	. " . 
	ld hl,l13abh		;12ff	21 ab 13 	! . . 
	ld de,l3b98h		;1302	11 98 3b 	. . ; 
	ld bc,l0010h		;1305	01 10 00 	. . . 
	call sub_046ch		;1308	cd 6c 04 	. l . 
	ld hl,l13bbh		;130b	21 bb 13 	! . . 
	ld de,03bd8h		;130e	11 d8 3b 	. . ; 
	ld bc,l0010h		;1311	01 10 00 	. . . 
	call sub_046ch		;1314	cd 6c 04 	. l . 
l1317h:
	ld bc,01600h		;1317	01 00 16 	. . . 
l131ah:
	call sub_0b67h		;131a	cd 67 0b 	. g . 
	inc c			;131d	0c 	. 
	djnz l131ah		;131e	10 fa 	. . 
	call sub_0224h		;1320	cd 24 02 	. $ . 
	call sub_024eh		;1323	cd 4e 02 	. N . 
	ei			;1326	fb 	. 
	ld a,083h		;1327	3e 83 	> . 
	call sub_0a99h		;1329	cd 99 0a 	. . . 
	ret			;132c	c9 	. 
l132dh:
	call sub_04f7h		;132d	cd f7 04 	. . . 
	jr z,l134ch		;1330	28 1a 	( . 
	and 0c0h		;1332	e6 c0 	. . 
	jr z,l1338h		;1334	28 02 	( . 
	ld a,080h		;1336	3e 80 	> . 
l1338h:
	push af			;1338	f5 	. 
	call sub_049bh		;1339	cd 9b 04 	. . . 
	and 001h		;133c	e6 01 	. . 
	pop bc			;133e	c1 	. 
	or b			;133f	b0 	. 
	ld (0c114h),a		;1340	32 14 c1 	2 . . 
	call sub_0b1bh		;1343	cd 1b 0b 	. . . 
	ld a,003h		;1346	3e 03 	> . 
	call 004e3h		;1348	cd e3 04 	. . . 
	ret			;134b	c9 	. 
l134ch:
	ld hl,0c117h		;134c	21 17 c1 	! . . 
	bit 0,(hl)		;134f	cb 46 	. F 
	jr nz,l1366h		;1351	20 13 	  . 
	inc hl			;1353	23 	# 
	inc (hl)			;1354	34 	4 
	ld a,(hl)			;1355	7e 	~ 
	cp 060h		;1356	fe 60 	. ` 
	ret nz			;1358	c0 	. 
	inc hl			;1359	23 	# 
	inc (hl)			;135a	34 	4 
	ld a,(hl)			;135b	7e 	~ 
	dec a			;135c	3d 	= 
	ret z			;135d	c8 	. 
	ld (hl),000h		;135e	36 00 	6 . 
	dec hl			;1360	2b 	+ 
	ld (hl),000h		;1361	36 00 	6 . 
	dec hl			;1363	2b 	+ 
	inc (hl)			;1364	34 	4 
	ret			;1365	c9 	. 
l1366h:
	bit 1,(hl)		;1366	cb 4e 	. N 
	jr nz,l1392h		;1368	20 28 	  ( 
	ld hl,0c109h		;136a	21 09 c1 	! . . 
	inc (hl)			;136d	34 	4 
	ld b,(hl)			;136e	46 	F 
	ld c,009h		;136f	0e 09 	. . 
	push bc			;1371	c5 	. 
	di			;1372	f3 	. 
	call sub_003bh		;1373	cd 3b 00 	. ; . 
	ei			;1376	fb 	. 
	pop bc			;1377	c1 	. 
	ld a,b			;1378	78 	x 
	and 007h		;1379	e6 07 	. . 
	ret nz			;137b	c0 	. 
	ld a,b			;137c	78 	x 
	rra			;137d	1f 	. 
	rra			;137e	1f 	. 
	rra			;137f	1f 	. 
	and 01fh		;1380	e6 1f 	. . 
	add a,015h		;1382	c6 15 	. . 
	cp 023h		;1384	fe 23 	. # 
	jr c,l138dh		;1386	38 05 	8 . 
	ld hl,0c117h		;1388	21 17 c1 	! . . 
	set 1,(hl)		;138b	cb ce 	. . 
l138dh:
	ld c,a			;138d	4f 	O 
	call sub_0b67h		;138e	cd 67 0b 	. g . 
	ret			;1391	c9 	. 
l1392h:
	inc hl			;1392	23 	# 
	inc (hl)			;1393	34 	4 
	ld a,(hl)			;1394	7e 	~ 
	cp 0ffh		;1395	fe ff 	. . 
	push af			;1397	f5 	. 
	bit 1,a		;1398	cb 4f 	. O 
	ld a,004h		;139a	3e 04 	> . 
	jr nz,l13a0h		;139c	20 02 	  . 
	ld a,010h		;139e	3e 10 	> . 
l13a0h:
	ld (0d396h),a		;13a0	32 96 d3 	2 . . 
	pop af			;13a3	f1 	. 
	ret c			;13a4	d8 	. 
	ld a,002h		;13a5	3e 02 	> . 
	call 004e3h		;13a7	cd e3 04 	. . . 
	ret			;13aa	c9 	. 
l13abh:
	nop			;13ab	00 	. 
	add hl,bc			;13ac	09 	. 
	ld bc,l0408h+1		;13ad	01 09 04 	. . . 
	add hl,bc			;13b0	09 	. 
	dec b			;13b1	05 	. 
	add hl,bc			;13b2	09 	. 
	ex af,af'			;13b3	08 	. 
	add hl,bc			;13b4	09 	. 
	add hl,bc			;13b5	09 	. 
	add hl,bc			;13b6	09 	. 
	inc c			;13b7	0c 	. 
	add hl,bc			;13b8	09 	. 
	dec c			;13b9	0d 	. 
	add hl,bc			;13ba	09 	. 
l13bbh:
	ld (bc),a			;13bb	02 	. 
	add hl,bc			;13bc	09 	. 
	inc bc			;13bd	03 	. 
	add hl,bc			;13be	09 	. 
	ld b,009h		;13bf	06 09 	. . 
	rlca			;13c1	07 	. 
	add hl,bc			;13c2	09 	. 
	ld a,(bc)			;13c3	0a 	. 
	add hl,bc			;13c4	09 	. 
	dec bc			;13c5	0b 	. 
	add hl,bc			;13c6	09 	. 
	ld c,009h		;13c7	0e 09 	. . 
	rrca			;13c9	0f 	. 
	add hl,bc			;13ca	09 	. 
	ld hl,0c116h		;13cb	21 16 c1 	! . . 
	bit 0,(hl)		;13ce	cb 46 	. F 
	jr nz,l13ebh		;13d0	20 19 	  . 
	inc (hl)			;13d2	34 	4 
	call sub_0213h		;13d3	cd 13 02 	. . . 
	di			;13d6	f3 	. 
	call sub_026dh		;13d7	cd 6d 02 	. m . 
	call sub_024eh		;13da	cd 4e 02 	. N . 
	call sub_028eh		;13dd	cd 8e 02 	. . . 
	call sub_062dh		;13e0	cd 2d 06 	. - . 
	ei			;13e3	fb 	. 
	call sub_0224h		;13e4	cd 24 02 	. $ . 
	call sub_0ae5h		;13e7	cd e5 0a 	. . . 
	ret			;13ea	c9 	. 
l13ebh:
	call sub_04f7h		;13eb	cd f7 04 	. . . 
	jr nz,l13fch		;13ee	20 0c 	  . 
	ld a,(0c120h)		;13f0	3a 20 c1 	:   . 
	or a			;13f3	b7 	. 
	jr z,l1402h		;13f4	28 0c 	( . 
	ld a,000h		;13f6	3e 00 	> . 
	call 004e3h		;13f8	cd e3 04 	. . . 
	ret			;13fb	c9 	. 
l13fch:
	ld a,001h		;13fc	3e 01 	> . 
	call 004e3h		;13fe	cd e3 04 	. . . 
	ret			;1401	c9 	. 
l1402h:
	ld a,(0c10bh)		;1402	3a 0b c1 	: . . 
	rrca			;1405	0f 	. 
	rrca			;1406	0f 	. 
	rrca			;1407	0f 	. 
	and 038h		;1408	e6 38 	. 8 
	bit 4,a		;140a	cb 67 	. g 
	ld c,020h		;140c	0e 20 	.   
	jr nz,l1412h		;140e	20 02 	  . 
	ld c,000h		;1410	0e 00 	. . 
l1412h:
	bit 5,a		;1412	cb 6f 	. o 
	jr z,l1418h		;1414	28 02 	( . 
	set 4,c		;1416	cb e1 	. . 
l1418h:
	and 008h		;1418	e6 08 	. . 
	or c			;141a	b1 	. 
	ld (0c11fh),a		;141b	32 1f c1 	2 . . 
	call sub_14e3h		;141e	cd e3 14 	. . . 
	ret			;1421	c9 	. 
	ld hl,0c116h		;1422	21 16 c1 	! . . 
	bit 0,(hl)		;1425	cb 46 	. F 
	jr nz,l142fh		;1427	20 06 	  . 
	set 0,(hl)		;1429	cb c6 	. . 
	call sub_0b1bh		;142b	cd 1b 0b 	. . . 
	ret			;142e	c9 	. 
l142fh:
	ld a,(0c11eh)		;142f	3a 1e c1 	: . . 
	add a,a			;1432	87 	. 
	ld l,a			;1433	6f 	o 
	ld h,000h		;1434	26 00 	& . 
	ld de,l143fh		;1436	11 3f 14 	. ? . 
	add hl,de			;1439	19 	. 
	ld e,(hl)			;143a	5e 	^ 
	inc hl			;143b	23 	# 
	ld d,(hl)			;143c	56 	V 
	ex de,hl			;143d	eb 	. 
	jp (hl)			;143e	e9 	. 
l143fh:
	ld e,h			;143f	5c 	\ 
	inc d			;1440	14 	. 
	rst 38h			;1441	ff 	. 
	inc d			;1442	14 	. 
	ld c,015h		;1443	0e 15 	. . 
	call nz,01715h		;1445	c4 15 17 	. . . 
	ld d,01dh		;1448	16 1d 	. . 
	ld d,032h		;144a	16 32 	. 2 
	ld e,0c1h		;144c	1e c1 	. . 
	ld hl,0c163h		;144e	21 63 c1 	! c . 
	ld de,0c164h		;1451	11 64 c1 	. d . 
	ld bc,l0005h+2		;1454	01 07 00 	. . . 
	ld (hl),000h		;1457	36 00 	6 . 
	ldir		;1459	ed b0 	. . 
	ret			;145b	c9 	. 
	ld hl,0c163h		;145c	21 63 c1 	! c . 
	bit 0,(hl)		;145f	cb 46 	. F 
	jr nz,l14a2h		;1461	20 3f 	  ? 
	inc (hl)			;1463	34 	4 
	xor a			;1464	af 	. 
	ld (0c120h),a		;1465	32 20 c1 	2   . 
	ld hl,0c114h		;1468	21 14 c1 	! . . 
	bit 6,(hl)		;146b	cb 76 	. v 
	ld hl,0c137h		;146d	21 37 c1 	! 7 . 
	jr z,l1475h		;1470	28 03 	( . 
	ld hl,0c14dh		;1472	21 4d c1 	! M . 
l1475h:
	ld de,0c121h		;1475	11 21 c1 	. ! . 
	ld bc,l0016h		;1478	01 16 00 	. . . 
	ldir		;147b	ed b0 	. . 
	call sub_0af3h		;147d	cd f3 0a 	. . . 
	ld hl,0c12dh		;1480	21 2d c1 	! - . 
	dec (hl)			;1483	35 	5 
	di			;1484	f3 	. 
	call sub_023bh		;1485	cd 3b 02 	. ; . 
	call sub_0213h		;1488	cd 13 02 	. . . 
	call sub_062dh		;148b	cd 2d 06 	. - . 
	call sub_028eh		;148e	cd 8e 02 	. . . 
	call sub_027ah		;1491	cd 7a 02 	. z . 
	call sub_0b01h		;1494	cd 01 0b 	. . . 
	call sub_0acah		;1497	cd ca 0a 	. . . 
	call sub_0224h		;149a	cd 24 02 	. $ . 
	call sub_024eh		;149d	cd 4e 02 	. N . 
	ei			;14a0	fb 	. 
	ret			;14a1	c9 	. 
l14a2h:
	ld a,(0c120h)		;14a2	3a 20 c1 	:   . 
	or a			;14a5	b7 	. 
	jr z,sub_14e3h		;14a6	28 3b 	( ; 
	ld c,001h		;14a8	0e 01 	. . 
	bit 5,a		;14aa	cb 6f 	. o 
	jr nz,l14c2h		;14ac	20 14 	  . 
	ld c,003h		;14ae	0e 03 	. . 
	bit 4,a		;14b0	cb 67 	. g 
	jr nz,l14c2h		;14b2	20 0e 	  . 
	ld c,002h		;14b4	0e 02 	. . 
	bit 3,a		;14b6	cb 5f 	. _ 
	jr nz,l14c7h		;14b8	20 0d 	  . 
	ld a,(0c12dh)		;14ba	3a 2d c1 	: - . 
	or a			;14bd	b7 	. 
	jr nz,l14c2h		;14be	20 02 	  . 
	ld c,005h		;14c0	0e 05 	. . 
l14c2h:
	ld a,c			;14c2	79 	y 
	call 0144bh		;14c3	cd 4b 14 	. K . 
	ret			;14c6	c9 	. 
l14c7h:
	ex af,af'			;14c7	08 	. 
	ld a,(0d39ah)		;14c8	3a 9a d3 	: . . 
	ld (0c129h),a		;14cb	32 29 c1 	2 ) . 
	ld a,(0d39bh)		;14ce	3a 9b d3 	: . . 
	ld (0c128h),a		;14d1	32 28 c1 	2 ( . 
	ex af,af'			;14d4	08 	. 
	bit 6,a		;14d5	cb 77 	. w 
	jr z,l14c2h		;14d7	28 e9 	( . 
	ld a,(0c12dh)		;14d9	3a 2d c1 	: - . 
	or a			;14dc	b7 	. 
	jr nz,l14c2h		;14dd	20 e3 	  . 
	ld c,005h		;14df	0e 05 	. . 
	jr l14c2h		;14e1	18 df 	. . 
sub_14e3h:
	ld ix,0c220h		;14e3	dd 21 20 c2 	. !   . 
	call sub_3c9fh		;14e7	cd 9f 3c 	. . < 
	ld a,(0c16bh)		;14ea	3a 6b c1 	: k . 
	rra			;14ed	1f 	. 
	ret nc			;14ee	d0 	. 
	call 047a9h		;14ef	cd a9 47 	. . G 
	call sub_10cah		;14f2	cd ca 10 	. . . 
	call sub_066dh		;14f5	cd 6d 06 	. m . 
	call 05e5eh		;14f8	cd 5e 5e 	. ^ ^ 
	call 06375h		;14fb	cd 75 63 	. u c 
	ret			;14fe	c9 	. 
	call 05e8bh		;14ff	cd 8b 5e 	. . ^ 
	ld a,(0c163h)		;1502	3a 63 c1 	: c . 
	bit 7,a		;1505	cb 7f 	.  
	ret z			;1507	c8 	. 
	ld a,002h		;1508	3e 02 	> . 
	call 0144bh		;150a	cd 4b 14 	. K . 
	ret			;150d	c9 	. 
	call sub_0ab1h		;150e	cd b1 0a 	. . . 
	call sub_0ae5h		;1511	cd e5 0a 	. . . 
	ld a,(0c120h)		;1514	3a 20 c1 	:   . 
	bit 6,a		;1517	cb 77 	. w 
	jr nz,l153ah		;1519	20 1f 	  . 
	bit 3,a		;151b	cb 5f 	. _ 
	jr nz,l152dh		;151d	20 0e 	  . 
	xor a			;151f	af 	. 
	ld (0c129h),a		;1520	32 29 c1 	2 ) . 
	ld (0c12fh),a		;1523	32 2f c1 	2 / . 
	ld (0c131h),a		;1526	32 31 c1 	2 1 . 
	ld hl,0c128h		;1529	21 28 c1 	! ( . 
	inc (hl)			;152c	34 	4 
l152dh:
	ld hl,0c12dh		;152d	21 2d c1 	! - . 
	inc (hl)			;1530	34 	4 
	ld hl,0c127h		;1531	21 27 c1 	! ' . 
	res 1,(hl)		;1534	cb 8e 	. . 
	res 3,(hl)		;1536	cb 9e 	. . 
	jr l154fh		;1538	18 15 	. . 
l153ah:
	xor a			;153a	af 	. 
	ld (0c127h),a		;153b	32 27 c1 	2 ' . 
	ld a,(0c12ah)		;153e	3a 2a c1 	: * . 
	cp 016h		;1541	fe 16 	. . 
	jr nc,l154fh		;1543	30 0a 	0 . 
	ld a,(0c129h)		;1545	3a 29 c1 	: ) . 
	or a			;1548	b7 	. 
	jr z,l154fh		;1549	28 04 	( . 
	dec a			;154b	3d 	= 
	ld (0c129h),a		;154c	32 29 c1 	2 ) . 
l154fh:
	xor a			;154f	af 	. 
	ld (0c12ah),a		;1550	32 2a c1 	2 * . 
	ld hl,l0000h		;1553	21 00 00 	! . . 
	ld (0c12bh),hl		;1556	22 2b c1 	" + . 
	ld a,(0c114h)		;1559	3a 14 c1 	: . . 
	bit 6,a		;155c	cb 77 	. w 
	ld de,0c137h		;155e	11 37 c1 	. 7 . 
	ld hl,0c121h		;1561	21 21 c1 	! ! . 
	jr z,l1569h		;1564	28 03 	( . 
	ld de,0c14dh		;1566	11 4d c1 	. M . 
l1569h:
	ld bc,l0016h		;1569	01 16 00 	. . . 
	ldir		;156c	ed b0 	. . 
	ld hl,0c114h		;156e	21 14 c1 	! . . 
	ld a,(0c120h)		;1571	3a 20 c1 	:   . 
	bit 6,a		;1574	cb 77 	. w 
	jr z,l15aeh		;1576	28 36 	( 6 
	ld a,(0c12dh)		;1578	3a 2d c1 	: - . 
	or a			;157b	b7 	. 
	jr nz,l1596h		;157c	20 18 	  . 
	bit 7,(hl)		;157e	cb 7e 	. ~ 
	jr z,l15b9h		;1580	28 37 	( 7 
	bit 6,(hl)		;1582	cb 76 	. v 
	jr nz,l158eh		;1584	20 08 	  . 
	set 4,(hl)		;1586	cb e6 	. . 
	bit 5,(hl)		;1588	cb 6e 	. n 
	jr nz,l15b9h		;158a	20 2d 	  - 
	jr l15a8h		;158c	18 1a 	. . 
l158eh:
	set 5,(hl)		;158e	cb ee 	. . 
	bit 4,(hl)		;1590	cb 66 	. f 
	jr nz,l15b9h		;1592	20 25 	  % 
	jr l15a8h		;1594	18 12 	. . 
l1596h:
	bit 7,(hl)		;1596	cb 7e 	. ~ 
	jr z,l15aeh		;1598	28 14 	( . 
	bit 6,(hl)		;159a	cb 76 	. v 
	jr nz,l15a4h		;159c	20 06 	  . 
	bit 5,(hl)		;159e	cb 6e 	. n 
	jr nz,l15aeh		;15a0	20 0c 	  . 
	jr l15a8h		;15a2	18 04 	. . 
l15a4h:
	bit 4,(hl)		;15a4	cb 66 	. f 
	jr nz,l15aeh		;15a6	20 06 	  . 
l15a8h:
	ld a,040h		;15a8	3e 40 	> @ 
	xor (hl)			;15aa	ae 	. 
	ld (hl),a			;15ab	77 	w 
	jr l15aeh		;15ac	18 00 	. . 
l15aeh:
	ld hl,0c120h		;15ae	21 20 c1 	!   . 
	ld (hl),000h		;15b1	36 00 	6 . 
	ld a,000h		;15b3	3e 00 	> . 
	call 0144bh		;15b5	cd 4b 14 	. K . 
	ret			;15b8	c9 	. 
l15b9h:
	ld hl,0c120h		;15b9	21 20 c1 	!   . 
	ld (hl),000h		;15bc	36 00 	6 . 
	ld a,004h		;15be	3e 04 	> . 
	call 0144bh		;15c0	cd 4b 14 	. K . 
	ret			;15c3	c9 	. 
	ld hl,0c163h		;15c4	21 63 c1 	! c . 
	bit 0,(hl)		;15c7	cb 46 	. F 
	jr nz,l15fch		;15c9	20 31 	  1 
	inc (hl)			;15cb	34 	4 
	xor a			;15cc	af 	. 
	ld (0c128h),a		;15cd	32 28 c1 	2 ( . 
	ld (0c12dh),a		;15d0	32 2d c1 	2 - . 
	call sub_0ab1h		;15d3	cd b1 0a 	. . . 
	di			;15d6	f3 	. 
	call sub_023bh		;15d7	cd 3b 02 	. ; . 
	call sub_0213h		;15da	cd 13 02 	. . . 
	call sub_062dh		;15dd	cd 2d 06 	. - . 
	call sub_028eh		;15e0	cd 8e 02 	. . . 
	call sub_027ah		;15e3	cd 7a 02 	. z . 
	call sub_0b01h		;15e6	cd 01 0b 	. . . 
	call sub_0acah		;15e9	cd ca 0a 	. . . 
	call sub_0224h		;15ec	cd 24 02 	. $ . 
	call sub_024eh		;15ef	cd 4e 02 	. N . 
	ei			;15f2	fb 	. 
	call sub_0b8ah		;15f3	cd 8a 0b 	. . . 
	ld c,033h		;15f6	0e 33 	. 3 
	call sub_0b67h		;15f8	cd 67 0b 	. g . 
	ret			;15fb	c9 	. 
l15fch:
	ld a,(0c11fh)		;15fc	3a 1f c1 	: . . 
	and 030h		;15ff	e6 30 	. 0 
	jr nz,l160ch		;1601	20 09 	  . 
	inc hl			;1603	23 	# 
	inc (hl)			;1604	34 	4 
	ret nz			;1605	c0 	. 
l1606h:
	inc hl			;1606	23 	# 
	inc (hl)			;1607	34 	4 
	ld a,(hl)			;1608	7e 	~ 
	cp 002h		;1609	fe 02 	. . 
	ret c			;160b	d8 	. 
l160ch:
	ld hl,0c120h		;160c	21 20 c1 	!   . 
	ld (hl),040h		;160f	36 40 	6 @ 
	ld a,002h		;1611	3e 02 	> . 
	call 0144bh		;1613	cd 4b 14 	. K . 
	ret			;1616	c9 	. 
	ld a,000h		;1617	3e 00 	> . 
	call 004e3h		;1619	cd e3 04 	. . . 
	ret			;161c	c9 	. 
	ld hl,0c163h		;161d	21 63 c1 	! c . 
	bit 0,(hl)		;1620	cb 46 	. F 
	jr nz,l167bh		;1622	20 57 	  W 
	inc (hl)			;1624	34 	4 
	inc hl			;1625	23 	# 
	ld a,(0c11fh)		;1626	3a 1f c1 	: . . 
	and 03ch		;1629	e6 3c 	. < 
	ld (hl),a			;162b	77 	w 
	call sub_0ad7h		;162c	cd d7 0a 	. . . 
	call sub_0af3h		;162f	cd f3 0a 	. . . 
	call 050d0h		;1632	cd d0 50 	. . P 
	ld hl,0c3a4h		;1635	21 a4 c3 	! . . 
	ld (hl),048h		;1638	36 48 	6 H 
	inc hl			;163a	23 	# 
	inc hl			;163b	23 	# 
	inc hl			;163c	23 	# 
	ld (hl),06ch		;163d	36 6c 	6 l 
	ld a,033h		;163f	3e 33 	> 3 
	call sub_06e2h		;1641	cd e2 06 	. . . 
	ld hl,0d395h		;1644	21 95 d3 	! . . 
	ld bc,l0005h		;1647	01 05 00 	. . . 
	ld de,0d396h		;164a	11 96 d3 	. . . 
	ld (hl),000h		;164d	36 00 	6 . 
	ldir		;164f	ed b0 	. . 
	di			;1651	f3 	. 
	call sub_023bh		;1652	cd 3b 02 	. ; . 
	call sub_0213h		;1655	cd 13 02 	. . . 
	call sub_062dh		;1658	cd 2d 06 	. - . 
	call sub_028eh		;165b	cd 8e 02 	. . . 
	call sub_027ah		;165e	cd 7a 02 	. z . 
	call sub_0b01h		;1661	cd 01 0b 	. . . 
	call sub_0acah		;1664	cd ca 0a 	. . . 
	call sub_0224h		;1667	cd 24 02 	. $ . 
	call sub_024eh		;166a	cd 4e 02 	. N . 
	ei			;166d	fb 	. 
	call sub_0b8ah		;166e	cd 8a 0b 	. . . 
	ld bc,00328h		;1671	01 28 03 	. ( . 
l1674h:
	call sub_0b67h		;1674	cd 67 0b 	. g . 
	inc c			;1677	0c 	. 
	djnz l1674h		;1678	10 fa 	. . 
	ret			;167a	c9 	. 
l167bh:
	inc hl			;167b	23 	# 
	ld a,(0c11fh)		;167c	3a 1f c1 	: . . 
	and 03ch		;167f	e6 3c 	. < 
	cp (hl)			;1681	be 	. 
	jr z,l16b4h		;1682	28 30 	( 0 
	ld c,a			;1684	4f 	O 
	and 030h		;1685	e6 30 	. 0 
	jr z,l169dh		;1687	28 14 	( . 
	dec hl			;1689	2b 	+ 
	bit 7,(hl)		;168a	cb 7e 	. ~ 
	jr z,l16cah		;168c	28 3c 	( < 
	ld hl,0c121h		;168e	21 21 c1 	! ! . 
	ld de,0c122h		;1691	11 22 c1 	. " . 
	ld bc,l0015h		;1694	01 15 00 	. . . 
	ld (hl),000h		;1697	36 00 	6 . 
	ldir		;1699	ed b0 	. . 
	jr l16cah		;169b	18 2d 	. - 
l169dh:
	ld a,c			;169d	79 	y 
	xor (hl)			;169e	ae 	. 
	xor (hl)			;169f	ae 	. 
	and 00ch		;16a0	e6 0c 	. . 
	ld (hl),c			;16a2	71 	q 
	jr z,l16b4h		;16a3	28 0f 	( . 
	dec hl			;16a5	2b 	+ 
	ld a,080h		;16a6	3e 80 	> . 
	xor (hl)			;16a8	ae 	. 
	ld (hl),a			;16a9	77 	w 
	rla			;16aa	17 	. 
	ld a,06ch		;16ab	3e 6c 	> l 
	jr nc,l16b1h		;16ad	30 02 	0 . 
	ld a,094h		;16af	3e 94 	> . 
l16b1h:
	ld (0c3a7h),a		;16b1	32 a7 c3 	2 . . 
l16b4h:
	call sub_066dh		;16b4	cd 6d 06 	. m . 
	ld hl,0c170h		;16b7	21 70 c1 	! p . 
	inc (hl)			;16ba	34 	4 
	call 04fdch		;16bb	cd dc 4f 	. . O 
	ld a,(0c647h)		;16be	3a 47 c6 	: G . 
	cp 038h		;16c1	fe 38 	. 8 
	ret nc			;16c3	d0 	. 
	ld a,002h		;16c4	3e 02 	> . 
	call 0144bh		;16c6	cd 4b 14 	. K . 
	ret			;16c9	c9 	. 
l16cah:
	xor a			;16ca	af 	. 
	ld (0c129h),a		;16cb	32 29 c1 	2 ) . 
	ld (0c127h),a		;16ce	32 27 c1 	2 ' . 
	ld (0c12eh),a		;16d1	32 2e c1 	2 . . 
	ld hl,0c121h		;16d4	21 21 c1 	! ! . 
	ld de,0c122h		;16d7	11 22 c1 	. " . 
	ld bc,l0005h		;16da	01 05 00 	. . . 
	ld (hl),a			;16dd	77 	w 
	ldir		;16de	ed b0 	. . 
	ld a,003h		;16e0	3e 03 	> . 
	ld (0c12dh),a		;16e2	32 2d c1 	2 - . 
	ld a,002h		;16e5	3e 02 	> . 
	call 0144bh		;16e7	cd 4b 14 	. K . 
	call sub_0ae5h		;16ea	cd e5 0a 	. . . 
	call sub_0af3h		;16ed	cd f3 0a 	. . . 
	di			;16f0	f3 	. 
	call sub_062dh		;16f1	cd 2d 06 	. - . 
	ei			;16f4	fb 	. 
	ret			;16f5	c9 	. 
	rst 38h			;16f6	ff 	. 
sub_16f7h:
	call sub_1f31h		;16f7	cd 31 1f 	. 1 . 
	call sub_0acah		;16fa	cd ca 0a 	. . . 
	ld hl,l3800h		;16fd	21 00 38 	! . 8 
	ld (0cc1ch),hl		;1700	22 1c cc 	" . . 
	ld (0cc29h),hl		;1703	22 29 cc 	" ) . 
	ld a,000h		;1706	3e 00 	> . 
	ld (0cc1eh),a		;1708	32 1e cc 	2 . . 
	ld (0cc88h),a		;170b	32 88 cc 	2 . . 
	ld (0cca7h),a		;170e	32 a7 cc 	2 . . 
	ld (0cc87h),a		;1711	32 87 cc 	2 . . 
	ld (0cb39h),a		;1714	32 39 cb 	2 9 . 
	ld (0cc86h),a		;1717	32 86 cc 	2 . . 
	ld hl,l0000h		;171a	21 00 00 	! . . 
	ld (0cb3bh),hl		;171d	22 3b cb 	" ; . 
	ld (0cb3dh),hl		;1720	22 3d cb 	" = . 
	ld a,(0c129h)		;1723	3a 29 c1 	: ) . 
	add a,a			;1726	87 	. 
	add a,a			;1727	87 	. 
	add a,a			;1728	87 	. 
	ld l,000h		;1729	2e 00 	. . 
	ld h,a			;172b	67 	g 
	ld (0c12bh),hl		;172c	22 2b c1 	" + . 
	ld a,007h		;172f	3e 07 	> . 
	call sub_0b13h		;1731	cd 13 0b 	. . . 
	ld hl,08000h		;1734	21 00 80 	! . . 
	ld a,(0c128h)		;1737	3a 28 c1 	: ( . 
	ld e,a			;173a	5f 	_ 
	ld d,000h		;173b	16 00 	. . 
	add hl,de			;173d	19 	. 
	ld e,(hl)			;173e	5e 	^ 
	ld a,e			;173f	7b 	{ 
	cp 001h		;1740	fe 01 	. . 
	jp nz,l1748h		;1742	c2 48 17 	. H . 
	jp l174dh		;1745	c3 4d 17 	. M . 
l1748h:
	cp 002h		;1748	fe 02 	. . 
	jp nz,l1752h		;174a	c2 52 17 	. R . 
l174dh:
	ld hl,0cca7h		;174d	21 a7 cc 	! . . 
	set 0,(hl)		;1750	cb c6 	. . 
l1752h:
	rlc e		;1752	cb 03 	. . 
	rlc e		;1754	cb 03 	. . 
	rlc e		;1756	cb 03 	. . 
	ld hl,082d5h		;1758	21 d5 82 	! . . 
	add hl,de			;175b	19 	. 
	ld a,(0c129h)		;175c	3a 29 c1 	: ) . 
	ld e,a			;175f	5f 	_ 
	rlc e		;1760	cb 03 	. . 
	add hl,de			;1762	19 	. 
	ld e,(hl)			;1763	5e 	^ 
	inc hl			;1764	23 	# 
	ld d,(hl)			;1765	56 	V 
	ld (0cc17h),de		;1766	ed 53 17 cc 	. S . . 
	ld a,040h		;176a	3e 40 	> @ 
	ld (0cc21h),a		;176c	32 21 cc 	2 ! . 
	ld a,004h		;176f	3e 04 	> . 
	jp l1796h		;1771	c3 96 17 	. . . 
l1774h:
	call sub_10cah		;1774	cd ca 10 	. . . 
	call sub_066dh		;1777	cd 6d 06 	. m . 
	call sub_3f09h		;177a	cd 09 3f 	. . ? 
	ld a,(0cc21h)		;177d	3a 21 cc 	: ! . 
	dec a			;1780	3d 	= 
	ld (0cc21h),a		;1781	32 21 cc 	2 ! . 
	jp z,l1795h		;1784	ca 95 17 	. . . 
	ld hl,l0000h		;1787	21 00 00 	! . . 
	ld (0cb3bh),hl		;178a	22 3b cb 	" ; . 
	ld (0cb3dh),hl		;178d	22 3d cb 	" = . 
	ld a,004h		;1790	3e 04 	> . 
	jp l1796h		;1792	c3 96 17 	. . . 
l1795h:
	ret			;1795	c9 	. 
l1796h:
	ld c,a			;1796	4f 	O 
	ld a,(0cc21h)		;1797	3a 21 cc 	: ! . 
	and a			;179a	a7 	. 
	ld a,c			;179b	79 	y 
	jp nz,l17b3h		;179c	c2 b3 17 	. . . 
	and a			;179f	a7 	. 
	ret z			;17a0	c8 	. 
	ld hl,0cb39h		;17a1	21 39 cb 	! 9 . 
	bit 0,(hl)		;17a4	cb 46 	. F 
	ret nz			;17a6	c0 	. 
	bit 1,(hl)		;17a7	cb 4e 	. N 
	ret nz			;17a9	c0 	. 
	bit 2,(hl)		;17aa	cb 56 	. V 
	ret nz			;17ac	c0 	. 
	bit 3,(hl)		;17ad	cb 5e 	. ^ 
	ret nz			;17af	c0 	. 
	bit 6,(hl)		;17b0	cb 76 	. v 
	ret nz			;17b2	c0 	. 
l17b3h:
	ld c,a			;17b3	4f 	O 
	ld a,(0cc1eh)		;17b4	3a 1e cc 	: . . 
	ld l,a			;17b7	6f 	o 
	ld h,000h		;17b8	26 00 	& . 
	add hl,hl			;17ba	29 	) 
	add hl,hl			;17bb	29 	) 
	add hl,hl			;17bc	29 	) 
	ld de,l3800h		;17bd	11 00 38 	. . 8 
	add hl,de			;17c0	19 	. 
	ld (0cc1ch),hl		;17c1	22 1c cc 	" . . 
	ld a,c			;17c4	79 	y 
	ld l,000h		;17c5	2e 00 	. . 
	rra			;17c7	1f 	. 
	rr l		;17c8	cb 1d 	. . 
	ld h,a			;17ca	67 	g 
	ld (0cb3bh),hl		;17cb	22 3b cb 	" ; . 
	push bc			;17ce	c5 	. 
	ld a,(0c12bh)		;17cf	3a 2b c1 	: + . 
	add a,c			;17d2	81 	. 
	and 0f8h		;17d3	e6 f8 	. . 
	ld b,a			;17d5	47 	G 
	ld a,(0c12bh)		;17d6	3a 2b c1 	: + . 
	and 0f8h		;17d9	e6 f8 	. . 
	cp b			;17db	b8 	. 
	jp nz,l1841h		;17dc	c2 41 18 	. A . 
	ld a,(0c12bh)		;17df	3a 2b c1 	: + . 
	add a,c			;17e2	81 	. 
	and 007h		;17e3	e6 07 	. . 
	cp 004h		;17e5	fe 04 	. . 
	jr c,l1841h		;17e7	38 58 	8 X 
	ld a,(0cc86h)		;17e9	3a 86 cc 	: . . 
	or a			;17ec	b7 	. 
	jr z,l1841h		;17ed	28 52 	( R 
	ld hl,0cb39h		;17ef	21 39 cb 	! 9 . 
	bit 5,(hl)		;17f2	cb 6e 	. n 
	jr nz,l17fbh		;17f4	20 05 	  . 
	bit 7,(hl)		;17f6	cb 7e 	. ~ 
	jp z,l1838h		;17f8	ca 38 18 	. 8 . 
l17fbh:
	ld a,(0c109h)		;17fb	3a 09 c1 	: . . 
	ld c,a			;17fe	4f 	O 
	ld a,(0cc85h)		;17ff	3a 85 cc 	: . . 
	ld h,a			;1802	67 	g 
	add a,c			;1803	81 	. 
	cp 0f0h		;1804	fe f0 	. . 
	jp nc,l1814h		;1806	d2 14 18 	. . . 
	cp 0e0h		;1809	fe e0 	. . 
	jp z,l1819h		;180b	ca 19 18 	. . . 
	jp nc,l181eh		;180e	d2 1e 18 	. . . 
	jp l1823h		;1811	c3 23 18 	. # . 
l1814h:
	sub 020h		;1814	d6 20 	.   
	jp l1823h		;1816	c3 23 18 	. # . 
l1819h:
	ld a,000h		;1819	3e 00 	> . 
	jp l1823h		;181b	c3 23 18 	. # . 
l181eh:
	add a,020h		;181e	c6 20 	.   
	jp l1823h		;1820	c3 23 18 	. # . 
l1823h:
	ld b,a			;1823	47 	G 
	ld c,009h		;1824	0e 09 	. . 
	ld (0cc27h),bc		;1826	ed 43 27 cc 	. C ' . 
	ld l,000h		;182a	2e 00 	. . 
	sra h		;182c	cb 2c 	. , 
	rr l		;182e	cb 1d 	. . 
	ld (0cb3dh),hl		;1830	22 3d cb 	" = . 
	ld hl,0cb39h		;1833	21 39 cb 	! 9 . 
	set 3,(hl)		;1836	cb de 	. . 
l1838h:
	ld hl,0cb39h		;1838	21 39 cb 	! 9 . 
	res 5,(hl)		;183b	cb ae 	. . 
	xor a			;183d	af 	. 
	ld (0cc86h),a		;183e	32 86 cc 	2 . . 
l1841h:
	pop bc			;1841	c1 	. 
	ld a,(0c12bh)		;1842	3a 2b c1 	: + . 
	and 007h		;1845	e6 07 	. . 
	add a,c			;1847	81 	. 
	ld b,000h		;1848	06 00 	. . 
	sub 008h		;184a	d6 08 	. . 
	jp z,l1870h		;184c	ca 70 18 	. p . 
	jp nc,l1870h		;184f	d2 70 18 	. p . 
	ld hl,(0c12bh)		;1852	2a 2b c1 	* + . 
	add hl,bc			;1855	09 	. 
	ld (0c12bh),hl		;1856	22 2b c1 	" + . 
	ld a,l			;1859	7d 	} 
	neg		;185a	ed 44 	. D 
	ld b,a			;185c	47 	G 
	ld c,008h		;185d	0e 08 	. . 
	ld (0cc23h),bc		;185f	ed 43 23 cc 	. C # . 
	ld hl,0cb39h		;1863	21 39 cb 	! 9 . 
	set 2,(hl)		;1866	cb d6 	. . 
	ld a,(0cc21h)		;1868	3a 21 cc 	: ! . 
	or a			;186b	b7 	. 
	jp nz,sub_1e03h		;186c	c2 03 1e 	. . . 
	ret			;186f	c9 	. 
l1870h:
	push af			;1870	f5 	. 
	ld a,007h		;1871	3e 07 	> . 
	call sub_0b13h		;1873	cd 13 0b 	. . . 
	pop af			;1876	f1 	. 
	ld a,c			;1877	79 	y 
	ld (0cb3ah),a		;1878	32 3a cb 	2 : . 
	ld hl,08000h		;187b	21 00 80 	! . . 
	ld a,(0c128h)		;187e	3a 28 c1 	: ( . 
	ld e,a			;1881	5f 	_ 
	ld d,000h		;1882	16 00 	. . 
	add hl,de			;1884	19 	. 
	ld e,(hl)			;1885	5e 	^ 
	rlc e		;1886	cb 03 	. . 
	rlc e		;1888	cb 03 	. . 
	ld hl,08029h		;188a	21 29 80 	! ) . 
	add hl,de			;188d	19 	. 
	ld a,(0c129h)		;188e	3a 29 c1 	: ) . 
	ld e,a			;1891	5f 	_ 
	add hl,de			;1892	19 	. 
	ld a,(hl)			;1893	7e 	~ 
	ld l,a			;1894	6f 	o 
	ld h,d			;1895	62 	b 
	add hl,hl			;1896	29 	) 
	ld de,08065h		;1897	11 65 80 	. e . 
	add hl,de			;189a	19 	. 
	ld a,(hl)			;189b	7e 	~ 
	inc hl			;189c	23 	# 
	ld h,(hl)			;189d	66 	f 
	ld l,a			;189e	6f 	o 
	ld a,(0c12ah)		;189f	3a 2a c1 	: * . 
	ld b,a			;18a2	47 	G 
	rra			;18a3	1f 	. 
	rra			;18a4	1f 	. 
	and 03fh		;18a5	e6 3f 	. ? 
	ld e,(hl)			;18a7	5e 	^ 
l18a8h:
	bit 7,(hl)		;18a8	cb 7e 	. ~ 
	jr nz,l18b4h		;18aa	20 08 	  . 
	ld e,(hl)			;18ac	5e 	^ 
	inc hl			;18ad	23 	# 
	dec a			;18ae	3d 	= 
	jp p,l18a8h		;18af	f2 a8 18 	. . . 
	jr l18bbh		;18b2	18 07 	. . 
l18b4h:
	set 7,a		;18b4	cb ff 	. . 
	sub (hl)			;18b6	96 	. 
	inc hl			;18b7	23 	# 
	jp nc,l18a8h		;18b8	d2 a8 18 	. . . 
l18bbh:
	ld a,b			;18bb	78 	x 
	and 003h		;18bc	e6 03 	. . 
	add a,a			;18be	87 	. 
	add a,a			;18bf	87 	. 
	add a,a			;18c0	87 	. 
	ld b,a			;18c1	47 	G 
	add a,a			;18c2	87 	. 
	add a,b			;18c3	80 	. 
	ld c,a			;18c4	4f 	O 
	ld d,000h		;18c5	16 00 	. . 
	ld b,d			;18c7	42 	B 
	ex de,hl			;18c8	eb 	. 
	add hl,hl			;18c9	29 	) 
	add hl,hl			;18ca	29 	) 
	add hl,hl			;18cb	29 	) 
	add hl,hl			;18cc	29 	) 
	ld e,l			;18cd	5d 	] 
	ld d,h			;18ce	54 	T 
	add hl,hl			;18cf	29 	) 
	add hl,de			;18d0	19 	. 
	add hl,hl			;18d1	29 	) 
	add hl,bc			;18d2	09 	. 
	ld de,09ed8h		;18d3	11 d8 9e 	. . . 
	add hl,de			;18d6	19 	. 
	ld a,007h		;18d7	3e 07 	> . 
	call sub_0b13h		;18d9	cd 13 0b 	. . . 
	ld bc,l0018h		;18dc	01 18 00 	. . . 
	ld de,0cb01h		;18df	11 01 cb 	. . . 
	ldir		;18e2	ed b0 	. . 
	ld hl,0cc5fh		;18e4	21 5f cc 	! _ . 
	set 7,(hl)		;18e7	cb fe 	. . 
	ld hl,0cc88h		;18e9	21 88 cc 	! . . 
	bit 0,(hl)		;18ec	cb 46 	. F 
	jp nz,l18f9h		;18ee	c2 f9 18 	. . . 
	bit 7,(hl)		;18f1	cb 7e 	. ~ 
	jp nz,l1901h		;18f3	c2 01 19 	. . . 
	jp l190bh		;18f6	c3 0b 19 	. . . 
l18f9h:
	ld hl,0cc87h		;18f9	21 87 cc 	! . . 
	ld (hl),001h		;18fc	36 01 	6 . 
	jp l1906h		;18fe	c3 06 19 	. . . 
l1901h:
	ld hl,0cc87h		;1901	21 87 cc 	! . . 
	ld (hl),0ffh		;1904	36 ff 	6 . 
l1906h:
	ld hl,0cc88h		;1906	21 88 cc 	! . . 
	ld (hl),000h		;1909	36 00 	6 . 
l190bh:
	ld b,003h		;190b	06 03 	. . 
	ld c,00ah		;190d	0e 0a 	. . 
	ld hl,0cc89h		;190f	21 89 cc 	! . . 
	ld de,(0cc17h)		;1912	ed 5b 17 cc 	. [ . . 
l1916h:
	push bc			;1916	c5 	. 
	ld a,(de)			;1917	1a 	. 
	cp 0ffh		;1918	fe ff 	. . 
	jp z,l19bah		;191a	ca ba 19 	. . . 
	ld b,a			;191d	47 	G 
	ld a,(0c12ah)		;191e	3a 2a c1 	: * . 
	cp b			;1921	b8 	. 
	jp nz,l19bah		;1922	c2 ba 19 	. . . 
	bit 7,(hl)		;1925	cb 7e 	. ~ 
	jp nz,l19afh		;1927	c2 af 19 	. . . 
	set 7,(hl)		;192a	cb fe 	. . 
	push de			;192c	d5 	. 
	push hl			;192d	e5 	. 
	ld a,(de)			;192e	1a 	. 
	inc hl			;192f	23 	# 
	ld (hl),a			;1930	77 	w 
	dec hl			;1931	2b 	+ 
	inc de			;1932	13 	. 
	ld a,(de)			;1933	1a 	. 
	cp 080h		;1934	fe 80 	. . 
	jp c,l1947h		;1936	da 47 19 	. G . 
	set 0,(hl)		;1939	cb c6 	. . 
	exx			;193b	d9 	. 
	ld hl,0cb39h		;193c	21 39 cb 	! 9 . 
	set 7,(hl)		;193f	cb fe 	. . 
	exx			;1941	d9 	. 
	sub 080h		;1942	d6 80 	. . 
	jp l1961h		;1944	c3 61 19 	. a . 
l1947h:
	cp 040h		;1947	fe 40 	. @ 
	jp c,l1953h		;1949	da 53 19 	. S . 
	set 3,(hl)		;194c	cb de 	. . 
	sub 040h		;194e	d6 40 	. @ 
	jp l1961h		;1950	c3 61 19 	. a . 
l1953h:
	cp 020h		;1953	fe 20 	.   
	jp c,l195fh		;1955	da 5f 19 	. _ . 
	set 2,(hl)		;1958	cb d6 	. . 
	sub 020h		;195a	d6 20 	.   
	jp l1961h		;195c	c3 61 19 	. a . 
l195fh:
	set 1,(hl)		;195f	cb ce 	. . 
l1961h:
	inc hl			;1961	23 	# 
	inc hl			;1962	23 	# 
	ld (hl),a			;1963	77 	w 
	inc hl			;1964	23 	# 
	ld (hl),a			;1965	77 	w 
	inc hl			;1966	23 	# 
	inc de			;1967	13 	. 
	ld a,(de)			;1968	1a 	. 
	ld (hl),a			;1969	77 	w 
	inc de			;196a	13 	. 
	inc hl			;196b	23 	# 
	ld a,(de)			;196c	1a 	. 
	push hl			;196d	e5 	. 
	ld e,a			;196e	5f 	_ 
	ld d,000h		;196f	16 00 	. . 
	xor a			;1971	af 	. 
	rl e		;1972	cb 13 	. . 
	rl d		;1974	cb 12 	. . 
	ld hl,0834dh		;1976	21 4d 83 	! M . 
	add hl,de			;1979	19 	. 
	ld e,(hl)			;197a	5e 	^ 
	inc hl			;197b	23 	# 
	ld d,(hl)			;197c	56 	V 
	ld a,(de)			;197d	1a 	. 
	pop hl			;197e	e1 	. 
	ld (hl),a			;197f	77 	w 
	ld b,a			;1980	47 	G 
	dec hl			;1981	2b 	+ 
	dec hl			;1982	2b 	+ 
	dec hl			;1983	2b 	+ 
	dec hl			;1984	2b 	+ 
	dec hl			;1985	2b 	+ 
	ld a,(hl)			;1986	7e 	~ 
	and 00ch		;1987	e6 0c 	. . 
	jp z,l1995h		;1989	ca 95 19 	. . . 
	inc hl			;198c	23 	# 
	inc hl			;198d	23 	# 
	inc hl			;198e	23 	# 
	ld (hl),b			;198f	70 	p 
	inc hl			;1990	23 	# 
	inc hl			;1991	23 	# 
	jp l199ah		;1992	c3 9a 19 	. . . 
l1995h:
	inc hl			;1995	23 	# 
	inc hl			;1996	23 	# 
	inc hl			;1997	23 	# 
	inc hl			;1998	23 	# 
	inc hl			;1999	23 	# 
l199ah:
	inc de			;199a	13 	. 
	inc hl			;199b	23 	# 
	ld a,(de)			;199c	1a 	. 
	ld (hl),a			;199d	77 	w 
	inc de			;199e	13 	. 
	inc hl			;199f	23 	# 
	ld (hl),e			;19a0	73 	s 
	inc hl			;19a1	23 	# 
	ld (hl),d			;19a2	72 	r 
	inc hl			;19a3	23 	# 
	ld (hl),a			;19a4	77 	w 
	pop hl			;19a5	e1 	. 
	pop de			;19a6	d1 	. 
	inc de			;19a7	13 	. 
	inc de			;19a8	13 	. 
	inc de			;19a9	13 	. 
	inc de			;19aa	13 	. 
	ld (0cc17h),de		;19ab	ed 53 17 cc 	. S . . 
l19afh:
	ld b,000h		;19af	06 00 	. . 
	add hl,bc			;19b1	09 	. 
	pop bc			;19b2	c1 	. 
	dec b			;19b3	05 	. 
	jp nz,l1916h		;19b4	c2 16 19 	. . . 
	jp l19bbh		;19b7	c3 bb 19 	. . . 
l19bah:
	pop bc			;19ba	c1 	. 
l19bbh:
	ld b,003h		;19bb	06 03 	. . 
	ld c,00ah		;19bd	0e 0a 	. . 
	ld ix,0cc89h		;19bf	dd 21 89 cc 	. ! . . 
l19c3h:
	push bc			;19c3	c5 	. 
	bit 7,(ix+000h)		;19c4	dd cb 00 7e 	. . . ~ 
	jp z,l1b7ch		;19c8	ca 7c 1b 	. | . 
	bit 0,(ix+000h)		;19cb	dd cb 00 46 	. . . F 
	jp z,l1b7ch		;19cf	ca 7c 1b 	. | . 
	ld a,(ix+005h)		;19d2	dd 7e 05 	. ~ . 
	ld l,000h		;19d5	2e 00 	. . 
	sra a		;19d7	cb 2f 	. / 
	rr l		;19d9	cb 1d 	. . 
	sra a		;19db	cb 2f 	. / 
	rr l		;19dd	cb 1d 	. . 
	ld h,a			;19df	67 	g 
	ld (0cb3dh),hl		;19e0	22 3d cb 	" = . 
	ld a,(0cc1eh)		;19e3	3a 1e cc 	: . . 
	and 007h		;19e6	e6 07 	. . 
	jp nz,l1a78h		;19e8	c2 78 1a 	. x . 
	ld a,(ix+005h)		;19eb	dd 7e 05 	. ~ . 
	cp 0f0h		;19ee	fe f0 	. . 
	sbc a,a			;19f0	9f 	. 
	cpl			;19f1	2f 	/ 
	jr z,l19f5h		;19f2	28 01 	( . 
	inc a			;19f4	3c 	< 
l19f5h:
	ld (0cc85h),a		;19f5	32 85 cc 	2 . . 
	jp nc,l1a17h		;19f8	d2 17 1a 	. . . 
	ld a,(0cc1eh)		;19fb	3a 1e cc 	: . . 
	and 0f8h		;19fe	e6 f8 	. . 
	sub 020h		;1a00	d6 20 	.   
	jp nc,l1a07h		;1a02	d2 07 1a 	. . . 
	sub 020h		;1a05	d6 20 	.   
l1a07h:
	ld l,a			;1a07	6f 	o 
	ld h,000h		;1a08	26 00 	& . 
	add hl,hl			;1a0a	29 	) 
	add hl,hl			;1a0b	29 	) 
	add hl,hl			;1a0c	29 	) 
	ld de,l3800h		;1a0d	11 00 38 	. . 8 
	add hl,de			;1a10	19 	. 
	ld (0cc2bh),hl		;1a11	22 2b cc 	" + . 
	jp l1a26h		;1a14	c3 26 1a 	. & . 
l1a17h:
	ld a,(0cc1eh)		;1a17	3a 1e cc 	: . . 
	and 0f8h		;1a1a	e6 f8 	. . 
	sub 008h		;1a1c	d6 08 	. . 
	jp nc,l1a07h		;1a1e	d2 07 1a 	. . . 
	sub 020h		;1a21	d6 20 	.   
	jp l1a07h		;1a23	c3 07 1a 	. . . 
l1a26h:
	ld bc,l0020h		;1a26	01 20 00 	.   . 
	ld l,(ix+007h)		;1a29	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1a2c	dd 66 08 	. f . 
	ld de,0cb19h		;1a2f	11 19 cb 	. . . 
	ldi		;1a32	ed a0 	. . 
	ldi		;1a34	ed a0 	. . 
	ldi		;1a36	ed a0 	. . 
	ldi		;1a38	ed a0 	. . 
	ldi		;1a3a	ed a0 	. . 
	ldi		;1a3c	ed a0 	. . 
	ldi		;1a3e	ed a0 	. . 
	ldi		;1a40	ed a0 	. . 
	ldi		;1a42	ed a0 	. . 
	ldi		;1a44	ed a0 	. . 
	ldi		;1a46	ed a0 	. . 
	ldi		;1a48	ed a0 	. . 
	ldi		;1a4a	ed a0 	. . 
	ldi		;1a4c	ed a0 	. . 
	ldi		;1a4e	ed a0 	. . 
	ldi		;1a50	ed a0 	. . 
	ldi		;1a52	ed a0 	. . 
	ldi		;1a54	ed a0 	. . 
	ldi		;1a56	ed a0 	. . 
	ldi		;1a58	ed a0 	. . 
	ldi		;1a5a	ed a0 	. . 
	ldi		;1a5c	ed a0 	. . 
	ldi		;1a5e	ed a0 	. . 
	ldi		;1a60	ed a0 	. . 
	ldi		;1a62	ed a0 	. . 
	ldi		;1a64	ed a0 	. . 
	ldi		;1a66	ed a0 	. . 
	ldi		;1a68	ed a0 	. . 
	ldi		;1a6a	ed a0 	. . 
	ldi		;1a6c	ed a0 	. . 
	ldi		;1a6e	ed a0 	. . 
	ldi		;1a70	ed a0 	. . 
	push hl			;1a72	e5 	. 
	ld hl,0cb39h		;1a73	21 39 cb 	! 9 . 
	set 6,(hl)		;1a76	cb f6 	. . 
l1a78h:
	ld hl,0cc1eh		;1a78	21 1e cc 	! . . 
	ld a,(ix+005h)		;1a7b	dd 7e 05 	. ~ . 
	add a,(hl)			;1a7e	86 	. 
	cp 0f0h		;1a7f	fe f0 	. . 
	jp nc,l1a8ch		;1a81	d2 8c 1a 	. . . 
	cp 0e0h		;1a84	fe e0 	. . 
	jp nc,l1a91h		;1a86	d2 91 1a 	. . . 
	jp l1a93h		;1a89	c3 93 1a 	. . . 
l1a8ch:
	sub 020h		;1a8c	d6 20 	.   
	jp l1a93h		;1a8e	c3 93 1a 	. . . 
l1a91h:
	add a,020h		;1a91	c6 20 	.   
l1a93h:
	ld (0cc1eh),a		;1a93	32 1e cc 	2 . . 
	ld a,(0c109h)		;1a96	3a 09 c1 	: . . 
	ld b,a			;1a99	47 	G 
	ld a,(ix+005h)		;1a9a	dd 7e 05 	. ~ . 
	cp 0f0h		;1a9d	fe f0 	. . 
	sbc a,a			;1a9f	9f 	. 
	cpl			;1aa0	2f 	/ 
	jp z,l1aa5h		;1aa1	ca a5 1a 	. . . 
	inc a			;1aa4	3c 	< 
l1aa5h:
	add a,b			;1aa5	80 	. 
	cp 0f0h		;1aa6	fe f0 	. . 
	jp nc,l1ab3h		;1aa8	d2 b3 1a 	. . . 
	cp 0e0h		;1aab	fe e0 	. . 
	jp nc,l1ab8h		;1aad	d2 b8 1a 	. . . 
	jp l1abah		;1ab0	c3 ba 1a 	. . . 
l1ab3h:
	sub 020h		;1ab3	d6 20 	.   
	jp l1abah		;1ab5	c3 ba 1a 	. . . 
l1ab8h:
	add a,020h		;1ab8	c6 20 	.   
l1abah:
	ld b,a			;1aba	47 	G 
	ld c,009h		;1abb	0e 09 	. . 
	ld (0cc27h),bc		;1abd	ed 43 27 cc 	. C ' . 
	ld hl,0cb39h		;1ac1	21 39 cb 	! 9 . 
	set 1,(hl)		;1ac4	cb ce 	. . 
	ld a,001h		;1ac6	3e 01 	> . 
	ld (0cc86h),a		;1ac8	32 86 cc 	2 . . 
	ld a,(ix+005h)		;1acb	dd 7e 05 	. ~ . 
	cp 0f0h		;1ace	fe f0 	. . 
	jp c,l1ae2h		;1ad0	da e2 1a 	. . . 
	ld a,b			;1ad3	78 	x 
	and 0f8h		;1ad4	e6 f8 	. . 
	add a,008h		;1ad6	c6 08 	. . 
	cp 0e0h		;1ad8	fe e0 	. . 
	jp nz,l1afah		;1ada	c2 fa 1a 	. . . 
	add a,020h		;1add	c6 20 	.   
	jp l1afah		;1adf	c3 fa 1a 	. . . 
l1ae2h:
	ld a,b			;1ae2	78 	x 
	and 007h		;1ae3	e6 07 	. . 
	jp z,l1aeeh		;1ae5	ca ee 1a 	. . . 
	ld a,b			;1ae8	78 	x 
	and 0f8h		;1ae9	e6 f8 	. . 
	jp l1afah		;1aeb	c3 fa 1a 	. . . 
l1aeeh:
	ld a,b			;1aee	78 	x 
	and 0f8h		;1aef	e6 f8 	. . 
	sub 008h		;1af1	d6 08 	. . 
	cp 0f8h		;1af3	fe f8 	. . 
	jp nz,l1afah		;1af5	c2 fa 1a 	. . . 
	sub 020h		;1af8	d6 20 	.   
l1afah:
	ld l,a			;1afa	6f 	o 
	ld h,000h		;1afb	26 00 	& . 
	add hl,hl			;1afd	29 	) 
	add hl,hl			;1afe	29 	) 
	add hl,hl			;1aff	29 	) 
	ld de,l3800h		;1b00	11 00 38 	. . 8 
	add hl,de			;1b03	19 	. 
	ld (0cc1ch),hl		;1b04	22 1c cc 	" . . 
	ld hl,0cb39h		;1b07	21 39 cb 	! 9 . 
	bit 6,(hl)		;1b0a	cb 76 	. v 
	jp z,l1b34h		;1b0c	ca 34 1b 	. 4 . 
	pop hl			;1b0f	e1 	. 
	ld a,(ix+003h)		;1b10	dd 7e 03 	. ~ . 
	dec a			;1b13	3d 	= 
	ld (ix+003h),a		;1b14	dd 77 03 	. w . 
	jp nz,l1b2eh		;1b17	c2 2e 1b 	. . . 
	ld a,(ix+002h)		;1b1a	dd 7e 02 	. ~ . 
	ld (ix+003h),a		;1b1d	dd 77 03 	. w . 
	add a,a			;1b20	87 	. 
	add a,a			;1b21	87 	. 
	add a,a			;1b22	87 	. 
	add a,a			;1b23	87 	. 
	add a,a			;1b24	87 	. 
	ld e,a			;1b25	5f 	_ 
	ld d,000h		;1b26	16 00 	. . 
	xor a			;1b28	af 	. 
	sbc hl,de		;1b29	ed 52 	. R 
	jp l1b2eh		;1b2b	c3 2e 1b 	. . . 
l1b2eh:
	ld (ix+007h),l		;1b2e	dd 75 07 	. u . 
	ld (ix+008h),h		;1b31	dd 74 08 	. t . 
l1b34h:
	ld a,(ix+006h)		;1b34	dd 7e 06 	. ~ . 
	dec a			;1b37	3d 	= 
	ld (ix+006h),a		;1b38	dd 77 06 	. w . 
	ld b,a			;1b3b	47 	G 
	and 003h		;1b3c	e6 03 	. . 
	jp nz,l1b53h		;1b3e	c2 53 1b 	. S . 
	ld a,(ix+005h)		;1b41	dd 7e 05 	. ~ . 
	ld hl,0cc88h		;1b44	21 88 cc 	! . . 
	cp 0f0h		;1b47	fe f0 	. . 
	jp c,l1b51h		;1b49	da 51 1b 	. Q . 
	set 0,(hl)		;1b4c	cb c6 	. . 
	jp l1b53h		;1b4e	c3 53 1b 	. S . 
l1b51h:
	set 7,(hl)		;1b51	cb fe 	. . 
l1b53h:
	ld a,b			;1b53	78 	x 
	and a			;1b54	a7 	. 
	jp z,l1b5bh		;1b55	ca 5b 1b 	. [ . 
	jp l1b8ah		;1b58	c3 8a 1b 	. . . 
l1b5bh:
	ld a,(ix+004h)		;1b5b	dd 7e 04 	. ~ . 
	dec a			;1b5e	3d 	= 
	jp z,l1b6eh		;1b5f	ca 6e 1b 	. n . 
	ld (ix+004h),a		;1b62	dd 77 04 	. w . 
	ld a,(ix+009h)		;1b65	dd 7e 09 	. ~ . 
	ld (ix+006h),a		;1b68	dd 77 06 	. w . 
	jp l1b8ah		;1b6b	c3 8a 1b 	. . . 
l1b6eh:
	ld (ix+000h),000h		;1b6e	dd 36 00 00 	. 6 . . 
	ld hl,0cb39h		;1b72	21 39 cb 	! 9 . 
	res 7,(hl)		;1b75	cb be 	. . 
	set 5,(hl)		;1b77	cb ee 	. . 
	jp l1b8ah		;1b79	c3 8a 1b 	. . . 
l1b7ch:
	pop bc			;1b7c	c1 	. 
	push bc			;1b7d	c5 	. 
	ld b,000h		;1b7e	06 00 	. . 
	add ix,bc		;1b80	dd 09 	. . 
	pop bc			;1b82	c1 	. 
	dec b			;1b83	05 	. 
	jp nz,l19c3h		;1b84	c2 c3 19 	. . . 
	jp l1b8bh		;1b87	c3 8b 1b 	. . . 
l1b8ah:
	pop bc			;1b8a	c1 	. 
l1b8bh:
	ld b,003h		;1b8b	06 03 	. . 
	ld c,00ah		;1b8d	0e 0a 	. . 
	ld ix,0cc89h		;1b8f	dd 21 89 cc 	. ! . . 
l1b93h:
	push bc			;1b93	c5 	. 
	bit 7,(ix+000h)		;1b94	dd cb 00 7e 	. . . ~ 
	jp z,l1d46h		;1b98	ca 46 1d 	. F . 
	bit 0,(ix+000h)		;1b9b	dd cb 00 46 	. . . F 
	jp nz,l1d46h		;1b9f	c2 46 1d 	. F . 
	bit 1,(ix+000h)		;1ba2	dd cb 00 4e 	. . . N 
	jp nz,l1bb7h		;1ba6	c2 b7 1b 	. . . 
	bit 2,(ix+000h)		;1ba9	dd cb 00 56 	. . . V 
	jp nz,l1bdah		;1bad	c2 da 1b 	. . . 
	bit 3,(ix+000h)		;1bb0	dd cb 00 5e 	. . . ^ 
	jp nz,l1c43h		;1bb4	c2 43 1c 	. C . 
l1bb7h:
	ld a,(ix+005h)		;1bb7	dd 7e 05 	. ~ . 
	ld c,a			;1bba	4f 	O 
	ld b,000h		;1bbb	06 00 	. . 
	ld d,b			;1bbd	50 	P 
	ld a,(0cc87h)		;1bbe	3a 87 cc 	: . . 
	ld e,a			;1bc1	5f 	_ 
	ld a,(ix+002h)		;1bc2	dd 7e 02 	. ~ . 
	add a,e			;1bc5	83 	. 
	ld (ix+002h),a		;1bc6	dd 77 02 	. w . 
	ld e,a			;1bc9	5f 	_ 
	ld hl,0cb01h		;1bca	21 01 cb 	! . . 
	add hl,de			;1bcd	19 	. 
	ex de,hl			;1bce	eb 	. 
	ld l,(ix+007h)		;1bcf	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1bd2	dd 66 08 	. f . 
	ldir		;1bd5	ed b0 	. . 
	jp l1ca2h		;1bd7	c3 a2 1c 	. . . 
l1bdah:
	ld a,(ix+003h)		;1bda	dd 7e 03 	. ~ . 
	ld (ix+005h),a		;1bdd	dd 77 05 	. w . 
	ld a,(0cc87h)		;1be0	3a 87 cc 	: . . 
	ld e,a			;1be3	5f 	_ 
	ld a,(ix+002h)		;1be4	dd 7e 02 	. ~ . 
	add a,e			;1be7	83 	. 
	ld (ix+002h),a		;1be8	dd 77 02 	. w . 
	ld e,a			;1beb	5f 	_ 
	ld a,018h		;1bec	3e 18 	> . 
	sub e			;1bee	93 	. 
	ld b,000h		;1bef	06 00 	. . 
	ld c,a			;1bf1	4f 	O 
	ld d,000h		;1bf2	16 00 	. . 
	ld hl,0cb01h		;1bf4	21 01 cb 	! . . 
	add hl,de			;1bf7	19 	. 
	ex de,hl			;1bf8	eb 	. 
	ld l,(ix+007h)		;1bf9	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1bfc	dd 66 08 	. f . 
l1bffh:
	ldi		;1bff	ed a0 	. . 
	push de			;1c01	d5 	. 
	ld a,(ix+005h)		;1c02	dd 7e 05 	. ~ . 
	and 0f0h		;1c05	e6 f0 	. . 
	ld a,(ix+005h)		;1c07	dd 7e 05 	. ~ . 
	jp z,l1c20h		;1c0a	ca 20 1c 	.   . 
	sub 010h		;1c0d	d6 10 	. . 
	ld (ix+005h),a		;1c0f	dd 77 05 	. w . 
	cp 010h		;1c12	fe 10 	. . 
	jp nc,l1c35h		;1c14	d2 35 1c 	. 5 . 
	ld e,a			;1c17	5f 	_ 
	ld d,000h		;1c18	16 00 	. . 
	and a			;1c1a	a7 	. 
	sbc hl,de		;1c1b	ed 52 	. R 
	jp l1c35h		;1c1d	c3 35 1c 	. 5 . 
l1c20h:
	dec a			;1c20	3d 	= 
	ld (ix+005h),a		;1c21	dd 77 05 	. w . 
	jp nz,l1c35h		;1c24	c2 35 1c 	. 5 . 
	ld a,(ix+003h)		;1c27	dd 7e 03 	. ~ . 
	and 00fh		;1c2a	e6 0f 	. . 
	ld (ix+005h),a		;1c2c	dd 77 05 	. w . 
	ld e,a			;1c2f	5f 	_ 
	ld d,000h		;1c30	16 00 	. . 
	and a			;1c32	a7 	. 
	sbc hl,de		;1c33	ed 52 	. R 
l1c35h:
	pop de			;1c35	d1 	. 
	ld a,b			;1c36	78 	x 
	and a			;1c37	a7 	. 
	jp nz,l1bffh		;1c38	c2 ff 1b 	. . . 
	ld a,c			;1c3b	79 	y 
	and a			;1c3c	a7 	. 
	jp nz,l1bffh		;1c3d	c2 ff 1b 	. . . 
	jp l1cefh		;1c40	c3 ef 1c 	. . . 
l1c43h:
	ld a,(ix+003h)		;1c43	dd 7e 03 	. ~ . 
	ld (ix+005h),a		;1c46	dd 77 05 	. w . 
	ld a,(0cc87h)		;1c49	3a 87 cc 	: . . 
	ld e,a			;1c4c	5f 	_ 
	ld a,(ix+002h)		;1c4d	dd 7e 02 	. ~ . 
	add a,e			;1c50	83 	. 
	ld (ix+002h),a		;1c51	dd 77 02 	. w . 
	ld e,a			;1c54	5f 	_ 
	inc a			;1c55	3c 	< 
	ld b,a			;1c56	47 	G 
	ld d,000h		;1c57	16 00 	. . 
	ld hl,0cb01h		;1c59	21 01 cb 	! . . 
	add hl,de			;1c5c	19 	. 
	ex de,hl			;1c5d	eb 	. 
	ld l,(ix+007h)		;1c5e	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1c61	dd 66 08 	. f . 
l1c64h:
	ld a,(hl)			;1c64	7e 	~ 
	ld (de),a			;1c65	12 	. 
	inc hl			;1c66	23 	# 
	dec de			;1c67	1b 	. 
	push de			;1c68	d5 	. 
	ld a,(ix+005h)		;1c69	dd 7e 05 	. ~ . 
	and 0f0h		;1c6c	e6 f0 	. . 
	ld a,(ix+005h)		;1c6e	dd 7e 05 	. ~ . 
	jp z,l1c87h		;1c71	ca 87 1c 	. . . 
	sub 010h		;1c74	d6 10 	. . 
	ld (ix+005h),a		;1c76	dd 77 05 	. w . 
	cp 010h		;1c79	fe 10 	. . 
	jp nc,l1c9ch		;1c7b	d2 9c 1c 	. . . 
	ld e,a			;1c7e	5f 	_ 
	ld d,000h		;1c7f	16 00 	. . 
	and a			;1c81	a7 	. 
	sbc hl,de		;1c82	ed 52 	. R 
	jp l1c9ch		;1c84	c3 9c 1c 	. . . 
l1c87h:
	dec a			;1c87	3d 	= 
	ld (ix+005h),a		;1c88	dd 77 05 	. w . 
	jp nz,l1c9ch		;1c8b	c2 9c 1c 	. . . 
	ld a,(ix+003h)		;1c8e	dd 7e 03 	. ~ . 
	and 00fh		;1c91	e6 0f 	. . 
	ld (ix+005h),a		;1c93	dd 77 05 	. w . 
	ld e,a			;1c96	5f 	_ 
	ld d,000h		;1c97	16 00 	. . 
	and a			;1c99	a7 	. 
	sbc hl,de		;1c9a	ed 52 	. R 
l1c9ch:
	pop de			;1c9c	d1 	. 
	djnz l1c64h		;1c9d	10 c5 	. . 
	jp l1cefh		;1c9f	c3 ef 1c 	. . . 
l1ca2h:
	ld (ix+007h),l		;1ca2	dd 75 07 	. u . 
	ld (ix+008h),h		;1ca5	dd 74 08 	. t . 
	ld a,(ix+006h)		;1ca8	dd 7e 06 	. ~ . 
	dec a			;1cab	3d 	= 
	ld (ix+006h),a		;1cac	dd 77 06 	. w . 
	jp z,l1cb5h		;1caf	ca b5 1c 	. . . 
	jp l1d46h		;1cb2	c3 46 1d 	. F . 
l1cb5h:
	ld a,(ix+004h)		;1cb5	dd 7e 04 	. ~ . 
	dec a			;1cb8	3d 	= 
	jp z,l1ce8h		;1cb9	ca e8 1c 	. . . 
	ld (ix+004h),a		;1cbc	dd 77 04 	. w . 
	ld a,(ix+009h)		;1cbf	dd 7e 09 	. ~ . 
	ld (ix+006h),a		;1cc2	dd 77 06 	. w . 
	ld b,a			;1cc5	47 	G 
	ld l,(ix+005h)		;1cc6	dd 6e 05 	. n . 
	ld h,000h		;1cc9	26 00 	& . 
	ld e,l			;1ccb	5d 	] 
	ld d,h			;1ccc	54 	T 
	dec b			;1ccd	05 	. 
	jp z,l1cd4h		;1cce	ca d4 1c 	. . . 
l1cd1h:
	add hl,de			;1cd1	19 	. 
	djnz l1cd1h		;1cd2	10 fd 	. . 
l1cd4h:
	ld e,l			;1cd4	5d 	] 
	ld d,h			;1cd5	54 	T 
	ld l,(ix+007h)		;1cd6	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1cd9	dd 66 08 	. f . 
	and a			;1cdc	a7 	. 
	sbc hl,de		;1cdd	ed 52 	. R 
	ld (ix+007h),l		;1cdf	dd 75 07 	. u . 
	ld (ix+008h),h		;1ce2	dd 74 08 	. t . 
	jp l1d46h		;1ce5	c3 46 1d 	. F . 
l1ce8h:
	ld (ix+000h),000h		;1ce8	dd 36 00 00 	. 6 . . 
	jp l1d46h		;1cec	c3 46 1d 	. F . 
l1cefh:
	ld a,(ix+003h)		;1cef	dd 7e 03 	. ~ . 
	and 0f0h		;1cf2	e6 f0 	. . 
	and a			;1cf4	a7 	. 
	rra			;1cf5	1f 	. 
	rra			;1cf6	1f 	. 
	rra			;1cf7	1f 	. 
	rra			;1cf8	1f 	. 
	ld e,a			;1cf9	5f 	_ 
	ld d,000h		;1cfa	16 00 	. . 
	ld l,(ix+007h)		;1cfc	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1cff	dd 66 08 	. f . 
	add hl,de			;1d02	19 	. 
	ld (ix+007h),l		;1d03	dd 75 07 	. u . 
	ld (ix+008h),h		;1d06	dd 74 08 	. t . 
	ld a,(ix+006h)		;1d09	dd 7e 06 	. ~ . 
	dec a			;1d0c	3d 	= 
	ld (ix+006h),a		;1d0d	dd 77 06 	. w . 
	jp z,l1d16h		;1d10	ca 16 1d 	. . . 
	jp l1d46h		;1d13	c3 46 1d 	. F . 
l1d16h:
	ld a,(ix+004h)		;1d16	dd 7e 04 	. ~ . 
	dec a			;1d19	3d 	= 
	jp z,l1ce8h		;1d1a	ca e8 1c 	. . . 
	ld (ix+004h),a		;1d1d	dd 77 04 	. w . 
	ld a,(ix+009h)		;1d20	dd 7e 09 	. ~ . 
	ld (ix+006h),a		;1d23	dd 77 06 	. w . 
	ld d,000h		;1d26	16 00 	. . 
	ld l,e			;1d28	6b 	k 
	ld h,d			;1d29	62 	b 
	ld b,a			;1d2a	47 	G 
	dec b			;1d2b	05 	. 
	jp z,l1d32h		;1d2c	ca 32 1d 	. 2 . 
l1d2fh:
	add hl,de			;1d2f	19 	. 
	djnz l1d2fh		;1d30	10 fd 	. . 
l1d32h:
	ld e,l			;1d32	5d 	] 
	ld d,h			;1d33	54 	T 
	ld l,(ix+007h)		;1d34	dd 6e 07 	. n . 
	ld h,(ix+008h)		;1d37	dd 66 08 	. f . 
	and a			;1d3a	a7 	. 
	sbc hl,de		;1d3b	ed 52 	. R 
	ld (ix+007h),l		;1d3d	dd 75 07 	. u . 
	ld (ix+008h),h		;1d40	dd 74 08 	. t . 
	jp l1d46h		;1d43	c3 46 1d 	. F . 
l1d46h:
	pop bc			;1d46	c1 	. 
	push bc			;1d47	c5 	. 
	ld b,000h		;1d48	06 00 	. . 
	add ix,bc		;1d4a	dd 09 	. . 
	pop bc			;1d4c	c1 	. 
	dec b			;1d4d	05 	. 
	jp nz,l1b93h		;1d4e	c2 93 1b 	. . . 
	ld hl,0cc87h		;1d51	21 87 cc 	! . . 
	ld (hl),000h		;1d54	36 00 	6 . 
	ld hl,(0c12bh)		;1d56	2a 2b c1 	* + . 
	ld a,(0cb3ah)		;1d59	3a 3a cb 	: : . 
	ld e,a			;1d5c	5f 	_ 
	ld d,000h		;1d5d	16 00 	. . 
	add hl,de			;1d5f	19 	. 
	ld (0c12bh),hl		;1d60	22 2b c1 	" + . 
	ld a,l			;1d63	7d 	} 
	neg		;1d64	ed 44 	. D 
	ld b,a			;1d66	47 	G 
	ld c,008h		;1d67	0e 08 	. . 
	ld (0cc25h),bc		;1d69	ed 43 25 cc 	. C % . 
	ld a,l			;1d6d	7d 	} 
	and 0f8h		;1d6e	e6 f8 	. . 
	rra			;1d70	1f 	. 
	rra			;1d71	1f 	. 
	ld e,a			;1d72	5f 	_ 
	ld hl,(0cc1ch)		;1d73	2a 1c cc 	* . . 
	add hl,de			;1d76	19 	. 
	ld (0cc29h),hl		;1d77	22 29 cc 	" ) . 
	ld hl,0cb39h		;1d7a	21 39 cb 	! 9 . 
	set 0,(hl)		;1d7d	cb c6 	. . 
	ld a,(0c12ch)		;1d7f	3a 2c c1 	: , . 
	cp 020h		;1d82	fe 20 	.   
	jp c,l1dbfh		;1d84	da bf 1d 	. . . 
	ld a,(0c12bh)		;1d87	3a 2b c1 	: + . 
	ld hl,0c16bh		;1d8a	21 6b c1 	! k . 
	set 7,(hl)		;1d8d	cb fe 	. . 
	ld hl,0cc30h		;1d8f	21 30 cc 	! 0 . 
	res 6,(hl)		;1d92	cb b6 	. . 
	ld hl,0cca7h		;1d94	21 a7 cc 	! . . 
	bit 0,(hl)		;1d97	cb 46 	. F 
	ret z			;1d99	c8 	. 
	ld hl,(0cc29h)		;1d9a	2a 29 cc 	* ) . 
	ld de,l003dh		;1d9d	11 3d 00 	. = . 
	add hl,de			;1da0	19 	. 
	ld de,00300h		;1da1	11 00 03 	. . . 
	add hl,de			;1da4	19 	. 
	ld b,007h		;1da5	06 07 	. . 
	ld de,l003ch		;1da7	11 3c 00 	. < . 
	ld a,010h		;1daa	3e 10 	> . 
l1dach:
	di			;1dac	f3 	. 
	call sub_047ch		;1dad	cd 7c 04 	. | . 
	inc hl			;1db0	23 	# 
	inc hl			;1db1	23 	# 
	call sub_047ch		;1db2	cd 7c 04 	. | . 
	inc hl			;1db5	23 	# 
	inc hl			;1db6	23 	# 
	call sub_047ch		;1db7	cd 7c 04 	. | . 
	ei			;1dba	fb 	. 
	add hl,de			;1dbb	19 	. 
	djnz l1dach		;1dbc	10 ee 	. . 
	ret			;1dbe	c9 	. 
l1dbfh:
	ld hl,0c12ah		;1dbf	21 2a c1 	! * . 
	inc (hl)			;1dc2	34 	4 
	jp nz,l1dfah		;1dc3	c2 fa 1d 	. . . 
	ld hl,0c129h		;1dc6	21 29 c1 	! ) . 
	inc (hl)			;1dc9	34 	4 
	call sub_119dh		;1dca	cd 9d 11 	. . . 
	ld a,007h		;1dcd	3e 07 	> . 
	call sub_0b13h		;1dcf	cd 13 0b 	. . . 
	ld hl,08000h		;1dd2	21 00 80 	! . . 
	ld a,(0c128h)		;1dd5	3a 28 c1 	: ( . 
	ld e,a			;1dd8	5f 	_ 
	ld d,000h		;1dd9	16 00 	. . 
	add hl,de			;1ddb	19 	. 
	ld e,(hl)			;1ddc	5e 	^ 
	rlc e		;1ddd	cb 03 	. . 
	rlc e		;1ddf	cb 03 	. . 
	rlc e		;1de1	cb 03 	. . 
	ld hl,082d5h		;1de3	21 d5 82 	! . . 
	add hl,de			;1de6	19 	. 
	ld a,(0c129h)		;1de7	3a 29 c1 	: ) . 
	ld e,a			;1dea	5f 	_ 
	rlc e		;1deb	cb 03 	. . 
	add hl,de			;1ded	19 	. 
	ld e,(hl)			;1dee	5e 	^ 
	inc hl			;1def	23 	# 
	ld d,(hl)			;1df0	56 	V 
	ld (0cc17h),de		;1df1	ed 53 17 cc 	. S . . 
	ld hl,0cc88h		;1df5	21 88 cc 	! . . 
	ld (hl),000h		;1df8	36 00 	6 . 
l1dfah:
	ld a,(0cc21h)		;1dfa	3a 21 cc 	: ! . 
	or a			;1dfd	b7 	. 
	jp nz,sub_1e03h		;1dfe	c2 03 1e 	. . . 
	xor a			;1e01	af 	. 
	ret			;1e02	c9 	. 
sub_1e03h:
	call sub_0b17h		;1e03	cd 17 0b 	. . . 
l1e06h:
	ld (0cc19h),a		;1e06	32 19 cc 	2 . . 
	ld hl,0cb39h		;1e09	21 39 cb 	! 9 . 
	bit 2,(hl)		;1e0c	cb 56 	. V 
	jp z,l1e2eh		;1e0e	ca 2e 1e 	. . . 
	res 2,(hl)		;1e11	cb 96 	. . 
	ld bc,(0cc23h)		;1e13	ed 4b 23 cc 	. K # . 
	call sub_003bh		;1e17	cd 3b 00 	. ; . 
	ld hl,0cb39h		;1e1a	21 39 cb 	! 9 . 
	bit 3,(hl)		;1e1d	cb 5e 	. ^ 
	jp z,l1f1eh		;1e1f	ca 1e 1f 	. . . 
	res 3,(hl)		;1e22	cb 9e 	. . 
	ld bc,(0cc27h)		;1e24	ed 4b 27 cc 	. K ' . 
	call sub_003bh		;1e28	cd 3b 00 	. ; . 
	jp l1f1eh		;1e2b	c3 1e 1f 	. . . 
l1e2eh:
	bit 0,(hl)		;1e2e	cb 46 	. F 
	jp z,l1f1eh		;1e30	ca 1e 1f 	. . . 
	ld bc,(0cc25h)		;1e33	ed 4b 25 cc 	. K % . 
	call sub_003bh		;1e37	cd 3b 00 	. ; . 
	ld a,(0cc14h)		;1e3a	3a 14 cc 	: . . 
	call sub_0b13h		;1e3d	cd 13 0b 	. . . 
	ld hl,(0cc29h)		;1e40	2a 29 cc 	* ) . 
	ld de,0cb01h		;1e43	11 01 cb 	. . . 
	ld bc,01840h		;1e46	01 40 18 	. @ . 
l1e49h:
	push bc			;1e49	c5 	. 
	ld a,(de)			;1e4a	1a 	. 
	push af			;1e4b	f5 	. 
	ld a,l			;1e4c	7d 	} 
	out (0bfh),a		;1e4d	d3 bf 	. . 
	ld a,h			;1e4f	7c 	| 
	and 03fh		;1e50	e6 3f 	. ? 
	or 040h		;1e52	f6 40 	. @ 
	out (0bfh),a		;1e54	d3 bf 	. . 
	pop af			;1e56	f1 	. 
	out (0beh),a		;1e57	d3 be 	. . 
	ld b,000h		;1e59	06 00 	. . 
	add hl,bc			;1e5b	09 	. 
	ld a,h			;1e5c	7c 	| 
	cp 03fh		;1e5d	fe 3f 	. ? 
	jr nz,l1e64h		;1e5f	20 03 	  . 
	sub 007h		;1e61	d6 07 	. . 
	ld h,a			;1e63	67 	g 
l1e64h:
	inc de			;1e64	13 	. 
	pop bc			;1e65	c1 	. 
	djnz l1e49h		;1e66	10 e1 	. . 
	ld hl,0cc5fh		;1e68	21 5f cc 	! _ . 
	set 6,(hl)		;1e6b	cb f6 	. . 
	ld hl,0cb39h		;1e6d	21 39 cb 	! 9 . 
	bit 1,(hl)		;1e70	cb 4e 	. N 
	jp z,l1f1eh		;1e72	ca 1e 1f 	. . . 
	ld bc,(0cc27h)		;1e75	ed 4b 27 cc 	. K ' . 
	call sub_003bh		;1e79	cd 3b 00 	. ; . 
	res 1,(hl)		;1e7c	cb 8e 	. . 
	bit 6,(hl)		;1e7e	cb 76 	. v 
	jp z,l1f1eh		;1e80	ca 1e 1f 	. . . 
	ld hl,(0cc2bh)		;1e83	2a 2b cc 	* + . 
	ld de,0cb19h		;1e86	11 19 cb 	. . . 
	ld b,020h		;1e89	06 20 	.   
	ld a,l			;1e8b	7d 	} 
	out (0bfh),a		;1e8c	d3 bf 	. . 
	ld a,h			;1e8e	7c 	| 
	and 03fh		;1e8f	e6 3f 	. ? 
	or 040h		;1e91	f6 40 	. @ 
	out (0bfh),a		;1e93	d3 bf 	. . 
	ex de,hl			;1e95	eb 	. 
	ld c,0beh		;1e96	0e be 	. . 
	xor a			;1e98	af 	. 
	outi		;1e99	ed a3 	. . 
	out (c),a		;1e9b	ed 79 	. y 
	outi		;1e9d	ed a3 	. . 
	out (c),a		;1e9f	ed 79 	. y 
	outi		;1ea1	ed a3 	. . 
	out (c),a		;1ea3	ed 79 	. y 
	outi		;1ea5	ed a3 	. . 
	out (c),a		;1ea7	ed 79 	. y 
	outi		;1ea9	ed a3 	. . 
	out (c),a		;1eab	ed 79 	. y 
	outi		;1ead	ed a3 	. . 
	out (c),a		;1eaf	ed 79 	. y 
	outi		;1eb1	ed a3 	. . 
	out (c),a		;1eb3	ed 79 	. y 
	outi		;1eb5	ed a3 	. . 
	out (c),a		;1eb7	ed 79 	. y 
	outi		;1eb9	ed a3 	. . 
	out (c),a		;1ebb	ed 79 	. y 
	outi		;1ebd	ed a3 	. . 
	out (c),a		;1ebf	ed 79 	. y 
	outi		;1ec1	ed a3 	. . 
	out (c),a		;1ec3	ed 79 	. y 
	outi		;1ec5	ed a3 	. . 
	out (c),a		;1ec7	ed 79 	. y 
	outi		;1ec9	ed a3 	. . 
	out (c),a		;1ecb	ed 79 	. y 
	outi		;1ecd	ed a3 	. . 
	out (c),a		;1ecf	ed 79 	. y 
	outi		;1ed1	ed a3 	. . 
	out (c),a		;1ed3	ed 79 	. y 
	outi		;1ed5	ed a3 	. . 
	out (c),a		;1ed7	ed 79 	. y 
	outi		;1ed9	ed a3 	. . 
	out (c),a		;1edb	ed 79 	. y 
	outi		;1edd	ed a3 	. . 
	out (c),a		;1edf	ed 79 	. y 
	outi		;1ee1	ed a3 	. . 
	out (c),a		;1ee3	ed 79 	. y 
	outi		;1ee5	ed a3 	. . 
	out (c),a		;1ee7	ed 79 	. y 
	outi		;1ee9	ed a3 	. . 
	out (c),a		;1eeb	ed 79 	. y 
	outi		;1eed	ed a3 	. . 
	out (c),a		;1eef	ed 79 	. y 
	outi		;1ef1	ed a3 	. . 
	out (c),a		;1ef3	ed 79 	. y 
	outi		;1ef5	ed a3 	. . 
	out (c),a		;1ef7	ed 79 	. y 
	outi		;1ef9	ed a3 	. . 
	out (c),a		;1efb	ed 79 	. y 
	outi		;1efd	ed a3 	. . 
	out (c),a		;1eff	ed 79 	. y 
	outi		;1f01	ed a3 	. . 
	out (c),a		;1f03	ed 79 	. y 
	outi		;1f05	ed a3 	. . 
	out (c),a		;1f07	ed 79 	. y 
	outi		;1f09	ed a3 	. . 
	out (c),a		;1f0b	ed 79 	. y 
	outi		;1f0d	ed a3 	. . 
	out (c),a		;1f0f	ed 79 	. y 
	outi		;1f11	ed a3 	. . 
	out (c),a		;1f13	ed 79 	. y 
	outi		;1f15	ed a3 	. . 
	out (c),a		;1f17	ed 79 	. y 
	ld hl,0cb39h		;1f19	21 39 cb 	! 9 . 
	res 6,(hl)		;1f1c	cb b6 	. . 
l1f1eh:
	ld hl,0cb39h		;1f1e	21 39 cb 	! 9 . 
	res 0,(hl)		;1f21	cb 86 	. . 
	ld a,(0cc21h)		;1f23	3a 21 cc 	: ! . 
	or a			;1f26	b7 	. 
	jp nz,l1774h		;1f27	c2 74 17 	. t . 
	ld a,(0cc19h)		;1f2a	3a 19 cc 	: . . 
	call sub_0b13h		;1f2d	cd 13 0b 	. . . 
	ret			;1f30	c9 	. 
sub_1f31h:
	ld a,007h		;1f31	3e 07 	> . 
	call sub_0b13h		;1f33	cd 13 0b 	. . . 
	ld hl,0c128h		;1f36	21 28 c1 	! ( . 
	ld e,(hl)			;1f39	5e 	^ 
	push de			;1f3a	d5 	. 
	ld d,000h		;1f3b	16 00 	. . 
	ld hl,08000h		;1f3d	21 00 80 	! . . 
	add hl,de			;1f40	19 	. 
	ld e,(hl)			;1f41	5e 	^ 
	ld hl,l2043h		;1f42	21 43 20 	! C   
	add hl,de			;1f45	19 	. 
	ld a,(hl)			;1f46	7e 	~ 
	ld (0cc14h),a		;1f47	32 14 cc 	2 . . 
	push de			;1f4a	d5 	. 
	ld hl,l1fe9h		;1f4b	21 e9 1f 	! . . 
	ld a,e			;1f4e	7b 	{ 
	add a,a			;1f4f	87 	. 
	add a,a			;1f50	87 	. 
	add a,e			;1f51	83 	. 
	add a,e			;1f52	83 	. 
	ld e,a			;1f53	5f 	_ 
	add hl,de			;1f54	19 	. 
	ld e,(hl)			;1f55	5e 	^ 
	inc hl			;1f56	23 	# 
	ld d,(hl)			;1f57	56 	V 
	inc hl			;1f58	23 	# 
	push hl			;1f59	e5 	. 
	ld l,(hl)			;1f5a	6e 	n 
	ld h,000h		;1f5b	26 00 	& . 
	add hl,hl			;1f5d	29 	) 
	add hl,hl			;1f5e	29 	) 
	add hl,hl			;1f5f	29 	) 
	add hl,hl			;1f60	29 	) 
	add hl,hl			;1f61	29 	) 
	ld c,l			;1f62	4d 	M 
	ld b,h			;1f63	44 	D 
	ld l,e			;1f64	6b 	k 
	ld h,d			;1f65	62 	b 
	add hl,bc			;1f66	09 	. 
	push hl			;1f67	e5 	. 
	pop hl			;1f68	e1 	. 
	ld hl,l0000h		;1f69	21 00 00 	! . . 
	ex de,hl			;1f6c	eb 	. 
	ld a,(0cc14h)		;1f6d	3a 14 cc 	: . . 
	call sub_0b13h		;1f70	cd 13 0b 	. . . 
	call sub_0422h		;1f73	cd 22 04 	. " . 
	ex de,hl			;1f76	eb 	. 
	pop hl			;1f77	e1 	. 
	inc hl			;1f78	23 	# 
	push hl			;1f79	e5 	. 
	ld l,(hl)			;1f7a	6e 	n 
	ld h,000h		;1f7b	26 00 	& . 
	add hl,hl			;1f7d	29 	) 
	add hl,hl			;1f7e	29 	) 
	add hl,hl			;1f7f	29 	) 
	add hl,hl			;1f80	29 	) 
	add hl,hl			;1f81	29 	) 
	ld c,l			;1f82	4d 	M 
	ld b,h			;1f83	44 	D 
	ld l,e			;1f84	6b 	k 
	ld h,d			;1f85	62 	b 
	add hl,bc			;1f86	09 	. 
	push hl			;1f87	e5 	. 
	pop hl			;1f88	e1 	. 
	ld hl,01800h		;1f89	21 00 18 	! . . 
	ex de,hl			;1f8c	eb 	. 
	call sub_0422h		;1f8d	cd 22 04 	. " . 
	ex de,hl			;1f90	eb 	. 
	pop hl			;1f91	e1 	. 
	inc hl			;1f92	23 	# 
	push hl			;1f93	e5 	. 
	ld l,(hl)			;1f94	6e 	n 
	ld h,000h		;1f95	26 00 	& . 
	add hl,hl			;1f97	29 	) 
	add hl,hl			;1f98	29 	) 
	add hl,hl			;1f99	29 	) 
	add hl,hl			;1f9a	29 	) 
	add hl,hl			;1f9b	29 	) 
	ld c,l			;1f9c	4d 	M 
	ld b,h			;1f9d	44 	D 
	ld l,e			;1f9e	6b 	k 
	ld h,d			;1f9f	62 	b 
	add hl,bc			;1fa0	09 	. 
	push hl			;1fa1	e5 	. 
	pop hl			;1fa2	e1 	. 
	ld hl,l1bffh+1		;1fa3	21 00 1c 	! . . 
	ex de,hl			;1fa6	eb 	. 
	call sub_0422h		;1fa7	cd 22 04 	. " . 
	ex de,hl			;1faa	eb 	. 
	pop hl			;1fab	e1 	. 
	inc hl			;1fac	23 	# 
	ld l,(hl)			;1fad	6e 	n 
	ld h,000h		;1fae	26 00 	& . 
	add hl,hl			;1fb0	29 	) 
	add hl,hl			;1fb1	29 	) 
	add hl,hl			;1fb2	29 	) 
	add hl,hl			;1fb3	29 	) 
	add hl,hl			;1fb4	29 	) 
	ld c,l			;1fb5	4d 	M 
	ld b,h			;1fb6	44 	D 
	ld l,e			;1fb7	6b 	k 
	ld h,d			;1fb8	62 	b 
	add hl,bc			;1fb9	09 	. 
	ld hl,01e00h		;1fba	21 00 1e 	! . . 
	ex de,hl			;1fbd	eb 	. 
	call sub_0422h		;1fbe	cd 22 04 	. " . 
	pop hl			;1fc1	e1 	. 
	add hl,hl			;1fc2	29 	) 
	add hl,hl			;1fc3	29 	) 
	add hl,hl			;1fc4	29 	) 
	add hl,hl			;1fc5	29 	) 
	ld a,005h		;1fc6	3e 05 	> . 
	call sub_0b13h		;1fc8	cd 13 0b 	. . . 
	ld de,0b9e6h		;1fcb	11 e6 b9 	. . . 
	add hl,de			;1fce	19 	. 
	ex de,hl			;1fcf	eb 	. 
	call sub_0272h		;1fd0	cd 72 02 	. r . 
	pop de			;1fd3	d1 	. 
	ld a,e			;1fd4	7b 	{ 
	cp 01dh		;1fd5	fe 1d 	. . 
	ret nz			;1fd7	c0 	. 
	ld a,010h		;1fd8	3e 10 	> . 
	ld hl,0c005h		;1fda	21 05 c0 	! . . 
	call sub_0406h		;1fdd	cd 06 04 	. . . 
l1fe0h:
	ld a,019h		;1fe0	3e 19 	> . 
	ld hl,0c009h		;1fe2	21 09 c0 	! . . 
	call sub_0406h		;1fe5	cd 06 04 	. . . 
	ret			;1fe8	c9 	. 
l1fe9h:
	nop			;1fe9	00 	. 
	add a,b			;1fea	80 	. 
	nop			;1feb	00 	. 
	nop			;1fec	00 	. 
	nop			;1fed	00 	. 
	nop			;1fee	00 	. 
	jp 00092h		;1fef	c3 92 00 	. . . 
	nop			;1ff2	00 	. 
	nop			;1ff3	00 	. 
	nop			;1ff4	00 	. 
	jp 00092h		;1ff5	c3 92 00 	. . . 
	nop			;1ff8	00 	. 
	nop			;1ff9	00 	. 
	nop			;1ffa	00 	. 
	nop			;1ffb	00 	. 
	add a,b			;1ffc	80 	. 
	nop			;1ffd	00 	. 
l1ffeh:
	nop			;1ffe	00 	. 
	nop			;1fff	00 	. 
l2000h:
	nop			;2000	00 	. 
	nop			;2001	00 	. 
	add a,b			;2002	80 	. 
	nop			;2003	00 	. 
	nop			;2004	00 	. 
	nop			;2005	00 	. 
	nop			;2006	00 	. 
	jp z,0009bh		;2007	ca 9b 00 	. . . 
	nop			;200a	00 	. 
	nop			;200b	00 	. 
	nop			;200c	00 	. 
	jp z,0009bh		;200d	ca 9b 00 	. . . 
	nop			;2010	00 	. 
	nop			;2011	00 	. 
	nop			;2012	00 	. 
	jp z,0009bh		;2013	ca 9b 00 	. . . 
	nop			;2016	00 	. 
	nop			;2017	00 	. 
	nop			;2018	00 	. 
	jp z,0009bh		;2019	ca 9b 00 	. . . 
	nop			;201c	00 	. 
	nop			;201d	00 	. 
	nop			;201e	00 	. 
	ld c,(hl)			;201f	4e 	N 
	xor e			;2020	ab 	. 
	nop			;2021	00 	. 
	nop			;2022	00 	. 
	nop			;2023	00 	. 
	nop			;2024	00 	. 
	jp z,0009bh		;2025	ca 9b 00 	. . . 
	nop			;2028	00 	. 
	nop			;2029	00 	. 
	nop			;202a	00 	. 
	jp 00092h		;202b	c3 92 00 	. . . 
	nop			;202e	00 	. 
	nop			;202f	00 	. 
	nop			;2030	00 	. 
	nop			;2031	00 	. 
	add a,b			;2032	80 	. 
	nop			;2033	00 	. 
	nop			;2034	00 	. 
	nop			;2035	00 	. 
	nop			;2036	00 	. 
	ld (hl),l			;2037	75 	u 
	or d			;2038	b2 	. 
	nop			;2039	00 	. 
	nop			;203a	00 	. 
	nop			;203b	00 	. 
	nop			;203c	00 	. 
	ld c,(hl)			;203d	4e 	N 
	xor e			;203e	ab 	. 
	nop			;203f	00 	. 
	nop			;2040	00 	. 
	nop			;2041	00 	. 
	nop			;2042	00 	. 
l2043h:
	ld b,005h		;2043	06 05 	. . 
	dec b			;2045	05 	. 
	ld b,006h		;2046	06 06 	. . 
	ld b,006h		;2048	06 06 	. . 
	ld b,006h		;204a	06 06 	. . 
	dec b			;204c	05 	. 
	ld b,005h		;204d	06 05 	. . 
	dec b			;204f	05 	. 
	ld b,005h		;2050	06 05 	. . 
sub_2052h:
	ld hl,0cc5fh		;2052	21 5f cc 	! _ . 
	bit 7,(hl)		;2055	cb 7e 	. ~ 
	res 7,(hl)		;2057	cb be 	. . 
	ret nz			;2059	c0 	. 
	ld hl,0cc40h		;205a	21 40 cc 	! @ . 
	inc (hl)			;205d	34 	4 
	ld a,(hl)			;205e	7e 	~ 
	cp 003h		;205f	fe 03 	. . 
	jp c,l206ah		;2061	da 6a 20 	. j   
	xor a			;2064	af 	. 
	ld (hl),a			;2065	77 	w 
	call sub_2076h		;2066	cd 76 20 	. v   
	ret			;2069	c9 	. 
l206ah:
	dec a			;206a	3d 	= 
	jp nz,l2072h		;206b	c2 72 20 	. r   
	call sub_210fh		;206e	cd 0f 21 	. . ! 
	ret			;2071	c9 	. 
l2072h:
	call sub_20fdh		;2072	cd fd 20 	. .   
	ret			;2075	c9 	. 
sub_2076h:
	ld a,(0c222h)		;2076	3a 22 c2 	: " . 
	bit 6,a		;2079	cb 77 	. w 
	ret nz			;207b	c0 	. 
	ld ix,0c4a0h		;207c	dd 21 a0 c4 	. ! . . 
	ld b,02ch		;2080	06 2c 	. , 
	ld a,(0c224h)		;2082	3a 24 c2 	: $ . 
	ld l,a			;2085	6f 	o 
	ld a,(0c227h)		;2086	3a 27 c2 	: ' . 
	ld h,a			;2089	67 	g 
	ld de,l0020h		;208a	11 20 00 	.   . 
l208dh:
	ld a,(ix+002h)		;208d	dd 7e 02 	. ~ . 
	rlca			;2090	07 	. 
	jr nc,l20b9h		;2091	30 26 	0 & 
	and 0c0h		;2093	e6 c0 	. . 
	jr nz,l20b9h		;2095	20 22 	  " 
	ld a,h			;2097	7c 	| 
	sub (ix+007h)		;2098	dd 96 07 	. . . 
	jr nc,l209fh		;209b	30 02 	0 . 
	neg		;209d	ed 44 	. D 
l209fh:
	ld c,a			;209f	4f 	O 
	ld a,002h		;20a0	3e 02 	> . 
	add a,(ix+008h)		;20a2	dd 86 08 	. . . 
	cp c			;20a5	b9 	. 
	jr c,l20b9h		;20a6	38 11 	8 . 
	ld a,l			;20a8	7d 	} 
	sub (ix+004h)		;20a9	dd 96 04 	. . . 
	jr nc,l20b0h		;20ac	30 02 	0 . 
	neg		;20ae	ed 44 	. D 
l20b0h:
	ld c,a			;20b0	4f 	O 
	ld a,006h		;20b1	3e 06 	> . 
	add a,(ix+005h)		;20b3	dd 86 05 	. . . 
	cp c			;20b6	b9 	. 
	jr nc,l20beh		;20b7	30 05 	0 . 
l20b9h:
	add ix,de		;20b9	dd 19 	. . 
	djnz l208dh		;20bb	10 d0 	. . 
	ret			;20bd	c9 	. 
l20beh:
	ld a,(0c127h)		;20be	3a 27 c1 	: ' . 
	and 006h		;20c1	e6 06 	. . 
	jp z,l20dah		;20c3	ca da 20 	. .   
	and 002h		;20c6	e6 02 	. . 
	jp nz,l20d3h		;20c8	c2 d3 20 	. .   
	ld a,(0c222h)		;20cb	3a 22 c2 	: " . 
	or 008h		;20ce	f6 08 	. . 
	ld (0c222h),a		;20d0	32 22 c2 	2 " . 
l20d3h:
	set 2,(ix+002h)		;20d3	dd cb 02 d6 	. . . . 
	jp l20edh		;20d7	c3 ed 20 	. .   
l20dah:
	ld a,(0c222h)		;20da	3a 22 c2 	: " . 
	ld c,a			;20dd	4f 	O 
	ld a,(ix+00ah)		;20de	dd 7e 0a 	. ~ . 
	and 03fh		;20e1	e6 3f 	. ? 
	or c			;20e3	b1 	. 
	ld (0c222h),a		;20e4	32 22 c2 	2 " . 
	ld a,(ix+002h)		;20e7	dd 7e 02 	. ~ . 
	and 018h		;20ea	e6 18 	. . 
	ret z			;20ec	c8 	. 
l20edh:
	ld a,(ix+002h)		;20ed	dd 7e 02 	. ~ . 
	set 5,(ix+002h)		;20f0	dd cb 02 ee 	. . . . 
	and 018h		;20f4	e6 18 	. . 
	ret z			;20f6	c8 	. 
	ld hl,0c222h		;20f7	21 22 c2 	! " . 
	res 3,(hl)		;20fa	cb 9e 	. . 
	ret			;20fc	c9 	. 
sub_20fdh:
	ld a,(0c422h)		;20fd	3a 22 c4 	: " . 
	rla			;2100	17 	. 
	ret nc			;2101	d0 	. 
	rla			;2102	17 	. 
	ret c			;2103	d8 	. 
	ld a,(0c424h)		;2104	3a 24 c4 	: $ . 
	ld l,a			;2107	6f 	o 
	ld a,(0c427h)		;2108	3a 27 c4 	: ' . 
	ld h,a			;210b	67 	g 
	jp l211eh		;210c	c3 1e 21 	. . ! 
sub_210fh:
	ld a,(0c3a2h)		;210f	3a a2 c3 	: . . 
	rla			;2112	17 	. 
	ret nc			;2113	d0 	. 
	rla			;2114	17 	. 
	ret c			;2115	d8 	. 
	ld a,(0c3a4h)		;2116	3a a4 c3 	: . . 
	ld l,a			;2119	6f 	o 
	ld a,(0c3a7h)		;211a	3a a7 c3 	: . . 
	ld h,a			;211d	67 	g 
l211eh:
	ld ix,0c4a0h		;211e	dd 21 a0 c4 	. ! . . 
	ld b,02ch		;2122	06 2c 	. , 
	ld de,l0020h		;2124	11 20 00 	.   . 
l2127h:
	ld a,(ix+002h)		;2127	dd 7e 02 	. ~ . 
	rlca			;212a	07 	. 
	jr nc,l2153h		;212b	30 26 	0 & 
	and 0d0h		;212d	e6 d0 	. . 
	jr nz,l2153h		;212f	20 22 	  " 
	ld a,h			;2131	7c 	| 
	sub (ix+007h)		;2132	dd 96 07 	. . . 
	jr nc,l2139h		;2135	30 02 	0 . 
	neg		;2137	ed 44 	. D 
l2139h:
	ld c,a			;2139	4f 	O 
	ld a,003h		;213a	3e 03 	> . 
	add a,(ix+008h)		;213c	dd 86 08 	. . . 
	cp c			;213f	b9 	. 
	jr c,l2153h		;2140	38 11 	8 . 
	ld a,l			;2142	7d 	} 
	sub (ix+004h)		;2143	dd 96 04 	. . . 
	jr nc,l214ah		;2146	30 02 	0 . 
	neg		;2148	ed 44 	. D 
l214ah:
	ld c,a			;214a	4f 	O 
	ld a,003h		;214b	3e 03 	> . 
	add a,(ix+005h)		;214d	dd 86 05 	. . . 
	cp c			;2150	b9 	. 
	jr nc,l2158h		;2151	30 05 	0 . 
l2153h:
	add ix,de		;2153	dd 19 	. . 
	djnz l2127h		;2155	10 d0 	. . 
	ret			;2157	c9 	. 
l2158h:
	ld c,(ix+00ah)		;2158	dd 4e 0a 	. N . 
	ld a,(0cc40h)		;215b	3a 40 cc 	: @ . 
	dec a			;215e	3d 	= 
	ld de,0c3a2h		;215f	11 a2 c3 	. . . 
	jr z,l2167h		;2162	28 03 	( . 
	ld de,0c422h		;2164	11 22 c4 	. " . 
l2167h:
	ld a,(de)			;2167	1a 	. 
	or c			;2168	b1 	. 
	ld (de),a			;2169	12 	. 
	ld a,(ix+002h)		;216a	dd 7e 02 	. ~ . 
	and 010h		;216d	e6 10 	. . 
	jp nz,l2176h		;216f	c2 76 21 	. v ! 
	ld a,c			;2172	79 	y 
	and 018h		;2173	e6 18 	. . 
	ret nz			;2175	c0 	. 
l2176h:
	set 5,(ix+002h)		;2176	dd cb 02 ee 	. . . . 
	set 0,(ix+002h)		;217a	dd cb 02 c6 	. . . . 
	ret			;217e	c9 	. 
l217fh:
	ld a,003h		;217f	3e 03 	> . 
	call sub_092bh		;2181	cd 2b 09 	. + . 
	jp c,l06dah		;2184	da da 06 	. . . 
	ld e,0d0h		;2187	1e d0 	. . 
	ld bc,l36e9h		;2189	01 e9 36 	. . 6 
	call sub_225fh		;218c	cd 5f 22 	. _ " 
	ld a,080h		;218f	3e 80 	> . 
	call sub_2257h		;2191	cd 57 22 	. W " 
	ld a,015h		;2194	3e 15 	> . 
	rst 30h			;2196	f7 	. 
	ld a,0abh		;2197	3e ab 	> . 
	ld b,004h		;2199	06 04 	. . 
	call sub_22f1h		;219b	cd f1 22 	. . " 
	ld a,01dh		;219e	3e 1d 	> . 
	ld (0c19fh),a		;21a0	32 9f c1 	2 . . 
	ret			;21a3	c9 	. 
	call sub_233bh		;21a4	cd 3b 23 	. ; # 
	cp 040h		;21a7	fe 40 	. @ 
	jp c,l222dh		;21a9	da 2d 22 	. - " 
	bit 2,(ix+002h)		;21ac	dd cb 02 56 	. . . V 
	jp nz,l2246h		;21b0	c2 46 22 	. F " 
	call sub_2301h		;21b3	cd 01 23 	. . # 
	ld a,(0c198h)		;21b6	3a 98 c1 	: . . 
	bit 7,a		;21b9	cb 7f 	.  
	jp nz,l222dh		;21bb	c2 2d 22 	. - " 
	bit 0,a		;21be	cb 47 	. G 
	jr nz,l21d5h		;21c0	20 13 	  . 
	bit 1,a		;21c2	cb 4f 	. O 
	jr nz,l21f1h		;21c4	20 2b 	  + 
	ld b,028h		;21c6	06 28 	. ( 
	call sub_22d9h		;21c8	cd d9 22 	. . " 
	jr nc,l2210h		;21cb	30 43 	0 C 
	ld hl,0c198h		;21cd	21 98 c1 	! . . 
	set 0,(hl)		;21d0	cb c6 	. . 
	jp l2210h		;21d2	c3 10 22 	. . " 
l21d5h:
	ld a,(0c19fh)		;21d5	3a 9f c1 	: . . 
	ld hl,0c19dh		;21d8	21 9d c1 	! . . 
	call sub_22c7h		;21db	cd c7 22 	. . " 
	ld a,d			;21de	7a 	z 
	and a			;21df	a7 	. 
	jr nz,l21eah		;21e0	20 08 	  . 
	ld de,0ffech		;21e2	11 ec ff 	. . . 
	call sub_227ah		;21e5	cd 7a 22 	. z " 
	jr l2205h		;21e8	18 1b 	. . 
l21eah:
	ld hl,0c198h		;21ea	21 98 c1 	! . . 
	set 1,(hl)		;21ed	cb ce 	. . 
	res 0,(hl)		;21ef	cb 86 	. . 
l21f1h:
	ld hl,0c19ah		;21f1	21 9a c1 	! . . 
	ld a,008h		;21f4	3e 08 	> . 
	call sub_22c7h		;21f6	cd c7 22 	. . " 
	ld a,d			;21f9	7a 	z 
	and a			;21fa	a7 	. 
	jr nz,l2202h		;21fb	20 05 	  . 
	ld de,l007fh+1		;21fd	11 80 00 	. . . 
	jr l2205h		;2200	18 03 	. . 
l2202h:
	ld de,0ff80h		;2202	11 80 ff 	. . . 
l2205h:
	ld hl,(0c196h)		;2205	2a 96 c1 	* . . 
	rst 18h			;2208	df 	. 
	ld de,0ffc0h		;2209	11 c0 ff 	. . . 
	ld hl,(0c196h)		;220c	2a 96 c1 	* . . 
	rst 8			;220f	cf 	. 
l2210h:
	ld a,008h		;2210	3e 08 	> . 
	call sub_22c4h		;2212	cd c4 22 	. . " 
	ld a,d			;2215	7a 	z 
	and a			;2216	a7 	. 
	jr nz,l2223h		;2217	20 0a 	  . 
	ld a,0afh		;2219	3e af 	> . 
	ld b,004h		;221b	06 04 	. . 
	call sub_22f1h		;221d	cd f1 22 	. . " 
	jp l223ch		;2220	c3 3c 22 	. < " 
l2223h:
	ld a,0abh		;2223	3e ab 	> . 
	ld b,004h		;2225	06 04 	. . 
	call sub_22f1h		;2227	cd f1 22 	. . " 
	jp l223ch		;222a	c3 3c 22 	. < " 
l222dh:
	call sub_22a6h		;222d	cd a6 22 	. . " 
	cp 018h		;2230	fe 18 	. . 
	jp c,l2240h		;2232	da 40 22 	. @ " 
	ld a,0b3h		;2235	3e b3 	> . 
	ld b,004h		;2237	06 04 	. . 
	call sub_22f1h		;2239	cd f1 22 	. . " 
l223ch:
	ld b,004h		;223c	06 04 	. . 
	rst 28h			;223e	ef 	. 
	ret			;223f	c9 	. 
l2240h:
	ld b,004h		;2240	06 04 	. . 
	call sub_24a9h		;2242	cd a9 24 	. . $ 
	ret			;2245	c9 	. 
l2246h:
	ld h,(ix+004h)		;2246	dd 66 04 	. f . 
	ld l,(ix+007h)		;2249	dd 6e 07 	. n . 
	ld a,071h		;224c	3e 71 	> q 
	call sub_06e2h		;224e	cd e2 06 	. . . 
	ld b,004h		;2251	06 04 	. . 
	call sub_24a9h		;2253	cd a9 24 	. . $ 
	ret			;2256	c9 	. 
sub_2257h:
	ld hl,(0c196h)		;2257	2a 96 c1 	* . . 
	inc l			;225a	2c 	, 
	inc l			;225b	2c 	, 
	or (hl)			;225c	b6 	. 
	ld (hl),a			;225d	77 	w 
	ret			;225e	c9 	. 
sub_225fh:
	ld hl,(0c196h)		;225f	2a 96 c1 	* . . 
	inc l			;2262	2c 	, 
	inc l			;2263	2c 	, 
	inc l			;2264	2c 	, 
	inc l			;2265	2c 	, 
	ld (hl),d			;2266	72 	r 
	inc hl			;2267	23 	# 
	ld a,(bc)			;2268	0a 	. 
	ld (hl),a			;2269	77 	w 
	inc l			;226a	2c 	, 
	inc l			;226b	2c 	, 
	ld (hl),e			;226c	73 	s 
	inc l			;226d	2c 	, 
	inc bc			;226e	03 	. 
	ld a,(bc)			;226f	0a 	. 
	ld (hl),a			;2270	77 	w 
	inc l			;2271	2c 	, 
	inc bc			;2272	03 	. 
	ld a,(bc)			;2273	0a 	. 
	ld (hl),a			;2274	77 	w 
	inc l			;2275	2c 	, 
	inc bc			;2276	03 	. 
	ld a,(bc)			;2277	0a 	. 
	ld (hl),a			;2278	77 	w 
	ret			;2279	c9 	. 
sub_227ah:
	ld l,(ix+010h)		;227a	dd 6e 10 	. n . 
	ld h,(ix+011h)		;227d	dd 66 11 	. f . 
	add hl,de			;2280	19 	. 
	ld (ix+010h),l		;2281	dd 75 10 	. u . 
	ld (ix+011h),h		;2284	dd 74 11 	. t . 
	ex de,hl			;2287	eb 	. 
	ret			;2288	c9 	. 
sub_2289h:
	ld l,(ix+012h)		;2289	dd 6e 12 	. n . 
	ld h,(ix+013h)		;228c	dd 66 13 	. f . 
	add hl,de			;228f	19 	. 
	ld (ix+012h),l		;2290	dd 75 12 	. u . 
	ld (ix+013h),h		;2293	dd 74 13 	. t . 
	ex de,hl			;2296	eb 	. 
	ret			;2297	c9 	. 
sub_2298h:
	ld (ix+010h),e		;2298	dd 73 10 	. s . 
	ld (ix+011h),d		;229b	dd 72 11 	. r . 
	ret			;229e	c9 	. 
sub_229fh:
	ld (ix+012h),e		;229f	dd 73 12 	. s . 
	ld (ix+013h),d		;22a2	dd 72 13 	. r . 
	ret			;22a5	c9 	. 
sub_22a6h:
	bit 1,(ix+002h)		;22a6	dd cb 02 4e 	. . . N 
	jr z,l22b2h		;22aa	28 06 	( . 
	ld de,l0040h		;22ac	11 40 00 	. @ . 
	jp l22b5h		;22af	c3 b5 22 	. . " 
l22b2h:
	ld de,0ffc0h		;22b2	11 c0 ff 	. . . 
l22b5h:
	ld hl,(0c196h)		;22b5	2a 96 c1 	* . . 
	rst 8			;22b8	cf 	. 
sub_22b9h:
	ld de,0ffe4h		;22b9	11 e4 ff 	. . . 
	call sub_227ah		;22bc	cd 7a 22 	. z " 
	ld hl,(0c196h)		;22bf	2a 96 c1 	* . . 
	rst 18h			;22c2	df 	. 
	ret			;22c3	c9 	. 
sub_22c4h:
	ld hl,0c199h		;22c4	21 99 c1 	! . . 
sub_22c7h:
	inc (hl)			;22c7	34 	4 
	ld c,a			;22c8	4f 	O 
	cp (hl)			;22c9	be 	. 
	ld d,000h		;22ca	16 00 	. . 
	jr c,l22cfh		;22cc	38 01 	8 . 
	ret			;22ce	c9 	. 
l22cfh:
	add a,c			;22cf	81 	. 
	dec a			;22d0	3d 	= 
	cp (hl)			;22d1	be 	. 
	inc d			;22d2	14 	. 
	jr c,l22d6h		;22d3	38 01 	8 . 
	ret			;22d5	c9 	. 
l22d6h:
	ld (hl),000h		;22d6	36 00 	6 . 
	ret			;22d8	c9 	. 
sub_22d9h:
	ld de,l0005h+2		;22d9	11 07 00 	. . . 
	ld a,(0c227h)		;22dc	3a 27 c2 	: ' . 
	jp l22e8h		;22df	c3 e8 22 	. . " 
sub_22e2h:
	ld de,00004h		;22e2	11 04 00 	. . . 
	ld a,(0c224h)		;22e5	3a 24 c2 	: $ . 
l22e8h:
	ld hl,(0c196h)		;22e8	2a 96 c1 	* . . 
	ld c,a			;22eb	4f 	O 
	add hl,de			;22ec	19 	. 
	ld a,(hl)			;22ed	7e 	~ 
	sub b			;22ee	90 	. 
	cp c			;22ef	b9 	. 
	ret			;22f0	c9 	. 
sub_22f1h:
	ld hl,(0c196h)		;22f1	2a 96 c1 	* . . 
sub_22f4h:
	ld de,l000ch		;22f4	11 0c 00 	. . . 
	add hl,de			;22f7	19 	. 
l22f8h:
	ld (hl),a			;22f8	77 	w 
	inc a			;22f9	3c 	< 
	ld de,l0020h		;22fa	11 20 00 	.   . 
	add hl,de			;22fd	19 	. 
	djnz l22f8h		;22fe	10 f8 	. . 
	ret			;2300	c9 	. 
sub_2301h:
	ld hl,(0c196h)		;2301	2a 96 c1 	* . . 
	inc l			;2304	2c 	, 
	inc l			;2305	2c 	, 
	bit 5,(hl)		;2306	cb 6e 	. n 
	ret z			;2308	c8 	. 
	ld a,(0c198h)		;2309	3a 98 c1 	: . . 
	bit 7,a		;230c	cb 7f 	.  
	ret nz			;230e	c0 	. 
	bit 0,(hl)		;230f	cb 46 	. F 
	jr nz,l2315h		;2311	20 02 	  . 
	set 6,(hl)		;2313	cb f6 	. . 
l2315h:
	ld de,l0005h		;2315	11 05 00 	. . . 
	add hl,de			;2318	19 	. 
	ld a,(0c227h)		;2319	3a 27 c2 	: ' . 
	cp (hl)			;231c	be 	. 
	jr nc,l2324h		;231d	30 05 	0 . 
	xor a			;231f	af 	. 
	sbc hl,de		;2320	ed 52 	. R 
	set 1,(hl)		;2322	cb ce 	. . 
l2324h:
	ld hl,0c198h		;2324	21 98 c1 	! . . 
	set 7,(hl)		;2327	cb fe 	. . 
	ld de,l025fh+1		;2329	11 60 02 	. ` . 
	call sub_2298h		;232c	cd 98 22 	. . " 
	ld a,(ix+009h)		;232f	dd 7e 09 	. ~ . 
	call 0615eh		;2332	cd 5e 61 	. ^ a 
	ld a,091h		;2335	3e 91 	> . 
	call sub_0a99h		;2337	cd 99 0a 	. . . 
	ret			;233a	c9 	. 
sub_233bh:
	ld hl,(0cb3dh)		;233b	2a 3d cb 	* = . 
	ld e,(ix+003h)		;233e	dd 5e 03 	. ^ . 
	ld d,(ix+004h)		;2341	dd 56 04 	. V . 
	add hl,de			;2344	19 	. 
	ld (ix+003h),l		;2345	dd 75 03 	. u . 
	ld (ix+004h),h		;2348	dd 74 04 	. t . 
	ld de,(0cb3bh)		;234b	ed 5b 3b cb 	. [ ; . 
	ld l,(ix+006h)		;234f	dd 6e 06 	. n . 
	ld h,(ix+007h)		;2352	dd 66 07 	. f . 
	xor a			;2355	af 	. 
	sbc hl,de		;2356	ed 52 	. R 
	ld (ix+006h),l		;2358	dd 75 06 	. u . 
	ld (ix+007h),h		;235b	dd 74 07 	. t . 
	ld a,h			;235e	7c 	| 
	ret			;235f	c9 	. 
	ld a,003h		;2360	3e 03 	> . 
	call sub_092bh		;2362	cd 2b 09 	. + . 
	jp c,l06dah		;2365	da da 06 	. . . 
	ld a,008h		;2368	3e 08 	> . 
	add a,d			;236a	82 	. 
	ld (0c19bh),a		;236b	32 9b c1 	2 . . 
	ld a,d			;236e	7a 	z 
	sub 008h		;236f	d6 08 	. . 
	ld (0c19ch),a		;2371	32 9c c1 	2 . . 
	ld e,0d0h		;2374	1e d0 	. . 
	ld bc,l36f1h		;2376	01 f1 36 	. . 6 
	call sub_225fh		;2379	cd 5f 22 	. _ " 
	ld a,08ch		;237c	3e 8c 	> . 
	rst 30h			;237e	f7 	. 
	jr l23b6h		;237f	18 35 	. 5 
	ld a,003h		;2381	3e 03 	> . 
	call sub_092bh		;2383	cd 2b 09 	. + . 
	jp c,l06dah		;2386	da da 06 	. . . 
	ld a,00ch		;2389	3e 0c 	> . 
	add a,d			;238b	82 	. 
	ld (0c19bh),a		;238c	32 9b c1 	2 . . 
	ld a,d			;238f	7a 	z 
	sub 00ch		;2390	d6 0c 	. . 
	ld (0c19ch),a		;2392	32 9c c1 	2 . . 
	jr l23abh		;2395	18 14 	. . 
	ld a,003h		;2397	3e 03 	> . 
	call sub_092bh		;2399	cd 2b 09 	. + . 
	jp c,l06dah		;239c	da da 06 	. . . 
	ld a,006h		;239f	3e 06 	> . 
	add a,d			;23a1	82 	. 
	ld (0c19bh),a		;23a2	32 9b c1 	2 . . 
	ld a,d			;23a5	7a 	z 
	sub 006h		;23a6	d6 06 	. . 
	ld (0c19ch),a		;23a8	32 9c c1 	2 . . 
l23abh:
	ld e,0d0h		;23ab	1e d0 	. . 
	ld bc,l36f1h		;23ad	01 f1 36 	. . 6 
	call sub_225fh		;23b0	cd 5f 22 	. _ " 
	ld a,016h		;23b3	3e 16 	> . 
	rst 30h			;23b5	f7 	. 
l23b6h:
	ld hl,0c198h		;23b6	21 98 c1 	! . . 
	set 0,(hl)		;23b9	cb c6 	. . 
	ld de,l0000h		;23bb	11 00 00 	. . . 
	ld ix,(0c196h)		;23be	dd 2a 96 c1 	. * . . 
	call sub_227ah		;23c2	cd 7a 22 	. z " 
	ld a,07fh		;23c5	3e 7f 	>  
	ld b,004h		;23c7	06 04 	. . 
	call sub_22f1h		;23c9	cd f1 22 	. . " 
	jp l2499h		;23cc	c3 99 24 	. . $ 
	call sub_233bh		;23cf	cd 3b 23 	. ; # 
	cp 038h		;23d2	fe 38 	. 8 
	jp c,l249dh		;23d4	da 9d 24 	. . $ 
	bit 2,(ix+002h)		;23d7	dd cb 02 56 	. . . V 
	jp nz,l24a3h		;23db	c2 a3 24 	. . $ 
	call sub_2301h		;23de	cd 01 23 	. . # 
	ld a,(0c198h)		;23e1	3a 98 c1 	: . . 
	and 080h		;23e4	e6 80 	. . 
	jp nz,l248ah		;23e6	c2 8a 24 	. . $ 
	ld a,(0c19dh)		;23e9	3a 9d c1 	: . . 
	bit 0,a		;23ec	cb 47 	. G 
	jr nz,l2413h		;23ee	20 23 	  # 
	ld b,004h		;23f0	06 04 	. . 
	call sub_0028h		;23f2	cd 28 00 	. ( . 
	ld b,030h		;23f5	06 30 	. 0 
	call sub_22d9h		;23f7	cd d9 22 	. . " 
	ret nc			;23fa	d0 	. 
	ld hl,0c19dh		;23fb	21 9d c1 	! . . 
	set 0,(hl)		;23fe	cb c6 	. . 
	ret			;2400	c9 	. 
	call sub_233bh		;2401	cd 3b 23 	. ; # 
	cp 038h		;2404	fe 38 	. 8 
	jp c,l249dh		;2406	da 9d 24 	. . $ 
	bit 2,(ix+002h)		;2409	dd cb 02 56 	. . . V 
	jp nz,l24a3h		;240d	c2 a3 24 	. . $ 
	call sub_2301h		;2410	cd 01 23 	. . # 
l2413h:
	ld a,(0c198h)		;2413	3a 98 c1 	: . . 
	bit 7,a		;2416	cb 7f 	.  
	jp nz,l248ah		;2418	c2 8a 24 	. . $ 
	bit 0,a		;241b	cb 47 	. G 
	jr nz,l2432h		;241d	20 13 	  . 
	ld de,l000ch		;241f	11 0c 00 	. . . 
	call sub_227ah		;2422	cd 7a 22 	. z " 
	ld hl,(0c196h)		;2425	2a 96 c1 	* . . 
	rst 18h			;2428	df 	. 
	ld hl,0c19bh		;2429	21 9b c1 	! . . 
	cp (hl)			;242c	be 	. 
	call nc,sub_2467h		;242d	d4 67 24 	. g $ 
	jr l2443h		;2430	18 11 	. . 
l2432h:
	ld de,0fff4h		;2432	11 f4 ff 	. . . 
	call sub_227ah		;2435	cd 7a 22 	. z " 
	ld hl,(0c196h)		;2438	2a 96 c1 	* . . 
	rst 18h			;243b	df 	. 
	ld hl,0c19ch		;243c	21 9c c1 	! . . 
	cp (hl)			;243f	be 	. 
	call c,sub_2475h		;2440	dc 75 24 	. u $ 
l2443h:
	ld de,0ff80h		;2443	11 80 ff 	. . . 
	ld hl,(0c196h)		;2446	2a 96 c1 	* . . 
	rst 8			;2449	cf 	. 
	ld a,008h		;244a	3e 08 	> . 
	call sub_22c4h		;244c	cd c4 22 	. . " 
	ld a,d			;244f	7a 	z 
	and a			;2450	a7 	. 
	jr nz,l245dh		;2451	20 0a 	  . 
	ld a,083h		;2453	3e 83 	> . 
	ld b,004h		;2455	06 04 	. . 
	call sub_22f1h		;2457	cd f1 22 	. . " 
	jp l2499h		;245a	c3 99 24 	. . $ 
l245dh:
	ld a,07fh		;245d	3e 7f 	>  
	ld b,004h		;245f	06 04 	. . 
	call sub_22f1h		;2461	cd f1 22 	. . " 
	jp l2499h		;2464	c3 99 24 	. . $ 
sub_2467h:
	ld hl,0c198h		;2467	21 98 c1 	! . . 
	set 0,(hl)		;246a	cb c6 	. . 
	ld a,000h		;246c	3e 00 	> . 
	ld (ix+010h),a		;246e	dd 77 10 	. w . 
	ld (ix+011h),a		;2471	dd 77 11 	. w . 
	ret			;2474	c9 	. 
sub_2475h:
	ld hl,0c198h		;2475	21 98 c1 	! . . 
	res 0,(hl)		;2478	cb 86 	. . 
	ld a,(0c19ch)		;247a	3a 9c c1 	: . . 
	ld (ix+004h),a		;247d	dd 77 04 	. w . 
	ld de,l0000h		;2480	11 00 00 	. . . 
	ld (ix+003h),d		;2483	dd 72 03 	. r . 
	call sub_227ah		;2486	cd 7a 22 	. z " 
	ret			;2489	c9 	. 
l248ah:
	call sub_22a6h		;248a	cd a6 22 	. . " 
	cp 010h		;248d	fe 10 	. . 
	jp c,l249dh		;248f	da 9d 24 	. . $ 
	ld a,087h		;2492	3e 87 	> . 
	ld b,004h		;2494	06 04 	. . 
	call sub_22f1h		;2496	cd f1 22 	. . " 
l2499h:
	ld b,004h		;2499	06 04 	. . 
	rst 28h			;249b	ef 	. 
	ret			;249c	c9 	. 
l249dh:
	ld b,004h		;249d	06 04 	. . 
	call sub_24a9h		;249f	cd a9 24 	. . $ 
	ret			;24a2	c9 	. 
l24a3h:
	ld b,004h		;24a3	06 04 	. . 
	call sub_2df2h		;24a5	cd f2 2d 	. . - 
	ret			;24a8	c9 	. 
sub_24a9h:
	push bc			;24a9	c5 	. 
	call sub_057bh		;24aa	cd 7b 05 	. { . 
	pop bc			;24ad	c1 	. 
	xor a			;24ae	af 	. 
	ld h,a			;24af	67 	g 
	ld l,b			;24b0	68 	h 
	add hl,hl			;24b1	29 	) 
	add hl,hl			;24b2	29 	) 
	add hl,hl			;24b3	29 	) 
	add hl,hl			;24b4	29 	) 
	add hl,hl			;24b5	29 	) 
	ld b,h			;24b6	44 	D 
	ld c,l			;24b7	4d 	M 
	dec bc			;24b8	0b 	. 
	ld hl,(0c196h)		;24b9	2a 96 c1 	* . . 
	inc hl			;24bc	23 	# 
	ex de,hl			;24bd	eb 	. 
	ld hl,(0c196h)		;24be	2a 96 c1 	* . . 
	ld (hl),a			;24c1	77 	w 
	ldir		;24c2	ed b0 	. . 
	call l06dah		;24c4	cd da 06 	. . . 
	ret			;24c7	c9 	. 
	ld a,003h		;24c8	3e 03 	> . 
	call sub_092bh		;24ca	cd 2b 09 	. + . 
	jp c,l06dah		;24cd	da da 06 	. . . 
	ld e,0d0h		;24d0	1e d0 	. . 
	ld bc,l36f9h		;24d2	01 f9 36 	. . 6 
	call sub_225fh		;24d5	cd 5f 22 	. _ " 
	ld a,020h		;24d8	3e 20 	>   
	rst 30h			;24da	f7 	. 
	ret			;24db	c9 	. 
	bit 2,(ix+002h)		;24dc	dd cb 02 56 	. . . V 
	jr nz,l250dh		;24e0	20 2b 	  + 
	call sub_233bh		;24e2	cd 3b 23 	. ; # 
	cp 040h		;24e5	fe 40 	. @ 
	jr c,l2507h		;24e7	38 1e 	8 . 
	ld a,008h		;24e9	3e 08 	> . 
	call sub_22c4h		;24eb	cd c4 22 	. . " 
	ld a,d			;24ee	7a 	z 
	and a			;24ef	a7 	. 
	jr nz,l24fch		;24f0	20 0a 	  . 
	ld a,040h		;24f2	3e 40 	> @ 
	ld b,004h		;24f4	06 04 	. . 
	call sub_22f1h		;24f6	cd f1 22 	. . " 
	jp l2503h		;24f9	c3 03 25 	. . % 
l24fch:
	ld a,044h		;24fc	3e 44 	> D 
	ld b,004h		;24fe	06 04 	. . 
	call sub_22f1h		;2500	cd f1 22 	. . " 
l2503h:
	ld b,004h		;2503	06 04 	. . 
	rst 28h			;2505	ef 	. 
	ret			;2506	c9 	. 
l2507h:
	ld b,004h		;2507	06 04 	. . 
	call sub_24a9h		;2509	cd a9 24 	. . $ 
	ret			;250c	c9 	. 
l250dh:
	ld b,004h		;250d	06 04 	. . 
	call sub_2df2h		;250f	cd f2 2d 	. . - 
	ret			;2512	c9 	. 
	ld a,004h		;2513	3e 04 	> . 
	call sub_092bh		;2515	cd 2b 09 	. + . 
	jp c,l06dah		;2518	da da 06 	. . . 
	ld e,0d0h		;251b	1e d0 	. . 
	ld bc,l370dh		;251d	01 0d 37 	. . 7 
	call sub_225fh		;2520	cd 5f 22 	. _ " 
	ld a,057h		;2523	3e 57 	> W 
	rst 30h			;2525	f7 	. 
	ld de,l025fh+1		;2526	11 60 02 	. ` . 
	ld ix,(0c196h)		;2529	dd 2a 96 c1 	. * . . 
	call sub_227ah		;252d	cd 7a 22 	. z " 
	ld a,064h		;2530	3e 64 	> d 
	ld b,00ch		;2532	06 0c 	. . 
	call sub_22f1h		;2534	cd f1 22 	. . " 
	ret			;2537	c9 	. 
	call sub_233bh		;2538	cd 3b 23 	. ; # 
	cp 03ah		;253b	fe 3a 	. : 
	jr c,l25a7h		;253d	38 68 	8 h 
	ld a,(0c198h)		;253f	3a 98 c1 	: . . 
	bit 7,a		;2542	cb 7f 	.  
	jr nz,l259bh		;2544	20 55 	  U 
	bit 2,(ix+002h)		;2546	dd cb 02 56 	. . . V 
	jr nz,l25adh		;254a	20 61 	  a 
	bit 5,(ix+002h)		;254c	dd cb 02 6e 	. . . n 
	jr z,l2561h		;2550	28 0f 	( . 
	ld hl,0c198h		;2552	21 98 c1 	! . . 
	set 7,(hl)		;2555	cb fe 	. . 
	ld a,097h		;2557	3e 97 	> . 
	rst 30h			;2559	f7 	. 
	ld a,091h		;255a	3e 91 	> . 
	call sub_0a99h		;255c	cd 99 0a 	. . . 
	jr l259bh		;255f	18 3a 	. : 
l2561h:
	ld de,0ff80h		;2561	11 80 ff 	. . . 
	ld hl,(0c196h)		;2564	2a 96 c1 	* . . 
	rst 8			;2567	cf 	. 
	ld de,0fff5h		;2568	11 f5 ff 	. . . 
	call sub_227ah		;256b	cd 7a 22 	. z " 
	ld hl,(0c196h)		;256e	2a 96 c1 	* . . 
	rst 18h			;2571	df 	. 
	cp 00ch		;2572	fe 0c 	. . 
	jr c,l257ah		;2574	38 04 	8 . 
	ld b,00ch		;2576	06 0c 	. . 
	rst 28h			;2578	ef 	. 
	ret			;2579	c9 	. 
l257ah:
	ld a,002h		;257a	3e 02 	> . 
	ld hl,0c199h		;257c	21 99 c1 	! . . 
	inc (hl)			;257f	34 	4 
	cp (hl)			;2580	be 	. 
	ret nc			;2581	d0 	. 
	xor a			;2582	af 	. 
	ld (hl),a			;2583	77 	w 
	ld de,l025fh+1		;2584	11 60 02 	. ` . 
	ld hl,(0c196h)		;2587	2a 96 c1 	* . . 
	call sub_2298h		;258a	cd 98 22 	. . " 
	or a			;258d	b7 	. 
	ld hl,(0c196h)		;258e	2a 96 c1 	* . . 
	ld de,00003h		;2591	11 03 00 	. . . 
	add hl,de			;2594	19 	. 
	ld (hl),000h		;2595	36 00 	6 . 
	inc l			;2597	2c 	, 
	ld (hl),020h		;2598	36 20 	6   
	ret			;259a	c9 	. 
l259bh:
	call sub_22b9h		;259b	cd b9 22 	. . " 
	cp 008h		;259e	fe 08 	. . 
	jp c,l25a7h		;25a0	da a7 25 	. . % 
	ld b,00ch		;25a3	06 0c 	. . 
	rst 28h			;25a5	ef 	. 
	ret			;25a6	c9 	. 
l25a7h:
	ld b,00ch		;25a7	06 0c 	. . 
	call sub_24a9h		;25a9	cd a9 24 	. . $ 
	ret			;25ac	c9 	. 
l25adh:
	ld b,00ch		;25ad	06 0c 	. . 
	call sub_2df2h		;25af	cd f2 2d 	. . - 
	ret			;25b2	c9 	. 
	ld a,003h		;25b3	3e 03 	> . 
	call sub_092bh		;25b5	cd 2b 09 	. + . 
	jp c,l06dah		;25b8	da da 06 	. . . 
	ld e,0d0h		;25bb	1e d0 	. . 
	ld bc,036fdh		;25bd	01 fd 36 	. . 6 
	call sub_225fh		;25c0	cd 5f 22 	. _ " 
	ld a,061h		;25c3	3e 61 	> a 
	ld b,002h		;25c5	06 02 	. . 
l25c7h:
	rst 30h			;25c7	f7 	. 
	djnz l25c7h		;25c8	10 fd 	. . 
	ld a,097h		;25ca	3e 97 	> . 
	ld b,004h		;25cc	06 04 	. . 
	call sub_22f1h		;25ce	cd f1 22 	. . " 
	ret			;25d1	c9 	. 
	call sub_233bh		;25d2	cd 3b 23 	. ; # 
	cp 040h		;25d5	fe 40 	. @ 
	jp c,l2695h		;25d7	da 95 26 	. . & 
	call sub_269bh		;25da	cd 9b 26 	. . & 
	ld a,(0c198h)		;25dd	3a 98 c1 	: . . 
	bit 7,a		;25e0	cb 7f 	.  
	jp nz,l2683h		;25e2	c2 83 26 	. . & 
	ld a,(0c198h)		;25e5	3a 98 c1 	: . . 
	bit 5,a		;25e8	cb 6f 	. o 
	jr nz,l2620h		;25ea	20 34 	  4 
	ld b,026h		;25ec	06 26 	. & 
	call sub_22d9h		;25ee	cd d9 22 	. . " 
	jr nc,l2603h		;25f1	30 10 	0 . 
	ld de,l025fh+1		;25f3	11 60 02 	. ` . 
	call sub_2298h		;25f6	cd 98 22 	. . " 
	ld hl,0c198h		;25f9	21 98 c1 	! . . 
	set 5,(hl)		;25fc	cb ee 	. . 
	ld a,09fh		;25fe	3e 9f 	> . 
	call sub_0a99h		;2600	cd 99 0a 	. . . 
l2603h:
	ld a,(0c198h)		;2603	3a 98 c1 	: . . 
l2606h:
	bit 6,a		;2606	cb 77 	. w 
	jr nz,l2615h		;2608	20 0b 	  . 
	ld a,097h		;260a	3e 97 	> . 
	ld b,004h		;260c	06 04 	. . 
	call sub_22f1h		;260e	cd f1 22 	. . " 
	ld b,004h		;2611	06 04 	. . 
	rst 28h			;2613	ef 	. 
	ret			;2614	c9 	. 
l2615h:
	ld a,0a3h		;2615	3e a3 	> . 
	ld b,004h		;2617	06 04 	. . 
	call sub_22f1h		;2619	cd f1 22 	. . " 
	ld b,004h		;261c	06 04 	. . 
	rst 28h			;261e	ef 	. 
	ret			;261f	c9 	. 
l2620h:
	ld de,0ffe7h		;2620	11 e7 ff 	. . . 
	call sub_227ah		;2623	cd 7a 22 	. z " 
	bit 7,d		;2626	cb 7a 	. z 
	jr z,l2639h		;2628	28 0f 	( . 
	ld hl,0c19dh		;262a	21 9d c1 	! . . 
	inc (hl)			;262d	34 	4 
	ld a,(hl)			;262e	7e 	~ 
	rra			;262f	1f 	. 
	jr c,l2639h		;2630	38 07 	8 . 
	ld hl,l0504h		;2632	21 04 05 	! . . 
	xor a			;2635	af 	. 
	call sub_392fh		;2636	cd 2f 39 	. / 9 
l2639h:
	ld a,(ix+014h)		;2639	dd 7e 14 	. ~ . 
	bit 1,a		;263c	cb 4f 	. O 
	jr nz,l266bh		;263e	20 2b 	  + 
	ld hl,(0c196h)		;2640	2a 96 c1 	* . . 
	ld e,(ix+010h)		;2643	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;2646	dd 56 11 	. V . 
	rst 18h			;2649	df 	. 
	cp 018h		;264a	fe 18 	. . 
	jr c,l2695h		;264c	38 47 	8 G 
	ld a,(0c198h)		;264e	3a 98 c1 	: . . 
	bit 6,a		;2651	cb 77 	. w 
	jr z,l2659h		;2653	28 04 	( . 
	ld a,0a7h		;2655	3e a7 	> . 
	jr l265bh		;2657	18 02 	. . 
l2659h:
	ld a,09bh		;2659	3e 9b 	> . 
l265bh:
	ld b,004h		;265b	06 04 	. . 
	call sub_22f1h		;265d	cd f1 22 	. . " 
	ld b,004h		;2660	06 04 	. . 
	rst 28h			;2662	ef 	. 
	ld de,0ff40h		;2663	11 40 ff 	. @ . 
	ld hl,(0c196h)		;2666	2a 96 c1 	* . . 
	rst 8			;2669	cf 	. 
	ret			;266a	c9 	. 
l266bh:
	ld de,l0000h		;266b	11 00 00 	. . . 
	call sub_2298h		;266e	cd 98 22 	. . " 
	ld a,008h		;2671	3e 08 	> . 
	ld hl,0c199h		;2673	21 99 c1 	! . . 
	inc (hl)			;2676	34 	4 
	cp a			;2677	bf 	. 
	jp nc,l2603h		;2678	d2 03 26 	. . & 
	xor a			;267b	af 	. 
	ld (hl),a			;267c	77 	w 
	ld hl,0c198h		;267d	21 98 c1 	! . . 
	res 5,(hl)		;2680	cb ae 	. . 
	ret			;2682	c9 	. 
l2683h:
	call sub_22b9h		;2683	cd b9 22 	. . " 
	cp 010h		;2686	fe 10 	. . 
	jr c,l2695h		;2688	38 0b 	8 . 
	ld a,09fh		;268a	3e 9f 	> . 
	ld b,004h		;268c	06 04 	. . 
	call sub_22f1h		;268e	cd f1 22 	. . " 
l2691h:
	ld b,004h		;2691	06 04 	. . 
	rst 28h			;2693	ef 	. 
	ret			;2694	c9 	. 
l2695h:
	ld b,004h		;2695	06 04 	. . 
	call sub_24a9h		;2697	cd a9 24 	. . $ 
	ret			;269a	c9 	. 
sub_269bh:
	ld hl,(0c196h)		;269b	2a 96 c1 	* . . 
	inc l			;269e	2c 	, 
	inc l			;269f	2c 	, 
	bit 5,(hl)		;26a0	cb 6e 	. n 
	ret z			;26a2	c8 	. 
	bit 2,(hl)		;26a3	cb 56 	. V 
	jr nz,l26d7h		;26a5	20 30 	  0 
	res 5,(hl)		;26a7	cb ae 	. . 
	ld a,(0c198h)		;26a9	3a 98 c1 	: . . 
	bit 6,a		;26ac	cb 77 	. w 
	jr nz,l26bbh		;26ae	20 0b 	  . 
	ld hl,0c198h		;26b0	21 98 c1 	! . . 
	set 6,(hl)		;26b3	cb f6 	. . 
	ld a,002h		;26b5	3e 02 	> . 
	call 0615eh		;26b7	cd 5e 61 	. ^ a 
	ret			;26ba	c9 	. 
l26bbh:
	set 5,(hl)		;26bb	cb ee 	. . 
	ld hl,0c198h		;26bd	21 98 c1 	! . . 
	bit 7,(hl)		;26c0	cb 7e 	. ~ 
	ret nz			;26c2	c0 	. 
	set 7,(hl)		;26c3	cb fe 	. . 
	ld de,l025fh+1		;26c5	11 60 02 	. ` . 
	call sub_2298h		;26c8	cd 98 22 	. . " 
	ld a,(ix+009h)		;26cb	dd 7e 09 	. ~ . 
	call 0615eh		;26ce	cd 5e 61 	. ^ a 
	ld a,091h		;26d1	3e 91 	> . 
	call sub_0a99h		;26d3	cd 99 0a 	. . . 
	ret			;26d6	c9 	. 
l26d7h:
	ld b,004h		;26d7	06 04 	. . 
	call sub_2df2h		;26d9	cd f2 2d 	. . - 
	ret			;26dc	c9 	. 
	ld a,003h		;26dd	3e 03 	> . 
	call sub_092bh		;26df	cd 2b 09 	. + . 
	jp c,l06dah		;26e2	da da 06 	. . . 
	ld e,0d0h		;26e5	1e d0 	. . 
	ld bc,03721h		;26e7	01 21 37 	. ! 7 
	call sub_225fh		;26ea	cd 5f 22 	. _ " 
	ld a,061h		;26ed	3e 61 	> a 
	ld b,002h		;26ef	06 02 	. . 
l26f1h:
	rst 30h			;26f1	f7 	. 
	djnz l26f1h		;26f2	10 fd 	. . 
	ld a,097h		;26f4	3e 97 	> . 
	ld b,004h		;26f6	06 04 	. . 
	call sub_22f1h		;26f8	cd f1 22 	. . " 
	ret			;26fb	c9 	. 
	call sub_233bh		;26fc	cd 3b 23 	. ; # 
	cp 040h		;26ff	fe 40 	. @ 
	jp c,l2695h		;2701	da 95 26 	. . & 
	bit 2,(ix+002h)		;2704	dd cb 02 56 	. . . V 
	jr nz,l271fh		;2708	20 15 	  . 
	call sub_2301h		;270a	cd 01 23 	. . # 
	ld a,(0c198h)		;270d	3a 98 c1 	: . . 
	bit 7,a		;2710	cb 7f 	.  
	jp nz,l2683h		;2712	c2 83 26 	. . & 
	ld a,0a3h		;2715	3e a3 	> . 
	ld b,004h		;2717	06 04 	. . 
	call sub_22f1h		;2719	cd f1 22 	. . " 
	jp l2691h		;271c	c3 91 26 	. . & 
l271fh:
	ld a,005h		;271f	3e 05 	> . 
	ld (ix+009h),a		;2721	dd 77 09 	. w . 
	ld b,004h		;2724	06 04 	. . 
	call sub_2df2h		;2726	cd f2 2d 	. . - 
	ret			;2729	c9 	. 
	ld a,001h		;272a	3e 01 	> . 
	call sub_092bh		;272c	cd 2b 09 	. + . 
	jp c,l06dah		;272f	da da 06 	. . . 
	ld bc,l287fh		;2732	01 7f 28 	.  ( 
	call sub_225fh		;2735	cd 5f 22 	. _ " 
	ld a,079h		;2738	3e 79 	> y 
	rst 30h			;273a	f7 	. 
	ld a,0c0h		;273b	3e c0 	> . 
	call sub_2257h		;273d	cd 57 22 	. W " 
	ld a,03eh		;2740	3e 3e 	> > 
	ld b,002h		;2742	06 02 	. . 
	call sub_22f1h		;2744	cd f1 22 	. . " 
	ret			;2747	c9 	. 
	ld a,001h		;2748	3e 01 	> . 
	call sub_092bh		;274a	cd 2b 09 	. + . 
	jp c,l06dah		;274d	da da 06 	. . . 
	ld bc,l287fh		;2750	01 7f 28 	.  ( 
	call sub_225fh		;2753	cd 5f 22 	. _ " 
	ld a,07ah		;2756	3e 7a 	> z 
	rst 30h			;2758	f7 	. 
	ld a,0c0h		;2759	3e c0 	> . 
	call sub_2257h		;275b	cd 57 22 	. W " 
	ld a,03ch		;275e	3e 3c 	> < 
	ld b,002h		;2760	06 02 	. . 
	call sub_22f1h		;2762	cd f1 22 	. . " 
	ret			;2765	c9 	. 
	call sub_2867h		;2766	cd 67 28 	. g ( 
	ld a,021h		;2769	3e 21 	> ! 
	rst 30h			;276b	f7 	. 
	ld a,034h		;276c	3e 34 	> 4 
	ld b,002h		;276e	06 02 	. . 
	call sub_22f1h		;2770	cd f1 22 	. . " 
	ret			;2773	c9 	. 
	call sub_2867h		;2774	cd 67 28 	. g ( 
	ld a,022h		;2777	3e 22 	> " 
	rst 30h			;2779	f7 	. 
	ld a,036h		;277a	3e 36 	> 6 
	ld b,002h		;277c	06 02 	. . 
	call sub_22f1h		;277e	cd f1 22 	. . " 
	ret			;2781	c9 	. 
	call sub_2867h		;2782	cd 67 28 	. g ( 
	ld a,023h		;2785	3e 23 	> # 
	rst 30h			;2787	f7 	. 
	ld a,038h		;2788	3e 38 	> 8 
	ld b,002h		;278a	06 02 	. . 
	call sub_22f1h		;278c	cd f1 22 	. . " 
	ret			;278f	c9 	. 
	call sub_2867h		;2790	cd 67 28 	. g ( 
	ld a,024h		;2793	3e 24 	> $ 
	rst 30h			;2795	f7 	. 
	ld a,03ah		;2796	3e 3a 	> : 
	ld b,002h		;2798	06 02 	. . 
	call sub_22f1h		;279a	cd f1 22 	. . " 
	ret			;279d	c9 	. 
	call sub_2883h		;279e	cd 83 28 	. . ( 
	ret			;27a1	c9 	. 
	ld a,002h		;27a2	3e 02 	> . 
	call sub_092bh		;27a4	cd 2b 09 	. + . 
	jp c,l06dah		;27a7	da da 06 	. . . 
	ld bc,l287fh		;27aa	01 7f 28 	.  ( 
	call sub_225fh		;27ad	cd 5f 22 	. _ " 
	ld a,0c0h		;27b0	3e c0 	> . 
	call sub_2257h		;27b2	cd 57 22 	. W " 
	ld a,020h		;27b5	3e 20 	>   
	ld b,003h		;27b7	06 03 	. . 
	call sub_22f1h		;27b9	cd f1 22 	. . " 
	ld a,007h		;27bc	3e 07 	> . 
	call 0615eh		;27be	cd 5e 61 	. ^ a 
	ret			;27c1	c9 	. 
	call sub_233bh		;27c2	cd 3b 23 	. ; # 
	cp 03ch		;27c5	fe 3c 	. < 
	jr c,l27e7h		;27c7	38 1e 	8 . 
	ld hl,0c19bh		;27c9	21 9b c1 	! . . 
	bit 0,(hl)		;27cc	cb 46 	. F 
	jr nz,l27d5h		;27ce	20 05 	  . 
	set 0,(hl)		;27d0	cb c6 	. . 
	ld a,025h		;27d2	3e 25 	> % 
	rst 30h			;27d4	f7 	. 
l27d5h:
	ld hl,0c199h		;27d5	21 99 c1 	! . . 
	inc (hl)			;27d8	34 	4 
	ld a,004h		;27d9	3e 04 	> . 
	cp (hl)			;27db	be 	. 
	ret nc			;27dc	d0 	. 
	ld b,003h		;27dd	06 03 	. . 
	rst 28h			;27df	ef 	. 
	ld a,010h		;27e0	3e 10 	> . 
	ld hl,0c199h		;27e2	21 99 c1 	! . . 
	cp (hl)			;27e5	be 	. 
	ret nc			;27e6	d0 	. 
l27e7h:
	ld b,003h		;27e7	06 03 	. . 
	call sub_24a9h		;27e9	cd a9 24 	. . $ 
	ret			;27ec	c9 	. 
sub_27edh:
	ld hl,0c19ch		;27ed	21 9c c1 	! . . 
	ld a,004h		;27f0	3e 04 	> . 
	cp (hl)			;27f2	be 	. 
	jr z,l27fah		;27f3	28 05 	( . 
	inc (hl)			;27f5	34 	4 
	call sub_233bh		;27f6	cd 3b 23 	. ; # 
	ret			;27f9	c9 	. 
l27fah:
	call sub_233bh		;27fa	cd 3b 23 	. ; # 
	cp 040h		;27fd	fe 40 	. @ 
	jr c,l2812h		;27ff	38 11 	8 . 
	bit 5,(ix+002h)		;2801	dd cb 02 6e 	. . . n 
	jr nz,l2818h		;2805	20 11 	  . 
	ld b,004h		;2807	06 04 	. . 
	rst 28h			;2809	ef 	. 
	ld a,0e0h		;280a	3e e0 	> . 
	ld hl,0c199h		;280c	21 99 c1 	! . . 
	inc (hl)			;280f	34 	4 
	cp (hl)			;2810	be 	. 
	ret nz			;2811	c0 	. 
l2812h:
	ld b,004h		;2812	06 04 	. . 
	call sub_24a9h		;2814	cd a9 24 	. . $ 
	ret			;2817	c9 	. 
l2818h:
	ld a,08dh		;2818	3e 8d 	> . 
	call sub_0a99h		;281a	cd 99 0a 	. . . 
	ld a,(0c127h)		;281d	3a 27 c1 	: ' . 
	bit 3,a		;2820	cb 5f 	. _ 
	jr nz,l282ah		;2822	20 06 	  . 
	ld a,(ix+009h)		;2824	dd 7e 09 	. ~ . 
	call 0615eh		;2827	cd 5e 61 	. ^ a 
l282ah:
	ld d,(ix+004h)		;282a	dd 56 04 	. V . 
	ld e,(ix+007h)		;282d	dd 5e 07 	. ^ . 
	ld a,(ix+009h)		;2830	dd 7e 09 	. ~ . 
	ld hl,0c127h		;2833	21 27 c1 	! ' . 
	ld c,(hl)			;2836	4e 	N 
	ex de,hl			;2837	eb 	. 
	bit 3,c		;2838	cb 59 	. Y 
	jr nz,l2844h		;283a	20 08 	  . 
	ld b,008h		;283c	06 08 	. . 
	add a,b			;283e	80 	. 
	sub 003h		;283f	d6 03 	. . 
	jp l284dh		;2841	c3 4d 28 	. M ( 
l2844h:
	push hl			;2844	e5 	. 
	ld a,006h		;2845	3e 06 	> . 
	call 0615eh		;2847	cd 5e 61 	. ^ a 
	ld a,00bh		;284a	3e 0b 	> . 
	pop hl			;284c	e1 	. 
l284dh:
	call sub_06e2h		;284d	cd e2 06 	. . . 
	scf			;2850	37 	7 
	ret			;2851	c9 	. 
	ld a,(ix+009h)		;2852	dd 7e 09 	. ~ . 
	push af			;2855	f5 	. 
	call 0615eh		;2856	cd 5e 61 	. ^ a 
	pop af			;2859	f1 	. 
	sub 002h		;285a	d6 02 	. . 
	call 0648dh		;285c	cd 8d 64 	. . d 
	ret			;285f	c9 	. 
	ld a,(ix+009h)		;2860	dd 7e 09 	. ~ . 
	call 0615eh		;2863	cd 5e 61 	. ^ a 
	ret			;2866	c9 	. 
sub_2867h:
	ld a,001h		;2867	3e 01 	> . 
	call sub_092bh		;2869	cd 2b 09 	. + . 
	jr c,l287ah		;286c	38 0c 	8 . 
	ld bc,l287fh		;286e	01 7f 28 	.  ( 
	call sub_225fh		;2871	cd 5f 22 	. _ " 
	ld a,0c0h		;2874	3e c0 	> . 
	call sub_2257h		;2876	cd 57 22 	. W " 
	ret			;2879	c9 	. 
l287ah:
	pop hl			;287a	e1 	. 
	call l06dah		;287b	cd da 06 	. . . 
	ret			;287e	c9 	. 
l287fh:
	nop			;287f	00 	. 
	nop			;2880	00 	. 
	nop			;2881	00 	. 
	nop			;2882	00 	. 
sub_2883h:
	call sub_233bh		;2883	cd 3b 23 	. ; # 
	cp 03ch		;2886	fe 3c 	. < 
	jr c,l2895h		;2888	38 0b 	8 . 
	ld b,002h		;288a	06 02 	. . 
	rst 28h			;288c	ef 	. 
	ld a,020h		;288d	3e 20 	>   
	ld hl,0c199h		;288f	21 99 c1 	! . . 
	inc (hl)			;2892	34 	4 
	cp (hl)			;2893	be 	. 
	ret nz			;2894	c0 	. 
l2895h:
	ld b,002h		;2895	06 02 	. . 
	call sub_24a9h		;2897	cd a9 24 	. . $ 
	ret			;289a	c9 	. 
	ld a,01ah		;289b	3e 1a 	> . 
	rst 30h			;289d	f7 	. 
	ld a,003h		;289e	3e 03 	> . 
	call sub_092bh		;28a0	cd 2b 09 	. + . 
	jp c,l06dah		;28a3	da da 06 	. . . 
	ld e,098h		;28a6	1e 98 	. . 
	ld bc,036edh		;28a8	01 ed 36 	. . 6 
	call sub_225fh		;28ab	cd 5f 22 	. _ " 
	ld a,088h		;28ae	3e 88 	> . 
	call sub_2257h		;28b0	cd 57 22 	. W " 
	ld a,02ch		;28b3	3e 2c 	> , 
	ld b,004h		;28b5	06 04 	. . 
	call sub_22f1h		;28b7	cd f1 22 	. . " 
	ret			;28ba	c9 	. 
	call sub_27edh		;28bb	cd ed 27 	. . ' 
	ret nc			;28be	d0 	. 
	ld a,001h		;28bf	3e 01 	> . 
	call 0648dh		;28c1	cd 8d 64 	. . d 
	ld b,004h		;28c4	06 04 	. . 
	call sub_24a9h		;28c6	cd a9 24 	. . $ 
	ret			;28c9	c9 	. 
	call sub_233bh		;28ca	cd 3b 23 	. ; # 
	cp 038h		;28cd	fe 38 	. 8 
	jr c,l28e2h		;28cf	38 11 	8 . 
	bit 5,(ix+002h)		;28d1	dd cb 02 6e 	. . . n 
	jr nz,l28e8h		;28d5	20 11 	  . 
	ld b,004h		;28d7	06 04 	. . 
	rst 28h			;28d9	ef 	. 
	ld a,0feh		;28da	3e fe 	> . 
	ld hl,0c199h		;28dc	21 99 c1 	! . . 
	inc (hl)			;28df	34 	4 
	cp (hl)			;28e0	be 	. 
	ret nz			;28e1	c0 	. 
l28e2h:
	ld b,004h		;28e2	06 04 	. . 
	call sub_24a9h		;28e4	cd a9 24 	. . $ 
	ret			;28e7	c9 	. 
l28e8h:
	ld a,08dh		;28e8	3e 8d 	> . 
	call sub_0a99h		;28ea	cd 99 0a 	. . . 
	ld h,(ix+004h)		;28ed	dd 66 04 	. f . 
	ld l,(ix+007h)		;28f0	dd 6e 07 	. n . 
	ld a,(0c131h)		;28f3	3a 31 c1 	: 1 . 
	bit 7,a		;28f6	cb 7f 	.  
	jr z,l290dh		;28f8	28 13 	( . 
	ld a,(0c127h)		;28fa	3a 27 c1 	: ' . 
	bit 3,a		;28fd	cb 5f 	. _ 
	jr nz,l2905h		;28ff	20 04 	  . 
	ld a,008h		;2901	3e 08 	> . 
	jr l2907h		;2903	18 02 	. . 
l2905h:
	ld a,00bh		;2905	3e 0b 	> . 
l2907h:
	call sub_06e2h		;2907	cd e2 06 	. . . 
	jp l2912h		;290a	c3 12 29 	. . ) 
l290dh:
	ld a,040h		;290d	3e 40 	> @ 
	call sub_06e2h		;290f	cd e2 06 	. . . 
l2912h:
	jr l28e2h		;2912	18 ce 	. . 
	ret			;2914	c9 	. 
	ld a,01dh		;2915	3e 1d 	> . 
	rst 30h			;2917	f7 	. 
	ld a,003h		;2918	3e 03 	> . 
	call sub_092bh		;291a	cd 2b 09 	. + . 
	jp c,l06dah		;291d	da da 06 	. . . 
	ld e,098h		;2920	1e 98 	. . 
	ld bc,l3715h		;2922	01 15 37 	. . 7 
	call sub_225fh		;2925	cd 5f 22 	. _ " 
	ld b,004h		;2928	06 04 	. . 
	ld a,088h		;292a	3e 88 	> . 
	call sub_2257h		;292c	cd 57 22 	. W " 
	ld a,020h		;292f	3e 20 	>   
	ld b,004h		;2931	06 04 	. . 
	call sub_22f1h		;2933	cd f1 22 	. . " 
	ret			;2936	c9 	. 
	call sub_27edh		;2937	cd ed 27 	. . ' 
	ret nc			;293a	d0 	. 
	ld a,002h		;293b	3e 02 	> . 
	call 0648dh		;293d	cd 8d 64 	. . d 
	ld b,004h		;2940	06 04 	. . 
	call sub_24a9h		;2942	cd a9 24 	. . $ 
	ret			;2945	c9 	. 
	ld a,01ch		;2946	3e 1c 	> . 
	rst 30h			;2948	f7 	. 
	ld a,003h		;2949	3e 03 	> . 
	call sub_092bh		;294b	cd 2b 09 	. + . 
	jp c,l06dah		;294e	da da 06 	. . . 
	ld e,098h		;2951	1e 98 	. . 
	ld bc,036edh		;2953	01 ed 36 	. . 6 
	call sub_225fh		;2956	cd 5f 22 	. _ " 
	ld b,004h		;2959	06 04 	. . 
	ld a,088h		;295b	3e 88 	> . 
	call sub_2257h		;295d	cd 57 22 	. W " 
	ld a,028h		;2960	3e 28 	> ( 
	ld b,004h		;2962	06 04 	. . 
	call sub_22f1h		;2964	cd f1 22 	. . " 
	ret			;2967	c9 	. 
	call sub_27edh		;2968	cd ed 27 	. . ' 
	ret nc			;296b	d0 	. 
	ld a,001h		;296c	3e 01 	> . 
	call 0648dh		;296e	cd 8d 64 	. . d 
	ld b,004h		;2971	06 04 	. . 
	call sub_24a9h		;2973	cd a9 24 	. . $ 
	ret			;2976	c9 	. 
	ld a,01bh		;2977	3e 1b 	> . 
	rst 30h			;2979	f7 	. 
	ld a,003h		;297a	3e 03 	> . 
	call sub_092bh		;297c	cd 2b 09 	. + . 
	jp c,l06dah		;297f	da da 06 	. . . 
	ld e,098h		;2982	1e 98 	. . 
	ld bc,03711h		;2984	01 11 37 	. . 7 
	call sub_225fh		;2987	cd 5f 22 	. _ " 
	ld a,088h		;298a	3e 88 	> . 
	call sub_2257h		;298c	cd 57 22 	. W " 
	ld a,01ch		;298f	3e 1c 	> . 
	ld b,004h		;2991	06 04 	. . 
	call sub_22f1h		;2993	cd f1 22 	. . " 
	ret			;2996	c9 	. 
	call sub_27edh		;2997	cd ed 27 	. . ' 
	ret nc			;299a	d0 	. 
	ld a,002h		;299b	3e 02 	> . 
	call 0648dh		;299d	cd 8d 64 	. . d 
	ld b,004h		;29a0	06 04 	. . 
	call sub_24a9h		;29a2	cd a9 24 	. . $ 
	ret			;29a5	c9 	. 
	ld a,01eh		;29a6	3e 1e 	> . 
	rst 30h			;29a8	f7 	. 
	ld a,003h		;29a9	3e 03 	> . 
	call sub_092bh		;29ab	cd 2b 09 	. + . 
	jp c,l06dah		;29ae	da da 06 	. . . 
	ld e,098h		;29b1	1e 98 	. . 
	ld bc,l3715h		;29b3	01 15 37 	. . 7 
	call sub_225fh		;29b6	cd 5f 22 	. _ " 
	ld a,088h		;29b9	3e 88 	> . 
	call sub_2257h		;29bb	cd 57 22 	. W " 
	ld a,024h		;29be	3e 24 	> $ 
	ld b,004h		;29c0	06 04 	. . 
	call sub_22f1h		;29c2	cd f1 22 	. . " 
	ret			;29c5	c9 	. 
	call sub_27edh		;29c6	cd ed 27 	. . ' 
	ret nc			;29c9	d0 	. 
	ld a,001h		;29ca	3e 01 	> . 
	call 0648dh		;29cc	cd 8d 64 	. . d 
	ld b,004h		;29cf	06 04 	. . 
	call sub_24a9h		;29d1	cd a9 24 	. . $ 
	ret			;29d4	c9 	. 
l29d5h:
	ld a,003h		;29d5	3e 03 	> . 
	call sub_092bh		;29d7	cd 2b 09 	. + . 
	jp c,l06dah		;29da	da da 06 	. . . 
	ld a,(0c127h)		;29dd	3a 27 c1 	: ' . 
	bit 2,a		;29e0	cb 57 	. W 
	jr nz,l29f4h		;29e2	20 10 	  . 
	ld hl,0c199h		;29e4	21 99 c1 	! . . 
	ld (hl),016h		;29e7	36 16 	6 . 
	jp l2a41h		;29e9	c3 41 2a 	. A * 
l29ech:
	ld a,003h		;29ec	3e 03 	> . 
	call sub_092bh		;29ee	cd 2b 09 	. + . 
	jp c,l06dah		;29f1	da da 06 	. . . 
l29f4h:
	ld hl,0c199h		;29f4	21 99 c1 	! . . 
	ld (hl),017h		;29f7	36 17 	6 . 
	jp l2a41h		;29f9	c3 41 2a 	. A * 
l29fch:
	ld a,003h		;29fc	3e 03 	> . 
	call sub_092bh		;29fe	cd 2b 09 	. + . 
	jp c,l06dah		;2a01	da da 06 	. . . 
	ld hl,0c199h		;2a04	21 99 c1 	! . . 
	ld (hl),018h		;2a07	36 18 	6 . 
	jr l2a41h		;2a09	18 36 	. 6 
l2a0bh:
	ld a,003h		;2a0b	3e 03 	> . 
	call sub_092bh		;2a0d	cd 2b 09 	. + . 
	jp c,l06dah		;2a10	da da 06 	. . . 
	ld hl,0c199h		;2a13	21 99 c1 	! . . 
	ld (hl),099h		;2a16	36 99 	6 . 
	jr l2a41h		;2a18	18 27 	. ' 
l2a1ah:
	ld a,003h		;2a1a	3e 03 	> . 
	call sub_092bh		;2a1c	cd 2b 09 	. + . 
	jp c,l06dah		;2a1f	da da 06 	. . . 
	ld hl,0c199h		;2a22	21 99 c1 	! . . 
	ld (hl),09ah		;2a25	36 9a 	6 . 
	ld e,0d0h		;2a27	1e d0 	. . 
	ld bc,036f5h		;2a29	01 f5 36 	. . 6 
	call sub_225fh		;2a2c	cd 5f 22 	. _ " 
	ld hl,0c198h		;2a2f	21 98 c1 	! . . 
	set 3,(hl)		;2a32	cb de 	. . 
	ld a,019h		;2a34	3e 19 	> . 
	jp l2a4bh		;2a36	c3 4b 2a 	. K * 
l2a39h:
	ld a,003h		;2a39	3e 03 	> . 
	call sub_092bh		;2a3b	cd 2b 09 	. + . 
	jp c,l06dah		;2a3e	da da 06 	. . . 
l2a41h:
	ld e,0d0h		;2a41	1e d0 	. . 
	ld bc,036f5h		;2a43	01 f5 36 	. . 6 
	call sub_225fh		;2a46	cd 5f 22 	. _ " 
	ld a,018h		;2a49	3e 18 	> . 
l2a4bh:
	rst 30h			;2a4b	f7 	. 
	ld a,090h		;2a4c	3e 90 	> . 
	call sub_2257h		;2a4e	cd 57 22 	. W " 
	ld a,030h		;2a51	3e 30 	> 0 
	ld b,004h		;2a53	06 04 	. . 
	call sub_22f1h		;2a55	cd f1 22 	. . " 
	ld ix,(0c196h)		;2a58	dd 2a 96 c1 	. * . . 
	ld de,l0000h+1		;2a5c	11 01 00 	. . . 
	call sub_229fh		;2a5f	cd 9f 22 	. . " 
	ret			;2a62	c9 	. 
	ld a,(0c198h)		;2a63	3a 98 c1 	: . . 
	and 020h		;2a66	e6 20 	.   
	jr z,l2a76h		;2a68	28 0c 	( . 
	ld a,(0c199h)		;2a6a	3a 99 c1 	: . . 
	and 080h		;2a6d	e6 80 	. . 
	jr z,l2a76h		;2a6f	28 05 	( . 
	ld hl,0c16dh		;2a71	21 6d c1 	! m . 
	set 6,(hl)		;2a74	cb f6 	. . 
l2a76h:
	call sub_233bh		;2a76	cd 3b 23 	. ; # 
	cp 030h		;2a79	fe 30 	. 0 
	jp c,l2bc5h		;2a7b	da c5 2b 	. . + 
	call sub_2b74h		;2a7e	cd 74 2b 	. t + 
	ld hl,0c198h		;2a81	21 98 c1 	! . . 
	bit 7,(hl)		;2a84	cb 7e 	. ~ 
	jp nz,l2aa3h		;2a86	c2 a3 2a 	. . * 
	ld a,(0c198h)		;2a89	3a 98 c1 	: . . 
	bit 6,a		;2a8c	cb 77 	. w 
	ld a,090h		;2a8e	3e 90 	> . 
	jp nz,l2b5fh		;2a90	c2 5f 2b 	. _ + 
	ld a,090h		;2a93	3e 90 	> . 
	call sub_2257h		;2a95	cd 57 22 	. W " 
	ld a,030h		;2a98	3e 30 	> 0 
	ld b,004h		;2a9a	06 04 	. . 
	call sub_22f1h		;2a9c	cd f1 22 	. . " 
	ld b,004h		;2a9f	06 04 	. . 
	rst 28h			;2aa1	ef 	. 
	ret			;2aa2	c9 	. 
l2aa3h:
	ld hl,(0c19bh)		;2aa3	2a 9b c1 	* . . 
	ex de,hl			;2aa6	eb 	. 
	ld hl,(0c196h)		;2aa7	2a 96 c1 	* . . 
	rst 8			;2aaa	cf 	. 
	ld de,0ffe8h		;2aab	11 e8 ff 	. . . 
	call sub_227ah		;2aae	cd 7a 22 	. z " 
	ld hl,0c19eh		;2ab1	21 9e c1 	! . . 
	ld a,004h		;2ab4	3e 04 	> . 
	cp (hl)			;2ab6	be 	. 
	jr z,l2abch		;2ab7	28 03 	( . 
	inc (hl)			;2ab9	34 	4 
	jr l2ae2h		;2aba	18 26 	. & 
l2abch:
	xor a			;2abc	af 	. 
	ld hl,0c19bh		;2abd	21 9b c1 	! . . 
	cp (hl)			;2ac0	be 	. 
	jr nz,l2acah		;2ac1	20 07 	  . 
	inc hl			;2ac3	23 	# 
	cp (hl)			;2ac4	be 	. 
	jr nz,l2acah		;2ac5	20 03 	  . 
	xor a			;2ac7	af 	. 
	jr l2acch		;2ac8	18 02 	. . 
l2acah:
	ld a,07fh		;2aca	3e 7f 	>  
l2acch:
	ld hl,l0804h		;2acc	21 04 08 	! . . 
	call sub_392fh		;2acf	cd 2f 39 	. / 9 
	ld a,(ix+014h)		;2ad2	dd 7e 14 	. ~ . 
	and 00ch		;2ad5	e6 0c 	. . 
	jr z,l2ae2h		;2ad7	28 09 	( . 
	ld hl,l0000h		;2ad9	21 00 00 	! . . 
	ld (0c19bh),hl		;2adc	22 9b c1 	" . . 
	jp l2b4bh		;2adf	c3 4b 2b 	. K + 
l2ae2h:
	ld a,(ix+014h)		;2ae2	dd 7e 14 	. ~ . 
	bit 1,a		;2ae5	cb 4f 	. O 
	jr z,l2b4bh		;2ae7	28 62 	( b 
	res 1,a		;2ae9	cb 8f 	. . 
	ld (ix+014h),a		;2aeb	dd 77 14 	. w . 
l2aeeh:
	ld h,(ix+004h)		;2aee	dd 66 04 	. f . 
	ld l,(ix+007h)		;2af1	dd 6e 07 	. n . 
	ld b,004h		;2af4	06 04 	. . 
	push hl			;2af6	e5 	. 
	call sub_24a9h		;2af7	cd a9 24 	. . $ 
	pop hl			;2afa	e1 	. 
	ld a,(0c199h)		;2afb	3a 99 c1 	: . . 
	bit 7,a		;2afe	cb 7f 	.  
	jr nz,l2b45h		;2b00	20 43 	  C 
	ld a,(0d369h)		;2b02	3a 69 d3 	: i . 
	bit 0,a		;2b05	cb 47 	. G 
	jr nz,l2b13h		;2b07	20 0a 	  . 
	ld a,(0c127h)		;2b09	3a 27 c1 	: ' . 
	ld c,a			;2b0c	4f 	O 
	and 005h		;2b0d	e6 05 	. . 
	ld a,015h		;2b0f	3e 15 	> . 
	jr z,l2b36h		;2b11	28 23 	( # 
l2b13h:
	ld a,(0c199h)		;2b13	3a 99 c1 	: . . 
	and a			;2b16	a7 	. 
	jr z,l2b25h		;2b17	28 0c 	( . 
	cp 017h		;2b19	fe 17 	. . 
	jr nz,l2b36h		;2b1b	20 19 	  . 
	ld c,a			;2b1d	4f 	O 
	ld a,(0c127h)		;2b1e	3a 27 c1 	: ' . 
	rra			;2b21	1f 	. 
	ld a,c			;2b22	79 	y 
	jr c,l2b36h		;2b23	38 11 	8 . 
l2b25h:
	ld a,(0c127h)		;2b25	3a 27 c1 	: ' . 
	ld c,a			;2b28	4f 	O 
	bit 0,c		;2b29	cb 41 	. A 
	ld a,015h		;2b2b	3e 15 	> . 
	jr z,l2b36h		;2b2d	28 07 	( . 
	bit 2,c		;2b2f	cb 51 	. Q 
	ld a,016h		;2b31	3e 16 	> . 
	jr z,l2b36h		;2b33	28 01 	( . 
	inc a			;2b35	3c 	< 
l2b36h:
	cp 019h		;2b36	fe 19 	. . 
	jr nz,l2b41h		;2b38	20 07 	  . 
	ld a,067h		;2b3a	3e 67 	> g 
	call sub_0030h		;2b3c	cd 30 00 	. 0 . 
	ld a,019h		;2b3f	3e 19 	> . 
l2b41h:
	call sub_06e2h		;2b41	cd e2 06 	. . . 
	ret			;2b44	c9 	. 
l2b45h:
	res 7,a		;2b45	cb bf 	. . 
	jp l2b36h		;2b47	c3 36 2b 	. 6 + 
	ret			;2b4a	c9 	. 
l2b4bh:
	ld hl,(0c196h)		;2b4b	2a 96 c1 	* . . 
	ld de,l0010h		;2b4e	11 10 00 	. . . 
	add hl,de			;2b51	19 	. 
	ld e,(hl)			;2b52	5e 	^ 
	inc hl			;2b53	23 	# 
	ld d,(hl)			;2b54	56 	V 
	ld hl,(0c196h)		;2b55	2a 96 c1 	* . . 
	rst 18h			;2b58	df 	. 
	cp 00fh		;2b59	fe 0f 	. . 
	jr c,l2bc5h		;2b5b	38 68 	8 h 
	ld a,0c0h		;2b5d	3e c0 	> . 
l2b5fh:
	ld hl,0c198h		;2b5f	21 98 c1 	! . . 
	bit 5,(hl)		;2b62	cb 6e 	. n 
	jr nz,l2aeeh		;2b64	20 88 	  . 
	call sub_2257h		;2b66	cd 57 22 	. W " 
	ld a,030h		;2b69	3e 30 	> 0 
	ld b,004h		;2b6b	06 04 	. . 
	call sub_22f1h		;2b6d	cd f1 22 	. . " 
	ld b,004h		;2b70	06 04 	. . 
	rst 28h			;2b72	ef 	. 
	ret			;2b73	c9 	. 
sub_2b74h:
	ld hl,(0c196h)		;2b74	2a 96 c1 	* . . 
	inc l			;2b77	2c 	, 
	inc l			;2b78	2c 	, 
	bit 5,(hl)		;2b79	cb 6e 	. n 
	ret z			;2b7b	c8 	. 
	res 5,(hl)		;2b7c	cb ae 	. . 
	bit 0,(hl)		;2b7e	cb 46 	. F 
	jr z,l2ba2h		;2b80	28 20 	(   
	res 0,(hl)		;2b82	cb 86 	. . 
	res 1,(hl)		;2b84	cb 8e 	. . 
	ld a,(0c198h)		;2b86	3a 98 c1 	: . . 
	bit 3,a		;2b89	cb 5f 	. _ 
	jr nz,l2b92h		;2b8b	20 05 	  . 
	ld a,095h		;2b8d	3e 95 	> . 
	rst 30h			;2b8f	f7 	. 
	jr l2b95h		;2b90	18 03 	. . 
l2b92h:
	ld a,096h		;2b92	3e 96 	> . 
	rst 30h			;2b94	f7 	. 
l2b95h:
	ld hl,0c198h		;2b95	21 98 c1 	! . . 
	bit 6,(hl)		;2b98	cb 76 	. v 
	jr nz,l2b9fh		;2b9a	20 03 	  . 
	set 6,(hl)		;2b9c	cb f6 	. . 
	ret			;2b9e	c9 	. 
l2b9fh:
	set 5,(hl)		;2b9f	cb ee 	. . 
	ret			;2ba1	c9 	. 
l2ba2h:
	ld hl,0c198h		;2ba2	21 98 c1 	! . . 
	bit 7,(hl)		;2ba5	cb 7e 	. ~ 
	ret nz			;2ba7	c0 	. 
	set 7,(hl)		;2ba8	cb fe 	. . 
	ld hl,(0c232h)		;2baa	2a 32 c2 	* 2 . 
	ld (0c19bh),hl		;2bad	22 9b c1 	" . . 
	ld de,l025fh+1		;2bb0	11 60 02 	. ` . 
	call sub_2298h		;2bb3	cd 98 22 	. . " 
	ld a,(0c198h)		;2bb6	3a 98 c1 	: . . 
	bit 3,a		;2bb9	cb 5f 	. _ 
	jr nz,l2bc1h		;2bbb	20 04 	  . 
	ld a,095h		;2bbd	3e 95 	> . 
	rst 30h			;2bbf	f7 	. 
	ret			;2bc0	c9 	. 
l2bc1h:
	ld a,096h		;2bc1	3e 96 	> . 
	rst 30h			;2bc3	f7 	. 
	ret			;2bc4	c9 	. 
l2bc5h:
	ld b,004h		;2bc5	06 04 	. . 
	call sub_24a9h		;2bc7	cd a9 24 	. . $ 
	ret			;2bca	c9 	. 
	ld a,(0c127h)		;2bcb	3a 27 c1 	: ' . 
	rra			;2bce	1f 	. 
	jp c,l06dah		;2bcf	da da 06 	. . . 
	ld a,003h		;2bd2	3e 03 	> . 
	call sub_092bh		;2bd4	cd 2b 09 	. + . 
	jp c,l06dah		;2bd7	da da 06 	. . . 
	ld e,0d0h		;2bda	1e d0 	. . 
	jp l2beeh		;2bdc	c3 ee 2b 	. . + 
	ld a,(0c127h)		;2bdf	3a 27 c1 	: ' . 
	rra			;2be2	1f 	. 
	jp c,l06dah		;2be3	da da 06 	. . . 
	ld a,003h		;2be6	3e 03 	> . 
	call sub_092bh		;2be8	cd 2b 09 	. + . 
	jp c,l06dah		;2beb	da da 06 	. . . 
l2beeh:
	ld bc,l3719h		;2bee	01 19 37 	. . 7 
	call sub_225fh		;2bf1	cd 5f 22 	. _ " 
	ld a,088h		;2bf4	3e 88 	> . 
	call sub_2257h		;2bf6	cd 57 22 	. W " 
	ld a,00ch		;2bf9	3e 0c 	> . 
	ld b,004h		;2bfb	06 04 	. . 
	call sub_22f1h		;2bfd	cd f1 22 	. . " 
	ld hl,0d369h		;2c00	21 69 d3 	! i . 
	set 0,(hl)		;2c03	cb c6 	. . 
	ret			;2c05	c9 	. 
	call sub_233bh		;2c06	cd 3b 23 	. ; # 
	cp 030h		;2c09	fe 30 	. 0 
	jr c,l2c29h		;2c0b	38 1c 	8 . 
	ld b,004h		;2c0d	06 04 	. . 
	rst 28h			;2c0f	ef 	. 
	bit 5,(ix+002h)		;2c10	dd cb 02 6e 	. . . n 
	ret z			;2c14	c8 	. 
	ld hl,0c127h		;2c15	21 27 c1 	! ' . 
	set 0,(hl)		;2c18	cb c6 	. . 
	ld hl,0d369h		;2c1a	21 69 d3 	! i . 
	res 0,(hl)		;2c1d	cb 86 	. . 
	ld a,08fh		;2c1f	3e 8f 	> . 
	call sub_0a99h		;2c21	cd 99 0a 	. . . 
	ld a,004h		;2c24	3e 04 	> . 
	call 0615eh		;2c26	cd 5e 61 	. ^ a 
l2c29h:
	ld b,004h		;2c29	06 04 	. . 
	call sub_24a9h		;2c2b	cd a9 24 	. . $ 
	ret			;2c2e	c9 	. 
	ld a,002h		;2c2f	3e 02 	> . 
	call sub_092bh		;2c31	cd 2b 09 	. + . 
	jp c,l06dah		;2c34	da da 06 	. . . 
	ld bc,l3719h		;2c37	01 19 37 	. . 7 
	call sub_225fh		;2c3a	cd 5f 22 	. _ " 
	ld a,08eh		;2c3d	3e 8e 	> . 
	rst 30h			;2c3f	f7 	. 
	ld a,088h		;2c40	3e 88 	> . 
	call sub_2257h		;2c42	cd 57 22 	. W " 
	ld a,030h		;2c45	3e 30 	> 0 
	ld b,003h		;2c47	06 03 	. . 
	call sub_22f1h		;2c49	cd f1 22 	. . " 
	ret			;2c4c	c9 	. 
	ld hl,0c19ch		;2c4d	21 9c c1 	! . . 
	ld a,008h		;2c50	3e 08 	> . 
	cp (hl)			;2c52	be 	. 
	jr z,l2c5ah		;2c53	28 05 	( . 
	inc (hl)			;2c55	34 	4 
	call sub_233bh		;2c56	cd 3b 23 	. ; # 
	ret			;2c59	c9 	. 
l2c5ah:
	call sub_233bh		;2c5a	cd 3b 23 	. ; # 
	cp 030h		;2c5d	fe 30 	. 0 
	jr c,l2c78h		;2c5f	38 17 	8 . 
	ld b,003h		;2c61	06 03 	. . 
	rst 28h			;2c63	ef 	. 
	bit 5,(ix+002h)		;2c64	dd cb 02 6e 	. . . n 
	ret z			;2c68	c8 	. 
	ld hl,0c127h		;2c69	21 27 c1 	! ' . 
	set 2,(hl)		;2c6c	cb d6 	. . 
	ld a,08fh		;2c6e	3e 8f 	> . 
	call sub_0a99h		;2c70	cd 99 0a 	. . . 
	ld a,004h		;2c73	3e 04 	> . 
	call 0615eh		;2c75	cd 5e 61 	. ^ a 
l2c78h:
	ld b,003h		;2c78	06 03 	. . 
	call sub_24a9h		;2c7a	cd a9 24 	. . $ 
	ret			;2c7d	c9 	. 
	ld a,003h		;2c7e	3e 03 	> . 
	call sub_092bh		;2c80	cd 2b 09 	. + . 
	jp c,l06dah		;2c83	da da 06 	. . . 
	ld bc,l3719h		;2c86	01 19 37 	. . 7 
	call sub_225fh		;2c89	cd 5f 22 	. _ " 
	ld a,094h		;2c8c	3e 94 	> . 
	rst 30h			;2c8e	f7 	. 
	ld a,088h		;2c8f	3e 88 	> . 
	call sub_2257h		;2c91	cd 57 22 	. W " 
	ld a,030h		;2c94	3e 30 	> 0 
	ld b,004h		;2c96	06 04 	. . 
	call sub_22f1h		;2c98	cd f1 22 	. . " 
	ret			;2c9b	c9 	. 
	call sub_233bh		;2c9c	cd 3b 23 	. ; # 
	cp 008h		;2c9f	fe 08 	. . 
	jr c,l2cbah		;2ca1	38 17 	8 . 
	ld b,004h		;2ca3	06 04 	. . 
	rst 28h			;2ca5	ef 	. 
	bit 5,(ix+002h)		;2ca6	dd cb 02 6e 	. . . n 
	ret z			;2caa	c8 	. 
	ld hl,0c127h		;2cab	21 27 c1 	! ' . 
	set 3,(hl)		;2cae	cb de 	. . 
	ld a,08fh		;2cb0	3e 8f 	> . 
	call sub_0a99h		;2cb2	cd 99 0a 	. . . 
	ld a,003h		;2cb5	3e 03 	> . 
	call 0615eh		;2cb7	cd 5e 61 	. ^ a 
l2cbah:
	ld b,004h		;2cba	06 04 	. . 
	call sub_24a9h		;2cbc	cd a9 24 	. . $ 
	ret			;2cbf	c9 	. 
	ld a,003h		;2cc0	3e 03 	> . 
	call sub_092bh		;2cc2	cd 2b 09 	. + . 
	jp c,l06dah		;2cc5	da da 06 	. . . 
	ld bc,l3719h		;2cc8	01 19 37 	. . 7 
	call sub_225fh		;2ccb	cd 5f 22 	. _ " 
	ld a,08fh		;2cce	3e 8f 	> . 
	rst 30h			;2cd0	f7 	. 
	ld b,004h		;2cd1	06 04 	. . 
	ld a,088h		;2cd3	3e 88 	> . 
	call sub_2257h		;2cd5	cd 57 22 	. W " 
	ld a,030h		;2cd8	3e 30 	> 0 
	ld b,004h		;2cda	06 04 	. . 
	call sub_22f1h		;2cdc	cd f1 22 	. . " 
	ret			;2cdf	c9 	. 
	call sub_233bh		;2ce0	cd 3b 23 	. ; # 
	cp 030h		;2ce3	fe 30 	. 0 
	jr c,l2cfeh		;2ce5	38 17 	8 . 
	ld b,004h		;2ce7	06 04 	. . 
	rst 28h			;2ce9	ef 	. 
	bit 5,(ix+002h)		;2cea	dd cb 02 6e 	. . . n 
	ret z			;2cee	c8 	. 
	ld a,010h		;2cef	3e 10 	> . 
	call 0648dh		;2cf1	cd 8d 64 	. . d 
	ld a,09dh		;2cf4	3e 9d 	> . 
	call sub_0a99h		;2cf6	cd 99 0a 	. . . 
	ld a,005h		;2cf9	3e 05 	> . 
	call 0615eh		;2cfb	cd 5e 61 	. ^ a 
l2cfeh:
	ld b,004h		;2cfe	06 04 	. . 
	call sub_24a9h		;2d00	cd a9 24 	. . $ 
	ret			;2d03	c9 	. 
	ld a,003h		;2d04	3e 03 	> . 
	call sub_092bh		;2d06	cd 2b 09 	. + . 
	jp c,l06dah		;2d09	da da 06 	. . . 
	ld e,0d0h		;2d0c	1e d0 	. . 
	ld bc,l3704h+1		;2d0e	01 05 37 	. . 7 
	call sub_225fh		;2d11	cd 5f 22 	. _ " 
	ld a,01fh		;2d14	3e 1f 	> . 
	ld b,001h		;2d16	06 01 	. . 
	rst 30h			;2d18	f7 	. 
	ld a,048h		;2d19	3e 48 	> H 
	ld b,004h		;2d1b	06 04 	. . 
	call sub_22f1h		;2d1d	cd f1 22 	. . " 
	ret			;2d20	c9 	. 
	ld ix,(0c196h)		;2d21	dd 2a 96 c1 	. * . . 
	bit 2,(ix+002h)		;2d25	dd cb 02 56 	. . . V 
	jr nz,l2d3ch		;2d29	20 11 	  . 
	call sub_233bh		;2d2b	cd 3b 23 	. ; # 
	cp 040h		;2d2e	fe 40 	. @ 
	jr c,l2d36h		;2d30	38 04 	8 . 
	ld b,004h		;2d32	06 04 	. . 
	rst 28h			;2d34	ef 	. 
	ret			;2d35	c9 	. 
l2d36h:
	ld b,004h		;2d36	06 04 	. . 
	call sub_24a9h		;2d38	cd a9 24 	. . $ 
	ret			;2d3b	c9 	. 
l2d3ch:
	ld b,004h		;2d3c	06 04 	. . 
	call sub_2df2h		;2d3e	cd f2 2d 	. . - 
	ret			;2d41	c9 	. 
	ld a,003h		;2d42	3e 03 	> . 
	call sub_092bh		;2d44	cd 2b 09 	. + . 
	jp c,l06dah		;2d47	da da 06 	. . . 
	ld hl,l007fh+1		;2d4a	21 80 00 	! . . 
	ld (0c19bh),hl		;2d4d	22 9b c1 	" . . 
	ld bc,l36e9h		;2d50	01 e9 36 	. . 6 
	call sub_225fh		;2d53	cd 5f 22 	. _ " 
	ld a,08dh		;2d56	3e 8d 	> . 
	rst 30h			;2d58	f7 	. 
	ld a,07fh		;2d59	3e 7f 	>  
	ld b,004h		;2d5b	06 04 	. . 
	call sub_22f1h		;2d5d	cd f1 22 	. . " 
	ret			;2d60	c9 	. 
	call sub_233bh		;2d61	cd 3b 23 	. ; # 
	cp 038h		;2d64	fe 38 	. 8 
	jp c,l2de6h		;2d66	da e6 2d 	. . - 
	bit 2,(ix+002h)		;2d69	dd cb 02 56 	. . . V 
	jp nz,l2dech		;2d6d	c2 ec 2d 	. . - 
	call sub_2301h		;2d70	cd 01 23 	. . # 
	ld a,(0c198h)		;2d73	3a 98 c1 	: . . 
	bit 7,a		;2d76	cb 7f 	.  
	jr nz,l2dd4h		;2d78	20 5a 	  Z 
	bit 1,a		;2d7a	cb 4f 	. O 
	jr nz,l2d8eh		;2d7c	20 10 	  . 
	ld b,038h		;2d7e	06 38 	. 8 
	call sub_22d9h		;2d80	cd d9 22 	. . " 
	jr nc,l2d8ah		;2d83	30 05 	0 . 
	ld hl,0c198h		;2d85	21 98 c1 	! . . 
	set 1,(hl)		;2d88	cb ce 	. . 
l2d8ah:
	ld b,004h		;2d8a	06 04 	. . 
	rst 28h			;2d8c	ef 	. 
	ret			;2d8d	c9 	. 
l2d8eh:
	ld de,(0c19bh)		;2d8e	ed 5b 9b c1 	. [ . . 
	ld hl,(0c196h)		;2d92	2a 96 c1 	* . . 
	rst 18h			;2d95	df 	. 
	cp 030h		;2d96	fe 30 	. 0 
	jr nc,l2da3h		;2d98	30 09 	0 . 
	ld hl,l007fh+1		;2d9a	21 80 00 	! . . 
	ld (0c19bh),hl		;2d9d	22 9b c1 	" . . 
	jp l2da9h		;2da0	c3 a9 2d 	. . - 
l2da3h:
	ld hl,0ff80h		;2da3	21 80 ff 	! . . 
	ld (0c19bh),hl		;2da6	22 9b c1 	" . . 
l2da9h:
	ld de,0ff20h		;2da9	11 20 ff 	.   . 
	ld hl,(0c196h)		;2dac	2a 96 c1 	* . . 
	rst 8			;2daf	cf 	. 
	ld hl,0c199h		;2db0	21 99 c1 	! . . 
	ld a,008h		;2db3	3e 08 	> . 
	inc (hl)			;2db5	34 	4 
	cp (hl)			;2db6	be 	. 
	jr c,l2dc3h		;2db7	38 0a 	8 . 
	ld a,083h		;2db9	3e 83 	> . 
	ld b,004h		;2dbb	06 04 	. . 
	call sub_22f1h		;2dbd	cd f1 22 	. . " 
	jp l2d8ah		;2dc0	c3 8a 2d 	. . - 
l2dc3h:
	add a,a			;2dc3	87 	. 
	cp (hl)			;2dc4	be 	. 
	jr nc,l2dc9h		;2dc5	30 02 	0 . 
	xor a			;2dc7	af 	. 
	ld (hl),a			;2dc8	77 	w 
l2dc9h:
	ld a,087h		;2dc9	3e 87 	> . 
	ld b,004h		;2dcb	06 04 	. . 
	call sub_22f1h		;2dcd	cd f1 22 	. . " 
	ld b,004h		;2dd0	06 04 	. . 
	rst 28h			;2dd2	ef 	. 
	ret			;2dd3	c9 	. 
l2dd4h:
	call sub_22a6h		;2dd4	cd a6 22 	. . " 
	cp 010h		;2dd7	fe 10 	. . 
	jr c,l2de6h		;2dd9	38 0b 	8 . 
	ld a,08bh		;2ddb	3e 8b 	> . 
	ld b,004h		;2ddd	06 04 	. . 
	call sub_22f1h		;2ddf	cd f1 22 	. . " 
	ld b,004h		;2de2	06 04 	. . 
	rst 28h			;2de4	ef 	. 
	ret			;2de5	c9 	. 
l2de6h:
	ld b,004h		;2de6	06 04 	. . 
	call sub_24a9h		;2de8	cd a9 24 	. . $ 
	ret			;2deb	c9 	. 
l2dech:
	ld b,004h		;2dec	06 04 	. . 
	call sub_2df2h		;2dee	cd f2 2d 	. . - 
	ret			;2df1	c9 	. 
sub_2df2h:
	push bc			;2df2	c5 	. 
	ld h,(ix+004h)		;2df3	dd 66 04 	. f . 
	ld l,(ix+007h)		;2df6	dd 6e 07 	. n . 
	ld c,(ix+009h)		;2df9	dd 4e 09 	. N . 
	dec c			;2dfc	0d 	. 
	ld a,c			;2dfd	79 	y 
	add a,028h		;2dfe	c6 28 	. ( 
	call sub_06e2h		;2e00	cd e2 06 	. . . 
	xor a			;2e03	af 	. 
	ld a,c			;2e04	79 	y 
	call 0615eh		;2e05	cd 5e 61 	. ^ a 
	pop bc			;2e08	c1 	. 
	call sub_24a9h		;2e09	cd a9 24 	. . $ 
	ret			;2e0c	c9 	. 
	ld a,003h		;2e0d	3e 03 	> . 
	call sub_092bh		;2e0f	cd 2b 09 	. + . 
	jp c,l06dah		;2e12	da da 06 	. . . 
	ld bc,l287fh		;2e15	01 7f 28 	.  ( 
	call sub_225fh		;2e18	cd 5f 22 	. _ " 
	ld a,045h		;2e1b	3e 45 	> E 
	rst 30h			;2e1d	f7 	. 
	ld a,0c0h		;2e1e	3e c0 	> . 
	call sub_2257h		;2e20	cd 57 22 	. W " 
	ld a,04ch		;2e23	3e 4c 	> L 
	ld b,004h		;2e25	06 04 	. . 
	call sub_22f1h		;2e27	cd f1 22 	. . " 
	ld a,095h		;2e2a	3e 95 	> . 
	call sub_0a99h		;2e2c	cd 99 0a 	. . . 
	ret			;2e2f	c9 	. 
	call sub_2f13h		;2e30	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2e33	3a 9a c1 	: . . 
	and 010h		;2e36	e6 10 	. . 
	ret z			;2e38	c8 	. 
	ld h,(ix+004h)		;2e39	dd 66 04 	. f . 
	ld l,(ix+007h)		;2e3c	dd 6e 07 	. n . 
	ld a,05dh		;2e3f	3e 5d 	> ] 
	call sub_06e2h		;2e41	cd e2 06 	. . . 
	ld b,004h		;2e44	06 04 	. . 
	call sub_24a9h		;2e46	cd a9 24 	. . $ 
	ret			;2e49	c9 	. 
	call sub_2f13h		;2e4a	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2e4d	3a 9a c1 	: . . 
	and 010h		;2e50	e6 10 	. . 
	ret z			;2e52	c8 	. 
	ld h,(ix+004h)		;2e53	dd 66 04 	. f . 
	ld l,(ix+007h)		;2e56	dd 6e 07 	. n . 
	ld a,05ch		;2e59	3e 5c 	> \ 
	call sub_06e2h		;2e5b	cd e2 06 	. . . 
	ld b,004h		;2e5e	06 04 	. . 
	call sub_24a9h		;2e60	cd a9 24 	. . $ 
	ret			;2e63	c9 	. 
	call sub_2f13h		;2e64	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2e67	3a 9a c1 	: . . 
	and 010h		;2e6a	e6 10 	. . 
	ret z			;2e6c	c8 	. 
	ld h,(ix+004h)		;2e6d	dd 66 04 	. f . 
	ld l,(ix+007h)		;2e70	dd 6e 07 	. n . 
	ld a,008h		;2e73	3e 08 	> . 
	call sub_06e2h		;2e75	cd e2 06 	. . . 
	ld b,004h		;2e78	06 04 	. . 
	call sub_24a9h		;2e7a	cd a9 24 	. . $ 
	ret			;2e7d	c9 	. 
	call sub_2f13h		;2e7e	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2e81	3a 9a c1 	: . . 
	and 010h		;2e84	e6 10 	. . 
	ret z			;2e86	c8 	. 
	ld h,(ix+004h)		;2e87	dd 66 04 	. f . 
	ld l,(ix+007h)		;2e8a	dd 6e 07 	. n . 
	ld a,009h		;2e8d	3e 09 	> . 
	call sub_06e2h		;2e8f	cd e2 06 	. . . 
	ld b,004h		;2e92	06 04 	. . 
	call sub_24a9h		;2e94	cd a9 24 	. . $ 
	ret			;2e97	c9 	. 
	call sub_2f13h		;2e98	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2e9b	3a 9a c1 	: . . 
	and 010h		;2e9e	e6 10 	. . 
	ret z			;2ea0	c8 	. 
	ld h,(ix+004h)		;2ea1	dd 66 04 	. f . 
	ld l,(ix+007h)		;2ea4	dd 6e 07 	. n . 
	ld a,00ah		;2ea7	3e 0a 	> . 
	call sub_06e2h		;2ea9	cd e2 06 	. . . 
	ld b,004h		;2eac	06 04 	. . 
	call sub_24a9h		;2eae	cd a9 24 	. . $ 
	ret			;2eb1	c9 	. 
	call sub_2f13h		;2eb2	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2eb5	3a 9a c1 	: . . 
	and 010h		;2eb8	e6 10 	. . 
	ret z			;2eba	c8 	. 
	ld h,(ix+004h)		;2ebb	dd 66 04 	. f . 
	ld l,(ix+007h)		;2ebe	dd 6e 07 	. n . 
	ld a,00bh		;2ec1	3e 0b 	> . 
	call sub_06e2h		;2ec3	cd e2 06 	. . . 
	ld b,004h		;2ec6	06 04 	. . 
	call sub_24a9h		;2ec8	cd a9 24 	. . $ 
	ret			;2ecb	c9 	. 
	call sub_2f13h		;2ecc	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2ecf	3a 9a c1 	: . . 
	and 010h		;2ed2	e6 10 	. . 
	ret z			;2ed4	c8 	. 
	ld h,(ix+004h)		;2ed5	dd 66 04 	. f . 
	ld l,(ix+007h)		;2ed8	dd 6e 07 	. n . 
	ld de,01800h		;2edb	11 00 18 	. . . 
	add hl,de			;2ede	19 	. 
	ld a,058h		;2edf	3e 58 	> X 
	call sub_06e2h		;2ee1	cd e2 06 	. . . 
	ld b,004h		;2ee4	06 04 	. . 
	call sub_24a9h		;2ee6	cd a9 24 	. . $ 
	ret			;2ee9	c9 	. 
	call sub_2f13h		;2eea	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2eed	3a 9a c1 	: . . 
	and 010h		;2ef0	e6 10 	. . 
	ret z			;2ef2	c8 	. 
	ld h,(ix+004h)		;2ef3	dd 66 04 	. f . 
	ld l,(ix+007h)		;2ef6	dd 6e 07 	. n . 
	ld a,03fh		;2ef9	3e 3f 	> ? 
	call sub_06e2h		;2efb	cd e2 06 	. . . 
	ld b,004h		;2efe	06 04 	. . 
	call sub_24a9h		;2f00	cd a9 24 	. . $ 
	ret			;2f03	c9 	. 
	call sub_2f13h		;2f04	cd 13 2f 	. . / 
	ld a,(0c19ah)		;2f07	3a 9a c1 	: . . 
	and 010h		;2f0a	e6 10 	. . 
	ret z			;2f0c	c8 	. 
	ld b,004h		;2f0d	06 04 	. . 
	call sub_24a9h		;2f0f	cd a9 24 	. . $ 
	ret			;2f12	c9 	. 
sub_2f13h:
	call sub_233bh		;2f13	cd 3b 23 	. ; # 
	cp 038h		;2f16	fe 38 	. 8 
	jr c,l2f45h		;2f18	38 2b 	8 + 
	ld a,004h		;2f1a	3e 04 	> . 
	ld hl,0c199h		;2f1c	21 99 c1 	! . . 
	inc (hl)			;2f1f	34 	4 
	ld c,a			;2f20	4f 	O 
	cp (hl)			;2f21	be 	. 
	jr c,l2f2eh		;2f22	38 0a 	8 . 
	ld a,04ch		;2f24	3e 4c 	> L 
	ld b,004h		;2f26	06 04 	. . 
	call sub_22f1h		;2f28	cd f1 22 	. . " 
	jp l2f3bh		;2f2b	c3 3b 2f 	. ; / 
l2f2eh:
	add a,c			;2f2e	81 	. 
	dec a			;2f2f	3d 	= 
	cp (hl)			;2f30	be 	. 
	inc d			;2f31	14 	. 
	jr c,l2f3fh		;2f32	38 0b 	8 . 
	ld a,050h		;2f34	3e 50 	> P 
	ld b,004h		;2f36	06 04 	. . 
	call sub_22f1h		;2f38	cd f1 22 	. . " 
l2f3bh:
	ld b,004h		;2f3b	06 04 	. . 
	rst 28h			;2f3d	ef 	. 
	ret			;2f3e	c9 	. 
l2f3fh:
	ld hl,0c19ah		;2f3f	21 9a c1 	! . . 
	ld (hl),010h		;2f42	36 10 	6 . 
	ret			;2f44	c9 	. 
l2f45h:
	ld b,004h		;2f45	06 04 	. . 
	call sub_24a9h		;2f47	cd a9 24 	. . $ 
	ret			;2f4a	c9 	. 
	ld a,058h		;2f4b	3e 58 	> X 
	jr l2f59h		;2f4d	18 0a 	. . 
	ld a,05ah		;2f4f	3e 5a 	> Z 
	jr l2f59h		;2f51	18 06 	. . 
	ld a,05ch		;2f53	3e 5c 	> \ 
	jr l2f59h		;2f55	18 02 	. . 
	ld a,05eh		;2f57	3e 5e 	> ^ 
l2f59h:
	rst 30h			;2f59	f7 	. 
	rst 30h			;2f5a	f7 	. 
	ld a,00ah		;2f5b	3e 0a 	> . 
	call sub_092bh		;2f5d	cd 2b 09 	. + . 
	jp c,l06dah		;2f60	da da 06 	. . . 
	ld e,0c8h		;2f63	1e c8 	. . 
	ld bc,l287fh		;2f65	01 7f 28 	.  ( 
	call sub_225fh		;2f68	cd 5f 22 	. _ " 
	ld a,0c0h		;2f6b	3e c0 	> . 
	call sub_2257h		;2f6d	cd 57 22 	. W " 
	ld a,027h		;2f70	3e 27 	> ' 
	ld b,007h		;2f72	06 07 	. . 
	call sub_22f1h		;2f74	cd f1 22 	. . " 
	ret			;2f77	c9 	. 
	call sub_233bh		;2f78	cd 3b 23 	. ; # 
	cp 03ch		;2f7b	fe 3c 	. < 
	jr c,l2f83h		;2f7d	38 04 	8 . 
	ld b,007h		;2f7f	06 07 	. . 
	rst 28h			;2f81	ef 	. 
	ret			;2f82	c9 	. 
l2f83h:
	ld b,007h		;2f83	06 07 	. . 
	call sub_24a9h		;2f85	cd a9 24 	. . $ 
	ld a,01ch		;2f88	3e 1c 	> . 
	rst 30h			;2f8a	f7 	. 
	ld a,01ah		;2f8b	3e 1a 	> . 
	rst 30h			;2f8d	f7 	. 
	ret			;2f8e	c9 	. 
	ld a,060h		;2f8f	3e 60 	> ` 
	rst 30h			;2f91	f7 	. 
	ld a,006h		;2f92	3e 06 	> . 
	call sub_092bh		;2f94	cd 2b 09 	. + . 
	jp c,l06dah		;2f97	da da 06 	. . . 
	ld e,0d0h		;2f9a	1e d0 	. . 
	ld bc,l287fh		;2f9c	01 7f 28 	.  ( 
	call sub_225fh		;2f9f	cd 5f 22 	. _ " 
	ld b,009h		;2fa2	06 09 	. . 
	ld a,0c0h		;2fa4	3e c0 	> . 
	call sub_2257h		;2fa6	cd 57 22 	. W " 
	ld a,027h		;2fa9	3e 27 	> ' 
	ld b,009h		;2fab	06 09 	. . 
	call sub_22f1h		;2fad	cd f1 22 	. . " 
	ret			;2fb0	c9 	. 
	call sub_233bh		;2fb1	cd 3b 23 	. ; # 
	cp 03ch		;2fb4	fe 3c 	. < 
	jr c,l2fbch		;2fb6	38 04 	8 . 
	ld b,009h		;2fb8	06 09 	. . 
	rst 28h			;2fba	ef 	. 
	ret			;2fbb	c9 	. 
l2fbch:
	ld b,009h		;2fbc	06 09 	. . 
	call sub_24a9h		;2fbe	cd a9 24 	. . $ 
	ret			;2fc1	c9 	. 
	ld a,003h		;2fc2	3e 03 	> . 
	call sub_092bh		;2fc4	cd 2b 09 	. + . 
	jp c,l06dah		;2fc7	da da 06 	. . . 
	ld bc,l287fh		;2fca	01 7f 28 	.  ( 
	call sub_225fh		;2fcd	cd 5f 22 	. _ " 
	ld a,066h		;2fd0	3e 66 	> f 
	call sub_0030h		;2fd2	cd 30 00 	. 0 . 
	ld a,0c0h		;2fd5	3e c0 	> . 
	call sub_2257h		;2fd7	cd 57 22 	. W " 
	ld b,004h		;2fda	06 04 	. . 
	ld a,0bch		;2fdc	3e bc 	> . 
	call sub_22f1h		;2fde	cd f1 22 	. . " 
	ld a,(0c129h)		;2fe1	3a 29 c1 	: ) . 
	ld (0c19ch),a		;2fe4	32 9c c1 	2 . . 
	ld a,008h		;2fe7	3e 08 	> . 
	ld (0c000h),a		;2fe9	32 00 c0 	2 . . 
	ret			;2fec	c9 	. 
	ld a,003h		;2fed	3e 03 	> . 
	call sub_092bh		;2fef	cd 2b 09 	. + . 
	jp c,l06dah		;2ff2	da da 06 	. . . 
	ld hl,0c127h		;2ff5	21 27 c1 	! ' . 
	set 1,(hl)		;2ff8	cb ce 	. . 
	ld bc,l287fh		;2ffa	01 7f 28 	.  ( 
	call sub_225fh		;2ffd	cd 5f 22 	. _ " 
	ld a,086h		;3000	3e 86 	> . 
	call sub_0a99h		;3002	cd 99 0a 	. . . 
	ld a,067h		;3005	3e 67 	> g 
	call sub_0030h		;3007	cd 30 00 	. 0 . 
	ld a,0c0h		;300a	3e c0 	> . 
	call sub_2257h		;300c	cd 57 22 	. W " 
	ld b,004h		;300f	06 04 	. . 
	ld a,030h		;3011	3e 30 	> 0 
	call sub_22f1h		;3013	cd f1 22 	. . " 
	ld a,(0c129h)		;3016	3a 29 c1 	: ) . 
	ld (0c19ch),a		;3019	32 9c c1 	2 . . 
	ret			;301c	c9 	. 
	ld a,(0c16bh)		;301d	3a 6b c1 	: k . 
	bit 7,a		;3020	cb 7f 	.  
	jr z,l3032h		;3022	28 0e 	( . 
	ld h,(ix+004h)		;3024	dd 66 04 	. f . 
	ld l,(ix+007h)		;3027	dd 6e 07 	. n . 
	ld a,06bh		;302a	3e 6b 	> k 
	call sub_06e2h		;302c	cd e2 06 	. . . 
	jp l31a5h		;302f	c3 a5 31 	. . 1 
l3032h:
	ld hl,0c19bh		;3032	21 9b c1 	! . . 
	ld (hl),000h		;3035	36 00 	6 . 
	ld a,048h		;3037	3e 48 	> H 
	ld hl,0c19ah		;3039	21 9a c1 	! . . 
	inc (hl)			;303c	34 	4 
	cp (hl)			;303d	be 	. 
	jr nc,l304fh		;303e	30 0f 	0 . 
	xor a			;3040	af 	. 
	ld (hl),a			;3041	77 	w 
	inc hl			;3042	23 	# 
	inc hl			;3043	23 	# 
	dec a			;3044	3d 	= 
	ld (hl),a			;3045	77 	w 
	ld a,001h		;3046	3e 01 	> . 
	call 064a1h		;3048	cd a1 64 	. . d 
	ld ix,(0c196h)		;304b	dd 2a 96 c1 	. * . . 
l304fh:
	ld hl,0c198h		;304f	21 98 c1 	! . . 
	ld a,(0c198h)		;3052	3a 98 c1 	: . . 
	bit 3,a		;3055	cb 5f 	. _ 
	jr nz,l307bh		;3057	20 22 	  " 
	ld a,(0cc36h)		;3059	3a 36 cc 	: 6 . 
	ld hl,0c198h		;305c	21 98 c1 	! . . 
	cp 004h		;305f	fe 04 	. . 
	jr nc,l306fh		;3061	30 0c 	0 . 
	set 0,(hl)		;3063	cb c6 	. . 
	set 3,(hl)		;3065	cb de 	. . 
	ld hl,0c19ah		;3067	21 9a c1 	! . . 
	ld (hl),048h		;306a	36 48 	6 H 
	jp l307bh		;306c	c3 7b 30 	. { 0 
l306fh:
	ld a,(0c16bh)		;306f	3a 6b c1 	: k . 
	and 020h		;3072	e6 20 	.   
	jr nz,l307bh		;3074	20 05 	  . 
	ld hl,0c198h		;3076	21 98 c1 	! . . 
	res 0,(hl)		;3079	cb 86 	. . 
l307bh:
	ld a,005h		;307b	3e 05 	> . 
	ld hl,0c199h		;307d	21 99 c1 	! . . 
	cp (hl)			;3080	be 	. 
	jr z,l3087h		;3081	28 04 	( . 
	inc (hl)			;3083	34 	4 
	jp l308ah		;3084	c3 8a 30 	. . 0 
l3087h:
	ld b,004h		;3087	06 04 	. . 
	rst 28h			;3089	ef 	. 
l308ah:
	ld a,(0c198h)		;308a	3a 98 c1 	: . . 
	bit 0,a		;308d	cb 47 	. G 
	jp nz,l3190h		;308f	c2 90 31 	. . 1 
	ld a,(0c129h)		;3092	3a 29 c1 	: ) . 
	ld c,a			;3095	4f 	O 
	ld a,(0c19ch)		;3096	3a 9c c1 	: . . 
	cp c			;3099	b9 	. 
	jr z,l30a7h		;309a	28 0b 	( . 
	ld a,(0c128h)		;309c	3a 28 c1 	: ( . 
	or a			;309f	b7 	. 
	jr z,l30a7h		;30a0	28 05 	( . 
	ld hl,0c198h		;30a2	21 98 c1 	! . . 
	set 0,(hl)		;30a5	cb c6 	. . 
l30a7h:
	ld a,(0c16bh)		;30a7	3a 6b c1 	: k . 
	and 020h		;30aa	e6 20 	.   
	jr z,l30b3h		;30ac	28 05 	( . 
	ld hl,0c198h		;30ae	21 98 c1 	! . . 
	set 0,(hl)		;30b1	cb c6 	. . 
l30b3h:
	ld hl,0c19bh		;30b3	21 9b c1 	! . . 
	dec (hl)			;30b6	35 	5 
	jr nz,l30d9h		;30b7	20 20 	    
	ld a,(0c198h)		;30b9	3a 98 c1 	: . . 
	bit 1,a		;30bc	cb 4f 	. O 
	jr nz,l30c7h		;30be	20 07 	  . 
	set 1,a		;30c0	cb cf 	. . 
	ld (0c198h),a		;30c2	32 98 c1 	2 . . 
	jr l30d9h		;30c5	18 12 	. . 
l30c7h:
	bit 2,a		;30c7	cb 57 	. W 
	jr nz,l30d2h		;30c9	20 07 	  . 
	set 2,a		;30cb	cb d7 	. . 
	ld (0c198h),a		;30cd	32 98 c1 	2 . . 
	jr l30d9h		;30d0	18 07 	. . 
l30d2h:
	and 001h		;30d2	e6 01 	. . 
	set 0,a		;30d4	cb c7 	. . 
	ld (0c198h),a		;30d6	32 98 c1 	2 . . 
l30d9h:
	ld hl,0c19dh		;30d9	21 9d c1 	! . . 
	inc (hl)			;30dc	34 	4 
	ld a,(hl)			;30dd	7e 	~ 
	rra			;30de	1f 	. 
	rra			;30df	1f 	. 
	jr c,l30e8h		;30e0	38 06 	8 . 
	ld de,00a00h		;30e2	11 00 0a 	. . . 
	jp l30ebh		;30e5	c3 eb 30 	. . 0 
l30e8h:
	ld de,l0b00h		;30e8	11 00 0b 	. . . 
l30ebh:
	ld hl,0c198h		;30eb	21 98 c1 	! . . 
	bit 7,(hl)		;30ee	cb 7e 	. ~ 
	jr nz,l3115h		;30f0	20 23 	  # 
	ld a,(0c224h)		;30f2	3a 24 c2 	: $ . 
	add a,d			;30f5	82 	. 
	sub (ix+004h)		;30f6	dd 96 04 	. . . 
	push af			;30f9	f5 	. 
	jr nc,l30feh		;30fa	30 02 	0 . 
	neg		;30fc	ed 44 	. D 
l30feh:
	cp 003h		;30fe	fe 03 	. . 
	jr nc,l3104h		;3100	30 02 	0 . 
	set 7,(hl)		;3102	cb fe 	. . 
l3104h:
	pop af			;3104	f1 	. 
	bit 7,(ix+011h)		;3105	dd cb 11 7e 	. . . ~ 
	jr c,l3121h		;3109	38 16 	8 . 
	ld de,l0005h+1		;310b	11 06 00 	. . . 
	jr z,l3129h		;310e	28 19 	( . 
	ld de,l0014h		;3110	11 14 00 	. . . 
	jr l3129h		;3113	18 14 	. . 
l3115h:
	ld hl,(0c223h)		;3115	2a 23 c2 	* # . 
	add hl,de			;3118	19 	. 
	ld (ix+003h),l		;3119	dd 75 03 	. u . 
	ld (ix+004h),h		;311c	dd 74 04 	. t . 
	jr l3130h		;311f	18 0f 	. . 
l3121h:
	ld de,0fffah		;3121	11 fa ff 	. . . 
	jr nz,l3129h		;3124	20 03 	  . 
	ld de,0ffech		;3126	11 ec ff 	. . . 
l3129h:
	call sub_227ah		;3129	cd 7a 22 	. z " 
	ld hl,(0c196h)		;312c	2a 96 c1 	* . . 
	rst 18h			;312f	df 	. 
l3130h:
	ld de,0f600h		;3130	11 00 f6 	. . . 
	ld hl,0c198h		;3133	21 98 c1 	! . . 
	bit 6,(hl)		;3136	cb 76 	. v 
	jr nz,l315dh		;3138	20 23 	  # 
	ld a,(0c227h)		;313a	3a 27 c2 	: ' . 
	add a,d			;313d	82 	. 
	sub (ix+007h)		;313e	dd 96 07 	. . . 
	push af			;3141	f5 	. 
	jr nc,l3146h		;3142	30 02 	0 . 
	neg		;3144	ed 44 	. D 
l3146h:
	cp 003h		;3146	fe 03 	. . 
	jr nc,l314ch		;3148	30 02 	0 . 
	set 6,(hl)		;314a	cb f6 	. . 
l314ch:
	pop af			;314c	f1 	. 
	bit 7,(ix+013h)		;314d	dd cb 13 7e 	. . . ~ 
	jr c,l3168h		;3151	38 15 	8 . 
	ld de,l0005h+1		;3153	11 06 00 	. . . 
	jr z,l3170h		;3156	28 18 	( . 
	ld de,l0014h		;3158	11 14 00 	. . . 
	jr l3170h		;315b	18 13 	. . 
l315dh:
	ld hl,(0c226h)		;315d	2a 26 c2 	* & . 
	add hl,de			;3160	19 	. 
	ld (ix+006h),l		;3161	dd 75 06 	. u . 
	ld (ix+007h),h		;3164	dd 74 07 	. t . 
	ret			;3167	c9 	. 
l3168h:
	ld de,0fffah		;3168	11 fa ff 	. . . 
	jr nz,l3170h		;316b	20 03 	  . 
	ld de,0ffech		;316d	11 ec ff 	. . . 
l3170h:
	call sub_2289h		;3170	cd 89 22 	. . " 
	ld hl,(0c196h)		;3173	2a 96 c1 	* . . 
	rst 8			;3176	cf 	. 
	ret			;3177	c9 	. 
	ld a,(0c224h)		;3178	3a 24 c2 	: $ . 
	add a,008h		;317b	c6 08 	. . 
	ld hl,(0c196h)		;317d	2a 96 c1 	* . . 
	ld de,00004h		;3180	11 04 00 	. . . 
	add hl,de			;3183	19 	. 
	ld (hl),a			;3184	77 	w 
	ld a,(0c227h)		;3185	3a 27 c2 	: ' . 
	sub 008h		;3188	d6 08 	. . 
	ld de,00003h		;318a	11 03 00 	. . . 
	add hl,de			;318d	19 	. 
	ld (hl),a			;318e	77 	w 
	ret			;318f	c9 	. 
l3190h:
	ld hl,(0c196h)		;3190	2a 96 c1 	* . . 
	ld de,00068h		;3193	11 68 00 	. h . 
	rst 18h			;3196	df 	. 
	cp 088h		;3197	fe 88 	. . 
	jr nc,l31a5h		;3199	30 0a 	0 . 
	ld de,l0077h+1		;319b	11 78 00 	. x . 
	ld hl,(0c196h)		;319e	2a 96 c1 	* . . 
	rst 8			;31a1	cf 	. 
	cp 0b0h		;31a2	fe b0 	. . 
	ret c			;31a4	d8 	. 
l31a5h:
	ld a,(0c195h)		;31a5	3a 95 c1 	: . . 
	and 07fh		;31a8	e6 7f 	.  
	cp 01ah		;31aa	fe 1a 	. . 
	jr z,l31bch		;31ac	28 0e 	( . 
	call 051e6h		;31ae	cd e6 51 	. . Q 
	ld hl,0c127h		;31b1	21 27 c1 	! ' . 
	res 1,(hl)		;31b4	cb 8e 	. . 
	ld b,004h		;31b6	06 04 	. . 
	call sub_24a9h		;31b8	cd a9 24 	. . $ 
	ret			;31bb	c9 	. 
l31bch:
	ld a,004h		;31bc	3e 04 	> . 
	ld (0c000h),a		;31be	32 00 c0 	2 . . 
	ld b,004h		;31c1	06 04 	. . 
	call sub_24a9h		;31c3	cd a9 24 	. . $ 
	ret			;31c6	c9 	. 
l31c7h:
	ld a,006h		;31c7	3e 06 	> . 
	call sub_092bh		;31c9	cd 2b 09 	. + . 
	jp c,l06dah		;31cc	da da 06 	. . . 
	ld hl,l007fh+1		;31cf	21 80 00 	! . . 
	ld (0c19bh),hl		;31d2	22 9b c1 	" . . 
	ld (0c19fh),hl		;31d5	22 9f c1 	" . . 
	ld hl,0ff80h		;31d8	21 80 ff 	! . . 
	ld (0c19dh),hl		;31db	22 9d c1 	" . . 
	ld e,048h		;31de	1e 48 	. H 
	jp l3231h		;31e0	c3 31 32 	. 1 2 
l31e3h:
	ld a,006h		;31e3	3e 06 	> . 
	call sub_092bh		;31e5	cd 2b 09 	. + . 
	jp c,l06dah		;31e8	da da 06 	. . . 
	ld hl,000a0h		;31eb	21 a0 00 	! . . 
	ld (0c19bh),hl		;31ee	22 9b c1 	" . . 
	ld (0c19fh),hl		;31f1	22 9f c1 	" . . 
	ld hl,0ff60h		;31f4	21 60 ff 	! ` . 
	ld (0c19dh),hl		;31f7	22 9d c1 	" . . 
	ld e,048h		;31fa	1e 48 	. H 
	jp l3231h		;31fc	c3 31 32 	. 1 2 
l31ffh:
	ld a,006h		;31ff	3e 06 	> . 
	call sub_092bh		;3201	cd 2b 09 	. + . 
	jp c,l06dah		;3204	da da 06 	. . . 
	ld hl,0ffa0h		;3207	21 a0 ff 	! . . 
	ld (0c19bh),hl		;320a	22 9b c1 	" . . 
	ld (0c19fh),hl		;320d	22 9f c1 	" . . 
	ld hl,l0060h		;3210	21 60 00 	! ` . 
	ld (0c19dh),hl		;3213	22 9d c1 	" . . 
	jr l322fh		;3216	18 17 	. . 
l3218h:
	ld a,006h		;3218	3e 06 	> . 
	call sub_092bh		;321a	cd 2b 09 	. + . 
	jp c,l06dah		;321d	da da 06 	. . . 
	ld hl,0ff80h		;3220	21 80 ff 	! . . 
	ld (0c19bh),hl		;3223	22 9b c1 	" . . 
	ld (0c19fh),hl		;3226	22 9f c1 	" . . 
	ld hl,l007fh+1		;3229	21 80 00 	! . . 
	ld (0c19dh),hl		;322c	22 9d c1 	" . . 
l322fh:
	ld e,0c0h		;322f	1e c0 	. . 
l3231h:
	ld bc,l371dh		;3231	01 1d 37 	. . 7 
	call sub_225fh		;3234	cd 5f 22 	. _ " 
	ld a,056h		;3237	3e 56 	> V 
	rst 30h			;3239	f7 	. 
	ld de,(0c19bh)		;323a	ed 5b 9b c1 	. [ . . 
	ld ix,(0c196h)		;323e	dd 2a 96 c1 	. * . . 
	call sub_229fh		;3242	cd 9f 22 	. . " 
	ld a,080h		;3245	3e 80 	> . 
	call sub_2257h		;3247	cd 57 22 	. W " 
	ld b,009h		;324a	06 09 	. . 
	ld a,076h		;324c	3e 76 	> v 
	call sub_22f1h		;324e	cd f1 22 	. . " 
	ret			;3251	c9 	. 
	call sub_233bh		;3252	cd 3b 23 	. ; # 
	cp 038h		;3255	fe 38 	. 8 
	jp c,l32feh		;3257	da fe 32 	. . 2 
	bit 2,(ix+002h)		;325a	dd cb 02 56 	. . . V 
	jp nz,l3304h		;325e	c2 04 33 	. . 3 
	ld a,(ix+007h)		;3261	dd 7e 07 	. ~ . 
	cp 0bfh		;3264	fe bf 	. . 
	ld de,0fff8h		;3266	11 f8 ff 	. . . 
	call c,sub_227ah		;3269	dc 7a 22 	. z " 
	ld hl,(0c19fh)		;326c	2a 9f c1 	* . . 
	rl h		;326f	cb 14 	. . 
	sbc a,a			;3271	9f 	. 
	ld c,a			;3272	4f 	O 
	ld a,04ah		;3273	3e 4a 	> J 
	jr c,l3279h		;3275	38 02 	8 . 
	ld a,0b8h		;3277	3e b8 	> . 
l3279h:
	ld b,a			;3279	47 	G 
	cp (ix+007h)		;327a	dd be 07 	. . . 
	sbc a,a			;327d	9f 	. 
	xor c			;327e	a9 	. 
	jr z,l3296h		;327f	28 15 	( . 
	ld c,(ix+007h)		;3281	dd 4e 07 	. N . 
	ld (ix+007h),b		;3284	dd 70 07 	. p . 
	push bc			;3287	c5 	. 
	ld hl,l0606h		;3288	21 06 06 	! . . 
	ld a,07fh		;328b	3e 7f 	>  
	call sub_392fh		;328d	cd 2f 39 	. / 9 
	pop bc			;3290	c1 	. 
	ld (ix+007h),c		;3291	dd 71 07 	. q . 
	jr l329eh		;3294	18 08 	. . 
l3296h:
	ld a,07fh		;3296	3e 7f 	>  
	ld hl,l0606h		;3298	21 06 06 	! . . 
	call sub_392fh		;329b	cd 2f 39 	. / 9 
l329eh:
	ld a,(ix+014h)		;329e	dd 7e 14 	. ~ . 
	rra			;32a1	1f 	. 
	rra			;32a2	1f 	. 
	jr c,l32adh		;32a3	38 08 	8 . 
	rra			;32a5	1f 	. 
	jr c,l32bbh		;32a6	38 13 	8 . 
	rra			;32a8	1f 	. 
	jr c,l32c3h		;32a9	38 18 	8 . 
	jr l32dch		;32ab	18 2f 	. / 
l32adh:
	ld hl,(0c196h)		;32ad	2a 96 c1 	* . . 
	ld de,l0010h		;32b0	11 10 00 	. . . 
	add hl,de			;32b3	19 	. 
	ld (hl),030h		;32b4	36 30 	6 0 
	inc l			;32b6	2c 	, 
	ld (hl),000h		;32b7	36 00 	6 . 
	jr l32dch		;32b9	18 21 	. ! 
l32bbh:
	ld a,(0c1a0h)		;32bb	3a a0 c1 	: . . 
	rla			;32be	17 	. 
	jr nc,l32dch		;32bf	30 1b 	0 . 
	jr l32c9h		;32c1	18 06 	. . 
l32c3h:
	ld a,(0c1a0h)		;32c3	3a a0 c1 	: . . 
	rla			;32c6	17 	. 
	jr c,l32dch		;32c7	38 13 	8 . 
l32c9h:
	ld de,(0c19fh)		;32c9	ed 5b 9f c1 	. [ . . 
	ld hl,l0000h		;32cd	21 00 00 	! . . 
	or a			;32d0	b7 	. 
	sbc hl,de		;32d1	ed 52 	. R 
	ld (0c19fh),hl		;32d3	22 9f c1 	" . . 
	ex de,hl			;32d6	eb 	. 
	call sub_229fh		;32d7	cd 9f 22 	. . " 
	jr l32dch		;32da	18 00 	. . 
l32dch:
	ld e,(ix+010h)		;32dc	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;32df	dd 56 11 	. V . 
	ld hl,(0c196h)		;32e2	2a 96 c1 	* . . 
	rst 18h			;32e5	df 	. 
	cp 00ch		;32e6	fe 0c 	. . 
	jr c,l32feh		;32e8	38 14 	8 . 
	ld de,(0c19fh)		;32ea	ed 5b 9f c1 	. [ . . 
	ld hl,(0c196h)		;32ee	2a 96 c1 	* . . 
	rst 8			;32f1	cf 	. 
	cp 03ch		;32f2	fe 3c 	. < 
	jr c,l32feh		;32f4	38 08 	8 . 
	cp 0c8h		;32f6	fe c8 	. . 
	jr nc,l32feh		;32f8	30 04 	0 . 
	ld b,009h		;32fa	06 09 	. . 
	rst 28h			;32fc	ef 	. 
	ret			;32fd	c9 	. 
l32feh:
	ld b,009h		;32fe	06 09 	. . 
	call sub_24a9h		;3300	cd a9 24 	. . $ 
	ret			;3303	c9 	. 
l3304h:
	ld a,004h		;3304	3e 04 	> . 
	ld (ix+009h),a		;3306	dd 77 09 	. w . 
	ld b,009h		;3309	06 09 	. . 
	call sub_2df2h		;330b	cd f2 2d 	. . - 
	ret			;330e	c9 	. 
	ld hl,(0c196h)		;330f	2a 96 c1 	* . . 
	ld bc,l0010h		;3312	01 10 00 	. . . 
	add hl,bc			;3315	09 	. 
	ld c,(hl)			;3316	4e 	N 
	inc hl			;3317	23 	# 
	ld b,(hl)			;3318	46 	F 
	push hl			;3319	e5 	. 
	ld h,b			;331a	60 	` 
	ld l,c			;331b	69 	i 
	ex de,hl			;331c	eb 	. 
	sbc hl,de		;331d	ed 52 	. R 
	ex de,hl			;331f	eb 	. 
	pop hl			;3320	e1 	. 
	ld a,d			;3321	7a 	z 
	and 0fch		;3322	e6 fc 	. . 
	ld (hl),a			;3324	77 	w 
	dec hl			;3325	2b 	+ 
	ld (hl),e			;3326	73 	s 
	ret			;3327	c9 	. 
	ld a,00ah		;3328	3e 0a 	> . 
	call sub_092bh		;332a	cd 2b 09 	. + . 
	jp c,l06dah		;332d	da da 06 	. . . 
	ld bc,l36e9h		;3330	01 e9 36 	. . 6 
l3333h:
	call sub_225fh		;3333	cd 5f 22 	. _ " 
	ld b,002h		;3336	06 02 	. . 
	ld a,080h		;3338	3e 80 	> . 
l333ah:
	rst 30h			;333a	f7 	. 
	djnz l333ah		;333b	10 fd 	. . 
	ld b,007h		;333d	06 07 	. . 
	ld a,0b5h		;333f	3e b5 	> . 
	call sub_22f1h		;3341	cd f1 22 	. . " 
	ld de,l04c0h		;3344	11 c0 04 	. . . 
	ld ix,(0c196h)		;3347	dd 2a 96 c1 	. * . . 
	call sub_2298h		;334b	cd 98 22 	. . " 
	ret			;334e	c9 	. 
	call sub_233bh		;334f	cd 3b 23 	. ; # 
	cp 03ch		;3352	fe 3c 	. < 
	jp c,l33deh		;3354	da de 33 	. . 3 
	bit 2,(ix+002h)		;3357	dd cb 02 56 	. . . V 
	jp nz,l33fdh		;335b	c2 fd 33 	. . 3 
	call sub_2301h		;335e	cd 01 23 	. . # 
	ld a,(0c198h)		;3361	3a 98 c1 	: . . 
	bit 7,a		;3364	cb 7f 	.  
	jr nz,l33c3h		;3366	20 5b 	  [ 
	bit 0,a		;3368	cb 47 	. G 
	jr nz,l3376h		;336a	20 0a 	  . 
	ld b,00ah		;336c	06 0a 	. . 
	call sub_22d9h		;336e	cd d9 22 	. . " 
	jr nc,l3376h		;3371	30 03 	0 . 
	call sub_33e4h		;3373	cd e4 33 	. . 3 
l3376h:
	ld de,0ffa0h		;3376	11 a0 ff 	. . . 
	ld hl,(0c196h)		;3379	2a 96 c1 	* . . 
	rst 8			;337c	cf 	. 
	ld a,008h		;337d	3e 08 	> . 
	call sub_22c4h		;337f	cd c4 22 	. . " 
	ld a,d			;3382	7a 	z 
	and a			;3383	a7 	. 
	jr nz,l33a4h		;3384	20 1e 	  . 
	ld a,(0c198h)		;3386	3a 98 c1 	: . . 
	bit 0,a		;3389	cb 47 	. G 
	jp nz,l3399h		;338b	c2 99 33 	. . 3 
	ld b,007h		;338e	06 07 	. . 
	ld a,0b5h		;3390	3e b5 	> . 
	call sub_22f1h		;3392	cd f1 22 	. . " 
	ld b,007h		;3395	06 07 	. . 
	jr l33a2h		;3397	18 09 	. . 
l3399h:
	ld b,006h		;3399	06 06 	. . 
	ld a,0b5h		;339b	3e b5 	> . 
	call sub_22f1h		;339d	cd f1 22 	. . " 
	ld b,006h		;33a0	06 06 	. . 
l33a2h:
	rst 28h			;33a2	ef 	. 
	ret			;33a3	c9 	. 
l33a4h:
	ld a,(0c198h)		;33a4	3a 98 c1 	: . . 
	bit 0,a		;33a7	cb 47 	. G 
	jr nz,l33b7h		;33a9	20 0c 	  . 
	ld b,006h		;33ab	06 06 	. . 
	ld a,0afh		;33ad	3e af 	> . 
	call sub_22f1h		;33af	cd f1 22 	. . " 
	ld b,007h		;33b2	06 07 	. . 
	jp l33a2h		;33b4	c3 a2 33 	. . 3 
l33b7h:
	ld b,006h		;33b7	06 06 	. . 
	ld a,0afh		;33b9	3e af 	> . 
	call sub_22f1h		;33bb	cd f1 22 	. . " 
	ld b,006h		;33be	06 06 	. . 
	jp l33a2h		;33c0	c3 a2 33 	. . 3 
l33c3h:
	ld hl,0c198h		;33c3	21 98 c1 	! . . 
	bit 0,(hl)		;33c6	cb 46 	. F 
	call z,sub_33e4h		;33c8	cc e4 33 	. . 3 
	call sub_22a6h		;33cb	cd a6 22 	. . " 
	cp 010h		;33ce	fe 10 	. . 
	jp c,l33deh		;33d0	da de 33 	. . 3 
	ld a,0a9h		;33d3	3e a9 	> . 
	ld b,006h		;33d5	06 06 	. . 
	call sub_22f1h		;33d7	cd f1 22 	. . " 
	ld b,006h		;33da	06 06 	. . 
	rst 28h			;33dc	ef 	. 
	ret			;33dd	c9 	. 
l33deh:
	ld b,007h		;33de	06 07 	. . 
	call sub_24a9h		;33e0	cd a9 24 	. . $ 
	ret			;33e3	c9 	. 
sub_33e4h:
	ld hl,0c198h		;33e4	21 98 c1 	! . . 
	set 0,(hl)		;33e7	cb c6 	. . 
	ld b,007h		;33e9	06 07 	. . 
	call sub_057bh		;33eb	cd 7b 05 	. { . 
	ld b,006h		;33ee	06 06 	. . 
	rst 28h			;33f0	ef 	. 
	ld h,(ix+004h)		;33f1	dd 66 04 	. f . 
	ld l,(ix+007h)		;33f4	dd 6e 07 	. n . 
	ld a,031h		;33f7	3e 31 	> 1 
	call sub_06e2h		;33f9	cd e2 06 	. . . 
	ret			;33fc	c9 	. 
l33fdh:
	ld b,007h		;33fd	06 07 	. . 
	call sub_2df2h		;33ff	cd f2 2d 	. . - 
	ret			;3402	c9 	. 
	ld a,000h		;3403	3e 00 	> . 
	call sub_092bh		;3405	cd 2b 09 	. + . 
	jp c,l06dah		;3408	da da 06 	. . . 
	ld bc,03701h		;340b	01 01 37 	. . 7 
	call sub_225fh		;340e	cd 5f 22 	. _ " 
	ld b,001h		;3411	06 01 	. . 
	ld a,0bbh		;3413	3e bb 	> . 
	call sub_22f1h		;3415	cd f1 22 	. . " 
	ret			;3418	c9 	. 
	call sub_233bh		;3419	cd 3b 23 	. ; # 
	cp 03ch		;341c	fe 3c 	. < 
	jr c,l3430h		;341e	38 10 	8 . 
	ld b,001h		;3420	06 01 	. . 
	rst 28h			;3422	ef 	. 
	ld de,0fff0h		;3423	11 f0 ff 	. . . 
	call sub_227ah		;3426	cd 7a 22 	. z " 
	ld hl,(0c196h)		;3429	2a 96 c1 	* . . 
	rst 18h			;342c	df 	. 
	cp 010h		;342d	fe 10 	. . 
	ret nc			;342f	d0 	. 
l3430h:
	ld b,001h		;3430	06 01 	. . 
	call sub_24a9h		;3432	cd a9 24 	. . $ 
	ret			;3435	c9 	. 
	ld a,(0c131h)		;3436	3a 31 c1 	: 1 . 
	bit 6,a		;3439	cb 77 	. w 
	jp nz,l06dah		;343b	c2 da 06 	. . . 
	ld a,(0c135h)		;343e	3a 35 c1 	: 5 . 
	and a			;3441	a7 	. 
	jr nz,l3449h		;3442	20 05 	  . 
	ld a,07bh		;3444	3e 7b 	> { 
	jp l345bh		;3446	c3 5b 34 	. [ 4 
l3449h:
	dec a			;3449	3d 	= 
	jr nz,l3451h		;344a	20 05 	  . 
	ld a,07ch		;344c	3e 7c 	> | 
	jp l345bh		;344e	c3 5b 34 	. [ 4 
l3451h:
	dec a			;3451	3d 	= 
	jr nz,l3459h		;3452	20 05 	  . 
	ld a,07dh		;3454	3e 7d 	> } 
	jp l345bh		;3456	c3 5b 34 	. [ 4 
l3459h:
	ld a,07eh		;3459	3e 7e 	> ~ 
l345bh:
	rst 30h			;345b	f7 	. 
	ld a,003h		;345c	3e 03 	> . 
	call sub_092bh		;345e	cd 2b 09 	. + . 
	jp c,l06dah		;3461	da da 06 	. . . 
	ld e,0d0h		;3464	1e d0 	. . 
	ld (0c19ah),de		;3466	ed 53 9a c1 	. S . . 
	ld hl,l2000h		;346a	21 00 20 	! .   
	add hl,de			;346d	19 	. 
	ex de,hl			;346e	eb 	. 
	ld bc,l3709h		;346f	01 09 37 	. . 7 
	call sub_225fh		;3472	cd 5f 22 	. _ " 
	ld a,090h		;3475	3e 90 	> . 
	call sub_2257h		;3477	cd 57 22 	. W " 
	ld b,004h		;347a	06 04 	. . 
	ld a,030h		;347c	3e 30 	> 0 
	call sub_22f1h		;347e	cd f1 22 	. . " 
	ret			;3481	c9 	. 
	call sub_233bh		;3482	cd 3b 23 	. ; # 
	cp 03ch		;3485	fe 3c 	. < 
	jr c,l34ddh		;3487	38 54 	8 T 
	ld a,(0c198h)		;3489	3a 98 c1 	: . . 
	bit 0,a		;348c	cb 47 	. G 
	jr nz,l34b0h		;348e	20 20 	    
	ld hl,(0c196h)		;3490	2a 96 c1 	* . . 
	inc l			;3493	2c 	, 
	inc l			;3494	2c 	, 
	bit 5,(hl)		;3495	cb 6e 	. n 
	ret z			;3497	c8 	. 
	res 5,(hl)		;3498	cb ae 	. . 
	ld de,(0c19ah)		;349a	ed 5b 9a c1 	. [ . . 
	inc l			;349e	2c 	, 
	inc l			;349f	2c 	, 
	ld (hl),d			;34a0	72 	r 
	ld hl,0c198h		;34a1	21 98 c1 	! . . 
	set 0,(hl)		;34a4	cb c6 	. . 
	ld a,0a0h		;34a6	3e a0 	> . 
	call sub_0a99h		;34a8	cd 99 0a 	. . . 
	ld a,088h		;34ab	3e 88 	> . 
	call sub_2257h		;34ad	cd 57 22 	. W " 
l34b0h:
	bit 5,(ix+002h)		;34b0	dd cb 02 6e 	. . . n 
	jr nz,l34bah		;34b4	20 04 	  . 
	ld b,004h		;34b6	06 04 	. . 
	rst 28h			;34b8	ef 	. 
	ret			;34b9	c9 	. 
l34bah:
	ld hl,0c135h		;34ba	21 35 c1 	! 5 . 
	inc (hl)			;34bd	34 	4 
	ld a,(hl)			;34be	7e 	~ 
	cp 004h		;34bf	fe 04 	. . 
	jr nz,l34c8h		;34c1	20 05 	  . 
	xor a			;34c3	af 	. 
	ld (hl),a			;34c4	77 	w 
	call 0616fh		;34c5	cd 6f 61 	. o a 
l34c8h:
	ld h,(ix+004h)		;34c8	dd 66 04 	. f . 
	ld l,(ix+007h)		;34cb	dd 6e 07 	. n . 
	ld a,03fh		;34ce	3e 3f 	> ? 
	call sub_06e2h		;34d0	cd e2 06 	. . . 
	ld a,09bh		;34d3	3e 9b 	> . 
	call sub_0a99h		;34d5	cd 99 0a 	. . . 
	ld hl,0c131h		;34d8	21 31 c1 	! 1 . 
	set 6,(hl)		;34db	cb f6 	. . 
l34ddh:
	ld b,004h		;34dd	06 04 	. . 
	call sub_24a9h		;34df	cd a9 24 	. . $ 
	ret			;34e2	c9 	. 
	ld a,003h		;34e3	3e 03 	> . 
	call sub_092bh		;34e5	cd 2b 09 	. + . 
	jp c,l06dah		;34e8	da da 06 	. . . 
	ld hl,l0c00h		;34eb	21 00 0c 	! . . 
	add hl,de			;34ee	19 	. 
	ex de,hl			;34ef	eb 	. 
	ld bc,l3709h		;34f0	01 09 37 	. . 7 
	call sub_225fh		;34f3	cd 5f 22 	. _ " 
	ld a,07fh		;34f6	3e 7f 	>  
	rst 30h			;34f8	f7 	. 
	ld a,090h		;34f9	3e 90 	> . 
	call sub_2257h		;34fb	cd 57 22 	. W " 
	ld b,004h		;34fe	06 04 	. . 
	ld a,030h		;3500	3e 30 	> 0 
	call sub_22f1h		;3502	cd f1 22 	. . " 
	ret			;3505	c9 	. 
	call sub_233bh		;3506	cd 3b 23 	. ; # 
	cp 03ch		;3509	fe 3c 	. < 
	jr c,l3548h		;350b	38 3b 	8 ; 
	ld a,(0c198h)		;350d	3a 98 c1 	: . . 
	bit 7,a		;3510	cb 7f 	.  
	jr nz,l352ch		;3512	20 18 	  . 
	bit 5,(ix+002h)		;3514	dd cb 02 6e 	. . . n 
	ret z			;3518	c8 	. 
	ld a,(ix+004h)		;3519	dd 7e 04 	. ~ . 
	sub 00ch		;351c	d6 0c 	. . 
	ld (ix+004h),a		;351e	dd 77 04 	. w . 
	ld a,088h		;3521	3e 88 	> . 
	ld (ix+002h),a		;3523	dd 77 02 	. w . 
	ld hl,0c198h		;3526	21 98 c1 	! . . 
	set 7,(hl)		;3529	cb fe 	. . 
	ret			;352b	c9 	. 
l352ch:
	ld a,020h		;352c	3e 20 	>   
	ld hl,0c19dh		;352e	21 9d c1 	! . . 
	cp (hl)			;3531	be 	. 
	jr z,l3537h		;3532	28 03 	( . 
	inc (hl)			;3534	34 	4 
	jr l353dh		;3535	18 06 	. . 
l3537h:
	bit 5,(ix+002h)		;3537	dd cb 02 6e 	. . . n 
	jr nz,l354eh		;353b	20 11 	  . 
l353dh:
	ld b,004h		;353d	06 04 	. . 
	rst 28h			;353f	ef 	. 
	ld a,0feh		;3540	3e fe 	> . 
	ld hl,0c199h		;3542	21 99 c1 	! . . 
	inc (hl)			;3545	34 	4 
	cp (hl)			;3546	be 	. 
	ret nz			;3547	c0 	. 
l3548h:
	ld b,004h		;3548	06 04 	. . 
	call sub_24a9h		;354a	cd a9 24 	. . $ 
	ret			;354d	c9 	. 
l354eh:
	ld h,(ix+004h)		;354e	dd 66 04 	. f . 
	ld l,(ix+007h)		;3551	dd 6e 07 	. n . 
	ld a,00bh		;3554	3e 0b 	> . 
	call sub_06e2h		;3556	cd e2 06 	. . . 
	ld b,004h		;3559	06 04 	. . 
	call sub_24a9h		;355b	cd a9 24 	. . $ 
	ld a,006h		;355e	3e 06 	> . 
	call 0615eh		;3560	cd 5e 61 	. ^ a 
	ld a,002h		;3563	3e 02 	> . 
	call 0648dh		;3565	cd 8d 64 	. . d 
	ld a,08dh		;3568	3e 8d 	> . 
	call sub_0a99h		;356a	cd 99 0a 	. . . 
	ret			;356d	c9 	. 
	ld a,003h		;356e	3e 03 	> . 
	call sub_092bh		;3570	cd 2b 09 	. + . 
	jp c,l06dah		;3573	da da 06 	. . . 
	ld hl,0c19bh		;3576	21 9b c1 	! . . 
	ld (hl),050h		;3579	36 50 	6 P 
	jp l35b1h		;357b	c3 b1 35 	. . 5 
	ld a,003h		;357e	3e 03 	> . 
	call sub_092bh		;3580	cd 2b 09 	. + . 
	jp c,l06dah		;3583	da da 06 	. . . 
	ld a,050h		;3586	3e 50 	> P 
	ld (0c19bh),a		;3588	32 9b c1 	2 . . 
	ld (0c19ah),a		;358b	32 9a c1 	2 . . 
	jp l35b1h		;358e	c3 b1 35 	. . 5 
	jp l06dah		;3591	c3 da 06 	. . . 
	ld a,003h		;3594	3e 03 	> . 
	call sub_092bh		;3596	cd 2b 09 	. + . 
	jp c,l06dah		;3599	da da 06 	. . . 
	ld a,050h		;359c	3e 50 	> P 
	ld (0c19bh),a		;359e	32 9b c1 	2 . . 
	ld (0c19ah),a		;35a1	32 9a c1 	2 . . 
	ld e,0cch		;35a4	1e cc 	. . 
	jp l35b3h		;35a6	c3 b3 35 	. . 5 
	ld a,003h		;35a9	3e 03 	> . 
	call sub_092bh		;35ab	cd 2b 09 	. + . 
	jp c,l06dah		;35ae	da da 06 	. . . 
l35b1h:
	ld e,0d0h		;35b1	1e d0 	. . 
l35b3h:
	ld bc,l36e9h		;35b3	01 e9 36 	. . 6 
	call sub_225fh		;35b6	cd 5f 22 	. _ " 
	ld a,017h		;35b9	3e 17 	> . 
	rst 30h			;35bb	f7 	. 
	ret			;35bc	c9 	. 
	ld a,(0c19bh)		;35bd	3a 9b c1 	: . . 
	ld hl,0c19ah		;35c0	21 9a c1 	! . . 
	inc (hl)			;35c3	34 	4 
	cp (hl)			;35c4	be 	. 
	jr c,l35dah		;35c5	38 13 	8 . 
	ld de,l0040h		;35c7	11 40 00 	. @ . 
	ld l,(ix+003h)		;35ca	dd 6e 03 	. n . 
	ld h,(ix+004h)		;35cd	dd 66 04 	. f . 
	add hl,de			;35d0	19 	. 
	ld (ix+003h),l		;35d1	dd 75 03 	. u . 
	ld (ix+004h),h		;35d4	dd 74 04 	. t . 
	jp l35f4h		;35d7	c3 f4 35 	. . 5 
l35dah:
	ld a,(0c19bh)		;35da	3a 9b c1 	: . . 
	add a,a			;35dd	87 	. 
	dec a			;35de	3d 	= 
	cp (hl)			;35df	be 	. 
	jr nc,l35e4h		;35e0	30 02 	0 . 
	xor a			;35e2	af 	. 
	ld (hl),a			;35e3	77 	w 
l35e4h:
	ld de,0ffc0h		;35e4	11 c0 ff 	. . . 
	ld l,(ix+003h)		;35e7	dd 6e 03 	. n . 
	ld h,(ix+004h)		;35ea	dd 66 04 	. f . 
	add hl,de			;35ed	19 	. 
	ld (ix+003h),l		;35ee	dd 75 03 	. u . 
	ld (ix+004h),h		;35f1	dd 74 04 	. t . 
l35f4h:
	ld hl,(0cb3dh)		;35f4	2a 3d cb 	* = . 
	ld e,(ix+003h)		;35f7	dd 5e 03 	. ^ . 
	ld d,(ix+004h)		;35fa	dd 56 04 	. V . 
	add hl,de			;35fd	19 	. 
	ld (ix+003h),l		;35fe	dd 75 03 	. u . 
	ld (ix+004h),h		;3601	dd 74 04 	. t . 
	ld de,(0cb3bh)		;3604	ed 5b 3b cb 	. [ ; . 
	ld l,(ix+006h)		;3608	dd 6e 06 	. n . 
	ld h,(ix+007h)		;360b	dd 66 07 	. f . 
	xor a			;360e	af 	. 
	sbc hl,de		;360f	ed 52 	. R 
	ld (ix+006h),l		;3611	dd 75 06 	. u . 
	ld (ix+007h),h		;3614	dd 74 07 	. t . 
	ld a,h			;3617	7c 	| 
	cp 03ch		;3618	fe 3c 	. < 
	jr c,l3666h		;361a	38 4a 	8 J 
	bit 2,(ix+002h)		;361c	dd cb 02 56 	. . . V 
	jr nz,l366ch		;3620	20 4a 	  J 
	call sub_2301h		;3622	cd 01 23 	. . # 
	ld a,(0c198h)		;3625	3a 98 c1 	: . . 
	bit 7,a		;3628	cb 7f 	.  
	jr nz,l3655h		;362a	20 29 	  ) 
	ld b,004h		;362c	06 04 	. . 
	rst 28h			;362e	ef 	. 
	ld hl,0c199h		;362f	21 99 c1 	! . . 
	ld a,008h		;3632	3e 08 	> . 
	inc (hl)			;3634	34 	4 
	cp (hl)			;3635	be 	. 
	jr c,l3643h		;3636	38 0b 	8 . 
	ld a,08fh		;3638	3e 8f 	> . 
	ld b,004h		;363a	06 04 	. . 
	call sub_22f1h		;363c	cd f1 22 	. . " 
	ld b,004h		;363f	06 04 	. . 
	rst 28h			;3641	ef 	. 
	ret			;3642	c9 	. 
l3643h:
	ld a,010h		;3643	3e 10 	> . 
	cp (hl)			;3645	be 	. 
	jr nc,l364ah		;3646	30 02 	0 . 
	xor a			;3648	af 	. 
	ld (hl),a			;3649	77 	w 
l364ah:
	ld a,08bh		;364a	3e 8b 	> . 
	ld b,004h		;364c	06 04 	. . 
	call sub_22f1h		;364e	cd f1 22 	. . " 
l3651h:
	ld b,004h		;3651	06 04 	. . 
	rst 28h			;3653	ef 	. 
	ret			;3654	c9 	. 
l3655h:
	call sub_22a6h		;3655	cd a6 22 	. . " 
	cp 010h		;3658	fe 10 	. . 
	jr c,l3666h		;365a	38 0a 	8 . 
	ld a,093h		;365c	3e 93 	> . 
	ld b,004h		;365e	06 04 	. . 
	call sub_22f1h		;3660	cd f1 22 	. . " 
	jp l3651h		;3663	c3 51 36 	. Q 6 
l3666h:
	ld b,004h		;3666	06 04 	. . 
	call sub_24a9h		;3668	cd a9 24 	. . $ 
	ret			;366b	c9 	. 
l366ch:
	ld b,004h		;366c	06 04 	. . 
	call sub_2df2h		;366e	cd f2 2d 	. . - 
	ret			;3671	c9 	. 
	ld a,003h		;3672	3e 03 	> . 
	call sub_092bh		;3674	cd 2b 09 	. + . 
	jp c,l06dah		;3677	da da 06 	. . . 
	ld bc,036edh		;367a	01 ed 36 	. . 6 
	call sub_225fh		;367d	cd 5f 22 	. _ " 
	ld a,020h		;3680	3e 20 	>   
	rst 30h			;3682	f7 	. 
	ld a,088h		;3683	3e 88 	> . 
	call sub_2257h		;3685	cd 57 22 	. W " 
	ret			;3688	c9 	. 
	ld a,003h		;3689	3e 03 	> . 
	call sub_092bh		;368b	cd 2b 09 	. + . 
	jp c,l06dah		;368e	da da 06 	. . . 
	ld bc,036edh		;3691	01 ed 36 	. . 6 
	call sub_225fh		;3694	cd 5f 22 	. _ " 
	ld a,01fh		;3697	3e 1f 	> . 
	ld b,001h		;3699	06 01 	. . 
	rst 30h			;369b	f7 	. 
	ld a,048h		;369c	3e 48 	> H 
	ld b,004h		;369e	06 04 	. . 
	call sub_22f1h		;36a0	cd f1 22 	. . " 
	ld a,088h		;36a3	3e 88 	> . 
	call sub_2257h		;36a5	cd 57 22 	. W " 
	ret			;36a8	c9 	. 
	ld a,008h		;36a9	3e 08 	> . 
	call sub_22c4h		;36ab	cd c4 22 	. . " 
	ld a,d			;36ae	7a 	z 
	and a			;36af	a7 	. 
	jr nz,l36bbh		;36b0	20 09 	  . 
	ld a,040h		;36b2	3e 40 	> @ 
	ld b,004h		;36b4	06 04 	. . 
	call sub_22f1h		;36b6	cd f1 22 	. . " 
	jr l36c2h		;36b9	18 07 	. . 
l36bbh:
	ld a,044h		;36bb	3e 44 	> D 
	ld b,004h		;36bd	06 04 	. . 
	call sub_22f1h		;36bf	cd f1 22 	. . " 
l36c2h:
	call sub_233bh		;36c2	cd 3b 23 	. ; # 
	cp 040h		;36c5	fe 40 	. @ 
	jr c,l36e3h		;36c7	38 1a 	8 . 
	bit 5,(ix+002h)		;36c9	dd cb 02 6e 	. . . n 
	jr nz,l36d3h		;36cd	20 04 	  . 
	ld b,004h		;36cf	06 04 	. . 
	rst 28h			;36d1	ef 	. 
	ret			;36d2	c9 	. 
l36d3h:
	ld hl,0c222h		;36d3	21 22 c2 	! " . 
	set 3,(hl)		;36d6	cb de 	. . 
	ld h,(ix+004h)		;36d8	dd 66 04 	. f . 
	ld l,(ix+007h)		;36db	dd 6e 07 	. n . 
	ld a,060h		;36de	3e 60 	> ` 
	call sub_06e2h		;36e0	cd e2 06 	. . . 
l36e3h:
	ld b,004h		;36e3	06 04 	. . 
	call sub_24a9h		;36e5	cd a9 24 	. . $ 
	ret			;36e8	c9 	. 
l36e9h:
	ld (bc),a			;36e9	02 	. 
	ld (bc),a			;36ea	02 	. 
	inc bc			;36eb	03 	. 
	jr nz,l36f3h		;36ec	20 05 	  . 
	dec b			;36ee	05 	. 
	inc bc			;36ef	03 	. 
	add a,b			;36f0	80 	. 
l36f1h:
	inc bc			;36f1	03 	. 
	inc bc			;36f2	03 	. 
l36f3h:
	inc b			;36f3	04 	. 
	jr nz,l36fbh		;36f4	20 05 	  . 
	dec b			;36f6	05 	. 
	inc b			;36f7	04 	. 
	ex af,af'			;36f8	08 	. 
l36f9h:
	inc bc			;36f9	03 	. 
	inc bc			;36fa	03 	. 
l36fbh:
	inc b			;36fb	04 	. 
	djnz $+5		;36fc	10 03 	. . 
	inc bc			;36fe	03 	. 
	dec b			;36ff	05 	. 
	jr nz,l3704h		;3700	20 02 	  . 
	ld (bc),a			;3702	02 	. 
	inc bc			;3703	03 	. 
l3704h:
	jr nz,l3709h		;3704	20 03 	  . 
	inc bc			;3706	03 	. 
	dec b			;3707	05 	. 
	ex af,af'			;3708	08 	. 
l3709h:
	ld (bc),a			;3709	02 	. 
	ld (bc),a			;370a	02 	. 
	dec b			;370b	05 	. 
	add a,b			;370c	80 	. 
l370dh:
	inc bc			;370d	03 	. 
	dec b			;370e	05 	. 
	inc b			;370f	04 	. 
	jr nz,l3717h		;3710	20 05 	  . 
	dec b			;3712	05 	. 
	dec b			;3713	05 	. 
	add a,b			;3714	80 	. 
l3715h:
	dec b			;3715	05 	. 
	dec b			;3716	05 	. 
l3717h:
	inc b			;3717	04 	. 
	add a,b			;3718	80 	. 
l3719h:
	dec b			;3719	05 	. 
	dec b			;371a	05 	. 
	inc b			;371b	04 	. 
	add a,b			;371c	80 	. 
l371dh:
	inc b			;371d	04 	. 
	inc b			;371e	04 	. 
	inc b			;371f	04 	. 
	jr z,$+5		;3720	28 03 	( . 
	inc bc			;3722	03 	. 
	ld (bc),a			;3723	02 	. 
	jr nz,l3760h		;3724	20 3a 	  : 
	jr z,l36e9h		;3726	28 c1 	( . 
	cp 028h		;3728	fe 28 	. ( 
	jr nz,l372fh		;372a	20 03 	  . 
	ld a,(0c132h)		;372c	3a 32 c1 	: 2 . 
l372fh:
	and 0fch		;372f	e6 fc 	. . 
	and a			;3731	a7 	. 
	jr nz,l3738h		;3732	20 04 	  . 
	ld a,082h		;3734	3e 82 	> . 
	jr l377ah		;3736	18 42 	. B 
l3738h:
	cp 004h		;3738	fe 04 	. . 
	jr nz,l3740h		;373a	20 04 	  . 
	ld a,083h		;373c	3e 83 	> . 
	jr l377ah		;373e	18 3a 	. : 
l3740h:
	cp 008h		;3740	fe 08 	. . 
	jr nz,l3748h		;3742	20 04 	  . 
	ld a,084h		;3744	3e 84 	> . 
	jr l377ah		;3746	18 32 	. 2 
l3748h:
	cp 00ch		;3748	fe 0c 	. . 
	jr nz,l3750h		;374a	20 04 	  . 
	ld a,085h		;374c	3e 85 	> . 
	jr l377ah		;374e	18 2a 	. * 
l3750h:
	cp 010h		;3750	fe 10 	. . 
	jr nz,l3758h		;3752	20 04 	  . 
	ld a,086h		;3754	3e 86 	> . 
	jr l377ah		;3756	18 22 	. " 
l3758h:
	cp 014h		;3758	fe 14 	. . 
	jr nz,l3760h		;375a	20 04 	  . 
	ld a,087h		;375c	3e 87 	> . 
	jr l377ah		;375e	18 1a 	. . 
l3760h:
	cp 018h		;3760	fe 18 	. . 
	jr nz,l3768h		;3762	20 04 	  . 
	ld a,088h		;3764	3e 88 	> . 
	jr l377ah		;3766	18 12 	. . 
l3768h:
	cp 01ch		;3768	fe 1c 	. . 
	jr nz,l3770h		;376a	20 04 	  . 
	ld a,089h		;376c	3e 89 	> . 
	jr l377ah		;376e	18 0a 	. . 
l3770h:
	cp 020h		;3770	fe 20 	.   
	jr nz,l3778h		;3772	20 04 	  . 
	ld a,08ah		;3774	3e 8a 	> . 
	jr l377ah		;3776	18 02 	. . 
l3778h:
	ld a,08bh		;3778	3e 8b 	> . 
l377ah:
	rst 30h			;377a	f7 	. 
	ld a,003h		;377b	3e 03 	> . 
	call sub_092bh		;377d	cd 2b 09 	. + . 
	jp c,l06dah		;3780	da da 06 	. . . 
	ld bc,l3719h		;3783	01 19 37 	. . 7 
	call sub_225fh		;3786	cd 5f 22 	. _ " 
	ld a,0c8h		;3789	3e c8 	> . 
	call sub_2257h		;378b	cd 57 22 	. W " 
	ld a,01ch		;378e	3e 1c 	> . 
	ld b,004h		;3790	06 04 	. . 
	call sub_22f1h		;3792	cd f1 22 	. . " 
	ld hl,0cca8h		;3795	21 a8 cc 	! . . 
	inc (hl)			;3798	34 	4 
	ret			;3799	c9 	. 
	call sub_233bh		;379a	cd 3b 23 	. ; # 
	cp 038h		;379d	fe 38 	. 8 
	jr c,l37d7h		;379f	38 36 	8 6 
	ld b,004h		;37a1	06 04 	. . 
	rst 28h			;37a3	ef 	. 
	ld a,(0c198h)		;37a4	3a 98 c1 	: . . 
	bit 7,a		;37a7	cb 7f 	.  
	jr nz,l37bch		;37a9	20 11 	  . 
	ld a,020h		;37ab	3e 20 	>   
	ld hl,0c199h		;37ad	21 99 c1 	! . . 
	inc (hl)			;37b0	34 	4 
	cp (hl)			;37b1	be 	. 
	ret nc			;37b2	d0 	. 
	ld hl,0c198h		;37b3	21 98 c1 	! . . 
	set 7,(hl)		;37b6	cb fe 	. . 
	res 6,(ix+002h)		;37b8	dd cb 02 b6 	. . . . 
l37bch:
	bit 5,(ix+002h)		;37bc	dd cb 02 6e 	. . . n 
	ret z			;37c0	c8 	. 
	ld hl,0c16dh		;37c1	21 6d c1 	! m . 
	set 0,(hl)		;37c4	cb c6 	. . 
	ld a,(0c128h)		;37c6	3a 28 c1 	: ( . 
	cp 040h		;37c9	fe 40 	. @ 
	jr z,l37d7h		;37cb	28 0a 	( . 
	ld hl,0c131h		;37cd	21 31 c1 	! 1 . 
	set 7,(hl)		;37d0	cb fe 	. . 
	ld a,0a5h		;37d2	3e a5 	> . 
	call sub_0a99h		;37d4	cd 99 0a 	. . . 
l37d7h:
	ld b,004h		;37d7	06 04 	. . 
	call sub_24a9h		;37d9	cd a9 24 	. . $ 
	ret			;37dc	c9 	. 
	ld a,003h		;37dd	3e 03 	> . 
	call sub_092bh		;37df	cd 2b 09 	. + . 
	jp c,l06dah		;37e2	da da 06 	. . . 
	ld e,0d0h		;37e5	1e d0 	. . 
	ld bc,l36e9h		;37e7	01 e9 36 	. . 6 
	call sub_225fh		;37ea	cd 5f 22 	. _ " 
	ld a,080h		;37ed	3e 80 	> . 
	call sub_2257h		;37ef	cd 57 22 	. W " 
	ld a,093h		;37f2	3e 93 	> . 
	rst 30h			;37f4	f7 	. 
	ld a,01dh		;37f5	3e 1d 	> . 
	ld (0c19fh),a		;37f7	32 9f c1 	2 . . 
	ret			;37fa	c9 	. 
	call sub_233bh		;37fb	cd 3b 23 	. ; # 
	cp 038h		;37fe	fe 38 	. 8 
l3800h:
	jp c,l3881h		;3800	da 81 38 	. . 8 
	bit 2,(ix+002h)		;3803	dd cb 02 56 	. . . V 
	jp nz,l389ah		;3807	c2 9a 38 	. . 8 
	call sub_2301h		;380a	cd 01 23 	. . # 
	ld a,(0c198h)		;380d	3a 98 c1 	: . . 
	bit 7,a		;3810	cb 7f 	.  
	jp nz,l3881h		;3812	c2 81 38 	. . 8 
	ld de,0ff80h		;3815	11 80 ff 	. . . 
	ld hl,(0c196h)		;3818	2a 96 c1 	* . . 
	rst 8			;381b	cf 	. 
	ld a,(0c198h)		;381c	3a 98 c1 	: . . 
	bit 0,a		;381f	cb 47 	. G 
	jr nz,l3836h		;3821	20 13 	  . 
	bit 1,a		;3823	cb 4f 	. O 
	jr nz,l3852h		;3825	20 2b 	  + 
	ld b,000h		;3827	06 00 	. . 
	call sub_22e2h		;3829	cd e2 22 	. . " 
	jr nc,l386fh		;382c	30 41 	0 A 
	ld hl,0c198h		;382e	21 98 c1 	! . . 
	set 0,(hl)		;3831	cb c6 	. . 
	jp l386fh		;3833	c3 6f 38 	. o 8 
l3836h:
	ld a,(0c19fh)		;3836	3a 9f c1 	: . . 
	ld hl,0c19dh		;3839	21 9d c1 	! . . 
	call sub_22c7h		;383c	cd c7 22 	. . " 
	ld a,d			;383f	7a 	z 
	and a			;3840	a7 	. 
	jr nz,l384bh		;3841	20 08 	  . 
	ld de,0fff8h		;3843	11 f8 ff 	. . . 
	call sub_227ah		;3846	cd 7a 22 	. z " 
	jr l3852h		;3849	18 07 	. . 
l384bh:
	ld hl,0c198h		;384b	21 98 c1 	! . . 
	set 1,(hl)		;384e	cb ce 	. . 
	res 0,(hl)		;3850	cb 86 	. . 
l3852h:
	ld hl,0c19ah		;3852	21 9a c1 	! . . 
	ld a,030h		;3855	3e 30 	> 0 
	call sub_22c7h		;3857	cd c7 22 	. . " 
	ld a,d			;385a	7a 	z 
	and a			;385b	a7 	. 
	jr nz,l386fh		;385c	20 11 	  . 
	ld de,l0020h		;385e	11 20 00 	.   . 
	ld hl,(0c196h)		;3861	2a 96 c1 	* . . 
	rst 18h			;3864	df 	. 
	ld a,08fh		;3865	3e 8f 	> . 
	ld b,004h		;3867	06 04 	. . 
	call sub_22f1h		;3869	cd f1 22 	. . " 
	jp l387dh		;386c	c3 7d 38 	. } 8 
l386fh:
	ld de,0ffe0h		;386f	11 e0 ff 	. . . 
	ld hl,(0c196h)		;3872	2a 96 c1 	* . . 
	rst 18h			;3875	df 	. 
	ld a,08bh		;3876	3e 8b 	> . 
	ld b,004h		;3878	06 04 	. . 
	call sub_22f1h		;387a	cd f1 22 	. . " 
l387dh:
	ld b,004h		;387d	06 04 	. . 
	rst 28h			;387f	ef 	. 
	ret			;3880	c9 	. 
l3881h:
	call sub_22a6h		;3881	cd a6 22 	. . " 
	cp 010h		;3884	fe 10 	. . 
	jp c,l3894h		;3886	da 94 38 	. . 8 
	ld a,093h		;3889	3e 93 	> . 
	ld b,004h		;388b	06 04 	. . 
	call sub_22f1h		;388d	cd f1 22 	. . " 
	ld b,004h		;3890	06 04 	. . 
	rst 28h			;3892	ef 	. 
	ret			;3893	c9 	. 
l3894h:
	ld b,004h		;3894	06 04 	. . 
sub_3896h:
	call sub_24a9h		;3896	cd a9 24 	. . $ 
	ret			;3899	c9 	. 
l389ah:
	ld b,004h		;389a	06 04 	. . 
	call sub_2df2h		;389c	cd f2 2d 	. . - 
	ret			;389f	c9 	. 
	ld a,011h		;38a0	3e 11 	> . 
	ld (0d397h),a		;38a2	32 97 d3 	2 . . 
	ld hl,0c198h		;38a5	21 98 c1 	! . . 
	inc (hl)			;38a8	34 	4 
	ld a,(hl)			;38a9	7e 	~ 
	ld a,(0cc30h)		;38aa	3a 30 cc 	: 0 . 
	bit 0,a		;38ad	cb 47 	. G 
	jp nz,l38d4h		;38af	c2 d4 38 	. . 8 
	ld a,(hl)			;38b2	7e 	~ 
	rra			;38b3	1f 	. 
	rra			;38b4	1f 	. 
	rra			;38b5	1f 	. 
	and 007h		;38b6	e6 07 	. . 
	ld e,a			;38b8	5f 	_ 
	ld d,000h		;38b9	16 00 	. . 
	ld hl,l38ech		;38bb	21 ec 38 	! . 8 
	add hl,de			;38be	19 	. 
	ld a,(hl)			;38bf	7e 	~ 
	ld (0d395h),a		;38c0	32 95 d3 	2 . . 
	ld hl,l38f4h		;38c3	21 f4 38 	! . 8 
	add hl,de			;38c6	19 	. 
	ld a,(hl)			;38c7	7e 	~ 
	ld (0d398h),a		;38c8	32 98 d3 	2 . . 
	ld hl,l38f4h		;38cb	21 f4 38 	! . 8 
	add hl,de			;38ce	19 	. 
	ld a,(hl)			;38cf	7e 	~ 
	ld (0d399h),a		;38d0	32 99 d3 	2 . . 
	ret			;38d3	c9 	. 
l38d4h:
	ld a,040h		;38d4	3e 40 	> @ 
	ld (0d395h),a		;38d6	32 95 d3 	2 . . 
	ld a,03ah		;38d9	3e 3a 	> : 
	ld (0d397h),a		;38db	32 97 d3 	2 . . 
	ld a,03fh		;38de	3e 3f 	> ? 
	ld (0d398h),a		;38e0	32 98 d3 	2 . . 
	ld a,03eh		;38e3	3e 3e 	> > 
	ld (0d399h),a		;38e5	32 99 d3 	2 . . 
	jp l06dah		;38e8	c3 da 06 	. . . 
	ret			;38eb	c9 	. 
l38ech:
	djnz l38fah		;38ec	10 0c 	. . 
	ex af,af'			;38ee	08 	. 
	inc b			;38ef	04 	. 
	ex af,af'			;38f0	08 	. 
	inc c			;38f1	0c 	. 
	djnz $+34		;38f2	10 20 	.   
l38f4h:
	inc b			;38f4	04 	. 
	inc bc			;38f5	03 	. 
	ld (bc),a			;38f6	02 	. 
	ld (bc),a			;38f7	02 	. 
	ld (bc),a			;38f8	02 	. 
	inc bc			;38f9	03 	. 
l38fah:
	inc b			;38fa	04 	. 
	ex af,af'			;38fb	08 	. 
	ld a,087h		;38fc	3e 87 	> . 
	call sub_0a99h		;38fe	cd 99 0a 	. . . 
	call 04392h		;3901	cd 92 43 	. . C 
	jp l06dah		;3904	c3 da 06 	. . . 
	ld a,03bh		;3907	3e 3b 	> ; 
	ld b,003h		;3909	06 03 	. . 
l390bh:
	rst 30h			;390b	f7 	. 
	djnz l390bh		;390c	10 fd 	. . 
	ld a,063h		;390e	3e 63 	> c 
	ld b,002h		;3910	06 02 	. . 
l3912h:
	rst 30h			;3912	f7 	. 
	djnz l3912h		;3913	10 fd 	. . 
	ret			;3915	c9 	. 
	ld b,002h		;3916	06 02 	. . 
	ld a,02ah		;3918	3e 2a 	> * 
l391ah:
	rst 30h			;391a	f7 	. 
	djnz l391ah		;391b	10 fd 	. . 
	ret			;391d	c9 	. 
	ld a,056h		;391e	3e 56 	> V 
	rst 30h			;3920	f7 	. 
	ret			;3921	c9 	. 
	ld a,093h		;3922	3e 93 	> . 
	rst 30h			;3924	f7 	. 
	ret			;3925	c9 	. 
	ld a,01bh		;3926	3e 1b 	> . 
	rst 30h			;3928	f7 	. 
	ret			;3929	c9 	. 
	ld a,080h		;392a	3e 80 	> . 
	rst 30h			;392c	f7 	. 
	rst 30h			;392d	f7 	. 
	ret			;392e	c9 	. 
sub_392fh:
	ld (0cc01h),hl		;392f	22 01 cc 	" . . 
	ld hl,0cbffh		;3932	21 ff cb 	! . . 
	ld (ix+014h),000h		;3935	dd 36 14 00 	. 6 . . 
	ld (hl),000h		;3939	36 00 	6 . 
	or a			;393b	b7 	. 
	jr nz,l3940h		;393c	20 02 	  . 
	set 1,(hl)		;393e	cb ce 	. . 
l3940h:
	bit 7,a		;3940	cb 7f 	.  
	jr z,l3946h		;3942	28 02 	( . 
	set 4,(hl)		;3944	cb e6 	. . 
l3946h:
	ld e,(ix+006h)		;3946	dd 5e 06 	. ^ . 
	ld d,(ix+007h)		;3949	dd 56 07 	. V . 
	ld a,(0cbffh)		;394c	3a ff cb 	: . . 
	bit 1,a		;394f	cb 4f 	. O 
	jr z,l396ah		;3951	28 17 	( . 
	ld a,(ix+007h)		;3953	dd 7e 07 	. ~ . 
	ld de,04400h		;3956	11 00 44 	. . D 
	cp 044h		;3959	fe 44 	. D 
	jr c,l396ah		;395b	38 0d 	8 . 
	ld e,(ix+006h)		;395d	dd 5e 06 	. ^ . 
	ld d,(ix+007h)		;3960	dd 56 07 	. V . 
	cp 0bch		;3963	fe bc 	. . 
	jr c,l396ah		;3965	38 03 	8 . 
	ld de,0bc00h		;3967	11 00 bc 	. . . 
l396ah:
	call sub_3af4h		;396a	cd f4 3a 	. . : 
	ret c			;396d	d8 	. 
	xor a			;396e	af 	. 
	cp (ix+012h)		;396f	dd be 12 	. . . 
	jr nz,l397ah		;3972	20 06 	  . 
	cp (ix+013h)		;3974	dd be 13 	. . . 
	jp z,l3a1dh		;3977	ca 1d 3a 	. . : 
l397ah:
	ld a,(0cbffh)		;397a	3a ff cb 	: . . 
	and 002h		;397d	e6 02 	. . 
	jp nz,l3a1dh		;397f	c2 1d 3a 	. . : 
	ld a,080h		;3982	3e 80 	> . 
	cp (ix+013h)		;3984	dd be 13 	. . . 
	jr c,l39d2h		;3987	38 49 	8 I 
	ld a,(0cc05h)		;3989	3a 05 cc 	: . . 
	cp 0c0h		;398c	fe c0 	. . 
	jp c,l3adch		;398e	da dc 3a 	. . : 
	cp 0e0h		;3991	fe e0 	. . 
	jp nc,l3adch		;3993	d2 dc 3a 	. . : 
	ld c,(ix+012h)		;3996	dd 4e 12 	. N . 
	ld b,(ix+013h)		;3999	dd 46 13 	. F . 
	ld l,(ix+006h)		;399c	dd 6e 06 	. n . 
	ld h,(ix+007h)		;399f	dd 66 07 	. f . 
	ld (0cc0eh),bc		;39a2	ed 43 0e cc 	. C . . 
	add hl,bc			;39a6	09 	. 
	ex de,hl			;39a7	eb 	. 
	ld a,(0cc03h)		;39a8	3a 03 cc 	: . . 
	add a,a			;39ab	87 	. 
	add a,040h		;39ac	c6 40 	. @ 
	ex af,af'			;39ae	08 	. 
	ld a,(0cc02h)		;39af	3a 02 cc 	: . . 
	ld c,a			;39b2	4f 	O 
	ex af,af'			;39b3	08 	. 
	sub c			;39b4	91 	. 
	ld l,000h		;39b5	2e 00 	. . 
	ld h,a			;39b7	67 	g 
	ld a,(0c12bh)		;39b8	3a 2b c1 	: + . 
	and 007h		;39bb	e6 07 	. . 
	ld c,l			;39bd	4d 	M 
	srl a		;39be	cb 3f 	. ? 
	rr c		;39c0	cb 19 	. . 
	ld b,a			;39c2	47 	G 
	or a			;39c3	b7 	. 
	sbc hl,bc		;39c4	ed 42 	. B 
	or a			;39c6	b7 	. 
	sbc hl,de		;39c7	ed 52 	. R 
	add hl,de			;39c9	19 	. 
	jr nc,l39d2h		;39ca	30 06 	0 . 
	set 3,(ix+014h)		;39cc	dd cb 14 de 	. . . . 
	jr l3a17h		;39d0	18 45 	. E 
l39d2h:
	ld a,(0cc05h)		;39d2	3a 05 cc 	: . . 
	cp 0c0h		;39d5	fe c0 	. . 
	jp c,l3adch		;39d7	da dc 3a 	. . : 
	cp 0e0h		;39da	fe e0 	. . 
	jp nc,l3adch		;39dc	d2 dc 3a 	. . : 
	ld c,(ix+012h)		;39df	dd 4e 12 	. N . 
	ld b,(ix+013h)		;39e2	dd 46 13 	. F . 
	ld l,(ix+006h)		;39e5	dd 6e 06 	. n . 
	ld h,(ix+007h)		;39e8	dd 66 07 	. f . 
	ld (0cc0eh),bc		;39eb	ed 43 0e cc 	. C . . 
	add hl,bc			;39ef	09 	. 
	ex de,hl			;39f0	eb 	. 
	ld a,(0cc03h)		;39f1	3a 03 cc 	: . . 
	add a,a			;39f4	87 	. 
	add a,043h		;39f5	c6 43 	. C 
	ld c,a			;39f7	4f 	O 
	ld a,(0cc02h)		;39f8	3a 02 cc 	: . . 
	add a,c			;39fb	81 	. 
	ld l,0ffh		;39fc	2e ff 	. . 
	ld h,a			;39fe	67 	g 
	ld a,(0c12bh)		;39ff	3a 2b c1 	: + . 
	and 007h		;3a02	e6 07 	. . 
	ld c,l			;3a04	4d 	M 
	srl a		;3a05	cb 3f 	. ? 
	rr c		;3a07	cb 19 	. . 
	ld b,a			;3a09	47 	G 
	or a			;3a0a	b7 	. 
	sbc hl,bc		;3a0b	ed 42 	. B 
	or a			;3a0d	b7 	. 
	sbc hl,de		;3a0e	ed 52 	. R 
	add hl,de			;3a10	19 	. 
	jr c,l3a1dh		;3a11	38 0a 	8 . 
	set 2,(ix+014h)		;3a13	dd cb 14 d6 	. . . . 
l3a17h:
	ld (ix+006h),l		;3a17	dd 75 06 	. u . 
	ld (ix+007h),h		;3a1a	dd 74 07 	. t . 
l3a1dh:
	ld a,(0cc08h)		;3a1d	3a 08 cc 	: . . 
	cp 0c0h		;3a20	fe c0 	. . 
	jp c,l3ae2h		;3a22	da e2 3a 	. . : 
	cp 0e0h		;3a25	fe e0 	. . 
	jp c,l3a36h		;3a27	da 36 3a 	. 6 : 
	cp 0f0h		;3a2a	fe f0 	. . 
	jr nc,l3a36h		;3a2c	30 08 	0 . 
	ld a,(0cbffh)		;3a2e	3a ff cb 	: . . 
	bit 4,a		;3a31	cb 67 	. g 
	jp z,l3ac4h		;3a33	ca c4 3a 	. . : 
l3a36h:
	ld l,(ix+003h)		;3a36	dd 6e 03 	. n . 
	ld h,(ix+004h)		;3a39	dd 66 04 	. f . 
	ld bc,(0cb3dh)		;3a3c	ed 4b 3d cb 	. K = . 
	or a			;3a40	b7 	. 
	sbc hl,bc		;3a41	ed 42 	. B 
	ld c,(ix+010h)		;3a43	dd 4e 10 	. N . 
	ld b,(ix+011h)		;3a46	dd 46 11 	. F . 
	ld (0cc0eh),bc		;3a49	ed 43 0e cc 	. C . . 
	add hl,bc			;3a4d	09 	. 
	ld a,b			;3a4e	78 	x 
	cp 080h		;3a4f	fe 80 	. . 
	jr c,l3ac4h		;3a51	38 71 	8 q 
	ex de,hl			;3a53	eb 	. 
	ld a,(0cc07h)		;3a54	3a 07 cc 	: . . 
	add a,a			;3a57	87 	. 
sub_3a58h:
	add a,a			;3a58	87 	. 
	add a,014h		;3a59	c6 14 	. . 
	ld c,a			;3a5b	4f 	O 
	ld a,(0cc01h)		;3a5c	3a 01 cc 	: . . 
	add a,c			;3a5f	81 	. 
	ld l,000h		;3a60	2e 00 	. . 
	ld h,a			;3a62	67 	g 
	ld a,(0cc00h)		;3a63	3a 00 cc 	: . . 
	and 007h		;3a66	e6 07 	. . 
	ld c,000h		;3a68	0e 00 	. . 
	srl a		;3a6a	cb 3f 	. ? 
	rr c		;3a6c	cb 19 	. . 
	ld b,a			;3a6e	47 	G 
	add hl,bc			;3a6f	09 	. 
	ld bc,l0000h		;3a70	01 00 00 	. . . 
	ld a,(0cc08h)		;3a73	3a 08 cc 	: . . 
	cp 0f0h		;3a76	fe f0 	. . 
	jr c,l3aa9h		;3a78	38 2f 	8 / 
	cp 0f8h		;3a7a	fe f8 	. . 
	jr nc,l3aa9h		;3a7c	30 2b 	0 + 
	exx			;3a7e	d9 	. 
	sub 0f0h		;3a7f	d6 f0 	. . 
	add a,a			;3a81	87 	. 
	ld e,a			;3a82	5f 	_ 
	ld d,000h		;3a83	16 00 	. . 
	ld hl,l3ae4h		;3a85	21 e4 3a 	! . : 
	add hl,de			;3a88	19 	. 
	ld c,(hl)			;3a89	4e 	N 
	inc hl			;3a8a	23 	# 
	ld b,(hl)			;3a8b	46 	F 
	set 7,(ix+016h)		;3a8c	dd cb 16 fe 	. . . . 
	ld (ix+017h),c		;3a90	dd 71 17 	. q . 
	ld (ix+018h),b		;3a93	dd 70 18 	. p . 
	push bc			;3a96	c5 	. 
	exx			;3a97	d9 	. 
	pop bc			;3a98	c1 	. 
	or a			;3a99	b7 	. 
	sbc hl,bc		;3a9a	ed 42 	. B 
	ld bc,l0000h		;3a9c	01 00 00 	. . . 
	ld a,(0cbffh)		;3a9f	3a ff cb 	: . . 
	and 080h		;3aa2	e6 80 	. . 
	jr z,l3aa9h		;3aa4	28 03 	( . 
	ld bc,sub_0400h		;3aa6	01 00 04 	. . . 
l3aa9h:
	add hl,bc			;3aa9	09 	. 
	or a			;3aaa	b7 	. 
	sbc hl,de		;3aab	ed 52 	. R 
	add hl,de			;3aad	19 	. 
	jr c,l3ac4h		;3aae	38 14 	8 . 
	set 1,(ix+014h)		;3ab0	dd cb 14 ce 	. . . . 
	or a			;3ab4	b7 	. 
	sbc hl,bc		;3ab5	ed 42 	. B 
	ld bc,(0cb3dh)		;3ab7	ed 4b 3d cb 	. K = . 
	add hl,bc			;3abb	09 	. 
	ld (ix+003h),l		;3abc	dd 75 03 	. u . 
	ld (ix+004h),h		;3abf	dd 74 04 	. t . 
	jr l3ac4h		;3ac2	18 00 	. . 
l3ac4h:
	ld a,(0cbffh)		;3ac4	3a ff cb 	: . . 
	bit 4,a		;3ac7	cb 67 	. g 
	ret z			;3ac9	c8 	. 
	ld hl,0c16ch		;3aca	21 6c c1 	! l . 
	bit 2,(hl)		;3acd	cb 56 	. V 
	ret z			;3acf	c8 	. 
	ld a,(0cc08h)		;3ad0	3a 08 cc 	: . . 
	cp 0cch		;3ad3	fe cc 	. . 
	ret c			;3ad5	d8 	. 
	cp 0e8h		;3ad6	fe e8 	. . 
	ret nc			;3ad8	d0 	. 
	set 3,(hl)		;3ad9	cb de 	. . 
	ret			;3adb	c9 	. 
l3adch:
	ld hl,0cbffh		;3adc	21 ff cb 	! . . 
	jp l3a1dh		;3adf	c3 1d 3a 	. . : 
l3ae2h:
	jr l3ac4h		;3ae2	18 e0 	. . 
l3ae4h:
	add a,b			;3ae4	80 	. 
	inc bc			;3ae5	03 	. 
	add a,b			;3ae6	80 	. 
	ld (bc),a			;3ae7	02 	. 
	add a,b			;3ae8	80 	. 
	ld bc,l007fh+1		;3ae9	01 80 00 	. . . 
	add a,b			;3aec	80 	. 
	nop			;3aed	00 	. 
	add a,b			;3aee	80 	. 
	ld bc,l0280h		;3aef	01 80 02 	. . . 
	add a,b			;3af2	80 	. 
	inc bc			;3af3	03 	. 
sub_3af4h:
	ld l,(ix+003h)		;3af4	dd 6e 03 	. n . 
	ld h,(ix+004h)		;3af7	dd 66 04 	. f . 
	ld bc,(0cb3dh)		;3afa	ed 4b 3d cb 	. K = . 
	or a			;3afe	b7 	. 
	sbc hl,bc		;3aff	ed 42 	. B 
	bit 7,(ix+016h)		;3b01	dd cb 16 7e 	. . . ~ 
	jr z,l3b19h		;3b05	28 12 	( . 
	exx			;3b07	d9 	. 
	ld hl,0cbffh		;3b08	21 ff cb 	! . . 
	set 7,(hl)		;3b0b	cb fe 	. . 
	exx			;3b0d	d9 	. 
	res 7,(ix+016h)		;3b0e	dd cb 16 be 	. . . . 
	ld c,(ix+017h)		;3b12	dd 4e 17 	. N . 
	ld b,(ix+018h)		;3b15	dd 46 18 	. F . 
sub_3b18h:
	add hl,bc			;3b18	09 	. 
l3b19h:
	ld a,(0cc00h)		;3b19	3a 00 cc 	: . . 
	ld c,000h		;3b1c	0e 00 	. . 
	and 007h		;3b1e	e6 07 	. . 
	srl a		;3b20	cb 3f 	. ? 
	rr c		;3b22	cb 19 	. . 
	ld b,a			;3b24	47 	G 
	or a			;3b25	b7 	. 
	sbc hl,bc		;3b26	ed 42 	. B 
	ld bc,07400h		;3b28	01 00 74 	. . t 
	or a			;3b2b	b7 	. 
	sbc hl,bc		;3b2c	ed 42 	. B 
	jp nc,l3bf5h		;3b2e	d2 f5 3b 	. . ; 
	ld b,060h		;3b31	06 60 	. ` 
	add hl,bc			;3b33	09 	. 
	jp nc,l3bf5h		;3b34	d2 f5 3b 	. . ; 
	ex de,hl			;3b37	eb 	. 
	ld a,(0c12bh)		;3b38	3a 2b c1 	: + . 
	and 007h		;3b3b	e6 07 	. . 
	srl a		;3b3d	cb 3f 	. ? 
	rr c		;3b3f	cb 19 	. . 
	ld b,a			;3b41	47 	G 
	add hl,bc			;3b42	09 	. 
	ld bc,0c000h		;3b43	01 00 c0 	. . . 
	or a			;3b46	b7 	. 
	sbc hl,bc		;3b47	ed 42 	. B 
	call nc,sub_3be2h		;3b49	d4 e2 3b 	. . ; 
	ld b,080h		;3b4c	06 80 	. . 
	add hl,bc			;3b4e	09 	. 
	call nc,sub_3beah		;3b4f	d4 ea 3b 	. . ; 
	push de			;3b52	d5 	. 
	push hl			;3b53	e5 	. 
	ld a,(0cbffh)		;3b54	3a ff cb 	: . . 
	and 003h		;3b57	e6 03 	. . 
	jp nz,l3bdch		;3b59	c2 dc 3b 	. . ; 
	ld a,(0cc01h)		;3b5c	3a 01 cc 	: . . 
	sub 004h		;3b5f	d6 04 	. . 
	jr nc,l3b64h		;3b61	30 01 	0 . 
	xor a			;3b63	af 	. 
l3b64h:
	ld b,a			;3b64	47 	G 
	ld c,000h		;3b65	0e 00 	. . 
	ex de,hl			;3b67	eb 	. 
	or a			;3b68	b7 	. 
	sbc hl,bc		;3b69	ed 42 	. B 
	ex de,hl			;3b6b	eb 	. 
	ld a,(0cc02h)		;3b6c	3a 02 cc 	: . . 
	ld b,a			;3b6f	47 	G 
	ld a,080h		;3b70	3e 80 	> . 
	cp (ix+013h)		;3b72	dd be 13 	. . . 
	jr c,l3b82h		;3b75	38 0b 	8 . 
	add hl,bc			;3b77	09 	. 
	exx			;3b78	d9 	. 
	ld hl,0cc03h		;3b79	21 03 cc 	! . . 
	exx			;3b7c	d9 	. 
	call sub_3c08h		;3b7d	cd 08 3c 	. . < 
	jr l3b8dh		;3b80	18 0b 	. . 
l3b82h:
	or a			;3b82	b7 	. 
	sbc hl,bc		;3b83	ed 42 	. B 
	exx			;3b85	d9 	. 
	ld hl,0cc03h		;3b86	21 03 cc 	! . . 
	exx			;3b89	d9 	. 
	call sub_3c08h		;3b8a	cd 08 3c 	. . < 
l3b8dh:
	pop hl			;3b8d	e1 	. 
	pop de			;3b8e	d1 	. 
	ld a,(0cc01h)		;3b8f	3a 01 cc 	: . . 
	ld c,000h		;3b92	0e 00 	. . 
	ld b,a			;3b94	47 	G 
	ex de,hl			;3b95	eb 	. 
	sbc hl,bc		;3b96	ed 42 	. B 
l3b98h:
	ex de,hl			;3b98	eb 	. 
	jr c,l3bfeh		;3b99	38 63 	8 c 
	push de			;3b9b	d5 	. 
	push hl			;3b9c	e5 	. 
	ld a,(0cc02h)		;3b9d	3a 02 cc 	: . . 
	sub 004h		;3ba0	d6 04 	. . 
	jr nc,l3ba5h		;3ba2	30 01 	0 . 
	xor a			;3ba4	af 	. 
l3ba5h:
	ld b,a			;3ba5	47 	G 
	add hl,bc			;3ba6	09 	. 
	exx			;3ba7	d9 	. 
	ld hl,0cc06h		;3ba8	21 06 cc 	! . . 
	exx			;3bab	d9 	. 
	call sub_3c08h		;3bac	cd 08 3c 	. . < 
	pop hl			;3baf	e1 	. 
	pop de			;3bb0	d1 	. 
	ld c,000h		;3bb1	0e 00 	. . 
	or a			;3bb3	b7 	. 
	sbc hl,bc		;3bb4	ed 42 	. B 
	exx			;3bb6	d9 	. 
	ld hl,0cc09h		;3bb7	21 09 cc 	! . . 
	exx			;3bba	d9 	. 
	call sub_3c08h		;3bbb	cd 08 3c 	. . < 
	ld a,(0cc08h)		;3bbe	3a 08 cc 	: . . 
	cp 0f8h		;3bc1	fe f8 	. . 
	jr nc,l3bc8h		;3bc3	30 03 	0 . 
	cp 0f0h		;3bc5	fe f0 	. . 
	ret nc			;3bc7	d0 	. 
l3bc8h:
	call sub_3c30h		;3bc8	cd 30 3c 	. 0 < 
	ld a,(0cc08h)		;3bcb	3a 08 cc 	: . . 
	cp 0c0h		;3bce	fe c0 	. . 
	ret nc			;3bd0	d0 	. 
	ld a,(0cc0bh)		;3bd1	3a 0b cc 	: . . 
	cp 0f0h		;3bd4	fe f0 	. . 
	ret nc			;3bd6	d0 	. 
	ld (0cc08h),a		;3bd7	32 08 cc 	2 . . 
	or a			;3bda	b7 	. 
	ret			;3bdb	c9 	. 
l3bdch:
	xor a			;3bdc	af 	. 
	ld (0cc05h),a		;3bdd	32 05 cc 	2 . . 
	jr l3b8dh		;3be0	18 ab 	. . 
sub_3be2h:
	ld l,c			;3be2	69 	i 
	ld h,b			;3be3	60 	` 
	ld a,0f8h		;3be4	3e f8 	> . 
	add a,h			;3be6	84 	. 
	ld h,a			;3be7	67 	g 
	jr l3bedh		;3be8	18 03 	. . 
sub_3beah:
	ld hl,00800h		;3bea	21 00 08 	! . . 
l3bedh:
	exx			;3bed	d9 	. 
	ld hl,0cbffh		;3bee	21 ff cb 	! . . 
	set 0,(hl)		;3bf1	cb c6 	. . 
	exx			;3bf3	d9 	. 
	ret			;3bf4	c9 	. 
l3bf5h:
	xor a			;3bf5	af 	. 
	ld (0cc05h),a		;3bf6	32 05 cc 	2 . . 
	ld (0cc08h),a		;3bf9	32 08 cc 	2 . . 
	scf			;3bfc	37 	7 
	ret			;3bfd	c9 	. 
l3bfeh:
	ld hl,0cbffh		;3bfe	21 ff cb 	! . . 
	set 3,(hl)		;3c01	cb de 	. . 
	xor a			;3c03	af 	. 
	ld (0cc08h),a		;3c04	32 08 cc 	2 . . 
	ret			;3c07	c9 	. 
sub_3c08h:
	ld a,h			;3c08	7c 	| 
	srl a		;3c09	cb 3f 	. ? 
	and 03eh		;3c0b	e6 3e 	. > 
	exx			;3c0d	d9 	. 
	ld (hl),a			;3c0e	77 	w 
	inc hl			;3c0f	23 	# 
	exx			;3c10	d9 	. 
	ld c,a			;3c11	4f 	O 
	ld a,(0c12bh)		;3c12	3a 2b c1 	: + . 
	rra			;3c15	1f 	. 
sub_3c16h:
	rra			;3c16	1f 	. 
	and 03eh		;3c17	e6 3e 	. > 
	add a,c			;3c19	81 	. 
	and 03eh		;3c1a	e6 3e 	. > 
	ld l,a			;3c1c	6f 	o 
	ld h,000h		;3c1d	26 00 	& . 
	srl d		;3c1f	cb 3a 	. : 
	srl d		;3c21	cb 3a 	. : 
	ld a,d			;3c23	7a 	z 
	exx			;3c24	d9 	. 
	ld (hl),a			;3c25	77 	w 
	inc hl			;3c26	23 	# 
	exx			;3c27	d9 	. 
	call sub_3c77h		;3c28	cd 77 3c 	. w < 
	exx			;3c2b	d9 	. 
	ld (hl),a			;3c2c	77 	w 
	inc hl			;3c2d	23 	# 
	exx			;3c2e	d9 	. 
	ret			;3c2f	c9 	. 
sub_3c30h:
	ld a,(0cc06h)		;3c30	3a 06 cc 	: . . 
	ld c,a			;3c33	4f 	O 
	ld a,(0c12bh)		;3c34	3a 2b c1 	: + . 
	rra			;3c37	1f 	. 
	rra			;3c38	1f 	. 
	and 03eh		;3c39	e6 3e 	. > 
	add a,c			;3c3b	81 	. 
	and 03eh		;3c3c	e6 3e 	. > 
	ld l,a			;3c3e	6f 	o 
	ld h,000h		;3c3f	26 00 	& . 
	ld a,(0cc07h)		;3c41	3a 07 cc 	: . . 
	inc a			;3c44	3c 	< 
	ld d,a			;3c45	57 	W 
	call sub_3c77h		;3c46	cd 77 3c 	. w < 
	cp 0c0h		;3c49	fe c0 	. . 
	ret c			;3c4b	d8 	. 
	ex af,af'			;3c4c	08 	. 
	call sub_3eceh		;3c4d	cd ce 3e 	. . > 
	cp 007h		;3c50	fe 07 	. . 
	jr z,l3c59h		;3c52	28 05 	( . 
	ex af,af'			;3c54	08 	. 
	cp 0fch		;3c55	fe fc 	. . 
	ret nc			;3c57	d0 	. 
	ex af,af'			;3c58	08 	. 
l3c59h:
	ex af,af'			;3c59	08 	. 
	ld c,a			;3c5a	4f 	O 
	and 0e0h		;3c5b	e6 e0 	. . 
	cp 0c0h		;3c5d	fe c0 	. . 
	jr nz,l3c6eh		;3c5f	20 0d 	  . 
	ld a,(0cc08h)		;3c61	3a 08 cc 	: . . 
	and 0e0h		;3c64	e6 e0 	. . 
	cp 0c0h		;3c66	fe c0 	. . 
	jr nz,l3c6eh		;3c68	20 04 	  . 
	xor a			;3c6a	af 	. 
	ld (0cc08h),a		;3c6b	32 08 cc 	2 . . 
l3c6eh:
	ld a,c			;3c6e	79 	y 
	ld (0cc08h),a		;3c6f	32 08 cc 	2 . . 
	ld hl,0cc07h		;3c72	21 07 cc 	! . . 
	inc (hl)			;3c75	34 	4 
	ret			;3c76	c9 	. 
sub_3c77h:
	ld a,017h		;3c77	3e 17 	> . 
	sub d			;3c79	92 	. 
	ld c,a			;3c7a	4f 	O 
	ld a,(0cc00h)		;3c7b	3a 00 cc 	: . . 
	rra			;3c7e	1f 	. 
	rra			;3c7f	1f 	. 
	rra			;3c80	1f 	. 
	and 01fh		;3c81	e6 1f 	. . 
	add a,c			;3c83	81 	. 
l3c84h:
	sub 01ch		;3c84	d6 1c 	. . 
	jr nc,l3c84h		;3c86	30 fc 	0 . 
	add a,01ch		;3c88	c6 1c 	. . 
	ld e,h			;3c8a	5c 	\ 
	srl a		;3c8b	cb 3f 	. ? 
	rr e		;3c8d	cb 1b 	. . 
	srl a		;3c8f	cb 3f 	. ? 
	rr e		;3c91	cb 1b 	. . 
	ld d,a			;3c93	57 	W 
	add hl,de			;3c94	19 	. 
	ld de,l3800h		;3c95	11 00 38 	. . 8 
	add hl,de			;3c98	19 	. 
	di			;3c99	f3 	. 
	call sub_01dch		;3c9a	cd dc 01 	. . . 
	ei			;3c9d	fb 	. 
	ret			;3c9e	c9 	. 
sub_3c9fh:
	call sub_3f09h		;3c9f	cd 09 3f 	. . ? 
	ld hl,l0000h		;3ca2	21 00 00 	! . . 
	ld (0cb3dh),hl		;3ca5	22 3d cb 	" = . 
	ld (0cb3bh),hl		;3ca8	22 3b cb 	" ; . 
	ld a,(0c16dh)		;3cab	3a 6d c1 	: m . 
	bit 6,a		;3cae	cb 77 	. w 
	ret nz			;3cb0	c0 	. 
	ld a,(0cc30h)		;3cb1	3a 30 cc 	: 0 . 
	bit 5,a		;3cb4	cb 6f 	. o 
	jr z,l3cbdh		;3cb6	28 05 	( . 
	ld hl,0c179h		;3cb8	21 79 c1 	! y . 
	set 0,(hl)		;3cbb	cb c6 	. . 
l3cbdh:
	ld a,(0c128h)		;3cbd	3a 28 c1 	: ( . 
	cp 028h		;3cc0	fe 28 	. ( 
	jr nz,l3cd2h		;3cc2	20 0e 	  . 
	ld a,(0c12ah)		;3cc4	3a 2a c1 	: * . 
	cp 0c0h		;3cc7	fe c0 	. . 
	jr c,l3cd2h		;3cc9	38 07 	8 . 
	ld hl,0c179h		;3ccb	21 79 c1 	! y . 
	set 0,(hl)		;3cce	cb c6 	. . 
	set 2,(hl)		;3cd0	cb d6 	. . 
l3cd2h:
	ld a,(0c16dh)		;3cd2	3a 6d c1 	: m . 
	bit 1,a		;3cd5	cb 4f 	. O 
	jp nz,04aabh		;3cd7	c2 ab 4a 	. . J 
	call sub_3f29h		;3cda	cd 29 3f 	. ) ? 
	ld a,(0c16ch)		;3cdd	3a 6c c1 	: l . 
	bit 6,a		;3ce0	cb 77 	. w 
	jr nz,l3cebh		;3ce2	20 07 	  . 
	ld a,(0c16bh)		;3ce4	3a 6b c1 	: k . 
	rra			;3ce7	1f 	. 
	call c,sub_3edfh		;3ce8	dc df 3e 	. . > 
l3cebh:
	ld a,(0c178h)		;3ceb	3a 78 c1 	: x . 
	bit 1,a		;3cee	cb 4f 	. O 
	call nz,04658h		;3cf0	c4 58 46 	. X F 
	ld hl,0c170h		;3cf3	21 70 c1 	! p . 
	inc (hl)			;3cf6	34 	4 
	inc l			;3cf7	2c 	, 
	ld (hl),000h		;3cf8	36 00 	6 . 
	ld hl,0c16bh		;3cfa	21 6b c1 	! k . 
	bit 0,(hl)		;3cfd	cb 46 	. F 
	jp z,l3dbeh		;3cff	ca be 3d 	. . = 
	ld hl,0c131h		;3d02	21 31 c1 	! 1 . 
	bit 1,(hl)		;3d05	cb 4e 	. N 
	call nz,sub_3ebeh		;3d07	c4 be 3e 	. . > 
l3d0ah:
	ld a,(0c16ch)		;3d0a	3a 6c c1 	: l . 
	bit 7,a		;3d0d	cb 7f 	.  
	jr nz,l3d24h		;3d0f	20 13 	  . 
	ld a,(0c178h)		;3d11	3a 78 c1 	: x . 
	rla			;3d14	17 	. 
	jp c,l3d24h		;3d15	da 24 3d 	. $ = 
	ld a,(0cc34h)		;3d18	3a 34 cc 	: 4 . 
	bit 7,a		;3d1b	cb 7f 	.  
	jr z,l3d24h		;3d1d	28 05 	( . 
	ld hl,0c222h		;3d1f	21 22 c2 	! " . 
	set 5,(hl)		;3d22	cb ee 	. . 
l3d24h:
	ld hl,0c16bh		;3d24	21 6b c1 	! k . 
	ld a,(0c222h)		;3d27	3a 22 c2 	: " . 
	bit 5,(hl)		;3d2a	cb 6e 	. n 
	jp nz,0452bh		;3d2c	c2 2b 45 	. + E 
	bit 6,(hl)		;3d2f	cb 76 	. v 
	jp nz,04414h		;3d31	c2 14 44 	. . D 
	ld c,a			;3d34	4f 	O 
	and 038h		;3d35	e6 38 	. 8 
	jp nz,043a0h		;3d37	c2 a0 43 	. . C 
	bit 2,(hl)		;3d3a	cb 56 	. V 
	jr nz,l3d46h		;3d3c	20 08 	  . 
	ld a,(0c127h)		;3d3e	3a 27 c1 	: ' . 
	bit 2,a		;3d41	cb 57 	. W 
	call nz,041c7h		;3d43	c4 c7 41 	. . A 
l3d46h:
	ld a,(0c127h)		;3d46	3a 27 c1 	: ' . 
	bit 0,a		;3d49	cb 47 	. G 
	jr z,l3d6ah		;3d4b	28 1d 	( . 
	ld a,(0c16bh)		;3d4d	3a 6b c1 	: k . 
	bit 1,a		;3d50	cb 4f 	. O 
	jp nz,l3f8fh		;3d52	c2 8f 3f 	. . ? 
	ld a,(0c174h)		;3d55	3a 74 c1 	: t . 
	and 03fh		;3d58	e6 3f 	. ? 
	ld c,a			;3d5a	4f 	O 
	ld a,(0c173h)		;3d5b	3a 73 c1 	: s . 
	and 030h		;3d5e	e6 30 	. 0 
	or 00fh		;3d60	f6 0f 	. . 
	and c			;3d62	a1 	. 
	bit 4,a		;3d63	cb 67 	. g 
	jp nz,l3f58h		;3d65	c2 58 3f 	. X ? 
	jr l3d6fh		;3d68	18 05 	. . 
l3d6ah:
	ld hl,0c173h		;3d6a	21 73 c1 	! s . 
	res 4,(hl)		;3d6d	cb a6 	. . 
l3d6fh:
	call 04017h		;3d6f	cd 17 40 	. . @ 
	call 04295h		;3d72	cd 95 42 	. . B 
	ld de,(0c223h)		;3d75	ed 5b 23 c2 	. [ # . 
	ld hl,(0cb3dh)		;3d79	2a 3d cb 	* = . 
	add hl,de			;3d7c	19 	. 
	ld (0c223h),hl		;3d7d	22 23 c2 	" # . 
	ld a,(0c224h)		;3d80	3a 24 c2 	: $ . 
	cp 008h		;3d83	fe 08 	. . 
	jp c,044cdh		;3d85	da cd 44 	. . D 
	call sub_2052h		;3d88	cd 52 20 	. R   
	ld ix,0c220h		;3d8b	dd 21 20 c2 	. !   . 
	ld hl,0c16bh		;3d8f	21 6b c1 	! k . 
	bit 7,(hl)		;3d92	cb 7e 	. ~ 
	call nz,045b7h		;3d94	c4 b7 45 	. . E 
	ld hl,(0cc10h)		;3d97	2a 10 cc 	* . . 
	ld a,h			;3d9a	7c 	| 
	or l			;3d9b	b5 	. 
	jr nz,l3db3h		;3d9c	20 15 	  . 
	ld a,(0c171h)		;3d9e	3a 71 c1 	: q . 
	or a			;3da1	b7 	. 
	jr z,l3db3h		;3da2	28 0f 	( . 
	ld c,a			;3da4	4f 	O 
	ld a,(0c172h)		;3da5	3a 72 c1 	: r . 
	cp c			;3da8	b9 	. 
	jr z,l3db3h		;3da9	28 08 	( . 
	ld b,a			;3dab	47 	G 
	ld a,c			;3dac	79 	y 
	ld (0c172h),a		;3dad	32 72 c1 	2 r . 
	call 0531fh		;3db0	cd 1f 53 	. . S 
l3db3h:
	call 0477eh		;3db3	cd 7e 47 	. ~ G 
	ld b,00ch		;3db6	06 0c 	. . 
	ld ix,0c220h		;3db8	dd 21 20 c2 	. !   . 
	rst 28h			;3dbc	ef 	. 
	ret			;3dbd	c9 	. 
l3dbeh:
	ld a,(0c115h)		;3dbe	3a 15 c1 	: . . 
	cp 003h		;3dc1	fe 03 	. . 
	jr nz,l3dd4h		;3dc3	20 0f 	  . 
	ld a,(0c131h)		;3dc5	3a 31 c1 	: 1 . 
	bit 0,a		;3dc8	cb 47 	. G 
	jr nz,l3dd4h		;3dca	20 08 	  . 
	ld hl,0c175h		;3dcc	21 75 c1 	! u . 
	bit 7,(hl)		;3dcf	cb 7e 	. ~ 
	jp z,04fa4h		;3dd1	ca a4 4f 	. . O 
l3dd4h:
	ld hl,0c16bh		;3dd4	21 6b c1 	! k . 
	set 0,(hl)		;3dd7	cb c6 	. . 
	ld de,0c220h		;3dd9	11 20 c2 	.   . 
	ld a,080h		;3ddc	3e 80 	> . 
	ld b,00ch		;3dde	06 0c 	. . 
	ld hl,l09d1h		;3de0	21 d1 09 	! . . 
	call sub_0971h		;3de3	cd 71 09 	. q . 
	ld hl,0c222h		;3de6	21 22 c2 	! " . 
	ld (hl),0c0h		;3de9	36 c0 	6 . 
	inc l			;3deb	2c 	, 
	inc l			;3dec	2c 	, 
	ld (hl),056h		;3ded	36 56 	6 V 
	inc l			;3def	2c 	, 
	inc l			;3df0	2c 	, 
	inc l			;3df1	2c 	, 
	ld (hl),060h		;3df2	36 60 	6 ` 
	inc l			;3df4	2c 	, 
	call sub_3eafh		;3df5	cd af 3e 	. . > 
	ld a,001h		;3df8	3e 01 	> . 
	ld (0c171h),a		;3dfa	32 71 c1 	2 q . 
	ld a,002h		;3dfd	3e 02 	> . 
	call sub_00a4h		;3dff	cd a4 00 	. . . 
	di			;3e02	f3 	. 
	call sub_0213h		;3e03	cd 13 02 	. . . 
	call sub_023bh		;3e06	cd 3b 02 	. ; . 
	call sub_16f7h		;3e09	cd f7 16 	. . . 
	ld hl,l0000h		;3e0c	21 00 00 	! . . 
	ld (0cb3dh),hl		;3e0f	22 3d cb 	" = . 
	ld (0cb3bh),hl		;3e12	22 3b cb 	" ; . 
	ld a,002h		;3e15	3e 02 	> . 
	call sub_0b13h		;3e17	cd 13 0b 	. . . 
	ld hl,09740h		;3e1a	21 40 97 	! @ . 
	ld de,l217fh+1		;3e1d	11 80 21 	. . ! 
	ld bc,l0180h		;3e20	01 80 01 	. . . 
	call sub_02adh		;3e23	cd ad 02 	. . . 
l3e26h:
	call 04295h		;3e26	cd 95 42 	. . B 
	ld a,(0c234h)		;3e29	3a 34 c2 	: 4 . 
	bit 1,a		;3e2c	cb 4f 	. O 
	jr z,l3e26h		;3e2e	28 f6 	( . 
	ld hl,0c16ch		;3e30	21 6c c1 	! l . 
	set 5,(hl)		;3e33	cb ee 	. . 
	call sub_3e5bh		;3e35	cd 5b 3e 	. [ > 
	call sub_3eceh		;3e38	cd ce 3e 	. . > 
	cp 001h		;3e3b	fe 01 	. . 
	jr z,l3e43h		;3e3d	28 04 	( . 
	cp 002h		;3e3f	fe 02 	. . 
	jr nz,l3e48h		;3e41	20 05 	  . 
l3e43h:
	ld hl,0c16ch		;3e43	21 6c c1 	! l . 
	set 1,(hl)		;3e46	cb ce 	. . 
l3e48h:
	cp 005h		;3e48	fe 05 	. . 
	jr z,l3e50h		;3e4a	28 04 	( . 
	cp 00ah		;3e4c	fe 0a 	. . 
	jr nz,l3e55h		;3e4e	20 05 	  . 
l3e50h:
	ld hl,0c16ch		;3e50	21 6c c1 	! l . 
	set 2,(hl)		;3e53	cb d6 	. . 
l3e55h:
	call 052eah		;3e55	cd ea 52 	. . R 
	jp l3d0ah		;3e58	c3 0a 3d 	. . = 
sub_3e5bh:
	ld hl,0c170h		;3e5b	21 70 c1 	! p . 
	ld (hl),000h		;3e5e	36 00 	6 . 
	call 051e6h		;3e60	cd e6 51 	. . Q 
	ld a,002h		;3e63	3e 02 	> . 
	call sub_0b13h		;3e65	cd 13 0b 	. . . 
	ld b,004h		;3e68	06 04 	. . 
l3e6ah:
	push bc			;3e6a	c5 	. 
	ld hl,0c10ch		;3e6b	21 0c c1 	! . . 
	inc (hl)			;3e6e	34 	4 
	ld a,001h		;3e6f	3e 01 	> . 
	call sub_00a4h		;3e71	cd a4 00 	. . . 
	ld hl,08000h		;3e74	21 00 80 	! . . 
	ld de,l2000h		;3e77	11 00 20 	. .   
	ld bc,l0180h		;3e7a	01 80 01 	. . . 
	call sub_02adh		;3e7d	cd ad 02 	. . . 
	pop bc			;3e80	c1 	. 
	djnz l3e6ah		;3e81	10 e7 	. . 
	ld a,080h		;3e83	3e 80 	> . 
	ld (0c222h),a		;3e85	32 22 c2 	2 " . 
	call sub_3ea5h		;3e88	cd a5 3e 	. . > 
	ld hl,0c16ch		;3e8b	21 6c c1 	! l . 
	call sub_024eh		;3e8e	cd 4e 02 	. N . 
	ei			;3e91	fb 	. 
	ld a,002h		;3e92	3e 02 	> . 
	call sub_00a4h		;3e94	cd a4 00 	. . . 
	ld hl,0cc84h		;3e97	21 84 cc 	! . . 
	set 0,(hl)		;3e9a	cb c6 	. . 
	ld a,003h		;3e9c	3e 03 	> . 
	call sub_00a4h		;3e9e	cd a4 00 	. . . 
	call sub_0224h		;3ea1	cd 24 02 	. $ . 
	ret			;3ea4	c9 	. 
sub_3ea5h:
	ld hl,0c220h		;3ea5	21 20 c2 	!   . 
	xor a			;3ea8	af 	. 
	ld b,00ch		;3ea9	06 0c 	. . 
	call sub_22f4h		;3eab	cd f4 22 	. . " 
	ret			;3eae	c9 	. 
sub_3eafh:
	ld hl,0c38ch		;3eaf	21 8c c3 	! . . 
	ld de,0ffe0h		;3eb2	11 e0 ff 	. . . 
	ld b,00ch		;3eb5	06 0c 	. . 
	ld a,0ffh		;3eb7	3e ff 	> . 
l3eb9h:
	ld (hl),a			;3eb9	77 	w 
	add hl,de			;3eba	19 	. 
	djnz l3eb9h		;3ebb	10 fc 	. . 
	ret			;3ebd	c9 	. 
sub_3ebeh:
	res 1,(hl)		;3ebe	cb 8e 	. . 
	ld a,(0c134h)		;3ec0	3a 34 c1 	: 4 . 
	sub 00ch		;3ec3	d6 0c 	. . 
	ret z			;3ec5	c8 	. 
	jp nc,0648dh		;3ec6	d2 8d 64 	. . d 
	neg		;3ec9	ed 44 	. D 
	jp 064a1h		;3ecb	c3 a1 64 	. . d 
sub_3eceh:
	ld a,(0c128h)		;3ece	3a 28 c1 	: ( . 
	ld l,a			;3ed1	6f 	o 
	ld h,000h		;3ed2	26 00 	& . 
	ld a,007h		;3ed4	3e 07 	> . 
	call sub_0b13h		;3ed6	cd 13 0b 	. . . 
	ld de,08000h		;3ed9	11 00 80 	. . . 
	add hl,de			;3edc	19 	. 
	ld a,(hl)			;3edd	7e 	~ 
	ret			;3ede	c9 	. 
sub_3edfh:
	ld a,(0c170h)		;3edf	3a 70 c1 	: p . 
	cp 030h		;3ee2	fe 30 	. 0 
	jr c,l3ef4h		;3ee4	38 0e 	8 . 
	ld hl,0c16ch		;3ee6	21 6c c1 	! l . 
	set 6,(hl)		;3ee9	cb f6 	. . 
	ld hl,0c131h		;3eeb	21 31 c1 	! 1 . 
	res 0,(hl)		;3eee	cb 86 	. . 
	call sub_3ea5h		;3ef0	cd a5 3e 	. . > 
	ret			;3ef3	c9 	. 
l3ef4h:
	ex af,af'			;3ef4	08 	. 
	ld a,(0c131h)		;3ef5	3a 31 c1 	: 1 . 
	rra			;3ef8	1f 	. 
	ret nc			;3ef9	d0 	. 
	ex af,af'			;3efa	08 	. 
	add a,002h		;3efb	c6 02 	. . 
	ld c,a			;3efd	4f 	O 
	and 003h		;3efe	e6 03 	. . 
l3f00h:
	ret nz			;3f00	c0 	. 
	bit 3,c		;3f01	cb 59 	. Y 
	jp z,sub_3eafh		;3f03	ca af 3e 	. . > 
	jp sub_3ea5h		;3f06	c3 a5 3e 	. . > 
sub_3f09h:
	ld hl,(0cb3dh)		;3f09	2a 3d cb 	* = . 
	xor a			;3f0c	af 	. 
	or l			;3f0d	b5 	. 
	jr nz,l3f12h		;3f0e	20 02 	  . 
	or h			;3f10	b4 	. 
	ret z			;3f11	c8 	. 
l3f12h:
	ld c,080h		;3f12	0e 80 	. . 
	rl l		;3f14	cb 15 	. . 
	rl h		;3f16	cb 14 	. . 
	rr c		;3f18	cb 19 	. . 
	sra c		;3f1a	cb 29 	. ) 
	ld a,(0cc00h)		;3f1c	3a 00 cc 	: . . 
	add a,h			;3f1f	84 	. 
	cp 0e0h		;3f20	fe e0 	. . 
	jr c,l3f25h		;3f22	38 01 	8 . 
	add a,c			;3f24	81 	. 
l3f25h:
	ld (0cc00h),a		;3f25	32 00 cc 	2 . . 
	ret			;3f28	c9 	. 
sub_3f29h:
	ld a,(0c11fh)		;3f29	3a 1f c1 	: . . 
	and 03fh		;3f2c	e6 3f 	. ? 
	ld c,a			;3f2e	4f 	O 
	ld hl,0c174h		;3f2f	21 74 c1 	! t . 
	ld a,(0c16ch)		;3f32	3a 6c c1 	: l . 
	rla			;3f35	17 	. 
	jr c,l3f4ch		;3f36	38 14 	8 . 
	rla			;3f38	17 	. 
	jr nc,l3f48h		;3f39	30 0d 	0 . 
	ld a,(0c178h)		;3f3b	3a 78 c1 	: x . 
	bit 2,a		;3f3e	cb 57 	. W 
	jr nz,l3f48h		;3f40	20 06 	  . 
	ld a,(0cc30h)		;3f42	3a 30 cc 	: 0 . 
	rra			;3f45	1f 	. 
	jr nc,l3f4eh		;3f46	30 06 	0 . 
l3f48h:
	ld c,000h		;3f48	0e 00 	. . 
	jr l3f4eh		;3f4a	18 02 	. . 
l3f4ch:
	ld c,008h		;3f4c	0e 08 	. . 
l3f4eh:
	ld (hl),c			;3f4e	71 	q 
	dec l			;3f4f	2d 	- 
	ld a,c			;3f50	79 	y 
	xor 0ffh		;3f51	ee ff 	. . 
	or (hl)			;3f53	b6 	. 
	or 00fh		;3f54	f6 0f 	. . 
	ld (hl),a			;3f56	77 	w 
	ret			;3f57	c9 	. 
l3f58h:
	ld hl,0c173h		;3f58	21 73 c1 	! s . 
	res 4,(hl)		;3f5b	cb a6 	. . 
	ld hl,0c3a2h		;3f5d	21 a2 c3 	! . . 
	bit 7,(hl)		;3f60	cb 7e 	. ~ 
	jr z,l3f6ch		;3f62	28 08 	( . 
	ld hl,0c422h		;3f64	21 22 c4 	! " . 
	bit 7,(hl)		;3f67	cb 7e 	. ~ 
	jp nz,l3d6fh		;3f69	c2 6f 3d 	. o = 
l3f6ch:
	ld a,090h		;3f6c	3e 90 	> . 
	call sub_0a99h		;3f6e	cd 99 0a 	. . . 
	set 7,(hl)		;3f71	cb fe 	. . 
	ld hl,0c16bh		;3f73	21 6b c1 	! k . 
	set 1,(hl)		;3f76	cb ce 	. . 
	ld hl,0c170h		;3f78	21 70 c1 	! p . 
	ld (hl),000h		;3f7b	36 00 	6 . 
	inc l			;3f7d	2c 	, 
	ld (hl),014h		;3f7e	36 14 	6 . 
l3f80h:
	ld a,(0c16bh)		;3f80	3a 6b c1 	: k . 
	bit 2,a		;3f83	cb 57 	. W 
	jr nz,l3f8fh		;3f85	20 08 	  . 
	ld (hl),009h		;3f87	36 09 	6 . 
	bit 3,a		;3f89	cb 5f 	. _ 
	jr z,l3f8fh		;3f8b	28 02 	( . 
	ld (hl),00bh		;3f8d	36 0b 	6 . 
l3f8fh:
	ld a,(0c170h)		;3f8f	3a 70 c1 	: p . 
	or a			;3f92	b7 	. 
	jp z,l3d6fh		;3f93	ca 6f 3d 	. o = 
	ld c,a			;3f96	4f 	O 
	and 003h		;3f97	e6 03 	. . 
	jp nz,l3d6fh		;3f99	c2 6f 3d 	. o = 
	ld a,(0c16bh)		;3f9c	3a 6b c1 	: k . 
	bit 2,a		;3f9f	cb 57 	. W 
	jr nz,l3fb1h		;3fa1	20 0e 	  . 
	bit 3,c		;3fa3	cb 59 	. Y 
	jr nz,l3fb1h		;3fa5	20 0a 	  . 
	ld a,(0c172h)		;3fa7	3a 72 c1 	: r . 
	inc a			;3faa	3c 	< 
	ld (0c171h),a		;3fab	32 71 c1 	2 q . 
	jp l3d6fh		;3fae	c3 6f 3d 	. o = 
l3fb1h:
	ld hl,0c16bh		;3fb1	21 6b c1 	! k . 
	res 1,(hl)		;3fb4	cb 8e 	. . 
	jp l3d6fh		;3fb6	c3 6f 3d 	. o = 
	ld b,004h		;3fb9	06 04 	. . 
	ld de,(0c17ch)		;3fbb	ed 5b 7c c1 	. [ | . 
	ld a,0a0h		;3fbf	3e a0 	> . 
	cp e			;3fc1	bb 	. 
	ld a,08ch		;3fc2	3e 8c 	> . 
	jr z,l3fc7h		;3fc4	28 01 	( . 
	add a,b			;3fc6	80 	. 
l3fc7h:
	ld hl,l0999h		;3fc7	21 99 09 	! . . 
	call sub_0971h		;3fca	cd 71 09 	. q . 
	ld (ix+002h),081h		;3fcd	dd 36 02 81 	. 6 . . 
	ld a,(0c224h)		;3fd1	3a 24 c2 	: $ . 
	add a,003h		;3fd4	c6 03 	. . 
	ld (ix+003h),080h		;3fd6	dd 36 03 80 	. 6 . . 
	ld (ix+004h),a		;3fda	dd 77 04 	. w . 
	ld a,(0c227h)		;3fdd	3a 27 c2 	: ' . 
	add a,0feh		;3fe0	c6 fe 	. . 
	ld (ix+007h),a		;3fe2	dd 77 07 	. w . 
	ld (ix+010h),020h		;3fe5	dd 36 10 20 	. 6 .   
	ld (ix+011h),000h		;3fe9	dd 36 11 00 	. 6 . . 
	ld a,(0c16bh)		;3fed	3a 6b c1 	: k . 
	bit 3,a		;3ff0	cb 5f 	. _ 
	jr nz,l3ffeh		;3ff2	20 0a 	  . 
	ld (ix+012h),000h		;3ff4	dd 36 12 00 	. 6 . . 
	ld (ix+013h),002h		;3ff8	dd 36 13 02 	. 6 . . 
	jr $+10		;3ffc	18 08 	. . 
l3ffeh:
	defb 0ddh,036h		;3ffe	dd 36 	. 6 
