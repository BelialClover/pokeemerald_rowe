@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.type	 sLocationHistory,object
	.size	 sLocationHistory,6
sLocationHistory:
	.byte	0x0
	.space	1
	.space	4
	.type	 sRoamerLocation,object
	.size	 sRoamerLocation,2
sRoamerLocation:
	.byte	0x0
	.space	1
	.section .rodata
	.type	 sRoamerLocations,object
sRoamerLocations:
	.byte	0x19
	.byte	0x1a
	.byte	0x20
	.byte	0x21
	.byte	0x31
	.byte	0xff
	.byte	0x1a
	.byte	0x19
	.byte	0x20
	.byte	0x21
	.byte	0xff
	.byte	0xff
	.byte	0x20
	.byte	0x1a
	.byte	0x19
	.byte	0x21
	.byte	0xff
	.byte	0xff
	.byte	0x21
	.byte	0x20
	.byte	0x19
	.byte	0x1a
	.byte	0x22
	.byte	0x26
	.byte	0x22
	.byte	0x21
	.byte	0x23
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x23
	.byte	0x22
	.byte	0x24
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x24
	.byte	0x23
	.byte	0x25
	.byte	0x26
	.byte	0xff
	.byte	0xff
	.byte	0x25
	.byte	0x24
	.byte	0x26
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x26
	.byte	0x25
	.byte	0x21
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x27
	.byte	0x24
	.byte	0x28
	.byte	0x29
	.byte	0xff
	.byte	0xff
	.byte	0x28
	.byte	0x27
	.byte	0x2a
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x29
	.byte	0x27
	.byte	0x2a
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x2a
	.byte	0x28
	.byte	0x29
	.byte	0x2b
	.byte	0xff
	.byte	0xff
	.byte	0x2b
	.byte	0x2a
	.byte	0x2c
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x2c
	.byte	0x2b
	.byte	0x2d
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x2d
	.byte	0x2c
	.byte	0x2e
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x2e
	.byte	0x2d
	.byte	0x2f
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x2f
	.byte	0x2e
	.byte	0x30
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x30
	.byte	0x2f
	.byte	0x31
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x31
	.byte	0x30
	.byte	0x19
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.size	 sRoamerLocations,126
.text
	.align	2, 0
	.globl	ClearRoamerData
	.type	 ClearRoamerData,function
	.thumb_func
ClearRoamerData:
	push	{r4, r5, lr}
	ldr	r5, .L3
	ldr	r0, [r5]
	ldr	r4, .L3+0x4
	add	r0, r0, r4
	mov	r1, #0x0
	mov	r2, #0x1c
	bl	memset
	ldr	r0, [r5]
	add	r0, r0, r4
	ldr	r1, .L3+0x8
	strh	r1, [r0, #0x8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	0x1e9
.Lfe1:
	.size	 ClearRoamerData,.Lfe1-ClearRoamerData
	.align	2, 0
	.globl	ClearRoamerLocationData
	.type	 ClearRoamerLocationData,function
	.thumb_func
ClearRoamerLocationData:
	push	{r4, r5, r6, lr}
	mov	r2, #0x0
	ldr	r6, .L11
	ldr	r4, .L11+0x4
	mov	r3, #0x0
	add	r5, r4, #0x1
.L9:
	lsl	r1, r2, #0x1
	add	r0, r1, r4
	strb	r3, [r0]
	add	r1, r1, r5
	strb	r3, [r1]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x2
	bls	.L9	@cond_branch
	mov	r0, #0x0
	strb	r0, [r6]
	strb	r0, [r6, #0x1]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	sRoamerLocation
	.word	sLocationHistory
.Lfe2:
	.size	 ClearRoamerLocationData,.Lfe2-ClearRoamerLocationData
	.align	2, 0
	.type	 CreateInitialRoamerMon,function
	.thumb_func
CreateInitialRoamerMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x14
	lsl	r0, r0, #0x10
	ldr	r0, .L16
	ldr	r1, [r0]
	ldr	r2, .L16+0x4
	add	r1, r1, r2
	ldr	r2, .L16+0x8
	strh	r2, [r1, #0x8]
	add	r7, r0, #0
	ldr	r6, .L16+0xc
	ldr	r0, [r7]
	ldr	r5, .L16+0x4
	add	r0, r0, r5
	ldrh	r1, [r0, #0x8]
	mov	r4, #0x0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r4, [sp, #0x8]
	str	r4, [sp, #0xc]
	str	r4, [sp, #0x10]
	add	r0, r6, #0
	mov	r2, #0x28
	mov	r3, #0x20
	bl	CreateMon
	ldr	r0, [r7]
	add	r0, r0, r5
	mov	r1, #0x14
	strb	r1, [r0, #0xc]
	ldr	r0, [r7]
	add	r0, r0, r5
	strb	r4, [r0, #0xd]
	ldr	r0, [r7]
	add	r0, r0, r5
	mov	r1, #0x1
	strb	r1, [r0, #0x13]
	add	r0, r6, #0
	mov	r1, #0x42
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	str	r0, [r1]
	add	r0, r6, #0
	mov	r1, #0x0
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	str	r0, [r1, #0x4]
	add	r0, r6, #0
	mov	r1, #0x3a
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	mov	r2, #0x0
	mov	r8, r2
	strh	r0, [r1, #0xa]
	add	r0, r6, #0
	mov	r1, #0x16
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	strb	r0, [r1, #0xe]
	add	r0, r6, #0
	mov	r1, #0x17
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	strb	r0, [r1, #0xf]
	add	r0, r6, #0
	mov	r1, #0x18
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	strb	r0, [r1, #0x10]
	add	r0, r6, #0
	mov	r1, #0x21
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	strb	r0, [r1, #0x11]
	add	r0, r6, #0
	mov	r1, #0x2f
	bl	GetMonData
	ldr	r1, [r7]
	add	r1, r1, r5
	strb	r0, [r1, #0x12]
	ldr	r4, .L16+0x10
	mov	r0, r8
	strb	r0, [r4]
	bl	Random
	ldr	r5, .L16+0x14
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x14
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r1, r0, #0x1
	add	r1, r1, r0
	lsl	r1, r1, #0x1
	add	r1, r1, r5
	ldrb	r0, [r1]
	strb	r0, [r4, #0x1]
	add	sp, sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L17:
	.align	2, 0
.L16:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	0x1e9
	.word	gEnemyParty
	.word	sRoamerLocation
	.word	sRoamerLocations
.Lfe3:
	.size	 CreateInitialRoamerMon,.Lfe3-CreateInitialRoamerMon
	.align	2, 0
	.globl	InitRoamer
	.type	 InitRoamer,function
	.thumb_func
InitRoamer:
	push	{lr}
	bl	ClearRoamerData
	bl	ClearRoamerLocationData
	ldr	r0, .L19
	ldrh	r0, [r0]
	bl	CreateInitialRoamerMon
	pop	{r0}
	bx	r0
.L20:
	.align	2, 0
.L19:
	.word	gSpecialVar_0x8004
.Lfe4:
	.size	 InitRoamer,.Lfe4-InitRoamer
	.align	2, 0
	.globl	UpdateLocationHistoryForRoamer
	.type	 UpdateLocationHistoryForRoamer,function
	.thumb_func
UpdateLocationHistoryForRoamer:
	ldr	r0, .L22
	ldrb	r1, [r0, #0x2]
	strb	r1, [r0, #0x4]
	ldrb	r1, [r0, #0x3]
	strb	r1, [r0, #0x5]
	ldrb	r1, [r0]
	strb	r1, [r0, #0x2]
	ldrb	r1, [r0, #0x1]
	strb	r1, [r0, #0x3]
	ldr	r1, .L22+0x4
	ldr	r2, [r1]
	ldrb	r1, [r2, #0x4]
	strb	r1, [r0]
	ldrb	r1, [r2, #0x5]
	strb	r1, [r0, #0x1]
	bx	lr
.L23:
	.align	2, 0
.L22:
	.word	sLocationHistory
	.word	gSaveBlock1Ptr
.Lfe5:
	.size	 UpdateLocationHistoryForRoamer,.Lfe5-UpdateLocationHistoryForRoamer
	.align	2, 0
	.globl	RoamerMoveToOtherLocationSet
	.type	 RoamerMoveToOtherLocationSet,function
	.thumb_func
RoamerMoveToOtherLocationSet:
	push	{r4, r5, lr}
	mov	r1, #0x0
	ldr	r0, .L31
	ldr	r0, [r0]
	ldr	r2, .L31+0x4
	add	r0, r0, r2
	ldrb	r0, [r0, #0x13]
	cmp	r0, #0
	beq	.L24	@cond_branch
	ldr	r0, .L31+0x8
	strb	r1, [r0]
	ldr	r5, .L31+0xc
	add	r4, r0, #0
.L28:
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x14
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r1, r0, #0x1
	add	r1, r1, r0
	lsl	r1, r1, #0x1
	add	r1, r1, r5
	ldrb	r1, [r1]
	ldrb	r0, [r4, #0x1]
	cmp	r0, r1
	beq	.L28	@cond_branch
	strb	r1, [r4, #0x1]
.L24:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	sRoamerLocation
	.word	sRoamerLocations
.Lfe6:
	.size	 RoamerMoveToOtherLocationSet,.Lfe6-RoamerMoveToOtherLocationSet
	.align	2, 0
	.globl	RoamerMove
	.type	 RoamerMove,function
	.thumb_func
RoamerMove:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #0x0
	bl	Random
	lsl	r0, r0, #0x10
	mov	r1, #0xf0
	lsl	r1, r1, #0xc
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L34	@cond_branch
	bl	RoamerMoveToOtherLocationSet
	b	.L33
.L34:
	ldr	r0, .L48
	ldr	r0, [r0]
	ldr	r1, .L48+0x4
	add	r0, r0, r1
	ldrb	r0, [r0, #0x13]
	cmp	r0, #0
	beq	.L33	@cond_branch
	ldr	r7, .L48+0x8
	ldr	r3, .L48+0xc
.L39:
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r2, r0, #0x1
	add	r1, r2, r3
	ldrb	r0, [r7, #0x1]
	ldrb	r1, [r1]
	cmp	r0, r1
	bne	.L40	@cond_branch
	ldr	r6, .L48+0xc
	add	r5, r2, #0x1
	ldr	r4, .L48+0x10
.L43:
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x5
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r0, r0, r5
	add	r0, r0, r6
	ldrb	r1, [r0]
	ldrb	r0, [r4, #0x4]
	cmp	r0, #0
	bne	.L45	@cond_branch
	ldrb	r0, [r4, #0x5]
	cmp	r0, r1
	beq	.L43	@cond_branch
.L45:
	cmp	r1, #0xff
	beq	.L43	@cond_branch
	strb	r1, [r7, #0x1]
	b	.L33
.L49:
	.align	2, 0
.L48:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	sRoamerLocation
	.word	sRoamerLocations
	.word	sLocationHistory
.L40:
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x13
	bls	.L39	@cond_branch
.L33:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 RoamerMove,.Lfe7-RoamerMove
	.align	2, 0
	.globl	IsRoamerAt
	.type	 IsRoamerAt,function
	.thumb_func
IsRoamerAt:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	ldr	r0, .L54
	ldr	r0, [r0]
	ldr	r3, .L54+0x4
	add	r0, r0, r3
	ldrb	r0, [r0, #0x13]
	cmp	r0, #0
	beq	.L51	@cond_branch
	ldr	r0, .L54+0x8
	ldrb	r3, [r0]
	cmp	r2, r3
	bne	.L51	@cond_branch
	ldrb	r0, [r0, #0x1]
	cmp	r1, r0
	bne	.L51	@cond_branch
	mov	r0, #0x1
	b	.L53
.L55:
	.align	2, 0
.L54:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	sRoamerLocation
.L51:
	mov	r0, #0x0
.L53:
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 IsRoamerAt,.Lfe8-IsRoamerAt
	.align	2, 0
	.globl	CreateRoamerMonInstance
	.type	 CreateRoamerMonInstance,function
	.thumb_func
CreateRoamerMonInstance:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	ldr	r5, .L57
	bl	ZeroEnemyPartyMons
	ldr	r4, .L57+0x4
	ldr	r0, [r4]
	ldr	r1, .L57+0x8
	add	r0, r0, r1
	ldrh	r1, [r0, #0x8]
	ldrb	r2, [r0, #0xc]
	ldr	r3, [r0]
	ldr	r0, [r0, #0x4]
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	add	r0, r5, #0
	bl	CreateMonWithIVsPersonality
	ldr	r2, [r4]
	ldr	r0, .L57+0xc
	add	r2, r2, r0
	add	r0, r5, #0
	mov	r1, #0x37
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r1, .L57+0x10
	add	r2, r2, r1
	add	r0, r5, #0
	mov	r1, #0x39
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r0, .L57+0x14
	add	r2, r2, r0
	add	r0, r5, #0
	mov	r1, #0x16
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r1, .L57+0x18
	add	r2, r2, r1
	add	r0, r5, #0
	mov	r1, #0x17
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r0, .L57+0x1c
	add	r2, r2, r0
	add	r0, r5, #0
	mov	r1, #0x18
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r1, .L57+0x20
	add	r2, r2, r1
	add	r0, r5, #0
	mov	r1, #0x21
	bl	SetMonData
	ldr	r2, [r4]
	ldr	r0, .L57+0x24
	add	r2, r2, r0
	add	r0, r5, #0
	mov	r1, #0x2f
	bl	SetMonData
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L58:
	.align	2, 0
.L57:
	.word	gEnemyParty
	.word	gSaveBlock1Ptr
	.word	0x2e5c
	.word	0x2e69
	.word	0x2e66
	.word	0x2e6a
	.word	0x2e6b
	.word	0x2e6c
	.word	0x2e6d
	.word	0x2e6e
.Lfe9:
	.size	 CreateRoamerMonInstance,.Lfe9-CreateRoamerMonInstance
	.align	2, 0
	.globl	TryStartRoamerEncounter
	.type	 TryStartRoamerEncounter,function
	.thumb_func
TryStartRoamerEncounter:
	push	{lr}
	ldr	r0, .L63
	ldr	r1, [r0]
	ldrb	r0, [r1, #0x4]
	ldrb	r1, [r1, #0x5]
	bl	IsRoamerAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L60	@cond_branch
	bl	Random
	lsl	r0, r0, #0x10
	mov	r1, #0xc0
	lsl	r1, r1, #0xa
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L60	@cond_branch
	bl	CreateRoamerMonInstance
	mov	r0, #0x1
	b	.L62
.L64:
	.align	2, 0
.L63:
	.word	gSaveBlock1Ptr
.L60:
	mov	r0, #0x0
.L62:
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 TryStartRoamerEncounter,.Lfe10-TryStartRoamerEncounter
	.align	2, 0
	.globl	UpdateRoamerHPStatus
	.type	 UpdateRoamerHPStatus,function
	.thumb_func
UpdateRoamerHPStatus:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	mov	r1, #0x39
	bl	GetMonData
	ldr	r5, .L66
	ldr	r1, [r5]
	ldr	r4, .L66+0x4
	add	r1, r1, r4
	strh	r0, [r1, #0xa]
	add	r0, r6, #0
	mov	r1, #0x37
	bl	GetMonData
	ldr	r1, [r5]
	add	r1, r1, r4
	strb	r0, [r1, #0xd]
	bl	RoamerMoveToOtherLocationSet
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L67:
	.align	2, 0
.L66:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
.Lfe11:
	.size	 UpdateRoamerHPStatus,.Lfe11-UpdateRoamerHPStatus
	.align	2, 0
	.globl	SetRoamerInactive
	.type	 SetRoamerInactive,function
	.thumb_func
SetRoamerInactive:
	ldr	r0, .L69
	ldr	r0, [r0]
	ldr	r1, .L69+0x4
	add	r0, r0, r1
	mov	r1, #0x0
	strb	r1, [r0, #0x13]
	bx	lr
.L70:
	.align	2, 0
.L69:
	.word	gSaveBlock1Ptr
	.word	0x2e5c
.Lfe12:
	.size	 SetRoamerInactive,.Lfe12-SetRoamerInactive
	.align	2, 0
	.globl	GetRoamerLocation
	.type	 GetRoamerLocation,function
	.thumb_func
GetRoamerLocation:
	ldr	r3, .L72
	ldrb	r2, [r3]
	strb	r2, [r0]
	ldrb	r0, [r3, #0x1]
	strb	r0, [r1]
	bx	lr
.L73:
	.align	2, 0
.L72:
	.word	sRoamerLocation
.Lfe13:
	.size	 GetRoamerLocation,.Lfe13-GetRoamerLocation
.text
	.align	2, 0

