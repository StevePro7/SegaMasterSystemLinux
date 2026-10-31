; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank1.asm disassembly/bank1.bin

	org	00000h

l0000h:
	ld (de),a			;0000	12 	. 
l0001h:
	nop			;0001	00 	. 
l0002h:
	ld (ix+013h),0feh		;0002	dd 36 13 fe 	. 6 . . 
l0006h:
	ld (ix+00ch),00ch		;0006	dd 36 0c 0c 	. 6 . . 
l000ah:
	ld (ix+02ch),00dh		;000a	dd 36 2c 0d 	. 6 , . 
l000eh:
	ld (ix+04ch),00eh		;000e	dd 36 4c 0e 	. 6 L . 
l0012h:
	ld (ix+06ch),00fh		;0012	dd 36 6c 0f 	. 6 l . 
l0016h:
	ret			;0016	c9 	. 
	ld hl,0c16bh		;0017	21 6b c1 	! k . 
	ld a,(0c174h)		;001a	3a 74 c1 	: t . 
	and 03fh		;001d	e6 3f 	. ? 
	ld c,a			;001f	4f 	O 
l0020h:
	ld a,(0c173h)		;0020	3a 73 c1 	: s . 
	and c			;0023	a1 	. 
	bit 4,(hl)		;0024	cb 66 	. f 
	jp nz,04128h		;0026	c2 28 41 	. ( A 
	bit 5,a		;0029	cb 6f 	. o 
	jp nz,04105h		;002b	c2 05 41 	. . A 
	ld a,c			;002e	79 	y 
	bit 2,(hl)		;002f	cb 56 	. V 
l0031h:
	jp nz,041d4h		;0031	c2 d4 41 	. . A 
	bit 2,a		;0034	cb 57 	. W 
	jp nz,04093h		;0036	c2 93 40 	. . @ 
	bit 3,a		;0039	cb 5f 	. _ 
	jp nz,04081h		;003b	c2 81 40 	. . @ 
	call 046ech		;003e	cd ec 46 	. . F 
	ld hl,(0c232h)		;0041	2a 32 c2 	* 2 . 
	ld de,l0000h		;0044	11 00 00 	. . . 
	or a			;0047	b7 	. 
	sbc hl,de		;0048	ed 52 	. R 
	ret z			;004a	c8 	. 
	ld d,080h		;004b	16 80 	. . 
	add hl,de			;004d	19 	. 
	add hl,de			;004e	19 	. 
	ex de,hl			;004f	eb 	. 
	ex af,af'			;0050	08 	. 
l0051h:
	ld a,(0c16ch)		;0051	3a 6c c1 	: l . 
	bit 3,a		;0054	cb 5f 	. _ 
	ld hl,040f9h		;0056	21 f9 40 	! . @ 
	jr z,l005eh		;0059	28 03 	( . 
	ld hl,04101h		;005b	21 01 41 	! . A 
l005eh:
	ld c,(hl)			;005e	4e 	N 
	inc hl			;005f	23 	# 
l0060h:
	ld b,(hl)			;0060	46 	F 
	ex af,af'			;0061	08 	. 
	jr c,l0068h		;0062	38 04 	8 . 
	inc hl			;0064	23 	# 
	ld c,(hl)			;0065	4e 	N 
	inc hl			;0066	23 	# 
	ld b,(hl)			;0067	46 	F 
l0068h:
	ex de,hl			;0068	eb 	. 
	add hl,bc			;0069	09 	. 
	ld de,l0006h+1		;006a	11 07 00 	. . . 
	add hl,de			;006d	19 	. 
	ld bc,l000eh		;006e	01 0e 00 	. . . 
	or a			;0071	b7 	. 
	sbc hl,bc		;0072	ed 42 	. B 
	add hl,bc			;0074	09 	. 
	jr nc,l007ah		;0075	30 03 	0 . 
	ld hl,l0006h+1		;0077	21 07 00 	! . . 
l007ah:
	or a			;007a	b7 	. 
	sbc hl,de		;007b	ed 52 	. R 
	ld (0c232h),hl		;007d	22 32 c2 	" 2 . 
l0080h:
	ret			;0080	c9 	. 
	res 3,(hl)		;0081	cb 9e 	. . 
	ld hl,(0c232h)		;0083	2a 32 c2 	* 2 . 
	ld de,040f9h		;0086	11 f9 40 	. . @ 
	call 040b2h		;0089	cd b2 40 	. . @ 
	ld (0c232h),hl		;008c	22 32 c2 	" 2 . 
	call 046ech		;008f	cd ec 46 	. . F 
	ret			;0092	c9 	. 
	set 3,(hl)		;0093	cb de 	. . 
	ld de,(0c232h)		;0095	ed 5b 32 c2 	. [ 2 . 
	ld hl,l0000h		;0099	21 00 00 	! . . 
	or a			;009c	b7 	. 
	sbc hl,de		;009d	ed 52 	. R 
	ld de,040f9h		;009f	11 f9 40 	. . @ 
	call 040b2h		;00a2	cd b2 40 	. . @ 
	ex de,hl			;00a5	eb 	. 
	ld hl,l0000h		;00a6	21 00 00 	! . . 
	sbc hl,de		;00a9	ed 52 	. R 
	ld (0c232h),hl		;00ab	22 32 c2 	" 2 . 
	call 046ech		;00ae	cd ec 46 	. . F 
	ret			;00b1	c9 	. 
	ex af,af'			;00b2	08 	. 
	ld a,(0c16ch)		;00b3	3a 6c c1 	: l . 
	bit 3,a		;00b6	cb 5f 	. _ 
	jr z,l00bdh		;00b8	28 03 	( . 
	ld de,04101h		;00ba	11 01 41 	. . A 
l00bdh:
	ex af,af'			;00bd	08 	. 
	push de			;00be	d5 	. 
	ld de,08000h		;00bf	11 00 80 	. . . 
	add hl,de			;00c2	19 	. 
	ld bc,08104h		;00c3	01 04 81 	. . . 
	bit 4,a		;00c6	cb 67 	. g 
	jr z,l00cdh		;00c8	28 03 	( . 
	ld bc,08118h		;00ca	01 18 81 	. . . 
l00cdh:
	or a			;00cd	b7 	. 
	sbc hl,bc		;00ce	ed 42 	. B 
	add hl,bc			;00d0	09 	. 
	ex (sp),hl			;00d1	e3 	. 
	ld c,(hl)			;00d2	4e 	N 
	inc hl			;00d3	23 	# 
	ld b,(hl)			;00d4	46 	F 
	jr nc,l00dbh		;00d5	30 04 	0 . 
	inc hl			;00d7	23 	# 
	ld c,(hl)			;00d8	4e 	N 
	inc hl			;00d9	23 	# 
	ld b,(hl)			;00da	46 	F 
l00dbh:
	pop hl			;00db	e1 	. 
	add hl,bc			;00dc	09 	. 
	add hl,de			;00dd	19 	. 
	ld de,0ff03h		;00de	11 03 ff 	. . . 
	bit 4,a		;00e1	cb 67 	. g 
	jr z,l00e8h		;00e3	28 03 	( . 
	ld de,0feefh		;00e5	11 ef fe 	. . . 
l00e8h:
	add hl,de			;00e8	19 	. 
	ld bc,l000eh		;00e9	01 0e 00 	. . . 
	or a			;00ec	b7 	. 
	sbc hl,bc		;00ed	ed 42 	. B 
	add hl,bc			;00ef	09 	. 
l00f0h:
	jr nc,l00f5h		;00f0	30 03 	0 . 
l00f2h:
	ld hl,l0006h+1		;00f2	21 07 00 	! . . 
l00f5h:
	or a			;00f5	b7 	. 
	sbc hl,de		;00f6	ed 52 	. R 
	ret			;00f8	c9 	. 
	jp p,00effh		;00f9	f2 ff 0e 	. . . 
	nop			;00fc	00 	. 
	call m,sub_04ffh		;00fd	fc ff 04 	. . . 
l0100h:
	nop			;0100	00 	. 
	call m,sub_04ffh		;0101	fc ff 04 	. . . 
	nop			;0104	00 	. 
	ld a,08eh		;0105	3e 8e 	> . 
	call 00a99h		;0107	cd 99 0a 	. . . 
l010ah:
	exx			;010a	d9 	. 
	ld hl,0c173h		;010b	21 73 c1 	! s . 
	res 5,(hl)		;010e	cb ae 	. . 
	exx			;0110	d9 	. 
	ld a,(0c174h)		;0111	3a 74 c1 	: t . 
	and 03fh		;0114	e6 3f 	. ? 
	ld hl,0c16bh		;0116	21 6b c1 	! k . 
	set 4,(hl)		;0119	cb e6 	. . 
	ld hl,l01f0h		;011b	21 f0 01 	! . . 
	and 010h		;011e	e6 10 	. . 
l0120h:
	jr z,l0125h		;0120	28 03 	( . 
	ld hl,l02b3h		;0122	21 b3 02 	! . . 
l0125h:
	ld (0c230h),hl		;0125	22 30 c2 	" 0 . 
	ld a,(0c174h)		;0128	3a 74 c1 	: t . 
	and 00ch		;012b	e6 0c 	. . 
	jr nz,l013eh		;012d	20 0f 	  . 
	ld hl,(0c232h)		;012f	2a 32 c2 	* 2 . 
	ld de,0ffffh		;0132	11 ff ff 	. . . 
	add hl,de			;0135	19 	. 
	ld a,080h		;0136	3e 80 	> . 
	cp h			;0138	bc 	. 
	jr c,l013eh		;0139	38 03 	8 . 
	ld (0c232h),hl		;013b	22 32 c2 	" 2 . 
l013eh:
	ld a,(0c16bh)		;013e	3a 6b c1 	: k . 
	bit 2,a		;0141	cb 57 	. W 
l0143h:
	ld a,(0c174h)		;0143	3a 74 c1 	: t . 
	jr nz,l0178h		;0146	20 30 	  0 
	and 03fh		;0148	e6 3f 	. ? 
	ld c,a			;014a	4f 	O 
	and 00ch		;014b	e6 0c 	. . 
	jr z,l018fh		;014d	28 40 	( @ 
	ld a,c			;014f	79 	y 
	ld hl,(0c232h)		;0150	2a 32 c2 	* 2 . 
	bit 3,a		;0153	cb 5f 	. _ 
	jr nz,l016dh		;0155	20 16 	  . 
	ex de,hl			;0157	eb 	. 
	ld hl,l0000h		;0158	21 00 00 	! . . 
	or a			;015b	b7 	. 
	sbc hl,de		;015c	ed 52 	. R 
	ld de,040fdh		;015e	11 fd 40 	. . @ 
	call 040b2h		;0161	cd b2 40 	. . @ 
	ex de,hl			;0164	eb 	. 
	ld hl,l0000h		;0165	21 00 00 	! . . 
	or a			;0168	b7 	. 
	sbc hl,de		;0169	ed 52 	. R 
	jr l018ch		;016b	18 1f 	. . 
l016dh:
	ld de,040fdh		;016d	11 fd 40 	. . @ 
l0170h:
	call 040b2h		;0170	cd b2 40 	. . @ 
	ld (0c232h),hl		;0173	22 32 c2 	" 2 . 
	jr l018ch		;0176	18 14 	. . 
l0178h:
	ld hl,0418fh		;0178	21 8f 41 	! . A 
	push hl			;017b	e5 	. 
	ld de,040fdh		;017c	11 fd 40 	. . @ 
	bit 2,a		;017f	cb 57 	. W 
	jp nz,04262h		;0181	c2 62 42 	. b B 
	bit 3,a		;0184	cb 5f 	. _ 
	jp nz,04221h		;0186	c2 21 42 	. ! B 
	jp 041e9h		;0189	c3 e9 41 	. . A 
l018ch:
	ld (0c232h),hl		;018c	22 32 c2 	" 2 . 
l018fh:
	ret			;018f	c9 	. 
	ld hl,0c16bh		;0190	21 6b c1 	! k . 
	ld a,(hl)			;0193	7e 	~ 
	and 042h		;0194	e6 42 	. B 
l0196h:
	ret nz			;0196	c0 	. 
	ld a,(0c174h)		;0197	3a 74 c1 	: t . 
	and 00ch		;019a	e6 0c 	. . 
	jr z,l01b5h		;019c	28 17 	( . 
	ld c,a			;019e	4f 	O 
	bit 2,(hl)		;019f	cb 56 	. V 
	ld a,016h		;01a1	3e 16 	> . 
	jr nz,l01b1h		;01a3	20 0c 	  . 
	res 3,(hl)		;01a5	cb 9e 	. . 
	bit 3,c		;01a7	cb 59 	. Y 
	ld a,004h		;01a9	3e 04 	> . 
	jr nz,l01b1h		;01ab	20 04 	  . 
	set 3,(hl)		;01ad	cb de 	. . 
	ld a,008h		;01af	3e 08 	> . 
l01b1h:
	ld (0c171h),a		;01b1	32 71 c1 	2 q . 
	ret			;01b4	c9 	. 
l01b5h:
	bit 2,(hl)		;01b5	cb 56 	. V 
	ld a,016h		;01b7	3e 16 	> . 
	jr nz,l01c3h		;01b9	20 08 	  . 
	bit 3,(hl)		;01bb	cb 5e 	. ^ 
	ld a,004h		;01bd	3e 04 	> . 
	jr z,l01c3h		;01bf	28 02 	( . 
	ld a,008h		;01c1	3e 08 	> . 
l01c3h:
	ld (0c171h),a		;01c3	32 71 c1 	2 q . 
	ret			;01c6	c9 	. 
	ld hl,0c16bh		;01c7	21 6b c1 	! k . 
	bit 2,(hl)		;01ca	cb 56 	. V 
	ret nz			;01cc	c0 	. 
	set 2,(hl)		;01cd	cb d6 	. . 
	xor a			;01cf	af 	. 
	ld (0c170h),a		;01d0	32 70 c1 	2 p . 
	ret			;01d3	c9 	. 
	res 3,(hl)		;01d4	cb 9e 	. . 
	call 046ech		;01d6	cd ec 46 	. . F 
	ld de,040f9h		;01d9	11 f9 40 	. . @ 
	ld a,(0c174h)		;01dc	3a 74 c1 	: t . 
	and 03fh		;01df	e6 3f 	. ? 
	bit 2,a		;01e1	cb 57 	. W 
	jr nz,l0262h		;01e3	20 7d 	  } 
	bit 3,a		;01e5	cb 5f 	. _ 
	jr nz,l0221h		;01e7	20 38 	  8 
	push de			;01e9	d5 	. 
	ld hl,(0c232h)		;01ea	2a 32 c2 	* 2 . 
	ld de,08000h		;01ed	11 00 80 	. . . 
l01f0h:
	add hl,de			;01f0	19 	. 
	ld bc,080c8h		;01f1	01 c8 80 	. . . 
	or a			;01f4	b7 	. 
	sbc hl,bc		;01f5	ed 42 	. B 
	pop de			;01f7	d1 	. 
	ret z			;01f8	c8 	. 
	add hl,bc			;01f9	09 	. 
	ex de,hl			;01fa	eb 	. 
	ld c,(hl)			;01fb	4e 	N 
	inc hl			;01fc	23 	# 
	ld b,(hl)			;01fd	46 	F 
	jr nc,l0204h		;01fe	30 04 	0 . 
l0200h:
	inc hl			;0200	23 	# 
sub_0201h:
	ld c,(hl)			;0201	4e 	N 
sub_0202h:
	inc hl			;0202	23 	# 
l0203h:
	ld b,(hl)			;0203	46 	F 
l0204h:
	ex de,hl			;0204	eb 	. 
	add hl,bc			;0205	09 	. 
	ld de,08000h		;0206	11 00 80 	. . . 
	add hl,de			;0209	19 	. 
	ld de,0ff3fh		;020a	11 3f ff 	. ? . 
	add hl,de			;020d	19 	. 
	ld bc,l000eh		;020e	01 0e 00 	. . . 
	or a			;0211	b7 	. 
	sbc hl,bc		;0212	ed 42 	. B 
	add hl,bc			;0214	09 	. 
	jr nc,l021ah		;0215	30 03 	0 . 
	ld hl,l0006h+1		;0217	21 07 00 	! . . 
l021ah:
	or a			;021a	b7 	. 
	sbc hl,de		;021b	ed 52 	. R 
	ld (0c232h),hl		;021d	22 32 c2 	" 2 . 
	ret			;0220	c9 	. 
l0221h:
	push de			;0221	d5 	. 
	ld hl,(0c232h)		;0222	2a 32 c2 	* 2 . 
	ld de,08000h		;0225	11 00 80 	. . . 
	add hl,de			;0228	19 	. 
	ld bc,08118h		;0229	01 18 81 	. . . 
	bit 4,a		;022c	cb 67 	. g 
	jr z,l0233h		;022e	28 03 	( . 
	ld bc,08168h		;0230	01 68 81 	. h . 
l0233h:
	or a			;0233	b7 	. 
	sbc hl,bc		;0234	ed 42 	. B 
	add hl,bc			;0236	09 	. 
	ex (sp),hl			;0237	e3 	. 
	ld c,(hl)			;0238	4e 	N 
	inc hl			;0239	23 	# 
	ld b,(hl)			;023a	46 	F 
sub_023bh:
	jr nc,l0241h		;023b	30 04 	0 . 
	inc hl			;023d	23 	# 
	ld c,(hl)			;023e	4e 	N 
	inc hl			;023f	23 	# 
l0240h:
	ld b,(hl)			;0240	46 	F 
l0241h:
	pop hl			;0241	e1 	. 
	add hl,bc			;0242	09 	. 
	add hl,de			;0243	19 	. 
	ld de,0feefh		;0244	11 ef fe 	. . . 
	bit 4,a		;0247	cb 67 	. g 
	jr z,l024eh		;0249	28 03 	( . 
	ld de,0fe9fh		;024b	11 9f fe 	. . . 
l024eh:
	add hl,de			;024e	19 	. 
	ld bc,l000eh		;024f	01 0e 00 	. . . 
	or a			;0252	b7 	. 
	sbc hl,bc		;0253	ed 42 	. B 
	add hl,bc			;0255	09 	. 
	jr nc,l025bh		;0256	30 03 	0 . 
	ld hl,l0006h+1		;0258	21 07 00 	! . . 
l025bh:
	or a			;025b	b7 	. 
	sbc hl,de		;025c	ed 52 	. R 
	ld (0c232h),hl		;025e	22 32 c2 	" 2 . 
	ret			;0261	c9 	. 
l0262h:
	push de			;0262	d5 	. 
	ld hl,(0c232h)		;0263	2a 32 c2 	* 2 . 
	ld de,08000h		;0266	11 00 80 	. . . 
	add hl,de			;0269	19 	. 
	ld bc,08078h		;026a	01 78 80 	. x . 
	or a			;026d	b7 	. 
	sbc hl,bc		;026e	ed 42 	. B 
	add hl,bc			;0270	09 	. 
	ex (sp),hl			;0271	e3 	. 
	ld c,(hl)			;0272	4e 	N 
	inc hl			;0273	23 	# 
	ld b,(hl)			;0274	46 	F 
	jr nc,l027bh		;0275	30 04 	0 . 
	inc hl			;0277	23 	# 
	ld c,(hl)			;0278	4e 	N 
	inc hl			;0279	23 	# 
sub_027ah:
	ld b,(hl)			;027a	46 	F 
l027bh:
	pop hl			;027b	e1 	. 
	add hl,bc			;027c	09 	. 
	add hl,de			;027d	19 	. 
	ld de,0ff8fh		;027e	11 8f ff 	. . . 
	add hl,de			;0281	19 	. 
	ld bc,l000eh		;0282	01 0e 00 	. . . 
	or a			;0285	b7 	. 
	sbc hl,bc		;0286	ed 42 	. B 
	add hl,bc			;0288	09 	. 
	jr nc,l028eh		;0289	30 03 	0 . 
	ld hl,l0006h+1		;028b	21 07 00 	! . . 
l028eh:
	or a			;028e	b7 	. 
	sbc hl,de		;028f	ed 52 	. R 
	ld (0c232h),hl		;0291	22 32 c2 	" 2 . 
	ret			;0294	c9 	. 
	ld hl,(0c230h)		;0295	2a 30 c2 	* 0 . 
	ld de,0ffe4h		;0298	11 e4 ff 	. . . 
	add hl,de			;029b	19 	. 
	ld (0c230h),hl		;029c	22 30 c2 	" 0 . 
	ld hl,0c16ch		;029f	21 6c c1 	! l . 
	bit 0,(hl)		;02a2	cb 46 	. F 
	jr z,l02b3h		;02a4	28 0d 	( . 
	res 0,(hl)		;02a6	cb 86 	. . 
	ld a,096h		;02a8	3e 96 	> . 
	call 00a99h		;02aa	cd 99 0a 	. . . 
sub_02adh:
	ld hl,0034ch		;02ad	21 4c 03 	! L . 
	ld (0c230h),hl		;02b0	22 30 c2 	" 0 . 
l02b3h:
	ld hl,0c16ch		;02b3	21 6c c1 	! l . 
	res 3,(hl)		;02b6	cb 9e 	. . 
	ld ix,0c220h		;02b8	dd 21 20 c2 	. !   . 
	ld hl,l0608h		;02bc	21 08 06 	! . . 
	ld a,0ffh		;02bf	3e ff 	> . 
	call 0392fh		;02c1	cd 2f 39 	. / 9 
	call 048beh		;02c4	cd be 48 	. . H 
	ld hl,0c16bh		;02c7	21 6b c1 	! k . 
	bit 6,(hl)		;02ca	cb 76 	. v 
	call nz,0449fh		;02cc	c4 9f 44 	. . D 
	ld a,(0c234h)		;02cf	3a 34 c2 	: 4 . 
	bit 7,a		;02d2	cb 7f 	.  
	jr z,l02dbh		;02d4	28 05 	( . 
	ld hl,0c222h		;02d6	21 22 c2 	! " . 
	set 3,(hl)		;02d9	cb de 	. . 
l02dbh:
	and 002h		;02db	e6 02 	. . 
	jr z,l031ah		;02dd	28 3b 	( ; 
	ld a,(0c16dh)		;02df	3a 6d c1 	: m . 
	rra			;02e2	1f 	. 
	jr nc,l030ch		;02e3	30 27 	0 ' 
	call 04392h		;02e5	cd 92 43 	. . C 
	jr nc,l030ch		;02e8	30 22 	0 " 
	ld hl,0c16dh		;02ea	21 6d c1 	! m . 
	set 1,(hl)		;02ed	cb ce 	. . 
	call 04b66h		;02ef	cd 66 4b 	. f K 
	ld a,(0c128h)		;02f2	3a 28 c1 	: ( . 
	cp 028h		;02f5	fe 28 	. ( 
	ld h,000h		;02f7	26 00 	& . 
	jr nz,l02fdh		;02f9	20 02 	  . 
	ld h,001h		;02fb	26 01 	& . 
l02fdh:
	ld a,04dh		;02fd	3e 4d 	> M 
	call sub_06e2h		;02ff	cd e2 06 	. . . 
l0302h:
	ld hl,0cc30h		;0302	21 30 cc 	! 0 . 
	set 7,(hl)		;0305	cb fe 	. . 
	ld hl,0cc80h		;0307	21 80 cc 	! . . 
	set 7,(hl)		;030a	cb fe 	. . 
l030ch:
	xor a			;030c	af 	. 
l030dh:
	ld (0c230h),a		;030d	32 30 c2 	2 0 . 
	ld (0c231h),a		;0310	32 31 c2 	2 1 . 
	ld hl,0c16bh		;0313	21 6b c1 	! k . 
	res 4,(hl)		;0316	cb a6 	. . 
	jr l032dh		;0318	18 13 	. . 
l031ah:
	ld hl,0c16bh		;031a	21 6b c1 	! k . 
	set 4,(hl)		;031d	cb e6 	. . 
	call 04190h		;031f	cd 90 41 	. . A 
	ld hl,(0c223h)		;0322	2a 23 c2 	* # . 
l0325h:
	ld de,(0c230h)		;0325	ed 5b 30 c2 	. [ 0 . 
	add hl,de			;0329	19 	. 
	ld (0c223h),hl		;032a	22 23 c2 	" # . 
l032dh:
	ld a,(0c234h)		;032d	3a 34 c2 	: 4 . 
l0330h:
	and 00ch		;0330	e6 0c 	. . 
	jr z,l033ah		;0332	28 06 	( . 
	ld hl,l0000h		;0334	21 00 00 	! . . 
	ld (0c232h),hl		;0337	22 32 c2 	" 2 . 
l033ah:
	ld hl,(0c226h)		;033a	2a 26 c2 	* & . 
	ld de,(0c232h)		;033d	ed 5b 32 c2 	. [ 2 . 
	add hl,de			;0341	19 	. 
	ld a,h			;0342	7c 	| 
	cp 048h		;0343	fe 48 	. H 
	jr nc,l0353h		;0345	30 0c 	0 . 
	ld hl,l0000h		;0347	21 00 00 	! . . 
	ld (0c232h),hl		;034a	22 32 c2 	" 2 . 
	ld hl,04800h		;034d	21 00 48 	! . H 
	ld (0c226h),hl		;0350	22 26 c2 	" & . 
l0353h:
	ex af,af'			;0353	08 	. 
	ld a,(0c179h)		;0354	3a 79 c1 	: y . 
	rra			;0357	1f 	. 
	jr c,l037ch		;0358	38 22 	8 " 
	ex af,af'			;035a	08 	. 
	cp 078h		;035b	fe 78 	. x 
	jr c,l037ch		;035d	38 1d 	8 . 
	ld de,07800h		;035f	11 00 78 	. . x 
	or a			;0362	b7 	. 
	sbc hl,de		;0363	ed 52 	. R 
	push hl			;0365	e5 	. 
	add hl,hl			;0366	29 	) 
	ld a,h			;0367	7c 	| 
	cp 004h		;0368	fe 04 	. . 
	jr c,l036eh		;036a	38 02 	8 . 
	ld a,003h		;036c	3e 03 	> . 
l036eh:
	call sub_1796h		;036e	cd 96 17 	. . . 
	ld ix,0c220h		;0371	dd 21 20 c2 	. !   . 
	pop hl			;0375	e1 	. 
	ld h,078h		;0376	26 78 	& x 
	ld a,07fh		;0378	3e 7f 	>  
	and l			;037a	a5 	. 
	ld l,a			;037b	6f 	o 
l037ch:
	ld (0c226h),hl		;037c	22 26 c2 	" & . 
	ld a,(0c179h)		;037f	3a 79 c1 	: y . 
	bit 2,a		;0382	cb 57 	. W 
	ret z			;0384	c8 	. 
	ld a,0b8h		;0385	3e b8 	> . 
	cp h			;0387	bc 	. 
	ret nc			;0388	d0 	. 
	ld (0c227h),a		;0389	32 27 c2 	2 ' . 
	ld a,080h		;038c	3e 80 	> . 
	ld (0c226h),a		;038e	32 26 c2 	2 & . 
	ret			;0391	c9 	. 
	ld a,(0c16bh)		;0392	3a 6b c1 	: k . 
	bit 2,a		;0395	cb 57 	. W 
	scf			;0397	37 	7 
	ret z			;0398	c8 	. 
	ld hl,0c222h		;0399	21 22 c2 	! " . 
	set 3,(hl)		;039c	cb de 	. . 
	or a			;039e	b7 	. 
	ret			;039f	c9 	. 
	set 6,(hl)		;03a0	cb f6 	. . 
	ld a,(0cc34h)		;03a2	3a 34 cc 	: 4 . 
	bit 7,a		;03a5	cb 7f 	.  
	jr nz,l03c4h		;03a7	20 1b 	  . 
	ld hl,0c127h		;03a9	21 27 c1 	! ' . 
	bit 2,(hl)		;03ac	cb 56 	. V 
	jr z,l03c4h		;03ae	28 14 	( . 
	res 2,(hl)		;03b0	cb 96 	. . 
	ld a,(0c16bh)		;03b2	3a 6b c1 	: k . 
	bit 4,a		;03b5	cb 67 	. g 
	jp nz,044b3h		;03b7	c2 b3 44 	. . D 
	ld hl,0c222h		;03ba	21 22 c2 	! " . 
	ld (hl),088h		;03bd	36 88 	6 . 
	ld hl,0c16bh		;03bf	21 6b c1 	! k . 
	res 2,(hl)		;03c2	cb 96 	. . 
l03c4h:
	ld hl,0c222h		;03c4	21 22 c2 	! " . 
	set 6,(hl)		;03c7	cb f6 	. . 
	xor a			;03c9	af 	. 
	ld (0c170h),a		;03ca	32 70 c1 	2 p . 
	ld a,(hl)			;03cd	7e 	~ 
	and 030h		;03ce	e6 30 	. 0 
	jr nz,l03f9h		;03d0	20 27 	  ' 
	ld a,093h		;03d2	3e 93 	> . 
	call 00a99h		;03d4	cd 99 0a 	. . . 
	ld a,002h		;03d7	3e 02 	> . 
	call 064a1h		;03d9	cd a1 64 	. . d 
	ld a,00dh		;03dc	3e 0d 	> . 
	ld hl,0c16bh		;03de	21 6b c1 	! k . 
	bit 3,(hl)		;03e1	cb 5e 	. ^ 
	jr z,l03e7h		;03e3	28 02 	( . 
	ld a,00eh		;03e5	3e 0e 	> . 
l03e7h:
	ld (0c171h),a		;03e7	32 71 c1 	2 q . 
	ld hl,000a0h		;03ea	21 a0 00 	! . . 
	ld (0c230h),hl		;03ed	22 30 c2 	" 0 . 
	ld hl,l0080h		;03f0	21 80 00 	! . . 
	ld (0c232h),hl		;03f3	22 32 c2 	" 2 . 
	jp l3d72h		;03f6	c3 72 3d 	. r = 
l03f9h:
	call 00ab1h		;03f9	cd b1 0a 	. . . 
	bit 5,(hl)		;03fc	cb 6e 	. n 
	ld a,00fh		;03fe	3e 0f 	> . 
	jr nz,l0404h		;0400	20 02 	  . 
sub_0402h:
	ld a,011h		;0402	3e 11 	> . 
l0404h:
	ld (0c171h),a		;0404	32 71 c1 	2 q . 
l0407h:
	ld hl,000c0h		;0407	21 c0 00 	! . . 
	ld (0c230h),hl		;040a	22 30 c2 	" 0 . 
	ld l,h			;040d	6c 	l 
	ld (0c232h),hl		;040e	22 32 c2 	" 2 . 
	jp 04491h		;0411	c3 91 44 	. . D 
	and 030h		;0414	e6 30 	. 0 
	jr nz,l041bh		;0416	20 03 	  . 
	jp l3d72h		;0418	c3 72 3d 	. r = 
l041bh:
	ld hl,0c222h		;041b	21 22 c2 	! " . 
	ld a,(0c170h)		;041e	3a 70 c1 	: p . 
	cp 010h		;0421	fe 10 	. . 
	jp c,04491h		;0423	da 91 44 	. . D 
	jr z,l0441h		;0426	28 19 	( . 
	cp 020h		;0428	fe 20 	.   
	jr z,l044fh		;042a	28 23 	( # 
	jr nc,l0463h		;042c	30 35 	0 5 
	and 007h		;042e	e6 07 	. . 
	jp nz,l3d97h		;0430	c2 97 3d 	. . = 
	ld a,00fh		;0433	3e 0f 	> . 
	bit 5,(hl)		;0435	cb 6e 	. n 
	jr nz,l043bh		;0437	20 02 	  . 
	ld a,011h		;0439	3e 11 	> . 
l043bh:
	ld (0c171h),a		;043b	32 71 c1 	2 q . 
	jp l3d97h		;043e	c3 97 3d 	. . = 
l0441h:
	ld a,010h		;0441	3e 10 	> . 
	bit 5,(hl)		;0443	cb 6e 	. n 
	jr nz,l0449h		;0445	20 02 	  . 
	ld a,012h		;0447	3e 12 	> . 
l0449h:
	ld (0c171h),a		;0449	32 71 c1 	2 q . 
	jp l3d97h		;044c	c3 97 3d 	. . = 
l044fh:
	ld a,010h		;044f	3e 10 	> . 
	bit 5,(hl)		;0451	cb 6e 	. n 
	jr nz,l0457h		;0453	20 02 	  . 
	ld a,012h		;0455	3e 12 	> . 
l0457h:
	ld (0c171h),a		;0457	32 71 c1 	2 q . 
	ld hl,0ffc0h		;045a	21 c0 ff 	! . . 
	ld (0c230h),hl		;045d	22 30 c2 	" 0 . 
	jp l3d97h		;0460	c3 97 3d 	. . = 
l0463h:
	ex af,af'			;0463	08 	. 
	ld a,(0c224h)		;0464	3a 24 c2 	: $ . 
	cp 008h		;0467	fe 08 	. . 
	jr c,l048eh		;0469	38 23 	8 # 
	exx			;046b	d9 	. 
sub_046ch:
	ld hl,(0c230h)		;046c	2a 30 c2 	* 0 . 
	ld de,0ffe4h		;046f	11 e4 ff 	. . . 
	add hl,de			;0472	19 	. 
	ld (0c230h),hl		;0473	22 30 c2 	" 0 . 
	exx			;0476	d9 	. 
	bit 4,(hl)		;0477	cb 66 	. f 
	jr nz,l0491h		;0479	20 16 	  . 
	ex af,af'			;047b	08 	. 
sub_047ch:
	ld c,a			;047c	4f 	O 
	and 003h		;047d	e6 03 	. . 
	jr nz,l0491h		;047f	20 10 	  . 
	ld a,c			;0481	79 	y 
	rra			;0482	1f 	. 
	rra			;0483	1f 	. 
	and 001h		;0484	e6 01 	. . 
sub_0486h:
	ld c,00fh		;0486	0e 0f 	. . 
	add a,c			;0488	81 	. 
	ld (0c171h),a		;0489	32 71 c1 	2 q . 
	jr l0491h		;048c	18 03 	. . 
l048eh:
	jp 044d5h		;048e	c3 d5 44 	. . D 
l0491h:
	ld hl,(0c223h)		;0491	2a 23 c2 	* # . 
	ld de,(0c230h)		;0494	ed 5b 30 c2 	. [ 0 . 
	add hl,de			;0498	19 	. 
l0499h:
	ld (0c223h),hl		;0499	22 23 c2 	" # . 
	jp l3d97h		;049c	c3 97 3d 	. . = 
	ld a,(0c234h)		;049f	3a 34 c2 	: 4 . 
l04a2h:
	or a			;04a2	b7 	. 
	ret z			;04a3	c8 	. 
	ld a,0bdh		;04a4	3e bd 	> . 
	and (hl)			;04a6	a6 	. 
	ld (hl),a			;04a7	77 	w 
	ld hl,0c222h		;04a8	21 22 c2 	! " . 
	ld (hl),080h		;04ab	36 80 	6 . 
	ld a,080h		;04ad	3e 80 	> . 
	ld (0c222h),a		;04af	32 22 c2 	2 " . 
	ret			;04b2	c9 	. 
	ld hl,0c222h		;04b3	21 22 c2 	! " . 
	ld (hl),0c8h		;04b6	36 c8 	6 . 
	ld hl,0c16bh		;04b8	21 6b c1 	! k . 
	res 2,(hl)		;04bb	cb 96 	. . 
	set 6,(hl)		;04bd	cb f6 	. . 
	ld a,093h		;04bf	3e 93 	> . 
	call 00a99h		;04c1	cd 99 0a 	. . . 
	ld a,00dh		;04c4	3e 0d 	> . 
	ld (0c171h),a		;04c6	32 71 c1 	2 q . 
	jp l3d72h		;04c9	c3 72 3d 	. r = 
	ret			;04cc	c9 	. 
	ld a,(0c128h)		;04cd	3a 28 c1 	: ( . 
	cp 028h		;04d0	fe 28 	. ( 
	jp z,04adbh		;04d2	ca db 4a 	. . J 
	ld a,(0c178h)		;04d5	3a 78 c1 	: x . 
	rla			;04d8	17 	. 
	jp c,04583h		;04d9	da 83 45 	. . E 
	ld b,00ch		;04dc	06 0c 	. . 
	ld ix,0c220h		;04de	dd 21 20 c2 	. !   . 
	call 0057fh		;04e2	cd 7f 05 	.  . 
	xor a			;04e5	af 	. 
	ld (0c170h),a		;04e6	32 70 c1 	2 p . 
	ld hl,0c16bh		;04e9	21 6b c1 	! k . 
	set 5,(hl)		;04ec	cb ee 	. . 
	inc l			;04ee	2c 	, 
	bit 1,(hl)		;04ef	cb 4e 	. N 
	jr nz,l04fbh		;04f1	20 08 	  . 
	call 00ab1h		;04f3	cd b1 0a 	. . . 
	ld a,09ah		;04f6	3e 9a 	> . 
	jp 00a99h		;04f8	c3 99 0a 	. . . 
l04fbh:
	ld a,080h		;04fb	3e 80 	> . 
	ld b,004h		;04fd	06 04 	. . 
sub_04ffh:
	ld de,0c220h		;04ff	11 20 c2 	.   . 
	ld hl,l0999h		;0502	21 99 09 	! . . 
	call 00971h		;0505	cd 71 09 	. q . 
	ld a,008h		;0508	3e 08 	> . 
	ld (0c224h),a		;050a	32 24 c2 	2 $ . 
	ld hl,002f0h		;050d	21 f0 02 	! . . 
	ld (0c230h),hl		;0510	22 30 c2 	" 0 . 
	ld a,004h		;0513	3e 04 	> . 
	call sub_0b13h		;0515	cd 13 0b 	. . . 
	ld hl,0a63dh		;0518	21 3d a6 	! = . 
	ld de,02000h		;051b	11 00 20 	. .   
	ld bc,l0080h		;051e	01 80 00 	. . . 
	di			;0521	f3 	. 
	call sub_046ch		;0522	cd 6c 04 	. l . 
	ei			;0525	fb 	. 
	ld hl,0c224h		;0526	21 24 c2 	! $ . 
	inc (hl)			;0529	34 	4 
	ret			;052a	c9 	. 
l052bh:
	inc l			;052b	2c 	, 
	bit 1,(hl)		;052c	cb 4e 	. N 
	jr z,l0561h		;052e	28 31 	( 1 
	ld hl,(0c230h)		;0530	2a 30 c2 	* 0 . 
	ld de,0ffe4h		;0533	11 e4 ff 	. . . 
	add hl,de			;0536	19 	. 
	ld (0c230h),hl		;0537	22 30 c2 	" 0 . 
	ld de,(0c223h)		;053a	ed 5b 23 c2 	. [ # . 
	add hl,de			;053e	19 	. 
	ld (0c223h),hl		;053f	22 23 c2 	" # . 
	ld a,h			;0542	7c 	| 
	cp 008h		;0543	fe 08 	. . 
	ld b,004h		;0545	06 04 	. . 
	ld ix,0c220h		;0547	dd 21 20 c2 	. !   . 
	jr nc,l0590h		;054b	30 43 	0 C 
	call 0057fh		;054d	cd 7f 05 	.  . 
	ld hl,0c16ch		;0550	21 6c c1 	! l . 
	res 1,(hl)		;0553	cb 8e 	. . 
	xor a			;0555	af 	. 
	ld (0c170h),a		;0556	32 70 c1 	2 p . 
	call 00ab1h		;0559	cd b1 0a 	. . . 
	ld a,09ah		;055c	3e 9a 	> . 
	call 00a99h		;055e	cd 99 0a 	. . . 
l0561h:
	ld a,(0cc34h)		;0561	3a 34 cc 	: 4 . 
	rla			;0564	17 	. 
	jr nc,l056fh		;0565	30 08 	0 . 
	ld hl,0c16ch		;0567	21 6c c1 	! l . 
	bit 4,(hl)		;056a	cb 66 	. f 
	call z,04592h		;056c	cc 92 45 	. . E 
l056fh:
	ld a,(0c170h)		;056f	3a 70 c1 	: p . 
	cp 0c0h		;0572	fe c0 	. . 
	ret c			;0574	d8 	. 
	ld a,(0c128h)		;0575	3a 28 c1 	: ( . 
	cp 028h		;0578	fe 28 	. ( 
	jp z,04adbh		;057a	ca db 4a 	. . J 
	ld hl,0c120h		;057d	21 20 c1 	!   . 
	set 6,(hl)		;0580	cb f6 	. . 
	ret			;0582	c9 	. 
	ld hl,0c16bh		;0583	21 6b c1 	! k . 
	res 5,(hl)		;0586	cb ae 	. . 
	res 6,(hl)		;0588	cb b6 	. . 
	ld hl,0c222h		;058a	21 22 c2 	! " . 
	ld (hl),080h		;058d	36 80 	6 . 
	ret			;058f	c9 	. 
l0590h:
	rst 28h			;0590	ef 	. 
	ret			;0591	c9 	. 
	set 4,(hl)		;0592	cb e6 	. . 
	ld a,080h		;0594	3e 80 	> . 
	ld b,00ah		;0596	06 0a 	. . 
	ld de,0c220h		;0598	11 20 c2 	.   . 
	ld hl,00a85h		;059b	21 85 0a 	! . . 
	call 00971h		;059e	cd 71 09 	. q . 
	ld a,044h		;05a1	3e 44 	> D 
	ld (0c224h),a		;05a3	32 24 c2 	2 $ . 
	ld a,080h		;05a6	3e 80 	> . 
	ld (0c227h),a		;05a8	32 27 c2 	2 ' . 
	ld a,090h		;05ab	3e 90 	> . 
	rst 30h			;05ad	f7 	. 
	rst 30h			;05ae	f7 	. 
	ld b,00ah		;05af	06 0a 	. . 
	ld ix,0c220h		;05b1	dd 21 20 c2 	. !   . 
	rst 28h			;05b5	ef 	. 
	ret			;05b6	c9 	. 
	inc l			;05b7	2c 	, 
	bit 7,(hl)		;05b8	cb 7e 	. ~ 
	call z,04611h		;05ba	cc 11 46 	. . F 
	ld a,(0c178h)		;05bd	3a 78 c1 	: x . 
	bit 1,a		;05c0	cb 4f 	. O 
	ret nz			;05c2	c0 	. 
	ld hl,0cc30h		;05c3	21 30 cc 	! 0 . 
	bit 6,(hl)		;05c6	cb 76 	. v 
	jr z,l05fbh		;05c8	28 31 	( 1 
	ld hl,(0c226h)		;05ca	2a 26 c2 	* & . 
	ld a,(0c17ah)		;05cd	3a 7a c1 	: z . 
	ld e,000h		;05d0	1e 00 	. . 
	ld d,a			;05d2	57 	W 
	or a			;05d3	b7 	. 
	sbc hl,de		;05d4	ed 52 	. R 
	jr c,l05fbh		;05d6	38 23 	8 # 
	ld a,l			;05d8	7d 	} 
	exx			;05d9	d9 	. 
	and 07fh		;05da	e6 7f 	.  
	ld l,a			;05dc	6f 	o 
	ld a,(0c17ah)		;05dd	3a 7a c1 	: z . 
l05e0h:
	ld h,a			;05e0	67 	g 
	ld (0c226h),hl		;05e1	22 26 c2 	" & . 
	exx			;05e4	d9 	. 
	add hl,hl			;05e5	29 	) 
	ld a,h			;05e6	7c 	| 
	cp 004h		;05e7	fe 04 	. . 
	jr c,l05edh		;05e9	38 02 	8 . 
	ld a,003h		;05eb	3e 03 	> . 
l05edh:
	call sub_1796h		;05ed	cd 96 17 	. . . 
	ld ix,0c220h		;05f0	dd 21 20 c2 	. !   . 
	ld hl,0c16dh		;05f4	21 6d c1 	! m . 
	bit 7,(hl)		;05f7	cb 7e 	. ~ 
	jr z,l0630h		;05f9	28 35 	( 5 
l05fbh:
	ld a,(0c227h)		;05fb	3a 27 c2 	: ' . 
	cp 08dh		;05fe	fe 8d 	. . 
	ret c			;0600	d8 	. 
sub_0601h:
	ld hl,0c16dh		;0601	21 6d c1 	! m . 
l0604h:
	bit 7,(hl)		;0604	cb 7e 	. ~ 
l0606h:
	jr z,l0630h		;0606	28 28 	( ( 
l0608h:
	cp 0c8h		;0608	fe c8 	. . 
	ret c			;060a	d8 	. 
	ld hl,0c120h		;060b	21 20 c1 	!   . 
	set 5,(hl)		;060e	cb ee 	. . 
	ret			;0610	c9 	. 
	set 7,(hl)		;0611	cb fe 	. . 
	ld hl,0c179h		;0613	21 79 c1 	! y . 
	set 0,(hl)		;0616	cb c6 	. . 
	ld hl,0cc30h		;0618	21 30 cc 	! 0 . 
	set 7,(hl)		;061b	cb fe 	. . 
	call 04637h		;061d	cd 37 46 	. 7 F 
	jp c,0464eh		;0620	da 4e 46 	. N F 
	ld a,(0c227h)		;0623	3a 27 c2 	: ' . 
	cp 078h		;0626	fe 78 	. x 
	jr nc,l062ch		;0628	30 02 	0 . 
	ld a,078h		;062a	3e 78 	> x 
l062ch:
	ld (0c17ah),a		;062c	32 7a c1 	2 z . 
	ret			;062f	c9 	. 
l0630h:
	set 7,(hl)		;0630	cb fe 	. . 
	ld a,089h		;0632	3e 89 	> . 
	jp 00a99h		;0634	c3 99 0a 	. . . 
	ld a,(0c128h)		;0637	3a 28 c1 	: ( . 
	cp 027h		;063a	fe 27 	. ' 
	jr z,l064ch		;063c	28 0e 	( . 
	cp 023h		;063e	fe 23 	. # 
	jr nz,l064ah		;0640	20 08 	  . 
	ld c,a			;0642	4f 	O 
	ld a,(0c130h)		;0643	3a 30 c1 	: 0 . 
	inc c			;0646	0c 	. 
	cp c			;0647	b9 	. 
	jr c,l064ch		;0648	38 02 	8 . 
l064ah:
	or a			;064a	b7 	. 
	ret			;064b	c9 	. 
l064ch:
	scf			;064c	37 	7 
	ret			;064d	c9 	. 
	ld hl,0c178h		;064e	21 78 c1 	! x . 
	set 1,(hl)		;0651	cb ce 	. . 
	ld a,08ah		;0653	3e 8a 	> . 
	call 00a99h		;0655	cd 99 0a 	. . . 
	ld hl,0c178h		;0658	21 78 c1 	! x . 
	bit 2,(hl)		;065b	cb 56 	. V 
	jr nz,l06a5h		;065d	20 46 	  F 
	ld a,(0c227h)		;065f	3a 27 c2 	: ' . 
	cp 074h		;0662	fe 74 	. t 
	ld a,004h		;0664	3e 04 	> . 
	jr z,l0670h		;0666	28 08 	( . 
	jr nc,l066ch		;0668	30 02 	0 . 
	ld a,008h		;066a	3e 08 	> . 
l066ch:
	ld (0c174h),a		;066c	32 74 c1 	2 t . 
	ret			;066f	c9 	. 
l0670h:
	set 2,(hl)		;0670	cb d6 	. . 
	ld hl,0c16bh		;0672	21 6b c1 	! k . 
	res 3,(hl)		;0675	cb 9e 	. . 
	ld a,05ah		;0677	3e 5a 	> Z 
	call sub_06e2h		;0679	cd e2 06 	. . . 
	xor a			;067c	af 	. 
	ld (0c232h),a		;067d	32 32 c2 	2 2 . 
	ld (0c233h),a		;0680	32 33 c2 	2 3 . 
	ld hl,l0000h		;0683	21 00 00 	! . . 
	ld bc,l0020h		;0686	01 20 00 	.   . 
	xor a			;0689	af 	. 
	di			;068a	f3 	. 
	call sub_0202h		;068b	cd 02 02 	. . . 
	call 046dah		;068e	cd da 46 	. . F 
	ei			;0691	fb 	. 
	ld bc,l052bh		;0692	01 2b 05 	. + . 
l0695h:
	call 00b67h		;0695	cd 67 0b 	. g . 
	inc c			;0698	0c 	. 
	djnz l0695h		;0699	10 fa 	. . 
	ld a,(0c114h)		;069b	3a 14 c1 	: . . 
	bit 0,a		;069e	cb 47 	. G 
	ret z			;06a0	c8 	. 
	call 00b67h		;06a1	cd 67 0b 	. g . 
	ret			;06a4	c9 	. 
l06a5h:
	xor a			;06a5	af 	. 
	ld (0c174h),a		;06a6	32 74 c1 	2 t . 
	ld hl,0c16eh		;06a9	21 6e c1 	! n . 
	inc (hl)			;06ac	34 	4 
	ld e,(hl)			;06ad	5e 	^ 
	inc hl			;06ae	23 	# 
	jr nz,l06b2h		;06af	20 01 	  . 
	inc (hl)			;06b1	34 	4 
l06b2h:
	ld d,(hl)			;06b2	56 	V 
	ex de,hl			;06b3	eb 	. 
	ld b,h			;06b4	44 	D 
	ld c,l			;06b5	4d 	M 
	ld de,004c0h		;06b6	11 c0 04 	. . . 
	or a			;06b9	b7 	. 
	sbc hl,de		;06ba	ed 52 	. R 
	jr nc,l06d4h		;06bc	30 16 	0 . 
	ld h,b			;06be	60 	` 
	ld l,c			;06bf	69 	i 
	ld de,l0080h		;06c0	11 80 00 	. . . 
	or a			;06c3	b7 	. 
	sbc hl,de		;06c4	ed 52 	. R 
	ret c			;06c6	d8 	. 
	ld hl,0c16dh		;06c7	21 6d c1 	! m . 
	bit 5,(hl)		;06ca	cb 6e 	. n 
	ret nz			;06cc	c0 	. 
	set 5,(hl)		;06cd	cb ee 	. . 
	ld a,089h		;06cf	3e 89 	> . 
	jp 00a99h		;06d1	c3 99 0a 	. . . 
l06d4h:
	ld hl,0c120h		;06d4	21 20 c1 	!   . 
	set 4,(hl)		;06d7	cb e6 	. . 
	ret			;06d9	c9 	. 
l06dah:
	ld a,003h		;06da	3e 03 	> . 
	call sub_0b13h		;06dc	cd 13 0b 	. . . 
	ld hl,09b6ah		;06df	21 6a 9b 	! j . 
sub_06e2h:
	ld de,l12a0h		;06e2	11 a0 12 	. . . 
	ld bc,l05e0h		;06e5	01 e0 05 	. . . 
	call 00422h		;06e8	cd 22 04 	. " . 
	ret			;06eb	c9 	. 
	ld hl,0c16bh		;06ec	21 6b c1 	! k . 
	bit 1,(hl)		;06ef	cb 4e 	. N 
	ret nz			;06f1	c0 	. 
	ld a,(0c174h)		;06f2	3a 74 c1 	: t . 
	and 03fh		;06f5	e6 3f 	. ? 
	ld c,a			;06f7	4f 	O 
	bit 2,(hl)		;06f8	cb 56 	. V 
	jr nz,l074ah		;06fa	20 4e 	  N 
	and 00ch		;06fc	e6 0c 	. . 
	ld a,(0c170h)		;06fe	3a 70 c1 	: p . 
	ld b,a			;0701	47 	G 
	jr z,l071eh		;0702	28 1a 	( . 
	bit 4,c		;0704	cb 61 	. a 
	jr nz,l0735h		;0706	20 2d 	  - 
	and 007h		;0708	e6 07 	. . 
	ret nz			;070a	c0 	. 
	ld a,b			;070b	78 	x 
	rra			;070c	1f 	. 
	rra			;070d	1f 	. 
	rra			;070e	1f 	. 
	and 003h		;070f	e6 03 	. . 
	ld c,001h		;0711	0e 01 	. . 
	bit 3,(hl)		;0713	cb 5e 	. ^ 
	jr z,l0719h		;0715	28 02 	( . 
	ld c,005h		;0717	0e 05 	. . 
l0719h:
	add a,c			;0719	81 	. 
	ld (0c171h),a		;071a	32 71 c1 	2 q . 
	ret			;071d	c9 	. 
l071eh:
	and 007h		;071e	e6 07 	. . 
	ret nz			;0720	c0 	. 
	ld a,b			;0721	78 	x 
	rra			;0722	1f 	. 
	rra			;0723	1f 	. 
	rra			;0724	1f 	. 
	and 001h		;0725	e6 01 	. . 
	ld c,001h		;0727	0e 01 	. . 
	bit 3,(hl)		;0729	cb 5e 	. ^ 
	jr z,l072fh		;072b	28 02 	( . 
	ld c,005h		;072d	0e 05 	. . 
l072fh:
	add a,a			;072f	87 	. 
	add a,c			;0730	81 	. 
	ld (0c171h),a		;0731	32 71 c1 	2 q . 
	ret			;0734	c9 	. 
l0735h:
	and 003h		;0735	e6 03 	. . 
	ret nz			;0737	c0 	. 
	ld a,b			;0738	78 	x 
	rra			;0739	1f 	. 
	rra			;073a	1f 	. 
	and 003h		;073b	e6 03 	. . 
	ld c,001h		;073d	0e 01 	. . 
	bit 3,(hl)		;073f	cb 5e 	. ^ 
	jr z,l0745h		;0741	28 02 	( . 
	ld c,005h		;0743	0e 05 	. . 
l0745h:
	add a,c			;0745	81 	. 
	ld (0c171h),a		;0746	32 71 c1 	2 q . 
	ret			;0749	c9 	. 
l074ah:
	and 008h		;074a	e6 08 	. . 
	ld a,(0c170h)		;074c	3a 70 c1 	: p . 
	ld b,a			;074f	47 	G 
	jr nz,l0766h		;0750	20 14 	  . 
	bit 2,c		;0752	cb 51 	. Q 
	jr nz,l0775h		;0754	20 1f 	  . 
	and 007h		;0756	e6 07 	. . 
	ret nz			;0758	c0 	. 
	ld a,b			;0759	78 	x 
	rra			;075a	1f 	. 
	rra			;075b	1f 	. 
	rra			;075c	1f 	. 
	and 001h		;075d	e6 01 	. . 
	ld c,014h		;075f	0e 14 	. . 
	add a,c			;0761	81 	. 
	ld (0c171h),a		;0762	32 71 c1 	2 q . 
	ret			;0765	c9 	. 
l0766h:
	and 003h		;0766	e6 03 	. . 
	ret nz			;0768	c0 	. 
	ld a,b			;0769	78 	x 
	rra			;076a	1f 	. 
	rra			;076b	1f 	. 
	and 001h		;076c	e6 01 	. . 
	ld c,014h		;076e	0e 14 	. . 
	add a,c			;0770	81 	. 
	ld (0c171h),a		;0771	32 71 c1 	2 q . 
	ret			;0774	c9 	. 
l0775h:
	and 003h		;0775	e6 03 	. . 
	ret nz			;0777	c0 	. 
	ld a,017h		;0778	3e 17 	> . 
	ld (0c171h),a		;077a	32 71 c1 	2 q . 
	ret			;077d	c9 	. 
	ld hl,0c221h		;077e	21 21 c2 	! ! . 
	ld de,l0020h		;0781	11 20 00 	.   . 
	ld a,(0c16bh)		;0784	3a 6b c1 	: k . 
	bit 3,a		;0787	cb 5f 	. _ 
	jr nz,l079ah		;0789	20 0f 	  . 
	ld bc,l0407h		;078b	01 07 04 	. . . 
	ld a,0ffh		;078e	3e ff 	> . 
l0790h:
	ld (hl),0f7h		;0790	36 f7 	6 . 
	add hl,de			;0792	19 	. 
	ld (hl),a			;0793	77 	w 
	add hl,de			;0794	19 	. 
	ld (hl),c			;0795	71 	q 
	add hl,de			;0796	19 	. 
	djnz l0790h		;0797	10 f7 	. . 
	ret			;0799	c9 	. 
l079ah:
	ld bc,l0407h+2		;079a	01 09 04 	. . . 
	ld a,001h		;079d	3e 01 	> . 
l079fh:
	ld (hl),0f9h		;079f	36 f9 	6 . 
	add hl,de			;07a1	19 	. 
	ld (hl),a			;07a2	77 	w 
	add hl,de			;07a3	19 	. 
	ld (hl),c			;07a4	71 	q 
	add hl,de			;07a5	19 	. 
	djnz l079fh		;07a6	10 f7 	. . 
	ret			;07a8	c9 	. 
	ld a,(0c16dh)		;07a9	3a 6d c1 	: m . 
	bit 1,a		;07ac	cb 4f 	. O 
	ret nz			;07ae	c0 	. 
	ld hl,0c181h		;07af	21 81 c1 	! . . 
	ld a,(hl)			;07b2	7e 	~ 
	or a			;07b3	b7 	. 
	jr z,l07bch		;07b4	28 06 	( . 
	inc l			;07b6	2c 	, 
	inc l			;07b7	2c 	, 
	cp (hl)			;07b8	be 	. 
	jr nz,l07bch		;07b9	20 01 	  . 
	inc (hl)			;07bb	34 	4 
l07bch:
	ld hl,0c3a2h		;07bc	21 a2 c3 	! . . 
	bit 7,(hl)		;07bf	cb 7e 	. ~ 
	call nz,047cch		;07c1	c4 cc 47 	. . G 
	ld hl,0c422h		;07c4	21 22 c4 	! " . 
	bit 7,(hl)		;07c7	cb 7e 	. ~ 
	jr nz,l07cch		;07c9	20 01 	  . 
	ret			;07cb	c9 	. 
l07cch:
	bit 0,(hl)		;07cc	cb 46 	. F 
	dec hl			;07ce	2b 	+ 
	dec hl			;07cf	2b 	+ 
	ld (0c17ch),hl		;07d0	22 7c c1 	" | . 
	ld ix,(0c17ch)		;07d3	dd 2a 7c c1 	. * | . 
	jp z,l3fb9h		;07d7	ca b9 3f 	. . ? 
	ld a,(ix+004h)		;07da	dd 7e 04 	. ~ . 
	cp 00dh		;07dd	fe 0d 	. . 
	jp c,04880h		;07df	da 80 48 	. . H 
	ld a,(ix+007h)		;07e2	dd 7e 07 	. ~ . 
	cp 0e1h		;07e5	fe e1 	. . 
	jp nc,04880h		;07e7	d2 80 48 	. . H 
	cp 031h		;07ea	fe 31 	. 1 
	jp c,04880h		;07ec	da 80 48 	. . H 
	ld a,(ix+002h)		;07ef	dd 7e 02 	. ~ . 
	bit 6,a		;07f2	cb 77 	. w 
	jr nz,l07fbh		;07f4	20 05 	  . 
	and 028h		;07f6	e6 28 	. ( 
	jp nz,04893h		;07f8	c2 93 48 	. . H 
l07fbh:
	ld l,(ix+010h)		;07fb	dd 6e 10 	. n . 
	ld h,(ix+011h)		;07fe	dd 66 11 	. f . 
	ld de,0fff8h		;0801	11 f8 ff 	. . . 
l0804h:
	add hl,de			;0804	19 	. 
	ld (ix+010h),l		;0805	dd 75 10 	. u . 
	ld (ix+011h),h		;0808	dd 74 11 	. t . 
	ld a,(0c17ch)		;080b	3a 7c c1 	: | . 
	cp 0a0h		;080e	fe a0 	. . 
	ld hl,0c181h		;0810	21 81 c1 	! . . 
	jr z,l0818h		;0813	28 03 	( . 
	ld hl,0c183h		;0815	21 83 c1 	! . . 
l0818h:
	ld a,(hl)			;0818	7e 	~ 
	and 001h		;0819	e6 01 	. . 
	jr z,l082ah		;081b	28 0d 	( . 
	ld hl,sub_0202h		;081d	21 02 02 	! . . 
	xor a			;0820	af 	. 
	call 0392fh		;0821	cd 2f 39 	. / 9 
	ld a,(ix+014h)		;0824	dd 7e 14 	. ~ . 
	or a			;0827	b7 	. 
	jr nz,l0880h		;0828	20 56 	  V 
l082ah:
	ld l,(ix+003h)		;082a	dd 6e 03 	. n . 
	ld h,(ix+004h)		;082d	dd 66 04 	. f . 
	ld e,(ix+010h)		;0830	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;0833	dd 56 11 	. V . 
	add hl,de			;0836	19 	. 
	ld (ix+003h),l		;0837	dd 75 03 	. u . 
	ld (ix+004h),h		;083a	dd 74 04 	. t . 
	ld l,(ix+006h)		;083d	dd 6e 06 	. n . 
	ld h,(ix+007h)		;0840	dd 66 07 	. f . 
	ld e,(ix+012h)		;0843	dd 5e 12 	. ^ . 
	ld d,(ix+013h)		;0846	dd 56 13 	. V . 
	add hl,de			;0849	19 	. 
	ld (ix+006h),l		;084a	dd 75 06 	. u . 
	ld (ix+007h),h		;084d	dd 74 07 	. t . 
	call l2339h+2		;0850	cd 3b 23 	. ; # 
	ld a,(0c17ch)		;0853	3a 7c c1 	: | . 
	cp 0a0h		;0856	fe a0 	. . 
	ld hl,0c181h		;0858	21 81 c1 	! . . 
	jr z,l0860h		;085b	28 03 	( . 
	ld hl,0c183h		;085d	21 83 c1 	! . . 
l0860h:
	inc (hl)			;0860	34 	4 
	ld a,(hl)			;0861	7e 	~ 
	and 007h		;0862	e6 07 	. . 
	jr nz,l087ch		;0864	20 16 	  . 
	inc l			;0866	2c 	, 
	inc (hl)			;0867	34 	4 
	ld a,(hl)			;0868	7e 	~ 
	cp 003h		;0869	fe 03 	. . 
	jr c,l086fh		;086b	38 02 	8 . 
	xor a			;086d	af 	. 
	ld (hl),a			;086e	77 	w 
l086fh:
	add a,a			;086f	87 	. 
	add a,a			;0870	87 	. 
	ld c,00ch		;0871	0e 0c 	. . 
	add a,c			;0873	81 	. 
	ld hl,(0c17ch)		;0874	2a 7c c1 	* | . 
	ld b,004h		;0877	06 04 	. . 
	call sub_22f4h		;0879	cd f4 22 	. . " 
l087ch:
	ld b,004h		;087c	06 04 	. . 
	rst 28h			;087e	ef 	. 
	ret			;087f	c9 	. 
l0880h:
	ld b,004h		;0880	06 04 	. . 
	call 0057fh		;0882	cd 7f 05 	.  . 
	ld hl,(0c17ch)		;0885	2a 7c c1 	* | . 
	ld e,l			;0888	5d 	] 
	ld d,h			;0889	54 	T 
	inc de			;088a	13 	. 
	ld bc,0007fh		;088b	01 7f 00 	.  . 
	ld (hl),000h		;088e	36 00 	6 . 
	ldir		;0890	ed b0 	. . 
	ret			;0892	c9 	. 
	ld a,(ix+002h)		;0893	dd 7e 02 	. ~ . 
	ld (ix+002h),0c1h		;0896	dd 36 02 c1 	. 6 . . 
	bit 3,a		;089a	cb 5f 	. _ 
	jp z,04880h		;089c	ca 80 48 	. . H 
	ld hl,0ff80h		;089f	21 80 ff 	! . . 
	bit 1,a		;08a2	cb 4f 	. O 
	jr nz,l08a9h		;08a4	20 03 	  . 
	ld hl,l0080h		;08a6	21 80 00 	! . . 
l08a9h:
	ld (ix+010h),l		;08a9	dd 75 10 	. u . 
	ld (ix+011h),h		;08ac	dd 74 11 	. t . 
	xor a			;08af	af 	. 
	ld (ix+012h),a		;08b0	dd 77 12 	. w . 
	ld (ix+013h),a		;08b3	dd 77 13 	. w . 
	ld a,092h		;08b6	3e 92 	> . 
	call 00a99h		;08b8	cd 99 0a 	. . . 
	jp 047fbh		;08bb	c3 fb 47 	. . G 
	ld hl,0c5b5h		;08be	21 b5 c5 	! . . 
	ld de,l0020h		;08c1	11 20 00 	.   . 
	ld bc,02403h		;08c4	01 03 24 	. . $ 
	ld a,c			;08c7	79 	y 
l08c8h:
	and (hl)			;08c8	a6 	. 
	call nz,048d1h		;08c9	c4 d1 48 	. . H 
	add hl,de			;08cc	19 	. 
	ld a,c			;08cd	79 	y 
	djnz l08c8h		;08ce	10 f8 	. . 
	ret			;08d0	c9 	. 
	dec l			;08d1	2d 	- 
	ld (hl),000h		;08d2	36 00 	6 . 
	inc l			;08d4	2c 	, 
	ld a,(0c231h)		;08d5	3a 31 c2 	: 1 . 
	cp 080h		;08d8	fe 80 	. . 
	ret c			;08da	d8 	. 
	push bc			;08db	c5 	. 
	push hl			;08dc	e5 	. 
	bit 1,(hl)		;08dd	cb 4e 	. N 
	exx			;08df	d9 	. 
	ld bc,l0012h+2		;08e0	01 14 00 	. . . 
	jr z,l08e8h		;08e3	28 03 	( . 
	ld bc,l010ah		;08e5	01 0a 01 	. . . 
l08e8h:
	exx			;08e8	d9 	. 
	ex de,hl			;08e9	eb 	. 
	ld hl,(0c226h)		;08ea	2a 26 c2 	* & . 
	ld bc,(0c232h)		;08ed	ed 4b 32 c2 	. K 2 . 
	add hl,bc			;08f1	09 	. 
	ex de,hl			;08f2	eb 	. 
	ld bc,0fff2h		;08f3	01 f2 ff 	. . . 
	add hl,bc			;08f6	09 	. 
	ld a,d			;08f7	7a 	z 
	sub (hl)			;08f8	96 	. 
	jr nc,l08fdh		;08f9	30 02 	0 . 
	neg		;08fb	ed 44 	. D 
l08fdh:
	exx			;08fd	d9 	. 
	cp c			;08fe	b9 	. 
	jr nc,l0952h		;08ff	30 51 	0 Q 
l0901h:
	ld a,b			;0901	78 	x 
	exx			;0902	d9 	. 
	dec l			;0903	2d 	- 
	dec l			;0904	2d 	- 
	dec l			;0905	2d 	- 
	ex de,hl			;0906	eb 	. 
	ld hl,(0c223h)		;0907	2a 23 c2 	* # . 
	ld bc,(0c230h)		;090a	ed 4b 30 c2 	. K 0 . 
	or a			;090e	b7 	. 
	jr nz,l0926h		;090f	20 15 	  . 
	add hl,bc			;0911	09 	. 
	ld a,h			;0912	7c 	| 
	sub 00bh		;0913	d6 0b 	. . 
	jr c,l0952h		;0915	38 3b 	8 ; 
	ex de,hl			;0917	eb 	. 
	sub (hl)			;0918	96 	. 
	jr nc,l091dh		;0919	30 02 	0 . 
	neg		;091b	ed 44 	. D 
l091dh:
	cp 003h		;091d	fe 03 	. . 
	jr nc,l0952h		;091f	30 31 	0 1 
	ld bc,l0c00h		;0921	01 00 0c 	. . . 
	jr l093bh		;0924	18 15 	. . 
l0926h:
	ld a,h			;0926	7c 	| 
	sub 00eh		;0927	d6 0e 	. . 
	jr c,l0952h		;0929	38 27 	8 ' 
sub_092bh:
	ex de,hl			;092b	eb 	. 
	cp (hl)			;092c	be 	. 
	jr c,l0952h		;092d	38 23 	8 # 
	ex de,hl			;092f	eb 	. 
	add hl,bc			;0930	09 	. 
	ld a,h			;0931	7c 	| 
	sub 00fh		;0932	d6 0f 	. . 
	ex de,hl			;0934	eb 	. 
	cp (hl)			;0935	be 	. 
	jr nc,l0952h		;0936	30 1a 	0 . 
	ld bc,00e00h		;0938	01 00 0e 	. . . 
l093bh:
	ld d,(hl)			;093b	56 	V 
	dec l			;093c	2d 	- 
	ld l,(hl)			;093d	6e 	n 
	ld h,d			;093e	62 	b 
	add hl,bc			;093f	09 	. 
	ld (0c223h),hl		;0940	22 23 c2 	" # . 
	ld hl,0c234h		;0943	21 34 c2 	! 4 . 
	set 1,(hl)		;0946	cb ce 	. . 
	pop hl			;0948	e1 	. 
	pop bc			;0949	c1 	. 
	dec l			;094a	2d 	- 
	set 0,(hl)		;094b	cb c6 	. . 
	inc l			;094d	2c 	, 
	ld de,l0020h		;094e	11 20 00 	.   . 
	ret			;0951	c9 	. 
l0952h:
	pop hl			;0952	e1 	. 
	pop bc			;0953	c1 	. 
	ld de,l0020h		;0954	11 20 00 	.   . 
	ret			;0957	c9 	. 
	ld hl,(0c196h)		;0958	2a 96 c1 	* . . 
	inc l			;095b	2c 	, 
	inc l			;095c	2c 	, 
	inc l			;095d	2c 	, 
	ld e,(hl)			;095e	5e 	^ 
	inc l			;095f	2c 	, 
	ld d,(hl)			;0960	56 	V 
	ex de,hl			;0961	eb 	. 
	add hl,bc			;0962	09 	. 
	ld (0c223h),hl		;0963	22 23 c2 	" # . 
	ret			;0966	c9 	. 
	ld a,(0c197h)		;0967	3a 97 c1 	: . . 
	rra			;096a	1f 	. 
	ld a,(0c224h)		;096b	3a 24 c2 	: $ . 
	jr nc,l0972h		;096e	30 02 	0 . 
	add a,020h		;0970	c6 20 	.   
l0972h:
	ld (0c4a4h),a		;0972	32 a4 c4 	2 . . 
	ld a,038h		;0975	3e 38 	> 8 
	ld (0c4a7h),a		;0977	32 a7 c4 	2 . . 
	ld de,0c4a0h		;097a	11 a0 c4 	. . . 
	ld a,094h		;097d	3e 94 	> . 
	ld b,008h		;097f	06 08 	. . 
	ld hl,00a75h		;0981	21 75 0a 	! u . 
	call 00971h		;0984	cd 71 09 	. q . 
	ld hl,0c4a0h		;0987	21 a0 c4 	! . . 
	ld a,024h		;098a	3e 24 	> $ 
	ld b,008h		;098c	06 08 	. . 
	call sub_22f4h		;098e	cd f4 22 	. . " 
	ld a,004h		;0991	3e 04 	> . 
	call sub_0b13h		;0993	cd 13 0b 	. . . 
	ld hl,09fbdh		;0996	21 bd 9f 	! . . 
l0999h:
	ld de,l2380h		;0999	11 80 23 	. . # 
	ld bc,l0200h		;099c	01 00 02 	. . . 
	di			;099f	f3 	. 
	call sub_046ch		;09a0	cd 6c 04 	. l . 
	ei			;09a3	fb 	. 
	ret			;09a4	c9 	. 
	ld ix,0c4a0h		;09a5	dd 21 a0 c4 	. ! . . 
	ld hl,0c19ah		;09a9	21 9a c1 	! . . 
	inc (hl)			;09ac	34 	4 
l09adh:
	dec l			;09ad	2d 	- 
	bit 0,(hl)		;09ae	cb 46 	. F 
	jr nz,l09fah		;09b0	20 48 	  H 
	bit 1,(hl)		;09b2	cb 4e 	. N 
	jr nz,l09e5h		;09b4	20 2f 	  / 
	ld a,(0c197h)		;09b6	3a 97 c1 	: . . 
	or a			;09b9	b7 	. 
	jp nz,04a53h		;09ba	c2 53 4a 	. S J 
	inc l			;09bd	2c 	, 
	ld a,(hl)			;09be	7e 	~ 
l09bfh:
	and 007h		;09bf	e6 07 	. . 
	call z,04a44h		;09c1	cc 44 4a 	. D J 
	ld hl,(0c4a6h)		;09c4	2a a6 c4 	* . . 
	ld bc,000a0h		;09c7	01 a0 00 	. . . 
	add hl,bc			;09ca	09 	. 
	ld (0c4a6h),hl		;09cb	22 a6 c4 	" . . 
	ld a,(0c227h)		;09ce	3a 27 c2 	: ' . 
l09d1h:
	add a,00eh		;09d1	c6 0e 	. . 
	cp h			;09d3	bc 	. 
	jr nc,l0a33h		;09d4	30 5d 	0 ] 
	ld hl,0c19ah		;09d6	21 9a c1 	! . . 
	ld (hl),000h		;09d9	36 00 	6 . 
	dec l			;09db	2d 	- 
	set 1,(hl)		;09dc	cb ce 	. . 
	exx			;09de	d9 	. 
	ld hl,0c16dh		;09df	21 6d c1 	! m . 
	set 2,(hl)		;09e2	cb d6 	. . 
	exx			;09e4	d9 	. 
l09e5h:
	inc l			;09e5	2c 	, 
	ld a,(hl)			;09e6	7e 	~ 
	cp 020h		;09e7	fe 20 	.   
l09e9h:
	ret c			;09e9	d8 	. 
	dec l			;09ea	2d 	- 
	set 0,(hl)		;09eb	cb c6 	. . 
	ld (ix+010h),0c8h		;09ed	dd 36 10 c8 	. 6 . . 
	ld (ix+011h),000h		;09f1	dd 36 11 00 	. 6 . . 
	ld a,0a1h		;09f5	3e a1 	> . 
	call 00a99h		;09f7	cd 99 0a 	. . . 
l09fah:
	ld hl,(0c4b0h)		;09fa	2a b0 c4 	* . . 
	ld a,(0c19ah)		;09fd	3a 9a c1 	: . . 
l0a00h:
	and 003h		;0a00	e6 03 	. . 
	ld de,l0000h		;0a02	11 00 00 	. . . 
	jr nz,l0a0ah		;0a05	20 03 	  . 
	ld de,0ffffh		;0a07	11 ff ff 	. . . 
l0a0ah:
	add hl,de			;0a0a	19 	. 
	ld (0c4b0h),hl		;0a0b	22 b0 c4 	" . . 
	ex de,hl			;0a0e	eb 	. 
	ld hl,(0c4a3h)		;0a0f	2a a3 c4 	* . . 
	add hl,de			;0a12	19 	. 
	ld (0c4a3h),hl		;0a13	22 a3 c4 	" . . 
	ld hl,(0c223h)		;0a16	2a 23 c2 	* # . 
	add hl,de			;0a19	19 	. 
	ld (0c223h),hl		;0a1a	22 23 c2 	" # . 
	ld de,000a0h		;0a1d	11 a0 00 	. . . 
	ld hl,(0c4a6h)		;0a20	2a a6 c4 	* . . 
	add hl,de			;0a23	19 	. 
	ld (0c4a6h),hl		;0a24	22 a6 c4 	" . . 
	ld hl,(0c226h)		;0a27	2a 26 c2 	* & . 
	add hl,de			;0a2a	19 	. 
	ld (0c226h),hl		;0a2b	22 26 c2 	" & . 
	ld a,0d0h		;0a2e	3e d0 	> . 
	cp h			;0a30	bc 	. 
	jr c,l0a3eh		;0a31	38 0b 	8 . 
l0a33h:
	ld b,008h		;0a33	06 08 	. . 
	rst 28h			;0a35	ef 	. 
	ld b,00ch		;0a36	06 0c 	. . 
	ld ix,0c220h		;0a38	dd 21 20 c2 	. !   . 
	rst 28h			;0a3c	ef 	. 
	ret			;0a3d	c9 	. 
l0a3eh:
	ld hl,0c16dh		;0a3e	21 6d c1 	! m . 
	set 4,(hl)		;0a41	cb e6 	. . 
	ret			;0a43	c9 	. 
	ld hl,0c4a0h		;0a44	21 a0 c4 	! . . 
	ld a,(0c19ah)		;0a47	3a 9a c1 	: . . 
	ld b,008h		;0a4a	06 08 	. . 
	and b			;0a4c	a0 	. 
	add a,01ch		;0a4d	c6 1c 	. . 
	call sub_22f4h		;0a4f	cd f4 22 	. . " 
	ret			;0a52	c9 	. 
	ld hl,(0c226h)		;0a53	2a 26 c2 	* & . 
	ld de,00e00h		;0a56	11 00 0e 	. . . 
	add hl,de			;0a59	19 	. 
	ld de,(0c4a6h)		;0a5a	ed 5b a6 c4 	. [ . . 
	or a			;0a5e	b7 	. 
	sbc hl,de		;0a5f	ed 52 	. R 
	res 7,h		;0a61	cb bc 	. . 
	xor a			;0a63	af 	. 
	ld b,a			;0a64	47 	G 
l0a65h:
	sra h		;0a65	cb 2c 	. , 
	rr l		;0a67	cb 1d 	. . 
	inc b			;0a69	04 	. 
	cp h			;0a6a	bc 	. 
	jr nz,l0a65h		;0a6b	20 f8 	  . 
	inc hl			;0a6d	23 	# 
	push hl			;0a6e	e5 	. 
	ld hl,(0c223h)		;0a6f	2a 23 c2 	* # . 
	ld de,(0c4a3h)		;0a72	ed 5b a3 c4 	. [ . . 
	or a			;0a76	b7 	. 
	sbc hl,de		;0a77	ed 52 	. R 
l0a79h:
	sra h		;0a79	cb 2c 	. , 
	rr l		;0a7b	cb 1d 	. . 
	djnz l0a79h		;0a7d	10 fa 	. . 
	ld de,(0c4a3h)		;0a7f	ed 5b a3 c4 	. [ . . 
	add hl,de			;0a83	19 	. 
	ld (0c4a3h),hl		;0a84	22 a3 c4 	" . . 
	pop de			;0a87	d1 	. 
	ld hl,(0c4a6h)		;0a88	2a a6 c4 	* . . 
	add hl,de			;0a8b	19 	. 
	ld (0c4a6h),hl		;0a8c	22 a6 c4 	" . . 
	ld a,(0c227h)		;0a8f	3a 27 c2 	: ' . 
	add a,00ch		;0a92	c6 0c 	. . 
	cp h			;0a94	bc 	. 
	jp nc,04a33h		;0a95	d2 33 4a 	. 3 J 
	ld hl,(0c223h)		;0a98	2a 23 c2 	* # . 
	ld (0c4a3h),hl		;0a9b	22 a3 c4 	" . . 
	ld hl,0c4a0h		;0a9e	21 a0 c4 	! . . 
	ld a,024h		;0aa1	3e 24 	> $ 
	ld b,008h		;0aa3	06 08 	. . 
	call sub_22f4h		;0aa5	cd f4 22 	. . " 
	jp 049d6h		;0aa8	c3 d6 49 	. . I 
	ld hl,0c16dh		;0aab	21 6d c1 	! m . 
	bit 4,(hl)		;0aae	cb 66 	. f 
	jr nz,l0abfh		;0ab0	20 0d 	  . 
	bit 3,(hl)		;0ab2	cb 5e 	. ^ 
	ret nz			;0ab4	c0 	. 
	bit 2,(hl)		;0ab5	cb 56 	. V 
	ret z			;0ab7	c8 	. 
	set 3,(hl)		;0ab8	cb de 	. . 
	ld a,003h		;0aba	3e 03 	> . 
	jp l3db0h		;0abc	c3 b0 3d 	. . = 
l0abfh:
	ld a,(0c128h)		;0abf	3a 28 c1 	: ( . 
	ld c,028h		;0ac2	0e 28 	. ( 
	cp c			;0ac4	b9 	. 
	jr z,l0ae9h		;0ac5	28 22 	( " 
	ld (0c132h),a		;0ac7	32 32 c1 	2 2 . 
sub_0acah:
	ld a,c			;0aca	79 	y 
	ld (0d39bh),a		;0acb	32 9b d3 	2 . . 
	ld a,(0c129h)		;0ace	3a 29 c1 	: ) . 
	ld (0c133h),a		;0ad1	32 33 c1 	2 3 . 
	ld a,003h		;0ad4	3e 03 	> . 
	ld (0d39ah),a		;0ad6	32 9a d3 	2 . . 
	jr l0b22h		;0ad9	18 47 	. G 
	ld a,(0c132h)		;0adb	3a 32 c1 	: 2 . 
	ld (0d39bh),a		;0ade	32 9b d3 	2 . . 
	ld a,(0c133h)		;0ae1	3a 33 c1 	: 3 . 
	ld (0d39ah),a		;0ae4	32 9a d3 	2 . . 
	jr l0b22h		;0ae7	18 39 	. 9 
l0ae9h:
	ld a,(0c132h)		;0ae9	3a 32 c1 	: 2 . 
	ld (0d39bh),a		;0aec	32 9b d3 	2 . . 
	srl a		;0aef	cb 3f 	. ? 
	srl a		;0af1	cb 3f 	. ? 
sub_0af3h:
	ld b,a			;0af3	47 	G 
	add a,a			;0af4	87 	. 
	add a,b			;0af5	80 	. 
	ld c,a			;0af6	4f 	O 
	ld a,(0cca8h)		;0af7	3a a8 cc 	: . . 
	dec a			;0afa	3d 	= 
	add a,c			;0afb	81 	. 
	ld e,a			;0afc	5f 	_ 
	ld d,000h		;0afd	16 00 	. . 
	ld hl,04b3eh		;0aff	21 3e 4b 	! > K 
	add hl,de			;0b02	19 	. 
	ld a,(hl)			;0b03	7e 	~ 
	ld (0d39ah),a		;0b04	32 9a d3 	2 . . 
l0b07h:
	ld c,a			;0b07	4f 	O 
	ld a,(0c12fh)		;0b08	3a 2f c1 	: / . 
	rla			;0b0b	17 	. 
	jr c,l0b22h		;0b0c	38 14 	8 . 
	ld e,b			;0b0e	58 	X 
	ld hl,04b5ch		;0b0f	21 5c 4b 	! \ K 
	add hl,de			;0b12	19 	. 
sub_0b13h:
	ld a,(hl)			;0b13	7e 	~ 
	cp c			;0b14	b9 	. 
	jr nc,l0b22h		;0b15	30 0b 	0 . 
	ld hl,0c12fh		;0b17	21 2f c1 	! / . 
	set 0,(hl)		;0b1a	cb c6 	. . 
	set 7,(hl)		;0b1c	cb fe 	. . 
	ld hl,0c130h		;0b1e	21 30 c1 	! 0 . 
	inc (hl)			;0b21	34 	4 
l0b22h:
	ld hl,0c120h		;0b22	21 20 c1 	!   . 
	ld a,(0cc34h)		;0b25	3a 34 cc 	: 4 . 
	rla			;0b28	17 	. 
	set 3,(hl)		;0b29	cb de 	. . 
	jr c,l0b3bh		;0b2b	38 0e 	8 . 
	ld hl,0c131h		;0b2d	21 31 c1 	! 1 . 
	set 0,(hl)		;0b30	cb c6 	. . 
	set 1,(hl)		;0b32	cb ce 	. . 
sub_0b34h:
	ld a,(0cc36h)		;0b34	3a 36 cc 	: 6 . 
	ld (0c134h),a		;0b37	32 34 c1 	2 4 . 
	ret			;0b3a	c9 	. 
l0b3bh:
	set 6,(hl)		;0b3b	cb f6 	. . 
	ret			;0b3d	c9 	. 
	ld (bc),a			;0b3e	02 	. 
sub_0b3fh:
	inc bc			;0b3f	03 	. 
	ld (bc),a			;0b40	02 	. 
	ld (bc),a			;0b41	02 	. 
	inc bc			;0b42	03 	. 
	ld (bc),a			;0b43	02 	. 
	ld (bc),a			;0b44	02 	. 
	inc bc			;0b45	03 	. 
	ld bc,l0302h		;0b46	01 02 03 	. . . 
	inc bc			;0b49	03 	. 
	inc bc			;0b4a	03 	. 
	ld (bc),a			;0b4b	02 	. 
	inc bc			;0b4c	03 	. 
	ld bc,l0203h		;0b4d	01 03 02 	. . . 
	inc bc			;0b50	03 	. 
	ld (bc),a			;0b51	02 	. 
	ld bc,l0302h		;0b52	01 02 03 	. . . 
	ld (bc),a			;0b55	02 	. 
	ld bc,l0203h		;0b56	01 03 02 	. . . 
	ld (bc),a			;0b59	02 	. 
	ld bc,l0302h+1		;0b5a	01 03 03 	. . . 
	inc bc			;0b5d	03 	. 
	ld bc,l0200h		;0b5e	01 00 02 	. . . 
	ld bc,l0100h		;0b61	01 00 01 	. . . 
	ld (bc),a			;0b64	02 	. 
	inc bc			;0b65	03 	. 
	ld hl,0c1a1h		;0b66	21 a1 c1 	! . . 
	ld de,l000ah+2		;0b69	11 0c 00 	. . . 
	ld bc,00a28h		;0b6c	01 28 0a 	. ( . 
l0b6fh:
	ld a,(hl)			;0b6f	7e 	~ 
	and 07fh		;0b70	e6 7f 	.  
	cp c			;0b72	b9 	. 
	jr nz,l0b78h		;0b73	20 03 	  . 
	add hl,de			;0b75	19 	. 
	jr l0b88h		;0b76	18 10 	. . 
l0b78h:
	push bc			;0b78	c5 	. 
	ld bc,l000ah+1		;0b79	01 0b 00 	. . . 
	ld e,l			;0b7c	5d 	] 
	ld d,h			;0b7d	54 	T 
	inc de			;0b7e	13 	. 
	ld (hl),000h		;0b7f	36 00 	6 . 
	ldir		;0b81	ed b0 	. . 
	pop bc			;0b83	c1 	. 
	ld de,l000ah		;0b84	11 0a 00 	. . . 
	inc hl			;0b87	23 	# 
l0b88h:
	djnz l0b6fh		;0b88	10 e5 	. . 
sub_0b8ah:
	ld ix,0c4a0h		;0b8a	dd 21 a0 c4 	. ! . . 
	ld (ix+00dh),014h		;0b8e	dd 36 0d 14 	. 6 . . 
	ld b,02ch		;0b92	06 2c 	. , 
	call 0057fh		;0b94	cd 7f 05 	.  . 
	ret			;0b97	c9 	. 
	ld a,009h		;0b98	3e 09 	> . 
	call sub_092bh		;0b9a	cd 2b 09 	. + . 
	jp c,l06dah		;0b9d	da da 06 	. . . 
	ld l,d			;0ba0	6a 	j 
	ld h,000h		;0ba1	26 00 	& . 
	add hl,hl			;0ba3	29 	) 
	ld a,002h		;0ba4	3e 02 	> . 
	call sub_0b13h		;0ba6	cd 13 0b 	. . . 
	ld bc,0bb3eh		;0ba9	01 3e bb 	. > . 
	add hl,bc			;0bac	09 	. 
	ld ix,(0c196h)		;0bad	dd 2a 96 c1 	. * . . 
	ld (ix+002h),0c0h		;0bb1	dd 36 02 c0 	. 6 . . 
	ld a,(hl)			;0bb5	7e 	~ 
	ld (ix+003h),080h		;0bb6	dd 36 03 80 	. 6 . . 
	ld (ix+004h),a		;0bba	dd 77 04 	. w . 
	ld (ix+007h),0d0h		;0bbd	dd 36 07 d0 	. 6 . . 
	ld (ix+015h),001h		;0bc1	dd 36 15 01 	. 6 . . 
	inc hl			;0bc5	23 	# 
	ld a,(hl)			;0bc6	7e 	~ 
	cp 035h		;0bc7	fe 35 	. 5 
	jr nz,l0bdah		;0bc9	20 0f 	  . 
	ld (ix+003h),080h		;0bcb	dd 36 03 80 	. 6 . . 
	ld (ix+004h),034h		;0bcf	dd 36 04 34 	. 6 . 4 
	ld (ix+006h),000h		;0bd3	dd 36 06 00 	. 6 . . 
	ld (ix+007h),e		;0bd7	dd 73 07 	. s . 
l0bdah:
	cp 033h		;0bda	fe 33 	. 3 
	jr z,l0be6h		;0bdc	28 08 	( . 
	cp 031h		;0bde	fe 31 	. 1 
	jr z,l0be6h		;0be0	28 04 	( . 
	cp 02ch		;0be2	fe 2c 	. , 
	jr nz,l0beah		;0be4	20 04 	  . 
l0be6h:
	ld (ix+007h),0cch		;0be6	dd 36 07 cc 	. 6 . . 
l0beah:
	cp 007h		;0bea	fe 07 	. . 
	jr z,l0c06h		;0bec	28 18 	( . 
	cp 00ch		;0bee	fe 0c 	. . 
	jr z,l0c06h		;0bf0	28 14 	( . 
	cp 032h		;0bf2	fe 32 	. 2 
	jr z,l0c06h		;0bf4	28 10 	( . 
	cp 011h		;0bf6	fe 11 	. . 
	jr z,l0c06h		;0bf8	28 0c 	( . 
	cp 01ah		;0bfa	fe 1a 	. . 
	jr z,l0c06h		;0bfc	28 08 	( . 
	cp 02ah		;0bfe	fe 2a 	. * 
l0c00h:
	jr z,l0c06h		;0c00	28 04 	( . 
	cp 02bh		;0c02	fe 2b 	. + 
	jr nz,l0c0ah		;0c04	20 04 	  . 
l0c06h:
	ld (ix+007h),0d4h		;0c06	dd 36 07 d4 	. 6 . . 
l0c0ah:
	ld e,a			;0c0a	5f 	_ 
l0c0bh:
	add a,a			;0c0b	87 	. 
	ld l,a			;0c0c	6f 	o 
	ld d,000h		;0c0d	16 00 	. . 
	ld h,d			;0c0f	62 	b 
	add hl,hl			;0c10	29 	) 
	add hl,de			;0c11	19 	. 
	add hl,hl			;0c12	29 	) 
	ld a,005h		;0c13	3e 05 	> . 
	call sub_0b13h		;0c15	cd 13 0b 	. . . 
	ld de,0bad6h		;0c18	11 d6 ba 	. . . 
	add hl,de			;0c1b	19 	. 
	ex de,hl			;0c1c	eb 	. 
	ld hl,(0c196h)		;0c1d	2a 96 c1 	* . . 
	ld bc,l0031h		;0c20	01 31 00 	. 1 . 
	add hl,bc			;0c23	09 	. 
	ex de,hl			;0c24	eb 	. 
	ld c,009h		;0c25	0e 09 	. . 
	ldir		;0c27	ed b0 	. . 
	ld a,(hl)			;0c29	7e 	~ 
	rst 30h			;0c2a	f7 	. 
	rst 30h			;0c2b	f7 	. 
	ld a,054h		;0c2c	3e 54 	> T 
	ld b,010h		;0c2e	06 10 	. . 
	call 022f1h		;0c30	cd f1 22 	. . " 
	ld e,(ix+033h)		;0c33	dd 5e 33 	. ^ 3 
	ld d,(ix+034h)		;0c36	dd 56 34 	. V 4 
	ld (ix+010h),e		;0c39	dd 73 10 	. s . 
	ld (ix+011h),d		;0c3c	dd 72 11 	. r . 
	ld e,(ix+035h)		;0c3f	dd 5e 35 	. ^ 5 
	ld d,(ix+036h)		;0c42	dd 56 36 	. V 6 
	ld (ix+012h),e		;0c45	dd 73 12 	. s . 
	ld (ix+013h),d		;0c48	dd 72 13 	. r . 
	ld c,028h		;0c4b	0e 28 	. ( 
	xor a			;0c4d	af 	. 
	cp e			;0c4e	bb 	. 
	jr nz,l0c56h		;0c4f	20 05 	  . 
	cp d			;0c51	ba 	. 
	jr nz,l0c56h		;0c52	20 02 	  . 
	ld c,038h		;0c54	0e 38 	. 8 
l0c56h:
	ld a,c			;0c56	79 	y 
	ld (0c198h),a		;0c57	32 98 c1 	2 . . 
	ret			;0c5a	c9 	. 
	call l2339h+2		;0c5b	cd 3b 23 	. ; # 
	ex af,af'			;0c5e	08 	. 
	ld a,(0c198h)		;0c5f	3a 98 c1 	: . . 
	ld c,a			;0c62	4f 	O 
	ex af,af'			;0c63	08 	. 
	cp c			;0c64	b9 	. 
	jp c,04d9dh		;0c65	da 9d 4d 	. . M 
	ld a,(ix+031h)		;0c68	dd 7e 31 	. ~ 1 
	and 0c0h		;0c6b	e6 c0 	. . 
	jr z,l0c7fh		;0c6d	28 10 	( . 
	ld a,00ch		;0c6f	3e 0c 	> . 
	cp (ix+004h)		;0c71	dd be 04 	. . . 
	jp nc,04d9dh		;0c74	d2 9d 4d 	. . M 
	ld a,074h		;0c77	3e 74 	> t 
	cp (ix+004h)		;0c79	dd be 04 	. . . 
	jp c,04d9dh		;0c7c	da 9d 4d 	. . M 
l0c7fh:
	bit 7,(ix+039h)		;0c7f	dd cb 39 7e 	. . 9 ~ 
	jr z,l0c9eh		;0c83	28 19 	( . 
	ld c,073h		;0c85	0e 73 	. s 
	ld a,00ch		;0c87	3e 0c 	> . 
	cp (ix+004h)		;0c89	dd be 04 	. . . 
	jr nc,l0c97h		;0c8c	30 09 	0 . 
	ld a,074h		;0c8e	3e 74 	> t 
	ld c,00dh		;0c90	0e 0d 	. . 
	cp (ix+004h)		;0c92	dd be 04 	. . . 
	jr nc,l0c9eh		;0c95	30 07 	0 . 
l0c97h:
	ld (ix+004h),c		;0c97	dd 71 04 	. q . 
	res 0,(ix+014h)		;0c9a	dd cb 14 86 	. . . . 
l0c9eh:
	ld a,(ix+031h)		;0c9e	dd 7e 31 	. ~ 1 
	and 0c0h		;0ca1	e6 c0 	. . 
	jr z,l0cadh		;0ca3	28 08 	( . 
	ld a,00ch		;0ca5	3e 0c 	> . 
	cp (ix+004h)		;0ca7	dd be 04 	. . . 
	jp nc,04da7h		;0caa	d2 a7 4d 	. . M 
l0cadh:
	bit 0,(ix+031h)		;0cad	dd cb 31 46 	. . 1 F 
	jr nz,l0cc7h		;0cb1	20 14 	  . 
	ld b,(ix+032h)		;0cb3	dd 46 32 	. F 2 
	call 022d9h		;0cb6	cd d9 22 	. . " 
	jp nc,04d99h		;0cb9	d2 99 4d 	. . M 
	bit 0,(ix+014h)		;0cbc	dd cb 14 46 	. . . F 
	jp z,04d99h		;0cc0	ca 99 4d 	. . M 
	set 0,(ix+031h)		;0cc3	dd cb 31 c6 	. . 1 . 
l0cc7h:
	inc (ix+03ah)		;0cc7	dd 34 3a 	. 4 : 
	bit 1,(ix+031h)		;0cca	dd cb 31 4e 	. . 1 N 
	jr z,l0d13h		;0cce	28 43 	( C 
	ld a,008h		;0cd0	3e 08 	> . 
	cp (ix+03ah)		;0cd2	dd be 3a 	. . : 
	jp nc,04d99h		;0cd5	d2 99 4d 	. . M 
	ld (ix+03ah),000h		;0cd8	dd 36 3a 00 	. 6 : . 
	res 1,(ix+031h)		;0cdc	dd cb 31 8e 	. . 1 . 
	ld a,004h		;0ce0	3e 04 	> . 
	xor (ix+031h)		;0ce2	dd ae 31 	. . 1 
	ld (ix+031h),a		;0ce5	dd 77 31 	. w 1 
	ld e,(ix+033h)		;0ce8	dd 5e 33 	. ^ 3 
	ld d,(ix+034h)		;0ceb	dd 56 34 	. V 4 
	ld c,(ix+035h)		;0cee	dd 4e 35 	. N 5 
	ld b,(ix+036h)		;0cf1	dd 46 36 	. F 6 
	bit 2,a		;0cf4	cb 57 	. W 
	jr z,l0d07h		;0cf6	28 0f 	( . 
	ld hl,l0000h		;0cf8	21 00 00 	! . . 
	or a			;0cfb	b7 	. 
	sbc hl,de		;0cfc	ed 52 	. R 
	ex de,hl			;0cfe	eb 	. 
	ld hl,l0000h		;0cff	21 00 00 	! . . 
	or a			;0d02	b7 	. 
l0d03h:
	sbc hl,bc		;0d03	ed 42 	. B 
l0d05h:
	ld c,l			;0d05	4d 	M 
	ld b,h			;0d06	44 	D 
l0d07h:
	ld (ix+010h),e		;0d07	dd 73 10 	. s . 
	ld (ix+011h),d		;0d0a	dd 72 11 	. r . 
	ld (ix+012h),c		;0d0d	dd 71 12 	. q . 
	ld (ix+013h),b		;0d10	dd 70 13 	. p . 
l0d13h:
	ld a,(ix+03ah)		;0d13	dd 7e 3a 	. ~ : 
	bit 7,(ix+039h)		;0d16	dd cb 39 7e 	. . 9 ~ 
	jr nz,l0d3ah		;0d1a	20 1e 	  . 
	cp (ix+039h)		;0d1c	dd be 39 	. . 9 
	jr c,l0d3ah		;0d1f	38 19 	8 . 
	ld (ix+03ah),000h		;0d21	dd 36 3a 00 	. 6 : . 
	set 1,(ix+031h)		;0d25	dd cb 31 ce 	. . 1 . 
	ld hl,(0c196h)		;0d29	2a 96 c1 	* . . 
	ld de,l000eh+2		;0d2c	11 10 00 	. . . 
	add hl,de			;0d2f	19 	. 
	xor a			;0d30	af 	. 
	ld (hl),a			;0d31	77 	w 
	inc l			;0d32	2c 	, 
	ld (hl),a			;0d33	77 	w 
	inc l			;0d34	2c 	, 
	ld (hl),a			;0d35	77 	w 
	inc l			;0d36	2c 	, 
	ld (hl),a			;0d37	77 	w 
	jr l0d99h		;0d38	18 5f 	. _ 
l0d3ah:
	ld l,(ix+037h)		;0d3a	dd 6e 37 	. n 7 
	ld h,(ix+038h)		;0d3d	dd 66 38 	. f 8 
	ld e,(ix+010h)		;0d40	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;0d43	dd 56 11 	. V . 
	add hl,de			;0d46	19 	. 
	ld (ix+010h),l		;0d47	dd 75 10 	. u . 
	ld (ix+011h),h		;0d4a	dd 74 11 	. t . 
	ld e,(ix+003h)		;0d4d	dd 5e 03 	. ^ . 
	ld d,(ix+004h)		;0d50	dd 56 04 	. V . 
	add hl,de			;0d53	19 	. 
	ld (ix+003h),l		;0d54	dd 75 03 	. u . 
	ld (ix+004h),h		;0d57	dd 74 04 	. t . 
	ld l,(ix+006h)		;0d5a	dd 6e 06 	. n . 
	ld h,(ix+007h)		;0d5d	dd 66 07 	. f . 
	ld e,(ix+012h)		;0d60	dd 5e 12 	. ^ . 
	ld d,(ix+013h)		;0d63	dd 56 13 	. V . 
	add hl,de			;0d66	19 	. 
	ld (ix+006h),l		;0d67	dd 75 06 	. u . 
	ld (ix+007h),h		;0d6a	dd 74 07 	. t . 
	ld a,(0c16dh)		;0d6d	3a 6d c1 	: m . 
	bit 1,a		;0d70	cb 4f 	. O 
	jr nz,l0d99h		;0d72	20 25 	  % 
	bit 0,(ix+014h)		;0d74	dd cb 14 46 	. . . F 
	jr z,l0d99h		;0d78	28 1f 	( . 
	ld a,(0c16bh)		;0d7a	3a 6b c1 	: k . 
	bit 6,a		;0d7d	cb 77 	. w 
	jr nz,l0d99h		;0d7f	20 18 	  . 
	ld c,(ix+012h)		;0d81	dd 4e 12 	. N . 
	ld b,(ix+013h)		;0d84	dd 46 13 	. F . 
	ld hl,(0c226h)		;0d87	2a 26 c2 	* & . 
	add hl,bc			;0d8a	09 	. 
	ld a,047h		;0d8b	3e 47 	> G 
	cp h			;0d8d	bc 	. 
	jr nc,l0d93h		;0d8e	30 03 	0 . 
	ld (0c226h),hl		;0d90	22 26 c2 	" & . 
l0d93h:
	ld bc,l0c00h		;0d93	01 00 0c 	. . . 
	call 04958h		;0d96	cd 58 49 	. X I 
l0d99h:
	ld b,010h		;0d99	06 10 	. . 
	rst 28h			;0d9b	ef 	. 
	ret			;0d9c	c9 	. 
l0d9dh:
	ld b,010h		;0d9d	06 10 	. . 
	call 0057bh		;0d9f	cd 7b 05 	. { . 
	ld b,010h		;0da2	06 10 	. . 
	jp l24a9h		;0da4	c3 a9 24 	. . $ 
	jr l0d9dh		;0da7	18 f4 	. . 
	ld a,006h		;0da9	3e 06 	> . 
	call sub_092bh		;0dab	cd 2b 09 	. + . 
	jp c,l06dah		;0dae	da da 06 	. . . 
	ld ix,(0c196h)		;0db1	dd 2a 96 c1 	. * . . 
	ld (ix+002h),0c0h		;0db5	dd 36 02 c0 	. 6 . . 
	ld (ix+004h),d		;0db9	dd 72 04 	. r . 
	ld (ix+007h),0cch		;0dbc	dd 36 07 cc 	. 6 . . 
	ld (ix+015h),002h		;0dc0	dd 36 15 02 	. 6 . . 
	ld a,032h		;0dc4	3e 32 	> 2 
	rst 30h			;0dc6	f7 	. 
	rst 30h			;0dc7	f7 	. 
	call 04e10h		;0dc8	cd 10 4e 	. . N 
	ret			;0dcb	c9 	. 
	call l2339h+2		;0dcc	cd 3b 23 	. ; # 
	cp 03ch		;0dcf	fe 3c 	. < 
	jp c,04e63h		;0dd1	da 63 4e 	. c N 
	ld hl,(0c196h)		;0dd4	2a 96 c1 	* . . 
	ld de,l0012h+2		;0dd7	11 14 00 	. . . 
	add hl,de			;0dda	19 	. 
	ld a,(0c199h)		;0ddb	3a 99 c1 	: . . 
	ex af,af'			;0dde	08 	. 
	ld a,(hl)			;0ddf	7e 	~ 
	ld (0c199h),a		;0de0	32 99 c1 	2 . . 
	or a			;0de3	b7 	. 
	jr z,l0e49h		;0de4	28 63 	( c 
	ex af,af'			;0de6	08 	. 
	and (hl)			;0de7	a6 	. 
	jr nz,l0e49h		;0de8	20 5f 	  _ 
	ld a,(0c198h)		;0dea	3a 98 c1 	: . . 
	xor 001h		;0ded	ee 01 	. . 
	ld (0c198h),a		;0def	32 98 c1 	2 . . 
	ld hl,(0c196h)		;0df2	2a 96 c1 	* . . 
	ld de,l0016h		;0df5	11 16 00 	. . . 
	add hl,de			;0df8	19 	. 
	ld (hl),a			;0df9	77 	w 
	jr nz,l0e2bh		;0dfa	20 2f 	  / 
	ld hl,(0c196h)		;0dfc	2a 96 c1 	* . . 
	ld de,l0002h+2		;0dff	11 04 00 	. . . 
	add hl,de			;0e02	19 	. 
l0e03h:
	ld a,(hl)			;0e03	7e 	~ 
l0e04h:
	sub 004h		;0e04	d6 04 	. . 
	ld (hl),a			;0e06	77 	w 
	add a,00ch		;0e07	c6 0c 	. . 
	ld (0c224h),a		;0e09	32 24 c2 	2 $ . 
	xor a			;0e0c	af 	. 
	ld (0c223h),a		;0e0d	32 23 c2 	2 # . 
	ld hl,(0c196h)		;0e10	2a 96 c1 	* . . 
	ld de,l000ah+2		;0e13	11 0c 00 	. . . 
	add hl,de			;0e16	19 	. 
	ld e,020h		;0e17	1e 20 	.   
	ld a,064h		;0e19	3e 64 	> d 
	ld b,006h		;0e1b	06 06 	. . 
l0e1dh:
	ld (hl),a			;0e1d	77 	w 
	add hl,de			;0e1e	19 	. 
	inc a			;0e1f	3c 	< 
	djnz l0e1dh		;0e20	10 fb 	. . 
	ld a,0ffh		;0e22	3e ff 	> . 
	ld (hl),a			;0e24	77 	w 
	add hl,de			;0e25	19 	. 
	ld (hl),a			;0e26	77 	w 
	add hl,de			;0e27	19 	. 
	ld (hl),a			;0e28	77 	w 
	jr l0e49h		;0e29	18 1e 	. . 
l0e2bh:
	ld hl,0c16ch		;0e2b	21 6c c1 	! l . 
	set 0,(hl)		;0e2e	cb c6 	. . 
	ld hl,(0c196h)		;0e30	2a 96 c1 	* . . 
	ld de,l0002h+2		;0e33	11 04 00 	. . . 
	add hl,de			;0e36	19 	. 
	ld a,(hl)			;0e37	7e 	~ 
	add a,004h		;0e38	c6 04 	. . 
	ld (hl),a			;0e3a	77 	w 
	ld e,008h		;0e3b	1e 08 	. . 
	add hl,de			;0e3d	19 	. 
	ld e,020h		;0e3e	1e 20 	.   
	ld a,06ah		;0e40	3e 6a 	> j 
	ld b,009h		;0e42	06 09 	. . 
l0e44h:
	ld (hl),a			;0e44	77 	w 
	add hl,de			;0e45	19 	. 
	inc a			;0e46	3c 	< 
	djnz l0e44h		;0e47	10 fb 	. . 
l0e49h:
	ld a,(0c16bh)		;0e49	3a 6b c1 	: k . 
	bit 6,a		;0e4c	cb 77 	. w 
	jr nz,l0e5fh		;0e4e	20 0f 	  . 
	ld hl,(0c196h)		;0e50	2a 96 c1 	* . . 
	ld de,l0012h+2		;0e53	11 14 00 	. . . 
	add hl,de			;0e56	19 	. 
	bit 0,(hl)		;0e57	cb 46 	. F 
	ld bc,00e00h		;0e59	01 00 0e 	. . . 
	call nz,04958h		;0e5c	c4 58 49 	. X I 
l0e5fh:
	ld b,009h		;0e5f	06 09 	. . 
	rst 28h			;0e61	ef 	. 
	ret			;0e62	c9 	. 
	ld b,009h		;0e63	06 09 	. . 
	call 0057bh		;0e65	cd 7b 05 	. { . 
	ld b,009h		;0e68	06 09 	. . 
	jp l24a9h		;0e6a	c3 a9 24 	. . $ 
	call l06dah		;0e6d	cd da 06 	. . . 
	call 04637h		;0e70	cd 37 46 	. 7 F 
	ret nc			;0e73	d0 	. 
	ld a,057h		;0e74	3e 57 	> W 
	jp sub_06e2h		;0e76	c3 e2 06 	. . . 
	ld a,007h		;0e79	3e 07 	> . 
	call sub_092bh		;0e7b	cd 2b 09 	. + . 
	jp c,l06dah		;0e7e	da da 06 	. . . 
	ld hl,(0c196h)		;0e81	2a 96 c1 	* . . 
	ld de,l0002h+2		;0e84	11 04 00 	. . . 
	add hl,de			;0e87	19 	. 
	ld a,030h		;0e88	3e 30 	> 0 
	ld (hl),a			;0e8a	77 	w 
	inc l			;0e8b	2c 	, 
	inc l			;0e8c	2c 	, 
	inc l			;0e8d	2c 	, 
	ld (hl),0d0h		;0e8e	36 d0 	6 . 
	ld a,01ch		;0e90	3e 1c 	> . 
	ld b,00ch		;0e92	06 0c 	. . 
	call 022f1h		;0e94	cd f1 22 	. . " 
	ld a,06dh		;0e97	3e 6d 	> m 
	ld b,006h		;0e99	06 06 	. . 
l0e9bh:
	rst 30h			;0e9b	f7 	. 
	djnz l0e9bh		;0e9c	10 fd 	. . 
	ret			;0e9e	c9 	. 
	call l2339h+2		;0e9f	cd 3b 23 	. ; # 
	ld hl,0c198h		;0ea2	21 98 c1 	! . . 
	bit 0,(hl)		;0ea5	cb 46 	. F 
	jr nz,l0eafh		;0ea7	20 06 	  . 
	cp 0b8h		;0ea9	fe b8 	. . 
	jr nc,l0ed0h		;0eab	30 23 	0 # 
	set 0,(hl)		;0ead	cb c6 	. . 
l0eafh:
	push af			;0eaf	f5 	. 
	ld hl,(0c196h)		;0eb0	2a 96 c1 	* . . 
	ld de,l0006h+2		;0eb3	11 08 00 	. . . 
	call 0227ah		;0eb6	cd 7a 22 	. z " 
	ld hl,(0c196h)		;0eb9	2a 96 c1 	* . . 
	rst 18h			;0ebc	df 	. 
	ld hl,(0c196h)		;0ebd	2a 96 c1 	* . . 
	ld de,l0100h		;0ec0	11 00 01 	. . . 
	rst 8			;0ec3	cf 	. 
	pop af			;0ec4	f1 	. 
	cp 0c8h		;0ec5	fe c8 	. . 
	jr nc,l0edeh		;0ec7	30 15 	0 . 
	ld a,(ix+004h)		;0ec9	dd 7e 04 	. ~ . 
	cp 078h		;0ecc	fe 78 	. x 
	jr nc,l0edeh		;0ece	30 0e 	0 . 
l0ed0h:
	ld hl,0c199h		;0ed0	21 99 c1 	! . . 
	inc (hl)			;0ed3	34 	4 
	ld a,(hl)			;0ed4	7e 	~ 
	and 007h		;0ed5	e6 07 	. . 
	call z,04ee8h		;0ed7	cc e8 4e 	. . N 
	ld b,00ch		;0eda	06 0c 	. . 
	rst 28h			;0edc	ef 	. 
	ret			;0edd	c9 	. 
l0edeh:
	ld b,00ch		;0ede	06 0c 	. . 
	call 0057bh		;0ee0	cd 7b 05 	. { . 
	ld b,00ch		;0ee3	06 0c 	. . 
	jp l24a9h		;0ee5	c3 a9 24 	. . $ 
	bit 3,(hl)		;0ee8	cb 5e 	. ^ 
	ld a,01ch		;0eea	3e 1c 	> . 
	jr nz,l0ef0h		;0eec	20 02 	  . 
	ld a,028h		;0eee	3e 28 	> ( 
l0ef0h:
	ld b,00ch		;0ef0	06 0c 	. . 
	call 022f1h		;0ef2	cd f1 22 	. . " 
	ret			;0ef5	c9 	. 
	ld a,007h		;0ef6	3e 07 	> . 
	call sub_092bh		;0ef8	cd 2b 09 	. + . 
	jp c,l06dah		;0efb	da da 06 	. . . 
	ld de,070a4h		;0efe	11 a4 70 	. . p 
	ld bc,0287fh		;0f01	01 7f 28 	.  ( 
	call 0225fh		;0f04	cd 5f 22 	. _ " 
	ld a,028h		;0f07	3e 28 	> ( 
	ld b,00ch		;0f09	06 0c 	. . 
	call 022f1h		;0f0b	cd f1 22 	. . " 
	ld a,070h		;0f0e	3e 70 	> p 
	ld b,009h		;0f10	06 09 	. . 
l0f12h:
	rst 30h			;0f12	f7 	. 
	djnz l0f12h		;0f13	10 fd 	. . 
	ret			;0f15	c9 	. 
	ld a,(0c198h)		;0f16	3a 98 c1 	: . . 
	bit 0,a		;0f19	cb 47 	. G 
	jr nz,l0f4bh		;0f1b	20 2e 	  . 
	ld hl,(0c196h)		;0f1d	2a 96 c1 	* . . 
	ld de,0fff2h		;0f20	11 f2 ff 	. . . 
	call 0227ah		;0f23	cd 7a 22 	. z " 
	ld hl,(0c196h)		;0f26	2a 96 c1 	* . . 
	rst 18h			;0f29	df 	. 
	ld hl,(0c196h)		;0f2a	2a 96 c1 	* . . 
	ld de,0ff80h		;0f2d	11 80 ff 	. . . 
	rst 8			;0f30	cf 	. 
	ld hl,(0c196h)		;0f31	2a 96 c1 	* . . 
	ld de,l0002h+2		;0f34	11 04 00 	. . . 
	add hl,de			;0f37	19 	. 
	ld a,030h		;0f38	3e 30 	> 0 
	cp (hl)			;0f3a	be 	. 
	jr c,l0f61h		;0f3b	38 24 	8 $ 
	ld (hl),a			;0f3d	77 	w 
	dec l			;0f3e	2d 	- 
	ld (hl),000h		;0f3f	36 00 	6 . 
	ld hl,0c198h		;0f41	21 98 c1 	! . . 
	set 0,(hl)		;0f44	cb c6 	. . 
	ld a,05bh		;0f46	3e 5b 	> [ 
	call sub_06e2h		;0f48	cd e2 06 	. . . 
l0f4bh:
	ld hl,0c199h		;0f4b	21 99 c1 	! . . 
	inc (hl)			;0f4e	34 	4 
	ld a,(hl)			;0f4f	7e 	~ 
	and 00fh		;0f50	e6 0f 	. . 
	jr nz,l0f61h		;0f52	20 0d 	  . 
	bit 4,(hl)		;0f54	cb 66 	. f 
	ld a,034h		;0f56	3e 34 	> 4 
	jr nz,l0f5ch		;0f58	20 02 	  . 
	ld a,040h		;0f5a	3e 40 	> @ 
l0f5ch:
	ld b,00ch		;0f5c	06 0c 	. . 
	call 022f1h		;0f5e	cd f1 22 	. . " 
l0f61h:
	ld b,00ch		;0f61	06 0c 	. . 
	rst 28h			;0f63	ef 	. 
	ret			;0f64	c9 	. 
	ld a,003h		;0f65	3e 03 	> . 
	call sub_092bh		;0f67	cd 2b 09 	. + . 
	jp c,l06dah		;0f6a	da da 06 	. . . 
	ld ix,(0c196h)		;0f6d	dd 2a 96 c1 	. * . . 
	ld a,003h		;0f71	3e 03 	> . 
	call sub_0b13h		;0f73	cd 13 0b 	. . . 
	ld hl,0a4bbh		;0f76	21 bb a4 	! . . 
	ld de,l2300h		;0f79	11 00 23 	. . # 
	ld bc,l0080h		;0f7c	01 80 00 	. . . 
	di			;0f7f	f3 	. 
	call sub_046ch		;0f80	cd 6c 04 	. l . 
	ei			;0f83	fb 	. 
	ld hl,(0c196h)		;0f84	2a 96 c1 	* . . 
	ld de,l0002h+2		;0f87	11 04 00 	. . . 
	add hl,de			;0f8a	19 	. 
	ld (hl),03ch		;0f8b	36 3c 	6 < 
	inc l			;0f8d	2c 	, 
	inc l			;0f8e	2c 	, 
	inc l			;0f8f	2c 	, 
	ld (hl),07eh		;0f90	36 7e 	6 ~ 
	ld e,005h		;0f92	1e 05 	. . 
	add hl,de			;0f94	19 	. 
	ld e,020h		;0f95	1e 20 	.   
	ld a,018h		;0f97	3e 18 	> . 
	ld b,004h		;0f99	06 04 	. . 
	call 022f1h		;0f9b	cd f1 22 	. . " 
	ld b,004h		;0f9e	06 04 	. . 
	jp 00028h		;0fa0	c3 28 00 	. ( . 
	ret			;0fa3	c9 	. 
	bit 0,(hl)		;0fa4	cb 46 	. F 
	call z,05061h		;0fa6	cc 61 50 	. a P 
	call 04fcah		;0fa9	cd ca 4f 	. . O 
	call 04fdch		;0fac	cd dc 4f 	. . O 
	call 04ff6h		;0faf	cd f6 4f 	. . O 
	call 05206h		;0fb2	cd 06 52 	. . R 
	jp c,052b2h		;0fb5	da b2 52 	. . R 
	ld a,(0c170h)		;0fb8	3a 70 c1 	: p . 
	cp 090h		;0fbb	fe 90 	. . 
	ret c			;0fbd	d8 	. 
	ld hl,0c175h		;0fbe	21 75 c1 	! u . 
	set 7,(hl)		;0fc1	cb fe 	. . 
	call l062ch+1		;0fc3	cd 2d 06 	. - . 
	call sub_0af3h		;0fc6	cd f3 0a 	. . . 
	ret			;0fc9	c9 	. 
	ld a,(0c170h)		;0fca	3a 70 c1 	: p . 
	ld c,a			;0fcd	4f 	O 
	and 007h		;0fce	e6 07 	. . 
l0fd0h:
	ret nz			;0fd0	c0 	. 
	ld a,c			;0fd1	79 	y 
	rra			;0fd2	1f 	. 
	rra			;0fd3	1f 	. 
	rra			;0fd4	1f 	. 
	and 003h		;0fd5	e6 03 	. . 
	add a,001h		;0fd7	c6 01 	. . 
	jp l3db0h		;0fd9	c3 b0 3d 	. . = 
	ld a,(0c170h)		;0fdc	3a 70 c1 	: p . 
	add a,003h		;0fdf	c6 03 	. . 
	ld c,a			;0fe1	4f 	O 
	and 00fh		;0fe2	e6 0f 	. . 
	ret nz			;0fe4	c0 	. 
	ld a,c			;0fe5	79 	y 
	rra			;0fe6	1f 	. 
	rra			;0fe7	1f 	. 
	rra			;0fe8	1f 	. 
	and 002h		;0fe9	e6 02 	. . 
	call 05041h		;0feb	cd 41 50 	. A P 
	ld b,00ch		;0fee	06 0c 	. . 
	ld ix,0c3a0h		;0ff0	dd 21 a0 c3 	. ! . . 
	rst 28h			;0ff4	ef 	. 
	ret			;0ff5	c9 	. 
	ld hl,(0c523h)		;0ff6	2a 23 c5 	* # . 
	ld de,00018h		;0ff9	11 18 00 	. . . 
	add hl,de			;0ffc	19 	. 
	ld a,060h		;0ffd	3e 60 	> ` 
	cp h			;0fff	bc 	. 
	jr c,l1005h		;1000	38 03 	8 . 
	ld (0c523h),hl		;1002	22 23 c5 	" # . 
l1005h:
	ld a,(0c170h)		;1005	3a 70 c1 	: p . 
	rra			;1008	1f 	. 
	and 01eh		;1009	e6 1e 	. . 
	ld e,a			;100b	5f 	_ 
	ld d,000h		;100c	16 00 	. . 
	ld hl,05021h		;100e	21 21 50 	! ! P 
	add hl,de			;1011	19 	. 
	ld e,(hl)			;1012	5e 	^ 
	inc hl			;1013	23 	# 
	ld d,(hl)			;1014	56 	V 
	ld (0c526h),de		;1015	ed 53 26 c5 	. S & . 
	ld b,004h		;1019	06 04 	. . 
	ld ix,0c520h		;101b	dd 21 20 c5 	. !   . 
	rst 28h			;101f	ef 	. 
	ret			;1020	c9 	. 
	nop			;1021	00 	. 
	sub (hl)			;1022	96 	. 
	add a,b			;1023	80 	. 
	sub (hl)			;1024	96 	. 
	nop			;1025	00 	. 
	sub a			;1026	97 	. 
	add a,b			;1027	80 	. 
	sub a			;1028	97 	. 
	nop			;1029	00 	. 
	sbc a,b			;102a	98 	. 
	add a,b			;102b	80 	. 
	sub a			;102c	97 	. 
	nop			;102d	00 	. 
	sub a			;102e	97 	. 
	add a,b			;102f	80 	. 
	sub (hl)			;1030	96 	. 
	nop			;1031	00 	. 
	sub (hl)			;1032	96 	. 
	add a,b			;1033	80 	. 
	sub l			;1034	95 	. 
	nop			;1035	00 	. 
	sub l			;1036	95 	. 
	add a,b			;1037	80 	. 
	sub h			;1038	94 	. 
	jr c,l0fd0h		;1039	38 95 	8 . 
	add a,b			;103b	80 	. 
	sub h			;103c	94 	. 
	nop			;103d	00 	. 
	sub l			;103e	95 	. 
	add a,b			;103f	80 	. 
	sub l			;1040	95 	. 
	ld l,a			;1041	6f 	o 
	ld h,000h		;1042	26 00 	& . 
	ld de,0505dh		;1044	11 5d 50 	. ] P 
	add hl,de			;1047	19 	. 
	ld e,(hl)			;1048	5e 	^ 
	inc hl			;1049	23 	# 
	ld d,(hl)			;104a	56 	V 
	ex de,hl			;104b	eb 	. 
	ld de,02180h		;104c	11 80 21 	. . ! 
	ld bc,00180h		;104f	01 80 01 	. . . 
	ld a,003h		;1052	3e 03 	> . 
	call sub_0b13h		;1054	cd 13 0b 	. . . 
	di			;1057	f3 	. 
	call sub_046ch		;1058	cd 6c 04 	. l . 
	ei			;105b	fb 	. 
	ret			;105c	c9 	. 
	cp e			;105d	bb 	. 
	sbc a,(hl)			;105e	9e 	. 
	dec sp			;105f	3b 	; 
	and b			;1060	a0 	. 
	set 0,(hl)		;1061	cb c6 	. . 
	ld a,002h		;1063	3e 02 	> . 
	call 000a4h		;1065	cd a4 00 	. . . 
	di			;1068	f3 	. 
	call 00213h		;1069	cd 13 02 	. . . 
	call sub_023bh		;106c	cd 3b 02 	. ; . 
	call 0508bh		;106f	cd 8b 50 	. . P 
	call l024eh		;1072	cd 4e 02 	. N . 
	ei			;1075	fb 	. 
	ld a,003h		;1076	3e 03 	> . 
	call 000a4h		;1078	cd a4 00 	. . . 
	call 050d0h		;107b	cd d0 50 	. . P 
	call 0510bh		;107e	cd 0b 51 	. . Q 
	call sub_0b8ah		;1081	cd 8a 0b 	. . . 
	call 05147h		;1084	cd 47 51 	. G Q 
	call 00224h		;1087	cd 24 02 	. $ . 
	ret			;108a	c9 	. 
	ld de,0c220h		;108b	11 20 c2 	.   . 
	ld a,080h		;108e	3e 80 	> . 
	ld b,00ch		;1090	06 0c 	. . 
l1092h:
	ld hl,l09d1h		;1092	21 d1 09 	! . . 
	call 00971h		;1095	cd 71 09 	. q . 
	ld a,02ch		;1098	3e 2c 	> , 
	ld (0c224h),a		;109a	32 24 c2 	2 $ . 
	ld a,064h		;109d	3e 64 	> d 
	ld (0c227h),a		;109f	32 27 c2 	2 ' . 
	call sub_3ea5h		;10a2	cd a5 3e 	. . > 
	ld a,002h		;10a5	3e 02 	> . 
	call sub_0b13h		;10a7	cd 13 0b 	. . . 
	ld b,004h		;10aa	06 04 	. . 
l10ach:
	push bc			;10ac	c5 	. 
	ld hl,0c10ch		;10ad	21 0c c1 	! . . 
	inc (hl)			;10b0	34 	4 
	ld a,001h		;10b1	3e 01 	> . 
	call 000a4h		;10b3	cd a4 00 	. . . 
	ld hl,08000h		;10b6	21 00 80 	! . . 
	ld de,02000h		;10b9	11 00 20 	. .   
	ld bc,00180h		;10bc	01 80 01 	. . . 
	call sub_02adh		;10bf	cd ad 02 	. . . 
	pop bc			;10c2	c1 	. 
	djnz l10ach		;10c3	10 e7 	. . 
	call 0477eh		;10c5	cd 7e 47 	. ~ G 
	ld b,00ch		;10c8	06 0c 	. . 
	ld ix,0c220h		;10ca	dd 21 20 c2 	. !   . 
	rst 28h			;10ce	ef 	. 
	ret			;10cf	c9 	. 
	ld de,0c3a0h		;10d0	11 a0 c3 	. . . 
	ld a,08ch		;10d3	3e 8c 	> . 
	ld b,00ch		;10d5	06 0c 	. . 
	ld hl,l09d1h		;10d7	21 d1 09 	! . . 
	call 00971h		;10da	cd 71 09 	. q . 
	ld a,02ch		;10dd	3e 2c 	> , 
	ld (0c3a4h),a		;10df	32 a4 c3 	2 . . 
	ld a,09ah		;10e2	3e 9a 	> . 
	ld (0c3a7h),a		;10e4	32 a7 c3 	2 . . 
	ld hl,0c3a0h		;10e7	21 a0 c3 	! . . 
	ld a,00ch		;10ea	3e 0c 	> . 
	ld b,a			;10ec	47 	G 
	call sub_22f4h		;10ed	cd f4 22 	. . " 
	ld a,003h		;10f0	3e 03 	> . 
	call sub_0b13h		;10f2	cd 13 0b 	. . . 
	ld hl,09ebbh		;10f5	21 bb 9e 	! . . 
	ld de,02180h		;10f8	11 80 21 	. . ! 
	ld bc,00180h		;10fb	01 80 01 	. . . 
	di			;10fe	f3 	. 
	call sub_046ch		;10ff	cd 6c 04 	. l . 
	ei			;1102	fb 	. 
	ld b,00ch		;1103	06 0c 	. . 
	ld ix,0c3a0h		;1105	dd 21 a0 c3 	. ! . . 
	rst 28h			;1109	ef 	. 
	ret			;110a	c9 	. 
	ld de,0c520h		;110b	11 20 c5 	.   . 
	ld a,098h		;110e	3e 98 	> . 
	ld b,004h		;1110	06 04 	. . 
	ld hl,l0999h		;1112	21 99 09 	! . . 
	call 00971h		;1115	cd 71 09 	. q . 
	ld a,040h		;1118	3e 40 	> @ 
	ld (0c524h),a		;111a	32 24 c5 	2 $ . 
	ld a,096h		;111d	3e 96 	> . 
	ld (0c527h),a		;111f	32 27 c5 	2 ' . 
	ld hl,0c520h		;1122	21 20 c5 	!   . 
	ld a,018h		;1125	3e 18 	> . 
	ld b,004h		;1127	06 04 	. . 
	call sub_22f4h		;1129	cd f4 22 	. . " 
	ld a,003h		;112c	3e 03 	> . 
	call sub_0b13h		;112e	cd 13 0b 	. . . 
	ld hl,0a4bbh		;1131	21 bb a4 	! . . 
	ld de,l2300h		;1134	11 00 23 	. . # 
	ld bc,l0080h		;1137	01 80 00 	. . . 
	di			;113a	f3 	. 
	call sub_046ch		;113b	cd 6c 04 	. l . 
	ei			;113e	fb 	. 
	ld b,004h		;113f	06 04 	. . 
	ld ix,0c520h		;1141	dd 21 20 c5 	. !   . 
	rst 28h			;1145	ef 	. 
	ret			;1146	c9 	. 
	call 05154h		;1147	cd 54 51 	. T Q 
	ld bc,l0325h		;114a	01 25 03 	. % . 
l114dh:
	call 00b67h		;114d	cd 67 0b 	. g . 
	inc c			;1150	0c 	. 
	djnz l114dh		;1151	10 fa 	. . 
	ret			;1153	c9 	. 
	ld hl,051cfh		;1154	21 cf 51 	! . Q 
	ld de,0cc41h		;1157	11 41 cc 	. A . 
	ld bc,l0006h+2		;115a	01 08 00 	. . . 
	ldir		;115d	ed b0 	. . 
	ld a,(0c114h)		;115f	3a 14 c1 	: . . 
	ld c,a			;1162	4f 	O 
	xor a			;1163	af 	. 
	bit 6,c		;1164	cb 71 	. q 
	jr z,l1169h		;1166	28 01 	( . 
	inc a			;1168	3c 	< 
l1169h:
	add a,002h		;1169	c6 02 	. . 
	ld (de),a			;116b	12 	. 
	inc de			;116c	13 	. 
	ld hl,051d7h		;116d	21 d7 51 	! . Q 
	ld c,006h		;1170	0e 06 	. . 
	ldir		;1172	ed b0 	. . 
	ld a,(0c128h)		;1174	3a 28 c1 	: ( . 
	rra			;1177	1f 	. 
	rra			;1178	1f 	. 
	and 01fh		;1179	e6 1f 	. . 
	cp 009h		;117b	fe 09 	. . 
	jr c,l1183h		;117d	38 04 	8 . 
	ld c,002h		;117f	0e 02 	. . 
	ld a,0ffh		;1181	3e ff 	> . 
l1183h:
	add a,002h		;1183	c6 02 	. . 
	ld l,a			;1185	6f 	o 
	ld a,c			;1186	79 	y 
	ex de,hl			;1187	eb 	. 
	ld (hl),a			;1188	77 	w 
	inc hl			;1189	23 	# 
	ld (hl),e			;118a	73 	s 
	inc hl			;118b	23 	# 
	ex de,hl			;118c	eb 	. 
	ld hl,051ddh		;118d	21 dd 51 	! . Q 
	ld c,007h		;1190	0e 07 	. . 
	ldir		;1192	ed b0 	. . 
	ld a,(0c128h)		;1194	3a 28 c1 	: ( . 
	and 003h		;1197	e6 03 	. . 
	add a,002h		;1199	c6 02 	. . 
	ld (de),a			;119b	12 	. 
	inc de			;119c	13 	. 
	ld hl,051e4h		;119d	21 e4 51 	! . Q 
	ld c,002h		;11a0	0e 02 	. . 
	ldir		;11a2	ed b0 	. . 
	ex de,hl			;11a4	eb 	. 
	ld a,(0c12dh)		;11a5	3a 2d c1 	: - . 
	inc a			;11a8	3c 	< 
	cp 064h		;11a9	fe 64 	. d 
	jp nc,051c4h		;11ab	d2 c4 51 	. . Q 
	ld bc,0ff0ah		;11ae	01 0a ff 	. . . 
l11b1h:
	inc b			;11b1	04 	. 
	sub c			;11b2	91 	. 
	jr nc,l11b1h		;11b3	30 fc 	0 . 
	add a,c			;11b5	81 	. 
	add a,001h		;11b6	c6 01 	. . 
	ld e,a			;11b8	5f 	_ 
	ld a,b			;11b9	78 	x 
	or a			;11ba	b7 	. 
	jp z,051cah		;11bb	ca ca 51 	. . Q 
	add a,001h		;11be	c6 01 	. . 
	ld (hl),a			;11c0	77 	w 
	inc hl			;11c1	23 	# 
	ld (hl),e			;11c2	73 	s 
	ret			;11c3	c9 	. 
	ld a,00ah		;11c4	3e 0a 	> . 
	ld e,a			;11c6	5f 	_ 
	jp 051c0h		;11c7	c3 c0 51 	. . Q 
	ld a,000h		;11ca	3e 00 	> . 
	jp 051c0h		;11cc	c3 c0 51 	. . Q 
	ex af,af'			;11cf	08 	. 
	inc c			;11d0	0c 	. 
	ld a,(de)			;11d1	1a 	. 
	dec d			;11d2	15 	. 
	rla			;11d3	17 	. 
	inc de			;11d4	13 	. 
	jr nz,l11d7h		;11d5	20 00 	  . 
l11d7h:
	rlca			;11d7	07 	. 
	dec d			;11d8	15 	. 
	jr nz,$+21		;11d9	20 13 	  . 
	dec d			;11db	15 	. 
	nop			;11dc	00 	. 
	rlca			;11dd	07 	. 
	jr nz,$+31		;11de	20 1d 	  . 
	dec bc			;11e0	0b 	. 
	inc e			;11e1	1c 	. 
	ld (de),a			;11e2	12 	. 
	nop			;11e3	00 	. 
	inc bc			;11e4	03 	. 
	ld d,03ah		;11e5	16 3a 	. : 
	ld l,e			;11e7	6b 	k 
	pop bc			;11e8	c1 	. 
	and 0e0h		;11e9	e6 e0 	. . 
	ret nz			;11eb	c0 	. 
	ld a,(0c128h)		;11ec	3a 28 c1 	: ( . 
	cp 028h		;11ef	fe 28 	. ( 
	jr z,l1200h		;11f1	28 0d 	( . 
	and 003h		;11f3	e6 03 	. . 
	xor 003h		;11f5	ee 03 	. . 
	ld a,081h		;11f7	3e 81 	> . 
	jr nz,l11fch		;11f9	20 01 	  . 
	inc a			;11fb	3c 	< 
l11fch:
	ld (0c002h),a		;11fc	32 02 c0 	2 . . 
	ret			;11ff	c9 	. 
l1200h:
	ld a,08ch		;1200	3e 8c 	> . 
	ld (0c002h),a		;1202	32 02 c0 	2 . . 
	ret			;1205	c9 	. 
	ld hl,0c175h		;1206	21 75 c1 	! u . 
	ld de,0c17bh		;1209	11 7b c1 	. { . 
	bit 6,(hl)		;120c	cb 76 	. v 
	jp nz,052aeh		;120e	c2 ae 52 	. . R 
	ld a,(0c11fh)		;1211	3a 1f c1 	: . . 
	and 030h		;1214	e6 30 	. 0 
	bit 1,(hl)		;1216	cb 4e 	. N 
	jp nz,052a6h		;1218	c2 a6 52 	. . R 
	ex de,hl			;121b	eb 	. 
	bit 7,(hl)		;121c	cb 7e 	. ~ 
	jr nz,l128ch		;121e	20 6c 	  l 
	bit 6,(hl)		;1220	cb 76 	. v 
	jr nz,l1281h		;1222	20 5d 	  ] 
	bit 5,(hl)		;1224	cb 6e 	. n 
	jr nz,l1278h		;1226	20 50 	  P 
	bit 4,(hl)		;1228	cb 66 	. f 
	jr nz,l126dh		;122a	20 41 	  A 
	bit 3,(hl)		;122c	cb 5e 	. ^ 
	jr nz,l1264h		;122e	20 34 	  4 
	bit 2,(hl)		;1230	cb 56 	. V 
	jr nz,l1259h		;1232	20 25 	  % 
	bit 1,(hl)		;1234	cb 4e 	. N 
	jr nz,l1250h		;1236	20 18 	  . 
	bit 0,(hl)		;1238	cb 46 	. F 
	jr nz,l1245h		;123a	20 09 	  . 
	or a			;123c	b7 	. 
	jr z,l12aeh		;123d	28 6f 	( o 
	cp 010h		;123f	fe 10 	. . 
	jr nz,l12abh		;1241	20 68 	  h 
	set 0,(hl)		;1243	cb c6 	. . 
l1245h:
	or a			;1245	b7 	. 
	jr z,l124eh		;1246	28 06 	( . 
	cp 010h		;1248	fe 10 	. . 
	jr nz,l12abh		;124a	20 5f 	  _ 
	jr l12aeh		;124c	18 60 	. ` 
l124eh:
	set 1,(hl)		;124e	cb ce 	. . 
l1250h:
	or a			;1250	b7 	. 
	jr z,l12aeh		;1251	28 5b 	( [ 
	cp 010h		;1253	fe 10 	. . 
	jr nz,l12abh		;1255	20 54 	  T 
	set 2,(hl)		;1257	cb d6 	. . 
l1259h:
	or a			;1259	b7 	. 
	jr z,l1262h		;125a	28 06 	( . 
	cp 010h		;125c	fe 10 	. . 
	jr nz,l12abh		;125e	20 4b 	  K 
	jr l12aeh		;1260	18 4c 	. L 
l1262h:
	set 3,(hl)		;1262	cb de 	. . 
l1264h:
	or a			;1264	b7 	. 
	jr z,l12aeh		;1265	28 47 	( G 
	cp 020h		;1267	fe 20 	.   
	jr nz,l12abh		;1269	20 40 	  @ 
	set 4,(hl)		;126b	cb e6 	. . 
l126dh:
	or a			;126d	b7 	. 
	jr z,l1276h		;126e	28 06 	( . 
	cp 020h		;1270	fe 20 	.   
	jr nz,l12abh		;1272	20 37 	  7 
	jr l12aeh		;1274	18 38 	. 8 
l1276h:
	set 5,(hl)		;1276	cb ee 	. . 
l1278h:
	or a			;1278	b7 	. 
	jr z,l12aeh		;1279	28 33 	( 3 
	cp 020h		;127b	fe 20 	.   
	jr nz,l12abh		;127d	20 2c 	  , 
	set 6,(hl)		;127f	cb f6 	. . 
l1281h:
	or a			;1281	b7 	. 
	jr z,l128ah		;1282	28 06 	( . 
	cp 020h		;1284	fe 20 	.   
	jr nz,l12abh		;1286	20 23 	  # 
	jr l12aeh		;1288	18 24 	. $ 
l128ah:
	set 7,(hl)		;128a	cb fe 	. . 
l128ch:
	bit 0,(hl)		;128c	cb 46 	. F 
	jr z,l129bh		;128e	28 0b 	( . 
	or a			;1290	b7 	. 
	jr z,l12aeh		;1291	28 1b 	( . 
	res 1,(hl)		;1293	cb 8e 	. . 
	cp 030h		;1295	fe 30 	. 0 
	jr z,l12a3h		;1297	28 0a 	( . 
	jr l12aeh		;1299	18 13 	. . 
l129bh:
	or a			;129b	b7 	. 
	jr z,l12abh		;129c	28 0d 	( . 
	cp 030h		;129e	fe 30 	. 0 
l12a0h:
	jp nz,052aeh		;12a0	c2 ae 52 	. . R 
l12a3h:
	ex de,hl			;12a3	eb 	. 
	set 1,(hl)		;12a4	cb ce 	. . 
	cp 030h		;12a6	fe 30 	. 0 
	jr z,l12b0h		;12a8	28 06 	( . 
	ex de,hl			;12aa	eb 	. 
l12abh:
	ex de,hl			;12ab	eb 	. 
	set 6,(hl)		;12ac	cb f6 	. . 
l12aeh:
	or a			;12ae	b7 	. 
	ret			;12af	c9 	. 
l12b0h:
	scf			;12b0	37 	7 
	ret			;12b1	c9 	. 
	ld a,(0c10bh)		;12b2	3a 0b c1 	: . . 
	and 00fh		;12b5	e6 0f 	. . 
	ret nz			;12b7	c0 	. 
	ld a,(0c11fh)		;12b8	3a 1f c1 	: . . 
	and 00fh		;12bb	e6 0f 	. . 
	or a			;12bd	b7 	. 
	ret z			;12be	c8 	. 
	ld hl,0c129h		;12bf	21 29 c1 	! ) . 
	ld (hl),000h		;12c2	36 00 	6 . 
	ld b,004h		;12c4	06 04 	. . 
	ld hl,052e6h		;12c6	21 e6 52 	! . R 
l12c9h:
	rra			;12c9	1f 	. 
	jr c,l12cfh		;12ca	38 03 	8 . 
	inc hl			;12cc	23 	# 
	djnz l12c9h		;12cd	10 fa 	. . 
l12cfh:
	ld a,(0c128h)		;12cf	3a 28 c1 	: ( . 
	add a,(hl)			;12d2	86 	. 
	cp 024h		;12d3	fe 24 	. $ 
	jr c,l12e0h		;12d5	38 09 	8 . 
	ld c,0dch		;12d7	0e dc 	. . 
	cp 050h		;12d9	fe 50 	. P 
	jr c,l12dfh		;12db	38 02 	8 . 
	ld c,024h		;12dd	0e 24 	. $ 
l12dfh:
	add a,c			;12df	81 	. 
l12e0h:
	ld (0c128h),a		;12e0	32 28 c1 	2 ( . 
	jp 05147h		;12e3	c3 47 51 	. G Q 
	inc b			;12e6	04 	. 
	call m,001ffh		;12e7	fc ff 01 	. . . 
	ld a,002h		;12ea	3e 02 	> . 
	call sub_0b13h		;12ec	cd 13 0b 	. . . 
	ld hl,0cce9h		;12ef	21 e9 cc 	! . . 
	exx			;12f2	d9 	. 
	ld hl,08000h		;12f3	21 00 80 	! . . 
	ld c,012h		;12f6	0e 12 	. . 
	exx			;12f8	d9 	. 
l12f9h:
	ld c,003h		;12f9	0e 03 	. . 
l12fbh:
	exx			;12fb	d9 	. 
	ld b,020h		;12fc	06 20 	.   
l12feh:
	ld a,(hl)			;12fe	7e 	~ 
	exx			;12ff	d9 	. 
	ld b,008h		;1300	06 08 	. . 
l1302h:
	rra			;1302	1f 	. 
	rl e		;1303	cb 13 	. . 
	djnz l1302h		;1305	10 fb 	. . 
	ld (hl),e			;1307	73 	s 
	inc hl			;1308	23 	# 
	exx			;1309	d9 	. 
	inc hl			;130a	23 	# 
	djnz l12feh		;130b	10 f1 	. . 
	exx			;130d	d9 	. 
	ld de,0ffc0h		;130e	11 c0 ff 	. . . 
	add hl,de			;1311	19 	. 
	dec c			;1312	0d 	. 
	jr nz,l12fbh		;1313	20 e6 	  . 
	ld de,000c0h		;1315	11 c0 00 	. . . 
	add hl,de			;1318	19 	. 
	exx			;1319	d9 	. 
	dec c			;131a	0d 	. 
	exx			;131b	d9 	. 
	jr nz,l12f9h		;131c	20 db 	  . 
	ret			;131e	c9 	. 
	cp 009h		;131f	fe 09 	. . 
	jr nc,l1356h		;1321	30 33 	0 3 
	dec a			;1323	3d 	= 
	dec b			;1324	05 	. 
	ld c,a			;1325	4f 	O 
	ld a,b			;1326	78 	x 
	cp 008h		;1327	fe 08 	. . 
	jr nc,l1333h		;1329	30 08 	0 . 
	xor c			;132b	a9 	. 
	and 004h		;132c	e6 04 	. . 
	ld hl,l0000h		;132e	21 00 00 	! . . 
	jr z,l133eh		;1331	28 0b 	( . 
l1333h:
	ld a,c			;1333	79 	y 
	and 004h		;1334	e6 04 	. . 
	ld hl,08000h		;1336	21 00 80 	! . . 
	jr z,l133eh		;1339	28 03 	( . 
	ld hl,0cca9h		;133b	21 a9 cc 	! . . 
l133eh:
	ld (0cc10h),hl		;133e	22 10 cc 	" . . 
	ld l,c			;1341	69 	i 
	ld h,000h		;1342	26 00 	& . 
	add hl,hl			;1344	29 	) 
	ld a,002h		;1345	3e 02 	> . 
	call sub_0b13h		;1347	cd 13 0b 	. . . 
	ld de,09d40h		;134a	11 40 9d 	. @ . 
	add hl,de			;134d	19 	. 
	ld a,(hl)			;134e	7e 	~ 
	inc hl			;134f	23 	# 
	ld h,(hl)			;1350	66 	f 
	ld l,a			;1351	6f 	o 
	ld (0cc12h),hl		;1352	22 12 cc 	" . . 
	ret			;1355	c9 	. 
l1356h:
	sub 009h		;1356	d6 09 	. . 
	ld l,a			;1358	6f 	o 
	ld h,000h		;1359	26 00 	& . 
	add hl,hl			;135b	29 	) 
	ld a,002h		;135c	3e 02 	> . 
	call sub_0b13h		;135e	cd 13 0b 	. . . 
	ld de,09d50h		;1361	11 50 9d 	. P . 
	add hl,de			;1364	19 	. 
	ld a,(hl)			;1365	7e 	~ 
	inc hl			;1366	23 	# 
	ld h,(hl)			;1367	66 	f 
	ld l,a			;1368	6f 	o 
	ld (0cc10h),hl		;1369	22 10 cc 	" . . 
	ld de,000c0h		;136c	11 c0 00 	. . . 
l136fh:
	add hl,de			;136f	19 	. 
	ld (0cc12h),hl		;1370	22 12 cc 	" . . 
	ret			;1373	c9 	. 
	ld a,010h		;1374	3e 10 	> . 
	ld (0c198h),a		;1376	32 98 c1 	2 . . 
	ld a,003h		;1379	3e 03 	> . 
	call sub_092bh		;137b	cd 2b 09 	. + . 
	jp c,l06dah		;137e	da da 06 	. . . 
	ld e,0d0h		;1381	1e d0 	. . 
	ld bc,0539dh		;1383	01 9d 53 	. . S 
	call 0225fh		;1386	cd 5f 22 	. _ " 
	ld a,013h		;1389	3e 13 	> . 
	ld b,002h		;138b	06 02 	. . 
l138dh:
	rst 30h			;138d	f7 	. 
	djnz l138dh		;138e	10 fd 	. . 
	ld a,0abh		;1390	3e ab 	> . 
	ld b,004h		;1392	06 04 	. . 
	call 022f1h		;1394	cd f1 22 	. . " 
	ld hl,0c198h		;1397	21 98 c1 	! . . 
	set 1,(hl)		;139a	cb ce 	. . 
	ret			;139c	c9 	. 
	inc bc			;139d	03 	. 
	inc bc			;139e	03 	. 
	ld (bc),a			;139f	02 	. 
	jr nz,l136fh		;13a0	20 cd 	  . 
	dec sp			;13a2	3b 	; 
	inc hl			;13a3	23 	# 
	cp 040h		;13a4	fe 40 	. @ 
	jp c,0544dh		;13a6	da 4d 54 	. M T 
	bit 2,(ix+002h)		;13a9	dd cb 02 56 	. . . V 
	jp nz,05458h		;13ad	c2 58 54 	. X T 
	call sub_2301h		;13b0	cd 01 23 	. . # 
	ld a,(0c198h)		;13b3	3a 98 c1 	: . . 
	bit 7,a		;13b6	cb 7f 	.  
	jp nz,05431h		;13b8	c2 31 54 	. 1 T 
	bit 4,a		;13bb	cb 67 	. g 
	jp nz,053eah		;13bd	c2 ea 53 	. . S 
	ld a,(ix+007h)		;13c0	dd 7e 07 	. ~ . 
	cp 0beh		;13c3	fe be 	. . 
	jr nc,l13eah		;13c5	30 23 	0 # 
	ld de,0fff0h		;13c7	11 f0 ff 	. . . 
	call 0227ah		;13ca	cd 7a 22 	. z " 
	ld hl,(0c196h)		;13cd	2a 96 c1 	* . . 
	rst 18h			;13d0	df 	. 
	cp 010h		;13d1	fe 10 	. . 
	jp c,0544dh		;13d3	da 4d 54 	. M T 
	xor a			;13d6	af 	. 
	ld hl,l0404h		;13d7	21 04 04 	! . . 
	call 0392fh		;13da	cd 2f 39 	. / 9 
	bit 1,(ix+014h)		;13dd	dd cb 14 4e 	. . . N 
	jr z,l13eah		;13e1	28 07 	( . 
	xor a			;13e3	af 	. 
	ld (ix+010h),a		;13e4	dd 77 10 	. w . 
	ld (ix+011h),a		;13e7	dd 77 11 	. w . 
l13eah:
	ld de,0fffeh		;13ea	11 fe ff 	. . . 
	ld hl,(0c196h)		;13ed	2a 96 c1 	* . . 
	rst 8			;13f0	cf 	. 
	ld a,020h		;13f1	3e 20 	>   
	ld hl,0c199h		;13f3	21 99 c1 	! . . 
	inc (hl)			;13f6	34 	4 
	ld c,a			;13f7	4f 	O 
	cp (hl)			;13f8	be 	. 
	ld d,000h		;13f9	16 00 	. . 
	jr nc,l1405h		;13fb	30 08 	0 . 
	add a,c			;13fd	81 	. 
	dec a			;13fe	3d 	= 
	cp (hl)			;13ff	be 	. 
	inc d			;1400	14 	. 
	jr nc,l1405h		;1401	30 02 	0 . 
	ld (hl),000h		;1403	36 00 	6 . 
l1405h:
	ld a,d			;1405	7a 	z 
	and a			;1406	a7 	. 
	jr nz,l141dh		;1407	20 14 	  . 
	ld hl,0c198h		;1409	21 98 c1 	! . . 
	bit 1,(hl)		;140c	cb 4e 	. N 
	jr nz,l1449h		;140e	20 39 	  9 
	set 1,(hl)		;1410	cb ce 	. . 
	res 0,(hl)		;1412	cb 86 	. . 
	ld a,0abh		;1414	3e ab 	> . 
	ld b,004h		;1416	06 04 	. . 
	call 022f1h		;1418	cd f1 22 	. . " 
	jr l1449h		;141b	18 2c 	. , 
l141dh:
	ld hl,0c198h		;141d	21 98 c1 	! . . 
	bit 0,(hl)		;1420	cb 46 	. F 
	jr nz,l1449h		;1422	20 25 	  % 
	set 0,(hl)		;1424	cb c6 	. . 
	res 1,(hl)		;1426	cb 8e 	. . 
	ld a,0b3h		;1428	3e b3 	> . 
	ld b,004h		;142a	06 04 	. . 
	call 022f1h		;142c	cd f1 22 	. . " 
	jr l1449h		;142f	18 18 	. . 
	call sub_22a6h		;1431	cd a6 22 	. . " 
	cp 010h		;1434	fe 10 	. . 
	jp c,0544dh		;1436	da 4d 54 	. M T 
	ld hl,0c198h		;1439	21 98 c1 	! . . 
	bit 2,(hl)		;143c	cb 56 	. V 
	jr nz,l1449h		;143e	20 09 	  . 
	set 2,(hl)		;1440	cb d6 	. . 
	ld a,0afh		;1442	3e af 	> . 
	ld b,004h		;1444	06 04 	. . 
	call 022f1h		;1446	cd f1 22 	. . " 
l1449h:
	ld b,004h		;1449	06 04 	. . 
	rst 28h			;144b	ef 	. 
	ret			;144c	c9 	. 
	ld b,004h		;144d	06 04 	. . 
	call l24a9h		;144f	cd a9 24 	. . $ 
	ld hl,0c198h		;1452	21 98 c1 	! . . 
	res 7,(hl)		;1455	cb be 	. . 
	ret			;1457	c9 	. 
	ld b,004h		;1458	06 04 	. . 
	call sub_2df2h		;145a	cd f2 2d 	. . - 
	ret			;145d	c9 	. 
	ld a,005h		;145e	3e 05 	> . 
	call sub_092bh		;1460	cd 2b 09 	. + . 
	jp c,l06dah		;1463	da da 06 	. . . 
	ld e,0d0h		;1466	1e d0 	. . 
	ld bc,0548eh		;1468	01 8e 54 	. . T 
	call 0225fh		;146b	cd 5f 22 	. _ " 
	ld a,03dh		;146e	3e 3d 	> = 
	rst 30h			;1470	f7 	. 
	ld a,03ch		;1471	3e 3c 	> < 
	rst 30h			;1473	f7 	. 
	ld a,03bh		;1474	3e 3b 	> ; 
	rst 30h			;1476	f7 	. 
	ld a,0a9h		;1477	3e a9 	> . 
	ld b,006h		;1479	06 06 	. . 
	call 022f1h		;147b	cd f1 22 	. . " 
	ld hl,0c198h		;147e	21 98 c1 	! . . 
	set 1,(hl)		;1481	cb ce 	. . 
	ld ix,(0c196h)		;1483	dd 2a 96 c1 	. * . . 
	ld de,0ffffh		;1487	11 ff ff 	. . . 
	call 02298h		;148a	cd 98 22 	. . " 
	ret			;148d	c9 	. 
	rlca			;148e	07 	. 
	inc bc			;148f	03 	. 
	inc b			;1490	04 	. 
	jr nz,$+35		;1491	20 21 	  ! 
	sbc a,b			;1493	98 	. 
	pop bc			;1494	c1 	. 
	set 6,(hl)		;1495	cb f6 	. . 
	jr l14a3h		;1497	18 0a 	. . 
	ld hl,0c198h		;1499	21 98 c1 	! . . 
	set 6,(hl)		;149c	cb f6 	. . 
	ld hl,0c198h		;149e	21 98 c1 	! . . 
	set 0,(hl)		;14a1	cb c6 	. . 
l14a3h:
	call l2339h+2		;14a3	cd 3b 23 	. ; # 
	cp 03ch		;14a6	fe 3c 	. < 
	jp c,05565h		;14a8	da 65 55 	. e U 
	bit 2,(ix+002h)		;14ab	dd cb 02 56 	. . . V 
	jp nz,05570h		;14af	c2 70 55 	. p U 
	call sub_2301h		;14b2	cd 01 23 	. . # 
	ld a,(0c198h)		;14b5	3a 98 c1 	: . . 
	bit 7,a		;14b8	cb 7f 	.  
	jp nz,05549h		;14ba	c2 49 55 	. I U 
	ld a,(0c198h)		;14bd	3a 98 c1 	: . . 
	bit 0,a		;14c0	cb 47 	. G 
	jr nz,l14c9h		;14c2	20 05 	  . 
	ld de,0ffc4h		;14c4	11 c4 ff 	. . . 
	jr l14cch		;14c7	18 03 	. . 
l14c9h:
	ld de,0ff94h		;14c9	11 94 ff 	. . . 
l14cch:
	ld hl,(0c196h)		;14cc	2a 96 c1 	* . . 
	rst 8			;14cf	cf 	. 
	ld hl,0c198h		;14d0	21 98 c1 	! . . 
	bit 6,(hl)		;14d3	cb 76 	. v 
	jr z,l1507h		;14d5	28 30 	( 0 
	ld a,(ix+007h)		;14d7	dd 7e 07 	. ~ . 
	cp 0beh		;14da	fe be 	. . 
	jr nc,l1507h		;14dc	30 29 	0 ) 
	ld de,0ffe8h		;14de	11 e8 ff 	. . . 
	call 0227ah		;14e1	cd 7a 22 	. z " 
	xor a			;14e4	af 	. 
	ld hl,l0404h+2		;14e5	21 06 04 	! . . 
	call 0392fh		;14e8	cd 2f 39 	. / 9 
	bit 1,(ix+014h)		;14eb	dd cb 14 4e 	. . . N 
	jr z,l14f8h		;14ef	28 07 	( . 
	xor a			;14f1	af 	. 
	ld (ix+010h),a		;14f2	dd 77 10 	. w . 
	ld (ix+011h),a		;14f5	dd 77 11 	. w . 
l14f8h:
	ld e,(ix+010h)		;14f8	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;14fb	dd 56 11 	. V . 
	ld hl,(0c196h)		;14fe	2a 96 c1 	* . . 
	rst 18h			;1501	df 	. 
	cp 010h		;1502	fe 10 	. . 
	jp c,05565h		;1504	da 65 55 	. e U 
l1507h:
	ld a,010h		;1507	3e 10 	> . 
	ld hl,0c199h		;1509	21 99 c1 	! . . 
	inc (hl)			;150c	34 	4 
	ld c,a			;150d	4f 	O 
	cp (hl)			;150e	be 	. 
	ld d,000h		;150f	16 00 	. . 
	jr nc,l151bh		;1511	30 08 	0 . 
	add a,c			;1513	81 	. 
	dec a			;1514	3d 	= 
	cp (hl)			;1515	be 	. 
	inc d			;1516	14 	. 
	jr nc,l151bh		;1517	30 02 	0 . 
	ld (hl),000h		;1519	36 00 	6 . 
l151bh:
	ld a,d			;151b	7a 	z 
	and a			;151c	a7 	. 
	jr nz,l1534h		;151d	20 15 	  . 
	ld hl,0c198h		;151f	21 98 c1 	! . . 
	bit 1,(hl)		;1522	cb 4e 	. N 
	jr nz,l1561h		;1524	20 3b 	  ; 
	set 1,(hl)		;1526	cb ce 	. . 
	res 2,(hl)		;1528	cb 96 	. . 
	ld a,0afh		;152a	3e af 	> . 
	ld b,006h		;152c	06 06 	. . 
	call 022f1h		;152e	cd f1 22 	. . " 
	jp 05561h		;1531	c3 61 55 	. a U 
l1534h:
	ld hl,0c198h		;1534	21 98 c1 	! . . 
	bit 2,(hl)		;1537	cb 56 	. V 
	jr nz,l1561h		;1539	20 26 	  & 
	set 2,(hl)		;153b	cb d6 	. . 
	res 1,(hl)		;153d	cb 8e 	. . 
	ld a,0b5h		;153f	3e b5 	> . 
	ld b,006h		;1541	06 06 	. . 
	call 022f1h		;1543	cd f1 22 	. . " 
	jp 05561h		;1546	c3 61 55 	. a U 
	call 022b9h		;1549	cd b9 22 	. . " 
	cp 010h		;154c	fe 10 	. . 
	jp c,05565h		;154e	da 65 55 	. e U 
	ld hl,0c198h		;1551	21 98 c1 	! . . 
	bit 3,(hl)		;1554	cb 5e 	. ^ 
	jr nz,l1561h		;1556	20 09 	  . 
	set 3,(hl)		;1558	cb de 	. . 
	ld a,0a9h		;155a	3e a9 	> . 
	ld b,006h		;155c	06 06 	. . 
	call 022f1h		;155e	cd f1 22 	. . " 
l1561h:
	ld b,006h		;1561	06 06 	. . 
	rst 28h			;1563	ef 	. 
	ret			;1564	c9 	. 
	ld b,006h		;1565	06 06 	. . 
	call l24a9h		;1567	cd a9 24 	. . $ 
	ld hl,0c198h		;156a	21 98 c1 	! . . 
	res 7,(hl)		;156d	cb be 	. . 
	ret			;156f	c9 	. 
	ld b,006h		;1570	06 06 	. . 
	call sub_2df2h		;1572	cd f2 2d 	. . - 
	ret			;1575	c9 	. 
	ld a,005h		;1576	3e 05 	> . 
	call sub_092bh		;1578	cd 2b 09 	. + . 
	jp c,l06dah		;157b	da da 06 	. . . 
	ld e,0d0h		;157e	1e d0 	. . 
	ld bc,0558eh		;1580	01 8e 55 	. . U 
	call 0225fh		;1583	cd 5f 22 	. _ " 
	ld b,002h		;1586	06 02 	. . 
	ld a,041h		;1588	3e 41 	> A 
l158ah:
	rst 30h			;158a	f7 	. 
	djnz l158ah		;158b	10 fd 	. . 
	ret			;158d	c9 	. 
	rlca			;158e	07 	. 
	inc bc			;158f	03 	. 
	inc b			;1590	04 	. 
	jr nz,$-49		;1591	20 cd 	  . 
	dec sp			;1593	3b 	; 
	inc hl			;1594	23 	# 
	cp 038h		;1595	fe 38 	. 8 
	jp c,0560ah		;1597	da 0a 56 	. . V 
	bit 2,(ix+002h)		;159a	dd cb 02 56 	. . . V 
	jp nz,05615h		;159e	c2 15 56 	. . V 
	call sub_2301h		;15a1	cd 01 23 	. . # 
	ld hl,0c198h		;15a4	21 98 c1 	! . . 
	bit 7,(hl)		;15a7	cb 7e 	. ~ 
	jp nz,055eeh		;15a9	c2 ee 55 	. . U 
	ld hl,0c199h		;15ac	21 99 c1 	! . . 
	ld a,010h		;15af	3e 10 	> . 
	inc (hl)			;15b1	34 	4 
	ld c,a			;15b2	4f 	O 
	cp (hl)			;15b3	be 	. 
	ld d,000h		;15b4	16 00 	. . 
	jr nc,l15c0h		;15b6	30 08 	0 . 
	add a,c			;15b8	81 	. 
	dec a			;15b9	3d 	= 
	cp (hl)			;15ba	be 	. 
	inc d			;15bb	14 	. 
	jr nc,l15c0h		;15bc	30 02 	0 . 
	ld (hl),000h		;15be	36 00 	6 . 
l15c0h:
	ld a,d			;15c0	7a 	z 
	and a			;15c1	a7 	. 
	jr nz,l15d9h		;15c2	20 15 	  . 
	ld hl,0c198h		;15c4	21 98 c1 	! . . 
	bit 0,(hl)		;15c7	cb 46 	. F 
	jr nz,l1606h		;15c9	20 3b 	  ; 
	set 0,(hl)		;15cb	cb c6 	. . 
	res 1,(hl)		;15cd	cb 8e 	. . 
	ld a,09dh		;15cf	3e 9d 	> . 
	ld b,006h		;15d1	06 06 	. . 
	call 022f1h		;15d3	cd f1 22 	. . " 
	jp 05606h		;15d6	c3 06 56 	. . V 
l15d9h:
	ld hl,0c198h		;15d9	21 98 c1 	! . . 
	bit 1,(hl)		;15dc	cb 4e 	. N 
	jr nz,l1606h		;15de	20 26 	  & 
	set 1,(hl)		;15e0	cb ce 	. . 
	res 0,(hl)		;15e2	cb 86 	. . 
	ld a,097h		;15e4	3e 97 	> . 
	ld b,006h		;15e6	06 06 	. . 
	call 022f1h		;15e8	cd f1 22 	. . " 
	jp 05606h		;15eb	c3 06 56 	. . V 
	call 022b9h		;15ee	cd b9 22 	. . " 
	cp 010h		;15f1	fe 10 	. . 
	jp c,0560ah		;15f3	da 0a 56 	. . V 
	ld hl,0c19ch		;15f6	21 9c c1 	! . . 
	bit 0,(hl)		;15f9	cb 46 	. F 
	jr nz,l1606h		;15fb	20 09 	  . 
	set 0,(hl)		;15fd	cb c6 	. . 
	ld a,0a3h		;15ff	3e a3 	> . 
	ld b,006h		;1601	06 06 	. . 
	call 022f1h		;1603	cd f1 22 	. . " 
l1606h:
	ld b,006h		;1606	06 06 	. . 
	rst 28h			;1608	ef 	. 
l1609h:
	ret			;1609	c9 	. 
	ld b,006h		;160a	06 06 	. . 
	call l24a9h		;160c	cd a9 24 	. . $ 
	ld hl,0c198h		;160f	21 98 c1 	! . . 
	res 7,(hl)		;1612	cb be 	. . 
	ret			;1614	c9 	. 
	ld b,006h		;1615	06 06 	. . 
	call sub_2df2h		;1617	cd f2 2d 	. . - 
	ret			;161a	c9 	. 
	ld a,003h		;161b	3e 03 	> . 
	call sub_092bh		;161d	cd 2b 09 	. + . 
	jp c,l06dah		;1620	da da 06 	. . . 
	ld e,0d0h		;1623	1e d0 	. . 
	ld bc,05637h		;1625	01 37 56 	. 7 V 
	call 0225fh		;1628	cd 5f 22 	. _ " 
	ld a,064h		;162b	3e 64 	> d 
	rst 30h			;162d	f7 	. 
	ld a,063h		;162e	3e 63 	> c 
	rst 30h			;1630	f7 	. 
	ld hl,0c198h		;1631	21 98 c1 	! . . 
	set 1,(hl)		;1634	cb ce 	. . 
	ret			;1636	c9 	. 
	inc bc			;1637	03 	. 
	inc bc			;1638	03 	. 
	ld (bc),a			;1639	02 	. 
	jr nz,l1609h		;163a	20 cd 	  . 
	dec sp			;163c	3b 	; 
	inc hl			;163d	23 	# 
	cp 040h		;163e	fe 40 	. @ 
	jp c,056b2h		;1640	da b2 56 	. . V 
	bit 2,(ix+002h)		;1643	dd cb 02 56 	. . . V 
	jp nz,056bdh		;1647	c2 bd 56 	. . V 
	call sub_2301h		;164a	cd 01 23 	. . # 
	ld a,(0c198h)		;164d	3a 98 c1 	: . . 
	bit 7,a		;1650	cb 7f 	.  
	jp nz,05697h		;1652	c2 97 56 	. . V 
	ld a,008h		;1655	3e 08 	> . 
	ld hl,0c199h		;1657	21 99 c1 	! . . 
	inc (hl)			;165a	34 	4 
	ld c,a			;165b	4f 	O 
	cp (hl)			;165c	be 	. 
	ld d,000h		;165d	16 00 	. . 
	jr nc,l1669h		;165f	30 08 	0 . 
	add a,c			;1661	81 	. 
	dec a			;1662	3d 	= 
	cp (hl)			;1663	be 	. 
	inc d			;1664	14 	. 
	jr nc,l1669h		;1665	30 02 	0 . 
	ld (hl),000h		;1667	36 00 	6 . 
l1669h:
	ld a,d			;1669	7a 	z 
	and a			;166a	a7 	. 
	jr nz,l1682h		;166b	20 15 	  . 
	ld hl,0c198h		;166d	21 98 c1 	! . . 
	bit 1,(hl)		;1670	cb 4e 	. N 
	jr nz,l16aeh		;1672	20 3a 	  : 
	set 1,(hl)		;1674	cb ce 	. . 
	res 0,(hl)		;1676	cb 86 	. . 
	ld a,093h		;1678	3e 93 	> . 
	ld b,004h		;167a	06 04 	. . 
	call 022f1h		;167c	cd f1 22 	. . " 
	jp 056aeh		;167f	c3 ae 56 	. . V 
l1682h:
	ld hl,0c198h		;1682	21 98 c1 	! . . 
	bit 0,(hl)		;1685	cb 46 	. F 
	jr nz,l16aeh		;1687	20 25 	  % 
	set 0,(hl)		;1689	cb c6 	. . 
	res 1,(hl)		;168b	cb 8e 	. . 
	ld a,08fh		;168d	3e 8f 	> . 
	ld b,004h		;168f	06 04 	. . 
	call 022f1h		;1691	cd f1 22 	. . " 
	jp 056aeh		;1694	c3 ae 56 	. . V 
	call sub_22a6h		;1697	cd a6 22 	. . " 
	cp 010h		;169a	fe 10 	. . 
	jr c,l16b2h		;169c	38 14 	8 . 
	ld hl,0c198h		;169e	21 98 c1 	! . . 
	bit 2,(hl)		;16a1	cb 56 	. V 
	jr nz,l16aeh		;16a3	20 09 	  . 
	set 2,(hl)		;16a5	cb d6 	. . 
	ld a,08bh		;16a7	3e 8b 	> . 
	ld b,004h		;16a9	06 04 	. . 
	call 022f1h		;16ab	cd f1 22 	. . " 
l16aeh:
	ld b,004h		;16ae	06 04 	. . 
	rst 28h			;16b0	ef 	. 
	ret			;16b1	c9 	. 
l16b2h:
	ld b,004h		;16b2	06 04 	. . 
	call l24a9h		;16b4	cd a9 24 	. . $ 
	ld hl,0c198h		;16b7	21 98 c1 	! . . 
	res 7,(hl)		;16ba	cb be 	. . 
	ret			;16bc	c9 	. 
	ld b,004h		;16bd	06 04 	. . 
	call sub_2df2h		;16bf	cd f2 2d 	. . - 
	ret			;16c2	c9 	. 
	ld a,005h		;16c3	3e 05 	> . 
	call sub_092bh		;16c5	cd 2b 09 	. + . 
	jp c,l06dah		;16c8	da da 06 	. . . 
	ld bc,05709h		;16cb	01 09 57 	. . W 
	call 0225fh		;16ce	cd 5f 22 	. _ " 
	ld a,034h		;16d1	3e 34 	> 4 
	ld b,005h		;16d3	06 05 	. . 
l16d5h:
	rst 30h			;16d5	f7 	. 
	djnz l16d5h		;16d6	10 fd 	. . 
	ld a,064h		;16d8	3e 64 	> d 
	ld b,006h		;16da	06 06 	. . 
	call 022f1h		;16dc	cd f1 22 	. . " 
	ld hl,0c198h		;16df	21 98 c1 	! . . 
	set 2,(hl)		;16e2	cb d6 	. . 
	ld ix,(0c196h)		;16e4	dd 2a 96 c1 	. * . . 
	ld a,(0c127h)		;16e8	3a 27 c1 	: ' . 
	bit 0,a		;16eb	cb 47 	. G 
	jr nz,l16fch		;16ed	20 0d 	  . 
	ld de,0ffffh		;16ef	11 ff ff 	. . . 
	call 02298h		;16f2	cd 98 22 	. . " 
	ld de,00180h		;16f5	11 80 01 	. . . 
	call 0229fh		;16f8	cd 9f 22 	. . " 
	ret			;16fb	c9 	. 
l16fch:
	ld de,002c0h		;16fc	11 c0 02 	. . . 
	call 02298h		;16ff	cd 98 22 	. . " 
	ld de,00180h		;1702	11 80 01 	. . . 
	call 0229fh		;1705	cd 9f 22 	. . " 
	ret			;1708	c9 	. 
	rlca			;1709	07 	. 
	inc bc			;170a	03 	. 
	dec b			;170b	05 	. 
	jr nz,$+35		;170c	20 21 	  ! 
	and b			;170e	a0 	. 
	pop bc			;170f	c1 	. 
	set 0,(hl)		;1710	cb c6 	. . 
	call l2339h+2		;1712	cd 3b 23 	. ; # 
	cp 0c0h		;1715	fe c0 	. . 
	jp nc,058aah		;1717	d2 aa 58 	. . X 
	bit 2,(ix+002h)		;171a	dd cb 02 56 	. . . V 
	jp nz,058b8h		;171e	c2 b8 58 	. . X 
	ld a,(0c198h)		;1721	3a 98 c1 	: . . 
	bit 6,a		;1724	cb 77 	. w 
	jr z,l1733h		;1726	28 0b 	( . 
	call sub_2301h		;1728	cd 01 23 	. . # 
	ld a,(0c198h)		;172b	3a 98 c1 	: . . 
	bit 7,a		;172e	cb 7f 	.  
	jp nz,0585fh		;1730	c2 5f 58 	. _ X 
l1733h:
	bit 6,a		;1733	cb 77 	. w 
	jr nz,l174bh		;1735	20 14 	  . 
	bit 5,(ix+002h)		;1737	dd cb 02 6e 	. . . n 
	jr z,l174bh		;173b	28 0e 	( . 
	res 5,(ix+002h)		;173d	dd cb 02 ae 	. . . . 
	ld hl,0c198h		;1741	21 98 c1 	! . . 
	set 6,(hl)		;1744	cb f6 	. . 
	ld a,002h		;1746	3e 02 	> . 
	call 0615eh		;1748	cd 5e 61 	. ^ a 
l174bh:
	ld a,(0c1a0h)		;174b	3a a0 c1 	: . . 
	bit 0,a		;174e	cb 47 	. G 
	jr z,l17bbh		;1750	28 69 	( i 
	ld a,(0c198h)		;1752	3a 98 c1 	: . . 
	bit 0,a		;1755	cb 47 	. G 
	jr nz,l176ah		;1757	20 11 	  . 
	ld b,0d4h		;1759	06 d4 	. . 
	call 022d9h		;175b	cd d9 22 	. . " 
	jp c,057bbh		;175e	da bb 57 	. . W 
	ld hl,0c198h		;1761	21 98 c1 	! . . 
	set 0,(hl)		;1764	cb c6 	. . 
	bit 1,(hl)		;1766	cb 4e 	. N 
	jr nz,l17bbh		;1768	20 51 	  Q 
l176ah:
	xor a			;176a	af 	. 
	ld hl,l0606h		;176b	21 06 06 	! . . 
	call 0392fh		;176e	cd 2f 39 	. / 9 
	ld a,(ix+014h)		;1771	dd 7e 14 	. ~ . 
	bit 1,a		;1774	cb 4f 	. O 
	jr z,l1780h		;1776	28 08 	( . 
	ld hl,0c198h		;1778	21 98 c1 	! . . 
	set 1,(hl)		;177b	cb ce 	. . 
	jp 057bbh		;177d	c3 bb 57 	. . W 
l1780h:
	ld a,(0c127h)		;1780	3a 27 c1 	: ' . 
	bit 2,a		;1783	cb 57 	. W 
	jr z,l1790h		;1785	28 09 	( . 
	ld de,l0001h		;1787	11 01 00 	. . . 
	call l2288h+1		;178a	cd 89 22 	. . " 
	jp 05793h		;178d	c3 93 57 	. . W 
l1790h:
	ld de,00180h		;1790	11 80 01 	. . . 
	ld hl,(0c196h)		;1793	2a 96 c1 	* . . 
sub_1796h:
	rst 8			;1796	cf 	. 
	ld de,0fff0h		;1797	11 f0 ff 	. . . 
	call 0227ah		;179a	cd 7a 22 	. z " 
	ld hl,(0c196h)		;179d	2a 96 c1 	* . . 
	rst 18h			;17a0	df 	. 
	cp 010h		;17a1	fe 10 	. . 
	jp c,058aah		;17a3	da aa 58 	. . X 
	ld a,(0c198h)		;17a6	3a 98 c1 	: . . 
	bit 6,a		;17a9	cb 77 	. w 
	jr nz,l17b1h		;17ab	20 04 	  . 
	ld a,064h		;17ad	3e 64 	> d 
	jr l17b3h		;17af	18 02 	. . 
l17b1h:
	ld a,070h		;17b1	3e 70 	> p 
l17b3h:
	ld b,006h		;17b3	06 06 	. . 
	call 022f1h		;17b5	cd f1 22 	. . " 
	jp 05891h		;17b8	c3 91 58 	. . X 
l17bbh:
	ld a,(0c127h)		;17bb	3a 27 c1 	: ' . 
	bit 2,a		;17be	cb 57 	. W 
	jr z,l17cbh		;17c0	28 09 	( . 
	ld de,l0001h		;17c2	11 01 00 	. . . 
	call l2288h+1		;17c5	cd 89 22 	. . " 
	jp 057ceh		;17c8	c3 ce 57 	. . W 
l17cbh:
	ld de,00180h		;17cb	11 80 01 	. . . 
	ld hl,(0c196h)		;17ce	2a 96 c1 	* . . 
	rst 8			;17d1	cf 	. 
	ld a,(0c198h)		;17d2	3a 98 c1 	: . . 
	bit 6,a		;17d5	cb 77 	. w 
	jr nz,l181dh		;17d7	20 44 	  D 
	ld a,008h		;17d9	3e 08 	> . 
	ld hl,0c199h		;17db	21 99 c1 	! . . 
	inc (hl)			;17de	34 	4 
	ld c,a			;17df	4f 	O 
	cp (hl)			;17e0	be 	. 
	ld d,000h		;17e1	16 00 	. . 
	jr nc,l17edh		;17e3	30 08 	0 . 
	add a,c			;17e5	81 	. 
	dec a			;17e6	3d 	= 
	cp (hl)			;17e7	be 	. 
	inc d			;17e8	14 	. 
	jr nc,l17edh		;17e9	30 02 	0 . 
	ld (hl),000h		;17eb	36 00 	6 . 
l17edh:
	ld a,d			;17ed	7a 	z 
	and a			;17ee	a7 	. 
	jr nz,l1807h		;17ef	20 16 	  . 
	ld hl,0c198h		;17f1	21 98 c1 	! . . 
	bit 2,(hl)		;17f4	cb 56 	. V 
	jp nz,05891h		;17f6	c2 91 58 	. . X 
	set 2,(hl)		;17f9	cb d6 	. . 
	res 3,(hl)		;17fb	cb 9e 	. . 
	ld a,064h		;17fd	3e 64 	> d 
	ld b,006h		;17ff	06 06 	. . 
	call 022f1h		;1801	cd f1 22 	. . " 
	jp 05891h		;1804	c3 91 58 	. . X 
l1807h:
	ld hl,0c198h		;1807	21 98 c1 	! . . 
	bit 3,(hl)		;180a	cb 5e 	. ^ 
	jp nz,05891h		;180c	c2 91 58 	. . X 
	set 3,(hl)		;180f	cb de 	. . 
	res 2,(hl)		;1811	cb 96 	. . 
	ld a,06ah		;1813	3e 6a 	> j 
	ld b,006h		;1815	06 06 	. . 
	call 022f1h		;1817	cd f1 22 	. . " 
	jp 05891h		;181a	c3 91 58 	. . X 
l181dh:
	ld hl,0c19ah		;181d	21 9a c1 	! . . 
	ld a,008h		;1820	3e 08 	> . 
	inc (hl)			;1822	34 	4 
	ld c,a			;1823	4f 	O 
	cp (hl)			;1824	be 	. 
	ld d,000h		;1825	16 00 	. . 
	jr nc,l1831h		;1827	30 08 	0 . 
	add a,c			;1829	81 	. 
	dec a			;182a	3d 	= 
	cp (hl)			;182b	be 	. 
	inc d			;182c	14 	. 
	jr nc,l1831h		;182d	30 02 	0 . 
	ld (hl),000h		;182f	36 00 	6 . 
l1831h:
	ld a,d			;1831	7a 	z 
	and a			;1832	a7 	. 
	jr nz,l184ah		;1833	20 15 	  . 
	ld hl,0c198h		;1835	21 98 c1 	! . . 
	bit 4,(hl)		;1838	cb 66 	. f 
	jr nz,l1891h		;183a	20 55 	  U 
	set 4,(hl)		;183c	cb e6 	. . 
	res 5,(hl)		;183e	cb ae 	. . 
	ld a,070h		;1840	3e 70 	> p 
	ld b,006h		;1842	06 06 	. . 
	call 022f1h		;1844	cd f1 22 	. . " 
	jp 05891h		;1847	c3 91 58 	. . X 
l184ah:
	ld hl,0c198h		;184a	21 98 c1 	! . . 
	bit 5,(hl)		;184d	cb 6e 	. n 
	jr nz,l1891h		;184f	20 40 	  @ 
	set 5,(hl)		;1851	cb ee 	. . 
	res 4,(hl)		;1853	cb a6 	. . 
	ld a,076h		;1855	3e 76 	> v 
	ld b,006h		;1857	06 06 	. . 
	call 022f1h		;1859	cd f1 22 	. . " 
	jp 05891h		;185c	c3 91 58 	. . X 
	ld a,(0c19ch)		;185f	3a 9c c1 	: . . 
	bit 6,a		;1862	cb 77 	. w 
	jr nz,l187ah		;1864	20 14 	  . 
	ld hl,(0c196h)		;1866	2a 96 c1 	* . . 
	ld de,l0006h+1		;1869	11 07 00 	. . . 
	add hl,de			;186c	19 	. 
	ld a,(0c227h)		;186d	3a 27 c2 	: ' . 
	cp (hl)			;1870	be 	. 
	ld hl,0c19ch		;1871	21 9c c1 	! . . 
	jr nc,l1878h		;1874	30 02 	0 . 
	set 7,(hl)		;1876	cb fe 	. . 
l1878h:
	set 6,(hl)		;1878	cb f6 	. . 
l187ah:
	call sub_22a6h		;187a	cd a6 22 	. . " 
	cp 010h		;187d	fe 10 	. . 
	jr c,l1895h		;187f	38 14 	8 . 
	ld hl,0c19ch		;1881	21 9c c1 	! . . 
	bit 1,(hl)		;1884	cb 4e 	. N 
	jr nz,l1891h		;1886	20 09 	  . 
	set 1,(hl)		;1888	cb ce 	. . 
	ld a,07ch		;188a	3e 7c 	> | 
	ld b,006h		;188c	06 06 	. . 
	call 022f1h		;188e	cd f1 22 	. . " 
l1891h:
	ld b,006h		;1891	06 06 	. . 
	rst 28h			;1893	ef 	. 
	ret			;1894	c9 	. 
l1895h:
	ld a,(0c19ch)		;1895	3a 9c c1 	: . . 
	bit 7,a		;1898	cb 7f 	.  
	jr z,l18aah		;189a	28 0e 	( . 
	ld a,040h		;189c	3e 40 	> @ 
	ld h,a			;189e	67 	g 
	ld a,(0c227h)		;189f	3a 27 c2 	: ' . 
	add a,020h		;18a2	c6 20 	.   
	ld l,a			;18a4	6f 	o 
	ld a,045h		;18a5	3e 45 	> E 
	call sub_06e2h		;18a7	cd e2 06 	. . . 
l18aah:
	ld b,006h		;18aa	06 06 	. . 
	call l24a9h		;18ac	cd a9 24 	. . $ 
	ld hl,0c198h		;18af	21 98 c1 	! . . 
	res 7,(hl)		;18b2	cb be 	. . 
	ld a,056h		;18b4	3e 56 	> V 
	rst 30h			;18b6	f7 	. 
	ret			;18b7	c9 	. 
	ld b,006h		;18b8	06 06 	. . 
	call sub_2df2h		;18ba	cd f2 2d 	. . - 
	ret			;18bd	c9 	. 
	ld a,00bh		;18be	3e 0b 	> . 
	call sub_092bh		;18c0	cd 2b 09 	. + . 
	jp c,l06dah		;18c3	da da 06 	. . . 
	ld e,0d0h		;18c6	1e d0 	. . 
	ld bc,058deh		;18c8	01 de 58 	. . X 
	call 0225fh		;18cb	cd 5f 22 	. _ " 
	ld a,040h		;18ce	3e 40 	> @ 
	rst 30h			;18d0	f7 	. 
	ld b,006h		;18d1	06 06 	. . 
	ld a,0a9h		;18d3	3e a9 	> . 
	call 022f1h		;18d5	cd f1 22 	. . " 
	ld hl,0c198h		;18d8	21 98 c1 	! . . 
	set 0,(hl)		;18db	cb c6 	. . 
	ret			;18dd	c9 	. 
	inc bc			;18de	03 	. 
	dec b			;18df	05 	. 
	inc bc			;18e0	03 	. 
	jr nz,l191dh		;18e1	20 3a 	  : 
	sbc a,b			;18e3	98 	. 
	pop bc			;18e4	c1 	. 
	bit 3,a		;18e5	cb 5f 	. _ 
	jr nz,l18f4h		;18e7	20 0b 	  . 
	ld de,00260h		;18e9	11 60 02 	. ` . 
	call 02298h		;18ec	cd 98 22 	. . " 
	ld hl,0c198h		;18ef	21 98 c1 	! . . 
	set 3,(hl)		;18f2	cb de 	. . 
l18f4h:
	call l2339h+2		;18f4	cd 3b 23 	. ; # 
	cp 030h		;18f7	fe 30 	. 0 
	jp c,059a3h		;18f9	da a3 59 	. . Y 
	bit 2,(ix+002h)		;18fc	dd cb 02 56 	. . . V 
	jp nz,059aeh		;1900	c2 ae 59 	. . Y 
	call sub_2301h		;1903	cd 01 23 	. . # 
	ld a,(0c198h)		;1906	3a 98 c1 	: . . 
	bit 7,a		;1909	cb 7f 	.  
	jp nz,05987h		;190b	c2 87 59 	. . Y 
	bit 4,a		;190e	cb 67 	. g 
	jr nz,l191fh		;1910	20 0d 	  . 
	ld b,040h		;1912	06 40 	. @ 
	call 022d9h		;1914	cd d9 22 	. . " 
	jp nc,0593eh		;1917	d2 3e 59 	. > Y 
	ld hl,0c198h		;191a	21 98 c1 	! . . 
l191dh:
	set 4,(hl)		;191d	cb e6 	. . 
l191fh:
	xor a			;191f	af 	. 
	ld hl,l0604h		;1920	21 04 06 	! . . 
	call 0392fh		;1923	cd 2f 39 	. / 9 
	ld a,(ix+014h)		;1926	dd 7e 14 	. ~ . 
	bit 1,a		;1929	cb 4f 	. O 
	jr z,l1934h		;192b	28 07 	( . 
	ld hl,0c198h		;192d	21 98 c1 	! . . 
	res 3,(hl)		;1930	cb 9e 	. . 
	jr l1945h		;1932	18 11 	. . 
l1934h:
	ld de,0ffech		;1934	11 ec ff 	. . . 
	call 0227ah		;1937	cd 7a 22 	. z " 
	ld hl,(0c196h)		;193a	2a 96 c1 	* . . 
	rst 18h			;193d	df 	. 
	ld de,0ff80h		;193e	11 80 ff 	. . . 
	ld hl,(0c196h)		;1941	2a 96 c1 	* . . 
	rst 8			;1944	cf 	. 
l1945h:
	ld a,010h		;1945	3e 10 	> . 
	ld hl,0c199h		;1947	21 99 c1 	! . . 
	inc (hl)			;194a	34 	4 
	ld c,a			;194b	4f 	O 
	cp (hl)			;194c	be 	. 
	ld d,000h		;194d	16 00 	. . 
	jr nc,l1959h		;194f	30 08 	0 . 
	add a,c			;1951	81 	. 
	dec a			;1952	3d 	= 
	cp (hl)			;1953	be 	. 
	inc d			;1954	14 	. 
	jr nc,l1959h		;1955	30 02 	0 . 
	ld (hl),000h		;1957	36 00 	6 . 
l1959h:
	ld a,d			;1959	7a 	z 
	and a			;195a	a7 	. 
	jr nz,l1972h		;195b	20 15 	  . 
	ld hl,0c198h		;195d	21 98 c1 	! . . 
	bit 0,(hl)		;1960	cb 46 	. F 
	jr nz,l199fh		;1962	20 3b 	  ; 
	set 0,(hl)		;1964	cb c6 	. . 
	res 1,(hl)		;1966	cb 8e 	. . 
	ld a,0a9h		;1968	3e a9 	> . 
	ld b,006h		;196a	06 06 	. . 
	call 022f1h		;196c	cd f1 22 	. . " 
	jp 0599fh		;196f	c3 9f 59 	. . Y 
l1972h:
	ld hl,0c198h		;1972	21 98 c1 	! . . 
	bit 1,(hl)		;1975	cb 4e 	. N 
	jr nz,l199fh		;1977	20 26 	  & 
	set 1,(hl)		;1979	cb ce 	. . 
	res 0,(hl)		;197b	cb 86 	. . 
	ld a,0afh		;197d	3e af 	> . 
	ld b,006h		;197f	06 06 	. . 
	call 022f1h		;1981	cd f1 22 	. . " 
	jp 0599fh		;1984	c3 9f 59 	. . Y 
	call sub_22a6h		;1987	cd a6 22 	. . " 
	cp 010h		;198a	fe 10 	. . 
	jp c,059a3h		;198c	da a3 59 	. . Y 
	ld hl,0c198h		;198f	21 98 c1 	! . . 
	bit 2,(hl)		;1992	cb 56 	. V 
	jr nz,l199fh		;1994	20 09 	  . 
	set 2,(hl)		;1996	cb d6 	. . 
	ld a,0b5h		;1998	3e b5 	> . 
	ld b,006h		;199a	06 06 	. . 
	call 022f1h		;199c	cd f1 22 	. . " 
l199fh:
	ld b,006h		;199f	06 06 	. . 
	rst 28h			;19a1	ef 	. 
	ret			;19a2	c9 	. 
	ld b,006h		;19a3	06 06 	. . 
	call l24a9h		;19a5	cd a9 24 	. . $ 
	ld hl,0c198h		;19a8	21 98 c1 	! . . 
	set 7,(hl)		;19ab	cb fe 	. . 
	ret			;19ad	c9 	. 
	ld b,006h		;19ae	06 06 	. . 
	call sub_2df2h		;19b0	cd f2 2d 	. . - 
	ret			;19b3	c9 	. 
	ld a,003h		;19b4	3e 03 	> . 
	call sub_092bh		;19b6	cd 2b 09 	. + . 
	jp c,l06dah		;19b9	da da 06 	. . . 
	ld hl,0c198h		;19bc	21 98 c1 	! . . 
	set 6,(hl)		;19bf	cb f6 	. . 
	jp 059cch		;19c1	c3 cc 59 	. . Y 
	ld a,003h		;19c4	3e 03 	> . 
	call sub_092bh		;19c6	cd 2b 09 	. + . 
	jp c,l06dah		;19c9	da da 06 	. . . 
	ld bc,05a1eh		;19cc	01 1e 5a 	. . Z 
	call 0225fh		;19cf	cd 5f 22 	. _ " 
	ld hl,0c19fh		;19d2	21 9f c1 	! . . 
	ld (hl),030h		;19d5	36 30 	6 0 
	inc l			;19d7	2c 	, 
	ld (hl),060h		;19d8	36 60 	6 ` 
	ld a,(0c198h)		;19da	3a 98 c1 	: . . 
	bit 6,a		;19dd	cb 77 	. w 
	jr nz,l19ech		;19df	20 0b 	  . 
	ld a,d			;19e1	7a 	z 
	ld (0c19eh),a		;19e2	32 9e c1 	2 . . 
	ld a,e			;19e5	7b 	{ 
	ld (0c19dh),a		;19e6	32 9d c1 	2 . . 
	jp 059f5h		;19e9	c3 f5 59 	. . Y 
l19ech:
	ld hl,(0c196h)		;19ec	2a 96 c1 	* . . 
	ld de,l000ah		;19ef	11 0a 00 	. . . 
	add hl,de			;19f2	19 	. 
	set 3,(hl)		;19f3	cb de 	. . 
	ld a,03ah		;19f5	3e 3a 	> : 
	rst 30h			;19f7	f7 	. 
	ld a,(0c198h)		;19f8	3a 98 c1 	: . . 
	bit 6,a		;19fb	cb 77 	. w 
	jr nz,l1a10h		;19fd	20 11 	  . 
	ld a,(0c10bh)		;19ff	3a 0b c1 	: . . 
	ld (0c1a0h),a		;1a02	32 a0 c1 	2 . . 
	add a,a			;1a05	87 	. 
	ld (0c19fh),a		;1a06	32 9f c1 	2 . . 
	ld hl,(0c196h)		;1a09	2a 96 c1 	* . . 
	inc l			;1a0c	2c 	, 
	inc l			;1a0d	2c 	, 
	set 6,(hl)		;1a0e	cb f6 	. . 
l1a10h:
	ld d,002h		;1a10	16 02 	. . 
	ld a,(0c1a0h)		;1a12	3a a0 c1 	: . . 
	ld e,a			;1a15	5f 	_ 
	ld ix,(0c196h)		;1a16	dd 2a 96 c1 	. * . . 
	call 02298h		;1a1a	cd 98 22 	. . " 
	ret			;1a1d	c9 	. 
	inc bc			;1a1e	03 	. 
	inc bc			;1a1f	03 	. 
	inc bc			;1a20	03 	. 
	jr nz,$-49		;1a21	20 cd 	  . 
	ld c,e			;1a23	4b 	K 
	inc hl			;1a24	23 	# 
	cp 038h		;1a25	fe 38 	. 8 
	jp c,05afeh		;1a27	da fe 5a 	. . Z 
	bit 2,(ix+002h)		;1a2a	dd cb 02 56 	. . . V 
	jp nz,05b09h		;1a2e	c2 09 5b 	. . [ 
	call sub_2301h		;1a31	cd 01 23 	. . # 
	ld hl,0c198h		;1a34	21 98 c1 	! . . 
	bit 7,(hl)		;1a37	cb 7e 	. ~ 
	jp nz,05ae3h		;1a39	c2 e3 5a 	. . Z 
	ld a,(0c198h)		;1a3c	3a 98 c1 	: . . 
	bit 6,a		;1a3f	cb 77 	. w 
	jr nz,l1a53h		;1a41	20 10 	  . 
	ld de,(0cb3bh)		;1a43	ed 5b 3b cb 	. [ ; . 
	ld hl,(0c19ch)		;1a47	2a 9c c1 	* . . 
	xor a			;1a4a	af 	. 
	sbc hl,de		;1a4b	ed 52 	. R 
	ld (0c19ch),hl		;1a4d	22 9c c1 	" . . 
	jp 05a65h		;1a50	c3 65 5a 	. e Z 
l1a53h:
	ld a,(0c198h)		;1a53	3a 98 c1 	: . . 
	bit 0,a		;1a56	cb 47 	. G 
	jr nz,l1a65h		;1a58	20 0b 	  . 
	ld b,030h		;1a5a	06 30 	. 0 
	call 022d9h		;1a5c	cd d9 22 	. . " 
	ret nc			;1a5f	d0 	. 
	ld hl,0c198h		;1a60	21 98 c1 	! . . 
	set 0,(hl)		;1a63	cb c6 	. . 
l1a65h:
	ld a,(0c198h)		;1a65	3a 98 c1 	: . . 
	bit 6,a		;1a68	cb 77 	. w 
	jr z,l1a72h		;1a6a	28 06 	( . 
	ld de,0ffc0h		;1a6c	11 c0 ff 	. . . 
	jp 05a83h		;1a6f	c3 83 5a 	. . Z 
l1a72h:
	ld a,(0c19fh)		;1a72	3a 9f c1 	: . . 
	ld e,a			;1a75	5f 	_ 
	bit 3,a		;1a76	cb 5f 	. _ 
	jr nz,l1a81h		;1a78	20 07 	  . 
	neg		;1a7a	ed 44 	. D 
	ld d,0ffh		;1a7c	16 ff 	. . 
	jp 05a83h		;1a7e	c3 83 5a 	. . Z 
l1a81h:
	ld d,000h		;1a81	16 00 	. . 
	ld hl,(0c196h)		;1a83	2a 96 c1 	* . . 
	rst 8			;1a86	cf 	. 
	ld de,0ffe0h		;1a87	11 e0 ff 	. . . 
	call 0227ah		;1a8a	cd 7a 22 	. z " 
	ld hl,(0c196h)		;1a8d	2a 96 c1 	* . . 
	rst 18h			;1a90	df 	. 
	cp 010h		;1a91	fe 10 	. . 
	jp c,05afeh		;1a93	da fe 5a 	. . Z 
	ld hl,0c199h		;1a96	21 99 c1 	! . . 
	ld a,020h		;1a99	3e 20 	>   
	inc (hl)			;1a9b	34 	4 
	cp (hl)			;1a9c	be 	. 
	jr nc,l1abch		;1a9d	30 1d 	0 . 
	ld (hl),000h		;1a9f	36 00 	6 . 
	ld a,(0c198h)		;1aa1	3a 98 c1 	: . . 
	bit 6,a		;1aa4	cb 77 	. w 
	jr nz,l1ad0h		;1aa6	20 28 	  ( 
	ld a,(0c19eh)		;1aa8	3a 9e c1 	: . . 
	ld h,a			;1aab	67 	g 
	ld a,(0c19dh)		;1aac	3a 9d c1 	: . . 
	ld l,a			;1aaf	6f 	o 
	ld a,03bh		;1ab0	3e 3b 	> ; 
	call sub_06e2h		;1ab2	cd e2 06 	. . . 
	res 6,(ix+002h)		;1ab5	dd cb 02 b6 	. . . . 
	jp 05ad0h		;1ab9	c3 d0 5a 	. . Z 
l1abch:
	ld hl,0c198h		;1abc	21 98 c1 	! . . 
	bit 1,(hl)		;1abf	cb 4e 	. N 
	jp nz,05afah		;1ac1	c2 fa 5a 	. . Z 
	set 1,(hl)		;1ac4	cb ce 	. . 
	ld a,085h		;1ac6	3e 85 	> . 
	ld b,004h		;1ac8	06 04 	. . 
	call 022f1h		;1aca	cd f1 22 	. . " 
	jp 05afah		;1acd	c3 fa 5a 	. . Z 
l1ad0h:
	ld hl,0c198h		;1ad0	21 98 c1 	! . . 
	bit 2,(hl)		;1ad3	cb 56 	. V 
	jr nz,l1afah		;1ad5	20 23 	  # 
	set 2,(hl)		;1ad7	cb d6 	. . 
	ld a,081h		;1ad9	3e 81 	> . 
	ld b,004h		;1adb	06 04 	. . 
	call 022f1h		;1add	cd f1 22 	. . " 
	jp 05afah		;1ae0	c3 fa 5a 	. . Z 
	call sub_22a6h		;1ae3	cd a6 22 	. . " 
	cp 010h		;1ae6	fe 10 	. . 
	jr c,l1afeh		;1ae8	38 14 	8 . 
	ld hl,0c198h		;1aea	21 98 c1 	! . . 
	bit 3,(hl)		;1aed	cb 5e 	. ^ 
	jr nz,l1afah		;1aef	20 09 	  . 
	set 3,(hl)		;1af1	cb de 	. . 
	ld a,089h		;1af3	3e 89 	> . 
	ld b,004h		;1af5	06 04 	. . 
	call 022f1h		;1af7	cd f1 22 	. . " 
l1afah:
	ld b,004h		;1afa	06 04 	. . 
	rst 28h			;1afc	ef 	. 
	ret			;1afd	c9 	. 
l1afeh:
	ld b,004h		;1afe	06 04 	. . 
	call l24a9h		;1b00	cd a9 24 	. . $ 
	ld hl,0c198h		;1b03	21 98 c1 	! . . 
	res 7,(hl)		;1b06	cb be 	. . 
	ret			;1b08	c9 	. 
	ld b,004h		;1b09	06 04 	. . 
	call sub_2df2h		;1b0b	cd f2 2d 	. . - 
	ret			;1b0e	c9 	. 
	ld a,003h		;1b0f	3e 03 	> . 
	call sub_092bh		;1b11	cd 2b 09 	. + . 
	jp c,l06dah		;1b14	da da 06 	. . . 
	ld e,0d0h		;1b17	1e d0 	. . 
	ld bc,05b2dh		;1b19	01 2d 5b 	. - [ 
	call 0225fh		;1b1c	cd 5f 22 	. _ " 
	ld a,03eh		;1b1f	3e 3e 	> > 
	rst 30h			;1b21	f7 	. 
	ld ix,(0c196h)		;1b22	dd 2a 96 c1 	. * . . 
	ld de,00300h		;1b26	11 00 03 	. . . 
	call 02298h		;1b29	cd 98 22 	. . " 
	ret			;1b2c	c9 	. 
	inc bc			;1b2d	03 	. 
	inc bc			;1b2e	03 	. 
	inc bc			;1b2f	03 	. 
	jr nz,$-49		;1b30	20 cd 	  . 
	dec sp			;1b32	3b 	; 
	inc hl			;1b33	23 	# 
	cp 040h		;1b34	fe 40 	. @ 
	jp c,05bbfh		;1b36	da bf 5b 	. . [ 
	bit 2,(ix+002h)		;1b39	dd cb 02 56 	. . . V 
	jp nz,05bcah		;1b3d	c2 ca 5b 	. . [ 
	call sub_2301h		;1b40	cd 01 23 	. . # 
	ld a,(0c198h)		;1b43	3a 98 c1 	: . . 
	bit 7,a		;1b46	cb 7f 	.  
	jp nz,05ba3h		;1b48	c2 a3 5b 	. . [ 
	bit 0,a		;1b4b	cb 47 	. G 
	jp nz,05b5bh		;1b4d	c2 5b 5b 	. [ [ 
	ld b,028h		;1b50	06 28 	. ( 
	call 022d9h		;1b52	cd d9 22 	. . " 
	ret nc			;1b55	d0 	. 
	ld hl,0c198h		;1b56	21 98 c1 	! . . 
	set 0,(hl)		;1b59	cb c6 	. . 
	call 022b9h		;1b5b	cd b9 22 	. . " 
	cp 010h		;1b5e	fe 10 	. . 
	jr c,l1bbfh		;1b60	38 5d 	8 ] 
	ld a,(0c198h)		;1b62	3a 98 c1 	: . . 
	bit 1,a		;1b65	cb 4f 	. O 
	jr nz,l1bbbh		;1b67	20 52 	  R 
	ld hl,0c19ah		;1b69	21 9a c1 	! . . 
	ld a,018h		;1b6c	3e 18 	> . 
	inc (hl)			;1b6e	34 	4 
	ld c,a			;1b6f	4f 	O 
	cp (hl)			;1b70	be 	. 
	ld d,000h		;1b71	16 00 	. . 
	jr nc,l1b7dh		;1b73	30 08 	0 . 
	add a,c			;1b75	81 	. 
	dec a			;1b76	3d 	= 
	cp (hl)			;1b77	be 	. 
	inc d			;1b78	14 	. 
	jr nc,l1b7dh		;1b79	30 02 	0 . 
	ld (hl),000h		;1b7b	36 00 	6 . 
l1b7dh:
	ld a,d			;1b7d	7a 	z 
	and a			;1b7e	a7 	. 
	jr nz,l1b94h		;1b7f	20 13 	  . 
	ld hl,0c198h		;1b81	21 98 c1 	! . . 
	bit 2,(hl)		;1b84	cb 56 	. V 
	jr nz,l1bbbh		;1b86	20 33 	  3 
	set 2,(hl)		;1b88	cb d6 	. . 
	ld a,08fh		;1b8a	3e 8f 	> . 
	ld b,004h		;1b8c	06 04 	. . 
	call 022f1h		;1b8e	cd f1 22 	. . " 
	jp 05bbbh		;1b91	c3 bb 5b 	. . [ 
l1b94h:
	ld hl,0c198h		;1b94	21 98 c1 	! . . 
	set 1,(hl)		;1b97	cb ce 	. . 
	ld a,08bh		;1b99	3e 8b 	> . 
	ld b,004h		;1b9b	06 04 	. . 
	call 022f1h		;1b9d	cd f1 22 	. . " 
	jp 05bbbh		;1ba0	c3 bb 5b 	. . [ 
	call sub_22a6h		;1ba3	cd a6 22 	. . " 
	cp 010h		;1ba6	fe 10 	. . 
	jp c,05bbfh		;1ba8	da bf 5b 	. . [ 
	ld hl,0c198h		;1bab	21 98 c1 	! . . 
	bit 4,(hl)		;1bae	cb 66 	. f 
	jr nz,l1bbbh		;1bb0	20 09 	  . 
	set 4,(hl)		;1bb2	cb e6 	. . 
	ld a,093h		;1bb4	3e 93 	> . 
	ld b,004h		;1bb6	06 04 	. . 
	call 022f1h		;1bb8	cd f1 22 	. . " 
l1bbbh:
	ld b,004h		;1bbb	06 04 	. . 
	rst 28h			;1bbd	ef 	. 
	ret			;1bbe	c9 	. 
l1bbfh:
	ld b,004h		;1bbf	06 04 	. . 
	call l24a9h		;1bc1	cd a9 24 	. . $ 
	ld hl,0c198h		;1bc4	21 98 c1 	! . . 
	res 7,(hl)		;1bc7	cb be 	. . 
	ret			;1bc9	c9 	. 
	ld b,004h		;1bca	06 04 	. . 
	call sub_2df2h		;1bcc	cd f2 2d 	. . - 
	ret			;1bcf	c9 	. 
	ld a,005h		;1bd0	3e 05 	> . 
	call sub_092bh		;1bd2	cd 2b 09 	. + . 
	jp c,l06dah		;1bd5	da da 06 	. . . 
	ld e,0d0h		;1bd8	1e d0 	. . 
	ld bc,05bf0h		;1bda	01 f0 5b 	. . [ 
	call 0225fh		;1bdd	cd 5f 22 	. _ " 
	ld a,03fh		;1be0	3e 3f 	> ? 
	rst 30h			;1be2	f7 	. 
	ld b,006h		;1be3	06 06 	. . 
	ld a,097h		;1be5	3e 97 	> . 
	call 022f1h		;1be7	cd f1 22 	. . " 
	ld hl,0c198h		;1bea	21 98 c1 	! . . 
	set 0,(hl)		;1bed	cb c6 	. . 
	ret			;1bef	c9 	. 
	inc b			;1bf0	04 	. 
	inc bc			;1bf1	03 	. 
	inc bc			;1bf2	03 	. 
	jr nz,$-49		;1bf3	20 cd 	  . 
	dec sp			;1bf5	3b 	; 
	inc hl			;1bf6	23 	# 
	cp 030h		;1bf7	fe 30 	. 0 
	jp c,05c73h		;1bf9	da 73 5c 	. s \ 
	bit 2,(ix+002h)		;1bfc	dd cb 02 56 	. . . V 
	jp nz,05c7eh		;1c00	c2 7e 5c 	. ~ \ 
	call sub_2301h		;1c03	cd 01 23 	. . # 
	ld a,(0c198h)		;1c06	3a 98 c1 	: . . 
	bit 7,a		;1c09	cb 7f 	.  
	jp nz,05c57h		;1c0b	c2 57 5c 	. W \ 
	ld de,0ff60h		;1c0e	11 60 ff 	. ` . 
	ld hl,(0c196h)		;1c11	2a 96 c1 	* . . 
	rst 8			;1c14	cf 	. 
	ld a,008h		;1c15	3e 08 	> . 
	ld hl,0c199h		;1c17	21 99 c1 	! . . 
	inc (hl)			;1c1a	34 	4 
	ld c,a			;1c1b	4f 	O 
	cp (hl)			;1c1c	be 	. 
	ld d,000h		;1c1d	16 00 	. . 
	jr nc,l1c29h		;1c1f	30 08 	0 . 
	add a,c			;1c21	81 	. 
	dec a			;1c22	3d 	= 
	cp (hl)			;1c23	be 	. 
	inc d			;1c24	14 	. 
	jr nc,l1c29h		;1c25	30 02 	0 . 
	ld (hl),000h		;1c27	36 00 	6 . 
l1c29h:
	ld a,d			;1c29	7a 	z 
	and a			;1c2a	a7 	. 
	jr nz,l1c42h		;1c2b	20 15 	  . 
	ld hl,0c198h		;1c2d	21 98 c1 	! . . 
	bit 0,(hl)		;1c30	cb 46 	. F 
	jr nz,l1c6fh		;1c32	20 3b 	  ; 
	set 0,(hl)		;1c34	cb c6 	. . 
	res 1,(hl)		;1c36	cb 8e 	. . 
	ld a,097h		;1c38	3e 97 	> . 
	ld b,006h		;1c3a	06 06 	. . 
	call 022f1h		;1c3c	cd f1 22 	. . " 
	jp 05c6fh		;1c3f	c3 6f 5c 	. o \ 
l1c42h:
	ld hl,0c198h		;1c42	21 98 c1 	! . . 
	bit 1,(hl)		;1c45	cb 4e 	. N 
	jr nz,l1c6fh		;1c47	20 26 	  & 
	set 1,(hl)		;1c49	cb ce 	. . 
	res 0,(hl)		;1c4b	cb 86 	. . 
	ld a,09dh		;1c4d	3e 9d 	> . 
	ld b,006h		;1c4f	06 06 	. . 
	call 022f1h		;1c51	cd f1 22 	. . " 
	jp 05c6fh		;1c54	c3 6f 5c 	. o \ 
	call sub_22a6h		;1c57	cd a6 22 	. . " 
	cp 010h		;1c5a	fe 10 	. . 
	jp c,05c73h		;1c5c	da 73 5c 	. s \ 
	ld hl,0c198h		;1c5f	21 98 c1 	! . . 
	bit 2,(hl)		;1c62	cb 56 	. V 
	jr nz,l1c6fh		;1c64	20 09 	  . 
	set 2,(hl)		;1c66	cb d6 	. . 
	ld a,0a3h		;1c68	3e a3 	> . 
	ld b,006h		;1c6a	06 06 	. . 
	call 022f1h		;1c6c	cd f1 22 	. . " 
l1c6fh:
	ld b,006h		;1c6f	06 06 	. . 
	rst 28h			;1c71	ef 	. 
	ret			;1c72	c9 	. 
	ld b,006h		;1c73	06 06 	. . 
	call l24a9h		;1c75	cd a9 24 	. . $ 
	ld hl,0c198h		;1c78	21 98 c1 	! . . 
	res 7,(hl)		;1c7b	cb be 	. . 
	ret			;1c7d	c9 	. 
	ld b,006h		;1c7e	06 06 	. . 
	call sub_2df2h		;1c80	cd f2 2d 	. . - 
	ret			;1c83	c9 	. 
	ld a,00ch		;1c84	3e 0c 	> . 
	call sub_092bh		;1c86	cd 2b 09 	. + . 
	jp c,l06dah		;1c89	da da 06 	. . . 
	ld hl,(0c196h)		;1c8c	2a 96 c1 	* . . 
	inc l			;1c8f	2c 	, 
	inc l			;1c90	2c 	, 
	set 6,(hl)		;1c91	cb f6 	. . 
	inc l			;1c93	2c 	, 
	inc l			;1c94	2c 	, 
	ld (hl),d			;1c95	72 	r 
	inc l			;1c96	2c 	, 
	inc l			;1c97	2c 	, 
	inc l			;1c98	2c 	, 
	ld (hl),e			;1c99	73 	s 
	ld a,043h		;1c9a	3e 43 	> C 
	rst 30h			;1c9c	f7 	. 
	ld b,002h		;1c9d	06 02 	. . 
	ld a,074h		;1c9f	3e 74 	> t 
	call 022f1h		;1ca1	cd f1 22 	. . " 
	ret			;1ca4	c9 	. 
	ld hl,0c198h		;1ca5	21 98 c1 	! . . 
	set 0,(hl)		;1ca8	cb c6 	. . 
	call l2339h+2		;1caa	cd 3b 23 	. ; # 
	cp 03ch		;1cad	fe 3c 	. < 
	jp c,05cb6h		;1caf	da b6 5c 	. . \ 
	ld b,002h		;1cb2	06 02 	. . 
	rst 28h			;1cb4	ef 	. 
	ret			;1cb5	c9 	. 
	ld a,(ix+004h)		;1cb6	dd 7e 04 	. ~ . 
	add a,002h		;1cb9	c6 02 	. . 
	ld h,a			;1cbb	67 	g 
	ld l,(ix+007h)		;1cbc	dd 6e 07 	. n . 
	ld a,(0c198h)		;1cbf	3a 98 c1 	: . . 
	bit 0,a		;1cc2	cb 47 	. G 
	jr nz,l1ccah		;1cc4	20 04 	  . 
	ld a,032h		;1cc6	3e 32 	> 2 
	jr l1ccch		;1cc8	18 02 	. . 
l1ccah:
	ld a,066h		;1cca	3e 66 	> f 
l1ccch:
	call sub_06e2h		;1ccc	cd e2 06 	. . . 
	ld b,002h		;1ccf	06 02 	. . 
	call l24a9h		;1cd1	cd a9 24 	. . $ 
	ret			;1cd4	c9 	. 
	ld a,003h		;1cd5	3e 03 	> . 
	call sub_092bh		;1cd7	cd 2b 09 	. + . 
	jp c,l06dah		;1cda	da da 06 	. . . 
	ld hl,(0c196h)		;1cdd	2a 96 c1 	* . . 
	inc l			;1ce0	2c 	, 
	inc l			;1ce1	2c 	, 
	set 3,(hl)		;1ce2	cb de 	. . 
	inc l			;1ce4	2c 	, 
	inc l			;1ce5	2c 	, 
	ld (hl),d			;1ce6	72 	r 
	inc l			;1ce7	2c 	, 
	ld (hl),002h		;1ce8	36 02 	6 . 
	inc l			;1cea	2c 	, 
	inc l			;1ceb	2c 	, 
	ld (hl),e			;1cec	73 	s 
	inc l			;1ced	2c 	, 
	ld (hl),003h		;1cee	36 03 	6 . 
	ld a,044h		;1cf0	3e 44 	> D 
	rst 30h			;1cf2	f7 	. 
	ld b,004h		;1cf3	06 04 	. . 
	ld a,072h		;1cf5	3e 72 	> r 
	call 022f1h		;1cf7	cd f1 22 	. . " 
	ret			;1cfa	c9 	. 
	call l2339h+2		;1cfb	cd 3b 23 	. ; # 
	cp 040h		;1cfe	fe 40 	. @ 
	jp c,05d27h		;1d00	da 27 5d 	. ' ] 
	bit 5,(ix+002h)		;1d03	dd cb 02 6e 	. . . n 
	jr nz,l1d0dh		;1d07	20 04 	  . 
	ld b,004h		;1d09	06 04 	. . 
	rst 28h			;1d0b	ef 	. 
	ret			;1d0c	c9 	. 
l1d0dh:
	ld h,(ix+004h)		;1d0d	dd 66 04 	. f . 
	ld l,(ix+007h)		;1d10	dd 6e 07 	. n . 
	ld a,00bh		;1d13	3e 0b 	> . 
	call sub_06e2h		;1d15	cd e2 06 	. . . 
	ld a,006h		;1d18	3e 06 	> . 
	call 0615eh		;1d1a	cd 5e 61 	. ^ a 
	ld a,002h		;1d1d	3e 02 	> . 
	call 0648dh		;1d1f	cd 8d 64 	. . d 
	ld a,08dh		;1d22	3e 8d 	> . 
	call 00a99h		;1d24	cd 99 0a 	. . . 
	ld b,004h		;1d27	06 04 	. . 
	call l24a9h		;1d29	cd a9 24 	. . $ 
	ret			;1d2c	c9 	. 
	ld a,000h		;1d2d	3e 00 	> . 
	call sub_092bh		;1d2f	cd 2b 09 	. + . 
	jp c,l06dah		;1d32	da da 06 	. . . 
	ld hl,(0c196h)		;1d35	2a 96 c1 	* . . 
	inc l			;1d38	2c 	, 
	inc l			;1d39	2c 	, 
	set 6,(hl)		;1d3a	cb f6 	. . 
	inc l			;1d3c	2c 	, 
	inc l			;1d3d	2c 	, 
	ld (hl),d			;1d3e	72 	r 
	inc l			;1d3f	2c 	, 
	inc l			;1d40	2c 	, 
	inc l			;1d41	2c 	, 
	ld (hl),e			;1d42	73 	s 
	ld a,(0c199h)		;1d43	3a 99 c1 	: . . 
	ld a,e			;1d46	7b 	{ 
	ld (0c199h),a		;1d47	32 99 c1 	2 . . 
	ld a,065h		;1d4a	3e 65 	> e 
	rst 30h			;1d4c	f7 	. 
	ld b,001h		;1d4d	06 01 	. . 
	ld a,080h		;1d4f	3e 80 	> . 
	call 022f1h		;1d51	cd f1 22 	. . " 
	ret			;1d54	c9 	. 
	ld hl,0c19ah		;1d55	21 9a c1 	! . . 
	bit 0,(hl)		;1d58	cb 46 	. F 
	jr nz,l1d74h		;1d5a	20 18 	  . 
	set 0,(hl)		;1d5c	cb c6 	. . 
	ld b,003h		;1d5e	06 03 	. . 
l1d60h:
	ld de,0c199h		;1d60	11 99 c1 	. . . 
	ld a,(0c10bh)		;1d63	3a 0b c1 	: . . 
	add a,a			;1d66	87 	. 
	ld h,a			;1d67	67 	g 
	ld a,(de)			;1d68	1a 	. 
	add a,006h		;1d69	c6 06 	. . 
	ld (de),a			;1d6b	12 	. 
	ld l,a			;1d6c	6f 	o 
	ld a,061h		;1d6d	3e 61 	> a 
	call sub_06e2h		;1d6f	cd e2 06 	. . . 
	djnz l1d60h		;1d72	10 ec 	. . 
l1d74h:
	call sub_234bh		;1d74	cd 4b 23 	. K # 
	cp 03dh		;1d77	fe 3d 	. = 
	jr c,l1d86h		;1d79	38 0b 	8 . 
	ld hl,(0c196h)		;1d7b	2a 96 c1 	* . . 
	ld de,0bdefh		;1d7e	11 ef bd 	. . . 
	rst 18h			;1d81	df 	. 
	ld b,001h		;1d82	06 01 	. . 
	rst 28h			;1d84	ef 	. 
	ret			;1d85	c9 	. 
l1d86h:
	ld b,001h		;1d86	06 01 	. . 
	call l24a9h		;1d88	cd a9 24 	. . $ 
	ret			;1d8b	c9 	. 
	ld a,(0c12fh)		;1d8c	3a 2f c1 	: / . 
	bit 7,a		;1d8f	cb 7f 	.  
	jr nz,l1dc5h		;1d91	20 32 	  2 
	bit 0,a		;1d93	cb 47 	. G 
	jr nz,l1dc5h		;1d95	20 2e 	  . 
	ld a,005h		;1d97	3e 05 	> . 
	call sub_092bh		;1d99	cd 2b 09 	. + . 
	jp c,l06dah		;1d9c	da da 06 	. . . 
	ld hl,(0c196h)		;1d9f	2a 96 c1 	* . . 
	inc l			;1da2	2c 	, 
	inc l			;1da3	2c 	, 
	set 3,(hl)		;1da4	cb de 	. . 
	inc l			;1da6	2c 	, 
	inc l			;1da7	2c 	, 
	ld (hl),d			;1da8	72 	r 
	inc l			;1da9	2c 	, 
	ld (hl),007h		;1daa	36 07 	6 . 
	inc l			;1dac	2c 	, 
	inc l			;1dad	2c 	, 
	ld (hl),e			;1dae	73 	s 
	inc l			;1daf	2c 	, 
	ld (hl),003h		;1db0	36 03 	6 . 
	inc l			;1db2	2c 	, 
	ld (hl),080h		;1db3	36 80 	6 . 
	ld a,06ah		;1db5	3e 6a 	> j 
	rst 30h			;1db7	f7 	. 
	ld b,006h		;1db8	06 06 	. . 
	ld a,020h		;1dba	3e 20 	>   
	call 022f1h		;1dbc	cd f1 22 	. . " 
	ld hl,0c12fh		;1dbf	21 2f c1 	! / . 
	set 6,(hl)		;1dc2	cb f6 	. . 
	ret			;1dc4	c9 	. 
l1dc5h:
	ld a,003h		;1dc5	3e 03 	> . 
	call sub_092bh		;1dc7	cd 2b 09 	. + . 
	jp c,l06dah		;1dca	da da 06 	. . . 
	ld hl,(0c196h)		;1dcd	2a 96 c1 	* . . 
	inc l			;1dd0	2c 	, 
	inc l			;1dd1	2c 	, 
	set 3,(hl)		;1dd2	cb de 	. . 
	inc l			;1dd4	2c 	, 
	inc l			;1dd5	2c 	, 
	ld (hl),d			;1dd6	72 	r 
	inc l			;1dd7	2c 	, 
	ld (hl),003h		;1dd8	36 03 	6 . 
	inc l			;1dda	2c 	, 
	inc l			;1ddb	2c 	, 
	ld (hl),e			;1ddc	73 	s 
	inc l			;1ddd	2c 	, 
	ld (hl),003h		;1dde	36 03 	6 . 
	inc l			;1de0	2c 	, 
	ld (hl),080h		;1de1	36 80 	6 . 
	ld a,06bh		;1de3	3e 6b 	> k 
	rst 30h			;1de5	f7 	. 
	ld b,004h		;1de6	06 04 	. . 
	ld a,020h		;1de8	3e 20 	>   
	call 022f1h		;1dea	cd f1 22 	. . " 
	ret			;1ded	c9 	. 
	call l2339h+2		;1dee	cd 3b 23 	. ; # 
	cp 030h		;1df1	fe 30 	. 0 
	jp c,05e48h		;1df3	da 48 5e 	. H ^ 
	ld hl,(0c196h)		;1df6	2a 96 c1 	* . . 
	inc l			;1df9	2c 	, 
	inc l			;1dfa	2c 	, 
	bit 5,(hl)		;1dfb	cb 6e 	. n 
	jr nz,l1e0eh		;1dfd	20 0f 	  . 
	ld a,(0c12fh)		;1dff	3a 2f c1 	: / . 
	bit 6,a		;1e02	cb 77 	. w 
	jr z,l1e0ah		;1e04	28 04 	( . 
	ld b,006h		;1e06	06 06 	. . 
	jr l1e0ch		;1e08	18 02 	. . 
l1e0ah:
	ld b,004h		;1e0a	06 04 	. . 
l1e0ch:
	rst 28h			;1e0c	ef 	. 
	ret			;1e0d	c9 	. 
l1e0eh:
	ld h,(ix+004h)		;1e0e	dd 66 04 	. f . 
	ld l,(ix+007h)		;1e11	dd 6e 07 	. n . 
	ld a,(0c12fh)		;1e14	3a 2f c1 	: / . 
	bit 6,a		;1e17	cb 77 	. w 
	jr z,l1e35h		;1e19	28 1a 	( . 
	ld a,03fh		;1e1b	3e 3f 	> ? 
	call sub_06e2h		;1e1d	cd e2 06 	. . . 
	ld a,097h		;1e20	3e 97 	> . 
	call 00a99h		;1e22	cd 99 0a 	. . . 
	ld hl,0c130h		;1e25	21 30 c1 	! 0 . 
	inc (hl)			;1e28	34 	4 
	ld hl,0c12fh		;1e29	21 2f c1 	! / . 
	ld a,(hl)			;1e2c	7e 	~ 
	add a,041h		;1e2d	c6 41 	. A 
	ld (hl),a			;1e2f	77 	w 
	ld b,006h		;1e30	06 06 	. . 
	jp 05e5ah		;1e32	c3 5a 5e 	. Z ^ 
l1e35h:
	ld a,00bh		;1e35	3e 0b 	> . 
	call sub_06e2h		;1e37	cd e2 06 	. . . 
	ld a,097h		;1e3a	3e 97 	> . 
	call 00a99h		;1e3c	cd 99 0a 	. . . 
	ld a,006h		;1e3f	3e 06 	> . 
	call 0615eh		;1e41	cd 5e 61 	. ^ a 
	ld b,004h		;1e44	06 04 	. . 
	jr l1e5ah		;1e46	18 12 	. . 
	ld a,(0c12fh)		;1e48	3a 2f c1 	: / . 
	bit 6,a		;1e4b	cb 77 	. w 
	jr nz,l1e53h		;1e4d	20 04 	  . 
	ld b,004h		;1e4f	06 04 	. . 
	jr l1e5ah		;1e51	18 07 	. . 
l1e53h:
	ld hl,0c12fh		;1e53	21 2f c1 	! / . 
	res 6,(hl)		;1e56	cb b6 	. . 
	ld b,006h		;1e58	06 06 	. . 
l1e5ah:
	call l24a9h		;1e5a	cd a9 24 	. . $ 
	ret			;1e5d	c9 	. 
	ld hl,0cc31h		;1e5e	21 31 cc 	! 1 . 
	ld de,0c121h		;1e61	11 21 c1 	. ! . 
	ld b,002h		;1e64	06 02 	. . 
	call 061a8h		;1e66	cd a8 61 	. . a 
	jr nc,l1e74h		;1e69	30 09 	0 . 
	ld a,(de)			;1e6b	1a 	. 
	add a,001h		;1e6c	c6 01 	. . 
	daa			;1e6e	27 	' 
	cp 010h		;1e6f	fe 10 	. . 
	jr nc,l1e7eh		;1e71	30 0b 	0 . 
	ld (de),a			;1e73	12 	. 
l1e74h:
	call 06187h		;1e74	cd 87 61 	. . a 
	call 0633dh		;1e77	cd 3d 63 	. = c 
	call 0618fh		;1e7a	cd 8f 61 	. . a 
	ret			;1e7d	c9 	. 
l1e7eh:
	call 06187h		;1e7e	cd 87 61 	. . a 
	call 06179h		;1e81	cd 79 61 	. y a 
	call 0633dh		;1e84	cd 3d 63 	. = c 
	call 0618fh		;1e87	cd 8f 61 	. . a 
	ret			;1e8a	c9 	. 
	ld hl,0cc3dh		;1e8b	21 3d cc 	! = . 
	bit 6,(hl)		;1e8e	cb 76 	. v 
	jp nz,05fa9h		;1e90	c2 a9 5f 	. . _ 
	set 6,(hl)		;1e93	cb f6 	. . 
	di			;1e95	f3 	. 
	call 00213h		;1e96	cd 13 02 	. . . 
	ei			;1e99	fb 	. 
	di			;1e9a	f3 	. 
	call sub_0acah		;1e9b	cd ca 0a 	. . . 
	ei			;1e9e	fb 	. 
	di			;1e9f	f3 	. 
	call sub_027ah		;1ea0	cd 7a 02 	. z . 
	ei			;1ea3	fb 	. 
	di			;1ea4	f3 	. 
	call l062ch+1		;1ea5	cd 2d 06 	. - . 
	ei			;1ea8	fb 	. 
	di			;1ea9	f3 	. 
	call 06271h		;1eaa	cd 71 62 	. q b 
	ei			;1ead	fb 	. 
	di			;1eae	f3 	. 
	call 062aah		;1eaf	cd aa 62 	. . b 
	ei			;1eb2	fb 	. 
	ld a,001h		;1eb3	3e 01 	> . 
	call 000a4h		;1eb5	cd a4 00 	. . . 
	di			;1eb8	f3 	. 
	ld hl,l0000h		;1eb9	21 00 00 	! . . 
	ld bc,l0020h		;1ebc	01 20 00 	.   . 
	xor a			;1ebf	af 	. 
	call sub_0202h		;1ec0	cd 02 02 	. . . 
	ei			;1ec3	fb 	. 
	ld a,001h		;1ec4	3e 01 	> . 
	call 000a4h		;1ec6	cd a4 00 	. . . 
	di			;1ec9	f3 	. 
	ld hl,l3800h		;1eca	21 00 38 	! . 8 
	ld bc,l0100h		;1ecd	01 00 01 	. . . 
	xor a			;1ed0	af 	. 
	call sub_0202h		;1ed1	cd 02 02 	. . . 
	ei			;1ed4	fb 	. 
	ld a,001h		;1ed5	3e 01 	> . 
	call 000a4h		;1ed7	cd a4 00 	. . . 
	di			;1eda	f3 	. 
	ld hl,03900h		;1edb	21 00 39 	! . 9 
	ld bc,l0100h		;1ede	01 00 01 	. . . 
	xor a			;1ee1	af 	. 
	call sub_0202h		;1ee2	cd 02 02 	. . . 
	ei			;1ee5	fb 	. 
	ld a,001h		;1ee6	3e 01 	> . 
	call 000a4h		;1ee8	cd a4 00 	. . . 
	di			;1eeb	f3 	. 
	ld hl,l3a00h		;1eec	21 00 3a 	! . : 
	ld bc,l0100h		;1eef	01 00 01 	. . . 
	xor a			;1ef2	af 	. 
	call sub_0202h		;1ef3	cd 02 02 	. . . 
	ei			;1ef6	fb 	. 
	ld a,001h		;1ef7	3e 01 	> . 
	call 000a4h		;1ef9	cd a4 00 	. . . 
	di			;1efc	f3 	. 
	ld hl,l3b00h		;1efd	21 00 3b 	! . ; 
	ld bc,l0100h		;1f00	01 00 01 	. . . 
	xor a			;1f03	af 	. 
	call sub_0202h		;1f04	cd 02 02 	. . . 
	ei			;1f07	fb 	. 
	ld a,001h		;1f08	3e 01 	> . 
	call 000a4h		;1f0a	cd a4 00 	. . . 
	di			;1f0d	f3 	. 
	ld hl,l3c00h		;1f0e	21 00 3c 	! . < 
	ld bc,l0100h		;1f11	01 00 01 	. . . 
	xor a			;1f14	af 	. 
	call sub_0202h		;1f15	cd 02 02 	. . . 
	ei			;1f18	fb 	. 
	ld a,001h		;1f19	3e 01 	> . 
	call 000a4h		;1f1b	cd a4 00 	. . . 
	di			;1f1e	f3 	. 
	ld hl,03d00h		;1f1f	21 00 3d 	! . = 
	ld bc,l0100h		;1f22	01 00 01 	. . . 
	xor a			;1f25	af 	. 
	call sub_0202h		;1f26	cd 02 02 	. . . 
	ei			;1f29	fb 	. 
	ld a,001h		;1f2a	3e 01 	> . 
	call 000a4h		;1f2c	cd a4 00 	. . . 
	di			;1f2f	f3 	. 
	ld hl,l3e00h		;1f30	21 00 3e 	! . > 
	ld bc,l0100h		;1f33	01 00 01 	. . . 
	xor a			;1f36	af 	. 
	call sub_0202h		;1f37	cd 02 02 	. . . 
	ei			;1f3a	fb 	. 
	ld a,001h		;1f3b	3e 01 	> . 
	call 000a4h		;1f3d	cd a4 00 	. . . 
	ld a,003h		;1f40	3e 03 	> . 
	call sub_0b13h		;1f42	cd 13 0b 	. . . 
	ld hl,09b6ah		;1f45	21 6a 9b 	! j . 
	ld de,l0020h		;1f48	11 20 00 	.   . 
	ex de,hl			;1f4b	eb 	. 
	ld c,004h		;1f4c	0e 04 	. . 
	push hl			;1f4e	e5 	. 
	ld a,(de)			;1f4f	1a 	. 
	or a			;1f50	b7 	. 
	jp z,05f7eh		;1f51	ca 7e 5f 	. ~ _ 
	inc a			;1f54	3c 	< 
	jp z,05f66h		;1f55	ca 66 5f 	. f _ 
	dec a			;1f58	3d 	= 
	di			;1f59	f3 	. 
	call 00413h		;1f5a	cd 13 04 	. . . 
	ei			;1f5d	fb 	. 
	inc hl			;1f5e	23 	# 
	inc hl			;1f5f	23 	# 
	inc hl			;1f60	23 	# 
	inc hl			;1f61	23 	# 
	inc de			;1f62	13 	. 
	jp 05f4fh		;1f63	c3 4f 5f 	. O _ 
	inc de			;1f66	13 	. 
	ld a,(de)			;1f67	1a 	. 
	di			;1f68	f3 	. 
	call 00413h		;1f69	cd 13 04 	. . . 
	ei			;1f6c	fb 	. 
	inc hl			;1f6d	23 	# 
	inc hl			;1f6e	23 	# 
	inc hl			;1f6f	23 	# 
	inc hl			;1f70	23 	# 
	di			;1f71	f3 	. 
	call 00413h		;1f72	cd 13 04 	. . . 
	ei			;1f75	fb 	. 
	inc hl			;1f76	23 	# 
	inc hl			;1f77	23 	# 
	inc hl			;1f78	23 	# 
	inc hl			;1f79	23 	# 
	inc de			;1f7a	13 	. 
	jp 05f4fh		;1f7b	c3 4f 5f 	. O _ 
	inc de			;1f7e	13 	. 
	ld a,(de)			;1f7f	1a 	. 
	inc de			;1f80	13 	. 
	or a			;1f81	b7 	. 
	jr z,l1f95h		;1f82	28 11 	( . 
	ld b,a			;1f84	47 	G 
	ld a,(de)			;1f85	1a 	. 
l1f86h:
	di			;1f86	f3 	. 
	call 00413h		;1f87	cd 13 04 	. . . 
	ei			;1f8a	fb 	. 
	inc hl			;1f8b	23 	# 
	inc hl			;1f8c	23 	# 
	inc hl			;1f8d	23 	# 
	inc hl			;1f8e	23 	# 
	djnz l1f86h		;1f8f	10 f5 	. . 
	inc de			;1f91	13 	. 
	jp 05f4fh		;1f92	c3 4f 5f 	. O _ 
l1f95h:
	pop hl			;1f95	e1 	. 
	inc hl			;1f96	23 	# 
	dec c			;1f97	0d 	. 
	jp nz,05f4eh		;1f98	c2 4e 5f 	. N _ 
	ex de,hl			;1f9b	eb 	. 
	call 00224h		;1f9c	cd 24 02 	. $ . 
	ld hl,0c198h		;1f9f	21 98 c1 	! . . 
	ld (hl),000h		;1fa2	36 00 	6 . 
	ld hl,0cc38h		;1fa4	21 38 cc 	! 8 . 
	ld (hl),0c0h		;1fa7	36 c0 	6 . 
	call 060a0h		;1fa9	cd a0 60 	. . ` 
	ld hl,0cc38h		;1fac	21 38 cc 	! 8 . 
	xor a			;1faf	af 	. 
	cp (hl)			;1fb0	be 	. 
	jr z,l1fb5h		;1fb1	28 02 	( . 
	dec (hl)			;1fb3	35 	5 
	ret			;1fb4	c9 	. 
l1fb5h:
	ld a,(0cc3dh)		;1fb5	3a 3d cc 	: = . 
	bit 0,a		;1fb8	cb 47 	. G 
	jr nz,l1fc0h		;1fba	20 04 	  . 
	call 05febh		;1fbc	cd eb 5f 	. . _ 
	ret			;1fbf	c9 	. 
l1fc0h:
	ld a,(0cc3dh)		;1fc0	3a 3d cc 	: = . 
	bit 1,a		;1fc3	cb 4f 	. O 
	jr nz,l1fd0h		;1fc5	20 09 	  . 
	ld hl,0cc3eh		;1fc7	21 3e cc 	! > . 
	ld (hl),004h		;1fca	36 04 	6 . 
	call 0601ah		;1fcc	cd 1a 60 	. . ` 
	ret			;1fcf	c9 	. 
l1fd0h:
	ld a,(0cc3dh)		;1fd0	3a 3d cc 	: = . 
	bit 2,a		;1fd3	cb 57 	. W 
	jr nz,l1fe0h		;1fd5	20 09 	  . 
	ld hl,0cc3eh		;1fd7	21 3e cc 	! > . 
	ld (hl),004h		;1fda	36 04 	6 . 
	call 0605bh		;1fdc	cd 5b 60 	. [ ` 
	ret			;1fdf	c9 	. 
l1fe0h:
	ld hl,0c12fh		;1fe0	21 2f c1 	! / . 
	ld (hl),000h		;1fe3	36 00 	6 . 
	ld hl,0c163h		;1fe5	21 63 c1 	! c . 
	set 7,(hl)		;1fe8	cb fe 	. . 
	ret			;1fea	c9 	. 
	ld hl,0cc36h		;1feb	21 36 cc 	! 6 . 
	xor a			;1fee	af 	. 
	cp (hl)			;1fef	be 	. 
	jr nz,l1ffdh		;1ff0	20 0b 	  . 
	ld hl,0cc3dh		;1ff2	21 3d cc 	! = . 
	set 0,(hl)		;1ff5	cb c6 	. . 
	ld hl,0cc38h		;1ff7	21 38 cc 	! 8 . 
	ld (hl),060h		;1ffa	36 60 	6 ` 
	ret			;1ffc	c9 	. 
l1ffdh:
	dec (hl)			;1ffd	35 	5 
	ld hl,0cc39h		;1ffe	21 39 cc 	! 9 . 
l2001h:
	ld a,(hl)			;2001	7e 	~ 
	add a,030h		;2002	c6 30 	. 0 
	daa			;2004	27 	' 
	ld (hl),a			;2005	77 	w 
	jr c,l200eh		;2006	38 06 	8 . 
	ld hl,0cc38h		;2008	21 38 cc 	! 8 . 
	ld (hl),006h		;200b	36 06 	6 . 
	ret			;200d	c9 	. 
l200eh:
	inc hl			;200e	23 	# 
	xor a			;200f	af 	. 
	ld a,(hl)			;2010	7e 	~ 
	inc a			;2011	3c 	< 
	daa			;2012	27 	' 
	ld (hl),a			;2013	77 	w 
	ld hl,0cc38h		;2014	21 38 cc 	! 8 . 
	ld (hl),006h		;2017	36 06 	6 . 
	ret			;2019	c9 	. 
	ld a,(0cc3dh)		;201a	3a 3d cc 	: = . 
	bit 3,a		;201d	cb 5f 	. _ 
	jr nz,l2039h		;201f	20 18 	  . 
	ld a,(0c12fh)		;2021	3a 2f c1 	: / . 
	bit 0,a		;2024	cb 47 	. G 
	jr z,l2034h		;2026	28 0c 	( . 
	ld hl,0cc39h		;2028	21 39 cc 	! 9 . 
	ld de,0cc3bh		;202b	11 3b cc 	. ; . 
	ld a,(hl)			;202e	7e 	~ 
	ld (de),a			;202f	12 	. 
	inc hl			;2030	23 	# 
	inc de			;2031	13 	. 
	ld a,(hl)			;2032	7e 	~ 
	ld (de),a			;2033	12 	. 
l2034h:
	ld hl,0cc3dh		;2034	21 3d cc 	! = . 
	set 3,(hl)		;2037	cb de 	. . 
l2039h:
	ld de,(0cc39h)		;2039	ed 5b 39 cc 	. [ 9 . 
	ld a,e			;203d	7b 	{ 
	or a			;203e	b7 	. 
	jr nz,l2050h		;203f	20 0f 	  . 
	ld a,d			;2041	7a 	z 
	or a			;2042	b7 	. 
	jr nz,l2050h		;2043	20 0b 	  . 
	ld hl,0cc3dh		;2045	21 3d cc 	! = . 
	set 1,(hl)		;2048	cb ce 	. . 
	ld hl,0cc38h		;204a	21 38 cc 	! 8 . 
	ld (hl),060h		;204d	36 60 	6 ` 
	ret			;204f	c9 	. 
l2050h:
	call 062d7h		;2050	cd d7 62 	. . b 
	ld (0cc39h),de		;2053	ed 53 39 cc 	. S 9 . 
	call 062f0h		;2057	cd f0 62 	. . b 
	ret			;205a	c9 	. 
	ld a,(0c12fh)		;205b	3a 2f c1 	: / . 
	bit 0,a		;205e	cb 47 	. G 
	jr nz,l206dh		;2060	20 0b 	  . 
	ld hl,0cc3dh		;2062	21 3d cc 	! = . 
	set 2,(hl)		;2065	cb d6 	. . 
	ld hl,0cc38h		;2067	21 38 cc 	! 8 . 
	ld (hl),0ffh		;206a	36 ff 	6 . 
	ret			;206c	c9 	. 
l206dh:
	ld hl,0cc3dh		;206d	21 3d cc 	! = . 
	bit 4,(hl)		;2070	cb 66 	. f 
	jr nz,l207eh		;2072	20 0a 	  . 
	set 7,(hl)		;2074	cb fe 	. . 
	set 4,(hl)		;2076	cb e6 	. . 
	ld hl,0cc38h		;2078	21 38 cc 	! 8 . 
	ld (hl),060h		;207b	36 60 	6 ` 
	ret			;207d	c9 	. 
l207eh:
	ld de,(0cc3bh)		;207e	ed 5b 3b cc 	. [ ; . 
	ld a,e			;2082	7b 	{ 
	or a			;2083	b7 	. 
	jr nz,l2095h		;2084	20 0f 	  . 
	ld a,d			;2086	7a 	z 
	or a			;2087	b7 	. 
	jr nz,l2095h		;2088	20 0b 	  . 
	ld hl,0cc3dh		;208a	21 3d cc 	! = . 
	set 2,(hl)		;208d	cb d6 	. . 
	ld hl,0cc38h		;208f	21 38 cc 	! 8 . 
	ld (hl),0a0h		;2092	36 a0 	6 . 
	ret			;2094	c9 	. 
l2095h:
	call 062d7h		;2095	cd d7 62 	. . b 
	ld (0cc3bh),de		;2098	ed 53 3b cc 	. S ; . 
	call 062f0h		;209c	cd f0 62 	. . b 
	ret			;209f	c9 	. 
	call 0632eh		;20a0	cd 2e 63 	. . c 
	ld de,l3910h		;20a3	11 10 39 	. . 9 
	call 061ffh		;20a6	cd ff 61 	. . a 
	ld hl,03924h		;20a9	21 24 39 	! $ 9 
	ld de,0c113h		;20ac	11 13 c1 	. . . 
	ld b,003h		;20af	06 03 	. . 
	call 061b2h		;20b1	cd b2 61 	. . a 
	ld de,l3990h		;20b4	11 90 39 	. . 9 
	call 06211h		;20b7	cd 11 62 	. . b 
	ld a,(0c114h)		;20ba	3a 14 c1 	: . . 
	bit 7,a		;20bd	cb 7f 	.  
	jr nz,l20ceh		;20bf	20 0d 	  . 
	ld hl,l39a4h		;20c1	21 a4 39 	! . 9 
	ld de,0c123h		;20c4	11 23 c1 	. # . 
	ld b,003h		;20c7	06 03 	. . 
	call 061b2h		;20c9	cd b2 61 	. . a 
	jr l2109h		;20cc	18 3b 	. ; 
l20ceh:
	ld de,l3a10h		;20ce	11 10 3a 	. . : 
	call 06225h		;20d1	cd 25 62 	. % b 
	ld a,(0c114h)		;20d4	3a 14 c1 	: . . 
	bit 6,a		;20d7	cb 77 	. w 
	jr nz,l20f3h		;20d9	20 18 	  . 
	ld hl,l39a4h		;20db	21 a4 39 	! . 9 
	ld de,0c123h		;20de	11 23 c1 	. # . 
	ld b,003h		;20e1	06 03 	. . 
	call 061b2h		;20e3	cd b2 61 	. . a 
	ld hl,03a24h		;20e6	21 24 3a 	! $ : 
	ld de,0c14fh		;20e9	11 4f c1 	. O . 
	ld b,003h		;20ec	06 03 	. . 
	call 061b2h		;20ee	cd b2 61 	. . a 
	jr l2109h		;20f1	18 16 	. . 
l20f3h:
	ld hl,l39a4h		;20f3	21 a4 39 	! . 9 
	ld de,0c139h		;20f6	11 39 c1 	. 9 . 
	ld b,003h		;20f9	06 03 	. . 
	call 061b2h		;20fb	cd b2 61 	. . a 
	ld hl,03a24h		;20fe	21 24 3a 	! $ : 
	ld de,0c123h		;2101	11 23 c1 	. # . 
	ld b,003h		;2104	06 03 	. . 
	call 061b2h		;2106	cd b2 61 	. . a 
l2109h:
	call 0624ah		;2109	cd 4a 62 	. J b 
	ld de,l3b22h		;210c	11 22 3b 	. " ; 
	call 06239h		;210f	cd 39 62 	. 9 b 
	ld hl,l3b9ch		;2112	21 9c 3b 	! . ; 
	ld de,0cc3ah		;2115	11 3a cc 	. : . 
	ld b,002h		;2118	06 02 	. . 
	call 061b2h		;211a	cd b2 61 	. . a 
	call 0625eh		;211d	cd 5e 62 	. ^ b 
	ld de,03c22h		;2120	11 22 3c 	. " < 
	call 06239h		;2123	cd 39 62 	. 9 b 
	ld a,(0cc3dh)		;2126	3a 3d cc 	: = . 
	bit 7,a		;2129	cb 7f 	.  
	jr z,l2150h		;212b	28 23 	( # 
	ld hl,0cc3dh		;212d	21 3d cc 	! = . 
	bit 5,(hl)		;2130	cb 6e 	. n 
	jr nz,l2144h		;2132	20 10 	  . 
	set 5,(hl)		;2134	cb ee 	. . 
	ld a,099h		;2136	3e 99 	> . 
	call 00a99h		;2138	cd 99 0a 	. . . 
	ld ix,0c220h		;213b	dd 21 20 c2 	. !   . 
	ld b,006h		;213f	06 06 	. . 
	call 0057fh		;2141	cd 7f 05 	.  . 
l2144h:
	ld hl,03c9ch		;2144	21 9c 3c 	! . < 
	ld de,0cc3ch		;2147	11 3c cc 	. < . 
	ld b,002h		;214a	06 02 	. . 
	call 061b2h		;214c	cd b2 61 	. . a 
	ret			;214f	c9 	. 
l2150h:
	ld a,(0c12fh)		;2150	3a 2f c1 	: / . 
	bit 0,a		;2153	cb 47 	. G 
	ret z			;2155	c8 	. 
	ld ix,0c220h		;2156	dd 21 20 c2 	. !   . 
	ld b,006h		;215a	06 06 	. . 
	rst 28h			;215c	ef 	. 
	ret			;215d	c9 	. 
	ld b,000h		;215e	06 00 	. . 
	ld hl,0635fh		;2160	21 5f 63 	! _ c 
	add a,a			;2163	87 	. 
	ld c,a			;2164	4f 	O 
	add hl,bc			;2165	09 	. 
	ld de,0cc31h		;2166	11 31 cc 	. 1 . 
	ld b,002h		;2169	06 02 	. . 
	call 061a8h		;216b	cd a8 61 	. . a 
	ret			;216e	c9 	. 
	ld hl,0c12dh		;216f	21 2d c1 	! - . 
	inc (hl)			;2172	34 	4 
	ld a,09ch		;2173	3e 9c 	> . 
	call 00a99h		;2175	cd 99 0a 	. . . 
	ret			;2178	c9 	. 
	ld hl,0c123h		;2179	21 23 c1 	! # . 
	ld (hl),010h		;217c	36 10 	6 . 
	dec hl			;217e	2b 	+ 
	ld b,002h		;217f	06 02 	. . 
l2181h:
	ld (hl),000h		;2181	36 00 	6 . 
	dec hl			;2183	2b 	+ 
	djnz l2181h		;2184	10 fb 	. . 
	ret			;2186	c9 	. 
	ld hl,0cc31h		;2187	21 31 cc 	! 1 . 
	xor a			;218a	af 	. 
	ld (hl),a			;218b	77 	w 
	inc hl			;218c	23 	# 
	ld (hl),a			;218d	77 	w 
	ret			;218e	c9 	. 
	ld hl,0c113h		;218f	21 13 c1 	! . . 
	ld de,0c123h		;2192	11 23 c1 	. # . 
	ld b,003h		;2195	06 03 	. . 
l2197h:
	ld a,(de)			;2197	1a 	. 
	cp (hl)			;2198	be 	. 
	ret c			;2199	d8 	. 
	jr nz,l21a1h		;219a	20 05 	  . 
	dec hl			;219c	2b 	+ 
	dec de			;219d	1b 	. 
	djnz l2197h		;219e	10 f7 	. . 
	ret			;21a0	c9 	. 
l21a1h:
	ld (hl),a			;21a1	77 	w 
	dec hl			;21a2	2b 	+ 
	dec de			;21a3	1b 	. 
	ld a,(de)			;21a4	1a 	. 
	djnz l21a1h		;21a5	10 fa 	. . 
	ret			;21a7	c9 	. 
	xor a			;21a8	af 	. 
l21a9h:
	ld a,(de)			;21a9	1a 	. 
	adc a,(hl)			;21aa	8e 	. 
	daa			;21ab	27 	' 
	ld (de),a			;21ac	12 	. 
	inc hl			;21ad	23 	# 
	inc de			;21ae	13 	. 
	djnz l21a9h		;21af	10 f8 	. . 
	ret			;21b1	c9 	. 
	exx			;21b2	d9 	. 
	ld c,000h		;21b3	0e 00 	. . 
	ld hl,0cc33h		;21b5	21 33 cc 	! 3 . 
	ld (hl),000h		;21b8	36 00 	6 . 
	exx			;21ba	d9 	. 
l21bbh:
	ld a,(de)			;21bb	1a 	. 
	exx			;21bc	d9 	. 
	ld (hl),a			;21bd	77 	w 
	xor a			;21be	af 	. 
	rrd		;21bf	ed 67 	. g 
	ld e,000h		;21c1	1e 00 	. . 
	ld e,a			;21c3	5f 	_ 
	ld a,(hl)			;21c4	7e 	~ 
	or a			;21c5	b7 	. 
	jr nz,l21d0h		;21c6	20 08 	  . 
	cp c			;21c8	b9 	. 
	jr c,l21d0h		;21c9	38 05 	8 . 
	exx			;21cb	d9 	. 
	ld a,000h		;21cc	3e 00 	> . 
	jr l21d4h		;21ce	18 04 	. . 
l21d0h:
	inc c			;21d0	0c 	. 
	exx			;21d1	d9 	. 
	add a,001h		;21d2	c6 01 	. . 
l21d4h:
	di			;21d4	f3 	. 
	call sub_047ch		;21d5	cd 7c 04 	. | . 
	ei			;21d8	fb 	. 
	inc hl			;21d9	23 	# 
	inc hl			;21da	23 	# 
	exx			;21db	d9 	. 
	xor a			;21dc	af 	. 
	ld a,e			;21dd	7b 	{ 
	or a			;21de	b7 	. 
	jr nz,l21e9h		;21df	20 08 	  . 
	cp c			;21e1	b9 	. 
	jr c,l21e9h		;21e2	38 05 	8 . 
	exx			;21e4	d9 	. 
	ld a,000h		;21e5	3e 00 	> . 
	jr l21edh		;21e7	18 04 	. . 
l21e9h:
	inc c			;21e9	0c 	. 
	exx			;21ea	d9 	. 
	add a,001h		;21eb	c6 01 	. . 
l21edh:
	di			;21ed	f3 	. 
	call sub_047ch		;21ee	cd 7c 04 	. | . 
	ei			;21f1	fb 	. 
	inc hl			;21f2	23 	# 
	inc hl			;21f3	23 	# 
	dec de			;21f4	1b 	. 
	djnz l21bbh		;21f5	10 c4 	. . 
	ld a,001h		;21f7	3e 01 	> . 
	di			;21f9	f3 	. 
	call sub_047ch		;21fa	cd 7c 04 	. | . 
	ei			;21fd	fb 	. 
	ret			;21fe	c9 	. 
	ld hl,0620bh		;21ff	21 0b 62 	! . b 
	ld bc,l0006h		;2202	01 06 00 	. . . 
	di			;2205	f3 	. 
	call sub_0486h		;2206	cd 86 04 	. . . 
	ei			;2209	fb 	. 
	ret			;220a	c9 	. 
	inc l			;220b	2c 	, 
	dec c			;220c	0d 	. 
	ld c,00fh		;220d	0e 0f 	. . 
	dec c			;220f	0d 	. 
	inc l			;2210	2c 	, 
	ld hl,0621dh		;2211	21 1d 62 	! . b 
	ld bc,l0006h+2		;2214	01 08 00 	. . . 
	di			;2217	f3 	. 
	call sub_0486h		;2218	cd 86 04 	. . . 
	ei			;221b	fb 	. 
	ret			;221c	c9 	. 
	inc c			;221d	0c 	. 
	ld a,(de)			;221e	1a 	. 
	dec d			;221f	15 	. 
	rla			;2220	17 	. 
	inc de			;2221	13 	. 
	jr nz,l2224h		;2222	20 00 	  . 
l2224h:
	ld (bc),a			;2224	02 	. 
	ld hl,06231h		;2225	21 31 62 	! 1 b 
	ld bc,l0006h+2		;2228	01 08 00 	. . . 
	di			;222b	f3 	. 
	call sub_0486h		;222c	cd 86 04 	. . . 
	ei			;222f	fb 	. 
	ret			;2230	c9 	. 
	inc c			;2231	0c 	. 
	ld a,(de)			;2232	1a 	. 
	dec d			;2233	15 	. 
	rla			;2234	17 	. 
	inc de			;2235	13 	. 
	jr nz,l2238h		;2236	20 00 	  . 
l2238h:
	inc bc			;2238	03 	. 
	ld hl,06245h		;2239	21 45 62 	! E b 
	ld bc,l0002h+3		;223c	01 05 00 	. . . 
	di			;223f	f3 	. 
	call sub_0486h		;2240	cd 86 04 	. . . 
	ei			;2243	fb 	. 
	ret			;2244	c9 	. 
	djnz l2264h		;2245	10 1d 	. . 
	inc e			;2247	1c 	. 
	dec bc			;2248	0b 	. 
	ld hl,01611h		;2249	21 11 16 	! . . 
	dec sp			;224c	3b 	; 
	ld hl,06259h		;224d	21 59 62 	! Y b 
	ld bc,l0002h+3		;2250	01 05 00 	. . . 
	di			;2253	f3 	. 
	call sub_0486h		;2254	cd 86 04 	. . . 
sub_2257h:
	ei			;2257	fb 	. 
	ret			;2258	c9 	. 
	jr nz,$+31		;2259	20 1d 	  . 
	dec bc			;225b	0b 	. 
	inc e			;225c	1c 	. 
	ld (de),a			;225d	12 	. 
	ld de,03c18h		;225e	11 18 3c 	. . < 
	ld hl,0626dh		;2261	21 6d 62 	! m b 
l2264h:
	ld bc,l0002h+2		;2264	01 04 00 	. . . 
	di			;2267	f3 	. 
	call sub_0486h		;2268	cd 86 04 	. . . 
	ei			;226b	fb 	. 
	ret			;226c	c9 	. 
	ld (de),a			;226d	12 	. 
	dec e			;226e	1d 	. 
	ld a,(de)			;226f	1a 	. 
	ld a,(de)			;2270	1a 	. 
	ld hl,009a1h		;2271	21 a1 09 	! . . 
	ld de,0c220h		;2274	11 20 c2 	.   . 
	ld a,080h		;2277	3e 80 	> . 
	ld b,006h		;2279	06 06 	. . 
	call 00971h		;227b	cd 71 09 	. q . 
	ld hl,0c224h		;227e	21 24 c2 	! $ . 
	ld (hl),024h		;2281	36 24 	6 $ 
	ld hl,0c227h		;2283	21 27 c2 	! ' . 
	ld (hl),082h		;2286	36 82 	6 . 
l2288h:
	ld a,004h		;2288	3e 04 	> . 
	call sub_0b13h		;228a	cd 13 0b 	. . . 
	ld hl,0b32dh		;228d	21 2d b3 	! - . 
	ld de,02000h		;2290	11 00 20 	. .   
	ld bc,000c0h		;2293	01 c0 00 	. . . 
	di			;2296	f3 	. 
	call sub_02adh		;2297	cd ad 02 	. . . 
	ei			;229a	fb 	. 
	ld hl,0c22ch		;229b	21 2c c2 	! , . 
	ld de,l0020h		;229e	11 20 00 	.   . 
	ld b,006h		;22a1	06 06 	. . 
	xor a			;22a3	af 	. 
l22a4h:
	ld (hl),a			;22a4	77 	w 
	add hl,de			;22a5	19 	. 
sub_22a6h:
	inc a			;22a6	3c 	< 
	djnz l22a4h		;22a7	10 fb 	. . 
	ret			;22a9	c9 	. 
	ld hl,l09e9h		;22aa	21 e9 09 	! . . 
	ld de,0c4a0h		;22ad	11 a0 c4 	. . . 
	ld a,094h		;22b0	3e 94 	> . 
	ld b,008h		;22b2	06 08 	. . 
	call 00971h		;22b4	cd 71 09 	. q . 
	ld hl,0c4a4h		;22b7	21 a4 c4 	! . . 
	ld (hl),06ah		;22ba	36 6a 	6 j 
	ld hl,0c4a7h		;22bc	21 a7 c4 	! . . 
	ld (hl),082h		;22bf	36 82 	6 . 
	push af			;22c1	f5 	. 
	ld a,004h		;22c2	3e 04 	> . 
	call sub_0b13h		;22c4	cd 13 0b 	. . . 
sub_22c7h:
	pop af			;22c7	f1 	. 
	ld hl,0bf54h		;22c8	21 54 bf 	! T . 
	ld de,l2300h		;22cb	11 00 23 	. . # 
	ld bc,l0080h		;22ce	01 80 00 	. . . 
	di			;22d1	f3 	. 
	call sub_02adh		;22d2	cd ad 02 	. . . 
	ei			;22d5	fb 	. 
	ret			;22d6	c9 	. 
	xor a			;22d7	af 	. 
	ld a,096h		;22d8	3e 96 	> . 
	add a,e			;22da	83 	. 
	daa			;22db	27 	' 
	ld e,a			;22dc	5f 	_ 
	ret c			;22dd	d8 	. 
	xor a			;22de	af 	. 
	ld a,d			;22df	7a 	z 
	or a			;22e0	b7 	. 
	jr z,l22e5h		;22e1	28 02 	( . 
	dec d			;22e3	15 	. 
	ret			;22e4	c9 	. 
l22e5h:
	xor a			;22e5	af 	. 
	ld a,e			;22e6	7b 	{ 
	sub 096h		;22e7	d6 96 	. . 
	ld hl,0cc3eh		;22e9	21 3e cc 	! > . 
	ld (hl),a			;22ec	77 	w 
	xor a			;22ed	af 	. 
	ld e,a			;22ee	5f 	_ 
	ret			;22ef	c9 	. 
	ld hl,0c121h		;22f0	21 21 c1 	! ! . 
	xor a			;22f3	af 	. 
sub_22f4h:
	ld a,(0cc3eh)		;22f4	3a 3e cc 	: > . 
	add a,(hl)			;22f7	86 	. 
	daa			;22f8	27 	' 
	ld (hl),a			;22f9	77 	w 
	jr nc,l230eh		;22fa	30 12 	0 . 
	xor a			;22fc	af 	. 
	inc hl			;22fd	23 	# 
	ld a,(hl)			;22fe	7e 	~ 
	inc a			;22ff	3c 	< 
l2300h:
	daa			;2300	27 	' 
sub_2301h:
	ld (hl),a			;2301	77 	w 
	jr nc,l230eh		;2302	30 0a 	0 . 
	xor a			;2304	af 	. 
	inc hl			;2305	23 	# 
	ld a,(hl)			;2306	7e 	~ 
	inc a			;2307	3c 	< 
	daa			;2308	27 	' 
	cp 010h		;2309	fe 10 	. . 
	jr nc,l2324h		;230b	30 17 	0 . 
	ld (hl),a			;230d	77 	w 
l230eh:
	call 0633dh		;230e	cd 3d 63 	. = c 
	call 0618fh		;2311	cd 8f 61 	. . a 
	ld a,006h		;2314	3e 06 	> . 
	ld hl,0c198h		;2316	21 98 c1 	! . . 
	inc (hl)			;2319	34 	4 
	cp (hl)			;231a	be 	. 
	ret nc			;231b	d0 	. 
	ld (hl),000h		;231c	36 00 	6 . 
	ld a,098h		;231e	3e 98 	> . 
	call 00a99h		;2320	cd 99 0a 	. . . 
	ret			;2323	c9 	. 
l2324h:
	call 06179h		;2324	cd 79 61 	. y a 
	call 0633dh		;2327	cd 3d 63 	. = c 
	call 0618fh		;232a	cd 8f 61 	. . a 
	ret			;232d	c9 	. 
	ld hl,0cc36h		;232e	21 36 cc 	! 6 . 
	ld a,(hl)			;2331	7e 	~ 
	or a			;2332	b7 	. 
	jr z,l2339h		;2333	28 04 	( . 
	call 063e5h		;2335	cd e5 63 	. . c 
	ret			;2338	c9 	. 
l2339h:
	call 063e9h		;2339	cd e9 63 	. . c 
	ret			;233c	c9 	. 
	ld a,(0c12eh)		;233d	3a 2e c1 	: . . 
	cp 006h		;2340	fe 06 	. . 
	ret nc			;2342	d0 	. 
	ld hl,0636fh		;2343	21 6f 63 	! o c 
	ld e,a			;2346	5f 	_ 
	ld d,000h		;2347	16 00 	. . 
	add hl,de			;2349	19 	. 
	inc hl			;234a	23 	# 
sub_234bh:
	ld de,0c123h		;234b	11 23 c1 	. # . 
	ld a,(de)			;234e	1a 	. 
	cp (hl)			;234f	be 	. 
	ret c			;2350	d8 	. 
	dec de			;2351	1b 	. 
	dec hl			;2352	2b 	+ 
	ld a,(de)			;2353	1a 	. 
	cp (hl)			;2354	be 	. 
	ret c			;2355	d8 	. 
	ld hl,0c12eh		;2356	21 2e c1 	! . . 
	inc (hl)			;2359	34 	4 
	inc (hl)			;235a	34 	4 
	call 0616fh		;235b	cd 6f 61 	. o a 
	ret			;235e	c9 	. 
	nop			;235f	00 	. 
	nop			;2360	00 	. 
	ld bc,l0200h		;2361	01 00 02 	. . . 
	nop			;2364	00 	. 
	dec b			;2365	05 	. 
	nop			;2366	00 	. 
	djnz l2369h		;2367	10 00 	. . 
l2369h:
	jr nz,l236bh		;2369	20 00 	  . 
l236bh:
	ld d,b			;236b	50 	P 
	nop			;236c	00 	. 
	nop			;236d	00 	. 
	ld bc,00030h		;236e	01 30 00 	. 0 . 
	nop			;2371	00 	. 
	ld bc,l0170h		;2372	01 70 01 	. p . 
	ld hl,0cc34h		;2375	21 34 cc 	! 4 . 
	bit 7,(hl)		;2378	cb 7e 	. ~ 
	ret nz			;237a	c0 	. 
	ld hl,0cc30h		;237b	21 30 cc 	! 0 . 
	bit 7,(hl)		;237e	cb 7e 	. ~ 
l2380h:
	ret nz			;2380	c0 	. 
	ld a,(0c16bh)		;2381	3a 6b c1 	: k . 
	and 020h		;2384	e6 20 	.   
	ret nz			;2386	c0 	. 
	ld a,(0cc35h)		;2387	3a 35 cc 	: 5 . 
	or a			;238a	b7 	. 
	jr nz,l23cbh		;238b	20 3e 	  > 
	ld hl,0cc36h		;238d	21 36 cc 	! 6 . 
	ld (hl),00ch		;2390	36 0c 	6 . 
	ld hl,0cc35h		;2392	21 35 cc 	! 5 . 
	ld (hl),0ffh		;2395	36 ff 	6 . 
	ld hl,l09e9h		;2397	21 e9 09 	! . . 
	ld de,0c4a0h		;239a	11 a0 c4 	. . . 
	ld a,094h		;239d	3e 94 	> . 
	ld b,008h		;239f	06 08 	. . 
	call 00971h		;23a1	cd 71 09 	. q . 
	push af			;23a4	f5 	. 
	ld a,004h		;23a5	3e 04 	> . 
	call sub_0b13h		;23a7	cd 13 0b 	. . . 
	pop af			;23aa	f1 	. 
	ld hl,0bf54h		;23ab	21 54 bf 	! T . 
	ld de,l2300h		;23ae	11 00 23 	. . # 
	ld bc,l0080h		;23b1	01 80 00 	. . . 
	di			;23b4	f3 	. 
	call sub_046ch		;23b5	cd 6c 04 	. l . 
	ei			;23b8	fb 	. 
	ld hl,0c4a2h		;23b9	21 a2 c4 	! . . 
	set 6,(hl)		;23bc	cb f6 	. . 
	ld hl,0c4a4h		;23be	21 a4 c4 	! . . 
	ld (hl),06ah		;23c1	36 6a 	6 j 
	ld hl,0c4a7h		;23c3	21 a7 c4 	! . . 
	ld (hl),082h		;23c6	36 82 	6 . 
	jp 063e9h		;23c8	c3 e9 63 	. . c 
l23cbh:
	ld hl,0cc35h		;23cb	21 35 cc 	! 5 . 
	dec (hl)			;23ce	35 	5 
	ld a,(hl)			;23cf	7e 	~ 
	or a			;23d0	b7 	. 
	ret nz			;23d1	c0 	. 
	ld (hl),0ffh		;23d2	36 ff 	6 . 
	ld hl,0cc36h		;23d4	21 36 cc 	! 6 . 
	dec (hl)			;23d7	35 	5 
	ld a,(hl)			;23d8	7e 	~ 
	or a			;23d9	b7 	. 
	jp nz,063e5h		;23da	c2 e5 63 	. . c 
	ld a,001h		;23dd	3e 01 	> . 
	ld (0cc37h),a		;23df	32 37 cc 	2 7 . 
	jp 063e9h		;23e2	c3 e9 63 	. . c 
	xor a			;23e5	af 	. 
	ld (0cc37h),a		;23e6	32 37 cc 	2 7 . 
	ld bc,00800h		;23e9	01 00 08 	. . . 
	ld hl,0c4ach		;23ec	21 ac c4 	! . . 
l23efh:
	call 0640eh		;23ef	cd 0e 64 	. . d 
	ld (hl),a			;23f2	77 	w 
	ld de,l0020h		;23f3	11 20 00 	.   . 
	add hl,de			;23f6	19 	. 
	djnz l23efh		;23f7	10 f6 	. . 
	ld ix,0c4a0h		;23f9	dd 21 a0 c4 	. ! . . 
	ld b,008h		;23fd	06 08 	. . 
	call 00028h		;23ff	cd 28 00 	. ( . 
	ld hl,0cc36h		;2402	21 36 cc 	! 6 . 
	ld a,(hl)			;2405	7e 	~ 
	or a			;2406	b7 	. 
	ret nz			;2407	c0 	. 
	ld hl,0cc34h		;2408	21 34 cc 	! 4 . 
	set 7,(hl)		;240b	cb fe 	. . 
	ret			;240d	c9 	. 
	ld a,(0cc36h)		;240e	3a 36 cc 	: 6 . 
	or a			;2411	b7 	. 
	rra			;2412	1f 	. 
	ld d,a			;2413	57 	W 
	ld a,(0cc37h)		;2414	3a 37 cc 	: 7 . 
	bit 0,a		;2417	cb 47 	. G 
	jr nz,l247ah		;2419	20 5f 	  _ 
	bit 1,a		;241b	cb 4f 	. O 
	jr nz,l2463h		;241d	20 44 	  D 
	ld a,d			;241f	7a 	z 
	jr nc,l2433h		;2420	30 11 	0 . 
	cp 002h		;2422	fe 02 	. . 
	jr c,l242eh		;2424	38 08 	8 . 
	ld a,008h		;2426	3e 08 	> . 
	ld (0cc37h),a		;2428	32 37 cc 	2 7 . 
	jp 06433h		;242b	c3 33 64 	. 3 d 
l242eh:
	ld a,004h		;242e	3e 04 	> . 
	ld (0cc37h),a		;2430	32 37 cc 	2 7 . 
l2433h:
	ld a,d			;2433	7a 	z 
	or a			;2434	b7 	. 
	jr z,l247dh		;2435	28 46 	( F 
	cp 002h		;2437	fe 02 	. . 
	jr c,l243dh		;2439	38 02 	8 . 
	ld a,002h		;243b	3e 02 	> . 
l243dh:
	inc c			;243d	0c 	. 
	cp c			;243e	b9 	. 
	jr c,l2444h		;243f	38 03 	8 . 
	ld a,018h		;2441	3e 18 	> . 
	ret			;2443	c9 	. 
l2444h:
	ld a,(0cc37h)		;2444	3a 37 cc 	: 7 . 
	bit 2,a		;2447	cb 57 	. W 
	jr nz,l247dh		;2449	20 32 	  2 
	ld a,d			;244b	7a 	z 
	cp 003h		;244c	fe 03 	. . 
	jr c,l246eh		;244e	38 1e 	8 . 
	ld a,(0cc37h)		;2450	3a 37 cc 	: 7 . 
	bit 3,a		;2453	cb 5f 	. _ 
	jr z,l245ch		;2455	28 05 	( . 
	ld a,00ah		;2457	3e 0a 	> . 
	jp 0645eh		;2459	c3 5e 64 	. ^ d 
l245ch:
	ld a,002h		;245c	3e 02 	> . 
	ld (0cc37h),a		;245e	32 37 cc 	2 7 . 
	ld c,000h		;2461	0e 00 	. . 
l2463h:
	ld a,d			;2463	7a 	z 
	or a			;2464	b7 	. 
	sub 002h		;2465	d6 02 	. . 
	inc c			;2467	0c 	. 
	cp c			;2468	b9 	. 
	jr c,l246eh		;2469	38 03 	8 . 
	ld a,01ah		;246b	3e 1a 	> . 
	ret			;246d	c9 	. 
l246eh:
	ld a,(0cc37h)		;246e	3a 37 cc 	: 7 . 
	bit 3,a		;2471	cb 5f 	. _ 
	jr nz,l2485h		;2473	20 10 	  . 
	ld a,001h		;2475	3e 01 	> . 
	ld (0cc37h),a		;2477	32 37 cc 	2 7 . 
l247ah:
	ld a,0ffh		;247a	3e ff 	> . 
	ret			;247c	c9 	. 
l247dh:
	ld a,001h		;247d	3e 01 	> . 
	ld (0cc37h),a		;247f	32 37 cc 	2 7 . 
	ld a,019h		;2482	3e 19 	> . 
	ret			;2484	c9 	. 
l2485h:
	ld a,001h		;2485	3e 01 	> . 
	ld (0cc37h),a		;2487	32 37 cc 	2 7 . 
	ld a,01bh		;248a	3e 1b 	> . 
	ret			;248c	c9 	. 
	ld hl,0cc35h		;248d	21 35 cc 	! 5 . 
	ld (hl),0ffh		;2490	36 ff 	6 . 
	ld hl,0cc36h		;2492	21 36 cc 	! 6 . 
	add a,(hl)			;2495	86 	. 
	ld (hl),a			;2496	77 	w 
	cp 010h		;2497	fe 10 	. . 
	jp c,063e5h		;2499	da e5 63 	. . c 
	ld (hl),010h		;249c	36 10 	6 . 
	jp 063e5h		;249e	c3 e5 63 	. . c 
	ld hl,0cc35h		;24a1	21 35 cc 	! 5 . 
	ld (hl),0ffh		;24a4	36 ff 	6 . 
	ld hl,0cc36h		;24a6	21 36 cc 	! 6 . 
l24a9h:
	ld c,a			;24a9	4f 	O 
	ld a,(hl)			;24aa	7e 	~ 
	sub c			;24ab	91 	. 
	jr c,l24b5h		;24ac	38 07 	8 . 
	or a			;24ae	b7 	. 
	jr z,l24b5h		;24af	28 04 	( . 
l24b1h:
	ld (hl),a			;24b1	77 	w 
	jp 063e5h		;24b2	c3 e5 63 	. . c 
l24b5h:
	ld (hl),000h		;24b5	36 00 	6 . 
	ld a,001h		;24b7	3e 01 	> . 
	ld (0cc37h),a		;24b9	32 37 cc 	2 7 . 
	jp 063e9h		;24bc	c3 e9 63 	. . c 
	ld a,040h		;24bf	3e 40 	> @ 
	ld (0c198h),a		;24c1	32 98 c1 	2 . . 
	ld a,003h		;24c4	3e 03 	> . 
	call sub_092bh		;24c6	cd 2b 09 	. + . 
	jp c,l06dah		;24c9	da da 06 	. . . 
	ld e,0d0h		;24cc	1e d0 	. . 
	ld bc,064dfh		;24ce	01 df 64 	. . d 
	call 0225fh		;24d1	cd 5f 22 	. _ " 
	ld a,053h		;24d4	3e 53 	> S 
	rst 30h			;24d6	f7 	. 
	ld a,080h		;24d7	3e 80 	> . 
	ld b,004h		;24d9	06 04 	. . 
	call 022f1h		;24db	cd f1 22 	. . " 
	ret			;24de	c9 	. 
	inc b			;24df	04 	. 
	inc bc			;24e0	03 	. 
	ld (bc),a			;24e1	02 	. 
	jr nz,l24b1h		;24e2	20 cd 	  . 
	dec sp			;24e4	3b 	; 
	inc hl			;24e5	23 	# 
	cp 038h		;24e6	fe 38 	. 8 
	jr c,l254dh		;24e8	38 63 	8 c 
	bit 2,(ix+002h)		;24ea	dd cb 02 56 	. . . V 
	jp nz,06553h		;24ee	c2 53 65 	. S e 
	call sub_2301h		;24f1	cd 01 23 	. . # 
	ld a,(0c198h)		;24f4	3a 98 c1 	: . . 
	bit 7,a		;24f7	cb 7f 	.  
	jr nz,l2532h		;24f9	20 37 	  7 
	bit 6,a		;24fb	cb 77 	. w 
	jr nz,l251fh		;24fd	20 20 	    
	bit 1,a		;24ff	cb 4f 	. O 
	jr nz,l250fh		;2501	20 0c 	  . 
l2503h:
	ld b,01ch		;2503	06 1c 	. . 
	call 022d9h		;2505	cd d9 22 	. . " 
	jr nc,l251fh		;2508	30 15 	0 . 
	ld a,002h		;250a	3e 02 	> . 
	ld (0c198h),a		;250c	32 98 c1 	2 . . 
l250fh:
	ld de,0fff0h		;250f	11 f0 ff 	. . . 
	call 0655dh		;2512	cd 5d 65 	. ] e 
	jr z,l251fh		;2515	28 08 	( . 
	ld a,080h		;2517	3e 80 	> . 
	ld (0c198h),a		;2519	32 98 c1 	2 . . 
	jp 06532h		;251c	c3 32 65 	. 2 e 
l251fh:
	ld hl,0c198h		;251f	21 98 c1 	! . . 
	bit 2,(hl)		;2522	cb 56 	. V 
	jr nz,l2559h		;2524	20 33 	  3 
	set 2,(hl)		;2526	cb d6 	. . 
	ld a,080h		;2528	3e 80 	> . 
	ld b,004h		;252a	06 04 	. . 
	call 022f1h		;252c	cd f1 22 	. . " 
	jp 06559h		;252f	c3 59 65 	. Y e 
l2532h:
	ld hl,0c198h		;2532	21 98 c1 	! . . 
	bit 3,(hl)		;2535	cb 5e 	. ^ 
	jr nz,l2542h		;2537	20 09 	  . 
	set 3,(hl)		;2539	cb de 	. . 
	ld a,084h		;253b	3e 84 	> . 
	ld b,004h		;253d	06 04 	. . 
	call 022f1h		;253f	cd f1 22 	. . " 
l2542h:
	call 06559h		;2542	cd 59 65 	. Y e 
	ld hl,0c19bh		;2545	21 9b c1 	! . . 
	ld a,004h		;2548	3e 04 	> . 
	inc (hl)			;254a	34 	4 
	cp (hl)			;254b	be 	. 
	ret nc			;254c	d0 	. 
l254dh:
	ld b,004h		;254d	06 04 	. . 
	call l24a9h		;254f	cd a9 24 	. . $ 
	ret			;2552	c9 	. 
	ld b,004h		;2553	06 04 	. . 
	call sub_2df2h		;2555	cd f2 2d 	. . - 
	ret			;2558	c9 	. 
l2559h:
	ld b,004h		;2559	06 04 	. . 
	rst 28h			;255b	ef 	. 
	ret			;255c	c9 	. 
	call 0227ah		;255d	cd 7a 22 	. z " 
	ld hl,(0c196h)		;2560	2a 96 c1 	* . . 
	rst 18h			;2563	df 	. 
	xor a			;2564	af 	. 
	ld hl,l0404h		;2565	21 04 04 	! . . 
	call 0392fh		;2568	cd 2f 39 	. / 9 
	ld a,(ix+014h)		;256b	dd 7e 14 	. ~ . 
	bit 1,a		;256e	cb 4f 	. O 
	ret			;2570	c9 	. 
	ld a,003h		;2571	3e 03 	> . 
	call sub_092bh		;2573	cd 2b 09 	. + . 
	jp c,l06dah		;2576	da da 06 	. . . 
	ld e,0d0h		;2579	1e d0 	. . 
	ld bc,0658ch		;257b	01 8c 65 	. . e 
	call 0225fh		;257e	cd 5f 22 	. _ " 
	ld a,054h		;2581	3e 54 	> T 
	rst 30h			;2583	f7 	. 
	ld a,0abh		;2584	3e ab 	> . 
	ld b,004h		;2586	06 04 	. . 
	call 022f1h		;2588	cd f1 22 	. . " 
	ret			;258b	c9 	. 
	inc bc			;258c	03 	. 
	inc bc			;258d	03 	. 
	inc bc			;258e	03 	. 
	jr nz,$-49		;258f	20 cd 	  . 
	dec sp			;2591	3b 	; 
	inc hl			;2592	23 	# 
	cp 038h		;2593	fe 38 	. 8 
	jp c,0660bh		;2595	da 0b 66 	. . f 
	bit 2,(ix+002h)		;2598	dd cb 02 56 	. . . V 
	jp nz,06605h		;259c	c2 05 66 	. . f 
	call sub_2301h		;259f	cd 01 23 	. . # 
	ld a,(0c198h)		;25a2	3a 98 c1 	: . . 
	bit 7,a		;25a5	cb 7f 	.  
	jp nz,065eah		;25a7	c2 ea 65 	. . e 
	bit 0,a		;25aa	cb 47 	. G 
	jr nz,l25f1h		;25ac	20 43 	  C 
	bit 1,a		;25ae	cb 4f 	. O 
	jr nz,l25c1h		;25b0	20 0f 	  . 
	ld b,010h		;25b2	06 10 	. . 
	call 022d9h		;25b4	cd d9 22 	. . " 
	jr nc,l25d7h		;25b7	30 1e 	0 . 
	ld a,002h		;25b9	3e 02 	> . 
	ld (0c198h),a		;25bb	32 98 c1 	2 . . 
	jp 065c1h		;25be	c3 c1 65 	. . e 
l25c1h:
	ld de,0ffe8h		;25c1	11 e8 ff 	. . . 
	call 0227ah		;25c4	cd 7a 22 	. z " 
	ld hl,(0c196h)		;25c7	2a 96 c1 	* . . 
	rst 18h			;25ca	df 	. 
	cp 02eh		;25cb	fe 2e 	. . 
	jr nc,l25d7h		;25cd	30 08 	0 . 
	ld a,001h		;25cf	3e 01 	> . 
	ld (0c198h),a		;25d1	32 98 c1 	2 . . 
	jp 065f1h		;25d4	c3 f1 65 	. . e 
l25d7h:
	ld hl,0c198h		;25d7	21 98 c1 	! . . 
	bit 2,(hl)		;25da	cb 56 	. V 
	jr nz,l2601h		;25dc	20 23 	  # 
	set 2,(hl)		;25de	cb d6 	. . 
	ld a,0abh		;25e0	3e ab 	> . 
	ld b,004h		;25e2	06 04 	. . 
	call 022f1h		;25e4	cd f1 22 	. . " 
	jp 06601h		;25e7	c3 01 66 	. . f 
	call 022b9h		;25ea	cd b9 22 	. . " 
	cp 010h		;25ed	fe 10 	. . 
	jr c,l260bh		;25ef	38 1a 	8 . 
l25f1h:
	ld hl,0c198h		;25f1	21 98 c1 	! . . 
	bit 3,(hl)		;25f4	cb 5e 	. ^ 
	jr nz,l2601h		;25f6	20 09 	  . 
	set 3,(hl)		;25f8	cb de 	. . 
	ld a,0afh		;25fa	3e af 	> . 
	ld b,004h		;25fc	06 04 	. . 
	call 022f1h		;25fe	cd f1 22 	. . " 
l2601h:
	ld b,004h		;2601	06 04 	. . 
	rst 28h			;2603	ef 	. 
	ret			;2604	c9 	. 
	ld b,004h		;2605	06 04 	. . 
	call sub_2df2h		;2607	cd f2 2d 	. . - 
	ret			;260a	c9 	. 
l260bh:
	ld b,004h		;260b	06 04 	. . 
	call l24a9h		;260d	cd a9 24 	. . $ 
	ret			;2610	c9 	. 
	ld a,003h		;2611	3e 03 	> . 
	call sub_092bh		;2613	cd 2b 09 	. + . 
	jp c,l06dah		;2616	da da 06 	. . . 
	ld a,001h		;2619	3e 01 	> . 
	ld (0c1a0h),a		;261b	32 a0 c1 	2 . . 
	jr l2637h		;261e	18 17 	. . 
	ld a,003h		;2620	3e 03 	> . 
	call sub_092bh		;2622	cd 2b 09 	. + . 
	jp c,l06dah		;2625	da da 06 	. . . 
	ld a,002h		;2628	3e 02 	> . 
	ld (0c1a0h),a		;262a	32 a0 c1 	2 . . 
	jr l2637h		;262d	18 08 	. . 
	ld a,003h		;262f	3e 03 	> . 
	call sub_092bh		;2631	cd 2b 09 	. + . 
	jp c,l06dah		;2634	da da 06 	. . . 
l2637h:
	ld e,0cch		;2637	1e cc 	. . 
	ld bc,0664ah		;2639	01 4a 66 	. J f 
	call 0225fh		;263c	cd 5f 22 	. _ " 
	ld a,055h		;263f	3e 55 	> U 
	rst 30h			;2641	f7 	. 
	ld a,08bh		;2642	3e 8b 	> . 
	ld b,004h		;2644	06 04 	. . 
	call 022f1h		;2646	cd f1 22 	. . " 
	ret			;2649	c9 	. 
	inc bc			;264a	03 	. 
	inc bc			;264b	03 	. 
	inc b			;264c	04 	. 
	jr nz,$-49		;264d	20 cd 	  . 
	dec sp			;264f	3b 	; 
	inc hl			;2650	23 	# 
	cp 040h		;2651	fe 40 	. @ 
	jp c,066d6h		;2653	da d6 66 	. . f 
	bit 2,(ix+002h)		;2656	dd cb 02 56 	. . . V 
	jp nz,066dch		;265a	c2 dc 66 	. . f 
	call sub_2301h		;265d	cd 01 23 	. . # 
	ld a,(0c198h)		;2660	3a 98 c1 	: . . 
	bit 7,a		;2663	cb 7f 	.  
	jp nz,066b8h		;2665	c2 b8 66 	. . f 
	ld a,(0c1a0h)		;2668	3a a0 c1 	: . . 
	bit 0,a		;266b	cb 47 	. G 
	jr nz,l2678h		;266d	20 09 	  . 
	bit 1,a		;266f	cb 4f 	. O 
	jr nz,l267dh		;2671	20 0a 	  . 
	ld de,0ffedh		;2673	11 ed ff 	. . . 
	jr l2680h		;2676	18 08 	. . 
l2678h:
	ld de,0fff6h		;2678	11 f6 ff 	. . . 
	jr l2680h		;267b	18 03 	. . 
l267dh:
	ld de,0fff2h		;267d	11 f2 ff 	. . . 
l2680h:
	call 0227ah		;2680	cd 7a 22 	. z " 
	bit 7,d		;2683	cb 7a 	. z 
	jr nz,l268dh		;2685	20 06 	  . 
	ld hl,(0c196h)		;2687	2a 96 c1 	* . . 
	rst 18h			;268a	df 	. 
	jr l26adh		;268b	18 20 	.   
l268dh:
	ld hl,(0c196h)		;268d	2a 96 c1 	* . . 
	rst 18h			;2690	df 	. 
	cp 010h		;2691	fe 10 	. . 
	jp c,066cah		;2693	da ca 66 	. . f 
	ld hl,0c19ah		;2696	21 9a c1 	! . . 
	ld a,006h		;2699	3e 06 	> . 
	call sub_22c7h		;269b	cd c7 22 	. . " 
	ld a,d			;269e	7a 	z 
	and a			;269f	a7 	. 
	jr nz,l26adh		;26a0	20 0b 	  . 
	ld a,08fh		;26a2	3e 8f 	> . 
	ld b,004h		;26a4	06 04 	. . 
	call 022f1h		;26a6	cd f1 22 	. . " 
	ld b,004h		;26a9	06 04 	. . 
	rst 28h			;26ab	ef 	. 
	ret			;26ac	c9 	. 
l26adh:
	ld a,08bh		;26ad	3e 8b 	> . 
	ld b,004h		;26af	06 04 	. . 
	call 022f1h		;26b1	cd f1 22 	. . " 
	ld b,004h		;26b4	06 04 	. . 
	rst 28h			;26b6	ef 	. 
	ret			;26b7	c9 	. 
	call sub_22a6h		;26b8	cd a6 22 	. . " 
	cp 010h		;26bb	fe 10 	. . 
	jr c,l26d6h		;26bd	38 17 	8 . 
	ld a,093h		;26bf	3e 93 	> . 
	ld b,004h		;26c1	06 04 	. . 
	call 022f1h		;26c3	cd f1 22 	. . " 
	ld b,004h		;26c6	06 04 	. . 
	rst 28h			;26c8	ef 	. 
	ret			;26c9	c9 	. 
	ld de,00260h		;26ca	11 60 02 	. ` . 
	call 02298h		;26cd	cd 98 22 	. . " 
	ld a,0a4h		;26d0	3e a4 	> . 
	call 00a99h		;26d2	cd 99 0a 	. . . 
	ret			;26d5	c9 	. 
l26d6h:
	ld b,004h		;26d6	06 04 	. . 
	call l24a9h		;26d8	cd a9 24 	. . $ 
	ret			;26db	c9 	. 
	ld b,004h		;26dc	06 04 	. . 
	call sub_2df2h		;26de	cd f2 2d 	. . - 
	ret			;26e1	c9 	. 
	ld a,00dh		;26e2	3e 0d 	> . 
	call sub_092bh		;26e4	cd 2b 09 	. + . 
	jp c,l06dah		;26e7	da da 06 	. . . 
	ld e,0d0h		;26ea	1e d0 	. . 
	ld bc,066fdh		;26ec	01 fd 66 	. . f 
	call 0225fh		;26ef	cd 5f 22 	. _ " 
	ld a,06ch		;26f2	3e 6c 	> l 
	rst 30h			;26f4	f7 	. 
	ld a,064h		;26f5	3e 64 	> d 
	ld b,008h		;26f7	06 08 	. . 
	call 022f1h		;26f9	cd f1 22 	. . " 
	ret			;26fc	c9 	. 
	ex af,af'			;26fd	08 	. 
	ld (bc),a			;26fe	02 	. 
	dec b			;26ff	05 	. 
	djnz $-49		;2700	10 cd 	. . 
	dec sp			;2702	3b 	; 
	inc hl			;2703	23 	# 
	bit 2,(ix+002h)		;2704	dd cb 02 56 	. . . V 
	jr nz,l2756h		;2708	20 4c 	  L 
	ld a,(ix+004h)		;270a	dd 7e 04 	. ~ . 
	cp 030h		;270d	fe 30 	. 0 
	jr c,l2750h		;270f	38 3f 	8 ? 
	ld hl,0c198h		;2711	21 98 c1 	! . . 
	bit 0,(hl)		;2714	cb 46 	. F 
	jr nz,l2722h		;2716	20 0a 	  . 
	ld b,023h		;2718	06 23 	. # 
	call 022d9h		;271a	cd d9 22 	. . " 
	ret nc			;271d	d0 	. 
	ld hl,0c198h		;271e	21 98 c1 	! . . 
	inc (hl)			;2721	34 	4 
l2722h:
	ld de,0fe40h		;2722	11 40 fe 	. @ . 
	ld hl,(0c196h)		;2725	2a 96 c1 	* . . 
	rst 18h			;2728	df 	. 
	ld de,0ffe0h		;2729	11 e0 ff 	. . . 
	ld hl,(0c196h)		;272c	2a 96 c1 	* . . 
	rst 8			;272f	cf 	. 
	ld a,003h		;2730	3e 03 	> . 
	ld hl,0c19fh		;2732	21 9f c1 	! . . 
	call sub_22c7h		;2735	cd c7 22 	. . " 
	ld a,d			;2738	7a 	z 
	and a			;2739	a7 	. 
	jr nz,l2745h		;273a	20 09 	  . 
	ld a,06ch		;273c	3e 6c 	> l 
	ld b,008h		;273e	06 08 	. . 
	call 022f1h		;2740	cd f1 22 	. . " 
	jr l274ch		;2743	18 07 	. . 
l2745h:
	ld a,064h		;2745	3e 64 	> d 
	ld b,008h		;2747	06 08 	. . 
	call 022f1h		;2749	cd f1 22 	. . " 
l274ch:
	ld b,008h		;274c	06 08 	. . 
	rst 28h			;274e	ef 	. 
	ret			;274f	c9 	. 
l2750h:
	ld b,008h		;2750	06 08 	. . 
	call l24a9h		;2752	cd a9 24 	. . $ 
	ret			;2755	c9 	. 
l2756h:
	ld b,008h		;2756	06 08 	. . 
	call sub_2df2h		;2758	cd f2 2d 	. . - 
	ret			;275b	c9 	. 
	ld a,003h		;275c	3e 03 	> . 
	call sub_092bh		;275e	cd 2b 09 	. + . 
	jp c,l06dah		;2761	da da 06 	. . . 
	ld e,0c8h		;2764	1e c8 	. . 
	ld bc,l36edh		;2766	01 ed 36 	. . 6 
	call 0225fh		;2769	cd 5f 22 	. _ " 
	ld a,092h		;276c	3e 92 	> . 
	rst 30h			;276e	f7 	. 
	ld b,004h		;276f	06 04 	. . 
	ld a,088h		;2771	3e 88 	> . 
	call sub_2257h		;2773	cd 57 22 	. W " 
	ld a,040h		;2776	3e 40 	> @ 
	ld b,004h		;2778	06 04 	. . 
	call 022f1h		;277a	cd f1 22 	. . " 
	ret			;277d	c9 	. 
	call l2339h+2		;277e	cd 3b 23 	. ; # 
	cp 040h		;2781	fe 40 	. @ 
	jr c,l27b9h		;2783	38 34 	8 4 
	bit 5,(ix+002h)		;2785	dd cb 02 6e 	. . . n 
	jr nz,l27afh		;2789	20 24 	  $ 
	ld de,0ffech		;278b	11 ec ff 	. . . 
	ld hl,(0c196h)		;278e	2a 96 c1 	* . . 
	rst 8			;2791	cf 	. 
	ld a,040h		;2792	3e 40 	> @ 
	ld hl,0c1a0h		;2794	21 a0 c1 	! . . 
	call sub_22c7h		;2797	cd c7 22 	. . " 
	ld a,d			;279a	7a 	z 
	and a			;279b	a7 	. 
	jr nz,l27a4h		;279c	20 06 	  . 
	ld de,l000eh		;279e	11 0e 00 	. . . 
	jp 067a7h		;27a1	c3 a7 67 	. . g 
l27a4h:
	ld de,0fff2h		;27a4	11 f2 ff 	. . . 
	ld hl,(0c196h)		;27a7	2a 96 c1 	* . . 
	rst 18h			;27aa	df 	. 
	ld b,004h		;27ab	06 04 	. . 
	rst 28h			;27ad	ef 	. 
	ret			;27ae	c9 	. 
l27afh:
	ld a,08dh		;27af	3e 8d 	> . 
	call 00a99h		;27b1	cd 99 0a 	. . . 
	ld a,001h		;27b4	3e 01 	> . 
	call 0648dh		;27b6	cd 8d 64 	. . d 
l27b9h:
	ld b,004h		;27b9	06 04 	. . 
	call l24a9h		;27bb	cd a9 24 	. . $ 
	ret			;27be	c9 	. 
	jp 06916h		;27bf	c3 16 69 	. . i 
	jp 06939h		;27c2	c3 39 69 	. 9 i 
	jp 0699ch		;27c5	c3 9c 69 	. . i 
	jp 06a01h		;27c8	c3 01 6a 	. . j 
	jp 06a44h		;27cb	c3 44 6a 	. D j 
	jr nz,l27d0h		;27ce	20 00 	  . 
l27d0h:
	nop			;27d0	00 	. 
	ex af,af'			;27d1	08 	. 
	jr nc,l27d4h		;27d2	30 00 	0 . 
l27d4h:
	ld (bc),a			;27d4	02 	. 
	ld a,(bc)			;27d5	0a 	. 
	jr c,l27d8h		;27d6	38 00 	8 . 
l27d8h:
	ld bc,0400ch		;27d8	01 0c 40 	. . @ 
	nop			;27db	00 	. 
	ld bc,0480eh		;27dc	01 0e 48 	. . H 
	nop			;27df	00 	. 
	ld bc,04c10h		;27e0	01 10 4c 	. . L 
	nop			;27e3	00 	. 
	nop			;27e4	00 	. 
	ld (de),a			;27e5	12 	. 
	ld d,b			;27e6	50 	P 
	nop			;27e7	00 	. 
	nop			;27e8	00 	. 
	inc d			;27e9	14 	. 
	ld d,h			;27ea	54 	T 
	nop			;27eb	00 	. 
	nop			;27ec	00 	. 
	ld d,058h		;27ed	16 58 	. X 
	nop			;27ef	00 	. 
	nop			;27f0	00 	. 
	jr l284fh		;27f1	18 5c 	. \ 
	nop			;27f3	00 	. 
	nop			;27f4	00 	. 
	ld a,(de)			;27f5	1a 	. 
	ld h,b			;27f6	60 	` 
	nop			;27f7	00 	. 
	nop			;27f8	00 	. 
	inc e			;27f9	1c 	. 
	ld a,(0c11eh)		;27fa	3a 1e c1 	: . . 
	cp 000h		;27fd	fe 00 	. . 
	jr nz,l2806h		;27ff	20 05 	  . 
	call sub_0b3fh		;2801	cd 3f 0b 	. ? . 
	jr l2809h		;2804	18 03 	. . 
l2806h:
	call sub_0b34h		;2806	cd 34 0b 	. 4 . 
l2809h:
	ld hl,0cc30h		;2809	21 30 cc 	! 0 . 
	set 7,(hl)		;280c	cb fe 	. . 
	ld a,080h		;280e	3e 80 	> . 
	ld (0c522h),a		;2810	32 22 c5 	2 " . 
	call 06b58h		;2813	cd 58 6b 	. X k 
	ld a,0a1h		;2816	3e a1 	> . 
	ld hl,l0a3eh+1		;2818	21 3f 0a 	! ? . 
	ld b,019h		;281b	06 19 	. . 
	ld de,0c640h		;281d	11 40 c6 	. @ . 
	call 00971h		;2820	cd 71 09 	. q . 
	ld hl,0c644h		;2823	21 44 c6 	! D . 
	ld (hl),032h		;2826	36 32 	6 2 
	inc l			;2828	2c 	, 
	ld (hl),008h		;2829	36 08 	6 . 
	inc l			;282b	2c 	, 
	inc l			;282c	2c 	, 
	ld (hl),0d0h		;282d	36 d0 	6 . 
	inc l			;282f	2c 	, 
	ld (hl),008h		;2830	36 08 	6 . 
	inc l			;2832	2c 	, 
	ld (hl),000h		;2833	36 00 	6 . 
	inc l			;2835	2c 	, 
	ld (hl),028h		;2836	36 28 	6 ( 
	ld hl,0c525h		;2838	21 25 c5 	! % . 
	ld (hl),008h		;283b	36 08 	6 . 
	inc l			;283d	2c 	, 
	inc l			;283e	2c 	, 
	inc l			;283f	2c 	, 
	ld (hl),005h		;2840	36 05 	6 . 
	inc l			;2842	2c 	, 
	ld (hl),004h		;2843	36 04 	6 . 
	inc l			;2845	2c 	, 
	ld (hl),020h		;2846	36 20 	6   
	ld hl,0c520h		;2848	21 20 c5 	!   . 
	ld b,009h		;284b	06 09 	. . 
	ld a,018h		;284d	3e 18 	> . 
l284fh:
	call sub_22f4h		;284f	cd f4 22 	. . " 
	ld a,(0c128h)		;2852	3a 28 c1 	: ( . 
	and 03ch		;2855	e6 3c 	. < 
	push af			;2857	f5 	. 
	ld e,a			;2858	5f 	_ 
	ld d,000h		;2859	16 00 	. . 
	ld hl,067ceh		;285b	21 ce 67 	! . g 
	add hl,de			;285e	19 	. 
	ld e,(hl)			;285f	5e 	^ 
	inc hl			;2860	23 	# 
	ld d,(hl)			;2861	56 	V 
	ld (0c196h),de		;2862	ed 53 96 c1 	. S . . 
	inc hl			;2866	23 	# 
	ld a,(hl)			;2867	7e 	~ 
	ld (0c64fh),a		;2868	32 4f c6 	2 O . 
	inc hl			;286b	23 	# 
	ld a,(hl)			;286c	7e 	~ 
	ld (0c1a0h),a		;286d	32 a0 c1 	2 . . 
	pop af			;2870	f1 	. 
	rrca			;2871	0f 	. 
	rrca			;2872	0f 	. 
	cp 003h		;2873	fe 03 	. . 
	jr z,l287bh		;2875	28 04 	( . 
	cp 007h		;2877	fe 07 	. . 
	jr nz,l2880h		;2879	20 05 	  . 
l287bh:
	ld hl,0c19bh		;287b	21 9b c1 	! . . 
	set 2,(hl)		;287e	cb d6 	. . 
l2880h:
	add a,001h		;2880	c6 01 	. . 
	rst 30h			;2882	f7 	. 
	ld hl,0c520h		;2883	21 20 c5 	!   . 
	ld a,018h		;2886	3e 18 	> . 
	ld b,009h		;2888	06 09 	. . 
	call sub_22f4h		;288a	cd f4 22 	. . " 
	ld hl,0c640h		;288d	21 40 c6 	! @ . 
	ld a,021h		;2890	3e 21 	> ! 
	ld b,019h		;2892	06 19 	. . 
	call sub_22f4h		;2894	cd f4 22 	. . " 
	ld a,(0c11eh)		;2897	3a 1e c1 	: . . 
	cp 000h		;289a	fe 00 	. . 
	jr nz,l28aah		;289c	20 0c 	  . 
	ld hl,0c19bh		;289e	21 9b c1 	! . . 
	bit 2,(hl)		;28a1	cb 56 	. V 
	ret z			;28a3	c8 	. 
	ld a,088h		;28a4	3e 88 	> . 
	call 00a99h		;28a6	cd 99 0a 	. . . 
	ret			;28a9	c9 	. 
l28aah:
	ld hl,0c19bh		;28aa	21 9b c1 	! . . 
	set 3,(hl)		;28ad	cb de 	. . 
	ld hl,00028h		;28af	21 28 00 	! ( . 
	ld (0c196h),hl		;28b2	22 96 c1 	" . . 
	ld a,024h		;28b5	3e 24 	> $ 
	ld (0c644h),a		;28b7	32 44 c6 	2 D . 
	ld hl,0cc84h		;28ba	21 84 cc 	! . . 
	set 0,(hl)		;28bd	cb c6 	. . 
	ld hl,0c19bh		;28bf	21 9b c1 	! . . 
	bit 2,(hl)		;28c2	cb 56 	. V 
	ld a,087h		;28c4	3e 87 	> . 
	jr z,l28c9h		;28c6	28 01 	( . 
	inc a			;28c8	3c 	< 
l28c9h:
	call 00a99h		;28c9	cd 99 0a 	. . . 
	ret			;28cc	c9 	. 
	ld hl,0cc30h		;28cd	21 30 cc 	! 0 . 
	bit 5,(hl)		;28d0	cb 6e 	. n 
	jr nz,l28e9h		;28d2	20 15 	  . 
	set 5,(hl)		;28d4	cb ee 	. . 
	ld hl,0c19bh		;28d6	21 9b c1 	! . . 
	bit 2,(hl)		;28d9	cb 56 	. V 
	jr z,l28e9h		;28db	28 0c 	( . 
	bit 3,(hl)		;28dd	cb 5e 	. ^ 
	jr nz,l28e9h		;28df	20 08 	  . 
	ld a,06ah		;28e1	3e 6a 	> j 
	ld hl,l0000h		;28e3	21 00 00 	! . . 
	call sub_06e2h		;28e6	cd e2 06 	. . . 
l28e9h:
	ld hl,(0c196h)		;28e9	2a 96 c1 	* . . 
	add hl,hl			;28ec	29 	) 
	add hl,hl			;28ed	29 	) 
	add hl,hl			;28ee	29 	) 
	ld a,h			;28ef	7c 	| 
	ld hl,0c198h		;28f0	21 98 c1 	! . . 
	add a,(hl)			;28f3	86 	. 
	ld (hl),a			;28f4	77 	w 
	inc l			;28f5	2c 	, 
	ld a,(hl)			;28f6	7e 	~ 
	inc l			;28f7	2c 	, 
	inc (hl)			;28f8	34 	4 
	ld l,a			;28f9	6f 	o 
	add a,l			;28fa	85 	. 
	add a,l			;28fb	85 	. 
	ld l,a			;28fc	6f 	o 
	ld h,000h		;28fd	26 00 	& . 
	ld de,067bfh		;28ff	11 bf 67 	. . g 
	add hl,de			;2902	19 	. 
	jp (hl)			;2903	e9 	. 
	ld hl,0c199h		;2904	21 99 c1 	! . . 
	ld (hl),a			;2907	77 	w 
	xor a			;2908	af 	. 
	inc l			;2909	2c 	, 
	ld (hl),a			;290a	77 	w 
	inc l			;290b	2c 	, 
	ld a,(hl)			;290c	7e 	~ 
	and 007h		;290d	e6 07 	. . 
	ld (hl),a			;290f	77 	w 
	xor a			;2910	af 	. 
	inc l			;2911	2c 	, 
	ld (hl),a			;2912	77 	w 
	inc l			;2913	2c 	, 
	ld (hl),a			;2914	77 	w 
	ret			;2915	c9 	. 
	ld hl,0c19bh		;2916	21 9b c1 	! . . 
	bit 3,(hl)		;2919	cb 5e 	. ^ 
	jr nz,l2929h		;291b	20 0c 	  . 
	ld a,(0c647h)		;291d	3a 47 c6 	: G . 
	cp 0a0h		;2920	fe a0 	. . 
	jr nc,l2929h		;2922	30 05 	0 . 
	ld a,001h		;2924	3e 01 	> . 
	call 06904h		;2926	cd 04 69 	. . i 
l2929h:
	call 06986h		;2929	cd 86 69 	. . i 
	call 06aa7h		;292c	cd a7 6a 	. . j 
	call 06ae2h		;292f	cd e2 6a 	. . j 
	call 06affh		;2932	cd ff 6a 	. . j 
	call 06b44h		;2935	cd 44 6b 	. D k 
	ret			;2938	c9 	. 
	ld hl,(0c196h)		;2939	2a 96 c1 	* . . 
	ld de,(0c19ch)		;293c	ed 5b 9c c1 	. [ . . 
	add hl,de			;2940	19 	. 
	ld (0c19ch),hl		;2941	22 9c c1 	" . . 
	add hl,hl			;2944	29 	) 
	ld a,030h		;2945	3e 30 	> 0 
	cp h			;2947	bc 	. 
	jr nc,l295bh		;2948	30 11 	0 . 
	ld a,(0c64fh)		;294a	3a 4f c6 	: O . 
	or a			;294d	b7 	. 
	ld a,002h		;294e	3e 02 	> . 
	jr z,l2958h		;2950	28 06 	( . 
	ld hl,0c64fh		;2952	21 4f c6 	! O . 
	dec (hl)			;2955	35 	5 
	ld a,001h		;2956	3e 01 	> . 
l2958h:
	call 06904h		;2958	cd 04 69 	. . i 
l295bh:
	ld hl,0c19bh		;295b	21 9b c1 	! . . 
	bit 0,(hl)		;295e	cb 46 	. F 
	ld a,(0c647h)		;2960	3a 47 c6 	: G . 
	jr nz,l2970h		;2963	20 0b 	  . 
	cp 068h		;2965	fe 68 	. h 
	jr nc,l296bh		;2967	30 02 	0 . 
	set 0,(hl)		;2969	cb c6 	. . 
l296bh:
	call 06986h		;296b	cd 86 69 	. . i 
	jr l2979h		;296e	18 09 	. . 
l2970h:
	cp 0a8h		;2970	fe a8 	. . 
	jr c,l2976h		;2972	38 02 	8 . 
	res 0,(hl)		;2974	cb 86 	. . 
l2976h:
	call 06993h		;2976	cd 93 69 	. . i 
l2979h:
	call 06aa7h		;2979	cd a7 6a 	. . j 
	call 06ae2h		;297c	cd e2 6a 	. . j 
	call 06affh		;297f	cd ff 6a 	. . j 
	call 06b44h		;2982	cd 44 6b 	. D k 
	ret			;2985	c9 	. 
	ld de,(0c196h)		;2986	ed 5b 96 c1 	. [ . . 
	ld hl,l0000h		;298a	21 00 00 	! . . 
	or a			;298d	b7 	. 
	sbc hl,de		;298e	ed 52 	. R 
	ex de,hl			;2990	eb 	. 
	jr l2997h		;2991	18 04 	. . 
	ld de,(0c196h)		;2993	ed 5b 96 c1 	. [ . . 
l2997h:
	ld hl,0c640h		;2997	21 40 c6 	! @ . 
	rst 8			;299a	cf 	. 
	ret			;299b	c9 	. 
	ld hl,0c19bh		;299c	21 9b c1 	! . . 
	bit 7,(hl)		;299f	cb 7e 	. ~ 
	jr nz,l29ceh		;29a1	20 2b 	  + 
	set 7,(hl)		;29a3	cb fe 	. . 
	ld a,049h		;29a5	3e 49 	> I 
	bit 2,(hl)		;29a7	cb 56 	. V 
	jr z,l29adh		;29a9	28 02 	( . 
	ld a,04fh		;29ab	3e 4f 	> O 
l29adh:
	ld b,003h		;29ad	06 03 	. . 
l29afh:
	rst 30h			;29af	f7 	. 
	djnz l29afh		;29b0	10 fd 	. . 
	ex de,hl			;29b2	eb 	. 
	ld a,(0c644h)		;29b3	3a 44 c6 	: D . 
	add a,008h		;29b6	c6 08 	. . 
	ld h,a			;29b8	67 	g 
	ld a,(0c647h)		;29b9	3a 47 c6 	: G . 
	add a,006h		;29bc	c6 06 	. . 
	ld l,a			;29be	6f 	o 
	ld a,(0c19bh)		;29bf	3a 9b c1 	: . . 
	bit 2,a		;29c2	cb 57 	. W 
	ld a,036h		;29c4	3e 36 	> 6 
	jr z,l29cah		;29c6	28 02 	( . 
	ld a,054h		;29c8	3e 54 	> T 
l29cah:
	call sub_06e2h		;29ca	cd e2 06 	. . . 
	ex de,hl			;29cd	eb 	. 
l29ceh:
	bit 6,(hl)		;29ce	cb 76 	. v 
	jr nz,l29ech		;29d0	20 1a 	  . 
	dec l			;29d2	2d 	- 
	ld a,(hl)			;29d3	7e 	~ 
	cp 050h		;29d4	fe 50 	. P 
	jr c,l29f7h		;29d6	38 1f 	8 . 
	ld (hl),000h		;29d8	36 00 	6 . 
	inc l			;29da	2c 	, 
	set 6,(hl)		;29db	cb f6 	. . 
	ld a,046h		;29dd	3e 46 	> F 
	bit 2,(hl)		;29df	cb 56 	. V 
	jr z,l29e5h		;29e1	28 02 	( . 
	ld a,04ch		;29e3	3e 4c 	> L 
l29e5h:
	ld b,003h		;29e5	06 03 	. . 
l29e7h:
	rst 30h			;29e7	f7 	. 
	djnz l29e7h		;29e8	10 fd 	. . 
	jr l29f7h		;29ea	18 0b 	. . 
l29ech:
	dec l			;29ec	2d 	- 
	ld a,(hl)			;29ed	7e 	~ 
	cp 040h		;29ee	fe 40 	. @ 
	jr c,l29f7h		;29f0	38 05 	8 . 
	ld a,001h		;29f2	3e 01 	> . 
	call 06904h		;29f4	cd 04 69 	. . i 
l29f7h:
	call 06aa7h		;29f7	cd a7 6a 	. . j 
	call 06affh		;29fa	cd ff 6a 	. . j 
	call 06b44h		;29fd	cd 44 6b 	. D k 
	ret			;2a00	c9 	. 
	ld hl,0c19bh		;2a01	21 9b c1 	! . . 
	bit 7,(hl)		;2a04	cb 7e 	. ~ 
	jr nz,l2a15h		;2a06	20 0d 	  . 
	set 7,(hl)		;2a08	cb fe 	. . 
	ld ix,0c520h		;2a0a	dd 21 20 c5 	. !   . 
	ld de,l0080h		;2a0e	11 80 00 	. . . 
	call 0227ah		;2a11	cd 7a 22 	. z " 
	ret			;2a14	c9 	. 
l2a15h:
	ld ix,0c520h		;2a15	dd 21 20 c5 	. !   . 
	ld de,0fffah		;2a19	11 fa ff 	. . . 
	call 0227ah		;2a1c	cd 7a 22 	. z " 
	ld hl,0c520h		;2a1f	21 20 c5 	!   . 
	rst 18h			;2a22	df 	. 
	ld hl,0c520h		;2a23	21 20 c5 	!   . 
	ld de,0ffd8h		;2a26	11 d8 ff 	. . . 
	rst 8			;2a29	cf 	. 
	ld a,(0c524h)		;2a2a	3a 24 c5 	: $ . 
	cp 02eh		;2a2d	fe 2e 	. . 
	jr nc,l2a40h		;2a2f	30 0f 	0 . 
	ld a,004h		;2a31	3e 04 	> . 
	call 06904h		;2a33	cd 04 69 	. . i 
	ld ix,0c520h		;2a36	dd 21 20 c5 	. !   . 
	ld b,009h		;2a3a	06 09 	. . 
	call 0057fh		;2a3c	cd 7f 05 	.  . 
	ret			;2a3f	c9 	. 
l2a40h:
	call 06b4bh		;2a40	cd 4b 6b 	. K k 
	ret			;2a43	c9 	. 
	ld hl,0c19bh		;2a44	21 9b c1 	! . . 
	bit 7,(hl)		;2a47	cb 7e 	. ~ 
	jr nz,l2a69h		;2a49	20 1e 	  . 
	set 7,(hl)		;2a4b	cb fe 	. . 
	ld a,(0c128h)		;2a4d	3a 28 c1 	: ( . 
	rrca			;2a50	0f 	. 
	rrca			;2a51	0f 	. 
	and 00fh		;2a52	e6 0f 	. . 
	cp 009h		;2a54	fe 09 	. . 
	jr nc,l2a5ch		;2a56	30 04 	0 . 
	add a,002h		;2a58	c6 02 	. . 
	rst 30h			;2a5a	f7 	. 
	ret			;2a5b	c9 	. 
l2a5ch:
	ld hl,l2300h		;2a5c	21 00 23 	! . # 
	ld bc,l0120h		;2a5f	01 20 01 	.   . 
	xor a			;2a62	af 	. 
	di			;2a63	f3 	. 
	call sub_0202h		;2a64	cd 02 02 	. . . 
	ei			;2a67	fb 	. 
	ret			;2a68	c9 	. 
l2a69h:
	bit 6,(hl)		;2a69	cb 76 	. v 
	jr nz,l2a7bh		;2a6b	20 0e 	  . 
	dec l			;2a6d	2d 	- 
	ld a,(hl)			;2a6e	7e 	~ 
	cp 030h		;2a6f	fe 30 	. 0 
	ret c			;2a71	d8 	. 
	inc l			;2a72	2c 	, 
	set 6,(hl)		;2a73	cb f6 	. . 
	ld a,09eh		;2a75	3e 9e 	> . 
	call 00a99h		;2a77	cd 99 0a 	. . . 
	ret			;2a7a	c9 	. 
l2a7bh:
	ld hl,0c640h		;2a7b	21 40 c6 	! @ . 
	ld de,l0100h		;2a7e	11 00 01 	. . . 
	rst 18h			;2a81	df 	. 
	ld hl,0c640h		;2a82	21 40 c6 	! @ . 
	ld de,l0060h		;2a85	11 60 00 	. ` . 
	rst 8			;2a88	cf 	. 
	ld a,(0c644h)		;2a89	3a 44 c6 	: D . 
	rla			;2a8c	17 	. 
	jr nc,l2aa0h		;2a8d	30 11 	0 . 
	ld hl,0cc30h		;2a8f	21 30 cc 	! 0 . 
	set 6,(hl)		;2a92	cb f6 	. . 
	ld hl,0c16bh		;2a94	21 6b c1 	! k . 
	set 7,(hl)		;2a97	cb fe 	. . 
	call sub_0b3fh		;2a99	cd 3f 0b 	. ? . 
	call l06dah		;2a9c	cd da 06 	. . . 
	ret			;2a9f	c9 	. 
l2aa0h:
	call 06aa7h		;2aa0	cd a7 6a 	. . j 
	call 06b44h		;2aa3	cd 44 6b 	. D k 
	ret			;2aa6	c9 	. 
	ld hl,(0c19eh)		;2aa7	2a 9e c1 	* . . 
	ld a,l			;2aaa	7d 	} 
	or h			;2aab	b4 	. 
	jr z,l2ab5h		;2aac	28 07 	( . 
	ld de,0ffd0h		;2aae	11 d0 ff 	. . . 
	add hl,de			;2ab1	19 	. 
	ld (0c19eh),hl		;2ab2	22 9e c1 	" . . 
l2ab5h:
	ld de,(0c523h)		;2ab5	ed 5b 23 c5 	. [ # . 
	add hl,de			;2ab9	19 	. 
	ex de,hl			;2aba	eb 	. 
	ld hl,(0c643h)		;2abb	2a 43 c6 	* C . 
	ld bc,00f00h		;2abe	01 00 0f 	. . . 
	add hl,bc			;2ac1	09 	. 
	sbc hl,de		;2ac2	ed 52 	. R 
	add hl,de			;2ac4	19 	. 
	jr c,l2ad3h		;2ac5	38 0c 	8 . 
	ex de,hl			;2ac7	eb 	. 
	ld hl,l0000h		;2ac8	21 00 00 	! . . 
	ld (0c19eh),hl		;2acb	22 9e c1 	" . . 
	push de			;2ace	d5 	. 
	call 06b58h		;2acf	cd 58 6b 	. X k 
	pop de			;2ad2	d1 	. 
l2ad3h:
	ld (0c523h),de		;2ad3	ed 53 23 c5 	. S # . 
	ld hl,(0c646h)		;2ad7	2a 46 c6 	* F . 
	ld de,0ff00h		;2ada	11 00 ff 	. . . 
	add hl,de			;2add	19 	. 
	ld (0c526h),hl		;2ade	22 26 c5 	" & . 
	ret			;2ae1	c9 	. 
	ld hl,0c19bh		;2ae2	21 9b c1 	! . . 
	ld c,00bh		;2ae5	0e 0b 	. . 
	bit 2,(hl)		;2ae7	cb 56 	. V 
	jr z,l2aedh		;2ae9	28 02 	( . 
	ld c,00fh		;2aeb	0e 0f 	. . 
l2aedh:
	ld a,(0c198h)		;2aed	3a 98 c1 	: . . 
	rra			;2af0	1f 	. 
	rra			;2af1	1f 	. 
	rra			;2af2	1f 	. 
	xor (hl)			;2af3	ae 	. 
	and 002h		;2af4	e6 02 	. . 
	ret z			;2af6	c8 	. 
	xor (hl)			;2af7	ae 	. 
	ld (hl),a			;2af8	77 	w 
	and 002h		;2af9	e6 02 	. . 
	add a,c			;2afb	81 	. 
	rst 30h			;2afc	f7 	. 
	rst 30h			;2afd	f7 	. 
	ret			;2afe	c9 	. 
	ld hl,0c522h		;2aff	21 22 c5 	! " . 
	bit 5,(hl)		;2b02	cb 6e 	. n 
	ret z			;2b04	c8 	. 
	res 5,(hl)		;2b05	cb ae 	. . 
	push hl			;2b07	e5 	. 
	ld a,004h		;2b08	3e 04 	> . 
	call 0615eh		;2b0a	cd 5e 61 	. ^ a 
	pop hl			;2b0d	e1 	. 
	ex de,hl			;2b0e	eb 	. 
	ld hl,0c1a0h		;2b0f	21 a0 c1 	! . . 
	dec (hl)			;2b12	35 	5 
	jr nz,l2b32h		;2b13	20 1d 	  . 
	ld a,0a9h		;2b15	3e a9 	> . 
	call 00a99h		;2b17	cd 99 0a 	. . . 
	ld hl,0c642h		;2b1a	21 42 c6 	! B . 
	set 6,(hl)		;2b1d	cb f6 	. . 
	ld hl,0c522h		;2b1f	21 22 c5 	! " . 
	set 6,(hl)		;2b22	cb f6 	. . 
	ld hl,0cc30h		;2b24	21 30 cc 	! 0 . 
	set 0,(hl)		;2b27	cb c6 	. . 
	ld a,003h		;2b29	3e 03 	> . 
	call 06904h		;2b2b	cd 04 69 	. . i 
	call 06b58h		;2b2e	cd 58 6b 	. X k 
	ret			;2b31	c9 	. 
l2b32h:
	ex de,hl			;2b32	eb 	. 
	res 6,(hl)		;2b33	cb b6 	. . 
	ld hl,l0100h		;2b35	21 00 01 	! . . 
	ld (0c19eh),hl		;2b38	22 9e c1 	" . . 
	ld a,0a8h		;2b3b	3e a8 	> . 
	call 00a99h		;2b3d	cd 99 0a 	. . . 
	ld a,(de)			;2b40	1a 	. 
	dec a			;2b41	3d 	= 
	ret nz			;2b42	c0 	. 
	ret			;2b43	c9 	. 
	ld ix,0c640h		;2b44	dd 21 40 c6 	. ! @ . 
	ld b,019h		;2b48	06 19 	. . 
	rst 28h			;2b4a	ef 	. 
	ld ix,0c520h		;2b4b	dd 21 20 c5 	. !   . 
	ld b,009h		;2b4f	06 09 	. . 
	rst 28h			;2b51	ef 	. 
	ret			;2b52	c9 	. 
	ld hl,l09bfh		;2b53	21 bf 09 	! . . 
	jr l2b5bh		;2b56	18 03 	. . 
	ld hl,l09adh		;2b58	21 ad 09 	! . . 
l2b5bh:
	ld a,(0c522h)		;2b5b	3a 22 c5 	: " . 
	push af			;2b5e	f5 	. 
	ld a,098h		;2b5f	3e 98 	> . 
	ld b,009h		;2b61	06 09 	. . 
	ld de,0c520h		;2b63	11 20 c5 	.   . 
	call 00971h		;2b66	cd 71 09 	. q . 
	pop af			;2b69	f1 	. 
	ld (0c522h),a		;2b6a	32 22 c5 	2 " . 
	ret			;2b6d	c9 	. 
	ld a,003h		;2b6e	3e 03 	> . 
	call sub_092bh		;2b70	cd 2b 09 	. + . 
	jp c,l06dah		;2b73	da da 06 	. . . 
	ld bc,06b91h		;2b76	01 91 6b 	. . k 
	call 0225fh		;2b79	cd 5f 22 	. _ " 
	ld a,052h		;2b7c	3e 52 	> R 
	rst 30h			;2b7e	f7 	. 
	ld a,03ah		;2b7f	3e 3a 	> : 
	ld b,004h		;2b81	06 04 	. . 
	call 022f1h		;2b83	cd f1 22 	. . " 
	ld ix,(0c196h)		;2b86	dd 2a 96 c1 	. * . . 
	ld de,l00f0h		;2b8a	11 f0 00 	. . . 
	call 0227ah		;2b8d	cd 7a 22 	. z " 
	ret			;2b90	c9 	. 
	inc b			;2b91	04 	. 
	inc b			;2b92	04 	. 
	nop			;2b93	00 	. 
	djnz $+60		;2b94	10 3a 	. : 
	jr nc,$-50		;2b96	30 cc 	0 . 
	rra			;2b98	1f 	. 
	jp c,06beah		;2b99	da ea 6b 	. . k 
	ld hl,0c198h		;2b9c	21 98 c1 	! . . 
	bit 0,(hl)		;2b9f	cb 46 	. F 
	jr nz,l2bb7h		;2ba1	20 14 	  . 
	inc l			;2ba3	2c 	, 
	inc (hl)			;2ba4	34 	4 
	ld a,(hl)			;2ba5	7e 	~ 
	cp 04eh		;2ba6	fe 4e 	. N 
	jr c,l2bb3h		;2ba8	38 09 	8 . 
	ld (hl),000h		;2baa	36 00 	6 . 
	dec l			;2bac	2d 	- 
	inc (hl)			;2bad	34 	4 
	ld a,0a2h		;2bae	3e a2 	> . 
	call 00a99h		;2bb0	cd 99 0a 	. . . 
l2bb3h:
	ld b,004h		;2bb3	06 04 	. . 
	rst 28h			;2bb5	ef 	. 
	ret			;2bb6	c9 	. 
l2bb7h:
	ld ix,(0c196h)		;2bb7	dd 2a 96 c1 	. * . . 
	ld de,0fff5h		;2bbb	11 f5 ff 	. . . 
	call 0227ah		;2bbe	cd 7a 22 	. z " 
	ld hl,(0c196h)		;2bc1	2a 96 c1 	* . . 
	rst 18h			;2bc4	df 	. 
	ld hl,(0c196h)		;2bc5	2a 96 c1 	* . . 
	ld bc,l0002h+2		;2bc8	01 04 00 	. . . 
	add hl,bc			;2bcb	09 	. 
	ld a,(hl)			;2bcc	7e 	~ 
	cp 02ch		;2bcd	fe 2c 	. , 
	jr nc,l2bd7h		;2bcf	30 06 	0 . 
	ld de,000c0h		;2bd1	11 c0 00 	. . . 
	call 02298h		;2bd4	cd 98 22 	. . " 
l2bd7h:
	ld hl,(0c196h)		;2bd7	2a 96 c1 	* . . 
	ld de,0ff10h		;2bda	11 10 ff 	. . . 
	rst 8			;2bdd	cf 	. 
	ld hl,(0c196h)		;2bde	2a 96 c1 	* . . 
	ld bc,l0006h+1		;2be1	01 07 00 	. . . 
	add hl,bc			;2be4	09 	. 
	ld a,(hl)			;2be5	7e 	~ 
	cp 040h		;2be6	fe 40 	. @ 
	jr nc,l2bf0h		;2be8	30 06 	0 . 
	ld b,004h		;2bea	06 04 	. . 
	call l24a9h		;2bec	cd a9 24 	. . $ 
	ret			;2bef	c9 	. 
l2bf0h:
	ld hl,0c19ah		;2bf0	21 9a c1 	! . . 
l2bf3h:
	inc (hl)			;2bf3	34 	4 
	ld a,(hl)			;2bf4	7e 	~ 
	ld c,a			;2bf5	4f 	O 
	and 007h		;2bf6	e6 07 	. . 
	jr nz,l2c03h		;2bf8	20 09 	  . 
	ld a,c			;2bfa	79 	y 
	rra			;2bfb	1f 	. 
	rra			;2bfc	1f 	. 
	rra			;2bfd	1f 	. 
	and 001h		;2bfe	e6 01 	. . 
	add a,052h		;2c00	c6 52 	. R 
	rst 30h			;2c02	f7 	. 
l2c03h:
	ld b,004h		;2c03	06 04 	. . 
	rst 28h			;2c05	ef 	. 
	ret			;2c06	c9 	. 
	ld a,00bh		;2c07	3e 0b 	> . 
	call sub_092bh		;2c09	cd 2b 09 	. + . 
	jp c,l06dah		;2c0c	da da 06 	. . . 
	ld bc,06c20h		;2c0f	01 20 6c 	.   l 
	call 0225fh		;2c12	cd 5f 22 	. _ " 
	ld a,068h		;2c15	3e 68 	> h 
	rst 30h			;2c17	f7 	. 
	ld a,03ah		;2c18	3e 3a 	> : 
	ld b,006h		;2c1a	06 06 	. . 
	call 022f1h		;2c1c	cd f1 22 	. . " 
	ret			;2c1f	c9 	. 
	ld (bc),a			;2c20	02 	. 
	dec b			;2c21	05 	. 
	nop			;2c22	00 	. 
	djnz $+60		;2c23	10 3a 	. : 
	jr nc,l2bf3h		;2c25	30 cc 	0 . 
	rra			;2c27	1f 	. 
	jp c,06c60h		;2c28	da 60 6c 	. ` l 
	ld hl,0c198h		;2c2b	21 98 c1 	! . . 
	bit 0,(hl)		;2c2e	cb 46 	. F 
	jr nz,l2c46h		;2c30	20 14 	  . 
	inc l			;2c32	2c 	, 
	inc (hl)			;2c33	34 	4 
	ld a,(hl)			;2c34	7e 	~ 
	cp 04eh		;2c35	fe 4e 	. N 
	jr c,l2c42h		;2c37	38 09 	8 . 
	ld (hl),000h		;2c39	36 00 	6 . 
	dec l			;2c3b	2d 	- 
	inc (hl)			;2c3c	34 	4 
	ld a,0a2h		;2c3d	3e a2 	> . 
	call 00a99h		;2c3f	cd 99 0a 	. . . 
l2c42h:
	ld b,006h		;2c42	06 06 	. . 
	rst 28h			;2c44	ef 	. 
	ret			;2c45	c9 	. 
l2c46h:
	ld hl,(0c196h)		;2c46	2a 96 c1 	* . . 
	ld de,0ffd0h		;2c49	11 d0 ff 	. . . 
	rst 18h			;2c4c	df 	. 
	ld hl,(0c196h)		;2c4d	2a 96 c1 	* . . 
	ld de,0fe00h		;2c50	11 00 fe 	. . . 
	rst 8			;2c53	cf 	. 
	ld hl,(0c196h)		;2c54	2a 96 c1 	* . . 
	ld bc,l0006h+1		;2c57	01 07 00 	. . . 
	add hl,bc			;2c5a	09 	. 
	ld a,(hl)			;2c5b	7e 	~ 
	cp 03ch		;2c5c	fe 3c 	. < 
	jr nc,l2c66h		;2c5e	30 06 	0 . 
	ld b,006h		;2c60	06 06 	. . 
	call l24a9h		;2c62	cd a9 24 	. . $ 
	ret			;2c65	c9 	. 
l2c66h:
	ld hl,0c19ah		;2c66	21 9a c1 	! . . 
	inc (hl)			;2c69	34 	4 
	ld a,(hl)			;2c6a	7e 	~ 
	and 003h		;2c6b	e6 03 	. . 
	jr nz,l2c77h		;2c6d	20 08 	  . 
	ld a,(hl)			;2c6f	7e 	~ 
	rra			;2c70	1f 	. 
	rra			;2c71	1f 	. 
	and 001h		;2c72	e6 01 	. . 
	add a,068h		;2c74	c6 68 	. h 
	rst 30h			;2c76	f7 	. 
l2c77h:
	ld b,006h		;2c77	06 06 	. . 
	rst 28h			;2c79	ef 	. 
	ret			;2c7a	c9 	. 
	ld hl,0c198h		;2c7b	21 98 c1 	! . . 
	inc (hl)			;2c7e	34 	4 
	ld a,(hl)			;2c7f	7e 	~ 
l2c80h:
	cp 038h		;2c80	fe 38 	. 8 
	jp nc,l06dah		;2c82	d2 da 06 	. . . 
	rra			;2c85	1f 	. 
	rra			;2c86	1f 	. 
	rra			;2c87	1f 	. 
	and 007h		;2c88	e6 07 	. . 
	ld e,a			;2c8a	5f 	_ 
	ld d,000h		;2c8b	16 00 	. . 
	ld hl,06ca1h		;2c8d	21 a1 6c 	! . l 
	add hl,de			;2c90	19 	. 
	ld a,(hl)			;2c91	7e 	~ 
	ld (0d396h),a		;2c92	32 96 d3 	2 . . 
	ret			;2c95	c9 	. 
	ld hl,0c198h		;2c96	21 98 c1 	! . . 
	inc (hl)			;2c99	34 	4 
	ld a,(hl)			;2c9a	7e 	~ 
	neg		;2c9b	ed 44 	. D 
	add a,037h		;2c9d	c6 37 	. 7 
	jr l2c80h		;2c9f	18 df 	. . 
	ld hl,(01626h)		;2ca1	2a 26 16 	* & . 
	ld (de),a			;2ca4	12 	. 
	ld (bc),a			;2ca5	02 	. 
	inc bc			;2ca6	03 	. 
	inc b			;2ca7	04 	. 
	call 06cc5h		;2ca8	cd c5 6c 	. . l 
	call 06d04h		;2cab	cd 04 6d 	. . m 
	ld ix,0c006h		;2cae	dd 21 06 c0 	. ! . . 
	ld b,007h		;2cb2	06 07 	. . 
l2cb4h:
	push bc			;2cb4	c5 	. 
	bit 7,(ix+000h)		;2cb5	dd cb 00 7e 	. . . ~ 
	call nz,06e64h		;2cb9	c4 64 6e 	. d n 
	ld de,l0020h		;2cbc	11 20 00 	.   . 
	add ix,de		;2cbf	dd 19 	. . 
	pop bc			;2cc1	c1 	. 
	djnz l2cb4h		;2cc2	10 f0 	. . 
	ret			;2cc4	c9 	. 
	ld de,0c002h		;2cc5	11 02 c0 	. . . 
	call 06cd4h		;2cc8	cd d4 6c 	. . l 
	inc de			;2ccb	13 	. 
	call 06cd4h		;2ccc	cd d4 6c 	. . l 
	inc de			;2ccf	13 	. 
	call 06cd4h		;2cd0	cd d4 6c 	. . l 
	ret			;2cd3	c9 	. 
	ld a,(de)			;2cd4	1a 	. 
	bit 7,a		;2cd5	cb 7f 	.  
	ret z			;2cd7	c8 	. 
	and 07fh		;2cd8	e6 7f 	.  
	ld hl,06dcch		;2cda	21 cc 6d 	! . m 
	dec a			;2cdd	3d 	= 
	ld b,000h		;2cde	06 00 	. . 
	ld c,a			;2ce0	4f 	O 
	add hl,bc			;2ce1	09 	. 
	bit 7,(hl)		;2ce2	cb 7e 	. ~ 
	jr z,l2cf1h		;2ce4	28 0b 	( . 
	ld a,(de)			;2ce6	1a 	. 
	ld (0c001h),a		;2ce7	32 01 c0 	2 . . 
	xor a			;2cea	af 	. 
	ld (de),a			;2ceb	12 	. 
	pop hl			;2cec	e1 	. 
	pop hl			;2ced	e1 	. 
	jp 06cabh		;2cee	c3 ab 6c 	. . l 
l2cf1h:
	ld a,(0c005h)		;2cf1	3a 05 c0 	: . . 
	cp (hl)			;2cf4	be 	. 
	jr z,l2cf9h		;2cf5	28 02 	( . 
	jr nc,l2d01h		;2cf7	30 08 	0 . 
l2cf9h:
	ld a,(de)			;2cf9	1a 	. 
	ld (0c001h),a		;2cfa	32 01 c0 	2 . . 
	ld a,(hl)			;2cfd	7e 	~ 
	ld (0c005h),a		;2cfe	32 05 c0 	2 . . 
l2d01h:
	xor a			;2d01	af 	. 
	ld (de),a			;2d02	12 	. 
	ret			;2d03	c9 	. 
	ld a,(0c001h)		;2d04	3a 01 c0 	: . . 
	bit 7,a		;2d07	cb 7f 	.  
	jp z,07159h		;2d09	ca 59 71 	. Y q 
	cp 0aah		;2d0c	fe aa 	. . 
	jp nc,07159h		;2d0e	d2 59 71 	. Y q 
	sub 081h		;2d11	d6 81 	. . 
	ret m			;2d13	f8 	. 
	ld c,a			;2d14	4f 	O 
	ld b,000h		;2d15	06 00 	. . 
	ld hl,06d28h		;2d17	21 28 6d 	! ( m 
	add hl,bc			;2d1a	09 	. 
	add hl,bc			;2d1b	09 	. 
	ld c,(hl)			;2d1c	4e 	N 
	inc hl			;2d1d	23 	# 
	ld b,(hl)			;2d1e	46 	F 
	ld de,l0051h		;2d1f	11 51 00 	. Q . 
	add hl,de			;2d22	19 	. 
	ld a,(hl)			;2d23	7e 	~ 
	inc hl			;2d24	23 	# 
	ld h,(hl)			;2d25	66 	f 
	ld l,a			;2d26	6f 	o 
	jp (hl)			;2d27	e9 	. 
	dec l			;2d28	2d 	- 
	ld (hl),d			;2d29	72 	r 
	sub h			;2d2a	94 	. 
	ld (hl),e			;2d2b	73 	s 
	and (hl)			;2d2c	a6 	. 
	ld (hl),h			;2d2d	74 	t 
	ld b,(hl)			;2d2e	46 	F 
	ld (hl),l			;2d2f	75 	u 
	add a,h			;2d30	84 	. 
	ld (hl),l			;2d31	75 	u 
	push hl			;2d32	e5 	. 
	halt			;2d33	76 	v 
	halt			;2d34	76 	v 
	ld (hl),a			;2d35	77 	w 
	xor 077h		;2d36	ee 77 	. w 
	add a,078h		;2d38	c6 78 	. x 
	ei			;2d3a	fb 	. 
	ld a,c			;2d3b	79 	y 
	jr l2db8h		;2d3c	18 7a 	. z 
	jr l2dbah		;2d3e	18 7a 	. z 
	cp d			;2d40	ba 	. 
	ld a,e			;2d41	7b 	{ 
	call nc,0ee7bh		;2d42	d4 7b ee 	. { . 
	ld a,e			;2d45	7b 	{ 
	ex af,af'			;2d46	08 	. 
	ld a,h			;2d47	7c 	| 
	dec e			;2d48	1d 	. 
	ld a,h			;2d49	7c 	| 
	ld (0497ch),a		;2d4a	32 7c 49 	2 | I 
	ld a,h			;2d4d	7c 	| 
	ld h,b			;2d4e	60 	` 
	ld a,h			;2d4f	7c 	| 
	ld a,l			;2d50	7d 	} 
	ld a,h			;2d51	7c 	| 
	sbc a,c			;2d52	99 	. 
	ld a,h			;2d53	7c 	| 
	cp l			;2d54	bd 	. 
	ld a,h			;2d55	7c 	| 
	adc a,07ch		;2d56	ce 7c 	. | 
	call c,00d7ch		;2d58	dc 7c 0d 	. | . 
	ld a,l			;2d5b	7d 	} 
	ld b,h			;2d5c	44 	D 
	ld a,l			;2d5d	7d 	} 
	ld l,l			;2d5e	6d 	m 
	ld a,l			;2d5f	7d 	} 
	add a,a			;2d60	87 	. 
	ld a,l			;2d61	7d 	} 
	sbc a,h			;2d62	9c 	. 
	ld a,l			;2d63	7d 	} 
	cp h			;2d64	bc 	. 
	ld a,l			;2d65	7d 	} 
	pop de			;2d66	d1 	. 
	ld a,l			;2d67	7d 	} 
	and 07dh		;2d68	e6 7d 	. } 
	dec c			;2d6a	0d 	. 
	ld a,(hl)			;2d6b	7e 	~ 
	inc a			;2d6c	3c 	< 
	ld a,(hl)			;2d6d	7e 	~ 
	inc a			;2d6e	3c 	< 
	ld a,(hl)			;2d6f	7e 	~ 
	ld c,a			;2d70	4f 	O 
	ld a,(hl)			;2d71	7e 	~ 
	sub (hl)			;2d72	96 	. 
	ld a,(hl)			;2d73	7e 	~ 
	ld e,(hl)			;2d74	5e 	^ 
	ld l,(hl)			;2d75	6e 	n 
	sub (hl)			;2d76	96 	. 
	ld a,(hl)			;2d77	7e 	~ 
	pop bc			;2d78	c1 	. 
	ld a,(hl)			;2d79	7e 	~ 
	push af			;2d7a	f5 	. 
	ld l,l			;2d7b	6d 	m 
	push af			;2d7c	f5 	. 
	ld l,l			;2d7d	6d 	m 
	push af			;2d7e	f5 	. 
	ld l,l			;2d7f	6d 	m 
	push af			;2d80	f5 	. 
	ld l,l			;2d81	6d 	m 
	push af			;2d82	f5 	. 
	ld l,l			;2d83	6d 	m 
	push af			;2d84	f5 	. 
	ld l,l			;2d85	6d 	m 
	push af			;2d86	f5 	. 
	ld l,l			;2d87	6d 	m 
	push af			;2d88	f5 	. 
	ld l,l			;2d89	6d 	m 
	push af			;2d8a	f5 	. 
	ld l,l			;2d8b	6d 	m 
	push af			;2d8c	f5 	. 
	ld l,l			;2d8d	6d 	m 
	push af			;2d8e	f5 	. 
	ld l,l			;2d8f	6d 	m 
	push af			;2d90	f5 	. 
	ld l,l			;2d91	6d 	m 
	ex af,af'			;2d92	08 	. 
	ld l,(hl)			;2d93	6e 	n 
	ex af,af'			;2d94	08 	. 
	ld l,(hl)			;2d95	6e 	n 
	ex af,af'			;2d96	08 	. 
	ld l,(hl)			;2d97	6e 	n 
	ex af,af'			;2d98	08 	. 
	ld l,(hl)			;2d99	6e 	n 
	ex af,af'			;2d9a	08 	. 
	ld l,(hl)			;2d9b	6e 	n 
	ex af,af'			;2d9c	08 	. 
	ld l,(hl)			;2d9d	6e 	n 
	ex af,af'			;2d9e	08 	. 
	ld l,(hl)			;2d9f	6e 	n 
	jr l2e10h		;2da0	18 6e 	. n 
	inc bc			;2da2	03 	. 
	ld l,(hl)			;2da3	6e 	n 
	ex af,af'			;2da4	08 	. 
	ld l,(hl)			;2da5	6e 	n 
	ex af,af'			;2da6	08 	. 
	ld l,(hl)			;2da7	6e 	n 
	ex af,af'			;2da8	08 	. 
	ld l,(hl)			;2da9	6e 	n 
	ld e,06eh		;2daa	1e 6e 	. n 
	ld e,06eh		;2dac	1e 6e 	. n 
	ld e,06eh		;2dae	1e 6e 	. n 
	jr $+112		;2db0	18 6e 	. n 
	ex af,af'			;2db2	08 	. 
	ld l,(hl)			;2db3	6e 	n 
	ld e,06eh		;2db4	1e 6e 	. n 
	ex af,af'			;2db6	08 	. 
	ld l,(hl)			;2db7	6e 	n 
l2db8h:
	ex af,af'			;2db8	08 	. 
	ld l,(hl)			;2db9	6e 	n 
l2dbah:
	jp m,0136dh		;2dba	fa 6d 13 	. m . 
	ld l,(hl)			;2dbd	6e 	n 
	ld e,06eh		;2dbe	1e 6e 	. n 
	ex af,af'			;2dc0	08 	. 
	ld l,(hl)			;2dc1	6e 	n 
	jr $+112		;2dc2	18 6e 	. n 
	inc de			;2dc4	13 	. 
	ld l,(hl)			;2dc5	6e 	n 
	ld e,(hl)			;2dc6	5e 	^ 
	ld l,(hl)			;2dc7	6e 	n 
	inc de			;2dc8	13 	. 
	ld l,(hl)			;2dc9	6e 	n 
	push af			;2dca	f5 	. 
	ld l,l			;2dcb	6d 	m 
	add a,b			;2dcc	80 	. 
	add a,b			;2dcd	80 	. 
	add a,b			;2dce	80 	. 
	add a,b			;2dcf	80 	. 
	add a,b			;2dd0	80 	. 
	add a,b			;2dd1	80 	. 
	add a,b			;2dd2	80 	. 
	add a,b			;2dd3	80 	. 
	add a,b			;2dd4	80 	. 
	add a,b			;2dd5	80 	. 
	add a,b			;2dd6	80 	. 
	add a,b			;2dd7	80 	. 
	nop			;2dd8	00 	. 
	nop			;2dd9	00 	. 
	nop			;2dda	00 	. 
	nop			;2ddb	00 	. 
	inc b			;2ddc	04 	. 
	nop			;2ddd	00 	. 
	nop			;2dde	00 	. 
	djnz $+18		;2ddf	10 10 	. . 
	djnz l2df3h		;2de1	10 10 	. . 
	djnz $+114		;2de3	10 70 	. p 
	ld (hl),b			;2de5	70 	p 
	djnz $+18		;2de6	10 10 	. . 
	djnz l2dfah		;2de8	10 10 	. . 
	djnz $+18		;2dea	10 10 	. . 
	djnz $+10		;2dec	10 08 	. . 
	jr nz,l2df4h		;2dee	20 04 	  . 
	djnz $+18		;2df0	10 10 	. . 
sub_2df2h:
	add a,b			;2df2	80 	. 
l2df3h:
	add a,b			;2df3	80 	. 
l2df4h:
	add a,b			;2df4	80 	. 
	ld a,004h		;2df5	3e 04 	> . 
	ld (0c000h),a		;2df7	32 00 c0 	2 . . 
l2dfah:
	call 07159h		;2dfa	cd 59 71 	. Y q 
	ld de,0c006h		;2dfd	11 06 c0 	. . . 
	jp 06e3bh		;2e00	c3 3b 6e 	. ; n 
	ld hl,0c066h		;2e03	21 66 c0 	! f . 
	set 2,(hl)		;2e06	cb d6 	. . 
	ld de,0c0c6h		;2e08	11 c6 c0 	. . . 
	ld hl,0c046h		;2e0b	21 46 c0 	! F . 
	set 2,(hl)		;2e0e	cb d6 	. . 
l2e10h:
	jp 06e33h		;2e10	c3 33 6e 	. 3 n 
	ld hl,0c066h		;2e13	21 66 c0 	! f . 
	set 2,(hl)		;2e16	cb d6 	. . 
	ld de,0c0a6h		;2e18	11 a6 c0 	. . . 
	jp 06e26h		;2e1b	c3 26 6e 	. & n 
	ld de,0c086h		;2e1e	11 86 c0 	. . . 
	ld hl,0c006h		;2e21	21 06 c0 	! . . 
	set 2,(hl)		;2e24	cb d6 	. . 
	ld hl,0c026h		;2e26	21 26 c0 	! & . 
	set 2,(hl)		;2e29	cb d6 	. . 
	ld hl,0c046h		;2e2b	21 46 c0 	! F . 
	set 2,(hl)		;2e2e	cb d6 	. . 
	jp 06e33h		;2e30	c3 33 6e 	. 3 n 
	ld a,0ffh		;2e33	3e ff 	> . 
	out (07fh),a		;2e35	d3 7f 	.  
	ld a,0dfh		;2e37	3e df 	> . 
	out (07fh),a		;2e39	d3 7f 	.  
	ld h,b			;2e3b	60 	` 
	ld l,c			;2e3c	69 	i 
	ld b,(hl)			;2e3d	46 	F 
	inc hl			;2e3e	23 	# 
l2e3fh:
	push bc			;2e3f	c5 	. 
	ld bc,l0006h+3		;2e40	01 09 00 	. . . 
	ldir		;2e43	ed b0 	. . 
	ld a,020h		;2e45	3e 20 	>   
	ld (de),a			;2e47	12 	. 
	inc de			;2e48	13 	. 
	ld a,001h		;2e49	3e 01 	> . 
	ld (de),a			;2e4b	12 	. 
	inc de			;2e4c	13 	. 
	xor a			;2e4d	af 	. 
	ld (de),a			;2e4e	12 	. 
	inc de			;2e4f	13 	. 
	ld (de),a			;2e50	12 	. 
	inc de			;2e51	13 	. 
	ld (de),a			;2e52	12 	. 
	push hl			;2e53	e5 	. 
	ld hl,l0012h		;2e54	21 12 00 	! . . 
	add hl,de			;2e57	19 	. 
	ex de,hl			;2e58	eb 	. 
	pop hl			;2e59	e1 	. 
	inc de			;2e5a	13 	. 
	pop bc			;2e5b	c1 	. 
	djnz l2e3fh		;2e5c	10 e1 	. . 
	ld a,080h		;2e5e	3e 80 	> . 
	ld (0c001h),a		;2e60	32 01 c0 	2 . . 
	ret			;2e63	c9 	. 
	ld e,(ix+00ch)		;2e64	dd 5e 0c 	. ^ . 
	ld d,(ix+00dh)		;2e67	dd 56 0d 	. V . 
	inc de			;2e6a	13 	. 
	ld (ix+00ch),e		;2e6b	dd 73 0c 	. s . 
	ld (ix+00dh),d		;2e6e	dd 72 0d 	. r . 
	ld l,(ix+00ah)		;2e71	dd 6e 0a 	. n . 
	ld h,(ix+00bh)		;2e74	dd 66 0b 	. f . 
	or a			;2e77	b7 	. 
	sbc hl,de		;2e78	ed 52 	. R 
	call z,06fcah		;2e7a	cc ca 6f 	. . o 
	ld e,(ix+010h)		;2e7d	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;2e80	dd 56 11 	. V . 
	ld a,e			;2e83	7b 	{ 
	or d			;2e84	b2 	. 
	jr nz,l2e8eh		;2e85	20 07 	  . 
	ld (ix+016h),00fh		;2e87	dd 36 16 0f 	. 6 . . 
	jp 06f3ch		;2e8b	c3 3c 6f 	. < o 
l2e8eh:
	bit 5,(ix+000h)		;2e8e	dd cb 00 6e 	. . . n 
	jr nz,l2eb9h		;2e92	20 25 	  % 
	ld a,(ix+006h)		;2e94	dd 7e 06 	. ~ . 
	or a			;2e97	b7 	. 
	jr nz,l2eaeh		;2e98	20 14 	  . 
	ld (ix+012h),e		;2e9a	dd 73 12 	. s . 
	ld (ix+013h),d		;2e9d	dd 72 13 	. r . 
	jp 06ef5h		;2ea0	c3 f5 6e 	. . n 
	dec a			;2ea3	3d 	= 
	ld c,a			;2ea4	4f 	O 
	ld b,000h		;2ea5	06 00 	. . 
	add hl,bc			;2ea7	09 	. 
	add hl,bc			;2ea8	09 	. 
	ld a,(hl)			;2ea9	7e 	~ 
	inc hl			;2eaa	23 	# 
	ld h,(hl)			;2eab	66 	f 
	ld l,a			;2eac	6f 	o 
	ret			;2ead	c9 	. 
l2eaeh:
	ld hl,07f59h		;2eae	21 59 7f 	! Y  
	call 06ea3h		;2eb1	cd a3 6e 	. . n 
	call 06f94h		;2eb4	cd 94 6f 	. . o 
	jr l2ef5h		;2eb7	18 3c 	. < 
l2eb9h:
	push de			;2eb9	d5 	. 
	ld l,(ix+014h)		;2eba	dd 6e 14 	. n . 
	ld h,(ix+015h)		;2ebd	dd 66 15 	. f . 
	or a			;2ec0	b7 	. 
	sbc hl,de		;2ec1	ed 52 	. R 
	push af			;2ec3	f5 	. 
	ld a,l			;2ec4	7d 	} 
	jp p,06ecah		;2ec5	f2 ca 6e 	. . n 
	neg		;2ec8	ed 44 	. D 
	ld h,a			;2eca	67 	g 
	ld e,(ix+00ch)		;2ecb	dd 5e 0c 	. ^ . 
	call 0720eh		;2ece	cd 0e 72 	. . r 
	ld e,(ix+00ah)		;2ed1	dd 5e 0a 	. ^ . 
	call 0721ah		;2ed4	cd 1a 72 	. . r 
	ld e,a			;2ed7	5f 	_ 
	ld d,000h		;2ed8	16 00 	. . 
	pop af			;2eda	f1 	. 
	ld a,e			;2edb	7b 	{ 
	jp p,06ee5h		;2edc	f2 e5 6e 	. . n 
	neg		;2edf	ed 44 	. D 
	jr z,l2ee5h		;2ee1	28 02 	( . 
	dec d			;2ee3	15 	. 
	ld e,a			;2ee4	5f 	_ 
l2ee5h:
	pop hl			;2ee5	e1 	. 
	add hl,de			;2ee6	19 	. 
	ex de,hl			;2ee7	eb 	. 
	ld (ix+012h),e		;2ee8	dd 73 12 	. s . 
	ld (ix+013h),d		;2eeb	dd 72 13 	. r . 
	ld a,(ix+006h)		;2eee	dd 7e 06 	. ~ . 
	or a			;2ef1	b7 	. 
	jp nz,06eaeh		;2ef2	c2 ae 6e 	. . n 
l2ef5h:
	ld a,(ix+007h)		;2ef5	dd 7e 07 	. ~ . 
	or a			;2ef8	b7 	. 
	jr nz,l2f06h		;2ef9	20 0b 	  . 
	ld a,(ix+008h)		;2efb	dd 7e 08 	. ~ . 
	cpl			;2efe	2f 	/ 
	and 00fh		;2eff	e6 0f 	. . 
	ld (ix+016h),a		;2f01	dd 77 16 	. w . 
	jr l2f11h		;2f04	18 0b 	. . 
l2f06h:
	res 7,a		;2f06	cb bf 	. . 
	ld hl,07ee4h		;2f08	21 e4 7e 	! . ~ 
	call 06ea3h		;2f0b	cd a3 6e 	. . n 
	call 06f5ah		;2f0e	cd 5a 6f 	. Z o 
l2f11h:
	bit 6,(ix+000h)		;2f11	dd cb 00 76 	. . . v 
	jr nz,l2f3ch		;2f15	20 25 	  % 
	ld a,(ix+001h)		;2f17	dd 7e 01 	. ~ . 
	and 00fh		;2f1a	e6 0f 	. . 
	ld c,a			;2f1c	4f 	O 
	ld b,000h		;2f1d	06 00 	. . 
	ld hl,06f4fh		;2f1f	21 4f 6f 	! O o 
	add hl,bc			;2f22	09 	. 
	ld c,(hl)			;2f23	4e 	N 
	ld a,(ix+012h)		;2f24	dd 7e 12 	. ~ . 
	and 00fh		;2f27	e6 0f 	. . 
	or c			;2f29	b1 	. 
	call 07151h		;2f2a	cd 51 71 	. Q q 
	ld a,(ix+012h)		;2f2d	dd 7e 12 	. ~ . 
	and 0f0h		;2f30	e6 f0 	. . 
	or (ix+013h)		;2f32	dd b6 13 	. . . 
	rrca			;2f35	0f 	. 
	rrca			;2f36	0f 	. 
	rrca			;2f37	0f 	. 
	rrca			;2f38	0f 	. 
	call 07151h		;2f39	cd 51 71 	. Q q 
l2f3ch:
	ld a,(ix+001h)		;2f3c	dd 7e 01 	. ~ . 
	and 00fh		;2f3f	e6 0f 	. . 
	ld c,a			;2f41	4f 	O 
	ld b,000h		;2f42	06 00 	. . 
	ld hl,06f53h		;2f44	21 53 6f 	! S o 
	add hl,bc			;2f47	09 	. 
	ld a,(hl)			;2f48	7e 	~ 
	or (ix+016h)		;2f49	dd b6 16 	. . . 
	jp 07151h		;2f4c	c3 51 71 	. Q q 
	add a,b			;2f4f	80 	. 
	and b			;2f50	a0 	. 
	ret nz			;2f51	c0 	. 
	ret nz			;2f52	c0 	. 
	sub b			;2f53	90 	. 
	or b			;2f54	b0 	. 
	ret nc			;2f55	d0 	. 
	ret p			;2f56	f0 	. 
l2f57h:
	ld (ix+00eh),a		;2f57	dd 77 0e 	. w . 
l2f5ah:
	push hl			;2f5a	e5 	. 
	ld a,(ix+00eh)		;2f5b	dd 7e 0e 	. ~ . 
	srl a		;2f5e	cb 3f 	. ? 
	push af			;2f60	f5 	. 
	ld c,a			;2f61	4f 	O 
	ld b,000h		;2f62	06 00 	. . 
	add hl,bc			;2f64	09 	. 
	pop af			;2f65	f1 	. 
	ld a,(hl)			;2f66	7e 	~ 
	pop hl			;2f67	e1 	. 
	jr c,l2f7eh		;2f68	38 14 	8 . 
	rrca			;2f6a	0f 	. 
	rrca			;2f6b	0f 	. 
	rrca			;2f6c	0f 	. 
	rrca			;2f6d	0f 	. 
	or a			;2f6e	b7 	. 
	jr z,l2f57h		;2f6f	28 e6 	( . 
	cp 010h		;2f71	fe 10 	. . 
	jr nz,l2f7ah		;2f73	20 05 	  . 
	dec (ix+00eh)		;2f75	dd 35 0e 	. 5 . 
	jr l2f5ah		;2f78	18 e0 	. . 
l2f7ah:
	cp 020h		;2f7a	fe 20 	.   
	jr z,l2f89h		;2f7c	28 0b 	( . 
l2f7eh:
	inc (ix+00eh)		;2f7e	dd 34 0e 	. 4 . 
	or 0f0h		;2f81	f6 f0 	. . 
	add a,(ix+008h)		;2f83	dd 86 08 	. . . 
	inc a			;2f86	3c 	< 
	jr c,l2f8ah		;2f87	38 01 	8 . 
l2f89h:
	xor a			;2f89	af 	. 
l2f8ah:
	cpl			;2f8a	2f 	/ 
	and 00fh		;2f8b	e6 0f 	. . 
	ld (ix+016h),a		;2f8d	dd 77 16 	. w . 
	ret			;2f90	c9 	. 
	ld (ix+00fh),a		;2f91	dd 77 0f 	. w . 
l2f94h:
	push hl			;2f94	e5 	. 
	ld a,(ix+00fh)		;2f95	dd 7e 0f 	. ~ . 
	srl a		;2f98	cb 3f 	. ? 
	push af			;2f9a	f5 	. 
	ld c,a			;2f9b	4f 	O 
	ld b,000h		;2f9c	06 00 	. . 
	add hl,bc			;2f9e	09 	. 
	pop af			;2f9f	f1 	. 
	ld a,(hl)			;2fa0	7e 	~ 
	pop hl			;2fa1	e1 	. 
	jr c,l2fb8h		;2fa2	38 14 	8 . 
	rrca			;2fa4	0f 	. 
	rrca			;2fa5	0f 	. 
	rrca			;2fa6	0f 	. 
	rrca			;2fa7	0f 	. 
	or a			;2fa8	b7 	. 
	jp z,06f91h		;2fa9	ca 91 6f 	. . o 
	cp 010h		;2fac	fe 10 	. . 
	jr nz,l2fb8h		;2fae	20 08 	  . 
	dec (ix+00fh)		;2fb0	dd 35 0f 	. 5 . 
	jr l2f94h		;2fb3	18 df 	. . 
	cp 020h		;2fb5	fe 20 	.   
	ret z			;2fb7	c8 	. 
l2fb8h:
	inc (ix+00fh)		;2fb8	dd 34 0f 	. 4 . 
	cpl			;2fbb	2f 	/ 
	and 00fh		;2fbc	e6 0f 	. . 
	ld l,a			;2fbe	6f 	o 
	ld h,000h		;2fbf	26 00 	& . 
	ex de,hl			;2fc1	eb 	. 
	add hl,de			;2fc2	19 	. 
	ld (ix+012h),l		;2fc3	dd 75 12 	. u . 
	ld (ix+013h),h		;2fc6	dd 74 13 	. t . 
	ret			;2fc9	c9 	. 
	ld e,(ix+003h)		;2fca	dd 5e 03 	. ^ . 
	ld d,(ix+004h)		;2fcd	dd 56 04 	. V . 
	ld a,(de)			;2fd0	1a 	. 
	inc de			;2fd1	13 	. 
	cp 0e0h		;2fd2	fe e0 	. . 
	jp nc,0705eh		;2fd4	d2 5e 70 	. ^ p 
	bit 3,(ix+000h)		;2fd7	dd cb 00 5e 	. . . ^ 
	jr nz,l303dh		;2fdb	20 60 	  ` 
	or a			;2fdd	b7 	. 
	jp p,07019h		;2fde	f2 19 70 	. . p 
	sub 080h		;2fe1	d6 80 	. . 
	jr z,l2fe8h		;2fe3	28 03 	( . 
	add a,(ix+005h)		;2fe5	dd 86 05 	. . . 
l2fe8h:
	ld hl,0717ch		;2fe8	21 7c 71 	! | q 
	ld c,a			;2feb	4f 	O 
	ld b,000h		;2fec	06 00 	. . 
	add hl,bc			;2fee	09 	. 
	add hl,bc			;2fef	09 	. 
	ld a,(hl)			;2ff0	7e 	~ 
	ld (ix+010h),a		;2ff1	dd 77 10 	. w . 
	inc hl			;2ff4	23 	# 
	ld a,(hl)			;2ff5	7e 	~ 
	ld (ix+011h),a		;2ff6	dd 77 11 	. w . 
	bit 5,(ix+000h)		;2ff9	dd cb 00 6e 	. . . n 
	jr z,l3057h		;2ffd	28 58 	( X 
	ld a,(de)			;2fff	1a 	. 
l3000h:
	inc de			;3000	13 	. 
	sub 080h		;3001	d6 80 	. . 
	add a,(ix+005h)		;3003	dd 86 05 	. . . 
	ld hl,0717ch		;3006	21 7c 71 	! | q 
	ld c,a			;3009	4f 	O 
	ld b,000h		;300a	06 00 	. . 
	add hl,bc			;300c	09 	. 
	add hl,bc			;300d	09 	. 
	ld a,(hl)			;300e	7e 	~ 
	ld (ix+014h),a		;300f	dd 77 14 	. w . 
	inc hl			;3012	23 	# 
	ld a,(hl)			;3013	7e 	~ 
	ld (ix+015h),a		;3014	dd 77 15 	. w . 
l3017h:
	ld a,(de)			;3017	1a 	. 
	inc de			;3018	13 	. 
	push de			;3019	d5 	. 
	ld h,a			;301a	67 	g 
	ld e,(ix+002h)		;301b	dd 5e 02 	. ^ . 
	call 0720eh		;301e	cd 0e 72 	. . r 
	pop de			;3021	d1 	. 
	ld (ix+00ah),l		;3022	dd 75 0a 	. u . 
	ld (ix+00bh),h		;3025	dd 74 0b 	. t . 
l3028h:
	xor a			;3028	af 	. 
	ld (ix+00eh),a		;3029	dd 77 0e 	. w . 
	ld (ix+00fh),a		;302c	dd 77 0f 	. w . 
	ld (ix+003h),e		;302f	dd 73 03 	. s . 
	ld (ix+004h),d		;3032	dd 72 04 	. r . 
	xor a			;3035	af 	. 
	ld (ix+00ch),a		;3036	dd 77 0c 	. w . 
	ld (ix+00dh),a		;3039	dd 77 0d 	. w . 
	ret			;303c	c9 	. 
l303dh:
	ld (ix+011h),a		;303d	dd 77 11 	. w . 
	ld a,(de)			;3040	1a 	. 
	inc de			;3041	13 	. 
	ld (ix+010h),a		;3042	dd 77 10 	. w . 
	bit 5,(ix+000h)		;3045	dd cb 00 6e 	. . . n 
	jr z,l3017h		;3049	28 cc 	( . 
	ld a,(de)			;304b	1a 	. 
	inc de			;304c	13 	. 
	ld (ix+015h),a		;304d	dd 77 15 	. w . 
	ld a,(de)			;3050	1a 	. 
	inc de			;3051	13 	. 
	ld (ix+014h),a		;3052	dd 77 14 	. w . 
	jr l3017h		;3055	18 c0 	. . 
l3057h:
	ld a,(de)			;3057	1a 	. 
	or a			;3058	b7 	. 
	jp p,07018h		;3059	f2 18 70 	. . p 
	jr l3028h		;305c	18 ca 	. . 
	ld hl,07071h		;305e	21 71 70 	! q p 
	push hl			;3061	e5 	. 
	and 01fh		;3062	e6 1f 	. . 
	ld hl,07075h		;3064	21 75 70 	! u p 
	ld c,a			;3067	4f 	O 
	ld b,000h		;3068	06 00 	. . 
	add hl,bc			;306a	09 	. 
	add hl,bc			;306b	09 	. 
	ld a,(hl)			;306c	7e 	~ 
	inc hl			;306d	23 	# 
	ld h,(hl)			;306e	66 	f 
	ld l,a			;306f	6f 	o 
	jp (hl)			;3070	e9 	. 
	inc de			;3071	13 	. 
	jp 06fd0h		;3072	c3 d0 6f 	. . o 
	and (hl)			;3075	a6 	. 
	ld (hl),b			;3076	70 	p 
	xor e			;3077	ab 	. 
	ld (hl),b			;3078	70 	p 
	call c,0b070h		;3079	dc 70 b0 	. p . 
	ld (hl),b			;307c	70 	p 
	rst 0			;307d	c7 	. 
	ld (hl),b			;307e	70 	p 
	pop de			;307f	d1 	. 
	ld (hl),b			;3080	70 	p 
	call m,01770h		;3081	fc 70 17 	. p . 
	ld (hl),c			;3084	71 	q 
	ld hl,(0cc71h)		;3085	2a 71 cc 	* q . 
	ld (hl),b			;3088	70 	p 
	rst 10h			;3089	d7 	. 
	ld (hl),b			;308a	70 	p 
	adc a,l			;308b	8d 	. 
	ld (hl),b			;308c	70 	p 
	dec de			;308d	1b 	. 
	ld a,(0c000h)		;308e	3a 00 c0 	: . . 
	ld (0c008h),a		;3091	32 08 c0 	2 . . 
	ld (0c028h),a		;3094	32 28 c0 	2 ( . 
	ld (0c048h),a		;3097	32 48 c0 	2 H . 
	ld (0c068h),a		;309a	32 68 c0 	2 h . 
	ret			;309d	c9 	. 
	ld a,(de)			;309e	1a 	. 
	add a,(ix+005h)		;309f	dd 86 05 	. . . 
	ld (ix+005h),a		;30a2	dd 77 05 	. w . 
	ret			;30a5	c9 	. 
	ld a,(de)			;30a6	1a 	. 
	ld (ix+002h),a		;30a7	dd 77 02 	. w . 
	ret			;30aa	c9 	. 
	ld a,(de)			;30ab	1a 	. 
	ld (ix+008h),a		;30ac	dd 77 08 	. w . 
	ret			;30af	c9 	. 
	ld a,(de)			;30b0	1a 	. 
	or 0e0h		;30b1	f6 e0 	. . 
	push af			;30b3	f5 	. 
	call 07151h		;30b4	cd 51 71 	. Q q 
	pop af			;30b7	f1 	. 
	or 0fch		;30b8	f6 fc 	. . 
	inc a			;30ba	3c 	< 
	jr nz,l30c2h		;30bb	20 05 	  . 
	res 6,(ix+000h)		;30bd	dd cb 00 b6 	. . . . 
	ret			;30c1	c9 	. 
l30c2h:
	set 6,(ix+000h)		;30c2	dd cb 00 f6 	. . . . 
	ret			;30c6	c9 	. 
	ld a,(de)			;30c7	1a 	. 
	ld (ix+007h),a		;30c8	dd 77 07 	. w . 
	ret			;30cb	c9 	. 
	ld a,(de)			;30cc	1a 	. 
	ld (ix+006h),a		;30cd	dd 77 06 	. w . 
	ret			;30d0	c9 	. 
	ex de,hl			;30d1	eb 	. 
	ld e,(hl)			;30d2	5e 	^ 
	inc hl			;30d3	23 	# 
	ld d,(hl)			;30d4	56 	V 
	dec de			;30d5	1b 	. 
	ret			;30d6	c9 	. 
	ld hl,0c006h		;30d7	21 06 c0 	! . . 
	res 2,(hl)		;30da	cb 96 	. . 
	xor a			;30dc	af 	. 
	ld (ix+000h),a		;30dd	dd 77 00 	. w . 
	ld (0c005h),a		;30e0	32 05 c0 	2 . . 
	ld a,0e4h		;30e3	3e e4 	> . 
	out (07fh),a		;30e5	d3 7f 	.  
	ld hl,0c026h		;30e7	21 26 c0 	! & . 
	res 2,(hl)		;30ea	cb 96 	. . 
	ld hl,0c046h		;30ec	21 46 c0 	! F . 
	res 2,(hl)		;30ef	cb 96 	. . 
	ld hl,0c066h		;30f1	21 66 c0 	! f . 
	res 2,(hl)		;30f4	cb 96 	. . 
	call 07142h		;30f6	cd 42 71 	. B q 
	pop hl			;30f9	e1 	. 
	pop hl			;30fa	e1 	. 
	ret			;30fb	c9 	. 
	ld a,(de)			;30fc	1a 	. 
	ld c,a			;30fd	4f 	O 
	inc de			;30fe	13 	. 
	ld a,(de)			;30ff	1a 	. 
	ld b,a			;3100	47 	G 
	push bc			;3101	c5 	. 
	push ix		;3102	dd e5 	. . 
	pop hl			;3104	e1 	. 
	dec (ix+009h)		;3105	dd 35 09 	. 5 . 
	ld c,(ix+009h)		;3108	dd 4e 09 	. N . 
	dec (ix+009h)		;310b	dd 35 09 	. 5 . 
	ld b,000h		;310e	06 00 	. . 
	add hl,bc			;3110	09 	. 
	ld (hl),d			;3111	72 	r 
	dec hl			;3112	2b 	+ 
	ld (hl),e			;3113	73 	s 
	pop de			;3114	d1 	. 
	dec de			;3115	1b 	. 
	ret			;3116	c9 	. 
	push ix		;3117	dd e5 	. . 
	pop hl			;3119	e1 	. 
	ld c,(ix+009h)		;311a	dd 4e 09 	. N . 
	ld b,000h		;311d	06 00 	. . 
	add hl,bc			;311f	09 	. 
	ld e,(hl)			;3120	5e 	^ 
	inc hl			;3121	23 	# 
	ld d,(hl)			;3122	56 	V 
	inc (ix+009h)		;3123	dd 34 09 	. 4 . 
	inc (ix+009h)		;3126	dd 34 09 	. 4 . 
	ret			;3129	c9 	. 
	ld a,(de)			;312a	1a 	. 
	inc de			;312b	13 	. 
	add a,017h		;312c	c6 17 	. . 
	ld c,a			;312e	4f 	O 
	ld b,000h		;312f	06 00 	. . 
	push ix		;3131	dd e5 	. . 
	pop hl			;3133	e1 	. 
	add hl,bc			;3134	09 	. 
	ld a,(hl)			;3135	7e 	~ 
	or a			;3136	b7 	. 
	jr nz,l313bh		;3137	20 02 	  . 
	ld a,(de)			;3139	1a 	. 
	ld (hl),a			;313a	77 	w 
l313bh:
	inc de			;313b	13 	. 
	dec (hl)			;313c	35 	5 
	jp nz,070d1h		;313d	c2 d1 70 	. . p 
	inc de			;3140	13 	. 
	ret			;3141	c9 	. 
	ld a,(ix+001h)		;3142	dd 7e 01 	. ~ . 
	and 00fh		;3145	e6 0f 	. . 
	ld c,a			;3147	4f 	O 
	ld b,000h		;3148	06 00 	. . 
	ld hl,06f53h		;314a	21 53 6f 	! S o 
	add hl,bc			;314d	09 	. 
	ld a,(hl)			;314e	7e 	~ 
	or 00fh		;314f	f6 0f 	. . 
	bit 2,(ix+000h)		;3151	dd cb 00 56 	. . . V 
	ret nz			;3155	c0 	. 
	out (07fh),a		;3156	d3 7f 	.  
	ret			;3158	c9 	. 
	exx			;3159	d9 	. 
	ld hl,0c006h		;315a	21 06 c0 	! . . 
	ld de,0c007h		;315d	11 07 c0 	. . . 
	ld bc,000dfh		;3160	01 df 00 	. . . 
	ld (hl),000h		;3163	36 00 	6 . 
	ldir		;3165	ed b0 	. . 
	exx			;3167	d9 	. 
	exx			;3168	d9 	. 
	ld hl,07178h		;3169	21 78 71 	! x q 
	ld c,07fh		;316c	0e 7f 	.  
	ld b,004h		;316e	06 04 	. . 
	otir		;3170	ed b3 	. . 
	xor a			;3172	af 	. 
	ld (0c005h),a		;3173	32 05 c0 	2 . . 
	exx			;3176	d9 	. 
	ret			;3177	c9 	. 
	sbc a,a			;3178	9f 	. 
	cp a			;3179	bf 	. 
	rst 18h			;317a	df 	. 
	rst 38h			;317b	ff 	. 
	nop			;317c	00 	. 
	nop			;317d	00 	. 
	rst 38h			;317e	ff 	. 
	inc bc			;317f	03 	. 
	rst 0			;3180	c7 	. 
	inc bc			;3181	03 	. 
	sub b			;3182	90 	. 
	inc bc			;3183	03 	. 
	ld e,l			;3184	5d 	] 
	inc bc			;3185	03 	. 
	dec l			;3186	2d 	- 
	inc bc			;3187	03 	. 
	rst 38h			;3188	ff 	. 
	ld (bc),a			;3189	02 	. 
	call nc,0ab02h		;318a	d4 02 ab 	. . . 
	ld (bc),a			;318d	02 	. 
	add a,l			;318e	85 	. 
	ld (bc),a			;318f	02 	. 
	ld h,c			;3190	61 	a 
	ld (bc),a			;3191	02 	. 
	ccf			;3192	3f 	? 
	ld (bc),a			;3193	02 	. 
	ld e,002h		;3194	1e 02 	. . 
	nop			;3196	00 	. 
	ld (bc),a			;3197	02 	. 
	ex (sp),hl			;3198	e3 	. 
	ld bc,001c8h		;3199	01 c8 01 	. . . 
	xor a			;319c	af 	. 
	ld bc,l0196h		;319d	01 96 01 	. . . 
	add a,b			;31a0	80 	. 
	ld bc,0016ah		;31a1	01 6a 01 	. j . 
	ld d,(hl)			;31a4	56 	V 
	ld bc,l0143h		;31a5	01 43 01 	. C . 
	jr nc,l31abh		;31a8	30 01 	0 . 
	rra			;31aa	1f 	. 
l31abh:
	ld bc,0010fh		;31ab	01 0f 01 	. . . 
	nop			;31ae	00 	. 
	ld bc,l00f2h		;31af	01 f2 00 	. . . 
	call po,0d700h		;31b2	e4 00 d7 	. . . 
	nop			;31b5	00 	. 
	rlc b		;31b6	cb 00 	. . 
	ret nz			;31b8	c0 	. 
	nop			;31b9	00 	. 
	or l			;31ba	b5 	. 
	nop			;31bb	00 	. 
	xor e			;31bc	ab 	. 
	nop			;31bd	00 	. 
	and c			;31be	a1 	. 
	nop			;31bf	00 	. 
	sbc a,b			;31c0	98 	. 
	nop			;31c1	00 	. 
	sub b			;31c2	90 	. 
	nop			;31c3	00 	. 
	adc a,b			;31c4	88 	. 
	nop			;31c5	00 	. 
	add a,b			;31c6	80 	. 
	nop			;31c7	00 	. 
	ld a,c			;31c8	79 	y 
	nop			;31c9	00 	. 
	ld (hl),d			;31ca	72 	r 
	nop			;31cb	00 	. 
	ld l,h			;31cc	6c 	l 
	nop			;31cd	00 	. 
	ld h,(hl)			;31ce	66 	f 
	nop			;31cf	00 	. 
	ld h,b			;31d0	60 	` 
	nop			;31d1	00 	. 
	ld e,e			;31d2	5b 	[ 
	nop			;31d3	00 	. 
	ld d,l			;31d4	55 	U 
	nop			;31d5	00 	. 
	ld d,c			;31d6	51 	Q 
	nop			;31d7	00 	. 
	ld c,h			;31d8	4c 	L 
	nop			;31d9	00 	. 
	ld c,b			;31da	48 	H 
	nop			;31db	00 	. 
	ld b,h			;31dc	44 	D 
	nop			;31dd	00 	. 
	ld b,b			;31de	40 	@ 
	nop			;31df	00 	. 
	inc a			;31e0	3c 	< 
	nop			;31e1	00 	. 
	add hl,sp			;31e2	39 	9 
	nop			;31e3	00 	. 
	ld (hl),000h		;31e4	36 00 	6 . 
	inc sp			;31e6	33 	3 
	nop			;31e7	00 	. 
	jr nc,l31eah		;31e8	30 00 	0 . 
l31eah:
	dec l			;31ea	2d 	- 
	nop			;31eb	00 	. 
	dec hl			;31ec	2b 	+ 
	nop			;31ed	00 	. 
	jr z,l31f0h		;31ee	28 00 	( . 
l31f0h:
	ld h,000h		;31f0	26 00 	& . 
	inc h			;31f2	24 	$ 
	nop			;31f3	00 	. 
	ld (02000h),hl		;31f4	22 00 20 	" .   
l31f7h:
	nop			;31f7	00 	. 
l31f8h:
	ld e,000h		;31f8	1e 00 	. . 
	inc e			;31fa	1c 	. 
	nop			;31fb	00 	. 
	dec de			;31fc	1b 	. 
	nop			;31fd	00 	. 
	add hl,de			;31fe	19 	. 
	nop			;31ff	00 	. 
	jr l3202h		;3200	18 00 	. . 
l3202h:
	ld d,000h		;3202	16 00 	. . 
	dec d			;3204	15 	. 
	nop			;3205	00 	. 
	inc d			;3206	14 	. 
	nop			;3207	00 	. 
	inc de			;3208	13 	. 
	nop			;3209	00 	. 
	ld (de),a			;320a	12 	. 
	nop			;320b	00 	. 
	ld de,01600h		;320c	11 00 16 	. . . 
	nop			;320f	00 	. 
	ld l,d			;3210	6a 	j 
	ld b,008h		;3211	06 08 	. . 
l3213h:
	add hl,hl			;3213	29 	) 
	jr nc,l3217h		;3214	30 01 	0 . 
	add hl,de			;3216	19 	. 
l3217h:
	djnz l3213h		;3217	10 fa 	. . 
	ret			;3219	c9 	. 
	ld b,008h		;321a	06 08 	. . 
l321ch:
	adc hl,hl		;321c	ed 6a 	. j 
	ld a,h			;321e	7c 	| 
	jr c,l3224h		;321f	38 03 	8 . 
	cp e			;3221	bb 	. 
	jr c,l3227h		;3222	38 03 	8 . 
l3224h:
	sub e			;3224	93 	. 
	ld h,a			;3225	67 	g 
	or a			;3226	b7 	. 
l3227h:
	djnz l321ch		;3227	10 f3 	. . 
	ld a,l			;3229	7d 	} 
	rla			;322a	17 	. 
	cpl			;322b	2f 	/ 
	ret			;322c	c9 	. 
	inc b			;322d	04 	. 
	add a,b			;322e	80 	. 
	jr nz,$+6		;322f	20 04 	  . 
	ld d,d			;3231	52 	R 
	ld (hl),d			;3232	72 	r 
	jp m,l0901h		;3233	fa 01 09 	. . . 
	dec c			;3236	0d 	. 
	add a,b			;3237	80 	. 
	ld hl,0cf04h		;3238	21 04 cf 	! . . 
	ld (hl),d			;323b	72 	r 
	jp m,00b00h		;323c	fa 00 0b 	. . . 
	dec bc			;323f	0b 	. 
	add a,b			;3240	80 	. 
	ld (05204h),hl		;3241	22 04 52 	" . R 
	ld (hl),d			;3244	72 	r 
	jp m,l0a00h		;3245	fa 00 0a 	. . . 
	dec bc			;3248	0b 	. 
	add a,b			;3249	80 	. 
	inc hl			;324a	23 	# 
	inc b			;324b	04 	. 
	ld l,a			;324c	6f 	o 
	ld (hl),e			;324d	73 	s 
	nop			;324e	00 	. 
	ld bc,00d01h		;324f	01 01 0d 	. . . 
	ret po			;3252	e0 	. 
	ld bc,008a5h		;3253	01 a5 08 	. . . 
	and d			;3256	a2 	. 
	djnz l31f7h		;3257	10 9e 	. . 
	ex af,af'			;3259	08 	. 
	sbc a,l			;325a	9d 	. 
	djnz l31f8h		;325b	10 9b 	. . 
	ret po			;325d	e0 	. 
	inc b			;325e	04 	. 
	ex de,hl			;325f	eb 	. 
	call po,0aa0ah		;3260	e4 0a aa 	. . . 
l3263h:
	inc b			;3263	04 	. 
	and a			;3264	a7 	. 
	ex de,hl			;3265	eb 	. 
	xor d			;3266	aa 	. 
	inc b			;3267	04 	. 
	and a			;3268	a7 	. 
	ld (bc),a			;3269	02 	. 
	xor d			;326a	aa 	. 
	inc b			;326b	04 	. 
	xor d			;326c	aa 	. 
	ld (bc),a			;326d	02 	. 
	ex de,hl			;326e	eb 	. 
	and a			;326f	a7 	. 
	inc b			;3270	04 	. 
	xor d			;3271	aa 	. 
	and a			;3272	a7 	. 
	ex de,hl			;3273	eb 	. 
	xor c			;3274	a9 	. 
	inc b			;3275	04 	. 
	and l			;3276	a5 	. 
	ex de,hl			;3277	eb 	. 
	xor c			;3278	a9 	. 
	inc b			;3279	04 	. 
	and l			;327a	a5 	. 
	ld (bc),a			;327b	02 	. 
	xor c			;327c	a9 	. 
	inc b			;327d	04 	. 
	xor c			;327e	a9 	. 
	ld (bc),a			;327f	02 	. 
	ex de,hl			;3280	eb 	. 
	and l			;3281	a5 	. 
	inc b			;3282	04 	. 
	xor c			;3283	a9 	. 
	and l			;3284	a5 	. 
	ret pe			;3285	e8 	. 
	nop			;3286	00 	. 
	inc b			;3287	04 	. 
	ld e,a			;3288	5f 	_ 
	ld (hl),d			;3289	72 	r 
	ex de,hl			;328a	eb 	. 
	sbc a,e			;328b	9b 	. 
	inc b			;328c	04 	. 
	sbc a,b			;328d	98 	. 
	ex de,hl			;328e	eb 	. 
	sbc a,e			;328f	9b 	. 
	inc b			;3290	04 	. 
	sbc a,b			;3291	98 	. 
	ld (bc),a			;3292	02 	. 
	sbc a,e			;3293	9b 	. 
	inc b			;3294	04 	. 
	sbc a,e			;3295	9b 	. 
	ld (bc),a			;3296	02 	. 
	ex de,hl			;3297	eb 	. 
	sbc a,b			;3298	98 	. 
	inc b			;3299	04 	. 
	sbc a,e			;329a	9b 	. 
	sbc a,b			;329b	98 	. 
	ex de,hl			;329c	eb 	. 
	sbc a,l			;329d	9d 	. 
	inc b			;329e	04 	. 
	sbc a,c			;329f	99 	. 
	ex de,hl			;32a0	eb 	. 
	sbc a,l			;32a1	9d 	. 
	inc b			;32a2	04 	. 
	sbc a,c			;32a3	99 	. 
	ld (bc),a			;32a4	02 	. 
	sbc a,l			;32a5	9d 	. 
	inc b			;32a6	04 	. 
	sbc a,l			;32a7	9d 	. 
	ld (bc),a			;32a8	02 	. 
	ex de,hl			;32a9	eb 	. 
	sbc a,c			;32aa	99 	. 
	inc b			;32ab	04 	. 
	sbc a,l			;32ac	9d 	. 
	sbc a,c			;32ad	99 	. 
	ex de,hl			;32ae	eb 	. 
	sbc a,e			;32af	9b 	. 
	inc b			;32b0	04 	. 
	sbc a,b			;32b1	98 	. 
l32b2h:
	ex de,hl			;32b2	eb 	. 
	sbc a,e			;32b3	9b 	. 
	inc b			;32b4	04 	. 
	sbc a,b			;32b5	98 	. 
	ld (bc),a			;32b6	02 	. 
	sbc a,e			;32b7	9b 	. 
	inc b			;32b8	04 	. 
	sbc a,e			;32b9	9b 	. 
	ld (bc),a			;32ba	02 	. 
	ex de,hl			;32bb	eb 	. 
	sbc a,b			;32bc	98 	. 
	inc b			;32bd	04 	. 
	sbc a,e			;32be	9b 	. 
	sbc a,b			;32bf	98 	. 
	ex de,hl			;32c0	eb 	. 
	sbc a,l			;32c1	9d 	. 
	inc b			;32c2	04 	. 
	adc a,l			;32c3	8d 	. 
	ex de,hl			;32c4	eb 	. 
	sbc a,l			;32c5	9d 	. 
	inc b			;32c6	04 	. 
	sbc a,c			;32c7	99 	. 
	ld (bc),a			;32c8	02 	. 
	sbc a,l			;32c9	9d 	. 
	add a,b			;32ca	80 	. 
	djnz l32b2h		;32cb	10 e5 	. . 
	ld e,a			;32cd	5f 	_ 
	ld (hl),d			;32ce	72 	r 
	add a,b			;32cf	80 	. 
	djnz l3263h		;32d0	10 91 	. . 
	ld (bc),a			;32d2	02 	. 
	sub d			;32d3	92 	. 
	sub d			;32d4	92 	. 
	sub d			;32d5	92 	. 
	sub d			;32d6	92 	. 
	ld (bc),a			;32d7	02 	. 
	sub d			;32d8	92 	. 
	sub d			;32d9	92 	. 
	sub d			;32da	92 	. 
	sub c			;32db	91 	. 
	sub d			;32dc	92 	. 
	sub d			;32dd	92 	. 
	ld (bc),a			;32de	02 	. 
	sub d			;32df	92 	. 
	sub d			;32e0	92 	. 
	sub d			;32e1	92 	. 
	sub d			;32e2	92 	. 
	sub d			;32e3	92 	. 
	adc a,h			;32e4	8c 	. 
	ld (bc),a			;32e5	02 	. 
	adc a,l			;32e6	8d 	. 
	adc a,l			;32e7	8d 	. 
	adc a,l			;32e8	8d 	. 
	adc a,l			;32e9	8d 	. 
	ld (bc),a			;32ea	02 	. 
	adc a,l			;32eb	8d 	. 
	adc a,l			;32ec	8d 	. 
	adc a,l			;32ed	8d 	. 
	adc a,h			;32ee	8c 	. 
	adc a,l			;32ef	8d 	. 
	adc a,l			;32f0	8d 	. 
	ld (bc),a			;32f1	02 	. 
	adc a,l			;32f2	8d 	. 
	adc a,l			;32f3	8d 	. 
	adc a,l			;32f4	8d 	. 
	adc a,a			;32f5	8f 	. 
	sub c			;32f6	91 	. 
	ret pe			;32f7	e8 	. 
	nop			;32f8	00 	. 
	inc bc			;32f9	03 	. 
	pop de			;32fa	d1 	. 
	ld (hl),d			;32fb	72 	r 
	sub c			;32fc	91 	. 
	ld (bc),a			;32fd	02 	. 
	sub d			;32fe	92 	. 
	sub d			;32ff	92 	. 
	sub d			;3300	92 	. 
	sub d			;3301	92 	. 
	ld (bc),a			;3302	02 	. 
	sub d			;3303	92 	. 
	sub d			;3304	92 	. 
	sub d			;3305	92 	. 
	sub c			;3306	91 	. 
	sub d			;3307	92 	. 
	sub d			;3308	92 	. 
	ld (bc),a			;3309	02 	. 
	sub d			;330a	92 	. 
	sub d			;330b	92 	. 
	sub d			;330c	92 	. 
	sub d			;330d	92 	. 
	sub d			;330e	92 	. 
	adc a,h			;330f	8c 	. 
	ld (bc),a			;3310	02 	. 
	adc a,l			;3311	8d 	. 
	adc a,l			;3312	8d 	. 
	adc a,l			;3313	8d 	. 
	adc a,l			;3314	8d 	. 
	ld (bc),a			;3315	02 	. 
	adc a,l			;3316	8d 	. 
	adc a,l			;3317	8d 	. 
	adc a,l			;3318	8d 	. 
	adc a,h			;3319	8c 	. 
	adc a,l			;331a	8d 	. 
	adc a,l			;331b	8d 	. 
	ld (bc),a			;331c	02 	. 
	adc a,l			;331d	8d 	. 
	adc a,l			;331e	8d 	. 
	adc a,l			;331f	8d 	. 
	adc a,h			;3320	8c 	. 
	adc a,d			;3321	8a 	. 
	sub h			;3322	94 	. 
	ld (bc),a			;3323	02 	. 
	sub h			;3324	94 	. 
	sub h			;3325	94 	. 
	sub h			;3326	94 	. 
	adc a,h			;3327	8c 	. 
	ld (bc),a			;3328	02 	. 
	adc a,h			;3329	8c 	. 
	sub d			;332a	92 	. 
	sub d			;332b	92 	. 
	sub d			;332c	92 	. 
	sub d			;332d	92 	. 
	sub d			;332e	92 	. 
	ld (bc),a			;332f	02 	. 
	sub d			;3330	92 	. 
	sub c			;3331	91 	. 
	sub c			;3332	91 	. 
	adc a,a			;3333	8f 	. 
	adc a,a			;3334	8f 	. 
	adc a,l			;3335	8d 	. 
	ld (bc),a			;3336	02 	. 
	adc a,l			;3337	8d 	. 
	adc a,l			;3338	8d 	. 
	adc a,l			;3339	8d 	. 
	sub c			;333a	91 	. 
	ld (bc),a			;333b	02 	. 
	sub c			;333c	91 	. 
	sub h			;333d	94 	. 
	sub h			;333e	94 	. 
	sub h			;333f	94 	. 
	sub h			;3340	94 	. 
	sub h			;3341	94 	. 
	ld (bc),a			;3342	02 	. 
	sub h			;3343	94 	. 
	sub d			;3344	92 	. 
	sub d			;3345	92 	. 
	sub c			;3346	91 	. 
	sub c			;3347	91 	. 
	sub h			;3348	94 	. 
	ld (bc),a			;3349	02 	. 
	sub h			;334a	94 	. 
	sub h			;334b	94 	. 
	sub h			;334c	94 	. 
	adc a,h			;334d	8c 	. 
	ld (bc),a			;334e	02 	. 
	adc a,h			;334f	8c 	. 
	sub d			;3350	92 	. 
	sub d			;3351	92 	. 
	sub d			;3352	92 	. 
	sub d			;3353	92 	. 
	sub d			;3354	92 	. 
l3355h:
	ld (bc),a			;3355	02 	. 
	sub d			;3356	92 	. 
	sub c			;3357	91 	. 
	sub c			;3358	91 	. 
	adc a,a			;3359	8f 	. 
	adc a,a			;335a	8f 	. 
	adc a,l			;335b	8d 	. 
	ld (bc),a			;335c	02 	. 
	adc a,l			;335d	8d 	. 
	adc a,l			;335e	8d 	. 
	adc a,l			;335f	8d 	. 
	adc a,l			;3360	8d 	. 
	ld (bc),a			;3361	02 	. 
	adc a,l			;3362	8d 	. 
	adc a,l			;3363	8d 	. 
	adc a,l			;3364	8d 	. 
	add a,b			;3365	80 	. 
	inc b			;3366	04 	. 
	inc b			;3367	04 	. 
	inc b			;3368	04 	. 
	adc a,l			;3369	8d 	. 
	ld (bc),a			;336a	02 	. 
	adc a,l			;336b	8d 	. 
	push hl			;336c	e5 	. 
	pop de			;336d	d1 	. 
	ld (hl),d			;336e	72 	r 
	ex (sp),hl			;336f	e3 	. 
	inc b			;3370	04 	. 
	add a,b			;3371	80 	. 
	djnz l3355h		;3372	10 e1 	. . 
	ld a,(bc)			;3374	0a 	. 
	call po,08d01h		;3375	e4 01 8d 	. . . 
	inc b			;3378	04 	. 
	inc b			;3379	04 	. 
	pop hl			;337a	e1 	. 
	dec c			;337b	0d 	. 
	call po,sub_0402h		;337c	e4 02 04 	. . . 
	pop hl			;337f	e1 	. 
	ld a,(bc)			;3380	0a 	. 
	call po,00401h		;3381	e4 01 04 	. . . 
	inc b			;3384	04 	. 
	ld (bc),a			;3385	02 	. 
	ld (bc),a			;3386	02 	. 
	pop hl			;3387	e1 	. 
l3388h:
	dec c			;3388	0d 	. 
	call po,sub_0402h		;3389	e4 02 04 	. . . 
	pop hl			;338c	e1 	. 
	ld a,(bc)			;338d	0a 	. 
	call po,00401h		;338e	e4 01 04 	. . . 
	push hl			;3391	e5 	. 
	ld (hl),a			;3392	77 	w 
	ld (hl),e			;3393	73 	s 
	inc b			;3394	04 	. 
	add a,b			;3395	80 	. 
	jr nz,$+6		;3396	20 04 	  . 
	cp c			;3398	b9 	. 
	ld (hl),e			;3399	73 	s 
	defb 0fdh,001h,00ah	;illegal sequence		;339a	fd 01 0a 	. . . 
	dec c			;339d	0d 	. 
	add a,b			;339e	80 	. 
	ld hl,00504h		;339f	21 04 05 	! . . 
	ld (hl),h			;33a2	74 	t 
	defb 0fdh,003h,009h	;illegal sequence		;33a3	fd 03 09 	. . . 
	dec bc			;33a6	0b 	. 
	add a,b			;33a7	80 	. 
	ld (0b904h),hl		;33a8	22 04 b9 	" . . 
	ld (hl),e			;33ab	73 	s 
	or 003h		;33ac	f6 03 	. . 
	ld a,(bc)			;33ae	0a 	. 
	ld a,(bc)			;33af	0a 	. 
	add a,b			;33b0	80 	. 
	inc hl			;33b1	23 	# 
	inc b			;33b2	04 	. 
	ld b,c			;33b3	41 	A 
	ld (hl),h			;33b4	74 	t 
	nop			;33b5	00 	. 
	nop			;33b6	00 	. 
	nop			;33b7	00 	. 
	nop			;33b8	00 	. 
	sbc a,b			;33b9	98 	. 
	ld (bc),a			;33ba	02 	. 
	sbc a,c			;33bb	99 	. 
	sbc a,b			;33bc	98 	. 
	sbc a,c			;33bd	99 	. 
	sbc a,b			;33be	98 	. 
	sbc a,c			;33bf	99 	. 
	sbc a,b			;33c0	98 	. 
	sbc a,c			;33c1	99 	. 
	sbc a,b			;33c2	98 	. 
	sbc a,c			;33c3	99 	. 
	sbc a,b			;33c4	98 	. 
	sbc a,c			;33c5	99 	. 
	sbc a,b			;33c6	98 	. 
	sbc a,c			;33c7	99 	. 
	sbc a,b			;33c8	98 	. 
	sbc a,c			;33c9	99 	. 
	ex de,hl			;33ca	eb 	. 
	sbc a,(hl)			;33cb	9e 	. 
	ld b,098h		;33cc	06 98 	. . 
	inc b			;33ce	04 	. 
	ex de,hl			;33cf	eb 	. 
	sbc a,c			;33d0	99 	. 
	inc b			;33d1	04 	. 
	sbc a,e			;33d2	9b 	. 
	ld (bc),a			;33d3	02 	. 
	ret pe			;33d4	e8 	. 
	nop			;33d5	00 	. 
	inc b			;33d6	04 	. 
	jp z,0eb73h		;33d7	ca 73 eb 	. s . 
	sub (hl)			;33da	96 	. 
	ex af,af'			;33db	08 	. 
	add a,b			;33dc	80 	. 
	sub (hl)			;33dd	96 	. 
	ex de,hl			;33de	eb 	. 
	add a,b			;33df	80 	. 
	ex af,af'			;33e0	08 	. 
	sub (hl)			;33e1	96 	. 
	ex de,hl			;33e2	eb 	. 
	add a,b			;33e3	80 	. 
	ex af,af'			;33e4	08 	. 
	sub (hl)			;33e5	96 	. 
	add a,b			;33e6	80 	. 
	ret pe			;33e7	e8 	. 
	ld bc,0ca02h		;33e8	01 02 ca 	. . . 
	ld (hl),e			;33eb	73 	s 
	ex de,hl			;33ec	eb 	. 
	sbc a,b			;33ed	98 	. 
	inc b			;33ee	04 	. 
	sbc a,b			;33ef	98 	. 
	ex de,hl			;33f0	eb 	. 
	sbc a,c			;33f1	99 	. 
	inc b			;33f2	04 	. 
	sbc a,c			;33f3	99 	. 
	sbc a,b			;33f4	98 	. 
	ex de,hl			;33f5	eb 	. 
	sbc a,c			;33f6	99 	. 
	ld (bc),a			;33f7	02 	. 
	sbc a,b			;33f8	98 	. 
	ld b,099h		;33f9	06 99 	. . 
	inc b			;33fb	04 	. 
	ret pe			;33fc	e8 	. 
	nop			;33fd	00 	. 
	inc b			;33fe	04 	. 
	call pe,0e573h		;33ff	ec 73 e5 	. s . 
	jp z,0e273h		;3402	ca 73 e2 	. s . 
	add a,b			;3405	80 	. 
	jr nz,l3388h		;3406	20 80 	  . 
	ld a,(bc)			;3408	0a 	. 
	ld b,0e8h		;3409	06 e8 	. . 
	nop			;340b	00 	. 
	inc b			;340c	04 	. 
	rlca			;340d	07 	. 
	ld (hl),h			;340e	74 	t 
	and 030h		;340f	e6 30 	. 0 
	ld (hl),h			;3411	74 	t 
	sbc a,b			;3412	98 	. 
	ld a,(bc)			;3413	0a 	. 
	add a,b			;3414	80 	. 
	ld b,0e8h		;3415	06 e8 	. . 
	nop			;3417	00 	. 
	inc b			;3418	04 	. 
	ld (de),a			;3419	12 	. 
	ld (hl),h			;341a	74 	t 
	and 030h		;341b	e6 30 	. 0 
	ld (hl),h			;341d	74 	t 
	add a,b			;341e	80 	. 
	ex af,af'			;341f	08 	. 
	inc c			;3420	0c 	. 
	inc c			;3421	0c 	. 
	ex af,af'			;3422	08 	. 
	inc c			;3423	0c 	. 
	inc c			;3424	0c 	. 
	sbc a,l			;3425	9d 	. 
	ld (bc),a			;3426	02 	. 
	sbc a,(hl)			;3427	9e 	. 
	ret pe			;3428	e8 	. 
	nop			;3429	00 	. 
	djnz l3451h		;342a	10 25 	. % 
	ld (hl),h			;342c	74 	t 
	push hl			;342d	e5 	. 
	rlca			;342e	07 	. 
	ld (hl),h			;342f	74 	t 
	sub l			;3430	95 	. 
	ld (bc),a			;3431	02 	. 
	sub (hl)			;3432	96 	. 
	sub (hl)			;3433	96 	. 
	sub (hl)			;3434	96 	. 
	sub (hl)			;3435	96 	. 
	ld (bc),a			;3436	02 	. 
	sub (hl)			;3437	96 	. 
	ld (bc),a			;3438	02 	. 
	sub (hl)			;3439	96 	. 
	sub (hl)			;343a	96 	. 
	ret pe			;343b	e8 	. 
	nop			;343c	00 	. 
	inc b			;343d	04 	. 
	jr nc,l34b4h		;343e	30 74 	0 t 
	rst 20h			;3440	e7 	. 
	ex (sp),hl			;3441	e3 	. 
	inc b			;3442	04 	. 
	and 06eh		;3443	e6 6e 	. n 
	ld (hl),h			;3445	74 	t 
	ret pe			;3446	e8 	. 
	nop			;3447	00 	. 
	ld (bc),a			;3448	02 	. 
	ld b,e			;3449	43 	C 
	ld (hl),h			;344a	74 	t 
	and 080h		;344b	e6 80 	. . 
	ld (hl),h			;344d	74 	t 
	ret pe			;344e	e8 	. 
	nop			;344f	00 	. 
	inc b			;3450	04 	. 
l3451h:
	ld c,e			;3451	4b 	K 
	ld (hl),h			;3452	74 	t 
	and 06eh		;3453	e6 6e 	. n 
	ld (hl),h			;3455	74 	t 
	ret pe			;3456	e8 	. 
	nop			;3457	00 	. 
	inc b			;3458	04 	. 
	ld d,e			;3459	53 	S 
	ld (hl),h			;345a	74 	t 
	ret pe			;345b	e8 	. 
	ld bc,04b02h		;345c	01 02 4b 	. . K 
	ld (hl),h			;345f	74 	t 
	and 06eh		;3460	e6 6e 	. n 
	ld (hl),h			;3462	74 	t 
	and 08dh		;3463	e6 8d 	. . 
	ld (hl),h			;3465	74 	t 
	ret pe			;3466	e8 	. 
	nop			;3467	00 	. 
	inc b			;3468	04 	. 
	ld h,b			;3469	60 	` 
	ld (hl),h			;346a	74 	t 
	push hl			;346b	e5 	. 
	ld c,e			;346c	4b 	K 
	ld (hl),h			;346d	74 	t 
	pop hl			;346e	e1 	. 
	ld a,(bc)			;346f	0a 	. 
	call po,08d01h		;3470	e4 01 8d 	. . . 
	inc b			;3473	04 	. 
	inc b			;3474	04 	. 
	pop hl			;3475	e1 	. 
	dec c			;3476	0d 	. 
	call po,sub_0402h		;3477	e4 02 04 	. . . 
	pop hl			;347a	e1 	. 
	ld a,(bc)			;347b	0a 	. 
	call po,00401h		;347c	e4 01 04 	. . . 
	rst 20h			;347f	e7 	. 
	pop hl			;3480	e1 	. 
	dec c			;3481	0d 	. 
	call po,sub_0601h+1		;3482	e4 02 06 	. . . 
	pop hl			;3485	e1 	. 
	ld a,(bc)			;3486	0a 	. 
	call po,00401h		;3487	e4 01 04 	. . . 
	inc b			;348a	04 	. 
	ld (bc),a			;348b	02 	. 
	rst 20h			;348c	e7 	. 
	pop hl			;348d	e1 	. 
	ld a,(bc)			;348e	0a 	. 
	call po,sub_0201h		;348f	e4 01 02 	. . . 
	pop hl			;3492	e1 	. 
	dec c			;3493	0d 	. 
	call po,sub_0202h		;3494	e4 02 02 	. . . 
	pop hl			;3497	e1 	. 
	ld a,(bc)			;3498	0a 	. 
	call po,00401h		;3499	e4 01 04 	. . . 
	pop hl			;349c	e1 	. 
	dec c			;349d	0d 	. 
	call po,08d02h		;349e	e4 02 8d 	. . . 
	inc b			;34a1	04 	. 
	call po,l0407h+1		;34a2	e4 08 04 	. . . 
	rst 20h			;34a5	e7 	. 
	inc b			;34a6	04 	. 
	add a,b			;34a7	80 	. 
	jr nz,l34afh		;34a8	20 05 	  . 
	bit 6,h		;34aa	cb 74 	. t 
	or 001h		;34ac	f6 01 	. . 
	dec bc			;34ae	0b 	. 
l34afh:
	dec c			;34af	0d 	. 
	add a,b			;34b0	80 	. 
	ld hl,0ee05h		;34b1	21 05 ee 	! . . 
l34b4h:
	ld (hl),h			;34b4	74 	t 
	or 001h		;34b5	f6 01 	. . 
	dec bc			;34b7	0b 	. 
	dec bc			;34b8	0b 	. 
	add a,b			;34b9	80 	. 
	ld (00f05h),hl		;34ba	22 05 0f 	" . . 
	ld (hl),l			;34bd	75 	u 
	or 004h		;34be	f6 04 	. . 
	dec bc			;34c0	0b 	. 
	dec bc			;34c1	0b 	. 
	add a,b			;34c2	80 	. 
	inc hl			;34c3	23 	# 
	dec b			;34c4	05 	. 
	ld l,075h		;34c5	2e 75 	. u 
	nop			;34c7	00 	. 
	nop			;34c8	00 	. 
	dec b			;34c9	05 	. 
	dec c			;34ca	0d 	. 
	add a,b			;34cb	80 	. 
	inc b			;34cc	04 	. 
	xor c			;34cd	a9 	. 
	xor b			;34ce	a8 	. 
	xor c			;34cf	a9 	. 
	and (hl)			;34d0	a6 	. 
	ld (bc),a			;34d1	02 	. 
	and d			;34d2	a2 	. 
	inc b			;34d3	04 	. 
	add a,b			;34d4	80 	. 
	ld (bc),a			;34d5	02 	. 
	xor e			;34d6	ab 	. 
	xor c			;34d7	a9 	. 
	inc b			;34d8	04 	. 
	add a,b			;34d9	80 	. 
	ld (bc),a			;34da	02 	. 
	ret pe			;34db	e8 	. 
	nop			;34dc	00 	. 
	inc bc			;34dd	03 	. 
	bit 6,h		;34de	cb 74 	. t 
	sbc a,b			;34e0	98 	. 
	ld (bc),a			;34e1	02 	. 
	sbc a,a			;34e2	9f 	. 
	xor b			;34e3	a8 	. 
	and h			;34e4	a4 	. 
	xor e			;34e5	ab 	. 
	xor b			;34e6	a8 	. 
	and h			;34e7	a4 	. 
	sbc a,a			;34e8	9f 	. 
	call po,0ad0ch		;34e9	e4 0c ad 	. . . 
	inc c			;34ec	0c 	. 
	jp po,0029dh		;34ed	e2 9d 02 	. . . 
	ld (bc),a			;34f0	02 	. 
	ld (bc),a			;34f1	02 	. 
	ld (bc),a			;34f2	02 	. 
	ld (bc),a			;34f3	02 	. 
	ld (bc),a			;34f4	02 	. 
	ld (bc),a			;34f5	02 	. 
	ld (bc),a			;34f6	02 	. 
	sub (hl)			;34f7	96 	. 
	ld (bc),a			;34f8	02 	. 
	ld (bc),a			;34f9	02 	. 
	ld (bc),a			;34fa	02 	. 
	ld (bc),a			;34fb	02 	. 
	ld (bc),a			;34fc	02 	. 
	ld (bc),a			;34fd	02 	. 
	ld (bc),a			;34fe	02 	. 
	ld (bc),a			;34ff	02 	. 
	ret pe			;3500	e8 	. 
	nop			;3501	00 	. 
	inc bc			;3502	03 	. 
	xor 074h		;3503	ee 74 	. t 
	call po,0960ah		;3505	e4 0a 96 	. . . 
	ex af,af'			;3508	08 	. 
	sub e			;3509	93 	. 
	call po,09d0ch		;350a	e4 0c 9d 	. . . 
	inc c			;350d	0c 	. 
	jp po,00480h		;350e	e2 80 04 	. . . 
	and h			;3511	a4 	. 
	and h			;3512	a4 	. 
	and h			;3513	a4 	. 
	xor c			;3514	a9 	. 
	ld (bc),a			;3515	02 	. 
	and (hl)			;3516	a6 	. 
	inc b			;3517	04 	. 
	add a,b			;3518	80 	. 
	ld (bc),a			;3519	02 	. 
	and (hl)			;351a	a6 	. 
	ld (bc),a			;351b	02 	. 
	inc b			;351c	04 	. 
	add a,b			;351d	80 	. 
	ld (bc),a			;351e	02 	. 
	ret pe			;351f	e8 	. 
	nop			;3520	00 	. 
	inc bc			;3521	03 	. 
	rrca			;3522	0f 	. 
	ld (hl),l			;3523	75 	u 
	call po,09f0ah		;3524	e4 0a 9f 	. . . 
	ex af,af'			;3527	08 	. 
	sbc a,b			;3528	98 	. 
	call po,0a40ch		;3529	e4 0c a4 	. . . 
	inc c			;352c	0c 	. 
	jp po,004e3h		;352d	e2 e3 04 	. . . 
	pop hl			;3530	e1 	. 
	ld a,(bc)			;3531	0a 	. 
	call po,08d01h		;3532	e4 01 8d 	. . . 
	ld (bc),a			;3535	02 	. 
	ld (bc),a			;3536	02 	. 
	pop hl			;3537	e1 	. 
	dec c			;3538	0d 	. 
	call po,sub_0202h		;3539	e4 02 02 	. . . 
	call po,00208h		;353c	e4 08 02 	. . . 
	ret pe			;353f	e8 	. 
	nop			;3540	00 	. 
	ld c,030h		;3541	0e 30 	. 0 
	ld (hl),l			;3543	75 	u 
	ex af,af'			;3544	08 	. 
	jp po,08003h		;3545	e2 03 80 	. . . 
	jr nz,$+6		;3548	20 04 	  . 
	ld h,d			;354a	62 	b 
	ld (hl),l			;354b	75 	u 
	inc bc			;354c	03 	. 
	ld bc,l0e03h		;354d	01 03 0e 	. . . 
	add a,b			;3550	80 	. 
	ld hl,06d04h		;3551	21 04 6d 	! . m 
	ld (hl),l			;3554	75 	u 
	inc bc			;3555	03 	. 
	ld bc,l0e03h		;3556	01 03 0e 	. . . 
	add a,b			;3559	80 	. 
	ld (07904h),hl		;355a	22 04 79 	" . y 
l355dh:
	ld (hl),l			;355d	75 	u 
	inc bc			;355e	03 	. 
	ld bc,l0d03h		;355f	01 03 0d 	. . . 
	sbc a,l			;3562	9d 	. 
	inc b			;3563	04 	. 
l3564h:
	ld (bc),a			;3564	02 	. 
	sbc a,c			;3565	99 	. 
	sbc a,e			;3566	9b 	. 
	sbc a,l			;3567	9d 	. 
	sbc a,c			;3568	99 	. 
	add a,b			;3569	80 	. 
	inc b			;356a	04 	. 
	and l			;356b	a5 	. 
	jp po,l0499h		;356c	e2 99 04 	. . . 
	ld (bc),a			;356f	02 	. 
l3570h:
	sub (hl)			;3570	96 	. 
	ld (bc),a			;3571	02 	. 
	sbc a,b			;3572	98 	. 
	sbc a,c			;3573	99 	. 
	sub (hl)			;3574	96 	. 
	add a,b			;3575	80 	. 
	inc b			;3576	04 	. 
	and d			;3577	a2 	. 
	jp po,0048dh		;3578	e2 8d 04 	. . . 
	ld (bc),a			;357b	02 	. 
	adc a,h			;357c	8c 	. 
	adc a,d			;357d	8a 	. 
	adc a,b			;357e	88 	. 
	adc a,l			;357f	8d 	. 
	add a,b			;3580	80 	. 
	inc b			;3581	04 	. 
	sub c			;3582	91 	. 
	jp po,08004h		;3583	e2 04 80 	. . . 
	jr nz,l358ah		;3586	20 02 	  . 
	xor c			;3588	a9 	. 
	ld (hl),l			;3589	75 	u 
l358ah:
	or 001h		;358a	f6 01 	. . 
	ld a,(bc)			;358c	0a 	. 
	dec c			;358d	0d 	. 
	add a,b			;358e	80 	. 
	ld hl,l1302h		;358f	21 02 13 	! . . 
	halt			;3592	76 	v 
	or 001h		;3593	f6 01 	. . 
	ld a,(bc)			;3595	0a 	. 
	dec bc			;3596	0b 	. 
	add a,b			;3597	80 	. 
	ld (07802h),hl		;3598	22 02 78 	" . x 
	halt			;359b	76 	v 
	or 000h		;359c	f6 00 	. . 
	ld a,(bc)			;359e	0a 	. 
	inc c			;359f	0c 	. 
	add a,b			;35a0	80 	. 
	inc hl			;35a1	23 	# 
	ld (bc),a			;35a2	02 	. 
	cp c			;35a3	b9 	. 
	halt			;35a4	76 	v 
	nop			;35a5	00 	. 
	nop			;35a6	00 	. 
	dec b			;35a7	05 	. 
	dec c			;35a8	0d 	. 
	and a			;35a9	a7 	. 
	ld (de),a			;35aa	12 	. 
	xor (hl)			;35ab	ae 	. 
l35ach:
	inc bc			;35ac	03 	. 
	xor e			;35ad	ab 	. 
	and a			;35ae	a7 	. 
	jr l355dh		;35af	18 ac 	. . 
	inc bc			;35b1	03 	. 
	add a,b			;35b2	80 	. 
	xor e			;35b3	ab 	. 
	add a,b			;35b4	80 	. 
	xor c			;35b5	a9 	. 
	and d			;35b6	a2 	. 
	add a,b			;35b7	80 	. 
	and d			;35b8	a2 	. 
	jr l3564h		;35b9	18 a9 	. . 
	inc bc			;35bb	03 	. 
	xor (hl)			;35bc	ae 	. 
	jr nc,l3570h		;35bd	30 b1 	0 . 
	inc c			;35bf	0c 	. 
	or b			;35c0	b0 	. 
	ld b,0ach		;35c1	06 ac 	. . 
	ld e,0abh		;35c3	1e ab 	. . 
	inc bc			;35c5	03 	. 
	add a,b			;35c6	80 	. 
	and a			;35c7	a7 	. 
	add a,b			;35c8	80 	. 
	xor h			;35c9	ac 	. 
	add a,b			;35ca	80 	. 
	and a			;35cb	a7 	. 
	xor (hl)			;35cc	ae 	. 
	add a,b			;35cd	80 	. 
	and a			;35ce	a7 	. 
	xor h			;35cf	ac 	. 
	and a			;35d0	a7 	. 
	xor e			;35d1	ab 	. 
	add a,b			;35d2	80 	. 
	and a			;35d3	a7 	. 
	add a,b			;35d4	80 	. 
	xor e			;35d5	ab 	. 
	inc c			;35d6	0c 	. 
	and a			;35d7	a7 	. 
	ld b,0a4h		;35d8	06 a4 	. . 
	inc c			;35da	0c 	. 
	and d			;35db	a2 	. 
	ld (de),a			;35dc	12 	. 
	xor e			;35dd	ab 	. 
	inc bc			;35de	03 	. 
	add a,b			;35df	80 	. 
	and a			;35e0	a7 	. 
	add a,b			;35e1	80 	. 
	xor h			;35e2	ac 	. 
	add a,b			;35e3	80 	. 
	and a			;35e4	a7 	. 
	xor (hl)			;35e5	ae 	. 
	add a,b			;35e6	80 	. 
	and a			;35e7	a7 	. 
	xor h			;35e8	ac 	. 
	and a			;35e9	a7 	. 
	xor e			;35ea	ab 	. 
	add a,b			;35eb	80 	. 
	and a			;35ec	a7 	. 
	add a,b			;35ed	80 	. 
	xor c			;35ee	a9 	. 
	inc c			;35ef	0c 	. 
	xor e			;35f0	ab 	. 
	ld b,0ach		;35f1	06 ac 	. . 
	inc c			;35f3	0c 	. 
	or e			;35f4	b3 	. 
	ld b,0b2h		;35f5	06 b2 	. . 
	inc c			;35f7	0c 	. 
	ret pe			;35f8	e8 	. 
	nop			;35f9	00 	. 
	ld (bc),a			;35fa	02 	. 
	xor c			;35fb	a9 	. 
	ld (hl),l			;35fc	75 	u 
	or l			;35fd	b5 	. 
	jr nc,l35ach		;35fe	30 ac 	0 . 
	inc bc			;3600	03 	. 
	xor e			;3601	ab 	. 
	xor h			;3602	ac 	. 
	xor e			;3603	ab 	. 
	xor h			;3604	ac 	. 
	xor e			;3605	ab 	. 
	xor c			;3606	a9 	. 
	and a			;3607	a7 	. 
	xor c			;3608	a9 	. 
	and d			;3609	a2 	. 
	add a,b			;360a	80 	. 
	and (hl)			;360b	a6 	. 
	add a,b			;360c	80 	. 
	and a			;360d	a7 	. 
	add a,b			;360e	80 	. 
	xor c			;360f	a9 	. 
	push hl			;3610	e5 	. 
	xor c			;3611	a9 	. 
	ld (hl),l			;3612	75 	u 
	sbc a,e			;3613	9b 	. 
	ex af,af'			;3614	08 	. 
	and d			;3615	a2 	. 
	inc b			;3616	04 	. 
	inc c			;3617	0c 	. 
	sbc a,e			;3618	9b 	. 
	ex af,af'			;3619	08 	. 
	and d			;361a	a2 	. 
	inc b			;361b	04 	. 
	inc c			;361c	0c 	. 
	sub (hl)			;361d	96 	. 
	ex af,af'			;361e	08 	. 
	sbc a,l			;361f	9d 	. 
	inc b			;3620	04 	. 
l3621h:
	inc c			;3621	0c 	. 
	sub (hl)			;3622	96 	. 
	ex af,af'			;3623	08 	. 
	sbc a,l			;3624	9d 	. 
	inc b			;3625	04 	. 
	inc c			;3626	0c 	. 
	ret pe			;3627	e8 	. 
	ld bc,l1302h		;3628	01 02 13 	. . . 
	halt			;362b	76 	v 
	sub h			;362c	94 	. 
	ex af,af'			;362d	08 	. 
	sbc a,e			;362e	9b 	. 
	inc b			;362f	04 	. 
	inc c			;3630	0c 	. 
	sub h			;3631	94 	. 
	ex af,af'			;3632	08 	. 
	sbc a,e			;3633	9b 	. 
	inc b			;3634	04 	. 
	ex af,af'			;3635	08 	. 
	sub h			;3636	94 	. 
	inc b			;3637	04 	. 
	sbc a,e			;3638	9b 	. 
	ex af,af'			;3639	08 	. 
	and d			;363a	a2 	. 
	inc b			;363b	04 	. 
	inc c			;363c	0c 	. 
	sbc a,e			;363d	9b 	. 
	ex af,af'			;363e	08 	. 
	and d			;363f	a2 	. 
	inc b			;3640	04 	. 
	ex af,af'			;3641	08 	. 
	sbc a,e			;3642	9b 	. 
	inc b			;3643	04 	. 
l3644h:
	sbc a,c			;3644	99 	. 
	ex af,af'			;3645	08 	. 
	and b			;3646	a0 	. 
	inc b			;3647	04 	. 
	inc c			;3648	0c 	. 
	sbc a,c			;3649	99 	. 
	ex af,af'			;364a	08 	. 
	and b			;364b	a0 	. 
	inc b			;364c	04 	. 
	ex af,af'			;364d	08 	. 
	sbc a,c			;364e	99 	. 
	inc b			;364f	04 	. 
	sub (hl)			;3650	96 	. 
	ex af,af'			;3651	08 	. 
	sbc a,l			;3652	9d 	. 
	inc b			;3653	04 	. 
	inc c			;3654	0c 	. 
	sub (hl)			;3655	96 	. 
	ex af,af'			;3656	08 	. 
	and d			;3657	a2 	. 
	inc b			;3658	04 	. 
	ex af,af'			;3659	08 	. 
	sub (hl)			;365a	96 	. 
l365bh:
	inc b			;365b	04 	. 
	ret pe			;365c	e8 	. 
	nop			;365d	00 	. 
	ld (bc),a			;365e	02 	. 
l365fh:
	inc de			;365f	13 	. 
	halt			;3660	76 	v 
	sub (hl)			;3661	96 	. 
	ex af,af'			;3662	08 	. 
	sbc a,l			;3663	9d 	. 
	inc b			;3664	04 	. 
	inc c			;3665	0c 	. 
	sub (hl)			;3666	96 	. 
	ex af,af'			;3667	08 	. 
	sbc a,l			;3668	9d 	. 
	inc b			;3669	04 	. 
	inc c			;366a	0c 	. 
	sub h			;366b	94 	. 
	ex af,af'			;366c	08 	. 
	sbc a,e			;366d	9b 	. 
	inc b			;366e	04 	. 
	inc c			;366f	0c 	. 
	sub (hl)			;3670	96 	. 
	ex af,af'			;3671	08 	. 
	sbc a,l			;3672	9d 	. 
	inc b			;3673	04 	. 
	inc c			;3674	0c 	. 
	push hl			;3675	e5 	. 
	inc de			;3676	13 	. 
	halt			;3677	76 	v 
	xor e			;3678	ab 	. 
	jr nc,l3621h		;3679	30 a6 	0 . 
	xor e			;367b	ab 	. 
	xor (hl)			;367c	ae 	. 
	inc c			;367d	0c 	. 
	xor h			;367e	ac 	. 
	ld b,0a9h		;367f	06 a9 	. . 
	ld e,0abh		;3681	1e ab 	. . 
	inc bc			;3683	03 	. 
	add a,b			;3684	80 	. 
	and a			;3685	a7 	. 
	add a,b			;3686	80 	. 
	xor h			;3687	ac 	. 
	add a,b			;3688	80 	. 
	and a			;3689	a7 	. 
	xor (hl)			;368a	ae 	. 
	add a,b			;368b	80 	. 
	and a			;368c	a7 	. 
	xor h			;368d	ac 	. 
	and a			;368e	a7 	. 
	xor e			;368f	ab 	. 
	add a,b			;3690	80 	. 
	and a			;3691	a7 	. 
	add a,b			;3692	80 	. 
	and a			;3693	a7 	. 
	jr nc,l3644h		;3694	30 ae 	0 . 
	inc bc			;3696	03 	. 
	add a,b			;3697	80 	. 
	xor e			;3698	ab 	. 
	add a,b			;3699	80 	. 
	or b			;369a	b0 	. 
	add a,b			;369b	80 	. 
	xor h			;369c	ac 	. 
	or c			;369d	b1 	. 
	add a,b			;369e	80 	. 
	xor (hl)			;369f	ae 	. 
	or b			;36a0	b0 	. 
	xor h			;36a1	ac 	. 
	xor (hl)			;36a2	ae 	. 
	add a,b			;36a3	80 	. 
	xor e			;36a4	ab 	. 
	add a,b			;36a5	80 	. 
	xor (hl)			;36a6	ae 	. 
	ld e,0b0h		;36a7	1e b0 	. . 
	ld b,0aeh		;36a9	06 ae 	. . 
	inc c			;36ab	0c 	. 
	ret pe			;36ac	e8 	. 
	nop			;36ad	00 	. 
	ld (bc),a			;36ae	02 	. 
	ld a,b			;36af	78 	x 
	halt			;36b0	76 	v 
	or d			;36b1	b2 	. 
	jr nc,l365bh		;36b2	30 a7 	0 . 
	jr l365fh		;36b4	18 a9 	. . 
	push hl			;36b6	e5 	. 
	ld a,b			;36b7	78 	x 
	halt			;36b8	76 	v 
	ex (sp),hl			;36b9	e3 	. 
	inc b			;36ba	04 	. 
	pop hl			;36bb	e1 	. 
	ld a,(bc)			;36bc	0a 	. 
	call po,08d01h		;36bd	e4 01 8d 	. . . 
	inc bc			;36c0	03 	. 
	inc bc			;36c1	03 	. 
	pop hl			;36c2	e1 	. 
	dec c			;36c3	0d 	. 
	call po,l0608h		;36c4	e4 08 06 	. . . 
	call po,sub_0601h+1		;36c7	e4 02 06 	. . . 
	pop hl			;36ca	e1 	. 
	ld a,(bc)			;36cb	0a 	. 
	call po,00301h		;36cc	e4 01 03 	. . . 
	inc bc			;36cf	03 	. 
	ret pe			;36d0	e8 	. 
	nop			;36d1	00 	. 
	inc hl			;36d2	23 	# 
	cp e			;36d3	bb 	. 
	halt			;36d4	76 	v 
	add a,b			;36d5	80 	. 
	inc bc			;36d6	03 	. 
	pop hl			;36d7	e1 	. 
	dec c			;36d8	0d 	. 
	call po,08d08h		;36d9	e4 08 8d 	. . . 
	inc bc			;36dc	03 	. 
	ret pe			;36dd	e8 	. 
	nop			;36de	00 	. 
	inc b			;36df	04 	. 
	push de			;36e0	d5 	. 
	halt			;36e1	76 	v 
	push hl			;36e2	e5 	. 
	cp e			;36e3	bb 	. 
	halt			;36e4	76 	v 
	inc b			;36e5	04 	. 
	add a,b			;36e6	80 	. 
	jr nz,$+5		;36e7	20 03 	  . 
	ld a,(bc)			;36e9	0a 	. 
	ld (hl),a			;36ea	77 	w 
	cp 001h		;36eb	fe 01 	. . 
l36edh:
	ld a,(bc)			;36ed	0a 	. 
	dec c			;36ee	0d 	. 
	add a,b			;36ef	80 	. 
	ld hl,02f03h		;36f0	21 03 2f 	! . / 
	ld (hl),a			;36f3	77 	w 
	cp 001h		;36f4	fe 01 	. . 
	ld a,(bc)			;36f6	0a 	. 
	dec bc			;36f7	0b 	. 
	add a,b			;36f8	80 	. 
	ld (05e03h),hl		;36f9	22 03 5e 	" . ^ 
	ld (hl),a			;36fc	77 	w 
	cp 001h		;36fd	fe 01 	. . 
	ld a,(bc)			;36ff	0a 	. 
	add hl,bc			;3700	09 	. 
	add a,b			;3701	80 	. 
	inc hl			;3702	23 	# 
	inc bc			;3703	03 	. 
l3704h:
	ld h,e			;3704	63 	c 
	ld (hl),a			;3705	77 	w 
	inc bc			;3706	03 	. 
	ld bc,00b09h		;3707	01 09 0b 	. . . 
	add a,b			;370a	80 	. 
	ex af,af'			;370b	08 	. 
	and b			;370c	a0 	. 
	ld b,0a0h		;370d	06 a0 	. . 
	ld (bc),a			;370f	02 	. 
	add a,b			;3710	80 	. 
	and b			;3711	a0 	. 
	add a,b			;3712	80 	. 
	inc b			;3713	04 	. 
	and b			;3714	a0 	. 
	and b			;3715	a0 	. 
	ret pe			;3716	e8 	. 
	nop			;3717	00 	. 
	ld (bc),a			;3718	02 	. 
	ld a,(bc)			;3719	0a 	. 
	ld (hl),a			;371a	77 	w 
	add a,b			;371b	80 	. 
	ex af,af'			;371c	08 	. 
	and d			;371d	a2 	. 
	ld b,0a2h		;371e	06 a2 	. . 
	ld (bc),a			;3720	02 	. 
	add a,b			;3721	80 	. 
	and d			;3722	a2 	. 
	add a,b			;3723	80 	. 
	inc b			;3724	04 	. 
	and d			;3725	a2 	. 
	and d			;3726	a2 	. 
	ret pe			;3727	e8 	. 
	nop			;3728	00 	. 
	ld (bc),a			;3729	02 	. 
	dec de			;372a	1b 	. 
	ld (hl),a			;372b	77 	w 
	push hl			;372c	e5 	. 
	ld a,(bc)			;372d	0a 	. 
	ld (hl),a			;372e	77 	w 
	adc a,l			;372f	8d 	. 
	inc b			;3730	04 	. 
	adc a,l			;3731	8d 	. 
	sbc a,l			;3732	9d 	. 
	ld b,09dh		;3733	06 9d 	. . 
	ld (bc),a			;3735	02 	. 
	adc a,l			;3736	8d 	. 
l3737h:
	ld (bc),a			;3737	02 	. 
	sbc a,l			;3738	9d 	. 
	ld (bc),a			;3739	02 	. 
	adc a,l			;373a	8d 	. 
	inc b			;373b	04 	. 
	sbc a,l			;373c	9d 	. 
	inc b			;373d	04 	. 
	sbc a,l			;373e	9d 	. 
	inc b			;373f	04 	. 
	ret pe			;3740	e8 	. 
	nop			;3741	00 	. 
	ld (bc),a			;3742	02 	. 
	cpl			;3743	2f 	/ 
	ld (hl),a			;3744	77 	w 
	adc a,l			;3745	8d 	. 
l3746h:
	inc b			;3746	04 	. 
	adc a,l			;3747	8d 	. 
	sbc a,(hl)			;3748	9e 	. 
l3749h:
	ld b,09eh		;3749	06 9e 	. . 
	ld (bc),a			;374b	02 	. 
l374ch:
	adc a,l			;374c	8d 	. 
	ld (bc),a			;374d	02 	. 
	sbc a,(hl)			;374e	9e 	. 
l374fh:
	ld (bc),a			;374f	02 	. 
	adc a,l			;3750	8d 	. 
	inc b			;3751	04 	. 
	sbc a,(hl)			;3752	9e 	. 
	inc b			;3753	04 	. 
	sbc a,(hl)			;3754	9e 	. 
l3755h:
	inc b			;3755	04 	. 
	ret pe			;3756	e8 	. 
	nop			;3757	00 	. 
	ld (bc),a			;3758	02 	. 
	ld b,l			;3759	45 	E 
	ld (hl),a			;375a	77 	w 
	push hl			;375b	e5 	. 
	cpl			;375c	2f 	/ 
	ld (hl),a			;375d	77 	w 
	add a,b			;375e	80 	. 
	ld bc,00ae5h		;375f	01 e5 0a 	. . . 
	ld (hl),a			;3762	77 	w 
	ex (sp),hl			;3763	e3 	. 
	inc b			;3764	04 	. 
	pop hl			;3765	e1 	. 
	dec c			;3766	0d 	. 
	call po,08d01h		;3767	e4 01 8d 	. . . 
	inc b			;376a	04 	. 
	inc b			;376b	04 	. 
	ld b,002h		;376c	06 02 	. . 
	ld (bc),a			;376e	02 	. 
	ld (bc),a			;376f	02 	. 
	inc b			;3770	04 	. 
	inc b			;3771	04 	. 
	inc b			;3772	04 	. 
	push hl			;3773	e5 	. 
	ld h,e			;3774	63 	c 
	ld (hl),a			;3775	77 	w 
	inc b			;3776	04 	. 
	add a,b			;3777	80 	. 
	jr nz,l377eh		;3778	20 04 	  . 
	sbc a,e			;377a	9b 	. 
	ld (hl),a			;377b	77 	w 
	cp 003h		;377c	fe 03 	. . 
l377eh:
	ld a,(bc)			;377e	0a 	. 
	dec c			;377f	0d 	. 
	add a,b			;3780	80 	. 
	ld hl,0a304h		;3781	21 04 a3 	! . . 
	ld (hl),a			;3784	77 	w 
	cp 004h		;3785	fe 04 	. . 
	ld a,(bc)			;3787	0a 	. 
	dec bc			;3788	0b 	. 
	add a,b			;3789	80 	. 
	ld (0be04h),hl		;378a	22 04 be 	" . . 
	ld (hl),a			;378d	77 	w 
	cp 004h		;378e	fe 04 	. . 
	ld a,(bc)			;3790	0a 	. 
	dec bc			;3791	0b 	. 
	add a,b			;3792	80 	. 
	inc hl			;3793	23 	# 
	inc b			;3794	04 	. 
	out (077h),a		;3795	d3 77 	. w 
	nop			;3797	00 	. 
	nop			;3798	00 	. 
	nop			;3799	00 	. 
	nop			;379a	00 	. 
	sbc a,l			;379b	9d 	. 
	inc b			;379c	04 	. 
	sbc a,e			;379d	9b 	. 
	sbc a,b			;379e	98 	. 
	sbc a,c			;379f	99 	. 
	push hl			;37a0	e5 	. 
	sbc a,e			;37a1	9b 	. 
	ld (hl),a			;37a2	77 	w 
	sub d			;37a3	92 	. 
	djnz l3737h		;37a4	10 91 	. . 
	sub d			;37a6	92 	. 
	ld c,091h		;37a7	0e 91 	. . 
	ld bc,0918fh		;37a9	01 8f 91 	. . . 
	inc c			;37ac	0c 	. 
	adc a,l			;37ad	8d 	. 
	inc b			;37ae	04 	. 
	adc a,a			;37af	8f 	. 
	ld c,091h		;37b0	0e 91 	. . 
	ld bc,0918fh		;37b2	01 8f 91 	. . . 
	inc c			;37b5	0c 	. 
	adc a,a			;37b6	8f 	. 
	inc b			;37b7	04 	. 
	sub d			;37b8	92 	. 
	djnz l374ch		;37b9	10 91 	. . 
	push hl			;37bb	e5 	. 
	cp b			;37bc	b8 	. 
	ld (hl),a			;37bd	77 	w 
	add a,(hl)			;37be	86 	. 
	djnz l3746h		;37bf	10 85 	. . 
	add a,(hl)			;37c1	86 	. 
	djnz l3749h		;37c2	10 85 	. . 
	inc c			;37c4	0c 	. 
	add a,c			;37c5	81 	. 
	inc b			;37c6	04 	. 
	add a,e			;37c7	83 	. 
	djnz l374fh		;37c8	10 85 	. . 
	inc c			;37ca	0c 	. 
	add a,e			;37cb	83 	. 
	inc b			;37cc	04 	. 
	add a,(hl)			;37cd	86 	. 
	djnz l3755h		;37ce	10 85 	. . 
	push hl			;37d0	e5 	. 
	call 0e377h		;37d1	cd 77 e3 	. w . 
	inc b			;37d4	04 	. 
	pop hl			;37d5	e1 	. 
	ld a,(bc)			;37d6	0a 	. 
	call po,08d01h		;37d7	e4 01 8d 	. . . 
	ex af,af'			;37da	08 	. 
	pop hl			;37db	e1 	. 
	dec c			;37dc	0d 	. 
	call po,00802h		;37dd	e4 02 08 	. . . 
	pop hl			;37e0	e1 	. 
	ld a,(bc)			;37e1	0a 	. 
	call po,sub_0601h		;37e2	e4 01 06 	. . . 
	ld (bc),a			;37e5	02 	. 
	pop hl			;37e6	e1 	. 
	dec c			;37e7	0d 	. 
	call po,00802h		;37e8	e4 02 08 	. . . 
	push hl			;37eb	e5 	. 
	push de			;37ec	d5 	. 
	ld (hl),a			;37ed	77 	w 
	inc b			;37ee	04 	. 
	add a,b			;37ef	80 	. 
	jr nz,l37f8h		;37f0	20 06 	  . 
	inc de			;37f2	13 	. 
	ld a,b			;37f3	78 	x 
	or 004h		;37f4	f6 04 	. . 
	ld a,(bc)			;37f6	0a 	. 
	dec c			;37f7	0d 	. 
l37f8h:
	add a,b			;37f8	80 	. 
	ld hl,04406h		;37f9	21 06 44 	! . D 
	ld a,b			;37fc	78 	x 
	or 001h		;37fd	f6 01 	. . 
	dec c			;37ff	0d 	. 
l3800h:
	dec c			;3800	0d 	. 
	add a,b			;3801	80 	. 
	ld (06706h),hl		;3802	22 06 67 	" . g 
	ld a,b			;3805	78 	x 
	or 004h		;3806	f6 04 	. . 
	ld a,(bc)			;3808	0a 	. 
	ex af,af'			;3809	08 	. 
	add a,b			;380a	80 	. 
	inc hl			;380b	23 	# 
	ld b,09ah		;380c	06 9a 	. . 
	ld a,b			;380e	78 	x 
	nop			;380f	00 	. 
	nop			;3810	00 	. 
	dec b			;3811	05 	. 
	dec c			;3812	0d 	. 
	add a,b			;3813	80 	. 
	ld a,(bc)			;3814	0a 	. 
	xor c			;3815	a9 	. 
	ld (bc),a			;3816	02 	. 
	xor (hl)			;3817	ae 	. 
	or c			;3818	b1 	. 
	or b			;3819	b0 	. 
	ex af,af'			;381a	08 	. 
	xor (hl)			;381b	ae 	. 
	ld (bc),a			;381c	02 	. 
	xor h			;381d	ac 	. 
	inc b			;381e	04 	. 
	xor c			;381f	a9 	. 
	ld (bc),a			;3820	02 	. 
	xor (hl)			;3821	ae 	. 
	inc b			;3822	04 	. 
	and l			;3823	a5 	. 
	ld c,09fh		;3824	0e 9f 	. . 
	ld (bc),a			;3826	02 	. 
	and l			;3827	a5 	. 
	xor c			;3828	a9 	. 
	ld a,(de)			;3829	1a 	. 
	xor d			;382a	aa 	. 
	ld (bc),a			;382b	02 	. 
	xor c			;382c	a9 	. 
	and a			;382d	a7 	. 
	xor d			;382e	aa 	. 
	xor c			;382f	a9 	. 
	and a			;3830	a7 	. 
	xor d			;3831	aa 	. 
	xor c			;3832	a9 	. 
	and a			;3833	a7 	. 
	xor d			;3834	aa 	. 
	xor c			;3835	a9 	. 
	and a			;3836	a7 	. 
	xor h			;3837	ac 	. 
	xor d			;3838	aa 	. 
	xor c			;3839	a9 	. 
	and a			;383a	a7 	. 
	xor c			;383b	a9 	. 
	and a			;383c	a7 	. 
	xor c			;383d	a9 	. 
	xor d			;383e	aa 	. 
	xor c			;383f	a9 	. 
	ld a,(bc)			;3840	0a 	. 
	push hl			;3841	e5 	. 
	dec d			;3842	15 	. 
	ld a,b			;3843	78 	x 
	sub (hl)			;3844	96 	. 
	ld (bc),a			;3845	02 	. 
	sub (hl)			;3846	96 	. 
	and d			;3847	a2 	. 
	sbc a,l			;3848	9d 	. 
	and b			;3849	a0 	. 
	and d			;384a	a2 	. 
	sbc a,e			;384b	9b 	. 
	sbc a,l			;384c	9d 	. 
	sbc a,c			;384d	99 	. 
	sbc a,e			;384e	9b 	. 
	ret pe			;384f	e8 	. 
	nop			;3850	00 	. 
	inc b			;3851	04 	. 
	ld b,h			;3852	44 	D 
	ld a,b			;3853	78 	x 
	sub d			;3854	92 	. 
	sub d			;3855	92 	. 
	sbc a,(hl)			;3856	9e 	. 
	sbc a,c			;3857	99 	. 
	sbc a,h			;3858	9c 	. 
	sbc a,(hl)			;3859	9e 	. 
	inc b			;385a	04 	. 
	sbc a,c			;385b	99 	. 
	ld (bc),a			;385c	02 	. 
	sbc a,h			;385d	9c 	. 
	sbc a,(hl)			;385e	9e 	. 
	ret pe			;385f	e8 	. 
	nop			;3860	00 	. 
	ld (bc),a			;3861	02 	. 
	ld d,h			;3862	54 	T 
	ld a,b			;3863	78 	x 
	push hl			;3864	e5 	. 
	ld b,h			;3865	44 	D 
	ld a,b			;3866	78 	x 
	add a,b			;3867	80 	. 
	ld a,(bc)			;3868	0a 	. 
	add a,b			;3869	80 	. 
	ld (bc),a			;386a	02 	. 
	xor c			;386b	a9 	. 
	ld (bc),a			;386c	02 	. 
	xor (hl)			;386d	ae 	. 
	or c			;386e	b1 	. 
	or b			;386f	b0 	. 
	ex af,af'			;3870	08 	. 
	xor (hl)			;3871	ae 	. 
	ld (bc),a			;3872	02 	. 
	xor h			;3873	ac 	. 
	inc b			;3874	04 	. 
	xor c			;3875	a9 	. 
	ld (bc),a			;3876	02 	. 
	xor (hl)			;3877	ae 	. 
	inc b			;3878	04 	. 
	and l			;3879	a5 	. 
	ld c,09fh		;387a	0e 9f 	. . 
	ld (bc),a			;387c	02 	. 
	and e			;387d	a3 	. 
	and (hl)			;387e	a6 	. 
	ld a,(de)			;387f	1a 	. 
	xor d			;3880	aa 	. 
	ld (bc),a			;3881	02 	. 
	xor c			;3882	a9 	. 
	and a			;3883	a7 	. 
	xor d			;3884	aa 	. 
	xor c			;3885	a9 	. 
	and a			;3886	a7 	. 
	xor d			;3887	aa 	. 
	xor c			;3888	a9 	. 
	and a			;3889	a7 	. 
	xor d			;388a	aa 	. 
	xor c			;388b	a9 	. 
	and a			;388c	a7 	. 
	xor h			;388d	ac 	. 
	xor d			;388e	aa 	. 
	xor c			;388f	a9 	. 
	and a			;3890	a7 	. 
	xor c			;3891	a9 	. 
	and a			;3892	a7 	. 
	xor c			;3893	a9 	. 
	xor d			;3894	aa 	. 
	xor c			;3895	a9 	. 
	ld a,(bc)			;3896	0a 	. 
	push hl			;3897	e5 	. 
	ld l,c			;3898	69 	i 
	ld a,b			;3899	78 	x 
	ex (sp),hl			;389a	e3 	. 
	inc b			;389b	04 	. 
	pop hl			;389c	e1 	. 
	ld a,(bc)			;389d	0a 	. 
l389eh:
	call po,08d01h		;389e	e4 01 8d 	. . . 
	ld (bc),a			;38a1	02 	. 
	ld (bc),a			;38a2	02 	. 
	pop hl			;38a3	e1 	. 
	dec c			;38a4	0d 	. 
	call po,sub_0202h		;38a5	e4 02 02 	. . . 
	pop hl			;38a8	e1 	. 
	ld a,(bc)			;38a9	0a 	. 
	call po,sub_0201h		;38aa	e4 01 02 	. . . 
	pop hl			;38ad	e1 	. 
	dec c			;38ae	0d 	. 
	call po,sub_0202h		;38af	e4 02 02 	. . . 
	pop hl			;38b2	e1 	. 
	ld a,(bc)			;38b3	0a 	. 
	call po,sub_0201h		;38b4	e4 01 02 	. . . 
	ld (bc),a			;38b7	02 	. 
	ld (bc),a			;38b8	02 	. 
	pop hl			;38b9	e1 	. 
	dec c			;38ba	0d 	. 
	call po,sub_0202h		;38bb	e4 02 02 	. . . 
	pop hl			;38be	e1 	. 
	ld a,(bc)			;38bf	0a 	. 
	call po,sub_0201h		;38c0	e4 01 02 	. . . 
	push hl			;38c3	e5 	. 
	sbc a,h			;38c4	9c 	. 
	ld a,b			;38c5	78 	x 
	inc b			;38c6	04 	. 
	add a,b			;38c7	80 	. 
	jr nz,l38cdh		;38c8	20 03 	  . 
	ex de,hl			;38ca	eb 	. 
	ld a,b			;38cb	78 	x 
	ret m			;38cc	f8 	. 
l38cdh:
	ld (bc),a			;38cd	02 	. 
	ld a,(bc)			;38ce	0a 	. 
	dec c			;38cf	0d 	. 
	add a,b			;38d0	80 	. 
	ld hl,l2503h		;38d1	21 03 25 	! . % 
	ld a,c			;38d4	79 	y 
l38d5h:
	ret m			;38d5	f8 	. 
	ld (bc),a			;38d6	02 	. 
	ld a,(bc)			;38d7	0a 	. 
	inc c			;38d8	0c 	. 
	add a,b			;38d9	80 	. 
	ld (05f03h),hl		;38da	22 03 5f 	" . _ 
	ld a,c			;38dd	79 	y 
	ret m			;38de	f8 	. 
	ld bc,l0c0bh		;38df	01 0b 0c 	. . . 
	add a,b			;38e2	80 	. 
	inc hl			;38e3	23 	# 
	inc bc			;38e4	03 	. 
	sbc a,l			;38e5	9d 	. 
	ld a,c			;38e6	79 	y 
	inc bc			;38e7	03 	. 
	ld bc,00e01h		;38e8	01 01 0e 	. . . 
	xor d			;38eb	aa 	. 
l38ech:
	ld b,0aah		;38ec	06 aa 	. . 
	ld (bc),a			;38ee	02 	. 
	xor c			;38ef	a9 	. 
	ex af,af'			;38f0	08 	. 
	add a,b			;38f1	80 	. 
	djnz l389eh		;38f2	10 aa 	. . 
	ld b,0aah		;38f4	06 aa 	. . 
l38f6h:
	ld (bc),a			;38f6	02 	. 
	ret pe			;38f7	e8 	. 
	nop			;38f8	00 	. 
	ld (bc),a			;38f9	02 	. 
	rst 28h			;38fa	ef 	. 
	ld a,b			;38fb	78 	x 
	xor c			;38fc	a9 	. 
	ex af,af'			;38fd	08 	. 
	xor d			;38fe	aa 	. 
	ld b,0aah		;38ff	06 aa 	. . 
	ld (bc),a			;3901	02 	. 
	xor c			;3902	a9 	. 
	ex af,af'			;3903	08 	. 
	xor d			;3904	aa 	. 
	ld b,0aah		;3905	06 aa 	. . 
l3907h:
	ld (bc),a			;3907	02 	. 
	and a			;3908	a7 	. 
	ex af,af'			;3909	08 	. 
	add a,b			;390a	80 	. 
	djnz $-85		;390b	10 a9 	. . 
	ld b,0a9h		;390d	06 a9 	. . 
	ld (bc),a			;390f	02 	. 
l3910h:
	ret pe			;3910	e8 	. 
	nop			;3911	00 	. 
	inc bc			;3912	03 	. 
	ex af,af'			;3913	08 	. 
	ld a,c			;3914	79 	y 
	and a			;3915	a7 	. 
	ex af,af'			;3916	08 	. 
	and a			;3917	a7 	. 
	inc b			;3918	04 	. 
	and a			;3919	a7 	. 
	xor d			;391a	aa 	. 
	inc b			;391b	04 	. 
	xor c			;391c	a9 	. 
	ex af,af'			;391d	08 	. 
	and a			;391e	a7 	. 
	inc b			;391f	04 	. 
	and l			;3920	a5 	. 
	ex af,af'			;3921	08 	. 
	add a,b			;3922	80 	. 
	jr l3907h		;3923	18 e2 	. . 
	and a			;3925	a7 	. 
	ld b,0a7h		;3926	06 a7 	. . 
	ld (bc),a			;3928	02 	. 
	and l			;3929	a5 	. 
	ex af,af'			;392a	08 	. 
	add a,b			;392b	80 	. 
	djnz l38d5h		;392c	10 a7 	. . 
	ld b,0a7h		;392e	06 a7 	. . 
	ld (bc),a			;3930	02 	. 
	ret pe			;3931	e8 	. 
	nop			;3932	00 	. 
	ld (bc),a			;3933	02 	. 
	add hl,hl			;3934	29 	) 
	ld a,c			;3935	79 	y 
	and l			;3936	a5 	. 
	ex af,af'			;3937	08 	. 
	and a			;3938	a7 	. 
	ld b,0a7h		;3939	06 a7 	. . 
	ld (bc),a			;393b	02 	. 
	and l			;393c	a5 	. 
	ex af,af'			;393d	08 	. 
	and a			;393e	a7 	. 
	ld b,0a7h		;393f	06 a7 	. . 
l3941h:
	ld (bc),a			;3941	02 	. 
	and h			;3942	a4 	. 
	ex af,af'			;3943	08 	. 
	add a,b			;3944	80 	. 
	djnz l38ech		;3945	10 a5 	. . 
	ld b,0a5h		;3947	06 a5 	. . 
	ld (bc),a			;3949	02 	. 
	ret pe			;394a	e8 	. 
	nop			;394b	00 	. 
	inc bc			;394c	03 	. 
	ld b,d			;394d	42 	B 
	ld a,c			;394e	79 	y 
	and h			;394f	a4 	. 
	ex af,af'			;3950	08 	. 
	and h			;3951	a4 	. 
	inc b			;3952	04 	. 
	inc b			;3953	04 	. 
	and a			;3954	a7 	. 
	inc b			;3955	04 	. 
	and l			;3956	a5 	. 
	ex af,af'			;3957	08 	. 
	and h			;3958	a4 	. 
	inc b			;3959	04 	. 
	and b			;395a	a0 	. 
	ex af,af'			;395b	08 	. 
	add a,b			;395c	80 	. 
	jr l3941h		;395d	18 e2 	. . 
	add a,b			;395f	80 	. 
	djnz l38f6h		;3960	10 94 	. . 
	ex af,af'			;3962	08 	. 
	sbc a,c			;3963	99 	. 
	ex af,af'			;3964	08 	. 
	ret pe			;3965	e8 	. 
	nop			;3966	00 	. 
	ld (bc),a			;3967	02 	. 
	ld e,a			;3968	5f 	_ 
	ld a,c			;3969	79 	y 
	add a,b			;396a	80 	. 
	ex af,af'			;396b	08 	. 
	sbc a,c			;396c	99 	. 
	ex af,af'			;396d	08 	. 
	add a,b			;396e	80 	. 
	ex af,af'			;396f	08 	. 
	sbc a,c			;3970	99 	. 
	ex af,af'			;3971	08 	. 
	add a,b			;3972	80 	. 
	ex af,af'			;3973	08 	. 
	sbc a,b			;3974	98 	. 
	ex af,af'			;3975	08 	. 
	sub h			;3976	94 	. 
	ex af,af'			;3977	08 	. 
	sbc a,e			;3978	9b 	. 
	ex af,af'			;3979	08 	. 
	add a,b			;397a	80 	. 
	ex af,af'			;397b	08 	. 
	add a,b			;397c	80 	. 
	ex af,af'			;397d	08 	. 
	sub h			;397e	94 	. 
l397fh:
	ex af,af'			;397f	08 	. 
	sbc a,e			;3980	9b 	. 
	ex af,af'			;3981	08 	. 
	add a,b			;3982	80 	. 
	ex af,af'			;3983	08 	. 
	add a,b			;3984	80 	. 
	ex af,af'			;3985	08 	. 
	sub h			;3986	94 	. 
	ex af,af'			;3987	08 	. 
	sbc a,e			;3988	9b 	. 
	ex af,af'			;3989	08 	. 
	add a,b			;398a	80 	. 
	ex af,af'			;398b	08 	. 
	sbc a,e			;398c	9b 	. 
	ex af,af'			;398d	08 	. 
	add a,b			;398e	80 	. 
	ex af,af'			;398f	08 	. 
l3990h:
	sbc a,e			;3990	9b 	. 
	ex af,af'			;3991	08 	. 
	add a,b			;3992	80 	. 
	ex af,af'			;3993	08 	. 
	add a,b			;3994	80 	. 
	ex af,af'			;3995	08 	. 
	sub h			;3996	94 	. 
	ex af,af'			;3997	08 	. 
	sbc a,c			;3998	99 	. 
	ex af,af'			;3999	08 	. 
	add a,b			;399a	80 	. 
	ex af,af'			;399b	08 	. 
	jp po,004e3h		;399c	e2 e3 04 	. . . 
	pop hl			;399f	e1 	. 
	ld a,(bc)			;39a0	0a 	. 
	call po,08d01h		;39a1	e4 01 8d 	. . . 
l39a4h:
	ld b,002h		;39a4	06 02 	. . 
	pop hl			;39a6	e1 	. 
	dec bc			;39a7	0b 	. 
	call po,00802h		;39a8	e4 02 08 	. . . 
	ex af,af'			;39ab	08 	. 
	ex af,af'			;39ac	08 	. 
	pop hl			;39ad	e1 	. 
	ld a,(bc)			;39ae	0a 	. 
	call po,sub_0601h		;39af	e4 01 06 	. . . 
	ld (bc),a			;39b2	02 	. 
	pop hl			;39b3	e1 	. 
	dec bc			;39b4	0b 	. 
	call po,00802h		;39b5	e4 02 08 	. . . 
	ex af,af'			;39b8	08 	. 
	ex af,af'			;39b9	08 	. 
	pop hl			;39ba	e1 	. 
	ld a,(bc)			;39bb	0a 	. 
	call po,sub_0601h		;39bc	e4 01 06 	. . . 
	ld (bc),a			;39bf	02 	. 
	ex af,af'			;39c0	08 	. 
	ld b,002h		;39c1	06 02 	. . 
	ex af,af'			;39c3	08 	. 
	ld b,002h		;39c4	06 02 	. . 
	ex af,af'			;39c6	08 	. 
	pop hl			;39c7	e1 	. 
	dec bc			;39c8	0b 	. 
	call po,00802h		;39c9	e4 02 08 	. . . 
	ex af,af'			;39cc	08 	. 
	pop hl			;39cd	e1 	. 
	ld a,(bc)			;39ce	0a 	. 
	call po,sub_0601h		;39cf	e4 01 06 	. . . 
	ld (bc),a			;39d2	02 	. 
	pop hl			;39d3	e1 	. 
	dec bc			;39d4	0b 	. 
	call po,00802h		;39d5	e4 02 08 	. . . 
	ex af,af'			;39d8	08 	. 
	ex af,af'			;39d9	08 	. 
	pop hl			;39da	e1 	. 
	ld a,(bc)			;39db	0a 	. 
	call po,sub_0601h		;39dc	e4 01 06 	. . . 
	ld (bc),a			;39df	02 	. 
	pop hl			;39e0	e1 	. 
	dec bc			;39e1	0b 	. 
	call po,00802h		;39e2	e4 02 08 	. . . 
	ex af,af'			;39e5	08 	. 
	ex af,af'			;39e6	08 	. 
	pop hl			;39e7	e1 	. 
	ld a,(bc)			;39e8	0a 	. 
	call po,sub_0601h		;39e9	e4 01 06 	. . . 
	ld (bc),a			;39ec	02 	. 
	ex af,af'			;39ed	08 	. 
	inc b			;39ee	04 	. 
	inc b			;39ef	04 	. 
	inc b			;39f0	04 	. 
	ex af,af'			;39f1	08 	. 
	inc b			;39f2	04 	. 
	ex af,af'			;39f3	08 	. 
	pop hl			;39f4	e1 	. 
	dec bc			;39f5	0b 	. 
	call po,00802h		;39f6	e4 02 08 	. . . 
	jr $-28		;39f9	18 e2 	. . 
	ld (bc),a			;39fb	02 	. 
	add a,b			;39fc	80 	. 
	ld hl,l0e03h		;39fd	21 03 0e 	! . . 
l3a00h:
	ld a,d			;3a00	7a 	z 
	ei			;3a01	fb 	. 
	ld bc,l0e04h+1		;3a02	01 05 0e 	. . . 
	add a,b			;3a05	80 	. 
	ld (l0e03h),hl		;3a06	22 03 0e 	" . . 
	ld a,d			;3a09	7a 	z 
	ei			;3a0a	fb 	. 
	nop			;3a0b	00 	. 
	add hl,bc			;3a0c	09 	. 
	ld c,0aeh		;3a0d	0e ae 	. . 
	inc b			;3a0f	04 	. 
l3a10h:
	or d			;3a10	b2 	. 
	or l			;3a11	b5 	. 
	or b			;3a12	b0 	. 
	or e			;3a13	b3 	. 
	or a			;3a14	b7 	. 
	cp d			;3a15	ba 	. 
	djnz $-28		;3a16	10 e2 	. . 
	inc b			;3a18	04 	. 
	add a,b			;3a19	80 	. 
	jr nz,l3a1eh		;3a1a	20 02 	  . 
	dec a			;3a1c	3d 	= 
	ld a,d			;3a1d	7a 	z 
l3a1eh:
	or 001h		;3a1e	f6 01 	. . 
	ld a,(bc)			;3a20	0a 	. 
	dec c			;3a21	0d 	. 
	add a,b			;3a22	80 	. 
	ld hl,05202h		;3a23	21 02 52 	! . R 
	ld a,e			;3a26	7b 	{ 
	or 001h		;3a27	f6 01 	. . 
	ld a,(bc)			;3a29	0a 	. 
	dec bc			;3a2a	0b 	. 
	add a,b			;3a2b	80 	. 
	ld (0cf02h),hl		;3a2c	22 02 cf 	" . . 
	ld a,d			;3a2f	7a 	z 
	or 001h		;3a30	f6 01 	. . 
	dec bc			;3a32	0b 	. 
	inc c			;3a33	0c 	. 
	add a,b			;3a34	80 	. 
	inc hl			;3a35	23 	# 
	ld (bc),a			;3a36	02 	. 
	adc a,b			;3a37	88 	. 
	ld a,e			;3a38	7b 	{ 
	inc bc			;3a39	03 	. 
l3a3ah:
	ld bc,00d01h		;3a3a	01 01 0d 	. . . 
l3a3dh:
	and d			;3a3d	a2 	. 
	inc b			;3a3e	04 	. 
	and a			;3a3f	a7 	. 
	xor e			;3a40	ab 	. 
l3a41h:
	xor h			;3a41	ac 	. 
	xor e			;3a42	ab 	. 
	and a			;3a43	a7 	. 
	xor e			;3a44	ab 	. 
	ex af,af'			;3a45	08 	. 
	xor h			;3a46	ac 	. 
	xor (hl)			;3a47	ae 	. 
	call po,0a40bh		;3a48	e4 0b a4 	. . . 
	inc b			;3a4b	04 	. 
	and h			;3a4c	a4 	. 
	xor c			;3a4d	a9 	. 
	or b			;3a4e	b0 	. 
	or b			;3a4f	b0 	. 
	xor c			;3a50	a9 	. 
	call po,0a40ah		;3a51	e4 0a a4 	. . . 
	jr l3a3ah		;3a54	18 e4 	. . 
	dec bc			;3a56	0b 	. 
	and d			;3a57	a2 	. 
	inc b			;3a58	04 	. 
	and d			;3a59	a2 	. 
	and a			;3a5a	a7 	. 
	xor (hl)			;3a5b	ae 	. 
	xor (hl)			;3a5c	ae 	. 
	and a			;3a5d	a7 	. 
	xor l			;3a5e	ad 	. 
	xor (hl)			;3a5f	ae 	. 
	xor l			;3a60	ad 	. 
	call po,0a90ah		;3a61	e4 0a a9 	. . . 
	inc c			;3a64	0c 	. 
	ret pe			;3a65	e8 	. 
	nop			;3a66	00 	. 
	ld (bc),a			;3a67	02 	. 
	ld c,b			;3a68	48 	H 
l3a69h:
	ld a,d			;3a69	7a 	z 
	call po,0a70bh		;3a6a	e4 0b a7 	. . . 
	inc b			;3a6d	04 	. 
	xor c			;3a6e	a9 	. 
	xor e			;3a6f	ab 	. 
	and l			;3a70	a5 	. 
	and a			;3a71	a7 	. 
	xor c			;3a72	a9 	. 
	and h			;3a73	a4 	. 
	and l			;3a74	a5 	. 
	and a			;3a75	a7 	. 
	and d			;3a76	a2 	. 
	and h			;3a77	a4 	. 
	and l			;3a78	a5 	. 
	ret pe			;3a79	e8 	. 
	nop			;3a7a	00 	. 
	inc bc			;3a7b	03 	. 
	ld l,d			;3a7c	6a 	j 
	ld a,d			;3a7d	7a 	z 
	and a			;3a7e	a7 	. 
	xor c			;3a7f	a9 	. 
	xor e			;3a80	ab 	. 
	and l			;3a81	a5 	. 
	and a			;3a82	a7 	. 
	xor c			;3a83	a9 	. 
	call po,0ae0ah		;3a84	e4 0a ae 	. . . 
	jr $-90		;3a87	18 a4 	. . 
	ld (de),a			;3a89	12 	. 
	inc bc			;3a8a	03 	. 
	xor c			;3a8b	a9 	. 
	or b			;3a8c	b0 	. 
	jr l3a3dh		;3a8d	18 ae 	. . 
	ex af,af'			;3a8f	08 	. 
	xor l			;3a90	ad 	. 
	inc b			;3a91	04 	. 
	add a,b			;3a92	80 	. 
	ld b,0aeh		;3a93	06 ae 	. . 
	inc bc			;3a95	03 	. 
	xor l			;3a96	ad 	. 
	xor c			;3a97	a9 	. 
	jr l3a41h		;3a98	18 a7 	. . 
	inc b			;3a9a	04 	. 
	add a,b			;3a9b	80 	. 
	xor c			;3a9c	a9 	. 
	add a,b			;3a9d	80 	. 
	xor e			;3a9e	ab 	. 
	ex af,af'			;3a9f	08 	. 
	xor h			;3aa0	ac 	. 
	inc b			;3aa1	04 	. 
	add a,b			;3aa2	80 	. 
	xor e			;3aa3	ab 	. 
	add a,b			;3aa4	80 	. 
	xor c			;3aa5	a9 	. 
	ex af,af'			;3aa6	08 	. 
	xor (hl)			;3aa7	ae 	. 
	inc b			;3aa8	04 	. 
	add a,b			;3aa9	80 	. 
	xor h			;3aaa	ac 	. 
	add a,b			;3aab	80 	. 
	xor e			;3aac	ab 	. 
	ex af,af'			;3aad	08 	. 
	and l			;3aae	a5 	. 
	jr $-90		;3aaf	18 a4 	. . 
	ld (de),a			;3ab1	12 	. 
	inc bc			;3ab2	03 	. 
	xor c			;3ab3	a9 	. 
	or b			;3ab4	b0 	. 
	jr l3a69h		;3ab5	18 b2 	. . 
	ex af,af'			;3ab7	08 	. 
	or b			;3ab8	b0 	. 
	inc b			;3ab9	04 	. 
	add a,b			;3aba	80 	. 
	ld b,0aeh		;3abb	06 ae 	. . 
	xor c			;3abd	a9 	. 
	jr $-82		;3abe	18 ac 	. . 
	ex af,af'			;3ac0	08 	. 
	xor e			;3ac1	ab 	. 
	xor h			;3ac2	ac 	. 
	xor (hl)			;3ac3	ae 	. 
	xor h			;3ac4	ac 	. 
	xor e			;3ac5	ab 	. 
	inc b			;3ac6	04 	. 
	xor h			;3ac7	ac 	. 
	or b			;3ac8	b0 	. 
	inc h			;3ac9	24 	$ 
	add a,b			;3aca	80 	. 
	inc c			;3acb	0c 	. 
	push hl			;3acc	e5 	. 
	ld c,b			;3acd	48 	H 
	ld a,d			;3ace	7a 	z 
	add a,b			;3acf	80 	. 
	ld bc,l04a2h		;3ad0	01 a2 04 	. . . 
	and a			;3ad3	a7 	. 
	xor e			;3ad4	ab 	. 
	xor h			;3ad5	ac 	. 
	xor e			;3ad6	ab 	. 
	and a			;3ad7	a7 	. 
	xor e			;3ad8	ab 	. 
	ex af,af'			;3ad9	08 	. 
	xor h			;3ada	ac 	. 
	xor (hl)			;3adb	ae 	. 
	rlca			;3adc	07 	. 
	sbc a,l			;3add	9d 	. 
	ex af,af'			;3ade	08 	. 
	inc b			;3adf	04 	. 
	and h			;3ae0	a4 	. 
	inc c			;3ae1	0c 	. 
	sbc a,l			;3ae2	9d 	. 
	ex af,af'			;3ae3	08 	. 
	inc b			;3ae4	04 	. 
	sbc a,l			;3ae5	9d 	. 
	inc c			;3ae6	0c 	. 
	sbc a,e			;3ae7	9b 	. 
	ex af,af'			;3ae8	08 	. 
	inc b			;3ae9	04 	. 
	and d			;3aea	a2 	. 
	inc c			;3aeb	0c 	. 
	sbc a,e			;3aec	9b 	. 
	ex af,af'			;3aed	08 	. 
	inc b			;3aee	04 	. 
	and d			;3aef	a2 	. 
	inc c			;3af0	0c 	. 
	ret pe			;3af1	e8 	. 
	nop			;3af2	00 	. 
	ld (bc),a			;3af3	02 	. 
	defb 0ddh,07ah,099h	;illegal sequence		;3af4	dd 7a 99 	. z . 
	ex af,af'			;3af7	08 	. 
	inc b			;3af8	04 	. 
	and b			;3af9	a0 	. 
	inc c			;3afa	0c 	. 
l3afbh:
	and b			;3afb	a0 	. 
	ex af,af'			;3afc	08 	. 
	inc b			;3afd	04 	. 
	and b			;3afe	a0 	. 
	sbc a,a			;3aff	9f 	. 
l3b00h:
	sbc a,l			;3b00	9d 	. 
	ret pe			;3b01	e8 	. 
	nop			;3b02	00 	. 
	inc bc			;3b03	03 	. 
	or 07ah		;3b04	f6 7a 	. z 
	sbc a,c			;3b06	99 	. 
	ex af,af'			;3b07	08 	. 
	inc b			;3b08	04 	. 
	and b			;3b09	a0 	. 
	inc c			;3b0a	0c 	. 
	sbc a,e			;3b0b	9b 	. 
	ex af,af'			;3b0c	08 	. 
	inc b			;3b0d	04 	. 
	and d			;3b0e	a2 	. 
	inc c			;3b0f	0c 	. 
	and 030h		;3b10	e6 30 	. 0 
	ld a,e			;3b12	7b 	{ 
	sbc a,e			;3b13	9b 	. 
	ex af,af'			;3b14	08 	. 
	inc b			;3b15	04 	. 
	and d			;3b16	a2 	. 
l3b17h:
	inc c			;3b17	0c 	. 
	sbc a,e			;3b18	9b 	. 
	ex af,af'			;3b19	08 	. 
	inc b			;3b1a	04 	. 
	and d			;3b1b	a2 	. 
	sbc a,e			;3b1c	9b 	. 
	sbc a,e			;3b1d	9b 	. 
	and 030h		;3b1e	e6 30 	. 0 
	ld a,e			;3b20	7b 	{ 
	sbc a,b			;3b21	98 	. 
l3b22h:
	inc c			;3b22	0c 	. 
	inc b			;3b23	04 	. 
	sbc a,c			;3b24	99 	. 
	sbc a,e			;3b25	9b 	. 
	call po,0a20ah		;3b26	e4 0a a2 	. . . 
	inc c			;3b29	0c 	. 
	add a,b			;3b2a	80 	. 
	call po,0e50bh		;3b2b	e4 0b e5 	. . . 
	defb 0ddh,07ah,09dh	;illegal sequence		;3b2e	dd 7a 9d 	. z . 
	ex af,af'			;3b31	08 	. 
	inc b			;3b32	04 	. 
	and h			;3b33	a4 	. 
	inc c			;3b34	0c 	. 
	sbc a,l			;3b35	9d 	. 
	ex af,af'			;3b36	08 	. 
	inc b			;3b37	04 	. 
	and h			;3b38	a4 	. 
	sbc a,l			;3b39	9d 	. 
	sbc a,l			;3b3a	9d 	. 
	sbc a,e			;3b3b	9b 	. 
	ex af,af'			;3b3c	08 	. 
	inc b			;3b3d	04 	. 
	and d			;3b3e	a2 	. 
	inc c			;3b3f	0c 	. 
	sbc a,e			;3b40	9b 	. 
	ex af,af'			;3b41	08 	. 
	inc b			;3b42	04 	. 
	and d			;3b43	a2 	. 
	sbc a,e			;3b44	9b 	. 
	sbc a,e			;3b45	9b 	. 
	sbc a,c			;3b46	99 	. 
	ex af,af'			;3b47	08 	. 
	inc b			;3b48	04 	. 
	and b			;3b49	a0 	. 
	inc c			;3b4a	0c 	. 
	sbc a,c			;3b4b	99 	. 
	ex af,af'			;3b4c	08 	. 
	inc b			;3b4d	04 	. 
	and b			;3b4e	a0 	. 
	sbc a,c			;3b4f	99 	. 
	sbc a,c			;3b50	99 	. 
	rst 20h			;3b51	e7 	. 
	sub (hl)			;3b52	96 	. 
	inc b			;3b53	04 	. 
	sbc a,e			;3b54	9b 	. 
	sbc a,a			;3b55	9f 	. 
	and b			;3b56	a0 	. 
	sbc a,a			;3b57	9f 	. 
	sbc a,e			;3b58	9b 	. 
	sbc a,a			;3b59	9f 	. 
	ex af,af'			;3b5a	08 	. 
	and b			;3b5b	a0 	. 
	and d			;3b5c	a2 	. 
	sbc a,l			;3b5d	9d 	. 
	jr nc,l3afbh		;3b5e	30 9b 	0 . 
	sbc a,l			;3b60	9d 	. 
	sbc a,e			;3b61	9b 	. 
	sbc a,c			;3b62	99 	. 
	sbc a,c			;3b63	99 	. 
	xor e			;3b64	ab 	. 
	inc b			;3b65	04 	. 
	xor h			;3b66	ac 	. 
	xor (hl)			;3b67	ae 	. 
	xor c			;3b68	a9 	. 
	xor e			;3b69	ab 	. 
	xor h			;3b6a	ac 	. 
	and a			;3b6b	a7 	. 
	xor c			;3b6c	a9 	. 
	xor e			;3b6d	ab 	. 
	and l			;3b6e	a5 	. 
	and a			;3b6f	a7 	. 
	xor c			;3b70	a9 	. 
	xor e			;3b71	ab 	. 
	xor h			;3b72	ac 	. 
	xor (hl)			;3b73	ae 	. 
	xor c			;3b74	a9 	. 
	xor e			;3b75	ab 	. 
	xor h			;3b76	ac 	. 
	and a			;3b77	a7 	. 
	jr l3b17h		;3b78	18 9d 	. . 
	jr nc,l3b17h		;3b7a	30 9b 	0 . 
	sbc a,c			;3b7c	99 	. 
	sbc a,e			;3b7d	9b 	. 
	sbc a,l			;3b7e	9d 	. 
	sbc a,e			;3b7f	9b 	. 
	sbc a,c			;3b80	99 	. 
	and h			;3b81	a4 	. 
	inc h			;3b82	24 	$ 
	add a,b			;3b83	80 	. 
	inc c			;3b84	0c 	. 
	push hl			;3b85	e5 	. 
	ld e,l			;3b86	5d 	] 
	ld a,e			;3b87	7b 	{ 
	ex (sp),hl			;3b88	e3 	. 
	inc b			;3b89	04 	. 
	pop hl			;3b8a	e1 	. 
	ld a,(bc)			;3b8b	0a 	. 
	call po,08d01h		;3b8c	e4 01 8d 	. . . 
	inc c			;3b8f	0c 	. 
	inc c			;3b90	0c 	. 
	inc c			;3b91	0c 	. 
	ex af,af'			;3b92	08 	. 
	inc b			;3b93	04 	. 
	pop hl			;3b94	e1 	. 
	ld a,(bc)			;3b95	0a 	. 
	call po,08d01h		;3b96	e4 01 8d 	. . . 
	inc b			;3b99	04 	. 
	inc b			;3b9a	04 	. 
	inc b			;3b9b	04 	. 
l3b9ch:
	pop hl			;3b9c	e1 	. 
l3b9dh:
	dec c			;3b9d	0d 	. 
	call po,sub_0402h		;3b9e	e4 02 04 	. . . 
	pop hl			;3ba1	e1 	. 
	ld a,(bc)			;3ba2	0a 	. 
	call po,00401h		;3ba3	e4 01 04 	. . . 
	inc b			;3ba6	04 	. 
	ret pe			;3ba7	e8 	. 
	nop			;3ba8	00 	. 
	ld e,094h		;3ba9	1e 94 	. . 
	ld a,e			;3bab	7b 	{ 
	pop hl			;3bac	e1 	. 
	ld a,(bc)			;3bad	0a 	. 
	call po,l0c06h+2		;3bae	e4 08 0c 	. . . 
	pop hl			;3bb1	e1 	. 
	ld a,(bc)			;3bb2	0a 	. 
	call po,l0c00h+1		;3bb3	e4 01 0c 	. . . 
	jr l3b9dh		;3bb6	18 e5 	. . 
	sub h			;3bb8	94 	. 
	ld a,e			;3bb9	7b 	{ 
	ld bc,l2288h		;3bba	01 88 22 	. . " 
	ld bc,07bc4h		;3bbd	01 c4 7b 	. . { 
	nop			;3bc0	00 	. 
	nop			;3bc1	00 	. 
	ld bc,l000eh+1		;3bc2	01 0f 00 	. . . 
	ret p			;3bc5	f0 	. 
	ld (bc),a			;3bc6	02 	. 
	ld (bc),a			;3bc7	02 	. 
	ld d,b			;3bc8	50 	P 
	ld (bc),a			;3bc9	02 	. 
	nop			;3bca	00 	. 
	nop			;3bcb	00 	. 
	ld bc,08000h		;3bcc	01 00 80 	. . . 
	ld (bc),a			;3bcf	02 	. 
	ld bc,l0200h		;3bd0	01 00 02 	. . . 
	jp po,0a801h		;3bd3	e2 01 a8 	. . . 
	ld (0de01h),hl		;3bd6	22 01 de 	" . . 
	ld a,e			;3bd9	7b 	{ 
	nop			;3bda	00 	. 
	nop			;3bdb	00 	. 
	ld b,00fh		;3bdc	06 0f 	. . 
	ld bc,l0000h		;3bde	01 00 00 	. . . 
	add a,b			;3be1	80 	. 
	inc bc			;3be2	03 	. 
	nop			;3be3	00 	. 
	nop			;3be4	00 	. 
	nop			;3be5	00 	. 
	nop			;3be6	00 	. 
	ld bc,0f000h		;3be7	01 00 f0 	. . . 
	nop			;3bea	00 	. 
	jr nz,$+17		;3beb	20 0f 	  . 
	jp po,0a801h		;3bed	e2 01 a8 	. . . 
	ld (0f801h),hl		;3bf0	22 01 f8 	" . . 
	ld a,e			;3bf3	7b 	{ 
	nop			;3bf4	00 	. 
	nop			;3bf5	00 	. 
	nop			;3bf6	00 	. 
	rrca			;3bf7	0f 	. 
	nop			;3bf8	00 	. 
	ret p			;3bf9	f0 	. 
	ld bc,l044fh+1		;3bfa	01 50 04 	. P . 
	nop			;3bfd	00 	. 
	nop			;3bfe	00 	. 
	nop			;3bff	00 	. 
l3c00h:
	nop			;3c00	00 	. 
l3c01h:
	ld bc,08000h		;3c01	01 00 80 	. . . 
	nop			;3c04	00 	. 
	sub b			;3c05	90 	. 
	inc b			;3c06	04 	. 
	jp po,0a801h		;3c07	e2 01 a8 	. . . 
	ld (l1200h+1),hl		;3c0a	22 01 12 	" . . 
	ld a,h			;3c0d	7c 	| 
	nop			;3c0e	00 	. 
	nop			;3c0f	00 	. 
	nop			;3c10	00 	. 
	rrca			;3c11	0f 	. 
	nop			;3c12	00 	. 
	add a,b			;3c13	80 	. 
	ld (bc),a			;3c14	02 	. 
	nop			;3c15	00 	. 
	ld (bc),a			;3c16	02 	. 
	ld bc,l0200h		;3c17	01 00 02 	. . . 
	ld d,b			;3c1a	50 	P 
	ld b,0e2h		;3c1b	06 e2 	. . 
	ld bc,022a8h		;3c1d	01 a8 22 	. . " 
	ld bc,07c27h		;3c20	01 27 7c 	. ' | 
	nop			;3c23	00 	. 
	nop			;3c24	00 	. 
	nop			;3c25	00 	. 
	ld c,001h		;3c26	0e 01 	. . 
	jr nc,l3c2ah		;3c28	30 00 	0 . 
l3c2ah:
	ld b,b			;3c2a	40 	@ 
	rlca			;3c2b	07 	. 
	ld bc,l0240h		;3c2c	01 40 02 	. @ . 
	jr nc,l3c37h		;3c2f	30 06 	0 . 
	jp po,08801h		;3c31	e2 01 88 	. . . 
	ld (l3c01h),hl		;3c34	22 01 3c 	" . < 
l3c37h:
	ld a,h			;3c37	7c 	| 
	inc bc			;3c38	03 	. 
	ld bc,00e01h		;3c39	01 01 0e 	. . . 
	nop			;3c3c	00 	. 
	add a,b			;3c3d	80 	. 
	ld bc,0f000h		;3c3e	01 00 f0 	. . . 
	ld (bc),a			;3c41	02 	. 
	nop			;3c42	00 	. 
	ld d,b			;3c43	50 	P 
	ld bc,l0002h		;3c44	01 02 00 	. . . 
	inc bc			;3c47	03 	. 
	jp po,08801h		;3c48	e2 01 88 	. . . 
	ld (05301h),hl		;3c4b	22 01 53 	" . S 
	ld a,h			;3c4e	7c 	| 
	nop			;3c4f	00 	. 
	nop			;3c50	00 	. 
	ld (bc),a			;3c51	02 	. 
	rrca			;3c52	0f 	. 
	ld (bc),a			;3c53	02 	. 
	jr nz,l3c58h		;3c54	20 02 	  . 
	inc bc			;3c56	03 	. 
	nop			;3c57	00 	. 
l3c58h:
	inc bc			;3c58	03 	. 
	nop			;3c59	00 	. 
	add a,b			;3c5a	80 	. 
	ld bc,06002h		;3c5b	01 02 60 	. . ` 
	inc b			;3c5e	04 	. 
	jp po,08002h		;3c5f	e2 02 80 	. . . 
	ld hl,07303h		;3c62	21 03 73 	! . s 
	ld a,h			;3c65	7c 	| 
	inc bc			;3c66	03 	. 
	ld bc,l0e04h		;3c67	01 04 0e 	. . . 
	add a,b			;3c6a	80 	. 
	ld (07303h),hl		;3c6b	22 03 73 	" . s 
	ld a,h			;3c6e	7c 	| 
	nop			;3c6f	00 	. 
	ld bc,l0d03h+1		;3c70	01 04 0d 	. . . 
	sbc a,c			;3c73	99 	. 
	ld (bc),a			;3c74	02 	. 
	sbc a,l			;3c75	9d 	. 
	sbc a,c			;3c76	99 	. 
	and b			;3c77	a0 	. 
	sbc a,a			;3c78	9f 	. 
	and b			;3c79	a0 	. 
	and l			;3c7a	a5 	. 
	ld a,(bc)			;3c7b	0a 	. 
	jp po,0a801h		;3c7c	e2 01 a8 	. . . 
	inc hl			;3c7f	23 	# 
	ld bc,07c87h		;3c80	01 87 7c 	. . | 
	nop			;3c83	00 	. 
	nop			;3c84	00 	. 
	rlca			;3c85	07 	. 
	rrca			;3c86	0f 	. 
	ex (sp),hl			;3c87	e3 	. 
	rlca			;3c88	07 	. 
	nop			;3c89	00 	. 
	ld a,(bc)			;3c8a	0a 	. 
	nop			;3c8b	00 	. 
	ld c,002h		;3c8c	0e 02 	. . 
	nop			;3c8e	00 	. 
	nop			;3c8f	00 	. 
	nop			;3c90	00 	. 
	nop			;3c91	00 	. 
	ld (bc),a			;3c92	02 	. 
	nop			;3c93	00 	. 
	ld a,(bc)			;3c94	0a 	. 
	nop			;3c95	00 	. 
	ld b,b			;3c96	40 	@ 
	rlca			;3c97	07 	. 
	jp po,0a801h		;3c98	e2 01 a8 	. . . 
	ld (0a301h),hl		;3c9b	22 01 a3 	" . . 
	ld a,h			;3c9e	7c 	| 
	nop			;3c9f	00 	. 
	nop			;3ca0	00 	. 
	nop			;3ca1	00 	. 
	dec c			;3ca2	0d 	. 
	ld (bc),a			;3ca3	02 	. 
	jr nc,l3ca8h		;3ca4	30 02 	0 . 
	ld h,b			;3ca6	60 	` 
	ld (bc),a			;3ca7	02 	. 
l3ca8h:
	nop			;3ca8	00 	. 
	nop			;3ca9	00 	. 
	nop			;3caa	00 	. 
	nop			;3cab	00 	. 
	ld bc,0a001h		;3cac	01 01 a0 	. . . 
	nop			;3caf	00 	. 
	jr nz,l3cbah		;3cb0	20 08 	  . 
	ret pe			;3cb2	e8 	. 
	nop			;3cb3	00 	. 
	inc bc			;3cb4	03 	. 
	xor l			;3cb5	ad 	. 
	ld a,h			;3cb6	7c 	| 
	ld bc,l000eh+2		;3cb7	01 10 00 	. . . 
l3cbah:
	add a,b			;3cba	80 	. 
	dec bc			;3cbb	0b 	. 
	jp po,08001h		;3cbc	e2 01 80 	. . . 
	ld (0c703h),hl		;3cbf	22 03 c7 	" . . 
	ld a,h			;3cc2	7c 	| 
	inc bc			;3cc3	03 	. 
	nop			;3cc4	00 	. 
	inc bc			;3cc5	03 	. 
	rrca			;3cc6	0f 	. 
	sbc a,c			;3cc7	99 	. 
	ld (bc),a			;3cc8	02 	. 
	sbc a,l			;3cc9	9d 	. 
	and b			;3cca	a0 	. 
	and l			;3ccb	a5 	. 
	ld b,0e2h		;3ccc	06 e2 	. . 
	ld bc,l2288h		;3cce	01 88 22 	. . " 
	ld bc,07cd8h		;3cd1	01 d8 7c 	. . | 
	inc bc			;3cd4	03 	. 
	ld bc,00d00h		;3cd5	01 00 0d 	. . . 
	nop			;3cd8	00 	. 
	add a,b			;3cd9	80 	. 
	inc bc			;3cda	03 	. 
	jp po,08803h		;3cdb	e2 03 88 	. . . 
	jr nz,l3ce1h		;3cde	20 01 	  . 
	ret m			;3ce0	f8 	. 
l3ce1h:
	ld a,h			;3ce1	7c 	| 
	nop			;3ce2	00 	. 
	nop			;3ce3	00 	. 
	inc b			;3ce4	04 	. 
	dec c			;3ce5	0d 	. 
	adc a,b			;3ce6	88 	. 
	ld hl,0ff01h		;3ce7	21 01 ff 	! . . 
	ld a,h			;3cea	7c 	| 
	nop			;3ceb	00 	. 
	ld bc,l0d03h+1		;3cec	01 04 0d 	. . . 
	adc a,b			;3cef	88 	. 
	ld (sub_0601h),hl		;3cf0	22 01 06 	" . . 
	ld a,l			;3cf3	7d 	} 
	nop			;3cf4	00 	. 
	nop			;3cf5	00 	. 
	inc b			;3cf6	04 	. 
	dec c			;3cf7	0d 	. 
	nop			;3cf8	00 	. 
	jr nz,l3d01h		;3cf9	20 06 	  . 
	nop			;3cfb	00 	. 
	jr $+10		;3cfc	18 08 	. . 
	jp pe,l3000h		;3cfe	ea 00 30 	. . 0 
l3d01h:
	ld b,000h		;3d01	06 00 	. . 
	inc d			;3d03	14 	. 
	ex af,af'			;3d04	08 	. 
	jp pe,04000h		;3d05	ea 00 40 	. . @ 
	ld b,000h		;3d08	06 00 	. . 
	jr nc,l3d14h		;3d0a	30 08 	0 . 
	jp pe,08003h		;3d0c	ea 03 80 	. . . 
	jr nz,l3d15h		;3d0f	20 04 	  . 
	add hl,hl			;3d11	29 	) 
	ld a,l			;3d12	7d 	} 
	rst 38h			;3d13	ff 	. 
l3d14h:
	inc bc			;3d14	03 	. 
l3d15h:
	ld a,(bc)			;3d15	0a 	. 
	dec c			;3d16	0d 	. 
	add a,b			;3d17	80 	. 
	ld hl,l3704h		;3d18	21 04 37 	! . 7 
	ld a,l			;3d1b	7d 	} 
	rst 38h			;3d1c	ff 	. 
	inc bc			;3d1d	03 	. 
	add hl,bc			;3d1e	09 	. 
	inc c			;3d1f	0c 	. 
	add a,b			;3d20	80 	. 
	ld (l3e04h),hl		;3d21	22 04 3e 	" . > 
	ld a,l			;3d24	7d 	} 
	rst 38h			;3d25	ff 	. 
	ld bc,00b09h		;3d26	01 09 0b 	. . . 
	xor d			;3d29	aa 	. 
	inc b			;3d2a	04 	. 
	and a			;3d2b	a7 	. 
	and b			;3d2c	a0 	. 
	and h			;3d2d	a4 	. 
	ld (bc),a			;3d2e	02 	. 
	and l			;3d2f	a5 	. 
	add a,b			;3d30	80 	. 
	ex af,af'			;3d31	08 	. 
	or b			;3d32	b0 	. 
	ld bc,003b1h		;3d33	01 b1 03 	. . . 
	jp po,l1092h		;3d36	e2 92 10 	. . . 
	adc a,l			;3d39	8d 	. 
	ex af,af'			;3d3a	08 	. 
	adc a,l			;3d3b	8d 	. 
	inc b			;3d3c	04 	. 
	jp po,00180h		;3d3d	e2 80 01 	. . . 
	push hl			;3d40	e5 	. 
	add hl,hl			;3d41	29 	) 
	ld a,l			;3d42	7d 	} 
	jp po,08003h		;3d43	e2 03 80 	. . . 
	jr nz,$+6		;3d46	20 04 	  . 
	ld h,b			;3d48	60 	` 
	ld a,l			;3d49	7d 	} 
	inc bc			;3d4a	03 	. 
l3d4bh:
	ld bc,l0d03h+1		;3d4b	01 04 0d 	. . . 
	add a,b			;3d4e	80 	. 
l3d4fh:
	ld hl,06504h		;3d4f	21 04 65 	! . e 
	ld a,l			;3d52	7d 	} 
	inc bc			;3d53	03 	. 
	ld bc,l0d03h+1		;3d54	01 04 0d 	. . . 
	add a,b			;3d57	80 	. 
	ld (06904h),hl		;3d58	22 04 69 	" . i 
	ld a,l			;3d5b	7d 	} 
	inc bc			;3d5c	03 	. 
	ld bc,l0d03h+1		;3d5d	01 04 0d 	. . . 
	and b			;3d60	a0 	. 
	ex af,af'			;3d61	08 	. 
	sub h			;3d62	94 	. 
	djnz l3d4fh		;3d63	10 ea 	. . 
	sbc a,l			;3d65	9d 	. 
	ex af,af'			;3d66	08 	. 
	djnz l3d4bh		;3d67	10 e2 	. . 
	sbc a,c			;3d69	99 	. 
	ex af,af'			;3d6a	08 	. 
	djnz l3d4fh		;3d6b	10 e2 	. . 
	ld (bc),a			;3d6d	02 	. 
	add a,b			;3d6e	80 	. 
	ld hl,08005h		;3d6f	21 05 80 	! . . 
l3d72h:
	ld a,l			;3d72	7d 	} 
	ld sp,hl			;3d73	f9 	. 
	ld bc,00f05h		;3d74	01 05 0f 	. . . 
	add a,b			;3d77	80 	. 
	ld (08005h),hl		;3d78	22 05 80 	" . . 
	ld a,l			;3d7b	7d 	} 
	call m,sub_04ffh+2		;3d7c	fc 01 05 	. . . 
	rrca			;3d7f	0f 	. 
	and a			;3d80	a7 	. 
	ld bc,0abach		;3d81	01 ac ab 	. . . 
	and a			;3d84	a7 	. 
	xor (hl)			;3d85	ae 	. 
	jp po,0a801h		;3d86	e2 01 a8 	. . . 
	ld (09101h),hl		;3d89	22 01 91 	" . . 
	ld a,l			;3d8c	7d 	} 
	nop			;3d8d	00 	. 
	ld bc,00d0eh		;3d8e	01 0e 0d 	. . . 
	nop			;3d91	00 	. 
	pop hl			;3d92	e1 	. 
	nop			;3d93	00 	. 
	rst 8			;3d94	cf 	. 
	ld b,000h		;3d95	06 00 	. . 
l3d97h:
	sub b			;3d97	90 	. 
	ld bc,l0804h		;3d98	01 04 08 	. . . 
	jp po,0a003h		;3d9b	e2 03 a0 	. . . 
	jr nz,l3da4h		;3d9e	20 04 	  . 
	cp b			;3da0	b8 	. 
	ld a,l			;3da1	7d 	} 
	rst 38h			;3da2	ff 	. 
	nop			;3da3	00 	. 
l3da4h:
	inc b			;3da4	04 	. 
	dec bc			;3da5	0b 	. 
	and b			;3da6	a0 	. 
	ld hl,0b804h		;3da7	21 04 b8 	! . . 
	ld a,l			;3daa	7d 	} 
	cp 001h		;3dab	fe 01 	. . 
	inc b			;3dad	04 	. 
	ld c,0a0h		;3dae	0e a0 	. . 
l3db0h:
	ld (0b804h),hl		;3db0	22 04 b8 	" . . 
	ld a,l			;3db3	7d 	} 
	defb 0fdh,000h,004h	;illegal sequence		;3db4	fd 00 04 	. . . 
	dec c			;3db7	0d 	. 
	sbc a,c			;3db8	99 	. 
	or c			;3db9	b1 	. 
	ex af,af'			;3dba	08 	. 
	jp po,0a801h		;3dbb	e2 01 a8 	. . . 
	ld (0c601h),hl		;3dbe	22 01 c6 	" . . 
	ld a,l			;3dc1	7d 	} 
	inc bc			;3dc2	03 	. 
	ld bc,00d00h		;3dc3	01 00 0d 	. . . 
	nop			;3dc6	00 	. 
	ld h,b			;3dc7	60 	` 
	nop			;3dc8	00 	. 
	jr nc,l3dcch		;3dc9	30 01 	0 . 
	nop			;3dcb	00 	. 
l3dcch:
	ld b,b			;3dcc	40 	@ 
	nop			;3dcd	00 	. 
	add a,b			;3dce	80 	. 
	inc b			;3dcf	04 	. 
	jp po,0a801h		;3dd0	e2 01 a8 	. . . 
	ld (0db01h),hl		;3dd3	22 01 db 	" . . 
	ld a,l			;3dd6	7d 	} 
	inc bc			;3dd7	03 	. 
	ld bc,00d00h		;3dd8	01 00 0d 	. . . 
	ld (bc),a			;3ddb	02 	. 
	add a,b			;3ddc	80 	. 
	ld (bc),a			;3ddd	02 	. 
	nop			;3dde	00 	. 
l3ddfh:
	ld b,001h		;3ddf	06 01 	. . 
	ld (hl),b			;3de1	70 	p 
	ld bc,00b00h		;3de2	01 00 0b 	. . . 
	jp po,0a002h		;3de5	e2 02 a0 	. . . 
	ld hl,0f902h		;3de8	21 02 f9 	! . . 
	ld a,l			;3deb	7d 	} 
	ex af,af'			;3dec	08 	. 
	nop			;3ded	00 	. 
	dec b			;3dee	05 	. 
	dec c			;3def	0d 	. 
	and b			;3df0	a0 	. 
	ld (0f902h),hl		;3df1	22 02 f9 	" . . 
	ld a,l			;3df4	7d 	} 
	dec b			;3df5	05 	. 
	ld bc,l0d05h		;3df6	01 05 0d 	. . . 
	sub h			;3df9	94 	. 
	cp d			;3dfa	ba 	. 
	jr z,l3ddfh		;3dfb	28 e2 	( . 
	nop			;3dfd	00 	. 
	ld h,b			;3dfe	60 	` 
	nop			;3dff	00 	. 
l3e00h:
	jr nz,l3e2dh		;3e00	20 2b 	  + 
	nop			;3e02	00 	. 
	ld h,b			;3e03	60 	` 
l3e04h:
	nop			;3e04	00 	. 
	ld b,b			;3e05	40 	@ 
	ld b,000h		;3e06	06 00 	. . 
	ld b,b			;3e08	40 	@ 
	nop			;3e09	00 	. 
	djnz $+26		;3e0a	10 18 	. . 
	jp po,0a802h		;3e0c	e2 02 a8 	. . . 
	ld hl,l2001h		;3e0f	21 01 20 	! .   
	ld a,(hl)			;3e12	7e 	~ 
	inc bc			;3e13	03 	. 
	nop			;3e14	00 	. 
	inc bc			;3e15	03 	. 
	dec c			;3e16	0d 	. 
	and b			;3e17	a0 	. 
	inc hl			;3e18	23 	# 
	ld bc,07e30h		;3e19	01 30 7e 	. 0 ~ 
	inc bc			;3e1c	03 	. 
	nop			;3e1d	00 	. 
	inc bc			;3e1e	03 	. 
	rrca			;3e1f	0f 	. 
	ld bc,00210h		;3e20	01 10 02 	. . . 
	call c,l0002h		;3e23	dc 02 00 	. . . 
	nop			;3e26	00 	. 
	nop			;3e27	00 	. 
	nop			;3e28	00 	. 
	ld (bc),a			;3e29	02 	. 
	ld bc,l0330h		;3e2a	01 30 03 	. 0 . 
l3e2dh:
	nop			;3e2d	00 	. 
	ex af,af'			;3e2e	08 	. 
	jp po,007e3h		;3e2f	e2 e3 07 	. . . 
	xor d			;3e32	aa 	. 
	add a,c			;3e33	81 	. 
	ld b,080h		;3e34	06 80 	. . 
	add a,b			;3e36	80 	. 
	ld (bc),a			;3e37	02 	. 
	cp l			;3e38	bd 	. 
	sbc a,c			;3e39	99 	. 
	ex af,af'			;3e3a	08 	. 
	jp po,0a001h		;3e3b	e2 01 a0 	. . . 
	ld (04602h),hl		;3e3e	22 02 46 	" . F 
	ld a,(hl)			;3e41	7e 	~ 
	inc bc			;3e42	03 	. 
	nop			;3e43	00 	. 
	inc bc			;3e44	03 	. 
	rrca			;3e45	0f 	. 
	adc a,l			;3e46	8d 	. 
	sbc a,c			;3e47	99 	. 
	rlca			;3e48	07 	. 
	pop hl			;3e49	e1 	. 
	rrca			;3e4a	0f 	. 
	and l			;3e4b	a5 	. 
	or c			;3e4c	b1 	. 
	dec b			;3e4d	05 	. 
	jp po,0a802h		;3e4e	e2 02 a8 	. . . 
	ld hl,06201h		;3e51	21 01 62 	! . b 
	ld a,(hl)			;3e54	7e 	~ 
	inc bc			;3e55	03 	. 
	nop			;3e56	00 	. 
	nop			;3e57	00 	. 
	dec c			;3e58	0d 	. 
	xor b			;3e59	a8 	. 
	ld (07c01h),hl		;3e5a	22 01 7c 	" . | 
	ld a,(hl)			;3e5d	7e 	~ 
	nop			;3e5e	00 	. 
	nop			;3e5f	00 	. 
	nop			;3e60	00 	. 
	dec c			;3e61	0d 	. 
	nop			;3e62	00 	. 
	ret nz			;3e63	c0 	. 
	nop			;3e64	00 	. 
	and b			;3e65	a0 	. 
	dec b			;3e66	05 	. 
	nop			;3e67	00 	. 
	ld (hl),b			;3e68	70 	p 
	nop			;3e69	00 	. 
	ld h,b			;3e6a	60 	` 
	dec b			;3e6b	05 	. 
	nop			;3e6c	00 	. 
	or b			;3e6d	b0 	. 
	nop			;3e6e	00 	. 
	sub b			;3e6f	90 	. 
	dec b			;3e70	05 	. 
	nop			;3e71	00 	. 
	or b			;3e72	b0 	. 
	nop			;3e73	00 	. 
	jr nz,l3e7bh		;3e74	20 05 	  . 
	nop			;3e76	00 	. 
	ld (hl),b			;3e77	70 	p 
	nop			;3e78	00 	. 
	djnz $+12		;3e79	10 0a 	. . 
l3e7bh:
	jp po,08000h		;3e7b	e2 00 80 	. . . 
	nop			;3e7e	00 	. 
	ld h,b			;3e7f	60 	` 
	dec b			;3e80	05 	. 
	nop			;3e81	00 	. 
	ld b,b			;3e82	40 	@ 
	nop			;3e83	00 	. 
	jr nc,l3e8bh		;3e84	30 05 	0 . 
	nop			;3e86	00 	. 
	add a,b			;3e87	80 	. 
	nop			;3e88	00 	. 
	ld h,b			;3e89	60 	` 
	dec b			;3e8a	05 	. 
l3e8bh:
	nop			;3e8b	00 	. 
	ld b,b			;3e8c	40 	@ 
	nop			;3e8d	00 	. 
	jr nc,l3e95h		;3e8e	30 05 	0 . 
	nop			;3e90	00 	. 
	add a,b			;3e91	80 	. 
	nop			;3e92	00 	. 
	jr nz,l3e9fh		;3e93	20 0a 	  . 
l3e95h:
	jp po,0a802h		;3e95	e2 02 a8 	. . . 
	ld hl,0a901h		;3e98	21 01 a9 	! . . 
	ld a,(hl)			;3e9b	7e 	~ 
	nop			;3e9c	00 	. 
	nop			;3e9d	00 	. 
	ld (bc),a			;3e9e	02 	. 
l3e9fh:
	rrca			;3e9f	0f 	. 
	xor b			;3ea0	a8 	. 
	inc hl			;3ea1	23 	# 
	ld bc,07eb4h		;3ea2	01 b4 7e 	. . ~ 
sub_3ea5h:
	nop			;3ea5	00 	. 
	nop			;3ea6	00 	. 
	ld bc,l030dh		;3ea7	01 0d 03 	. . . 
	add a,b			;3eaa	80 	. 
	inc bc			;3eab	03 	. 
	cp a			;3eac	bf 	. 
	inc b			;3ead	04 	. 
	inc bc			;3eae	03 	. 
	jp p,0ff03h		;3eaf	f2 03 ff 	. . . 
	rlca			;3eb2	07 	. 
	jp po,007e3h		;3eb3	e2 e3 07 	. . . 
	nop			;3eb6	00 	. 
	jr nz,l3eb9h		;3eb7	20 00 	  . 
l3eb9h:
	jr nc,l3ebfh		;3eb9	30 04 	0 . 
	nop			;3ebb	00 	. 
	jr l3ebeh		;3ebc	18 00 	. . 
l3ebeh:
	ld a,(de)			;3ebe	1a 	. 
l3ebfh:
	rlca			;3ebf	07 	. 
	jp po,08003h		;3ec0	e2 03 80 	. . . 
	jr nz,$+6		;3ec3	20 04 	  . 
	ld a,(ix-009h)		;3ec5	dd 7e f7 	. ~ . 
	ld bc,l0d07h		;3ec8	01 07 0d 	. . . 
	add a,b			;3ecb	80 	. 
	ld hl,0dd04h		;3ecc	21 04 dd 	! . . 
	ld a,(hl)			;3ecf	7e 	~ 
	ex de,hl			;3ed0	eb 	. 
	ld bc,l0b07h		;3ed1	01 07 0b 	. . . 
	add a,b			;3ed4	80 	. 
	ld (0dd04h),hl		;3ed5	22 04 dd 	" . . 
	ld a,(hl)			;3ed8	7e 	~ 
	cp 001h		;3ed9	fe 01 	. . 
	rlca			;3edb	07 	. 
	ld a,(bc)			;3edc	0a 	. 
	and b			;3edd	a0 	. 
	inc b			;3ede	04 	. 
	xor c			;3edf	a9 	. 
	ld (bc),a			;3ee0	02 	. 
	and l			;3ee1	a5 	. 
	ld b,0e2h		;3ee2	06 e2 	. . 
	nop			;3ee4	00 	. 
	ld a,a			;3ee5	7f 	 
	ld (bc),a			;3ee6	02 	. 
	ld a,a			;3ee7	7f 	 
	rlca			;3ee8	07 	. 
	ld a,a			;3ee9	7f 	 
	inc c			;3eea	0c 	. 
	ld a,a			;3eeb	7f 	 
	ld (de),a			;3eec	12 	. 
	ld a,a			;3eed	7f 	 
	jr l3f6fh		;3eee	18 7f 	.  
	jr nz,l3f71h		;3ef0	20 7f 	   
	daa			;3ef2	27 	' 
	ld a,a			;3ef3	7f 	 
	ld l,07fh		;3ef4	2e 7f 	.  
	ld sp,l397fh		;3ef6	31 7f 39 	1  9 
	ld a,a			;3ef9	7f 	 
	ld a,07fh		;3efa	3e 7f 	>  
	ld c,d			;3efc	4a 	J 
	ld a,a			;3efd	7f 	 
	ld d,(hl)			;3efe	56 	V 
	ld a,a			;3eff	7f 	 
	rst 38h			;3f00	ff 	. 
	ld (bc),a			;3f01	02 	. 
	rst 38h			;3f02	ff 	. 
	defb 0edh;next byte illegal after ed		;3f03	ed 	. 
	call c,002bah		;3f04	dc ba 02 	. . . 
	rst 28h			;3f07	ef 	. 
	rst 38h			;3f08	ff 	. 
	rst 38h			;3f09	ff 	. 
	xor 002h		;3f0a	ee 02 	. . 
	sbc a,0feh		;3f0c	de fe 	. . 
	defb 0ddh,0cch,0bbh	;illegal sequence		;3f0e	dd cc bb 	. . . 
	ld bc,0ffefh		;3f11	01 ef ff 	. . . 
	xor 0ddh		;3f14	ee dd 	. . 
	call 0ff01h		;3f16	cd 01 ff 	. . . 
	xor 0dch		;3f19	ee dc 	. . 
	cp d			;3f1b	ba 	. 
	xor c			;3f1c	a9 	. 
	add a,a			;3f1d	87 	. 
	halt			;3f1e	76 	v 
	ld bc,0eeffh		;3f1f	01 ff ee 	. . . 
	defb 0ddh,0cch,0bbh	;illegal sequence		;3f22	dd cc bb 	. . . 
	xor d			;3f25	aa 	. 
	ld bc,0bbedh		;3f26	01 ed bb 	. . . 
	xor c			;3f29	a9 	. 
	adc a,d			;3f2a	8a 	. 
	xor c			;3f2b	a9 	. 
	add a,l			;3f2c	85 	. 
	ld (bc),a			;3f2d	02 	. 
	sbc a,0feh		;3f2e	de fe 	. . 
	ld (bc),a			;3f30	02 	. 
	xor 0ffh		;3f31	ee ff 	. . 
	xor 0ddh		;3f33	ee dd 	. . 
	call z,0a9bbh		;3f35	cc bb a9 	. . . 
	ld bc,0ffefh		;3f38	01 ef ff 	. . . 
	defb 0edh;next byte illegal after ed		;3f3b	ed 	. 
	call c,0de02h		;3f3c	dc 02 de 	. . . 
	rst 38h			;3f3f	ff 	. 
	cp 0eeh		;3f40	fe ee 	. . 
	defb 0ddh,0dch,0cch	;illegal sequence		;3f42	dd dc cc 	. . . 
	cp e			;3f45	bb 	. 
	cp e			;3f46	bb 	. 
	cp d			;3f47	ba 	. 
	xor c			;3f48	a9 	. 
	ld bc,0efdeh		;3f49	01 de ef 	. . . 
	jp (hl)			;3f4c	e9 	. 
	ld a,c			;3f4d	79 	y 
	defb 0ddh,0cch,08bh	;illegal sequence		;3f4e	dd cc 8b 	. . . 
	or l			;3f51	b5 	. 
	sbc a,b			;3f52	98 	. 
	or a			;3f53	b7 	. 
	xor c			;3f54	a9 	. 
	ld bc,0fdffh		;3f55	01 ff fd 	. . . 
	ld (bc),a			;3f58	02 	. 
	ld h,e			;3f59	63 	c 
	ld a,a			;3f5a	7f 	 
	ld l,(hl)			;3f5b	6e 	n 
	ld a,a			;3f5c	7f 	 
	ld a,h			;3f5d	7c 	| 
	ld a,a			;3f5e	7f 	 
	adc a,e			;3f5f	8b 	. 
	ld a,a			;3f60	7f 	 
	sub b			;3f61	90 	. 
	ld a,a			;3f62	7f 	 
	xor 0eeh		;3f63	ee ee 	. . 
	xor 0eeh		;3f65	ee ee 	. . 
	xor 0ffh		;3f67	ee ff 	. . 
	xor 0ddh		;3f69	ee dd 	. . 
	rst 28h			;3f6b	ef 	. 
	cp 0ddh		;3f6c	fe dd 	. . 
	rst 28h			;3f6e	ef 	. 
l3f6fh:
	cp 0dch		;3f6f	fe dc 	. . 
l3f71h:
	call 0feefh		;3f71	cd ef fe 	. . . 
	call c,0decdh		;3f74	dc cd de 	. . . 
	rst 38h			;3f77	ff 	. 
	cp 0dch		;3f78	fe dc 	. . 
	cp h			;3f7a	bc 	. 
	sbc a,0feh		;3f7b	de fe 	. . 
	in a,(0abh)		;3f7d	db ab 	. . 
	call 0edefh		;3f7f	cd ef ed 	. . . 
	res 5,e		;3f82	cb ab 	. . 
	call 0eeefh		;3f84	cd ef ee 	. . . 
	ld bc,0eeffh		;3f87	01 ff ee 	. . . 
	nop			;3f8a	00 	. 
	xor 0eeh		;3f8b	ee ee 	. . 
	rst 38h			;3f8d	ff 	. 
	rst 38h			;3f8e	ff 	. 
	nop			;3f8f	00 	. 
	xor 0ffh		;3f90	ee ff 	. . 
	nop			;3f92	00 	. 
	rst 38h			;3f93	ff 	. 
	rst 38h			;3f94	ff 	. 
	rst 38h			;3f95	ff 	. 
	rst 38h			;3f96	ff 	. 
	rst 38h			;3f97	ff 	. 
	rst 38h			;3f98	ff 	. 
	rst 38h			;3f99	ff 	. 
	rst 38h			;3f9a	ff 	. 
	rst 38h			;3f9b	ff 	. 
	rst 38h			;3f9c	ff 	. 
	rst 38h			;3f9d	ff 	. 
	rst 38h			;3f9e	ff 	. 
	rst 38h			;3f9f	ff 	. 
	rst 38h			;3fa0	ff 	. 
	rst 38h			;3fa1	ff 	. 
	rst 38h			;3fa2	ff 	. 
	rst 38h			;3fa3	ff 	. 
	rst 38h			;3fa4	ff 	. 
	rst 38h			;3fa5	ff 	. 
	rst 38h			;3fa6	ff 	. 
	rst 38h			;3fa7	ff 	. 
	rst 38h			;3fa8	ff 	. 
	rst 38h			;3fa9	ff 	. 
	rst 38h			;3faa	ff 	. 
	rst 38h			;3fab	ff 	. 
	rst 38h			;3fac	ff 	. 
	rst 38h			;3fad	ff 	. 
	rst 38h			;3fae	ff 	. 
	rst 38h			;3faf	ff 	. 
	rst 38h			;3fb0	ff 	. 
	rst 38h			;3fb1	ff 	. 
	rst 38h			;3fb2	ff 	. 
	rst 38h			;3fb3	ff 	. 
	rst 38h			;3fb4	ff 	. 
	rst 38h			;3fb5	ff 	. 
	rst 38h			;3fb6	ff 	. 
	rst 38h			;3fb7	ff 	. 
	rst 38h			;3fb8	ff 	. 
l3fb9h:
	rst 38h			;3fb9	ff 	. 
	rst 38h			;3fba	ff 	. 
	rst 38h			;3fbb	ff 	. 
	rst 38h			;3fbc	ff 	. 
	rst 38h			;3fbd	ff 	. 
	rst 38h			;3fbe	ff 	. 
	rst 38h			;3fbf	ff 	. 
	rst 38h			;3fc0	ff 	. 
	rst 38h			;3fc1	ff 	. 
	rst 38h			;3fc2	ff 	. 
	rst 38h			;3fc3	ff 	. 
	rst 38h			;3fc4	ff 	. 
	rst 38h			;3fc5	ff 	. 
	rst 38h			;3fc6	ff 	. 
	rst 38h			;3fc7	ff 	. 
	rst 38h			;3fc8	ff 	. 
	rst 38h			;3fc9	ff 	. 
	rst 38h			;3fca	ff 	. 
	rst 38h			;3fcb	ff 	. 
	rst 38h			;3fcc	ff 	. 
	rst 38h			;3fcd	ff 	. 
	rst 38h			;3fce	ff 	. 
	rst 38h			;3fcf	ff 	. 
	rst 38h			;3fd0	ff 	. 
	rst 38h			;3fd1	ff 	. 
	rst 38h			;3fd2	ff 	. 
	rst 38h			;3fd3	ff 	. 
	rst 38h			;3fd4	ff 	. 
	rst 38h			;3fd5	ff 	. 
	rst 38h			;3fd6	ff 	. 
	rst 38h			;3fd7	ff 	. 
	rst 38h			;3fd8	ff 	. 
	rst 38h			;3fd9	ff 	. 
	rst 38h			;3fda	ff 	. 
	rst 38h			;3fdb	ff 	. 
	rst 38h			;3fdc	ff 	. 
	rst 38h			;3fdd	ff 	. 
	rst 38h			;3fde	ff 	. 
	rst 38h			;3fdf	ff 	. 
	rst 38h			;3fe0	ff 	. 
	rst 38h			;3fe1	ff 	. 
	rst 38h			;3fe2	ff 	. 
	rst 38h			;3fe3	ff 	. 
	rst 38h			;3fe4	ff 	. 
	rst 38h			;3fe5	ff 	. 
	rst 38h			;3fe6	ff 	. 
	rst 38h			;3fe7	ff 	. 
	rst 38h			;3fe8	ff 	. 
	rst 38h			;3fe9	ff 	. 
	rst 38h			;3fea	ff 	. 
	rst 38h			;3feb	ff 	. 
	rst 38h			;3fec	ff 	. 
	rst 38h			;3fed	ff 	. 
	rst 38h			;3fee	ff 	. 
	rst 38h			;3fef	ff 	. 
	ld d,h			;3ff0	54 	T 
	ld c,l			;3ff1	4d 	M 
	ld d,d			;3ff2	52 	R 
	jr nz,$+85		;3ff3	20 53 	  S 
	ld b,l			;3ff5	45 	E 
	ld b,a			;3ff6	47 	G 
	ld b,c			;3ff7	41 	A 
	rst 38h			;3ff8	ff 	. 
	rst 38h			;3ff9	ff 	. 
	ld l,a			;3ffa	6f 	o 
	inc (hl)			;3ffb	34 	4 
	ld l,b			;3ffc	68 	h 
	ld d,b			;3ffd	50 	P 
	defb 001h,04fh		;3ffe	01 4f 	. O 
