@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sWork,object
	.size	 sWork,4
sWork:
	.word	0x0
.text
	.align	2, 0
	.type	 sub_81520A8,function
	.thumb_func
sub_81520A8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	mov	sl, r0
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x28]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r9, r1
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	str	r2, [sp]
	lsl	r3, r3, #0x18
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r8, r4
	mov	r0, #0x0
	lsr	r4, r3, #0x18
	cmp	r0, r8
	bcs	.L4	@cond_branch
.L6:
	ldr	r2, [sp]
	mov	r3, #0x0
	add	r6, r4, #0x1
	add	r0, r0, #0x1
	mov	ip, r0
	cmp	r3, r7
	bcs	.L8	@cond_branch
	lsl	r5, r4, #0x6
.L10:
	lsl	r0, r2, #0x1
	add	r0, r0, r5
	add	r0, r0, sl
	mov	r1, r9
	strh	r1, [r0]
	add	r1, r2, #0x1
	add	r0, r1, #0
	asr	r0, r0, #0x5
	lsl	r0, r0, #0x5
	sub	r0, r1, r0
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, r7
	bcc	.L10	@cond_branch
.L8:
	add	r0, r6, #0
	asr	r0, r0, #0x5
	lsl	r0, r0, #0x5
	sub	r0, r6, r0
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r1, ip
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, r8
	bcc	.L6	@cond_branch
.L4:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 sub_81520A8,.Lfe1-sub_81520A8
	.align	2, 0
	.type	 sub_8152134,function
	.thumb_func
sub_8152134:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	mov	sl, r0
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x28]
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	str	r2, [sp]
	lsl	r3, r3, #0x18
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	ip, r0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r9, r4
	mov	r0, #0x0
	add	r5, r1, #0
	lsr	r4, r3, #0x18
	cmp	r0, r9
	bcs	.L17	@cond_branch
.L19:
	ldr	r2, [sp]
	mov	r3, #0x0
	add	r7, r4, #0x1
	add	r0, r0, #0x1
	mov	r8, r0
	cmp	r3, ip
	bcs	.L21	@cond_branch
	lsl	r6, r4, #0x6
.L23:
	lsl	r0, r2, #0x1
	add	r0, r0, r6
	add	r0, r0, sl
	ldrh	r1, [r5]
	strh	r1, [r0]
	add	r5, r5, #0x2
	add	r1, r2, #0x1
	add	r0, r1, #0
	asr	r0, r0, #0x5
	lsl	r0, r0, #0x5
	sub	r0, r1, r0
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, ip
	bcc	.L23	@cond_branch
.L21:
	add	r0, r7, #0
	asr	r0, r0, #0x5
	lsl	r0, r0, #0x5
	sub	r0, r7, r0
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r1, r8
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, r9
	bcc	.L19	@cond_branch
.L17:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 sub_8152134,.Lfe2-sub_8152134
	.align	2, 0
	.globl	ConfettiUtil_Init
	.type	 ConfettiUtil_Init,function
	.thumb_func
ConfettiUtil_Init:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r5, #0x0
	cmp	r4, #0
	beq	.L40	@cond_branch
	cmp	r4, #0x40
	bls	.L30	@cond_branch
	mov	r4, #0x40
.L30:
	ldr	r6, .L41
	mov	r0, #0x8
	bl	AllocZeroed
	str	r0, [r6]
	cmp	r0, #0
	beq	.L40	@cond_branch
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x4
	bl	AllocZeroed
	ldr	r1, [r6]
	str	r0, [r1, #0x4]
	cmp	r0, #0
	bne	.L32	@cond_branch
	add	r0, r1, #0
	bl	Free
	str	r5, [r6]
.L40:
	mov	r0, #0x0
	b	.L38
.L42:
	.align	2, 0
.L41:
	.word	sWork
.L32:
	strb	r4, [r1]
	cmp	r5, r4
	bcs	.L34	@cond_branch
	add	r3, r6, #0
	ldr	r0, .L43
	mov	ip, r0
	mov	r2, #0x4
	mov	r8, r2
.L36:
	ldr	r0, [r3]
	ldr	r2, [r0, #0x4]
	lsl	r1, r5, #0x1
	add	r1, r1, r5
	lsl	r1, r1, #0x4
	add	r2, r1, r2
	mov	r0, ip
	ldmia	r0!, {r6, r7}
	stmia	r2!, {r6, r7}
	ldr	r0, [r3]
	ldr	r0, [r0, #0x4]
	add	r1, r1, r0
	ldrb	r0, [r1, #0x19]
	mov	r2, r8
	orr	r0, r0, r2
	strb	r0, [r1, #0x19]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, r4
	bcc	.L36	@cond_branch
.L34:
	mov	r0, #0x1
.L38:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L44:
	.align	2, 0
.L43:
	.word	gDummyOamData
.Lfe3:
	.size	 ConfettiUtil_Init,.Lfe3-ConfettiUtil_Init
	.align	2, 0
	.globl	ConfettiUtil_Free
	.type	 ConfettiUtil_Free,function
	.thumb_func
ConfettiUtil_Free:
	push	{r4, r5, r6, r7, lr}
	mov	r3, #0x0
	ldr	r0, .L53
	ldr	r2, [r0]
	add	r5, r0, #0
	cmp	r2, #0
	bne	.L46	@cond_branch
	mov	r0, #0x0
	b	.L52
.L54:
	.align	2, 0
.L53:
	.word	sWork
.L46:
	ldrb	r2, [r2]
	cmp	r3, r2
	bcs	.L48	@cond_branch
	ldr	r0, .L55
	mov	ip, r0
	ldr	r4, .L55+0x4
	add	r2, r5, #0
.L50:
	lsl	r1, r3, #0x3
	add	r1, r1, ip
	add	r0, r4, #0
	ldmia	r0!, {r6, r7}
	stmia	r1!, {r6, r7}
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	ldr	r0, [r2]
	ldrb	r0, [r0]
	cmp	r3, r0
	bcc	.L50	@cond_branch
.L48:
	ldr	r1, [r5]
	ldrb	r0, [r1]
	lsl	r2, r0, #0x1
	add	r2, r2, r0
	ldr	r0, [r1, #0x4]
	lsl	r2, r2, #0x4
	mov	r1, #0x0
	bl	memset
	ldr	r0, [r5]
	ldr	r0, [r0, #0x4]
	bl	Free
	ldr	r0, [r5]
	mov	r4, #0x0
	str	r4, [r0, #0x4]
	mov	r1, #0x0
	mov	r2, #0x8
	bl	memset
	ldr	r0, [r5]
	bl	Free
	str	r4, [r5]
	mov	r0, #0x1
.L52:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L56:
	.align	2, 0
.L55:
	.word	gMain+0x238
	.word	gDummyOamData
.Lfe4:
	.size	 ConfettiUtil_Free,.Lfe4-ConfettiUtil_Free
	.align	2, 0
	.globl	ConfettiUtil_Update
	.type	 ConfettiUtil_Update,function
	.thumb_func
ConfettiUtil_Update:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, #0x0
	ldr	r0, .L71
	ldr	r1, [r0]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.L59	@cond_branch
	ldr	r0, [r1, #0x4]
	cmp	r0, #0
	bne	.L58	@cond_branch
.L59:
	mov	r0, #0x0
	b	.L69
.L72:
	.align	2, 0
.L71:
	.word	sWork
.L58:
	ldrb	r1, [r1]
	cmp	r6, r1
	bcs	.L61	@cond_branch
	add	r7, r3, #0
	mov	r0, #0x3
	mov	r8, r0
.L63:
	ldr	r0, [r7]
	ldr	r1, [r0, #0x4]
	lsl	r0, r6, #0x1
	add	r0, r0, r6
	lsl	r5, r0, #0x4
	add	r2, r5, r1
	ldrb	r1, [r2, #0x19]
	mov	r0, #0x3
	and	r0, r0, r1
	cmp	r0, #0x3
	bne	.L62	@cond_branch
	ldr	r1, [r2, #0x2c]
	cmp	r1, #0
	beq	.L65	@cond_branch
	add	r0, r2, #0
	bl	_call_via_r1
.L65:
	ldr	r0, [r7]
	ldr	r0, [r0, #0x4]
	add	r2, r5, r0
	ldrb	r1, [r2, #0x19]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L66	@cond_branch
	lsl	r0, r6, #0x3
	ldr	r1, .L73
	add	r0, r0, r1
	ldr	r1, .L73+0x4
	ldmia	r1!, {r2, r3}
	stmia	r0!, {r2, r3}
	b	.L70
.L74:
	.align	2, 0
.L73:
	.word	gMain+0x238
	.word	gDummyOamData
.L66:
	ldrb	r0, [r2, #0xe]
	ldrb	r4, [r2, #0xa]
	add	r0, r0, r4
	strb	r0, [r2]
	ldr	r4, [r7]
	ldr	r3, [r4, #0x4]
	add	r3, r5, r3
	mov	r0, #0x8
	ldrsh	r2, [r3, r0]
	mov	r1, #0xc
	ldrsh	r0, [r3, r1]
	add	r2, r2, r0
	ldr	r1, .L75
	add	r0, r1, #0
	and	r2, r2, r0
	ldrh	r0, [r3, #0x2]
	ldr	r1, .L75+0x4
	mov	ip, r1
	mov	r1, ip
	and	r0, r0, r1
	orr	r0, r0, r2
	strh	r0, [r3, #0x2]
	ldr	r3, [r4, #0x4]
	add	r3, r5, r3
	ldrb	r0, [r3, #0x19]
	lsl	r0, r0, #0x1b
	lsr	r0, r0, #0x1e
	mov	r2, r8
	and	r0, r0, r2
	lsl	r0, r0, #0x2
	ldrb	r1, [r3, #0x5]
	mov	r4, #0xd
	neg	r4, r4
	add	r2, r4, #0
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r3, #0x5]
	ldr	r4, [r7]
	ldr	r2, [r4, #0x4]
	add	r2, r5, r2
	ldrh	r3, [r2, #0x14]
	ldr	r1, .L75+0x8
	add	r0, r1, #0
	add	r1, r3, #0
	and	r1, r1, r0
	mov	ip, r1
	ldrh	r0, [r2, #0x4]
	ldr	r3, .L75+0xc
	add	r1, r3, #0
	and	r0, r0, r1
	mov	r1, ip
	orr	r0, r0, r1
	strh	r0, [r2, #0x4]
	lsl	r1, r6, #0x3
	ldr	r2, .L75+0x10
	ldr	r0, [r4, #0x4]
	add	r1, r1, r2
	add	r0, r5, r0
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
.L70:
	ldr	r3, .L75+0x14
.L62:
	add	r0, r6, #0x1
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	ldr	r0, [r3]
	ldrb	r0, [r0]
	cmp	r6, r0
	bcc	.L63	@cond_branch
.L61:
	mov	r0, #0x1
.L69:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L76:
	.align	2, 0
.L75:
	.word	0x1ff
	.word	-0x200
	.word	0x3ff
	.word	-0x400
	.word	gMain+0x238
	.word	sWork
.Lfe5:
	.size	 ConfettiUtil_Update,.Lfe5-ConfettiUtil_Update
	.align	2, 0
	.type	 SetAnimAndTileNum,function
	.thumb_func
SetAnimAndTileNum:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	lsl	r1, r1, #0x18
	lsr	r6, r1, #0x18
	cmp	r4, #0
	beq	.L79	@cond_branch
	ldrh	r0, [r4, #0x10]
	bl	GetSpriteTileStartByTag
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	ldr	r0, .L81
	cmp	r5, r0
	beq	.L79	@cond_branch
	strb	r6, [r4, #0x18]
	ldrb	r0, [r4, #0x1]
	lsr	r0, r0, #0x6
	ldrb	r1, [r4, #0x3]
	lsr	r1, r1, #0x6
	bl	GetTilesPerImage
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mul	r0, r0, r6
	add	r0, r5, r0
	strh	r0, [r4, #0x14]
	mov	r0, #0x1
	b	.L80
.L82:
	.align	2, 0
.L81:
	.word	0xffff
.L79:
	mov	r0, #0x0
.L80:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 SetAnimAndTileNum,.Lfe6-SetAnimAndTileNum
	.align	2, 0
	.globl	ConfettiUtil_SetCallback
	.type	 ConfettiUtil_SetCallback,function
	.thumb_func
ConfettiUtil_SetCallback:
	push	{r4, lr}
	add	r4, r1, #0
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L89
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L86	@cond_branch
	ldrb	r1, [r0]
	cmp	r2, r1
	bcs	.L86	@cond_branch
	ldr	r1, [r0, #0x4]
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x4
	add	r3, r0, r1
	ldrb	r1, [r3, #0x19]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L86	@cond_branch
	str	r4, [r3, #0x2c]
	add	r0, r2, #0
	b	.L88
.L90:
	.align	2, 0
.L89:
	.word	sWork
.L86:
	mov	r0, #0xff
.L88:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 ConfettiUtil_SetCallback,.Lfe7-ConfettiUtil_SetCallback
	.align	2, 0
	.globl	ConfettiUtil_SetData
	.type	 ConfettiUtil_SetData,function
	.thumb_func
ConfettiUtil_SetData:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	lsl	r2, r2, #0x10
	lsr	r5, r2, #0x10
	ldr	r0, .L98
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L96	@cond_branch
	ldrb	r1, [r0]
	cmp	r3, r1
	bcs	.L96	@cond_branch
	ldr	r1, [r0, #0x4]
	lsl	r0, r3, #0x1
	add	r0, r0, r3
	lsl	r0, r0, #0x4
	add	r2, r0, r1
	ldrb	r1, [r2, #0x19]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L96	@cond_branch
	cmp	r4, #0x7
	bls	.L94	@cond_branch
.L96:
	mov	r0, #0xff
	b	.L97
.L99:
	.align	2, 0
.L98:
	.word	sWork
.L94:
	lsl	r1, r4, #0x1
	add	r0, r2, #0
	add	r0, r0, #0x1a
	add	r0, r0, r1
	strh	r5, [r0]
	add	r0, r3, #0
.L97:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 ConfettiUtil_SetData,.Lfe8-ConfettiUtil_SetData
	.align	2, 0
	.globl	ConfettiUtil_AddNew
	.type	 ConfettiUtil_AddNew,function
	.thumb_func
ConfettiUtil_AddNew:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x10
	mov	r9, r0
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x34]
	ldr	r5, [sp, #0x38]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r1, [sp]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r8, r2
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	str	r3, [sp, #0x4]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	str	r0, [sp, #0x8]
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0xc]
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	mov	sl, r5
	mov	r5, #0x0
	ldr	r0, .L114
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L113	@cond_branch
	mov	r1, r9
	cmp	r1, #0
	bne	.L101	@cond_branch
	b	.L113
.L115:
	.align	2, 0
.L114:
	.word	sWork
.L112:
	add	r5, r2, #0
	add	r0, r5, #0
	mov	r1, #0x0
	mov	r2, #0x30
	bl	memset
	strb	r4, [r5, #0x16]
	ldrb	r0, [r5, #0x19]
	mov	r1, #0x1
	orr	r0, r0, r1
	mov	r1, #0x2
	orr	r0, r0, r1
	strb	r0, [r5, #0x19]
	b	.L104
.L101:
	mov	r4, #0x0
	ldrb	r1, [r0]
	cmp	r5, r1
	bcs	.L104	@cond_branch
	ldr	r6, [r0, #0x4]
	add	r3, r1, #0
	mov	r7, #0x1
.L106:
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x4
	add	r2, r0, r6
	ldrb	r1, [r2, #0x19]
	add	r0, r7, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L112	@cond_branch
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, r3
	bcc	.L106	@cond_branch
.L104:
	cmp	r5, #0
	bne	.L109	@cond_branch
.L113:
	mov	r0, #0xff
	b	.L111
.L109:
	add	r1, r5, #0
	mov	r0, r9
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r5, #0x10]
	mov	r1, r8
	strh	r1, [r5, #0x12]
	mov	r2, sp
	ldrh	r2, [r2, #0x4]
	strh	r2, [r5, #0x8]
	mov	r3, sp
	ldrh	r3, [r3, #0x8]
	strh	r3, [r5, #0xa]
	mov	r0, r8
	bl	IndexOfSpritePaletteTag
	lsl	r0, r0, #0x4
	ldrb	r1, [r5, #0x5]
	mov	r4, #0xf
	and	r4, r4, r1
	orr	r4, r4, r0
	strb	r4, [r5, #0x5]
	mov	r0, sl
	cmp	r0, #0x3
	bhi	.L110	@cond_branch
	mov	r1, #0x3
	and	r1, r1, r0
	lsl	r3, r1, #0x3
	ldrb	r2, [r5, #0x19]
	mov	r0, #0x19
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r3
	strb	r0, [r5, #0x19]
	lsl	r1, r1, #0x2
	mov	r0, #0xd
	neg	r0, r0
	and	r4, r4, r0
	orr	r4, r4, r1
	strb	r4, [r5, #0x5]
.L110:
	add	r0, r5, #0
	ldr	r1, [sp, #0xc]
	bl	SetAnimAndTileNum
	ldrb	r0, [r5, #0x16]
.L111:
	add	sp, sp, #0x10
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 ConfettiUtil_AddNew,.Lfe9-ConfettiUtil_AddNew
	.align	2, 0
	.globl	ConfettiUtil_Remove
	.type	 ConfettiUtil_Remove,function
	.thumb_func
ConfettiUtil_Remove:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r6, .L120
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L118	@cond_branch
	ldr	r1, [r0, #0x4]
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r4, r0, #0x4
	add	r2, r4, r1
	ldrb	r1, [r2, #0x19]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L117	@cond_branch
.L118:
	mov	r0, #0xff
	b	.L119
.L121:
	.align	2, 0
.L120:
	.word	sWork
.L117:
	add	r0, r2, #0
	mov	r1, #0x0
	mov	r2, #0x30
	bl	memset
	ldr	r0, [r6]
	ldr	r0, [r0, #0x4]
	add	r0, r4, r0
	mov	r1, #0xa0
	strb	r1, [r0]
	ldr	r3, [r6]
	ldr	r2, [r3, #0x4]
	add	r2, r4, r2
	ldrh	r1, [r2, #0x2]
	ldr	r0, .L122
	and	r0, r0, r1
	mov	r1, #0xf0
	orr	r0, r0, r1
	strh	r0, [r2, #0x2]
	ldr	r1, [r3, #0x4]
	add	r1, r4, r1
	ldrb	r0, [r1, #0x19]
	mov	r2, #0x4
	orr	r0, r0, r2
	strb	r0, [r1, #0x19]
	lsl	r1, r5, #0x3
	ldr	r0, .L122+0x4
	add	r1, r1, r0
	ldr	r0, .L122+0x8
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	add	r0, r5, #0
.L119:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L123:
	.align	2, 0
.L122:
	.word	-0x200
	.word	gMain+0x238
	.word	gDummyOamData
.Lfe10:
	.size	 ConfettiUtil_Remove,.Lfe10-ConfettiUtil_Remove
.text
	.align	2, 0
