@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	1, 0
	.type	 sBgCnt,object
	.size	 sBgCnt,2
sBgCnt:
	.short	0x0
	.section .rodata
	.align	2, 0
	.type	 sBattleIntroSlideFuncs,object
sBattleIntroSlideFuncs:
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide2
	.word	BattleIntroSlide2
	.word	BattleIntroSlide2
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide3
	.word	BattleIntroSlide3
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.size	 sBattleIntroSlideFuncs,48
.text
	.align	2, 0
	.globl	SetAnimBgAttribute
	.type	 SetAnimBgAttribute,function
	.thumb_func
SetAnimBgAttribute:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r4, r2, #0x18
	cmp	r6, #0x3
	bls	.LCB16
	b	.L3	@long jump
.LCB16:
	ldr	r0, .L16
	add	r0, r6, r0
	ldrb	r0, [r0]
	bl	GetGpuReg
	ldr	r1, .L16+0x4
	strh	r0, [r1]
	cmp	r5, #0x6
	bhi	.L4	@cond_branch
	lsl	r0, r5, #0x2
	ldr	r1, .L16+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L17:
	.align	2, 0
.L16:
	.word	gUnknown_0859741A
	.word	sBgCnt
	.word	.L12
	.align	2, 0
	.align	2, 0
.L12:
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
.L5:
	ldr	r2, .L18
	lsl	r3, r4, #0x6
	ldrb	r1, [r2, #0x1]
	mov	r0, #0x3f
	and	r0, r0, r1
	orr	r0, r0, r3
	strb	r0, [r2, #0x1]
	b	.L4
.L19:
	.align	2, 0
.L18:
	.word	sBgCnt
.L6:
	ldr	r3, .L20
	mov	r0, #0x1
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x5
	ldrb	r2, [r3, #0x1]
	mov	r0, #0x21
	neg	r0, r0
	b	.L14
.L21:
	.align	2, 0
.L20:
	.word	sBgCnt
.L7:
	ldr	r3, .L22
	mov	r0, #0x1
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x6
	ldrb	r2, [r3]
	mov	r0, #0x41
	neg	r0, r0
	b	.L15
.L23:
	.align	2, 0
.L22:
	.word	sBgCnt
.L8:
	ldr	r3, .L24
	mov	r0, #0x3
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x2
	ldrb	r2, [r3]
	mov	r0, #0xd
	neg	r0, r0
	b	.L15
.L25:
	.align	2, 0
.L24:
	.word	sBgCnt
.L9:
	ldr	r3, .L26
	mov	r0, #0x3
	add	r1, r4, #0
	and	r1, r1, r0
	ldrb	r2, [r3]
	mov	r0, #0x4
	neg	r0, r0
.L15:
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3]
	b	.L4
.L27:
	.align	2, 0
.L26:
	.word	sBgCnt
.L10:
	ldr	r2, .L28
	lsl	r3, r4, #0x7
	ldrb	r1, [r2]
	mov	r0, #0x7f
	and	r0, r0, r1
	orr	r0, r0, r3
	strb	r0, [r2]
	b	.L4
.L29:
	.align	2, 0
.L28:
	.word	sBgCnt
.L11:
	ldr	r3, .L30
	mov	r0, #0x1f
	add	r1, r4, #0
	and	r1, r1, r0
	ldrb	r2, [r3, #0x1]
	mov	r0, #0x20
	neg	r0, r0
.L14:
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x1]
.L4:
	ldr	r0, .L30+0x4
	add	r0, r6, r0
	ldrb	r0, [r0]
	ldr	r1, .L30
	ldrh	r1, [r1]
	bl	SetGpuReg
.L3:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L31:
	.align	2, 0
.L30:
	.word	sBgCnt
	.word	gUnknown_0859741A
.Lfe1:
	.size	 SetAnimBgAttribute,.Lfe1-SetAnimBgAttribute
	.align	2, 0
	.globl	GetAnimBgAttribute
	.type	 GetAnimBgAttribute,function
	.thumb_func
GetAnimBgAttribute:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	cmp	r2, #0x3
	bhi	.L33	@cond_branch
	ldr	r0, .L45
	add	r0, r2, r0
	ldrb	r0, [r0]
	bl	GetGpuReg
	mov	r1, sp
	strh	r0, [r1]
	cmp	r4, #0x6
	bhi	.L33	@cond_branch
	lsl	r0, r4, #0x2
	ldr	r1, .L45+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L46:
	.align	2, 0
.L45:
	.word	gUnknown_0859741E
	.word	.L42
	.align	2, 0
	.align	2, 0
.L42:
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
.L35:
	ldr	r0, [sp]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x1e
	b	.L44
.L36:
	ldr	r0, [sp]
	lsl	r0, r0, #0x12
	lsr	r0, r0, #0x1f
	b	.L44
.L37:
	ldr	r0, [sp]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x1f
	b	.L44
.L38:
	ldr	r0, [sp]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	b	.L44
.L39:
	ldr	r0, [sp]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	b	.L44
.L40:
	ldr	r0, [sp]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x1f
	b	.L44
.L41:
	ldr	r0, [sp]
	lsl	r0, r0, #0x13
	lsr	r0, r0, #0x1b
	b	.L44
.L33:
	mov	r0, #0x0
.L44:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 GetAnimBgAttribute,.Lfe2-GetAnimBgAttribute
	.align	2, 0
	.type	 Task_InstantIntro,function
	.thumb_func
Task_InstantIntro:
	push	{r4, lr}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r2, .L48
	ldrh	r1, [r2]
	ldr	r0, .L48+0x4
	and	r0, r0, r1
	strh	r0, [r2]
	ldr	r1, .L48+0x8
	mov	r2, #0x0
	mov	r0, #0x3
	strb	r0, [r1, #0x15]
	ldr	r1, .L48+0xc
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	str	r2, [sp]
	ldr	r1, .L48+0x10
	ldr	r2, .L48+0x14
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	add	r0, r4, #0
	bl	sub_811828C
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L49:
	.align	2, 0
.L48:
	.word	gIntroSlideFlags
	.word	0xfffe
	.word	gScanlineEffect
	.word	gTasks
	.word	0x600e000
	.word	0x5000200
.Lfe3:
	.size	 Task_InstantIntro,.Lfe3-Task_InstantIntro
	.align	2, 0
	.globl	HandleIntroSlide
	.type	 HandleIntroSlide,function
	.thumb_func
HandleIntroSlide:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L61
	ldr	r0, [r0]
	ldrb	r1, [r0, #0x17]
	mov	r0, #0x60
	and	r0, r0, r1
	cmp	r0, #0x20
	bne	.L51	@cond_branch
	ldr	r0, .L61+0x4
	mov	r1, #0x0
	bl	CreateTask
.L51:
	ldr	r0, .L61+0x8
	ldr	r1, [r0]
	mov	r2, #0x80
	lsl	r2, r2, #0xf
	and	r1, r1, r2
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L52	@cond_branch
	ldr	r0, .L61+0xc
	ldrh	r0, [r0]
	ldr	r1, .L61+0x10
	cmp	r0, r1
	beq	.L52	@cond_branch
	cmp	r0, r1
	bhi	.L52	@cond_branch
	ldr	r0, .L61+0x14
	b	.L60
.L62:
	.align	2, 0
.L61:
	.word	gSaveBlock2Ptr
	.word	Task_InstantIntro
	.word	gBattleTypeFlags
	.word	gPartnerTrainerId
	.word	0xc03
	.word	BattleIntroSlidePartner
.L52:
	ldr	r1, [r2]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L54	@cond_branch
	ldr	r0, .L63
	b	.L60
.L64:
	.align	2, 0
.L63:
	.word	BattleIntroSlideLink
.L54:
	ldr	r0, .L65
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L56	@cond_branch
	ldr	r0, .L65+0x4
	b	.L60
.L66:
	.align	2, 0
.L65:
	.word	0x3f0100
	.word	BattleIntroSlide3
.L56:
	mov	r0, #0x80
	lsl	r0, r0, #0x5
	and	r1, r1, r0
	cmp	r1, #0
	beq	.L58	@cond_branch
	ldr	r0, .L67
	ldrb	r0, [r0]
	cmp	r0, #0x2
	beq	.L58	@cond_branch
	mov	r4, #0x3
	ldr	r0, .L67+0x4
	b	.L60
.L68:
	.align	2, 0
.L67:
	.word	gGameVersion
	.word	BattleIntroSlide2
.L58:
	ldr	r1, .L69
	lsl	r0, r4, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
.L60:
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L69+0x4
	lsl	r1, r2, #0x2
	add	r1, r1, r2
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r0, #0x0
	strh	r0, [r1, #0x8]
	strh	r4, [r1, #0xa]
	strh	r0, [r1, #0xc]
	strh	r0, [r1, #0xe]
	strh	r0, [r1, #0x10]
	strh	r0, [r1, #0x12]
	strh	r0, [r1, #0x14]
	pop	{r4}
	pop	{r0}
	bx	r0
.L70:
	.align	2, 0
.L69:
	.word	sBattleIntroSlideFuncs
	.word	gTasks
.Lfe4:
	.size	 HandleIntroSlide,.Lfe4-HandleIntroSlide
	.align	2, 0
	.type	 sub_811828C,function
	.thumb_func
sub_811828C:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	DestroyTask
	ldr	r0, .L72
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .L72+0x4
	strh	r1, [r0]
	ldr	r0, .L72+0x8
	strh	r1, [r0]
	ldr	r0, .L72+0xc
	strh	r1, [r0]
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r4, .L72+0x10
	mov	r0, #0x48
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x4a
	add	r1, r4, #0
	bl	SetGpuReg
	pop	{r4}
	pop	{r0}
	bx	r0
.L73:
	.align	2, 0
.L72:
	.word	gBattle_BG1_X
	.word	gBattle_BG1_Y
	.word	gBattle_BG2_X
	.word	gBattle_BG2_Y
	.word	0x3f3f
.Lfe5:
	.size	 sub_811828C,.Lfe5-sub_811828C
	.align	2, 0
	.type	 BattleIntroSlide1,function
	.thumb_func
BattleIntroSlide1:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r1, .L109
	ldrh	r0, [r1]
	add	r0, r0, #0x6
	strh	r0, [r1]
	ldr	r1, .L109+0x4
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	mov	r8, r1
	cmp	r0, #0x4
	bls	.LCB619
	b	.L75	@long jump
.LCB619:
	lsl	r0, r0, #0x2
	ldr	r1, .L109+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L110:
	.align	2, 0
.L109:
	.word	gBattle_BG1_X
	.word	gTasks
	.word	.L104
	.align	2, 0
	.align	2, 0
.L104:
	.word	.L76
	.word	.L79
	.word	.L81
	.word	.L83
	.word	.L103
.L76:
	ldr	r0, .L111
	ldr	r0, [r0]
	mov	r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L77	@cond_branch
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r8
	mov	r1, #0x10
	b	.L107
.L112:
	.align	2, 0
.L111:
	.word	gBattleTypeFlags
.L77:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r8
	mov	r1, #0x1
.L107:
	strh	r1, [r0, #0xc]
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L75
.L79:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	mov	r3, r8
	add	r1, r0, r3
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB689
	b	.L75	@long jump
.LCB689:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L75
.L81:
	ldr	r1, .L113
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB715
	b	.L75	@long jump
.LCB715:
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r8
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	ldr	r2, .L113+0x4
	ldrh	r1, [r2]
	ldr	r0, .L113+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L75
.L114:
	.align	2, 0
.L113:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L83:
	lsl	r0, r4, #0x2
	add	r1, r0, r4
	lsl	r1, r1, #0x3
	mov	r5, r8
	add	r2, r1, r5
	ldrh	r3, [r2, #0xe]
	mov	r5, #0xe
	ldrsh	r1, [r2, r5]
	mov	ip, r0
	cmp	r1, #0
	beq	.L84	@cond_branch
	sub	r0, r3, #0x1
	strh	r0, [r2, #0xe]
	b	.L85
.L84:
	mov	r1, #0xa
	ldrsh	r0, [r2, r1]
	cmp	r0, #0x1
	bne	.L86	@cond_branch
	ldr	r2, .L115
	ldrh	r1, [r2]
	ldr	r0, .L115+0x4
	cmp	r1, r0
	beq	.L85	@cond_branch
	sub	r0, r1, #0x2
	b	.L108
.L116:
	.align	2, 0
.L115:
	.word	gBattle_BG1_Y
	.word	0xffb0
.L86:
	ldr	r2, .L117
	ldrh	r1, [r2]
	ldr	r0, .L117+0x4
	cmp	r1, r0
	beq	.L85	@cond_branch
	sub	r0, r1, #0x1
.L108:
	strh	r0, [r2]
.L85:
	ldr	r2, .L117+0x8
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L90	@cond_branch
	ldr	r3, .L117+0xc
	add	r0, r1, r3
	strh	r0, [r2]
.L90:
	mov	r5, ip
	add	r0, r5, r4
	lsl	r0, r0, #0x3
	mov	r2, r8
	add	r1, r0, r2
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L91	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L91:
	mov	r3, #0x0
	ldr	r5, .L117+0x10
	mov	r9, r5
	ldr	r7, .L117+0x14
	mov	r6, r9
	add	r5, r1, #0
.L95:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r5, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L95	@cond_branch
	cmp	r3, #0x9f
	bgt	.L106	@cond_branch
	ldr	r7, .L117+0x14
	ldr	r6, .L117+0x10
	ldr	r1, .L117+0x18
	mov	r2, ip
	add	r0, r2, r4
	lsl	r0, r0, #0x3
	add	r5, r0, r1
.L100:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r5, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L100	@cond_branch
.L106:
	mov	r3, ip
	add	r0, r3, r4
	lsl	r0, r0, #0x3
	mov	r5, r8
	add	r1, r0, r5
	mov	r0, #0xc
	ldrsh	r2, [r1, r0]
	cmp	r2, #0
	bne	.L75	@cond_branch
	mov	r0, #0x3
	mov	r3, r9
	strb	r0, [r3, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L117+0x1c
	ldr	r2, .L117+0x20
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L75
.L118:
	.align	2, 0
.L117:
	.word	gBattle_BG1_Y
	.word	0xffc8
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
	.word	0x600e000
	.word	0x5000200
.L103:
	add	r0, r4, #0
	bl	sub_811828C
.L75:
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 BattleIntroSlide1,.Lfe6-BattleIntroSlide1
	.align	2, 0
	.type	 BattleIntroSlide2,function
	.thumb_func
BattleIntroSlide2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r1, .L166
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0xa
	ldrsh	r0, [r0, r2]
	add	r2, r1, #0
	cmp	r0, #0x3
	beq	.L123	@cond_branch
	cmp	r0, #0x3
	bgt	.L126	@cond_branch
	cmp	r0, #0x2
	beq	.L122	@cond_branch
	b	.L120
.L167:
	.align	2, 0
.L166:
	.word	gTasks
.L126:
	cmp	r0, #0x4
	bne	.L120	@cond_branch
.L122:
	ldr	r1, .L168
	ldrh	r0, [r1]
	add	r0, r0, #0x8
	b	.L163
.L169:
	.align	2, 0
.L168:
	.word	gBattle_BG1_X
.L123:
	ldr	r1, .L170
	ldrh	r0, [r1]
	add	r0, r0, #0x6
.L163:
	strh	r0, [r1]
.L120:
	lsl	r0, r5, #0x2
	add	r1, r0, r5
	lsl	r1, r1, #0x3
	add	r4, r1, r2
	mov	r3, #0xa
	ldrsh	r1, [r4, r3]
	add	r6, r0, #0
	cmp	r1, #0x4
	bne	.L127	@cond_branch
	ldr	r7, .L170+0x4
	ldrh	r0, [r4, #0x14]
	bl	Cos2
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0
	bge	.L128	@cond_branch
	ldr	r1, .L170+0x8
	add	r0, r0, r1
.L128:
	asr	r0, r0, #0x9
	sub	r0, r0, #0x8
	strh	r0, [r7]
	ldrh	r1, [r4, #0x14]
	mov	r2, #0x14
	ldrsh	r0, [r4, r2]
	cmp	r0, #0xb3
	bgt	.L129	@cond_branch
	add	r0, r1, #0x4
	b	.L164
.L171:
	.align	2, 0
.L170:
	.word	gBattle_BG1_X
	.word	gBattle_BG1_Y
	.word	0x1ff
.L129:
	add	r0, r1, #0x6
.L164:
	strh	r0, [r4, #0x14]
	ldr	r2, .L172
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r3, r0, r2
	mov	r0, #0x14
	ldrsh	r1, [r3, r0]
	mov	r0, #0xb4
	lsl	r0, r0, #0x1
	cmp	r1, r0
	bne	.L127	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0x14]
.L127:
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	mov	r1, #0x8
	ldrsh	r0, [r0, r1]
	cmp	r0, #0x4
	bls	.LCB1097
	b	.L132	@long jump
.LCB1097:
	lsl	r0, r0, #0x2
	ldr	r1, .L172+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L173:
	.align	2, 0
.L172:
	.word	gTasks
	.word	.L159
	.align	2, 0
	.align	2, 0
.L159:
	.word	.L133
	.word	.L136
	.word	.L138
	.word	.L140
	.word	.L158
.L133:
	ldr	r1, .L174
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r2, r0, r1
	mov	r3, #0x10
	strh	r3, [r2, #0x10]
	ldr	r0, .L174+0x4
	ldr	r0, [r0]
	mov	r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L134	@cond_branch
	strh	r3, [r2, #0xc]
	b	.L165
.L175:
	.align	2, 0
.L174:
	.word	gTasks
	.word	gBattleTypeFlags
.L134:
	mov	r0, #0x1
	strh	r0, [r2, #0xc]
.L165:
	ldrh	r0, [r2, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x8]
	b	.L132
.L136:
	ldr	r0, .L176
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1163
	b	.L132	@long jump
.LCB1163:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L132
.L177:
	.align	2, 0
.L176:
	.word	gTasks
.L138:
	ldr	r1, .L178
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB1195
	b	.L132	@long jump
.LCB1195:
	ldr	r0, .L178+0x4
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	mov	r0, #0x1
	strh	r0, [r1, #0x12]
	ldr	r2, .L178+0x8
	ldrh	r1, [r2]
	ldr	r0, .L178+0xc
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L132
.L179:
	.align	2, 0
.L178:
	.word	gBattle_WIN0V
	.word	gTasks
	.word	gIntroSlideFlags
	.word	0xfffe
.L140:
	ldr	r0, .L180
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r2, [r1, #0xe]
	mov	r3, #0xe
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L141	@cond_branch
	sub	r0, r2, #0x1
	strh	r0, [r1, #0xe]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L143	@cond_branch
	ldr	r1, .L180+0x4
	mov	r0, #0x50
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0xf
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	b	.L143
.L181:
	.align	2, 0
.L180:
	.word	gTasks
	.word	0x1842
.L141:
	ldrh	r2, [r1, #0x10]
	mov	r0, #0x1f
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L143	@cond_branch
	ldrh	r0, [r1, #0x12]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0x12]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L143	@cond_branch
	add	r0, r2, #0
	add	r0, r0, #0xff
	strh	r0, [r1, #0x10]
	mov	r0, #0x4
	strh	r0, [r1, #0x12]
.L143:
	ldr	r2, .L182
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L145	@cond_branch
	ldr	r3, .L182+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L145:
	ldr	r0, .L182+0x8
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L146	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L146:
	mov	r3, #0x0
	ldr	r0, .L182+0xc
	mov	r8, r0
	ldr	r2, .L182+0x10
	mov	ip, r2
	mov	r7, r8
	add	r4, r1, #0
.L150:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, ip
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L150	@cond_branch
	cmp	r3, #0x9f
	bgt	.L162	@cond_branch
	ldr	r0, .L182+0x10
	mov	ip, r0
	ldr	r7, .L182+0xc
	ldr	r1, .L182+0x8
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L155:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, ip
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L155	@cond_branch
.L162:
	ldr	r1, .L182+0x8
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r1
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	cmp	r2, #0
	bne	.L132	@cond_branch
	mov	r0, #0x3
	mov	r3, r8
	strb	r0, [r3, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L182+0x14
	ldr	r2, .L182+0x18
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L132
.L183:
	.align	2, 0
.L182:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gTasks
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	0x600e000
	.word	0x5000200
.L158:
	add	r0, r5, #0
	bl	sub_811828C
.L132:
	ldr	r0, .L184
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L161	@cond_branch
	ldrh	r1, [r1, #0x10]
	mov	r0, #0x52
	bl	SetGpuReg
.L161:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L185:
	.align	2, 0
.L184:
	.word	gTasks
.Lfe7:
	.size	 BattleIntroSlide2,.Lfe7-BattleIntroSlide2
	.align	2, 0
	.type	 BattleIntroSlide3,function
	.thumb_func
BattleIntroSlide3:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r1, .L218
	ldrh	r0, [r1]
	add	r0, r0, #0x8
	strh	r0, [r1]
	ldr	r1, .L218+0x4
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	add	r4, r1, #0
	cmp	r0, #0x4
	bls	.LCB1492
	b	.L187	@long jump
.LCB1492:
	lsl	r0, r0, #0x2
	ldr	r1, .L218+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L219:
	.align	2, 0
.L218:
	.word	gBattle_BG1_X
	.word	gTasks
	.word	.L213
	.align	2, 0
	.align	2, 0
.L213:
	.word	.L188
	.word	.L191
	.word	.L193
	.word	.L195
	.word	.L212
.L188:
	ldr	r1, .L220
	mov	r0, #0x50
	bl	SetGpuReg
	ldr	r4, .L220+0x4
	mov	r0, #0x52
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r1, .L220+0x8
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r2, r0, r1
	strh	r4, [r2, #0x10]
	ldr	r0, .L220+0xc
	ldr	r0, [r0]
	ldr	r1, .L220+0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L189	@cond_branch
	mov	r0, #0x10
	b	.L217
.L221:
	.align	2, 0
.L220:
	.word	0x1842
	.word	0x808
	.word	gTasks
	.word	gBattleTypeFlags
	.word	0x2000002
.L189:
	mov	r0, #0x1
.L217:
	strh	r0, [r2, #0xc]
	ldrh	r0, [r2, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x8]
	b	.L187
.L191:
	ldr	r0, .L222
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1572
	b	.L187	@long jump
.LCB1572:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L187
.L223:
	.align	2, 0
.L222:
	.word	gTasks
.L193:
	ldr	r1, .L224
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB1604
	b	.L187	@long jump
.LCB1604:
	ldr	r0, .L224+0x4
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	mov	r0, #0x1
	strh	r0, [r1, #0x12]
	ldr	r2, .L224+0x8
	ldrh	r1, [r2]
	ldr	r0, .L224+0xc
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L187
.L225:
	.align	2, 0
.L224:
	.word	gBattle_WIN0V
	.word	gTasks
	.word	gIntroSlideFlags
	.word	0xfffe
.L195:
	lsl	r0, r5, #0x2
	add	r1, r0, r5
	lsl	r1, r1, #0x3
	add	r2, r1, r4
	ldrh	r3, [r2, #0xe]
	mov	r6, #0xe
	ldrsh	r1, [r2, r6]
	mov	ip, r0
	cmp	r1, #0
	beq	.L196	@cond_branch
	sub	r0, r3, #0x1
	strh	r0, [r2, #0xe]
	b	.L197
.L196:
	ldrh	r1, [r2, #0x10]
	mov	r0, #0xf
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L197	@cond_branch
	ldrh	r0, [r2, #0x12]
	sub	r0, r0, #0x1
	strh	r0, [r2, #0x12]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L197	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0xff
	strh	r0, [r2, #0x10]
	mov	r0, #0x6
	strh	r0, [r2, #0x12]
.L197:
	ldr	r2, .L226
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L199	@cond_branch
	ldr	r3, .L226+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L199:
	mov	r6, ip
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r4
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L200	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L200:
	mov	r3, #0x0
	ldr	r6, .L226+0x8
	mov	r8, r6
	ldr	r7, .L226+0xc
	add	r4, r1, #0
.L204:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L204	@cond_branch
	cmp	r3, #0x9f
	bgt	.L216	@cond_branch
	ldr	r7, .L226+0xc
	ldr	r6, .L226+0x8
	ldr	r1, .L226+0x10
	mov	r2, ip
	add	r0, r2, r5
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L209:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L209	@cond_branch
.L216:
	ldr	r1, .L226+0x10
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r1
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	cmp	r2, #0
	bne	.L187	@cond_branch
	mov	r0, #0x3
	mov	r6, r8
	strb	r0, [r6, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L226+0x14
	ldr	r2, .L226+0x18
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L187
.L227:
	.align	2, 0
.L226:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
	.word	0x600e000
	.word	0x5000200
.L212:
	add	r0, r5, #0
	bl	sub_811828C
.L187:
	ldr	r0, .L228
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L215	@cond_branch
	ldrh	r1, [r1, #0x10]
	mov	r0, #0x52
	bl	SetGpuReg
.L215:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L229:
	.align	2, 0
.L228:
	.word	gTasks
.Lfe8:
	.size	 BattleIntroSlide3,.Lfe8-BattleIntroSlide3
	.align	2, 0
	.type	 BattleIntroSlideLink,function
	.thumb_func
BattleIntroSlideLink:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x8
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	ldr	r1, .L259
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	add	r7, r0, r1
	mov	r1, #0x8
	ldrsh	r0, [r7, r1]
	cmp	r0, #0x1
	ble	.L231	@cond_branch
	mov	r2, #0x10
	ldrsh	r0, [r7, r2]
	cmp	r0, #0
	bne	.L231	@cond_branch
	ldr	r2, .L259+0x4
	ldrh	r1, [r2]
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r5, #0
	bne	.L233	@cond_branch
	cmp	r1, #0x4f
	bhi	.L232	@cond_branch
.L233:
	add	r0, r1, #0x3
	strh	r0, [r2]
	ldr	r1, .L259+0x8
	ldrh	r0, [r1]
	sub	r0, r0, #0x3
	strh	r0, [r1]
	b	.L231
.L260:
	.align	2, 0
.L259:
	.word	gTasks
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L232:
	str	r5, [sp]
	ldr	r1, .L261
	ldr	r4, .L261+0x4
	mov	r0, sp
	add	r2, r4, #0
	bl	CpuSet
	str	r5, [sp, #0x4]
	add	r0, sp, #0x4
	ldr	r1, .L261+0x8
	add	r2, r4, #0
	bl	CpuSet
	mov	r0, #0x1
	strh	r0, [r7, #0x10]
.L231:
	ldr	r0, .L261+0xc
	lsl	r2, r6, #0x2
	add	r1, r2, r6
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r3, #0x8
	ldrsh	r1, [r1, r3]
	mov	r9, r0
	add	r5, r2, #0
	cmp	r1, #0x4
	bls	.LCB1948
	b	.L235	@long jump
.LCB1948:
	lsl	r0, r1, #0x2
	ldr	r1, .L261+0x10
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L262:
	.align	2, 0
.L261:
	.word	0x600e000
	.word	0x5000200
	.word	0x600f000
	.word	gTasks
	.word	.L256
	.align	2, 0
	.align	2, 0
.L256:
	.word	.L236
	.word	.L237
	.word	.L239
	.word	.L241
	.word	.L255
.L236:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	add	r0, r0, r9
	mov	r1, #0x20
	strh	r1, [r0, #0xc]
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L235
.L237:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1996
	b	.L235	@long jump
.LCB1996:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	ldr	r4, .L263
	ldr	r5, .L263+0x4
	ldr	r0, [r5]
	add	r0, r0, #0x7c
	ldrb	r0, [r0]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r4
	ldrb	r3, [r1, #0x1]
	mov	r2, #0xd
	neg	r2, r2
	add	r0, r2, #0
	and	r0, r0, r3
	mov	r3, #0x8
	mov	r9, r3
	mov	r3, r9
	orr	r0, r0, r3
	strb	r0, [r1, #0x1]
	ldr	r3, [r5]
	add	r0, r3, #0
	add	r0, r0, #0x7c
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	mov	r1, #0x1c
	add	r1, r1, r4
	mov	r8, r1
	add	r0, r0, r8
	ldr	r6, .L263+0x8
	str	r6, [r0]
	add	r3, r3, #0x7d
	ldrb	r1, [r3]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	ldrb	r1, [r0, #0x1]
	and	r2, r2, r1
	mov	r3, r9
	orr	r2, r2, r3
	strb	r2, [r0, #0x1]
	ldr	r0, [r5]
	add	r0, r0, #0x7d
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r8
	str	r6, [r0]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	ldr	r1, .L263+0xc
	mov	r0, #0x4a
	bl	SetGpuReg
	b	.L235
.L264:
	.align	2, 0
.L263:
	.word	gSprites
	.word	gBattleStruct
	.word	sub_8038B74
	.word	0x3f06
.L239:
	ldr	r1, .L265
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB2088
	b	.L235	@long jump
.LCB2088:
	add	r1, r5, r6
	lsl	r1, r1, #0x3
	add	r1, r1, r9
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	ldr	r2, .L265+0x4
	ldrh	r1, [r2]
	ldr	r0, .L265+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L235
.L266:
	.align	2, 0
.L265:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L241:
	ldr	r2, .L267
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L242	@cond_branch
	ldr	r3, .L267+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L242:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L243	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L243:
	mov	r3, #0x0
	ldr	r0, .L267+0x8
	mov	ip, r0
	ldr	r2, .L267+0xc
	mov	r8, r2
	mov	r7, ip
	add	r4, r1, #0
.L247:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r8
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L247	@cond_branch
	cmp	r3, #0x9f
	bgt	.L258	@cond_branch
	ldr	r0, .L267+0xc
	mov	r8, r0
	ldr	r7, .L267+0x8
	ldr	r1, .L267+0x10
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L252:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r8
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L252	@cond_branch
.L258:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	bne	.L235	@cond_branch
	mov	r0, #0x3
	mov	r2, ip
	strb	r0, [r2, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L235
.L268:
	.align	2, 0
.L267:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
.L255:
	add	r0, r6, #0
	bl	sub_811828C
.L235:
	add	sp, sp, #0x8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 BattleIntroSlideLink,.Lfe9-BattleIntroSlideLink
	.align	2, 0
	.type	 BattleIntroSlidePartner,function
	.thumb_func
BattleIntroSlidePartner:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r1, .L288
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	add	r6, r1, #0
	cmp	r0, #0x5
	bls	.LCB2285
	b	.L270	@long jump
.LCB2285:
	lsl	r0, r0, #0x2
	ldr	r1, .L288+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L289:
	.align	2, 0
.L288:
	.word	gTasks
	.word	.L285
	.align	2, 0
	.align	2, 0
.L285:
	.word	.L271
	.word	.L272
	.word	.L274
	.word	.L277
	.word	.L281
	.word	.L284
.L271:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r6
	mov	r1, #0x1
	strh	r1, [r0, #0xc]
	b	.L287
.L272:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r1, r0, r6
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB2326
	b	.L270	@long jump
.LCB2326:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	ldr	r1, .L290
	mov	r0, #0xa
	bl	SetGpuReg
	ldr	r1, .L290+0x4
	mov	r0, #0xc
	bl	SetGpuReg
	mov	r0, #0x0
	bl	GetGpuReg
	add	r1, r0, #0
	ldr	r2, .L290+0x8
	add	r0, r2, #0
	orr	r1, r1, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r1, #0xf8
	lsl	r1, r1, #0x6
	mov	r0, #0x48
	bl	SetGpuReg
	ldr	r1, .L290+0xc
	mov	r0, #0x4a
	bl	SetGpuReg
	ldr	r1, .L290+0x10
	ldr	r2, .L290+0x14
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r1, .L290+0x18
	mov	r0, #0xf0
	strh	r0, [r1]
	ldr	r1, .L290+0x1c
	sub	r2, r2, #0xc0
	add	r0, r2, #0
	strh	r0, [r1]
	b	.L270
.L291:
	.align	2, 0
.L290:
	.word	0x5c0a
	.word	0x5e0a
	.word	0xf040
	.word	0x3f3f
	.word	gBattle_BG0_Y
	.word	0xffd0
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L274:
	ldr	r2, .L292
	ldrh	r3, [r2]
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	add	r0, r1, #0
	add	r1, r3, r0
	strh	r1, [r2]
	mov	r5, #0xff
	lsl	r5, r5, #0x8
	and	r1, r1, r5
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r1, r0
	beq	.L275	@cond_branch
	add	r0, r3, #0
	add	r0, r0, #0xff
	strh	r0, [r2]
.L275:
	ldrh	r0, [r2]
	add	r1, r5, #0
	and	r1, r1, r0
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	cmp	r1, r0
	beq	.LCB2417
	b	.L270	@long jump
.LCB2417:
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r6
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	ldr	r2, .L292+0x4
	ldrh	r1, [r2]
	ldr	r0, .L292+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L270
.L293:
	.align	2, 0
.L292:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L277:
	ldr	r3, .L294
	ldrh	r2, [r3]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r2
	mov	r1, #0x98
	lsl	r1, r1, #0x7
	cmp	r0, r1
	beq	.L278	@cond_branch
	mov	r1, #0xff
	lsl	r1, r1, #0x2
	add	r0, r2, r1
	strh	r0, [r3]
.L278:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r3, r0, r6
	ldrh	r1, [r3, #0xc]
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L279	@cond_branch
	sub	r0, r1, #0x2
	strh	r0, [r3, #0xc]
.L279:
	ldr	r1, .L294+0x4
	ldrh	r0, [r3, #0xc]
	strh	r0, [r1]
	ldr	r2, .L294+0x8
	neg	r1, r0
	strh	r1, [r2]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L270	@cond_branch
	ldrh	r0, [r3, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x8]
	b	.L270
.L295:
	.align	2, 0
.L294:
	.word	gBattle_WIN0V
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L281:
	ldr	r1, .L296
	ldrh	r0, [r1]
	add	r3, r0, #0x2
	strh	r3, [r1]
	ldr	r1, .L296+0x4
	ldrh	r0, [r1]
	add	r0, r0, #0x2
	strh	r0, [r1]
	ldr	r5, .L296+0x8
	ldrh	r2, [r5]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r2
	mov	r1, #0xa0
	lsl	r1, r1, #0x7
	cmp	r0, r1
	beq	.L282	@cond_branch
	add	r0, r2, #0
	add	r0, r0, #0xff
	strh	r0, [r5]
.L282:
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0
	bne	.L270	@cond_branch
	str	r0, [sp]
	ldr	r1, .L296+0xc
	ldr	r2, .L296+0x10
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x0
	bl	GetGpuReg
	ldr	r1, .L296+0x14
	and	r1, r1, r0
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	ldr	r1, .L296+0x18
	mov	r0, #0x3
	strb	r0, [r1, #0x15]
	ldr	r1, .L296+0x1c
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
.L287:
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L270
.L297:
	.align	2, 0
.L296:
	.word	gBattle_BG0_Y
	.word	gBattle_BG2_Y
	.word	gBattle_WIN0V
	.word	0x600e000
	.word	0x5000800
	.word	0xbfff
	.word	gScanlineEffect
	.word	gTasks
.L284:
	add	r0, r4, #0
	bl	sub_811828C
.L270:
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 BattleIntroSlidePartner,.Lfe10-BattleIntroSlidePartner
	.align	2, 0
	.globl	sub_8118FBC
	.type	 sub_8118FBC,function
	.thumb_func
sub_8118FBC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	str	r0, [sp]
	add	r6, r2, #0
	add	r4, r3, #0
	ldr	r0, [sp, #0x24]
	ldr	r7, [sp, #0x28]
	ldr	r2, [sp, #0x2c]
	mov	r9, r2
	ldr	r5, [sp, #0x30]
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r8, r1
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	sl, r0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	add	r0, r4, #0
	bl	GetBattlerAtPosition
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L309
	ldr	r2, [r1]
	lsl	r4, r4, #0x2
	add	r2, r2, #0x4
	add	r2, r2, r4
	ldr	r1, .L309+0x4
	add	r0, r0, r1
	ldrb	r1, [r0]
	lsl	r1, r1, #0xb
	ldr	r0, [r2]
	add	r0, r0, r1
	mov	r2, #0x80
	lsl	r2, r2, #0x3
	add	r1, r7, #0
	bl	CpuSet
	ldr	r1, [sp]
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	mov	r2, #0x80
	lsl	r2, r2, #0x5
	add	r1, r7, #0
	add	r3, r5, #0
	bl	LoadBgTiles
	add	r0, r6, #0
	add	r0, r0, #0x8
	cmp	r6, r0
	bge	.L300	@cond_branch
	mov	ip, r0
	mov	r2, r8
	lsl	r7, r2, #0x1
.L302:
	mov	r1, r8
	add	r2, r1, #0
	add	r2, r2, #0x8
	add	r4, r6, #0x1
	cmp	r1, r2
	bge	.L301	@cond_branch
	mov	r0, sl
	lsl	r3, r0, #0xc
	lsl	r0, r6, #0x6
	add	r0, r0, r9
	add	r6, r7, r0
	sub	r1, r2, r1
.L306:
	add	r0, r5, #0
	orr	r0, r0, r3
	strh	r0, [r6]
	add	r5, r5, #0x1
	add	r6, r6, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.L306	@cond_branch
.L301:
	add	r6, r4, #0
	cmp	r6, ip
	blt	.L302	@cond_branch
.L300:
	ldr	r1, [sp]
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	mov	r2, #0x80
	lsl	r2, r2, #0x4
	mov	r1, r9
	mov	r3, #0x0
	bl	LoadBgTilemap
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L310:
	.align	2, 0
.L309:
	.word	gMonSpritesGfxPtr
	.word	gBattleMonForms
.Lfe11:
	.size	 sub_8118FBC,.Lfe11-sub_8118FBC
	.align	2, 0
	.globl	unref_sub_8119094
	.type	 unref_sub_8119094,function
	.thumb_func
unref_sub_8119094:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	mov	r8, r1
	ldr	r1, [sp, #0x24]
	ldr	r6, [sp, #0x28]
	ldr	r5, [sp, #0x2c]
	ldr	r4, [sp, #0x30]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	ip, r0
	mov	r0, r8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	lsl	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	sl, r1
	lsl	r6, r6, #0x10
	lsr	r1, r6, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r0, .L322
	ldr	r0, [r0]
	lsr	r2, r2, #0x16
	add	r0, r0, #0x4
	add	r0, r0, r2
	lsr	r3, r3, #0xd
	ldr	r0, [r0]
	mov	r2, #0xc0
	lsl	r2, r2, #0x13
	add	r0, r0, r3
	orr	r1, r1, r2
	ldr	r2, .L322+0x4
	ldr	r3, .L322+0x8
	stmia r3!, {r0, r1, r2}
	.code	16
	lsr	r6, r6, #0x15
	lsl	r4, r4, #0x9
	sub	r6, r6, r4
	mov	r0, r8
	add	r1, r0, #0
	add	r1, r1, #0x8
	cmp	r0, r1
	bge	.L313	@cond_branch
	mov	r9, r1
	mov	r7, ip
	lsl	r7, r7, #0x1
	mov	r8, r7
	lsl	r5, r5, #0xb
	str	r5, [sp]
.L315:
	mov	r1, ip
	add	r3, r1, #0
	add	r3, r3, #0x8
	add	r5, r0, #0x1
	cmp	r1, r3
	bge	.L314	@cond_branch
	mov	r2, sl
	lsl	r4, r2, #0xc
	lsl	r0, r0, #0x6
	mov	r7, #0xc0
	lsl	r7, r7, #0x13
	add	r0, r0, r7
	ldr	r2, [sp]
	add	r0, r2, r0
	mov	r7, r8
	add	r2, r7, r0
	sub	r1, r3, r1
.L319:
	add	r0, r6, #0
	orr	r0, r0, r4
	strh	r0, [r2]
	add	r6, r6, #0x1
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.L319	@cond_branch
.L314:
	add	r0, r5, #0
	cmp	r0, r9
	blt	.L315	@cond_branch
.L313:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L323:
	.align	2, 0
.L322:
	.word	gMonSpritesGfxPtr
	.word	-0x7ffffc00
	.word	0x40000d4
.Lfe12:
	.size	 unref_sub_8119094,.Lfe12-unref_sub_8119094
.text
	.align	2, 0

