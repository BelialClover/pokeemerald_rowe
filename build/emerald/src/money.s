@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.type	 sMoneyBoxWindowId,object
	.size	 sMoneyBoxWindowId,1
sMoneyBoxWindowId:
	.byte	0x0
	.type	 sMoneyLabelSpriteId,object
	.size	 sMoneyLabelSpriteId,1
sMoneyLabelSpriteId:
	.byte	0x0
	.section .rodata
	.align	2, 0
	.type	 sOamData_MoneyLabel,object
	.size	 sOamData_MoneyLabel,8
sOamData_MoneyLabel:
	.byte	0x0
	.byte	0x40
	.byte	0x0
	.byte	0x80
	.byte	0x0
	.byte	0x0
	.short	0x0
	.align	2, 0
	.type	 sSpriteAnim_MoneyLabel,object
sSpriteAnim_MoneyLabel:
	.short	0x0
	.byte	0x0
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_MoneyLabel,8
	.align	2, 0
	.type	 sSpriteAnimTable_MoneyLabel,object
sSpriteAnimTable_MoneyLabel:
	.word	sSpriteAnim_MoneyLabel
	.size	 sSpriteAnimTable_MoneyLabel,4
	.align	2, 0
	.type	 sSpriteTemplate_MoneyLabel,object
	.size	 sSpriteTemplate_MoneyLabel,24
sSpriteTemplate_MoneyLabel:
	.short	0x2722
	.short	0x2722
	.word	sOamData_MoneyLabel
	.word	sSpriteAnimTable_MoneyLabel
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	SpriteCallbackDummy
	.align	2, 0
	.type	 sSpriteSheet_MoneyLabel,object
	.size	 sSpriteSheet_MoneyLabel,8
sSpriteSheet_MoneyLabel:
	.word	gMenuMoneyGfx
	.short	0x100
	.short	0x2722
	.align	2, 0
	.type	 sSpritePalette_MoneyLabel,object
	.size	 sSpritePalette_MoneyLabel,8
sSpritePalette_MoneyLabel:
	.word	gMenuMoneyPal
	.short	0x2722
	.space	2
.text
	.align	2, 0
	.globl	GetMoney
	.type	 GetMoney,function
	.thumb_func
GetMoney:
	ldr	r1, .L3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r1, [r1, #0x48]
	eor	r0, r0, r1
	bx	lr
.L4:
	.align	2, 0
.L3:
	.word	gSaveBlock2Ptr
.Lfe1:
	.size	 GetMoney,.Lfe1-GetMoney
	.align	2, 0
	.globl	SetMoney
	.type	 SetMoney,function
	.thumb_func
SetMoney:
	ldr	r2, .L6
	ldr	r2, [r2]
	ldr	r2, [r2, #0x48]
	eor	r2, r2, r1
	str	r2, [r0]
	bx	lr
.L7:
	.align	2, 0
.L6:
	.word	gSaveBlock2Ptr
.Lfe2:
	.size	 SetMoney,.Lfe2-SetMoney
	.align	2, 0
	.globl	IsEnoughMoney
	.type	 IsEnoughMoney,function
	.thumb_func
IsEnoughMoney:
	push	{r4, lr}
	add	r4, r1, #0
	bl	GetMoney
	cmp	r0, r4
	bcs	.L9	@cond_branch
	mov	r0, #0x0
	b	.L11
.L9:
	mov	r0, #0x1
.L11:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 IsEnoughMoney,.Lfe3-IsEnoughMoney
	.align	2, 0
	.globl	AddMoney
	.type	 AddMoney,function
	.thumb_func
AddMoney:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	add	r4, r1, #0
	bl	GetMoney
	add	r5, r0, #0
	add	r0, r5, r4
	ldr	r5, .L16
	add	r4, r5, #0
	cmp	r0, r5
	bhi	.L14	@cond_branch
	add	r5, r0, #0
	add	r0, r6, #0
	bl	GetMoney
	cmp	r5, r0
	bcs	.L14	@cond_branch
	add	r5, r4, #0
.L14:
	add	r0, r6, #0
	add	r1, r5, #0
	bl	SetMoney
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L17:
	.align	2, 0
.L16:
	.word	0x98967f
.Lfe4:
	.size	 AddMoney,.Lfe4-AddMoney
	.align	2, 0
	.globl	RemoveMoney
	.type	 RemoveMoney,function
	.thumb_func
RemoveMoney:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	bl	GetMoney
	add	r1, r0, #0
	cmp	r1, r4
	bcs	.L19	@cond_branch
	mov	r1, #0x0
	b	.L20
.L19:
	sub	r1, r1, r4
.L20:
	add	r0, r5, #0
	bl	SetMoney
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 RemoveMoney,.Lfe5-RemoveMoney
	.align	2, 0
	.globl	IsEnoughForCostInVar0x8005
	.type	 IsEnoughForCostInVar0x8005,function
	.thumb_func
IsEnoughForCostInVar0x8005:
	push	{lr}
	ldr	r0, .L22
	ldr	r0, [r0]
	mov	r1, #0x92
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	ldr	r1, .L22+0x4
	ldrh	r1, [r1]
	bl	IsEnoughMoney
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L23:
	.align	2, 0
.L22:
	.word	gSaveBlock1Ptr
	.word	gSpecialVar_0x8005
.Lfe6:
	.size	 IsEnoughForCostInVar0x8005,.Lfe6-IsEnoughForCostInVar0x8005
	.align	2, 0
	.globl	SubtractMoneyFromVar0x8005
	.type	 SubtractMoneyFromVar0x8005,function
	.thumb_func
SubtractMoneyFromVar0x8005:
	push	{lr}
	ldr	r0, .L25
	ldr	r0, [r0]
	mov	r1, #0x92
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	ldr	r1, .L25+0x4
	ldrh	r1, [r1]
	bl	RemoveMoney
	pop	{r0}
	bx	r0
.L26:
	.align	2, 0
.L25:
	.word	gSaveBlock1Ptr
	.word	gSpecialVar_0x8005
.Lfe7:
	.size	 SubtractMoneyFromVar0x8005,.Lfe7-SubtractMoneyFromVar0x8005
	.align	2, 0
	.globl	PrintMoneyAmountInMoneyBox
	.type	 PrintMoneyAmountInMoneyBox,function
	.thumb_func
PrintMoneyAmountInMoneyBox:
	push	{lr}
	add	sp, sp, #-0x4
	add	r3, r1, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	str	r2, [sp]
	mov	r1, #0x20
	mov	r2, #0x1
	bl	PrintMoneyAmount
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 PrintMoneyAmountInMoneyBox,.Lfe8-PrintMoneyAmountInMoneyBox
	.align	2, 0
	.globl	PrintMoneyAmount
	.type	 PrintMoneyAmount,function
	.thumb_func
PrintMoneyAmount:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0xc
	ldr	r4, [sp, #0x24]
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r8, r1
	lsl	r2, r2, #0x18
	lsr	r6, r2, #0x18
	lsl	r4, r4, #0x18
	lsr	r5, r4, #0x18
	ldr	r4, .L33
	add	r0, r4, #0
	add	r1, r3, #0
	mov	r2, #0x0
	mov	r3, #0x7
	bl	ConvertIntToDecimalStringN
	add	r0, r4, #0
	bl	StringLength
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x7
	sub	r1, r1, r0
	ldr	r2, .L33+0x4
	add	r0, r1, #0
	sub	r1, r1, #0x1
	cmp	r0, #0
	ble	.L30	@cond_branch
	mov	r3, #0x77
.L31:
	strb	r3, [r2]
	add	r2, r2, #0x1
	add	r0, r1, #0
	sub	r1, r1, #0x1
	cmp	r0, #0
	bgt	.L31	@cond_branch
.L30:
	ldr	r1, .L33+0x8
	add	r0, r2, #0
	bl	StringExpandPlaceholders
	ldr	r2, .L33+0x4
	str	r6, [sp]
	str	r5, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	add	r0, r7, #0
	mov	r1, #0x1
	mov	r3, r8
	bl	AddTextPrinterParameterized
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L34:
	.align	2, 0
.L33:
	.word	gStringVar1
	.word	gStringVar4
	.word	gText_PokedollarVar1
.Lfe9:
	.size	 PrintMoneyAmount,.Lfe9-PrintMoneyAmount
	.align	2, 0
	.globl	PrintMoneyAmountInMoneyBoxWithBorder
	.type	 PrintMoneyAmountInMoneyBoxWithBorder,function
	.thumb_func
PrintMoneyAmountInMoneyBoxWithBorder:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	r6, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r8, r3
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	add	r0, r6, #0
	mov	r1, #0x0
	add	r2, r4, #0
	add	r3, r5, #0
	bl	DrawStdFrameWithCustomTileAndPalette
	add	r0, r6, #0
	mov	r1, r8
	mov	r2, #0x0
	bl	PrintMoneyAmountInMoneyBox
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 PrintMoneyAmountInMoneyBoxWithBorder,.Lfe10-PrintMoneyAmountInMoneyBoxWithBorder
	.align	2, 0
	.globl	ChangeAmountInMoneyBox
	.type	 ChangeAmountInMoneyBox,function
	.thumb_func
ChangeAmountInMoneyBox:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L37
	ldrb	r0, [r0]
	mov	r2, #0x0
	bl	PrintMoneyAmountInMoneyBox
	pop	{r0}
	bx	r0
.L38:
	.align	2, 0
.L37:
	.word	sMoneyBoxWindowId
.Lfe11:
	.size	 ChangeAmountInMoneyBox,.Lfe11-ChangeAmountInMoneyBox
	.align	2, 0
	.globl	DrawMoneyBox
	.type	 DrawMoneyBox,function
	.thumb_func
DrawMoneyBox:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0x18
	mov	r8, r0
	add	r4, r1, #0
	add	r3, r2, #0
	lsl	r4, r4, #0x18
	lsl	r3, r3, #0x18
	lsr	r6, r4, #0x18
	mov	r0, #0x80
	lsl	r0, r0, #0x11
	add	r4, r4, r0
	lsr	r4, r4, #0x18
	lsr	r5, r3, #0x18
	add	r3, r3, r0
	lsr	r3, r3, #0x18
	mov	r0, #0xa
	str	r0, [sp]
	mov	r0, #0x2
	str	r0, [sp, #0x4]
	mov	r0, #0xf
	str	r0, [sp, #0x8]
	mov	r0, #0x8
	str	r0, [sp, #0xc]
	add	r0, sp, #0x10
	mov	r1, #0x0
	add	r2, r4, #0
	bl	SetWindowTemplateFields
	ldr	r4, .L40
	add	r0, sp, #0x10
	bl	AddWindow
	strb	r0, [r4]
	ldrb	r0, [r4]
	mov	r1, #0x0
	bl	FillWindowPixelBuffer
	ldrb	r0, [r4]
	bl	PutWindowTilemap
	ldrb	r0, [r4]
	mov	r1, #0x1
	bl	CopyWindowToVram
	ldrb	r0, [r4]
	mov	r1, #0x85
	lsl	r1, r1, #0x2
	mov	r2, #0xe
	mov	r3, r8
	bl	PrintMoneyAmountInMoneyBoxWithBorder
	lsl	r6, r6, #0x13
	mov	r0, #0x98
	lsl	r0, r0, #0xd
	add	r6, r6, r0
	lsr	r6, r6, #0x10
	lsl	r5, r5, #0x13
	mov	r0, #0xb0
	lsl	r0, r0, #0xc
	add	r5, r5, r0
	lsr	r5, r5, #0x10
	add	r0, r6, #0
	add	r1, r5, #0
	bl	AddMoneyLabelObject
	add	sp, sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	sMoneyBoxWindowId
.Lfe12:
	.size	 DrawMoneyBox,.Lfe12-DrawMoneyBox
	.align	2, 0
	.globl	HideMoneyBox
	.type	 HideMoneyBox,function
	.thumb_func
HideMoneyBox:
	push	{r4, lr}
	bl	RemoveMoneyLabelObject
	ldr	r4, .L43
	ldrb	r0, [r4]
	mov	r1, #0x0
	bl	ClearStdWindowAndFrameToTransparent
	ldrb	r0, [r4]
	mov	r1, #0x2
	bl	CopyWindowToVram
	ldrb	r0, [r4]
	bl	RemoveWindow
	pop	{r4}
	pop	{r0}
	bx	r0
.L44:
	.align	2, 0
.L43:
	.word	sMoneyBoxWindowId
.Lfe13:
	.size	 HideMoneyBox,.Lfe13-HideMoneyBox
	.align	2, 0
	.globl	AddMoneyLabelObject
	.type	 AddMoneyLabelObject,function
	.thumb_func
AddMoneyLabelObject:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	ldr	r0, .L46
	bl	LoadCompressedSpriteSheet
	ldr	r0, .L46+0x4
	bl	LoadCompressedSpritePalette
	ldr	r0, .L46+0x8
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, #0x0
	bl	CreateSprite
	ldr	r1, .L46+0xc
	strb	r0, [r1]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L47:
	.align	2, 0
.L46:
	.word	sSpriteSheet_MoneyLabel
	.word	sSpritePalette_MoneyLabel
	.word	sSpriteTemplate_MoneyLabel
	.word	sMoneyLabelSpriteId
.Lfe14:
	.size	 AddMoneyLabelObject,.Lfe14-AddMoneyLabelObject
	.align	2, 0
	.globl	RemoveMoneyLabelObject
	.type	 RemoveMoneyLabelObject,function
	.thumb_func
RemoveMoneyLabelObject:
	push	{lr}
	ldr	r0, .L49
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L49+0x4
	add	r0, r0, r1
	bl	DestroySpriteAndFreeResources
	pop	{r0}
	bx	r0
.L50:
	.align	2, 0
.L49:
	.word	sMoneyLabelSpriteId
	.word	gSprites
.Lfe15:
	.size	 RemoveMoneyLabelObject,.Lfe15-RemoveMoneyLabelObject
.text
	.align	2, 0

