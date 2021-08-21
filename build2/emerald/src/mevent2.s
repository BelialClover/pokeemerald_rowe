@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 gUnknown_02022C70,object
	.size	 gUnknown_02022C70,4
gUnknown_02022C70:
	.word	0x0
.text
	.align	2, 0
	.globl	sub_801AFD8
	.type	 sub_801AFD8,function
	.thumb_func
sub_801AFD8:
	bx	lr
.Lfe1:
	.size	 sub_801AFD8,.Lfe1-sub_801AFD8
	.align	2, 0
	.globl	GetSavedWonderNews
	.type	 GetSavedWonderNews,function
	.thumb_func
GetSavedWonderNews:
	bx	lr
.Lfe2:
	.size	 GetSavedWonderNews,.Lfe2-GetSavedWonderNews
	.align	2, 0
	.globl	GetSavedWonderCard
	.type	 GetSavedWonderCard,function
	.thumb_func
GetSavedWonderCard:
	bx	lr
.Lfe3:
	.size	 GetSavedWonderCard,.Lfe3-GetSavedWonderCard
	.align	2, 0
	.globl	sav1_get_mevent_buffer_2
	.type	 sav1_get_mevent_buffer_2,function
	.thumb_func
sav1_get_mevent_buffer_2:
	bx	lr
.Lfe4:
	.size	 sav1_get_mevent_buffer_2,.Lfe4-sav1_get_mevent_buffer_2
	.align	2, 0
	.globl	sub_801B044
	.type	 sub_801B044,function
	.thumb_func
sub_801B044:
	bx	lr
.Lfe5:
	.size	 sub_801B044,.Lfe5-sub_801B044
	.align	2, 0
	.globl	sub_801B058
	.type	 sub_801B058,function
	.thumb_func
sub_801B058:
	bx	lr
.Lfe6:
	.size	 sub_801B058,.Lfe6-sub_801B058
	.align	2, 0
	.globl	DestroyWonderNews
	.type	 DestroyWonderNews,function
	.thumb_func
DestroyWonderNews:
	push	{lr}
	bl	s_DestroyWonderNews
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 DestroyWonderNews,.Lfe7-DestroyWonderNews
	.align	2, 0
	.globl	sub_801B078
	.type	 sub_801B078,function
	.thumb_func
sub_801B078:
	mov	r0, #0x0
	bx	lr
.Lfe8:
	.size	 sub_801B078,.Lfe8-sub_801B078
	.align	2, 0
	.globl	ValidateReceivedWonderNews
	.type	 ValidateReceivedWonderNews,function
	.thumb_func
ValidateReceivedWonderNews:
	mov	r0, #0x1
	bx	lr
.Lfe9:
	.size	 ValidateReceivedWonderNews,.Lfe9-ValidateReceivedWonderNews
	.align	2, 0
	.type	 sub_801B114,function
	.thumb_func
sub_801B114:
	push	{lr}
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	.L12	@cond_branch
	mov	r0, #0x1
	b	.L13
.L12:
	mov	r0, #0x0
.L13:
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 sub_801B114,.Lfe10-sub_801B114
	.align	2, 0
	.globl	WonderNews_Test_Unk_02
	.type	 WonderNews_Test_Unk_02,function
	.thumb_func
WonderNews_Test_Unk_02:
	mov	r0, #0x1
	bx	lr
.Lfe11:
	.size	 WonderNews_Test_Unk_02,.Lfe11-WonderNews_Test_Unk_02
	.align	2, 0
	.type	 s_DestroyWonderNews,function
	.thumb_func
s_DestroyWonderNews:
	bx	lr
.Lfe12:
	.size	 s_DestroyWonderNews,.Lfe12-s_DestroyWonderNews
	.align	2, 0
	.type	 sub_801B180,function
	.thumb_func
sub_801B180:
	push	{lr}
	add	sp, sp, #-0x4
	mov	r0, #0x0
	str	r0, [sp]
	bl	sub_801B044
	add	r1, r0, #0
	ldr	r2, .L17
	mov	r0, sp
	bl	CpuSet
	bl	sub_801DBC0
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.L18:
	.align	2, 0
.L17:
	.word	0x5000001
.Lfe13:
	.size	 sub_801B180,.Lfe13-sub_801B180
	.align	2, 0
	.globl	sub_801B1A4
	.type	 sub_801B1A4,function
	.thumb_func
sub_801B1A4:
	mov	r0, #0x1
	bx	lr
.Lfe14:
	.size	 sub_801B1A4,.Lfe14-sub_801B1A4
	.align	2, 0
	.globl	DestroyWonderCard
	.type	 DestroyWonderCard,function
	.thumb_func
DestroyWonderCard:
	bx	lr
.Lfe15:
	.size	 DestroyWonderCard,.Lfe15-DestroyWonderCard
	.align	2, 0
	.globl	sub_801B21C
	.type	 sub_801B21C,function
	.thumb_func
sub_801B21C:
	push	{lr}
	bl	sub_801B2CC
	cmp	r0, #0
	beq	.L22	@cond_branch
	mov	r0, #0x1
	b	.L23
.L22:
	mov	r0, #0x0
.L23:
	pop	{r1}
	bx	r1
.Lfe16:
	.size	 sub_801B21C,.Lfe16-sub_801B21C
	.align	2, 0
	.globl	ValidateReceivedWonderCard
	.type	 ValidateReceivedWonderCard,function
	.thumb_func
ValidateReceivedWonderCard:
	mov	r0, #0x0
	bx	lr
.Lfe17:
	.size	 ValidateReceivedWonderCard,.Lfe17-ValidateReceivedWonderCard
	.align	2, 0
	.type	 sub_801B2CC,function
	.thumb_func
sub_801B2CC:
	push	{lr}
	add	r2, r0, #0
	ldrh	r0, [r2]
	cmp	r0, #0
	beq	.L30	@cond_branch
	ldrb	r1, [r2, #0x8]
	lsl	r0, r1, #0x1e
	lsr	r0, r0, #0x1e
	cmp	r0, #0x2
	bhi	.L30	@cond_branch
	mov	r0, #0xc0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L28	@cond_branch
	cmp	r0, #0x40
	beq	.L28	@cond_branch
	cmp	r0, #0x80
	bne	.L30	@cond_branch
.L28:
	lsl	r0, r1, #0x1a
	lsr	r0, r0, #0x1c
	cmp	r0, #0x7
	bhi	.L30	@cond_branch
	ldrb	r0, [r2, #0x9]
	cmp	r0, #0x7
	bhi	.L30	@cond_branch
	mov	r0, #0x1
	b	.L31
.L30:
	mov	r0, #0x0
.L31:
	pop	{r1}
	bx	r1
.Lfe18:
	.size	 sub_801B2CC,.Lfe18-sub_801B2CC
	.align	2, 0
	.globl	WonderCard_Test_Unk_08_6
	.type	 WonderCard_Test_Unk_08_6,function
	.thumb_func
WonderCard_Test_Unk_08_6:
	mov	r0, #0x1
	bx	lr
.Lfe19:
	.size	 WonderCard_Test_Unk_08_6,.Lfe19-WonderCard_Test_Unk_08_6
	.align	2, 0
	.type	 sub_801B330,function
	.thumb_func
sub_801B330:
	bx	lr
.Lfe20:
	.size	 sub_801B330,.Lfe20-sub_801B330
	.align	2, 0
	.type	 sub_801B368,function
	.thumb_func
sub_801B368:
	bx	lr
.Lfe21:
	.size	 sub_801B368,.Lfe21-sub_801B368
	.align	2, 0
	.globl	GetWonderCardFlagID
	.type	 GetWonderCardFlagID,function
	.thumb_func
GetWonderCardFlagID:
	mov	r0, #0x0
	bx	lr
.Lfe22:
	.size	 GetWonderCardFlagID,.Lfe22-GetWonderCardFlagID
	.align	2, 0
	.globl	WonderCard_ResetInternalReceivedFlag
	.type	 WonderCard_ResetInternalReceivedFlag,function
	.thumb_func
WonderCard_ResetInternalReceivedFlag:
	push	{lr}
	add	r2, r0, #0
	ldrb	r1, [r2, #0x8]
	mov	r0, #0xc0
	and	r0, r0, r1
	cmp	r0, #0x40
	bne	.L37	@cond_branch
	mov	r0, #0x3f
	and	r0, r0, r1
	strb	r0, [r2, #0x8]
.L37:
	pop	{r0}
	bx	r0
.Lfe23:
	.size	 WonderCard_ResetInternalReceivedFlag,.Lfe23-WonderCard_ResetInternalReceivedFlag
	.align	2, 0
	.type	 IsWonderCardFlagIDInValidRange,function
	.thumb_func
IsWonderCardFlagIDInValidRange:
	push	{lr}
	lsl	r0, r0, #0x10
	ldr	r1, .L41
	add	r0, r0, r1
	lsr	r0, r0, #0x10
	cmp	r0, #0x13
	bls	.L39	@cond_branch
	mov	r0, #0x0
	b	.L40
.L42:
	.align	2, 0
.L41:
	.word	-0x3e80000
.L39:
	mov	r0, #0x1
.L40:
	pop	{r1}
	bx	r1
.Lfe24:
	.size	 IsWonderCardFlagIDInValidRange,.Lfe24-IsWonderCardFlagIDInValidRange
	.section .rodata
	.align	1, 0
	.type	 sMysteryGiftFlags,object
sMysteryGiftFlags:
	.short	0x13a
	.short	0x13b
	.short	0x13c
	.short	0x13d
	.short	0x13e
	.short	0x13f
	.short	0x140
	.short	0x141
	.short	0x142
	.short	0x143
	.short	0x144
	.short	0x145
	.short	0x146
	.short	0x147
	.short	0x148
	.short	0x149
	.short	0x14a
	.short	0x14b
	.short	0x14c
	.short	0x14d
	.size	 sMysteryGiftFlags,40
.text
	.align	2, 0
	.globl	CheckReceivedGiftFromWonderCard
	.type	 CheckReceivedGiftFromWonderCard,function
	.thumb_func
CheckReceivedGiftFromWonderCard:
	push	{r4, lr}
	bl	GetWonderCardFlagID
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r0, r4, #0
	bl	IsWonderCardFlagIDInValidRange
	cmp	r0, #0
	beq	.L45	@cond_branch
	ldr	r1, .L47
	ldr	r2, .L47+0x4
	add	r0, r4, r2
	lsl	r0, r0, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L45	@cond_branch
	mov	r0, #0x1
	b	.L46
.L48:
	.align	2, 0
.L47:
	.word	sMysteryGiftFlags
	.word	-0x3e8
.L45:
	mov	r0, #0x0
.L46:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe25:
	.size	 CheckReceivedGiftFromWonderCard,.Lfe25-CheckReceivedGiftFromWonderCard
	.align	2, 0
	.type	 sub_801B438,function
	.thumb_func
sub_801B438:
	push	{lr}
	mov	r3, #0x0
	cmp	r3, r1
	bge	.L51	@cond_branch
	add	r2, r0, #0
	add	r2, r2, #0x8
.L53:
	ldrh	r0, [r2, #0xe]
	cmp	r0, #0
	beq	.L52	@cond_branch
	ldrh	r0, [r2]
	cmp	r0, #0
	beq	.L52	@cond_branch
	add	r3, r3, #0x1
.L52:
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.L53	@cond_branch
.L51:
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.Lfe26:
	.size	 sub_801B438,.Lfe26-sub_801B438
	.align	2, 0
	.type	 sub_801B460,function
	.thumb_func
sub_801B460:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r1, #0x0
	cmp	r1, r2
	bge	.L58	@cond_branch
	ldrh	r6, [r4, #0x2]
	mov	r0, #0x16
	add	r0, r0, r5
	mov	ip, r0
.L60:
	lsl	r3, r1, #0x1
	mov	r7, ip
	ldrh	r0, [r7]
	cmp	r0, r6
	beq	.L65	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #0x8
	add	r0, r0, r3
	ldrh	r0, [r0]
	ldrh	r3, [r4]
	cmp	r0, r3
	bne	.L59	@cond_branch
.L65:
	mov	r0, #0x1
	b	.L64
.L59:
	mov	r7, #0x2
	add	ip, ip, r7
	add	r1, r1, #0x1
	cmp	r1, r2
	blt	.L60	@cond_branch
.L58:
	mov	r0, #0x0
.L64:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe27:
	.size	 sub_801B460,.Lfe27-sub_801B460
	.align	2, 0
	.type	 sub_801B4A4,function
	.thumb_func
sub_801B4A4:
	push	{lr}
	add	r1, r0, #0
	ldrh	r0, [r1, #0x2]
	cmp	r0, #0
	beq	.L69	@cond_branch
	ldrh	r1, [r1]
	cmp	r1, #0
	beq	.L69	@cond_branch
	ldr	r0, .L71
	cmp	r1, r0
	bhi	.L69	@cond_branch
	mov	r0, #0x1
	b	.L70
.L72:
	.align	2, 0
.L71:
	.word	0x4b6
.L69:
	mov	r0, #0x0
.L70:
	pop	{r1}
	bx	r1
.Lfe28:
	.size	 sub_801B4A4,.Lfe28-sub_801B4A4
	.align	2, 0
	.type	 sub_801B4CC,function
	.thumb_func
sub_801B4CC:
	push	{lr}
	bl	ValidateReceivedWonderCard
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.Lfe29:
	.size	 sub_801B4CC,.Lfe29-sub_801B4CC
	.align	2, 0
	.globl	sub_801B508
	.type	 sub_801B508,function
	.thumb_func
sub_801B508:
	mov	r0, #0x0
	bx	lr
.Lfe30:
	.size	 sub_801B508,.Lfe30-sub_801B508
	.align	2, 0
	.globl	sub_801B580
	.type	 sub_801B580,function
	.thumb_func
sub_801B580:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r0, #0x0
	str	r0, [sp]
	ldr	r2, .L83
	mov	r0, sp
	add	r1, r5, #0
	bl	CpuSet
	ldr	r0, .L83+0x4
	str	r0, [r5]
	mov	r0, #0x1
	strh	r0, [r5, #0x4]
	str	r0, [r5, #0x8]
	cmp	r4, #0
	beq	.L78	@cond_branch
	mov	r0, #0x5
	strh	r0, [r5, #0xc]
	ldr	r0, .L83+0x8
	b	.L82
.L84:
	.align	2, 0
.L83:
	.word	0x5000019
	.word	0x101
	.word	0x201
.L78:
	mov	r0, #0x4
	strh	r0, [r5, #0xc]
	mov	r0, #0x80
	lsl	r0, r0, #0x2
.L82:
	str	r0, [r5, #0x10]
	bl	ValidateReceivedWonderCard
	cmp	r0, #0
	beq	.L80	@cond_branch
	bl	GetSavedWonderCard
	ldrh	r0, [r0]
	strh	r0, [r5, #0x14]
	bl	sav1_get_mevent_buffer_2
	add	r1, r5, #0
	add	r1, r1, #0x20
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	bl	GetSavedWonderCard
	ldrb	r1, [r0, #0x9]
	add	r0, r5, #0
	add	r0, r0, #0x44
	strb	r1, [r0]
	b	.L81
.L80:
	strh	r0, [r5, #0x14]
.L81:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe31:
	.size	 sub_801B580,.Lfe31-sub_801B580
	.align	2, 0
	.globl	sub_801B6A0
	.type	 sub_801B6A0,function
	.thumb_func
sub_801B6A0:
	push	{r4, lr}
	add	r2, r0, #0
	add	r4, r1, #0
	ldr	r1, [r2]
	ldr	r0, .L94
	cmp	r1, r0
	bne	.L93	@cond_branch
	ldrh	r1, [r2, #0x4]
	mov	r3, #0x1
	add	r0, r3, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L93	@cond_branch
	ldr	r0, [r2, #0x8]
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L93	@cond_branch
	cmp	r4, #0
	bne	.L89	@cond_branch
	ldrh	r1, [r2, #0xc]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L93	@cond_branch
	ldr	r0, [r2, #0x10]
	mov	r1, #0xe0
	lsl	r1, r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L89	@cond_branch
.L93:
	mov	r0, #0x0
	b	.L92
.L95:
	.align	2, 0
.L94:
	.word	0x101
.L89:
	mov	r0, #0x1
.L92:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe32:
	.size	 sub_801B6A0,.Lfe32-sub_801B6A0
	.align	2, 0
	.globl	sub_801B6EC
	.type	 sub_801B6EC,function
	.thumb_func
sub_801B6EC:
	push	{lr}
	ldrh	r1, [r1, #0x14]
	cmp	r1, #0
	bne	.L97	@cond_branch
	mov	r0, #0x0
	b	.L99
.L97:
	ldrh	r0, [r0]
	cmp	r0, r1
	beq	.L98	@cond_branch
	mov	r0, #0x2
	b	.L99
.L98:
	mov	r0, #0x1
.L99:
	pop	{r1}
	bx	r1
.Lfe33:
	.size	 sub_801B6EC,.Lfe33-sub_801B6EC
	.align	2, 0
	.globl	sub_801B708
	.type	 sub_801B708,function
	.thumb_func
sub_801B708:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	add	r4, r1, #0
	add	r5, r4, #0
	add	r5, r5, #0x20
	add	r4, r4, #0x44
	ldrb	r1, [r4]
	add	r0, r5, #0
	bl	sub_801B438
	ldrb	r2, [r4]
	sub	r4, r2, r0
	cmp	r4, #0
	bne	.L101	@cond_branch
	mov	r0, #0x1
	b	.L104
.L101:
	add	r0, r5, #0
	add	r1, r6, #0
	bl	sub_801B460
	cmp	r0, #0
	beq	.L102	@cond_branch
	mov	r0, #0x3
	b	.L104
.L102:
	cmp	r4, #0x1
	beq	.L103	@cond_branch
	mov	r0, #0x2
	b	.L104
.L103:
	mov	r0, #0x4
.L104:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe34:
	.size	 sub_801B708,.Lfe34-sub_801B708
	.align	2, 0
	.globl	MEventStruct_Unk1442CC_CompareField_unk_16
	.type	 MEventStruct_Unk1442CC_CompareField_unk_16,function
	.thumb_func
MEventStruct_Unk1442CC_CompareField_unk_16:
	push	{r4, lr}
	mov	r3, #0x0
	add	r2, r0, #0
	add	r2, r2, #0x16
.L109:
	ldrh	r0, [r2]
	ldrh	r4, [r1]
	cmp	r0, r4
	beq	.L108	@cond_branch
	mov	r0, #0x0
	b	.L112
.L108:
	add	r1, r1, #0x2
	add	r2, r2, #0x2
	add	r3, r3, #0x1
	cmp	r3, #0x3
	ble	.L109	@cond_branch
	mov	r0, #0x1
.L112:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe35:
	.size	 MEventStruct_Unk1442CC_CompareField_unk_16,.Lfe35-MEventStruct_Unk1442CC_CompareField_unk_16
	.align	2, 0
	.type	 sub_801B770,function
	.thumb_func
sub_801B770:
	push	{lr}
	add	r2, r0, #0
	add	r2, r2, #0x20
	add	r0, r0, #0x44
	ldrb	r1, [r0]
	add	r0, r2, #0
	bl	sub_801B438
	pop	{r1}
	bx	r1
.Lfe36:
	.size	 sub_801B770,.Lfe36-sub_801B770
	.align	2, 0
	.globl	MEventStruct_Unk1442CC_GetValueNFrom_unk_20
	.type	 MEventStruct_Unk1442CC_GetValueNFrom_unk_20,function
	.thumb_func
MEventStruct_Unk1442CC_GetValueNFrom_unk_20:
	push	{lr}
	add	r2, r0, #0
	cmp	r1, #0x4
	bhi	.L121	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .L124
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L125:
	.align	2, 0
.L124:
	.word	.L122
	.align	2, 0
	.align	2, 0
.L122:
	.word	.L116
	.word	.L117
	.word	.L118
	.word	.L119
	.word	.L120
.L116:
	ldrh	r0, [r2, #0x20]
	b	.L123
.L117:
	ldrh	r0, [r2, #0x22]
	b	.L123
.L118:
	ldrh	r0, [r2, #0x24]
	b	.L123
.L119:
	add	r0, r2, #0
	bl	sub_801B770
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	b	.L123
.L120:
	add	r0, r2, #0
	add	r0, r0, #0x44
	ldrb	r0, [r0]
	b	.L123
.L121:
	mov	r0, #0x0
.L123:
	pop	{r1}
	bx	r1
.Lfe37:
	.size	 MEventStruct_Unk1442CC_GetValueNFrom_unk_20,.Lfe37-MEventStruct_Unk1442CC_GetValueNFrom_unk_20
	.align	2, 0
	.type	 sub_801B7D8,function
	.thumb_func
sub_801B7D8:
	bx	lr
.Lfe38:
	.size	 sub_801B7D8,.Lfe38-sub_801B7D8
	.align	2, 0
	.globl	mevent_081445C0
	.type	 mevent_081445C0,function
	.thumb_func
mevent_081445C0:
	mov	r0, #0x0
	bx	lr
.Lfe39:
	.size	 mevent_081445C0,.Lfe39-mevent_081445C0
	.align	2, 0
	.globl	ResetReceivedWonderCardFlag
	.type	 ResetReceivedWonderCardFlag,function
	.thumb_func
ResetReceivedWonderCardFlag:
	ldr	r1, .L129
	mov	r0, #0x0
	str	r0, [r1]
	bx	lr
.L130:
	.align	2, 0
.L129:
	.word	gUnknown_02022C70
.Lfe40:
	.size	 ResetReceivedWonderCardFlag,.Lfe40-ResetReceivedWonderCardFlag
	.align	2, 0
	.globl	MEventHandleReceivedWonderCard
	.type	 MEventHandleReceivedWonderCard,function
	.thumb_func
MEventHandleReceivedWonderCard:
	mov	r0, #0x1
	bx	lr
.Lfe41:
	.size	 MEventHandleReceivedWonderCard,.Lfe41-MEventHandleReceivedWonderCard
	.align	2, 0
	.globl	RecordIdOfWonderCardSenderByEventType
	.type	 RecordIdOfWonderCardSenderByEventType,function
	.thumb_func
RecordIdOfWonderCardSenderByEventType:
	bx	lr
.Lfe42:
	.size	 RecordIdOfWonderCardSenderByEventType,.Lfe42-RecordIdOfWonderCardSenderByEventType
	.align	2, 0
	.type	 sub_801B9F8,function
	.thumb_func
sub_801B9F8:
	bx	lr
.Lfe43:
	.size	 sub_801B9F8,.Lfe43-sub_801B9F8
	.align	2, 0
	.type	 sub_801BA24,function
	.thumb_func
sub_801BA24:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r1, #0x0
	cmp	r1, r2
	bge	.L136	@cond_branch
	ldr	r0, [r4]
	cmp	r0, r5
	beq	.L136	@cond_branch
	add	r3, r4, #0
.L137:
	add	r3, r3, #0x4
	add	r1, r1, #0x1
	cmp	r1, r2
	bge	.L136	@cond_branch
	ldr	r0, [r3]
	cmp	r0, r5
	bne	.L137	@cond_branch
.L136:
	cmp	r1, r2
	bne	.L141	@cond_branch
	sub	r3, r1, #0x1
	cmp	r3, #0
	ble	.L143	@cond_branch
	lsl	r0, r3, #0x2
	sub	r0, r0, #0x4
	add	r2, r0, r4
.L145:
	ldr	r0, [r2]
	str	r0, [r2, #0x4]
	sub	r2, r2, #0x4
	sub	r3, r3, #0x1
	cmp	r3, #0
	bgt	.L145	@cond_branch
.L143:
	str	r5, [r4]
	mov	r0, #0x1
	b	.L153
.L141:
	add	r3, r1, #0
	cmp	r3, #0
	ble	.L149	@cond_branch
	lsl	r0, r3, #0x2
	sub	r0, r0, #0x4
	add	r2, r0, r4
.L151:
	ldr	r0, [r2]
	str	r0, [r2, #0x4]
	sub	r2, r2, #0x4
	sub	r3, r3, #0x1
	cmp	r3, #0
	bgt	.L151	@cond_branch
.L149:
	str	r5, [r4]
	mov	r0, #0x0
.L153:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe44:
	.size	 sub_801BA24,.Lfe44-sub_801BA24
	.align	2, 0
	.type	 sub_801BA8C,function
	.thumb_func
sub_801BA8C:
	push	{r4, lr}
	add	r4, r0, #0
	add	r0, r1, #0
	add	r1, r2, #0
	add	r2, r3, #0
	bl	sub_801BA24
	cmp	r0, #0
	beq	.L155	@cond_branch
	add	r0, r4, #0
	bl	sub_801B7D8
.L155:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe45:
	.size	 sub_801BA8C,.Lfe45-sub_801BA8C
.text
	.align	2, 0

