@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sBackgroundTemplates,object
	.size	 sBackgroundTemplates,4
sBackgroundTemplates:
	.byte	0xf0
	.byte	0x1
	.byte	0x0
	.space	1
	.align	2, 0
	.type	 sUnknown_08510408,object
sUnknown_08510408:
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.byte	0xf
	.short	0x155
	.byte	0x0
	.byte	0x2
	.byte	0xf
	.byte	0x1b
	.byte	0x4
	.byte	0xf
	.short	0xe9
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 sUnknown_08510408,24
	.align	2, 0
	.type	 sUnknown_08510420,object
	.size	 sUnknown_08510420,8
sUnknown_08510420:
	.byte	0x0
	.byte	0x4
	.byte	0x9
	.byte	0x15
	.byte	0x2
	.byte	0xf
	.short	0xbf
	.align	2, 0
	.type	 sUnknown_08510428,object
	.size	 sUnknown_08510428,60
sUnknown_08510428:
	.byte	0x3
	.space	1
	.short	0x1
	.short	0x270f
	.byte	0x0
	.byte	0x2
	.byte	0x0
	.space	3
	.byte	0x4
	.space	1
	.short	0x0
	.short	0x17
	.byte	0x1
	.byte	0x3
	.byte	0x0
	.space	3
	.byte	0x5
	.space	1
	.short	0x0
	.short	0x3b
	.byte	0x2
	.byte	0x4
	.byte	0x0
	.space	3
	.byte	0x6
	.space	1
	.short	0x0
	.short	0x3b
	.byte	0x3
	.byte	0x5
	.byte	0x0
	.space	3
	.byte	0x7
	.space	1
	.short	0x0
	.short	0x0
	.byte	0x4
	.byte	0x0
	.byte	0x6
	.space	3
	.align	2, 0
	.type	 sOamData_08510464,object
	.size	 sOamData_08510464,8
sOamData_08510464:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.type	 sResetRtcScreen_DownArrowGfx,object
sResetRtcScreen_DownArrowGfx:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x2
	.byte	0x12
	.byte	0x11
	.byte	0x11
	.byte	0x2
	.byte	0x12
	.byte	0x11
	.byte	0x11
	.byte	0x2
	.byte	0x12
	.byte	0x11
	.byte	0x11
	.byte	0x2
	.byte	0x20
	.byte	0x11
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x0
	.byte	0x0
	.size	 sResetRtcScreen_DownArrowGfx,32
	.type	 sResetRtcScreen_RightArrowGfx,object
sResetRtcScreen_RightArrowGfx:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x22
	.byte	0x2
	.byte	0x0
	.byte	0x20
	.byte	0x11
	.byte	0x21
	.byte	0x0
	.byte	0x20
	.byte	0x11
	.byte	0x11
	.byte	0x2
	.byte	0x20
	.byte	0x11
	.byte	0x11
	.byte	0x21
	.byte	0x20
	.byte	0x11
	.byte	0x11
	.byte	0x2
	.byte	0x20
	.byte	0x11
	.byte	0x21
	.byte	0x0
	.byte	0x20
	.byte	0x22
	.byte	0x2
	.byte	0x0
	.size	 sResetRtcScreen_RightArrowGfx,32
	.align	1, 0
	.type	 sResetRtcScreen_ArrowPal,object
sResetRtcScreen_ArrowPal:
	.short	0x0
	.short	0x1f
	.short	0x2529
	.short	0x0
	.size	 sResetRtcScreen_ArrowPal,8
	.align	2, 0
	.type	 sSpriteImageTable_85104B4,object
sSpriteImageTable_85104B4:
	.word	sResetRtcScreen_DownArrowGfx
	.short	0x20
	.space	2
	.word	sResetRtcScreen_RightArrowGfx
	.short	0x20
	.space	2
	.size	 sSpriteImageTable_85104B4,16
	.globl	gSpritePalette_RtcArrow
	.align	2, 0
	.type	 gSpritePalette_RtcArrow,object
	.size	 gSpritePalette_RtcArrow,8
gSpritePalette_RtcArrow:
	.word	sResetRtcScreen_ArrowPal
	.short	0x1000
	.space	2
	.align	2, 0
	.type	 sSpriteAnim_85104CC,object
sSpriteAnim_85104CC:
	.short	0x0
	.byte	0x1e
	.space	1
	.short	-0x2
	.byte	0x0
	.space	1
	.size	 sSpriteAnim_85104CC,8
	.align	2, 0
	.type	 sSpriteAnim_85104D4,object
sSpriteAnim_85104D4:
	.short	0x0
	.byte	0x9e
	.space	1
	.short	-0x2
	.byte	0x0
	.space	1
	.size	 sSpriteAnim_85104D4,8
	.align	2, 0
	.type	 sSpriteAnim_85104DC,object
sSpriteAnim_85104DC:
	.short	0x1
	.byte	0x1e
	.space	1
	.short	-0x2
	.byte	0x0
	.space	1
	.size	 sSpriteAnim_85104DC,8
	.align	2, 0
	.type	 sSpriteAnimTable_85104E4,object
sSpriteAnimTable_85104E4:
	.word	sSpriteAnim_85104CC
	.word	sSpriteAnim_85104D4
	.word	sSpriteAnim_85104DC
	.size	 sSpriteAnimTable_85104E4,12
	.globl	gSpriteTemplate_RtcArrow
	.align	2, 0
	.type	 gSpriteTemplate_RtcArrow,object
	.size	 gSpriteTemplate_RtcArrow,24
gSpriteTemplate_RtcArrow:
	.short	0xffff
	.short	0x1000
	.word	sOamData_08510464
	.word	sSpriteAnimTable_85104E4
	.word	sSpriteImageTable_85104B4
	.word	gDummySpriteAffineAnimTable
	.word	SpriteCallbackDummy
.text
	.align	2, 0
	.type	 SpriteCB_ResetRtcCursor0,function
	.thumb_func
SpriteCB_ResetRtcCursor0:
	push	{lr}
	add	r3, r0, #0
	ldr	r2, .L14
	mov	r0, #0x2e
	ldrsh	r1, [r3, r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	mov	r2, #0xc
	ldrsh	r1, [r0, r2]
	mov	r2, #0x30
	ldrsh	r0, [r3, r2]
	cmp	r1, r0
	beq	.L3	@cond_branch
	strh	r1, [r3, #0x30]
	sub	r0, r1, #0x1
	cmp	r0, #0x5
	bhi	.L3	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L14+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L15:
	.align	2, 0
.L14:
	.word	gTasks
	.word	.L11
	.align	2, 0
	.align	2, 0
.L11:
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
.L5:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x1
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x41
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x35
	b	.L13
.L6:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x1
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x41
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x56
	b	.L13
.L7:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x1
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x41
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x65
	b	.L13
.L8:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x1
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x41
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x74
.L13:
	strh	r0, [r3, #0x20]
	mov	r0, #0x44
	strh	r0, [r3, #0x22]
	b	.L3
.L9:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x2
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x42
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x99
	strh	r0, [r3, #0x20]
	mov	r0, #0x50
	strh	r0, [r3, #0x22]
	b	.L3
.L10:
	add	r0, r3, #0
	bl	DestroySprite
.L3:
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 SpriteCB_ResetRtcCursor0,.Lfe1-SpriteCB_ResetRtcCursor0
	.align	2, 0
	.type	 SpriteCB_ResetRtcCursor1,function
	.thumb_func
SpriteCB_ResetRtcCursor1:
	push	{lr}
	add	r3, r0, #0
	ldr	r2, .L28
	mov	r0, #0x2e
	ldrsh	r1, [r3, r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	mov	r2, #0xc
	ldrsh	r1, [r0, r2]
	mov	r2, #0x30
	ldrsh	r0, [r3, r2]
	cmp	r1, r0
	beq	.L17	@cond_branch
	strh	r1, [r3, #0x30]
	sub	r0, r1, #0x1
	cmp	r0, #0x5
	bhi	.L17	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L28+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L29:
	.align	2, 0
.L28:
	.word	gTasks
	.word	.L25
	.align	2, 0
	.align	2, 0
.L25:
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
.L19:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x0
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x40
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x35
	b	.L27
.L20:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x0
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x40
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x56
	b	.L27
.L21:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x0
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x40
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x65
	b	.L27
.L22:
	add	r2, r3, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	add	r1, r3, #0
	add	r1, r1, #0x2a
	mov	r0, #0x0
	strb	r0, [r1]
	sub	r2, r2, #0x12
	ldrb	r1, [r2]
	sub	r0, r0, #0x40
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0x74
.L27:
	strh	r0, [r3, #0x20]
	mov	r0, #0x5c
	strh	r0, [r3, #0x22]
	b	.L17
.L23:
	add	r0, r3, #0
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r2, #0x4
	orr	r1, r1, r2
	strb	r1, [r0]
	b	.L17
.L24:
	add	r0, r3, #0
	bl	DestroySprite
.L17:
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 SpriteCB_ResetRtcCursor1,.Lfe2-SpriteCB_ResetRtcCursor1
	.align	2, 0
	.type	 CreateCursor,function
	.thumb_func
CreateCursor:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	r5, r0, #0
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	ldr	r0, .L31
	bl	LoadSpritePalette
	ldr	r0, .L31+0x4
	mov	r8, r0
	mov	r1, #0x35
	mov	r2, #0x44
	mov	r3, #0x0
	bl	CreateSpriteAtEnd
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r6, .L31+0x8
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r4, r6, #0
	add	r4, r4, #0x1c
	add	r2, r0, r4
	ldr	r1, .L31+0xc
	str	r1, [r2]
	add	r0, r0, r6
	strh	r5, [r0, #0x2e]
	ldr	r1, .L31+0x10
	strh	r1, [r0, #0x30]
	mov	r0, r8
	mov	r1, #0x35
	mov	r2, #0x44
	mov	r3, #0x0
	bl	CreateSpriteAtEnd
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r4, r0, r4
	ldr	r1, .L31+0x14
	str	r1, [r4]
	add	r0, r0, r6
	strh	r5, [r0, #0x2e]
	mov	r1, #0x1
	neg	r1, r1
	strh	r1, [r0, #0x30]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	gSpritePalette_RtcArrow
	.word	gSpriteTemplate_RtcArrow
	.word	gSprites
	.word	SpriteCB_ResetRtcCursor0
	.word	0xffff
	.word	SpriteCB_ResetRtcCursor1
.Lfe3:
	.size	 CreateCursor,.Lfe3-CreateCursor
	.align	2, 0
	.type	 FreeCursorPalette,function
	.thumb_func
FreeCursorPalette:
	push	{lr}
	ldr	r0, .L34
	ldrh	r0, [r0, #0x4]
	bl	FreeSpritePaletteByTag
	pop	{r0}
	bx	r0
.L35:
	.align	2, 0
.L34:
	.word	gSpritePalette_RtcArrow
.Lfe4:
	.size	 FreeCursorPalette,.Lfe4-FreeCursorPalette
	.align	2, 0
	.type	 HideChooseTimeWindow,function
	.thumb_func
HideChooseTimeWindow:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	add	r0, r4, #0
	mov	r1, #0x0
	bl	ClearStdWindowAndFrameToTransparent
	add	r0, r4, #0
	bl	RemoveWindow
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 HideChooseTimeWindow,.Lfe5-HideChooseTimeWindow
	.align	2, 0
	.type	 PrintTime,function
	.thumb_func
PrintTime:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x10
	mov	sl, r0
	add	r0, r1, #0
	mov	r9, r2
	add	r1, r3, #0
	ldr	r5, [sp, #0x30]
	ldr	r6, [sp, #0x34]
	ldr	r2, [sp, #0x38]
	mov	r8, r2
	mov	r2, sl
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	sl, r2
	lsl	r3, r0, #0x18
	lsr	r3, r3, #0x18
	str	r3, [sp, #0xc]
	mov	r0, r9
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r2, r8
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r8, r2
	ldr	r7, .L38
	ldr	r4, .L38+0x4
	add	r0, r4, #0
	mov	r2, #0x1
	mov	r3, #0x4
	bl	ConvertIntToDecimalStringN
	add	r0, r7, #0
	add	r1, r4, #0
	bl	StringCopy
	add	r7, r0, #0
	ldr	r1, .L38+0x8
	bl	StringCopy
	add	r7, r0, #0
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #0x1
	mov	r3, #0x3
	bl	ConvertIntToDecimalStringN
	add	r0, r7, #0
	add	r1, r4, #0
	bl	StringCopy
	add	r7, r0, #0
	ldr	r5, .L38+0xc
	add	r1, r5, #0
	bl	StringCopy
	add	r7, r0, #0
	add	r0, r4, #0
	add	r1, r6, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	add	r0, r7, #0
	add	r1, r4, #0
	bl	StringCopy
	add	r7, r0, #0
	add	r1, r5, #0
	bl	StringCopy
	add	r7, r0, #0
	add	r0, r4, #0
	mov	r1, r8
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	add	r0, r7, #0
	add	r1, r4, #0
	bl	StringCopy
	ldr	r2, .L38
	mov	r0, r9
	str	r0, [sp]
	mov	r0, #0xff
	str	r0, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	mov	r0, sl
	mov	r1, #0x1
	ldr	r3, [sp, #0xc]
	bl	AddTextPrinterParameterized
	add	sp, sp, #0x10
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L39:
	.align	2, 0
.L38:
	.word	gStringVar4
	.word	gStringVar1
	.word	gText_Day
	.word	gText_Colon3
.Lfe6:
	.size	 PrintTime,.Lfe6-PrintTime
	.align	2, 0
	.type	 ShowChooseTimeWindow,function
	.thumb_func
ShowChooseTimeWindow:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	sp, sp, #-0xc
	add	r4, r0, #0
	mov	r9, r1
	add	r5, r2, #0
	add	r6, r3, #0
	ldr	r0, [sp, #0x24]
	mov	r8, r0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, r9
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r9, r0
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r0, r8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	mov	r2, #0x85
	lsl	r2, r2, #0x2
	add	r0, r4, #0
	mov	r1, #0x0
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	str	r5, [sp]
	str	r6, [sp, #0x4]
	mov	r0, r8
	str	r0, [sp, #0x8]
	add	r0, r4, #0
	mov	r1, #0x0
	mov	r2, #0x1
	mov	r3, r9
	bl	PrintTime
	ldr	r2, .L41
	mov	r0, #0x1
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	add	r0, r4, #0
	mov	r1, #0x1
	mov	r3, #0x7e
	bl	AddTextPrinterParameterized
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	add	sp, sp, #0xc
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L42:
	.align	2, 0
.L41:
	.word	gText_Confirm2
.Lfe7:
	.size	 ShowChooseTimeWindow,.Lfe7-ShowChooseTimeWindow
	.align	2, 0
	.type	 MoveTimeUpDown,function
	.thumb_func
MoveTimeUpDown:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	add	r1, r3, #0
	mov	r0, #0x80
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L44	@cond_branch
	ldrh	r0, [r4]
	sub	r0, r0, #0x1
	b	.L57
.L44:
	mov	r0, #0x40
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L47	@cond_branch
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	b	.L58
.L47:
	mov	r0, #0x20
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L50	@cond_branch
	ldrh	r0, [r4]
	sub	r0, r0, #0xa
.L57:
	strh	r0, [r4]
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp	r0, r5
	bge	.L46	@cond_branch
	strh	r2, [r4]
	b	.L46
.L50:
	mov	r0, #0x10
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L53	@cond_branch
	mov	r0, #0x0
	b	.L56
.L53:
	ldrh	r0, [r4]
	add	r0, r0, #0xa
.L58:
	strh	r0, [r4]
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp	r0, r2
	ble	.L46	@cond_branch
	strh	r5, [r4]
.L46:
	mov	r0, #0x1
.L56:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 MoveTimeUpDown,.Lfe8-MoveTimeUpDown
	.align	2, 0
	.type	 Task_ResetRtc_3,function
	.thumb_func
Task_ResetRtc_3:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L60
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	mov	r0, #0x1
	strh	r0, [r1, #0x8]
	bx	lr
.L61:
	.align	2, 0
.L60:
	.word	gTasks
.Lfe9:
	.size	 Task_ResetRtc_3,.Lfe9-Task_ResetRtc_3
	.align	2, 0
	.type	 Task_ResetRtc_2,function
	.thumb_func
Task_ResetRtc_2:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r4, r0, #0x2
	add	r4, r4, r0
	lsl	r4, r4, #0x3
	ldr	r5, .L63
	add	r0, r4, r5
	ldrb	r0, [r0, #0x10]
	bl	HideChooseTimeWindow
	bl	FreeCursorPalette
	sub	r5, r5, #0x8
	add	r4, r4, r5
	ldr	r0, .L63+0x4
	str	r0, [r4]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L64:
	.align	2, 0
.L63:
	.word	gTasks+0x8
	.word	Task_ResetRtc_3
.Lfe10:
	.size	 Task_ResetRtc_2,.Lfe10-Task_ResetRtc_2
	.align	2, 0
	.type	 Task_ResetRtc_1,function
	.thumb_func
Task_ResetRtc_1:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r7, r0, #0x3
	ldr	r0, .L76
	mov	r8, r0
	add	r5, r7, r0
	ldrb	r4, [r5, #0x4]
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	ldr	r1, .L76+0x4
	add	r2, r0, r1
	ldr	r1, .L76+0x8
	ldrh	r3, [r1, #0x2e]
	mov	r0, #0x2
	and	r0, r0, r3
	mov	ip, r1
	cmp	r0, #0
	beq	.L66	@cond_branch
	mov	r0, r8
	sub	r0, r0, #0x8
	add	r0, r7, r0
	ldr	r1, .L76+0xc
	str	r1, [r0]
	mov	r0, #0x0
	strh	r0, [r5, #0x2]
	mov	r0, #0x6
	b	.L75
.L77:
	.align	2, 0
.L76:
	.word	gTasks+0x8
	.word	sUnknown_08510428+-0xc
	.word	gMain
	.word	Task_ResetRtc_2
.L66:
	mov	r0, #0x10
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L67	@cond_branch
	ldrb	r0, [r2, #0x7]
	cmp	r0, #0
	bne	.L75	@cond_branch
.L67:
	mov	r3, ip
	ldrh	r1, [r3, #0x2e]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L69	@cond_branch
	ldrb	r0, [r2, #0x6]
	cmp	r0, #0
	beq	.L69	@cond_branch
.L75:
	strh	r0, [r5, #0x4]
	mov	r0, #0x5
	bl	PlaySE
	b	.L65
.L69:
	cmp	r4, #0x5
	bne	.L71	@cond_branch
	mov	r0, ip
	ldrh	r1, [r0, #0x2e]
	mov	r4, #0x1
	add	r0, r4, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L65	@cond_branch
	ldr	r1, .L78
	ldrh	r0, [r5, #0x6]
	strh	r0, [r1]
	ldrh	r0, [r5, #0x8]
	strb	r0, [r1, #0x2]
	ldrh	r0, [r5, #0xa]
	strb	r0, [r1, #0x3]
	ldrh	r0, [r5, #0xc]
	strb	r0, [r1, #0x4]
	mov	r0, #0x5
	bl	PlaySE
	ldr	r1, .L78+0x4
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L78+0x8
	str	r1, [r0]
	strh	r4, [r5, #0x2]
	mov	r0, #0x6
	strh	r0, [r5, #0x4]
	b	.L65
.L79:
	.align	2, 0
.L78:
	.word	gLocalTime
	.word	gTasks
	.word	Task_ResetRtc_2
.L71:
	ldrb	r0, [r2]
	lsl	r0, r0, #0x1
	add	r0, r5, r0
	ldrh	r1, [r2, #0x2]
	ldrh	r2, [r2, #0x4]
	mov	r3, ip
	ldrh	r4, [r3, #0x30]
	mov	r3, #0xc0
	and	r3, r3, r4
	bl	MoveTimeUpDown
	cmp	r0, #0
	beq	.L65	@cond_branch
	mov	r0, #0x5
	bl	PlaySE
	ldrb	r0, [r5, #0x10]
	ldrh	r3, [r5, #0x6]
	ldrb	r1, [r5, #0x8]
	str	r1, [sp]
	ldrb	r1, [r5, #0xa]
	str	r1, [sp, #0x4]
	ldrb	r1, [r5, #0xc]
	str	r1, [sp, #0x8]
	mov	r1, #0x0
	mov	r2, #0x1
	bl	PrintTime
	ldrb	r0, [r5, #0x10]
	mov	r1, #0x2
	bl	CopyWindowToVram
.L65:
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe11:
	.size	 Task_ResetRtc_1,.Lfe11-Task_ResetRtc_1
	.align	2, 0
	.type	 Task_ResetRtc_0,function
	.thumb_func
Task_ResetRtc_0:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	sp, sp, #-0x4
	mov	r8, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	lsl	r6, r0, #0x2
	add	r6, r6, r8
	lsl	r6, r6, #0x3
	ldr	r0, .L81
	mov	r9, r0
	add	r5, r6, r0
	mov	r0, #0x0
	strh	r0, [r5]
	ldr	r1, .L81+0x4
	ldrh	r0, [r1]
	strh	r0, [r5, #0x6]
	mov	r0, #0x2
	ldrsb	r0, [r1, r0]
	strh	r0, [r5, #0x8]
	mov	r0, #0x3
	ldrsb	r0, [r1, r0]
	strh	r0, [r5, #0xa]
	mov	r0, #0x4
	ldrsb	r0, [r1, r0]
	strh	r0, [r5, #0xc]
	ldr	r0, .L81+0x8
	bl	AddWindow
	strh	r0, [r5, #0x10]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldrh	r1, [r5, #0x6]
	ldrb	r2, [r5, #0x8]
	ldrb	r3, [r5, #0xa]
	ldrb	r4, [r5, #0xc]
	str	r4, [sp]
	bl	ShowChooseTimeWindow
	mov	r0, r8
	bl	CreateCursor
	mov	r0, #0x2
	strh	r0, [r5, #0x4]
	mov	r0, #0x8
	neg	r0, r0
	add	r9, r9, r0
	add	r6, r6, r9
	ldr	r0, .L81+0xc
	str	r0, [r6]
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L82:
	.align	2, 0
.L81:
	.word	gTasks+0x8
	.word	gLocalTime
	.word	sUnknown_08510420
	.word	Task_ResetRtc_1
.Lfe12:
	.size	 Task_ResetRtc_0,.Lfe12-Task_ResetRtc_0
	.align	2, 0
	.globl	CB2_InitResetRtcScreen
	.type	 CB2_InitResetRtcScreen,function
	.thumb_func
CB2_InitResetRtcScreen:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x4
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	SetVBlankCallback
	mov	r1, sp
	mov	r0, #0x0
	strh	r0, [r1]
	mov	r0, #0x81
	lsl	r0, r0, #0x18
	mov	ip, r0
	mov	r0, sp
	mov	r1, #0xa0
	lsl	r1, r1, #0x13
	ldr	r2, .L89
	ldr	r3, .L89+0x4
	stmia r3!, {r0, r1, r2}
	.code	16
	mov	r7, #0xc0
	lsl	r7, r7, #0x13
	mov	r4, #0xc0
	lsl	r4, r4, #0x9
	mov	r9, sp
	mov	r3, #0x0
	ldr	r5, .L89+0x8
	mov	r8, r5
	mov	r6, #0x80
	lsl	r6, r6, #0x5
.L86:
	mov	r0, r9
	strh	r3, [r0]
	mov	r0, sp
	add	r1, r7, #0
	mov	r2, r8
	ldr	r5, .L89+0x4
	stmia r5!, {r0, r1, r2}
	.code	16
	add	r7, r7, r6
	sub	r4, r4, r6
	cmp	r4, r6
	bhi	.L86	@cond_branch
	mov	r0, r9
	strh	r3, [r0]
	lsr	r2, r4, #0x1
	mov	r0, sp
	add	r1, r7, #0
	mov	r3, ip
	orr	r2, r2, r3
	ldr	r5, .L89+0x4
	stmia r5!, {r0, r1, r2}
	.code	16
	mov	r0, #0x0
	mov	r1, #0x80
	bl	ResetOamRange
	bl	LoadOam
	bl	ScanlineEffect_Stop
	bl	ScanlineEffect_Clear
	bl	ResetSpriteData
	bl	ResetTasks
	bl	ResetPaletteFade
	bl	sub_809F048
	ldr	r0, .L89+0xc
	bl	SetVBlankCallback
	ldr	r0, .L89+0x10
	bl	SetMainCallback2
	ldr	r0, .L89+0x14
	mov	r1, #0x50
	bl	CreateTask
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L90:
	.align	2, 0
.L89:
	.word	-0x7efffe00
	.word	0x40000d4
	.word	-0x7efff800
	.word	VBlankCB
	.word	CB2_ResetRtcScreen
	.word	Task_ResetRtcScreen
.Lfe13:
	.size	 CB2_InitResetRtcScreen,.Lfe13-CB2_InitResetRtcScreen
	.align	2, 0
	.type	 sub_809F048,function
	.thumb_func
sub_809F048:
	push	{lr}
	bl	ClearScheduledBgCopiesToVram
	mov	r0, #0x0
	bl	ResetBgsAndClearDma3BusyFlags
	ldr	r1, .L92
	mov	r0, #0x0
	mov	r2, #0x1
	bl	InitBgsFromTemplates
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	mov	r1, #0x82
	lsl	r1, r1, #0x5
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	ShowBg
	ldr	r0, .L92+0x4
	bl	InitWindows
	bl	DeactivateAllTextPrinters
	bl	LoadMessageBoxAndBorderGfx
	pop	{r0}
	bx	r0
.L93:
	.align	2, 0
.L92:
	.word	sBackgroundTemplates
	.word	sUnknown_08510408
.Lfe14:
	.size	 sub_809F048,.Lfe14-sub_809F048
	.align	2, 0
	.type	 CB2_ResetRtcScreen,function
	.thumb_func
CB2_ResetRtcScreen:
	push	{lr}
	bl	RunTasks
	bl	AnimateSprites
	bl	BuildOamBuffer
	bl	DoScheduledBgTilemapCopiesToVram
	bl	UpdatePaletteFade
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 CB2_ResetRtcScreen,.Lfe15-CB2_ResetRtcScreen
	.align	2, 0
	.type	 VBlankCB,function
	.thumb_func
VBlankCB:
	push	{lr}
	bl	ProcessSpriteCopyRequests
	bl	LoadOam
	bl	TransferPlttBuffer
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 VBlankCB,.Lfe16-VBlankCB
	.align	2, 0
	.type	 ShowMessage,function
	.thumb_func
ShowMessage:
	push	{r4, lr}
	add	sp, sp, #-0xc
	add	r4, r0, #0
	mov	r2, #0x80
	lsl	r2, r2, #0x2
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r3, #0xf
	bl	DrawDialogFrameWithCustomTileAndPalette
	mov	r0, #0x1
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0x1
	add	r2, r4, #0
	mov	r3, #0x0
	bl	AddTextPrinterParameterized
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe17:
	.size	 ShowMessage,.Lfe17-ShowMessage
	.align	2, 0
	.type	 Task_ShowResetRtcPrompt,function
	.thumb_func
Task_ShowResetRtcPrompt:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	lsl	r0, r7, #0x2
	add	r0, r0, r7
	lsl	r0, r0, #0x3
	ldr	r1, .L106
	add	r6, r0, r1
	mov	r0, #0x0
	ldrsh	r5, [r6, r0]
	cmp	r5, #0
	beq	.L99	@cond_branch
	cmp	r5, #0x1
	beq	.L100	@cond_branch
	b	.L98
.L107:
	.align	2, 0
.L106:
	.word	gTasks+0x8
.L99:
	mov	r2, #0x85
	lsl	r2, r2, #0x2
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	ldr	r2, .L108
	mov	r0, #0x1
	str	r0, [sp]
	mov	r4, #0xff
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x0
	mov	r1, #0x1
	mov	r3, #0x0
	bl	AddTextPrinterParameterized
	ldr	r1, .L108+0x4
	ldrh	r3, [r1]
	ldrb	r0, [r1, #0x2]
	str	r0, [sp]
	ldrb	r0, [r1, #0x3]
	str	r0, [sp, #0x4]
	ldrb	r0, [r1, #0x4]
	str	r0, [sp, #0x8]
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x11
	bl	PrintTime
	ldr	r2, .L108+0x8
	mov	r0, #0x21
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x0
	mov	r1, #0x1
	mov	r3, #0x0
	bl	AddTextPrinterParameterized
	ldr	r0, .L108+0xc
	ldr	r1, [r0]
	ldrh	r3, [r1, #0x3c]
	add	r0, r1, #0
	add	r0, r0, #0x3e
	ldrb	r0, [r0]
	str	r0, [sp]
	add	r0, r1, #0
	add	r0, r0, #0x3f
	ldrb	r0, [r0]
	str	r0, [sp, #0x4]
	add	r0, r1, #0
	add	r0, r0, #0x40
	ldrb	r0, [r0]
	str	r0, [sp, #0x8]
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x31
	bl	PrintTime
	ldr	r0, .L108+0x10
	bl	ShowMessage
	mov	r0, #0x0
	mov	r1, #0x2
	bl	CopyWindowToVram
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	ldrh	r0, [r6]
	add	r0, r0, #0x1
	strh	r0, [r6]
.L100:
	ldr	r0, .L108+0x14
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L101	@cond_branch
	add	r0, r7, #0
	bl	DestroyTask
	bl	DoSoftReset
	b	.L98
.L109:
	.align	2, 0
.L108:
	.word	gText_PresentTime
	.word	gLocalTime
	.word	gText_PreviousTime
	.word	gSaveBlock2Ptr
	.word	gText_ResetRTCConfirmCancel
	.word	gMain
.L101:
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L98	@cond_branch
	mov	r0, #0x5
	bl	PlaySE
	add	r0, r7, #0
	bl	DestroyTask
.L98:
	add	sp, sp, #0xc
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe18:
	.size	 Task_ShowResetRtcPrompt,.Lfe18-Task_ShowResetRtcPrompt
	.align	2, 0
	.type	 Task_ResetRtcScreen,function
	.thumb_func
Task_ResetRtcScreen:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	ldr	r1, .L135
	add	r5, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r5, r1]
	cmp	r0, #0x6
	bls	.LCB1460
	b	.L111	@long jump
.LCB1460:
	lsl	r0, r0, #0x2
	ldr	r1, .L135+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L136:
	.align	2, 0
.L135:
	.word	gTasks+0x8
	.word	.L132
	.align	2, 0
	.align	2, 0
.L132:
	.word	.L112
	.word	.L113
	.word	.L118
	.word	.L120
	.word	.L124
	.word	.L127
	.word	.L130
.L112:
	mov	r0, #0x1
	neg	r0, r0
	ldr	r1, .L137
	str	r1, [sp]
	mov	r1, #0x1
	mov	r2, #0x10
	mov	r3, #0x0
	bl	BeginNormalPaletteFade
	mov	r0, #0x1
	strh	r0, [r5]
	b	.L111
.L138:
	.align	2, 0
.L137:
	.word	0xffff
.L113:
	ldr	r0, .L139
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LCB1507
	b	.L111	@long jump
.LCB1507:
	ldr	r0, .L139+0x4
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	.L116	@cond_branch
	cmp	r0, #0x2
	bne	.L115	@cond_branch
.L116:
	ldr	r0, .L139+0x8
	bl	ShowMessage
	mov	r0, #0x5
	strh	r0, [r5]
	b	.L111
.L140:
	.align	2, 0
.L139:
	.word	gPaletteFade
	.word	gSaveFileStatus
	.word	gText_NoSaveFileCantSetTime
.L115:
	bl	RtcCalcLocalTime
	ldr	r0, .L141
	mov	r1, #0x50
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r5, #0x2]
	b	.L134
.L142:
	.align	2, 0
.L141:
	.word	Task_ShowResetRtcPrompt
.L118:
	ldr	r2, .L143
	mov	r0, #0x2
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	ldrb	r0, [r0, #0x4]
	cmp	r0, #0x1
	bne	.LCB1564
	b	.L111	@long jump
.LCB1564:
	mov	r0, #0x0
	mov	r1, #0x0
	bl	ClearStdWindowAndFrameToTransparent
	ldr	r0, .L143+0x4
	bl	ShowMessage
	ldr	r2, .L143+0x8
	ldr	r0, .L143+0xc
	ldr	r0, [r0]
	ldr	r1, [r0, #0x40]		@ created by thumb_load_double_from_address
	ldr	r0, [r0, #0x3c]		@ created by thumb_load_double_from_address
	str	r0, [r2]
	str	r1, [r2, #0x4]
	ldr	r0, .L143+0x10
	mov	r1, #0x50
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r5, #0x2]
	mov	r0, #0x3
	strh	r0, [r5]
	b	.L111
.L144:
	.align	2, 0
.L143:
	.word	gTasks
	.word	gText_PleaseResetTime
	.word	gLocalTime
	.word	gSaveBlock2Ptr
	.word	Task_ResetRtc_0
.L120:
	ldr	r2, .L145
	mov	r0, #0x2
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	add	r1, r0, r2
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	beq	.L111	@cond_branch
	mov	r2, #0xa
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	bne	.L122	@cond_branch
	ldrb	r0, [r5, #0x2]
	bl	DestroyTask
.L134:
	mov	r0, #0x2
	strh	r0, [r5]
	b	.L111
.L146:
	.align	2, 0
.L145:
	.word	gTasks
.L122:
	ldrb	r0, [r5, #0x2]
	bl	DestroyTask
	bl	RtcReset
	ldr	r4, .L147
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	mov	r1, #0x2
	ldrsb	r1, [r4, r1]
	mov	r2, #0x3
	ldrsb	r2, [r4, r2]
	mov	r3, #0x4
	ldrsb	r3, [r4, r3]
	bl	RtcCalcLocalTimeOffset
	ldr	r0, .L147+0x4
	ldr	r2, [r0]
	ldr	r0, [r4]		@ created by thumb_load_double_from_address
	ldr	r1, [r4, #0x4]		@ created by thumb_load_double_from_address
	str	r0, [r2, #0x3c]
	str	r1, [r2, #0x40]
	ldr	r0, .L147+0x8
	ldrh	r1, [r4]
	bl	VarSet
	bl	DisableResetRTC
	ldr	r0, .L147+0xc
	bl	ShowMessage
	mov	r0, #0x4
	strh	r0, [r5]
	b	.L111
.L148:
	.align	2, 0
.L147:
	.word	gLocalTime
	.word	gSaveBlock2Ptr
	.word	0x4040
	.word	gText_ClockHasBeenReset
.L124:
	mov	r0, #0x0
	bl	TrySavingData
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L125	@cond_branch
	ldr	r0, .L149
	bl	ShowMessage
	mov	r0, #0x49
	bl	PlaySE
	b	.L126
.L150:
	.align	2, 0
.L149:
	.word	gText_SaveCompleted
.L125:
	ldr	r0, .L151
	bl	ShowMessage
	mov	r0, #0x16
	bl	PlaySE
.L126:
	mov	r0, #0x5
	strh	r0, [r5]
.L127:
	ldr	r0, .L151+0x4
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L111	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	ldr	r1, .L151+0x8
	str	r1, [sp]
	mov	r1, #0x1
	mov	r2, #0x0
	mov	r3, #0x10
	bl	BeginNormalPaletteFade
	mov	r0, #0x6
	strh	r0, [r5]
.L130:
	ldr	r0, .L151+0xc
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L111	@cond_branch
	add	r0, r4, #0
	bl	DestroyTask
	bl	FreeAllWindowBuffers
	bl	DoSoftReset
.L111:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L152:
	.align	2, 0
.L151:
	.word	gText_SaveFailed
	.word	gMain
	.word	0xffff
	.word	gPaletteFade
.Lfe19:
	.size	 Task_ResetRtcScreen,.Lfe19-Task_ResetRtcScreen
.text
	.align	2, 0

