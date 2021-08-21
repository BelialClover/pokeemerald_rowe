@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sPerStepCallbacks,object
sPerStepCallbacks:
	.word	DummyPerStepCallback
	.word	AshGrassPerStepCallback
	.word	FortreeBridgePerStepCallback
	.word	PacifidlogBridgePerStepCallback
	.word	SootopolisGymIcePerStepCallback
	.word	EndTruckSequence
	.word	SecretBasePerStepCallback
	.word	CrackedFloorPerStepCallback
	.size	 sPerStepCallbacks,32
	.align	2, 0
	.type	 sHalfSubmergedBridgeMetatileOffsets,object
sHalfSubmergedBridgeMetatileOffsets:
	.byte	0x0
	.byte	0x0
	.short	0x259
	.byte	0x0
	.byte	0x1
	.short	0x261
	.byte	0x0
	.byte	-0x1
	.short	0x259
	.byte	0x0
	.byte	0x0
	.short	0x261
	.byte	0x0
	.byte	0x0
	.short	0x252
	.byte	0x1
	.byte	0x0
	.short	0x253
	.byte	-0x1
	.byte	0x0
	.short	0x252
	.byte	0x0
	.byte	0x0
	.short	0x253
	.size	 sHalfSubmergedBridgeMetatileOffsets,32
	.align	2, 0
	.type	 sFullySubmergedBridgeMetatileOffsets,object
sFullySubmergedBridgeMetatileOffsets:
	.byte	0x0
	.byte	0x0
	.short	0x25a
	.byte	0x0
	.byte	0x1
	.short	0x262
	.byte	0x0
	.byte	-0x1
	.short	0x25a
	.byte	0x0
	.byte	0x0
	.short	0x262
	.byte	0x0
	.byte	0x0
	.short	0x254
	.byte	0x1
	.byte	0x0
	.short	0x255
	.byte	-0x1
	.byte	0x0
	.short	0x254
	.byte	0x0
	.byte	0x0
	.short	0x255
	.size	 sFullySubmergedBridgeMetatileOffsets,32
	.align	2, 0
	.type	 sFloatingBridgeMetatileOffsets,object
sFloatingBridgeMetatileOffsets:
	.byte	0x0
	.byte	0x0
	.short	0x258
	.byte	0x0
	.byte	0x1
	.short	0x260
	.byte	0x0
	.byte	-0x1
	.short	0x258
	.byte	0x0
	.byte	0x0
	.short	0x260
	.byte	0x0
	.byte	0x0
	.short	0x250
	.byte	0x1
	.byte	0x0
	.short	0x251
	.byte	-0x1
	.byte	0x0
	.short	0x250
	.byte	0x0
	.byte	0x0
	.short	0x251
	.size	 sFloatingBridgeMetatileOffsets,32
	.align	1, 0
	.type	 sSootopolisGymIceRowVars,object
sSootopolisGymIceRowVars:
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x4001
	.short	0x4002
	.short	0x4003
	.short	0x4004
	.short	0x0
	.short	0x0
	.short	0x4005
	.short	0x4006
	.short	0x4007
	.short	0x0
	.short	0x0
	.short	0x4008
	.short	0x4009
	.short	0x400a
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.size	 sSootopolisGymIceRowVars,52
	.align	1, 0
	.type	 sMuddySlopeMetatiles,object
sMuddySlopeMetatiles:
	.short	0xe8
	.short	0xeb
	.short	0xea
	.short	0xe9
	.size	 sMuddySlopeMetatiles,8
.text
	.align	2, 0
	.type	 Task_RunPerStepCallback,function
	.thumb_func
Task_RunPerStepCallback:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L3
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	mov	r2, #0x8
	ldrsh	r1, [r1, r2]
	ldr	r2, .L3+0x4
	lsl	r1, r1, #0x2
	add	r1, r1, r2
	ldr	r1, [r1]
	bl	_call_via_r1
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	gTasks
	.word	sPerStepCallbacks
.Lfe1:
	.size	 Task_RunPerStepCallback,.Lfe1-Task_RunPerStepCallback
	.align	2, 0
	.type	 RunTimeBasedEvents,function
	.thumb_func
RunTimeBasedEvents:
	push	{r4, lr}
	add	r4, r0, #0
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L7	@cond_branch
	cmp	r0, #0x1
	beq	.L9	@cond_branch
	b	.L6
.L7:
	ldr	r0, .L14
	ldr	r0, [r0, #0x20]
	mov	r1, #0x80
	lsl	r1, r1, #0x5
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L6	@cond_branch
	bl	DoTimeBasedEvents
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	b	.L13
.L15:
	.align	2, 0
.L14:
	.word	gMain
.L9:
	ldr	r0, .L16
	ldr	r0, [r0, #0x20]
	mov	r1, #0x80
	lsl	r1, r1, #0x5
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L6	@cond_branch
	ldrh	r0, [r4]
	sub	r0, r0, #0x1
.L13:
	strh	r0, [r4]
.L6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L17:
	.align	2, 0
.L16:
	.word	gMain
.Lfe2:
	.size	 RunTimeBasedEvents,.Lfe2-RunTimeBasedEvents
	.align	2, 0
	.type	 Task_RunTimeBasedEvents,function
	.thumb_func
Task_RunTimeBasedEvents:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L21
	add	r4, r1, r0
	bl	ScriptContext2_IsEnabled
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L19	@cond_branch
	add	r0, r4, #0
	bl	RunTimeBasedEvents
	add	r0, r4, #0x2
	add	r1, r4, #0x4
	bl	UpdateAmbientCry
.L19:
	mov	r1, #0x6
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L20	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x6]
	bl	DoTimeBasedEvents
.L20:
	pop	{r4}
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	gTasks+0x8
.Lfe3:
	.size	 Task_RunTimeBasedEvents,.Lfe3-Task_RunTimeBasedEvents
	.align	2, 0
	.globl	ForceTimeBasedEvents
	.type	 ForceTimeBasedEvents,function
	.thumb_func
ForceTimeBasedEvents:
	push	{lr}
	ldr	r0, .L25
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0xff
	beq	.L24	@cond_branch
	ldr	r0, .L25+0x4
	lsl	r1, r2, #0x2
	add	r1, r1, r2
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r0, #0x1
	strh	r0, [r1, #0xe]
.L24:
	pop	{r0}
	bx	r0
.L26:
	.align	2, 0
.L25:
	.word	Task_RunTimeBasedEvents
	.word	gTasks
.Lfe4:
	.size	 ForceTimeBasedEvents,.Lfe4-ForceTimeBasedEvents
	.align	2, 0
	.globl	SetUpFieldTasks
	.type	 SetUpFieldTasks,function
	.thumb_func
SetUpFieldTasks:
	push	{r4, r5, lr}
	ldr	r5, .L31
	add	r0, r5, #0
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	bne	.L28	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x50
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L31+0x4
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	strh	r4, [r1, #0x8]
.L28:
	ldr	r4, .L31+0x8
	add	r0, r4, #0
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L29	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x50
	bl	CreateTask
.L29:
	ldr	r4, .L31+0xc
	add	r0, r4, #0
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L30	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x50
	bl	CreateTask
.L30:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	Task_RunPerStepCallback
	.word	gTasks
	.word	Task_MuddySlope
	.word	Task_RunTimeBasedEvents
.Lfe5:
	.size	 SetUpFieldTasks,.Lfe5-SetUpFieldTasks
	.align	2, 0
	.globl	ActivatePerStepCallback
	.type	 ActivatePerStepCallback,function
	.thumb_func
ActivatePerStepCallback:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L42
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0xff
	beq	.L34	@cond_branch
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	ldr	r1, .L42+0x4
	add	r1, r0, r1
	mov	r2, #0x0
	add	r0, r1, #0
	add	r0, r0, #0x1e
.L38:
	strh	r2, [r0]
	sub	r0, r0, #0x2
	cmp	r0, r1
	bge	.L38	@cond_branch
	cmp	r4, #0x7
	bls	.L40	@cond_branch
	mov	r0, #0x0
	strh	r0, [r1]
	b	.L34
.L43:
	.align	2, 0
.L42:
	.word	Task_RunPerStepCallback
	.word	gTasks+0x8
.L40:
	strh	r4, [r1]
.L34:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 ActivatePerStepCallback,.Lfe6-ActivatePerStepCallback
	.align	2, 0
	.globl	ResetFieldTasksArgs
	.type	 ResetFieldTasksArgs,function
	.thumb_func
ResetFieldTasksArgs:
	push	{lr}
	ldr	r0, .L47
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r0, .L47+0x4
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0xff
	beq	.L46	@cond_branch
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	ldr	r1, .L47+0x8
	add	r0, r0, r1
	mov	r1, #0x0
	strh	r1, [r0, #0x2]
	strh	r1, [r0, #0x4]
.L46:
	pop	{r0}
	bx	r0
.L48:
	.align	2, 0
.L47:
	.word	Task_RunPerStepCallback
	.word	Task_RunTimeBasedEvents
	.word	gTasks+0x8
.Lfe7:
	.size	 ResetFieldTasksArgs,.Lfe7-ResetFieldTasksArgs
	.align	2, 0
	.type	 DummyPerStepCallback,function
	.thumb_func
DummyPerStepCallback:
	bx	lr
.Lfe8:
	.size	 DummyPerStepCallback,.Lfe8-DummyPerStepCallback
	.align	2, 0
	.type	 GetPacifidlogBridgeMetatileOffsets,function
	.thumb_func
GetPacifidlogBridgeMetatileOffsets:
	push	{r4, r5, lr}
	add	r5, r0, #0
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L51	@cond_branch
	add	r0, r5, #0
	b	.L59
.L51:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L53	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #0x8
	b	.L60
.L53:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L55	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #0x10
	b	.L60
.L55:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L57	@cond_branch
	mov	r0, #0x0
	b	.L59
.L57:
	add	r0, r5, #0
	add	r0, r0, #0x18
.L60:
.L59:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 GetPacifidlogBridgeMetatileOffsets,.Lfe9-GetPacifidlogBridgeMetatileOffsets
	.align	2, 0
	.type	 SetPacifidlogBridgeMetatiles,function
	.thumb_func
SetPacifidlogBridgeMetatiles:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	mov	r8, r3
	lsl	r1, r1, #0x10
	asr	r6, r1, #0x10
	lsl	r2, r2, #0x10
	asr	r7, r2, #0x10
	add	r0, r6, #0
	add	r1, r7, #0
	bl	MapGridGetMetatileBehaviorAt
	add	r1, r0, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	add	r0, r5, #0
	bl	GetPacifidlogBridgeMetatileOffsets
	add	r4, r0, #0
	add	r5, r4, #0
	cmp	r4, #0
	beq	.L62	@cond_branch
	mov	r0, #0x0
	ldrsb	r0, [r4, r0]
	add	r0, r6, r0
	mov	r1, #0x1
	ldrsb	r1, [r4, r1]
	add	r1, r7, r1
	ldrh	r2, [r4, #0x2]
	bl	MapGridSetMetatileIdAt
	mov	r0, r8
	cmp	r0, #0
	beq	.L63	@cond_branch
	mov	r0, #0x0
	ldrsb	r0, [r4, r0]
	add	r0, r6, r0
	mov	r1, #0x1
	ldrsb	r1, [r4, r1]
	add	r1, r7, r1
	bl	CurrentMapDrawMetatileAt
.L63:
	mov	r0, #0x4
	ldrsb	r0, [r5, r0]
	add	r0, r6, r0
	mov	r1, #0x5
	ldrsb	r1, [r5, r1]
	add	r1, r7, r1
	ldrh	r2, [r5, #0x6]
	bl	MapGridSetMetatileIdAt
	mov	r0, r8
	cmp	r0, #0
	beq	.L62	@cond_branch
	mov	r0, #0x4
	ldrsb	r0, [r5, r0]
	add	r0, r6, r0
	mov	r1, #0x5
	ldrsb	r1, [r5, r1]
	add	r1, r7, r1
	bl	CurrentMapDrawMetatileAt
.L62:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 SetPacifidlogBridgeMetatiles,.Lfe10-SetPacifidlogBridgeMetatiles
	.align	2, 0
	.type	 UpdateHalfSubmergedBridgeMetatiles,function
	.thumb_func
UpdateHalfSubmergedBridgeMetatiles:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r3, r2, #0
	ldr	r0, .L66
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	add	r1, r4, #0
	add	r2, r5, #0
	bl	SetPacifidlogBridgeMetatiles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L67:
	.align	2, 0
.L66:
	.word	sHalfSubmergedBridgeMetatileOffsets
.Lfe11:
	.size	 UpdateHalfSubmergedBridgeMetatiles,.Lfe11-UpdateHalfSubmergedBridgeMetatiles
	.align	2, 0
	.type	 UpdateFullySubmergedBridgeMetatiles,function
	.thumb_func
UpdateFullySubmergedBridgeMetatiles:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r3, r2, #0
	ldr	r0, .L69
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	add	r1, r4, #0
	add	r2, r5, #0
	bl	SetPacifidlogBridgeMetatiles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L70:
	.align	2, 0
.L69:
	.word	sFullySubmergedBridgeMetatileOffsets
.Lfe12:
	.size	 UpdateFullySubmergedBridgeMetatiles,.Lfe12-UpdateFullySubmergedBridgeMetatiles
	.align	2, 0
	.type	 UpdateFloatingBridgeMetatiles,function
	.thumb_func
UpdateFloatingBridgeMetatiles:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r3, r2, #0
	ldr	r0, .L72
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	add	r1, r4, #0
	add	r2, r5, #0
	bl	SetPacifidlogBridgeMetatiles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L73:
	.align	2, 0
.L72:
	.word	sFloatingBridgeMetatileOffsets
.Lfe13:
	.size	 UpdateFloatingBridgeMetatiles,.Lfe13-UpdateFloatingBridgeMetatiles
	.align	2, 0
	.type	 StandingOnNewPacifidlogBridge,function
	.thumb_func
StandingOnNewPacifidlogBridge:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	mov	sl, r8
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	mov	r9, r7
	lsl	r2, r2, #0x10
	asr	r6, r2, #0x10
	lsl	r3, r3, #0x10
	asr	r5, r3, #0x10
	add	r0, r6, #0
	add	r1, r5, #0
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L75	@cond_branch
	lsl	r0, r7, #0x10
	asr	r0, r0, #0x10
	cmp	r0, r5
	ble	.L77	@cond_branch
.L89:
	mov	r0, #0x0
	b	.L86
.L75:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L78	@cond_branch
	mov	r1, r9
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r0, r5
	bge	.L77	@cond_branch
	b	.L89
.L78:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L81	@cond_branch
	mov	r1, r8
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r0, r6
	ble	.L77	@cond_branch
	b	.L89
.L81:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L77	@cond_branch
	mov	r1, sl
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r0, r6
	blt	.L89	@cond_branch
.L77:
	mov	r0, #0x1
.L86:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 StandingOnNewPacifidlogBridge,.Lfe14-StandingOnNewPacifidlogBridge
	.align	2, 0
	.type	 StandingOnSamePacifidlogBridge,function
	.thumb_func
StandingOnSamePacifidlogBridge:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r8, r2
	mov	sl, r8
	lsl	r3, r3, #0x10
	lsr	r7, r3, #0x10
	mov	r9, r7
	lsl	r0, r0, #0x10
	asr	r6, r0, #0x10
	lsl	r1, r1, #0x10
	asr	r5, r1, #0x10
	add	r0, r6, #0
	add	r1, r5, #0
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L91	@cond_branch
	lsl	r0, r7, #0x10
	asr	r0, r0, #0x10
	cmp	r5, r0
	bge	.L93	@cond_branch
.L105:
	mov	r0, #0x0
	b	.L102
.L91:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogVerticalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L94	@cond_branch
	mov	r1, r9
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r5, r0
	ble	.L93	@cond_branch
	b	.L105
.L94:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog1
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L97	@cond_branch
	mov	r1, r8
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r6, r0
	bge	.L93	@cond_branch
	b	.L105
.L97:
	add	r0, r4, #0
	bl	MetatileBehavior_IsPacifidlogHorizontalLog2
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L93	@cond_branch
	mov	r1, sl
	lsl	r0, r1, #0x10
	asr	r0, r0, #0x10
	cmp	r6, r0
	bgt	.L105	@cond_branch
.L93:
	mov	r0, #0x1
.L102:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 StandingOnSamePacifidlogBridge,.Lfe15-StandingOnSamePacifidlogBridge
	.align	2, 0
	.type	 PacifidlogBridgePerStepCallback,function
	.thumb_func
PacifidlogBridgePerStepCallback:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L122
	add	r4, r1, r0
	mov	r5, sp
	add	r5, r5, #0x2
	mov	r0, sp
	add	r1, r5, #0
	bl	PlayerGetDestCoords
	mov	r1, #0x2
	ldrsh	r0, [r4, r1]
	add	r6, r5, #0
	cmp	r0, #0x1
	beq	.L109	@cond_branch
	cmp	r0, #0x1
	bgt	.L121	@cond_branch
	cmp	r0, #0
	beq	.L108	@cond_branch
	b	.L107
.L123:
	.align	2, 0
.L122:
	.word	gTasks+0x8
.L121:
	cmp	r0, #0x2
	beq	.L116	@cond_branch
	b	.L107
.L108:
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r4, #0x4]
	ldrh	r0, [r5]
	strh	r0, [r4, #0x6]
	mov	r0, sp
	mov	r2, #0x0
	ldrsh	r0, [r0, r2]
	mov	r3, #0x0
	ldrsh	r1, [r5, r3]
	mov	r2, #0x1
	bl	UpdateFullySubmergedBridgeMetatiles
	b	.L118
.L109:
	mov	r0, sp
	mov	r7, #0x0
	ldrsh	r1, [r0, r7]
	mov	r2, #0x4
	ldrsh	r0, [r4, r2]
	cmp	r1, r0
	bne	.L111	@cond_branch
	mov	r3, #0x0
	ldrsh	r1, [r5, r3]
	mov	r7, #0x6
	ldrsh	r0, [r4, r7]
	cmp	r1, r0
	beq	.L107	@cond_branch
.L111:
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	mov	r3, #0x4
	ldrsh	r2, [r4, r3]
	mov	r5, #0x6
	ldrsh	r3, [r4, r5]
	bl	StandingOnNewPacifidlogBridge
	cmp	r0, #0
	beq	.L112	@cond_branch
	mov	r7, #0x4
	ldrsh	r0, [r4, r7]
	mov	r2, #0x6
	ldrsh	r1, [r4, r2]
	mov	r2, #0x1
	bl	UpdateHalfSubmergedBridgeMetatiles
	mov	r3, #0x4
	ldrsh	r0, [r4, r3]
	mov	r5, #0x6
	ldrsh	r1, [r4, r5]
	mov	r2, #0x0
	bl	UpdateFloatingBridgeMetatiles
	ldrh	r0, [r4, #0x4]
	strh	r0, [r4, #0x8]
	ldrh	r0, [r4, #0x6]
	strh	r0, [r4, #0xa]
	mov	r0, #0x2
	strh	r0, [r4, #0x2]
	mov	r0, #0x8
	strh	r0, [r4, #0xc]
	b	.L113
.L112:
	mov	r7, #0x1
	neg	r7, r7
	add	r0, r7, #0
	strh	r0, [r4, #0x8]
	strh	r0, [r4, #0xa]
.L113:
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	add	r5, r6, #0
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	mov	r3, #0x4
	ldrsh	r2, [r4, r3]
	mov	r7, #0x6
	ldrsh	r3, [r4, r7]
	bl	StandingOnSamePacifidlogBridge
	cmp	r0, #0
	beq	.L114	@cond_branch
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	mov	r2, #0x1
	bl	UpdateHalfSubmergedBridgeMetatiles
	mov	r0, #0x2
	strh	r0, [r4, #0x2]
	mov	r0, #0x8
	strh	r0, [r4, #0xc]
.L114:
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r4, #0x4]
	ldrh	r0, [r6]
	strh	r0, [r4, #0x6]
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r5, #0x0
	ldrsh	r1, [r6, r5]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsPacifidlogLog
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L107	@cond_branch
	mov	r0, #0x46
	bl	PlaySE
	b	.L107
.L116:
	ldrh	r0, [r4, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r4, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L107	@cond_branch
	mov	r0, sp
	mov	r7, #0x0
	ldrsh	r0, [r0, r7]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	mov	r2, #0x1
	bl	UpdateFullySubmergedBridgeMetatiles
	mov	r3, #0x8
	ldrsh	r0, [r4, r3]
	mov	r1, #0x1
	neg	r1, r1
	cmp	r0, r1
	beq	.L118	@cond_branch
	mov	r5, #0xa
	ldrsh	r0, [r4, r5]
	cmp	r0, r1
	beq	.L118	@cond_branch
	mov	r7, #0x8
	ldrsh	r0, [r4, r7]
	mov	r2, #0xa
	ldrsh	r1, [r4, r2]
	mov	r2, #0x1
	bl	UpdateFloatingBridgeMetatiles
.L118:
	mov	r0, #0x1
	strh	r0, [r4, #0x2]
.L107:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 PacifidlogBridgePerStepCallback,.Lfe16-PacifidlogBridgePerStepCallback
	.align	2, 0
	.type	 SetLoweredForetreeBridgeMetatile,function
	.thumb_func
SetLoweredForetreeBridgeMetatile:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r5, r1, #0x10
	bl	PlayerGetZCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L125	@cond_branch
	lsl	r0, r4, #0x10
	asr	r4, r0, #0x10
	lsl	r0, r5, #0x10
	asr	r5, r0, #0x10
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridGetMetatileIdAt
	add	r1, r0, #0
	ldr	r0, .L131
	cmp	r1, r0
	beq	.L127	@cond_branch
	add	r0, r0, #0x8
	cmp	r1, r0
	beq	.L128	@cond_branch
	b	.L125
.L132:
	.align	2, 0
.L131:
	.word	0x24e
.L127:
	ldr	r2, .L133
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridSetMetatileIdAt
	b	.L125
.L134:
	.align	2, 0
.L133:
	.word	0x24f
.L128:
	ldr	r2, .L135
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridSetMetatileIdAt
.L125:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L136:
	.align	2, 0
.L135:
	.word	0x257
.Lfe17:
	.size	 SetLoweredForetreeBridgeMetatile,.Lfe17-SetLoweredForetreeBridgeMetatile
	.align	2, 0
	.type	 SetNormalFortreeBridgeMetatile,function
	.thumb_func
SetNormalFortreeBridgeMetatile:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r5, r1, #0x10
	bl	PlayerGetZCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L138	@cond_branch
	lsl	r0, r4, #0x10
	asr	r4, r0, #0x10
	lsl	r0, r5, #0x10
	asr	r5, r0, #0x10
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridGetMetatileIdAt
	add	r1, r0, #0
	ldr	r0, .L144
	cmp	r1, r0
	beq	.L140	@cond_branch
	add	r0, r0, #0x8
	cmp	r1, r0
	beq	.L141	@cond_branch
	b	.L138
.L145:
	.align	2, 0
.L144:
	.word	0x24f
.L140:
	ldr	r2, .L146
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridSetMetatileIdAt
	b	.L138
.L147:
	.align	2, 0
.L146:
	.word	0x24e
.L141:
	ldr	r2, .L148
	add	r0, r4, #0
	add	r1, r5, #0
	bl	MapGridSetMetatileIdAt
.L138:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L149:
	.align	2, 0
.L148:
	.word	0x256
.Lfe18:
	.size	 SetNormalFortreeBridgeMetatile,.Lfe18-SetNormalFortreeBridgeMetatile
	.align	2, 0
	.type	 FortreeBridgePerStepCallback,function
	.thumb_func
FortreeBridgePerStepCallback:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L178
	add	r6, r1, r0
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, #0x2
	ldrsh	r5, [r6, r0]
	mov	r9, r4
	cmp	r5, #0x1
	beq	.L155	@cond_branch
	cmp	r5, #0x1
	bgt	.L176	@cond_branch
	cmp	r5, #0
	beq	.L153	@cond_branch
	b	.L151
.L179:
	.align	2, 0
.L178:
	.word	gTasks+0x8
.L176:
	cmp	r5, #0x2
	bne	.LCB1228
	b	.L162	@long jump
.LCB1228:
	b	.L151
.L153:
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r6, #0x4]
	mov	r1, r9
	ldrh	r0, [r1]
	strh	r0, [r6, #0x6]
	mov	r0, sp
	mov	r2, #0x0
	ldrsh	r0, [r0, r2]
	mov	r3, #0x0
	ldrsh	r1, [r1, r3]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsFortreeBridge
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LCB1255
	b	.L177	@long jump
.LCB1255:
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, r9
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	bl	SetLoweredForetreeBridgeMetatile
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, r9
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	bl	CurrentMapDrawMetatileAt
	b	.L177
.L155:
	ldrh	r0, [r6, #0x6]
	mov	r8, r0
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	ldrh	r2, [r6, #0x4]
	mov	sl, r2
	mov	r3, #0x4
	ldrsh	r7, [r6, r3]
	cmp	r0, r7
	bne	.L156	@cond_branch
	mov	r0, r9
	mov	r2, #0x0
	ldrsh	r1, [r0, r2]
	mov	r3, r8
	lsl	r0, r3, #0x10
	asr	r0, r0, #0x10
	cmp	r1, r0
	bne	.LCB1295
	b	.L151	@long jump
.LCB1295:
.L156:
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, r9
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsFortreeBridge
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [sp, #0x4]
	mov	r0, r8
	lsl	r4, r0, #0x10
	asr	r1, r4, #0x10
	add	r0, r7, #0
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsFortreeBridge
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	bl	PlayerGetZCoord
	mov	r1, #0x0
	and	r5, r5, r0
	lsl	r0, r5, #0x18
	add	r5, r4, #0
	cmp	r0, #0
	bne	.L157	@cond_branch
	mov	r1, #0x1
.L157:
	cmp	r1, #0
	beq	.L158	@cond_branch
	ldr	r1, [sp, #0x4]
	cmp	r1, #0x1
	beq	.L159	@cond_branch
	cmp	r7, #0x1
	bne	.L158	@cond_branch
.L159:
	mov	r0, #0x47
	bl	PlaySE
.L158:
	cmp	r7, #0
	beq	.L160	@cond_branch
	mov	r2, sl
	lsl	r4, r2, #0x10
	asr	r4, r4, #0x10
	asr	r5, r5, #0x10
	add	r0, r4, #0
	add	r1, r5, #0
	bl	SetNormalFortreeBridgeMetatile
	add	r0, r4, #0
	add	r1, r5, #0
	bl	CurrentMapDrawMetatileAt
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, r9
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	bl	SetLoweredForetreeBridgeMetatile
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, r9
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	bl	CurrentMapDrawMetatileAt
.L160:
	mov	r0, sl
	strh	r0, [r6, #0x8]
	mov	r1, r8
	strh	r1, [r6, #0xa]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r6, #0x4]
	mov	r2, r9
	ldrh	r0, [r2]
	strh	r0, [r6, #0x6]
	cmp	r7, #0
	beq	.L151	@cond_branch
	mov	r0, #0x10
	strh	r0, [r6, #0xc]
	mov	r0, #0x2
	strh	r0, [r6, #0x2]
.L162:
	ldrh	r0, [r6, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r6, #0xc]
	ldrh	r3, [r6, #0x8]
	mov	sl, r3
	ldrh	r0, [r6, #0xa]
	mov	r8, r0
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	mov	r1, #0x7
	bl	__modsi3
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x7
	bhi	.L163	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L180
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L181:
	.align	2, 0
.L180:
	.word	.L172
	.align	2, 0
	.align	2, 0
.L172:
	.word	.L164
	.word	.L163
	.word	.L163
	.word	.L163
	.word	.L168
	.word	.L163
	.word	.L163
	.word	.L163
.L164:
	mov	r2, sl
	lsl	r0, r2, #0x10
	asr	r0, r0, #0x10
	mov	r3, r8
	lsl	r1, r3, #0x10
	asr	r1, r1, #0x10
	bl	CurrentMapDrawMetatileAt
	b	.L163
.L168:
	mov	r0, sl
	lsl	r5, r0, #0x10
	asr	r5, r5, #0x10
	mov	r1, r8
	lsl	r4, r1, #0x10
	asr	r4, r4, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	SetLoweredForetreeBridgeMetatile
	add	r0, r5, #0
	add	r1, r4, #0
	bl	CurrentMapDrawMetatileAt
	add	r0, r5, #0
	add	r1, r4, #0
	bl	SetNormalFortreeBridgeMetatile
.L163:
	mov	r2, #0xc
	ldrsh	r0, [r6, r2]
	cmp	r0, #0
	bne	.L151	@cond_branch
.L177:
	mov	r0, #0x1
	strh	r0, [r6, #0x2]
.L151:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe19:
	.size	 FortreeBridgePerStepCallback,.Lfe19-FortreeBridgePerStepCallback
	.align	2, 0
	.type	 CoordInIcePuzzleRegion,function
	.thumb_func
CoordInIcePuzzleRegion:
	push	{lr}
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r0, r0, #0x10
	ldr	r2, .L186
	add	r0, r0, r2
	lsr	r0, r0, #0x10
	cmp	r0, #0xa
	bhi	.L183	@cond_branch
	lsl	r0, r1, #0x10
	asr	r1, r0, #0x10
	ldr	r2, .L186+0x4
	add	r0, r0, r2
	lsr	r0, r0, #0x10
	cmp	r0, #0xd
	bhi	.L183	@cond_branch
	ldr	r0, .L186+0x8
	lsl	r1, r1, #0x1
	add	r1, r1, r0
	ldrh	r0, [r1]
	cmp	r0, #0
	beq	.L183	@cond_branch
	mov	r0, #0x1
	b	.L185
.L187:
	.align	2, 0
.L186:
	.word	-0x30000
	.word	-0x60000
	.word	sSootopolisGymIceRowVars
.L183:
	mov	r0, #0x0
.L185:
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 CoordInIcePuzzleRegion,.Lfe20-CoordInIcePuzzleRegion
	.align	2, 0
	.type	 MarkIcePuzzleCoordVisited,function
	.thumb_func
MarkIcePuzzleCoordVisited:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	asr	r5, r0, #0x10
	lsl	r1, r1, #0x10
	asr	r4, r1, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	CoordInIcePuzzleRegion
	cmp	r0, #0
	beq	.L189	@cond_branch
	ldr	r1, .L190
	lsl	r0, r4, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	bl	GetVarPointer
	sub	r2, r5, #0x3
	mov	r1, #0x1
	lsl	r1, r1, r2
	ldrh	r2, [r0]
	orr	r1, r1, r2
	strh	r1, [r0]
.L189:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L191:
	.align	2, 0
.L190:
	.word	sSootopolisGymIceRowVars
.Lfe21:
	.size	 MarkIcePuzzleCoordVisited,.Lfe21-MarkIcePuzzleCoordVisited
	.align	2, 0
	.type	 IsIcePuzzleCoordVisited,function
	.thumb_func
IsIcePuzzleCoordVisited:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	asr	r5, r0, #0x10
	lsl	r1, r1, #0x10
	asr	r4, r1, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	CoordInIcePuzzleRegion
	cmp	r0, #0
	beq	.L197	@cond_branch
	ldr	r1, .L198
	lsl	r0, r4, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	bl	VarGet
	lsl	r0, r0, #0x10
	sub	r2, r5, #0x3
	mov	r1, #0x80
	lsl	r1, r1, #0x9
	lsl	r1, r1, r2
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L194	@cond_branch
.L197:
	mov	r0, #0x0
	b	.L196
.L199:
	.align	2, 0
.L198:
	.word	sSootopolisGymIceRowVars
.L194:
	mov	r0, #0x1
.L196:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe22:
	.size	 IsIcePuzzleCoordVisited,.Lfe22-IsIcePuzzleCoordVisited
	.align	2, 0
	.globl	SetSootopolisGymCrackedIceMetatiles
	.type	 SetSootopolisGymCrackedIceMetatiles,function
	.thumb_func
SetSootopolisGymCrackedIceMetatiles:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L212
	ldr	r0, [r0]
	ldr	r1, [r0]
	mov	r9, r1
	ldr	r7, [r0, #0x4]
	mov	r5, #0x0
	cmp	r5, r9
	bge	.L202	@cond_branch
.L204:
	mov	r4, #0x0
	add	r0, r5, #0x1
	mov	r8, r0
	cmp	r4, r7
	bge	.L203	@cond_branch
	lsl	r6, r5, #0x10
.L208:
	lsl	r1, r4, #0x10
	asr	r1, r1, #0x10
	asr	r0, r6, #0x10
	bl	IsIcePuzzleCoordVisited
	cmp	r0, #0x1
	bne	.L207	@cond_branch
	add	r1, r4, #0x7
	add	r0, r5, #0x7
	ldr	r2, .L212+0x4
	bl	MapGridSetMetatileIdAt
.L207:
	add	r4, r4, #0x1
	cmp	r4, r7
	blt	.L208	@cond_branch
.L203:
	mov	r5, r8
	cmp	r5, r9
	blt	.L204	@cond_branch
.L202:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L213:
	.align	2, 0
.L212:
	.word	gMapHeader
	.word	0x20e
.Lfe23:
	.size	 SetSootopolisGymCrackedIceMetatiles,.Lfe23-SetSootopolisGymCrackedIceMetatiles
	.align	2, 0
	.type	 SootopolisGymIcePerStepCallback,function
	.thumb_func
SootopolisGymIcePerStepCallback:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L235
	add	r5, r1, r0
	mov	r1, #0x2
	ldrsh	r0, [r5, r1]
	cmp	r0, #0x1
	beq	.L217	@cond_branch
	cmp	r0, #0x1
	bgt	.L231	@cond_branch
	cmp	r0, #0
	beq	.L216	@cond_branch
	b	.L215
.L236:
	.align	2, 0
.L235:
	.word	gTasks+0x8
.L231:
	cmp	r0, #0x2
	beq	.L223	@cond_branch
	cmp	r0, #0x3
	bne	.LCB1743
	b	.L226	@long jump
.LCB1743:
	b	.L215
.L216:
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r5, #0x4]
	ldrh	r0, [r4]
	strh	r0, [r5, #0x6]
	b	.L232
.L217:
	mov	r7, sp
	add	r7, r7, #0x2
	mov	r0, sp
	add	r1, r7, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	ldrh	r2, [r0]
	mov	r3, #0x0
	ldrsh	r1, [r0, r3]
	mov	r3, #0x4
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bne	.L219	@cond_branch
	mov	r0, #0x0
	ldrsh	r1, [r7, r0]
	mov	r3, #0x6
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bne	.LCB1783
	b	.L215	@long jump
.LCB1783:
.L219:
	strh	r2, [r5, #0x4]
	ldrh	r0, [r7]
	strh	r0, [r5, #0x6]
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r7, r2]
	bl	MapGridGetMetatileBehaviorAt
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	ldr	r0, .L237
	bl	GetVarPointer
	add	r6, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	add	r0, r4, #0
	bl	MetatileBehavior_IsThinIce
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L220	@cond_branch
	ldrh	r0, [r6]
	add	r0, r0, #0x1
	strh	r0, [r6]
	mov	r0, #0x4
	strh	r0, [r5, #0xc]
	mov	r0, #0x2
	b	.L233
.L238:
	.align	2, 0
.L237:
	.word	0x4022
.L220:
	add	r0, r4, #0
	bl	MetatileBehavior_IsCrackedIce
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L215	@cond_branch
	mov	r0, #0x0
	strh	r0, [r6]
	mov	r0, #0x4
	strh	r0, [r5, #0xc]
	mov	r0, #0x3
.L233:
	strh	r0, [r5, #0x2]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r5, #0x8]
	ldrh	r0, [r7]
	strh	r0, [r5, #0xa]
	b	.L215
.L223:
	ldrh	r1, [r5, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	bne	.L234	@cond_branch
	mov	r1, sp
	ldrh	r0, [r5, #0x8]
	strh	r0, [r1]
	mov	r4, sp
	add	r4, r4, #0x2
	ldrh	r0, [r5, #0xa]
	strh	r0, [r4]
	mov	r0, #0x2a
	bl	PlaySE
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	ldr	r2, .L239
	bl	MapGridSetMetatileIdAt
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	CurrentMapDrawMetatileAt
	mov	r0, sp
	ldrh	r0, [r0]
	sub	r0, r0, #0x7
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	ldrh	r1, [r4]
	sub	r1, r1, #0x7
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	MarkIcePuzzleCoordVisited
	b	.L232
.L240:
	.align	2, 0
.L239:
	.word	0x20e
.L226:
	ldrh	r1, [r5, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	beq	.L227	@cond_branch
.L234:
	sub	r0, r1, #0x1
	strh	r0, [r5, #0xc]
	b	.L215
.L227:
	mov	r1, sp
	ldrh	r0, [r5, #0x8]
	strh	r0, [r1]
	mov	r4, sp
	add	r4, r4, #0x2
	ldrh	r0, [r5, #0xa]
	strh	r0, [r4]
	mov	r0, #0x29
	bl	PlaySE
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	ldr	r2, .L241
	bl	MapGridSetMetatileIdAt
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	CurrentMapDrawMetatileAt
.L232:
	mov	r0, #0x1
	strh	r0, [r5, #0x2]
.L215:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L242:
	.align	2, 0
.L241:
	.word	0x206
.Lfe24:
	.size	 SootopolisGymIcePerStepCallback,.Lfe24-SootopolisGymIcePerStepCallback
	.align	2, 0
	.type	 AshGrassPerStepCallback,function
	.thumb_func
AshGrassPerStepCallback:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L251
	add	r5, r1, r0
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	ldrh	r2, [r0]
	mov	r3, #0x0
	ldrsh	r1, [r0, r3]
	mov	r3, #0x2
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bne	.L245	@cond_branch
	mov	r0, #0x0
	ldrsh	r1, [r4, r0]
	mov	r3, #0x4
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	beq	.L244	@cond_branch
.L245:
	strh	r2, [r5, #0x2]
	ldrh	r0, [r4]
	strh	r0, [r5, #0x4]
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsAshGrass
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L244	@cond_branch
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	MapGridGetMetatileIdAt
	ldr	r1, .L251+0x4
	cmp	r0, r1
	bne	.L247	@cond_branch
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	ldr	r2, .L251+0x8
	mov	r3, #0x4
	bl	StartAshFieldEffect
	b	.L248
.L252:
	.align	2, 0
.L251:
	.word	gTasks+0x8
	.word	0x20a
	.word	0x212
.L247:
	mov	r0, sp
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	ldr	r2, .L253
	mov	r3, #0x4
	bl	StartAshFieldEffect
.L248:
	ldr	r0, .L253+0x4
	mov	r1, #0x1
	bl	CheckBagHasItem
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L244	@cond_branch
	ldr	r0, .L253+0x8
	bl	GetVarPointer
	add	r2, r0, #0
	ldrh	r1, [r2]
	ldr	r0, .L253+0xc
	cmp	r1, r0
	bhi	.L244	@cond_branch
	add	r0, r1, #0x1
	strh	r0, [r2]
.L244:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L254:
	.align	2, 0
.L253:
	.word	0x206
	.word	0x1d1
	.word	0x4048
	.word	0x270e
.Lfe25:
	.size	 AshGrassPerStepCallback,.Lfe25-AshGrassPerStepCallback
	.align	2, 0
	.type	 SetCrackedFloorHoleMetatile,function
	.thumb_func
SetCrackedFloorHoleMetatile:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	asr	r5, r0, #0x10
	lsl	r1, r1, #0x10
	asr	r4, r1, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	MapGridGetMetatileIdAt
	ldr	r1, .L258
	ldr	r2, .L258+0x4
	cmp	r0, r1
	bne	.L256	@cond_branch
	sub	r2, r2, #0x31
.L256:
	add	r0, r5, #0
	add	r1, r4, #0
	bl	MapGridSetMetatileIdAt
	add	r0, r5, #0
	add	r1, r4, #0
	bl	CurrentMapDrawMetatileAt
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L259:
	.align	2, 0
.L258:
	.word	0x22f
	.word	0x237
.Lfe26:
	.size	 SetCrackedFloorHoleMetatile,.Lfe26-SetCrackedFloorHoleMetatile
	.align	2, 0
	.type	 CrackedFloorPerStepCallback,function
	.thumb_func
CrackedFloorPerStepCallback:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L271
	add	r5, r1, r0
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	ldrh	r1, [r5, #0x8]
	mov	r3, #0x8
	ldrsh	r0, [r5, r3]
	add	r7, r4, #0
	cmp	r0, #0
	beq	.L261	@cond_branch
	sub	r0, r1, #0x1
	strh	r0, [r5, #0x8]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L261	@cond_branch
	mov	r1, #0xa
	ldrsh	r0, [r5, r1]
	mov	r2, #0xc
	ldrsh	r1, [r5, r2]
	bl	SetCrackedFloorHoleMetatile
.L261:
	ldrh	r1, [r5, #0xe]
	mov	r3, #0xe
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	beq	.L262	@cond_branch
	sub	r0, r1, #0x1
	strh	r0, [r5, #0xe]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L262	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r5, r1]
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	bl	SetCrackedFloorHoleMetatile
.L262:
	lsl	r0, r6, #0x18
	lsr	r6, r0, #0x18
	add	r0, r6, #0
	bl	MetatileBehavior_IsCrackedFloorHole
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L263	@cond_branch
	ldr	r0, .L271+0x4
	mov	r1, #0x0
	bl	VarSet
.L263:
	mov	r0, sp
	ldrh	r2, [r0]
	mov	r3, #0x0
	ldrsh	r1, [r0, r3]
	mov	r3, #0x4
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bne	.L265	@cond_branch
	mov	r0, #0x0
	ldrsh	r1, [r7, r0]
	mov	r3, #0x6
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	beq	.L264	@cond_branch
.L265:
	strh	r2, [r5, #0x4]
	add	r4, r7, #0
	ldrh	r0, [r4]
	strh	r0, [r5, #0x6]
	add	r0, r6, #0
	bl	MetatileBehavior_IsCrackedFloor
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L264	@cond_branch
	bl	GetPlayerSpeed
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x4
	beq	.L267	@cond_branch
	ldr	r0, .L271+0x4
	mov	r1, #0x0
	bl	VarSet
.L267:
	mov	r1, #0x8
	ldrsh	r0, [r5, r1]
	cmp	r0, #0
	bne	.L268	@cond_branch
	mov	r0, #0x3
	strh	r0, [r5, #0x8]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r5, #0xa]
	ldrh	r0, [r4]
	strh	r0, [r5, #0xc]
	b	.L264
.L272:
	.align	2, 0
.L271:
	.word	gTasks+0x8
	.word	0x4022
.L268:
	mov	r2, #0xe
	ldrsh	r0, [r5, r2]
	cmp	r0, #0
	bne	.L264	@cond_branch
	mov	r0, #0x3
	strh	r0, [r5, #0xe]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r5, #0x10]
	ldrh	r0, [r7]
	strh	r0, [r5, #0x12]
.L264:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe27:
	.size	 CrackedFloorPerStepCallback,.Lfe27-CrackedFloorPerStepCallback
	.align	2, 0
	.type	 SetMuddySlopeMetatile,function
	.thumb_func
SetMuddySlopeMetatile:
	push	{r4, r5, lr}
	add	r3, r0, #0
	lsl	r1, r1, #0x10
	lsr	r5, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r4, r2, #0x10
	ldrh	r0, [r3]
	sub	r0, r0, #0x1
	strh	r0, [r3]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L274	@cond_branch
	mov	r2, #0xe8
	b	.L275
.L274:
	ldr	r1, .L277
	mov	r2, #0x0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	bge	.L276	@cond_branch
	add	r0, r0, #0x7
.L276:
	asr	r0, r0, #0x3
	lsl	r0, r0, #0x1
	add	r0, r0, r1
	ldrh	r2, [r0]
.L275:
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	MapGridSetMetatileIdAt
	add	r0, r5, #0
	add	r1, r4, #0
	bl	CurrentMapDrawMetatileAt
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #0xe8
	bl	MapGridSetMetatileIdAt
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L278:
	.align	2, 0
.L277:
	.word	sMuddySlopeMetatiles
.Lfe28:
	.size	 SetMuddySlopeMetatile,.Lfe28-SetMuddySlopeMetatile
	.align	2, 0
	.type	 Task_MuddySlope,function
	.thumb_func
Task_MuddySlope:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L303
	add	r4, r1, r0
	mov	r5, sp
	add	r5, r5, #0x2
	mov	r0, sp
	add	r1, r5, #0
	bl	PlayerGetDestCoords
	ldr	r0, .L303+0x4
	ldr	r0, [r0]
	mov	r1, #0x4
	ldrsb	r1, [r0, r1]
	lsl	r1, r1, #0x8
	ldrb	r0, [r0, #0x5]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	orr	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r7, r0, #0x10
	mov	r0, #0x2
	ldrsh	r1, [r4, r0]
	mov	r8, r5
	cmp	r1, #0
	beq	.L281	@cond_branch
	cmp	r1, #0x1
	beq	.L282	@cond_branch
	b	.L280
.L304:
	.align	2, 0
.L303:
	.word	gTasks+0x8
	.word	gSaveBlock1Ptr
.L281:
	strh	r7, [r4]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r4, #0x4]
	ldrh	r0, [r5]
	strh	r0, [r4, #0x6]
	mov	r0, #0x1
	strh	r0, [r4, #0x2]
	strh	r1, [r4, #0x8]
	strh	r1, [r4, #0xe]
	strh	r1, [r4, #0x14]
	strh	r1, [r4, #0x1a]
	b	.L280
.L302:
	mov	r0, #0x20
	strh	r0, [r1]
	mov	r0, sp
	ldrh	r0, [r0]
	strh	r0, [r1, #0x2]
	mov	r2, r8
	ldrh	r0, [r2]
	strh	r0, [r1, #0x4]
	b	.L280
.L282:
	mov	r0, sp
	mov	r3, #0x4
	ldrsh	r1, [r4, r3]
	ldrh	r2, [r0]
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp	r1, r0
	bne	.L284	@cond_branch
	mov	r0, #0x6
	ldrsh	r1, [r4, r0]
	mov	r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	beq	.L280	@cond_branch
.L284:
	strh	r2, [r4, #0x4]
	ldrh	r0, [r5]
	strh	r0, [r4, #0x6]
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsMuddySlope
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L280	@cond_branch
	mov	r6, #0x4
	add	r1, r4, #0
	add	r1, r1, #0x8
.L289:
	mov	r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L302	@cond_branch
	add	r1, r1, #0x6
	add	r6, r6, #0x3
	cmp	r6, #0xd
	ble	.L289	@cond_branch
.L280:
	ldr	r2, .L305
	ldrb	r1, [r2]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L294	@cond_branch
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp	r7, r0
	beq	.L294	@cond_branch
	strh	r7, [r4]
	ldrh	r0, [r2, #0x4]
	ldrh	r1, [r2, #0x8]
	b	.L295
.L306:
	.align	2, 0
.L305:
	.word	gCamera
.L294:
	mov	r0, #0x0
	mov	r1, #0x0
.L295:
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r8, r0
	lsl	r0, r1, #0x10
	asr	r7, r0, #0x10
	add	r5, r4, #0
	add	r5, r5, #0x8
	add	r4, r5, #0
	mov	r6, #0x9
.L299:
	mov	r2, #0x0
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	beq	.L298	@cond_branch
	ldrh	r0, [r4, #0x2]
	mov	r3, r8
	sub	r0, r0, r3
	strh	r0, [r4, #0x2]
	ldrh	r0, [r4, #0x4]
	sub	r0, r0, r7
	strh	r0, [r4, #0x4]
	mov	r0, #0x2
	ldrsh	r1, [r4, r0]
	mov	r3, #0x4
	ldrsh	r2, [r4, r3]
	add	r0, r5, #0
	bl	SetMuddySlopeMetatile
.L298:
	add	r4, r4, #0x6
	add	r5, r5, #0x6
	sub	r6, r6, #0x3
	cmp	r6, #0
	bge	.L299	@cond_branch
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe29:
	.size	 Task_MuddySlope,.Lfe29-Task_MuddySlope
.text
	.align	2, 0

