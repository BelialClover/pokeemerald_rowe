@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gGameVersion
	.section .rodata
	.type	 gGameVersion,object
	.size	 gGameVersion,1
gGameVersion:
	.byte	0x3
	.globl	gGameLanguage
	.type	 gGameLanguage,object
	.size	 gGameLanguage,1
gGameLanguage:
	.byte	0x2
	.globl	BuildDateTime
	.align	2, 0
	.type	 BuildDateTime,object
	.size	 BuildDateTime,17
BuildDateTime:
	.ascii	"2005 02 21 11:10\000"
	.globl	gIntrTableTemplate
	.align	2, 0
	.type	 gIntrTableTemplate,object
gIntrTableTemplate:
	.word	VCountIntr
	.word	SerialIntr
	.word	Timer3Intr
	.word	HBlankIntr
	.word	VBlankIntr
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.word	IntrDummy
	.size	 gIntrTableTemplate,56
	.section ewram_data,"aw"
	.align	1, 0
	.type	 gTrainerId,object
	.size	 gTrainerId,2
gTrainerId:
	.short	0x0
.text
	.align	2, 0
	.globl	AgbMain
	.type	 AgbMain,function
	.thumb_func
AgbMain:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xff
	bl	RegisterRamReset
	mov	r1, #0xa0
	lsl	r1, r1, #0x13
	ldr	r2, .L10
	add	r0, r2, #0
	strh	r0, [r1]
	bl	InitGpuRegManager
	ldr	r1, .L10+0x4
	ldr	r3, .L10+0x8
	add	r0, r3, #0
	strh	r0, [r1]
	bl	InitKeys
	bl	InitIntrHandlers
	bl	m4aSoundInit
	bl	EnableVCountIntrAtLine150
	bl	InitRFU
	bl	RtcInit
	bl	CheckForFlashMemory
	bl	InitMainCallbacks
	bl	InitMapMusic
	bl	SeedRngWithRtc
	bl	ClearDma3Requests
	bl	ResetBgs
	bl	SetDefaultFontsPointer
	bl	mgba_open
	ldr	r0, .L10+0xc
	mov	r1, #0xe0
	lsl	r1, r1, #0x9
	bl	InitHeap
	ldr	r0, .L10+0x10
	mov	r1, #0x0
	strb	r1, [r0]
	ldr	r2, .L10+0x14
	strb	r1, [r2]
	ldr	r1, .L10+0x18
	mov	r3, #0xfc
	lsl	r3, r3, #0x4
	add	r0, r3, #0
	strh	r0, [r1]
	ldr	r7, .L10+0x1c
	mov	r0, #0x0
	mov	r8, r0
	add	r6, r2, #0
.L3:
	bl	ReadKeys
	ldr	r0, .L10+0x10
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L6	@cond_branch
	ldrh	r1, [r7, #0x28]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L6	@cond_branch
	mov	r0, #0xe
	and	r0, r0, r1
	cmp	r0, #0xe
	bne	.L6	@cond_branch
	bl	rfu_REQ_stopMode
	bl	rfu_waitREQComplete
	bl	DoSoftReset
.L6:
	bl	sub_8087634
	cmp	r0, #0x1
	bne	.L7	@cond_branch
	strb	r0, [r6]
	bl	UpdateLinkAndCallCallbacks
	mov	r0, #0x0
	strb	r0, [r6]
	b	.L8
.L11:
	.align	2, 0
.L10:
	.word	0x7fff
	.word	0x4000204
	.word	0x4014
	.word	gHeap
	.word	gSoftResetDisabled
	.word	gLinkTransferringData
	.word	gUnknown_03000000
	.word	gMain
.L7:
	ldr	r5, .L12
	mov	r0, #0x0
	strb	r0, [r5]
	bl	UpdateLinkAndCallCallbacks
	bl	sub_80875C8
	add	r4, r0, #0
	cmp	r4, #0x1
	bne	.L8	@cond_branch
	mov	r0, #0x0
	strh	r0, [r7, #0x2e]
	bl	ClearSpriteCopyRequests
	strb	r4, [r5]
	bl	UpdateLinkAndCallCallbacks
	mov	r2, r8
	strb	r2, [r5]
.L8:
	bl	PlayTimeCounter_Update
	bl	MapMusicMain
	bl	WaitForVBlank
	b	.L3
.L13:
	.align	2, 0
.L12:
	.word	gLinkTransferringData
.Lfe1:
	.size	 AgbMain,.Lfe1-AgbMain
	.align	2, 0
	.type	 UpdateLinkAndCallCallbacks,function
	.thumb_func
UpdateLinkAndCallCallbacks:
	push	{lr}
	bl	HandleLinkConnection
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L15	@cond_branch
	bl	CallCallbacks
.L15:
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 UpdateLinkAndCallCallbacks,.Lfe2-UpdateLinkAndCallCallbacks
	.align	2, 0
	.type	 InitMainCallbacks,function
	.thumb_func
InitMainCallbacks:
	push	{lr}
	ldr	r2, .L17
	mov	r0, #0x0
	str	r0, [r2, #0x20]
	ldr	r1, .L17+0x4
	str	r0, [r1]
	str	r0, [r2, #0x24]
	str	r0, [r2]
	ldr	r0, .L17+0x8
	bl	SetMainCallback2
	ldr	r1, .L17+0xc
	ldr	r0, .L17+0x10
	str	r0, [r1]
	ldr	r1, .L17+0x14
	ldr	r0, .L17+0x18
	str	r0, [r1]
	pop	{r0}
	bx	r0
.L18:
	.align	2, 0
.L17:
	.word	gMain
	.word	gTrainerHillVBlankCounter
	.word	CB2_InitCopyrightScreenAfterBootup
	.word	gSaveBlock2Ptr
	.word	gSaveblock2
	.word	gPokemonStoragePtr
	.word	gPokemonStorage
.Lfe3:
	.size	 InitMainCallbacks,.Lfe3-InitMainCallbacks
	.align	2, 0
	.type	 CallCallbacks,function
	.thumb_func
CallCallbacks:
	push	{r4, lr}
	ldr	r4, .L22
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L20	@cond_branch
	bl	_call_via_r0
.L20:
	ldr	r0, [r4, #0x4]
	cmp	r0, #0
	beq	.L21	@cond_branch
	bl	_call_via_r0
.L21:
	pop	{r4}
	pop	{r0}
	bx	r0
.L23:
	.align	2, 0
.L22:
	.word	gMain
.Lfe4:
	.size	 CallCallbacks,.Lfe4-CallCallbacks
	.align	2, 0
	.globl	SetMainCallback2
	.type	 SetMainCallback2,function
	.thumb_func
SetMainCallback2:
	ldr	r1, .L25
	str	r0, [r1, #0x4]
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	mov	r0, #0x0
	strb	r0, [r1]
	bx	lr
.L26:
	.align	2, 0
.L25:
	.word	gMain
.Lfe5:
	.size	 SetMainCallback2,.Lfe5-SetMainCallback2
	.align	2, 0
	.globl	StartTimer1
	.type	 StartTimer1,function
	.thumb_func
StartTimer1:
	ldr	r1, .L28
	mov	r0, #0x80
	strh	r0, [r1]
	bx	lr
.L29:
	.align	2, 0
.L28:
	.word	0x4000106
.Lfe6:
	.size	 StartTimer1,.Lfe6-StartTimer1
	.align	2, 0
	.globl	SeedRngAndSetTrainerId
	.type	 SeedRngAndSetTrainerId,function
	.thumb_func
SeedRngAndSetTrainerId:
	push	{r4, lr}
	ldr	r0, .L31
	ldrh	r4, [r0]
	add	r0, r4, #0
	bl	SeedRng
	ldr	r1, .L31+0x4
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r0, .L31+0x8
	strh	r4, [r0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	0x4000104
	.word	0x4000106
	.word	gTrainerId
.Lfe7:
	.size	 SeedRngAndSetTrainerId,.Lfe7-SeedRngAndSetTrainerId
	.align	2, 0
	.globl	GetGeneratedTrainerIdLower
	.type	 GetGeneratedTrainerIdLower,function
	.thumb_func
GetGeneratedTrainerIdLower:
	ldr	r0, .L34
	ldrh	r0, [r0]
	bx	lr
.L35:
	.align	2, 0
.L34:
	.word	gTrainerId
.Lfe8:
	.size	 GetGeneratedTrainerIdLower,.Lfe8-GetGeneratedTrainerIdLower
	.align	2, 0
	.globl	EnableVCountIntrAtLine150
	.type	 EnableVCountIntrAtLine150,function
	.thumb_func
EnableVCountIntrAtLine150:
	push	{lr}
	mov	r0, #0x4
	bl	GetGpuReg
	mov	r1, #0xff
	and	r1, r1, r0
	mov	r2, #0x96
	lsl	r2, r2, #0x8
	add	r0, r2, #0
	orr	r1, r1, r0
	mov	r0, #0x20
	orr	r1, r1, r0
	mov	r0, #0x4
	bl	SetGpuReg
	mov	r0, #0x4
	bl	EnableInterrupts
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 EnableVCountIntrAtLine150,.Lfe9-EnableVCountIntrAtLine150
	.align	2, 0
	.type	 SeedRngWithRtc,function
	.thumb_func
SeedRngWithRtc:
	push	{lr}
	bl	RtcGetMinuteCount
	add	r2, r0, #0
	lsr	r0, r2, #0x10
	ldr	r1, .L38
	and	r1, r1, r2
	eor	r0, r0, r1
	bl	SeedRng
	pop	{r0}
	bx	r0
.L39:
	.align	2, 0
.L38:
	.word	0xffff
.Lfe10:
	.size	 SeedRngWithRtc,.Lfe10-SeedRngWithRtc
	.align	2, 0
	.globl	InitKeys
	.type	 InitKeys,function
	.thumb_func
InitKeys:
	ldr	r1, .L41
	mov	r0, #0x5
	strh	r0, [r1]
	ldr	r1, .L41+0x4
	mov	r0, #0x28
	strh	r0, [r1]
	ldr	r1, .L41+0x8
	mov	r0, #0x0
	strh	r0, [r1, #0x2c]
	strh	r0, [r1, #0x2e]
	strh	r0, [r1, #0x30]
	strh	r0, [r1, #0x28]
	strh	r0, [r1, #0x2a]
	bx	lr
.L42:
	.align	2, 0
.L41:
	.word	gKeyRepeatContinueDelay
	.word	gKeyRepeatStartDelay
	.word	gMain
.Lfe11:
	.size	 InitKeys,.Lfe11-InitKeys
	.align	2, 0
	.type	 ReadKeys,function
	.thumb_func
ReadKeys:
	push	{lr}
	ldr	r0, .L52
	ldrh	r1, [r0]
	ldr	r2, .L52+0x4
	add	r0, r2, #0
	add	r3, r0, #0
	eor	r3, r3, r1
	ldr	r1, .L52+0x8
	ldrh	r2, [r1, #0x28]
	add	r0, r3, #0
	bic	r0, r0, r2
	strh	r0, [r1, #0x2a]
	strh	r0, [r1, #0x2e]
	strh	r0, [r1, #0x30]
	add	r2, r1, #0
	cmp	r3, #0
	beq	.L44	@cond_branch
	ldrh	r0, [r2, #0x2c]
	cmp	r0, r3
	bne	.L44	@cond_branch
	ldrh	r0, [r2, #0x32]
	sub	r0, r0, #0x1
	strh	r0, [r2, #0x32]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L46	@cond_branch
	strh	r3, [r2, #0x30]
	ldr	r0, .L52+0xc
	b	.L51
.L53:
	.align	2, 0
.L52:
	.word	0x4000130
	.word	0x3ff
	.word	gMain
	.word	gKeyRepeatContinueDelay
.L44:
	ldr	r0, .L54
.L51:
	ldrh	r0, [r0]
	strh	r0, [r2, #0x32]
.L46:
	strh	r3, [r2, #0x28]
	strh	r3, [r2, #0x2c]
	ldr	r0, .L54+0x4
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x13]
	cmp	r0, #0x2
	bne	.L47	@cond_branch
	ldrh	r1, [r2, #0x2e]
	mov	r3, #0x80
	lsl	r3, r3, #0x2
	add	r0, r3, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L48	@cond_branch
	mov	r0, #0x1
	orr	r0, r0, r1
	strh	r0, [r2, #0x2e]
.L48:
	ldrh	r1, [r2, #0x2c]
	add	r0, r3, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L47	@cond_branch
	mov	r0, #0x1
	orr	r0, r0, r1
	strh	r0, [r2, #0x2c]
.L47:
	ldrh	r1, [r2, #0x2e]
	ldrh	r0, [r2, #0x36]
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L50	@cond_branch
	mov	r0, #0x1
	strh	r0, [r2, #0x34]
.L50:
	pop	{r0}
	bx	r0
.L55:
	.align	2, 0
.L54:
	.word	gKeyRepeatStartDelay
	.word	gSaveBlock2Ptr
.Lfe12:
	.size	 ReadKeys,.Lfe12-ReadKeys
	.align	2, 0
	.globl	InitIntrHandlers
	.type	 InitIntrHandlers,function
	.thumb_func
InitIntrHandlers:
	push	{r4, r5, lr}
	ldr	r5, .L62
	ldr	r4, .L62+0x4
	ldr	r3, .L62+0x8
	ldr	r2, .L62+0xc
	mov	r1, #0xd
.L60:
	ldmia	r3!, {r0}
	stmia	r2!, {r0}
	sub	r1, r1, #0x1
	cmp	r1, #0
	bge	.L60	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	ldr	r2, .L62+0x10
	ldr	r3, .L62+0x14
	stmia r3!, {r0, r1, r2}
	.code	16
	ldr	r0, .L62+0x18
	str	r4, [r0]
	mov	r0, #0x0
	bl	SetVBlankCallback
	mov	r0, #0x0
	bl	SetHBlankCallback
	mov	r0, #0x0
	bl	SetSerialCallback
	ldr	r1, .L62+0x1c
	mov	r0, #0x1
	strh	r0, [r1]
	mov	r0, #0x1
	bl	EnableInterrupts
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L63:
	.align	2, 0
.L62:
	.word	IntrMain
	.word	IntrMain_Buffer
	.word	gIntrTableTemplate
	.word	gIntrTable
	.word	-0x7bfffe00
	.word	0x40000d4
	.word	0x3007ffc
	.word	0x4000208
.Lfe13:
	.size	 InitIntrHandlers,.Lfe13-InitIntrHandlers
	.align	2, 0
	.globl	SetVBlankCallback
	.type	 SetVBlankCallback,function
	.thumb_func
SetVBlankCallback:
	ldr	r1, .L65
	str	r0, [r1, #0xc]
	bx	lr
.L66:
	.align	2, 0
.L65:
	.word	gMain
.Lfe14:
	.size	 SetVBlankCallback,.Lfe14-SetVBlankCallback
	.align	2, 0
	.globl	SetHBlankCallback
	.type	 SetHBlankCallback,function
	.thumb_func
SetHBlankCallback:
	ldr	r1, .L68
	str	r0, [r1, #0x10]
	bx	lr
.L69:
	.align	2, 0
.L68:
	.word	gMain
.Lfe15:
	.size	 SetHBlankCallback,.Lfe15-SetHBlankCallback
	.align	2, 0
	.globl	SetVCountCallback
	.type	 SetVCountCallback,function
	.thumb_func
SetVCountCallback:
	ldr	r1, .L71
	str	r0, [r1, #0x14]
	bx	lr
.L72:
	.align	2, 0
.L71:
	.word	gMain
.Lfe16:
	.size	 SetVCountCallback,.Lfe16-SetVCountCallback
	.align	2, 0
	.globl	RestoreSerialTimer3IntrHandlers
	.type	 RestoreSerialTimer3IntrHandlers,function
	.thumb_func
RestoreSerialTimer3IntrHandlers:
	ldr	r0, .L74
	ldr	r1, .L74+0x4
	str	r1, [r0, #0x4]
	ldr	r1, .L74+0x8
	str	r1, [r0, #0x8]
	bx	lr
.L75:
	.align	2, 0
.L74:
	.word	gIntrTable
	.word	SerialIntr
	.word	Timer3Intr
.Lfe17:
	.size	 RestoreSerialTimer3IntrHandlers,.Lfe17-RestoreSerialTimer3IntrHandlers
	.align	2, 0
	.globl	SetSerialCallback
	.type	 SetSerialCallback,function
	.thumb_func
SetSerialCallback:
	ldr	r1, .L77
	str	r0, [r1, #0x18]
	bx	lr
.L78:
	.align	2, 0
.L77:
	.word	gMain
.Lfe18:
	.size	 SetSerialCallback,.Lfe18-SetSerialCallback
	.align	2, 0
	.type	 VBlankIntr,function
	.thumb_func
VBlankIntr:
	push	{r4, lr}
	ldr	r0, .L87
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L80	@cond_branch
	bl	RfuVSync
	b	.L81
.L88:
	.align	2, 0
.L87:
	.word	gWirelessCommType
.L80:
	ldr	r0, .L89
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L81	@cond_branch
	bl	LinkVSync
.L81:
	ldr	r0, .L89+0x4
	ldr	r1, [r0, #0x20]
	add	r1, r1, #0x1
	str	r1, [r0, #0x20]
	ldr	r1, .L89+0x8
	ldr	r1, [r1]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L83	@cond_branch
	ldr	r2, [r1]
	mov	r0, #0x2
	neg	r0, r0
	cmp	r2, r0
	bhi	.L83	@cond_branch
	add	r0, r2, #0x1
	str	r0, [r1]
.L83:
	ldr	r0, [r4, #0xc]
	cmp	r0, #0
	beq	.L84	@cond_branch
	bl	_call_via_r0
.L84:
	ldr	r0, [r4, #0x24]
	add	r0, r0, #0x1
	str	r0, [r4, #0x24]
	bl	CopyBufferedValuesToGpuRegs
	bl	ProcessDma3Requests
	ldr	r1, .L89+0xc
	ldr	r0, .L89+0x10
	ldrb	r0, [r0, #0x4]
	strb	r0, [r1]
	bl	m4aSoundMain
	bl	sub_8033648
	ldr	r1, .L89+0x14
	add	r0, r4, r1
	ldrb	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L86	@cond_branch
	ldr	r0, .L89+0x18
	ldr	r0, [r0]
	ldr	r1, .L89+0x1c
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L85	@cond_branch
.L86:
	bl	Random
.L85:
	bl	UpdateWirelessStatusIndicatorSprite
	ldr	r2, .L89+0x20
	ldrh	r0, [r2]
	mov	r1, #0x1
	orr	r0, r0, r1
	strh	r0, [r2]
	ldr	r0, .L89+0x4
	ldrh	r2, [r0, #0x1c]
	ldrh	r3, [r0, #0x1c]
	orr	r1, r1, r2
	strh	r1, [r0, #0x1c]
	pop	{r4}
	pop	{r0}
	bx	r0
.L90:
	.align	2, 0
.L89:
	.word	gLinkVSyncDisabled
	.word	gMain
	.word	gTrainerHillVBlankCounter
	.word	gPcmDmaCounter
	.word	gSoundInfo
	.word	0x439
	.word	gBattleTypeFlags
	.word	0x13f0102
	.word	0x3007ff8
.Lfe19:
	.size	 VBlankIntr,.Lfe19-VBlankIntr
	.align	2, 0
	.globl	InitFlashTimer
	.type	 InitFlashTimer,function
	.thumb_func
InitFlashTimer:
	push	{lr}
	ldr	r1, .L92
	mov	r0, #0x2
	bl	SetFlashTimerIntr
	pop	{r0}
	bx	r0
.L93:
	.align	2, 0
.L92:
	.word	gIntrTable+0x1c
.Lfe20:
	.size	 InitFlashTimer,.Lfe20-InitFlashTimer
	.align	2, 0
	.type	 HBlankIntr,function
	.thumb_func
HBlankIntr:
	push	{r4, lr}
	ldr	r4, .L96
	ldr	r0, [r4, #0x10]
	cmp	r0, #0
	beq	.L95	@cond_branch
	bl	_call_via_r0
.L95:
	ldr	r2, .L96+0x4
	ldrh	r0, [r2]
	mov	r1, #0x2
	orr	r0, r0, r1
	strh	r0, [r2]
	ldrh	r0, [r4, #0x1c]
	ldrh	r2, [r4, #0x1c]
	orr	r1, r1, r0
	strh	r1, [r4, #0x1c]
	pop	{r4}
	pop	{r0}
	bx	r0
.L97:
	.align	2, 0
.L96:
	.word	gMain
	.word	0x3007ff8
.Lfe21:
	.size	 HBlankIntr,.Lfe21-HBlankIntr
	.align	2, 0
	.type	 VCountIntr,function
	.thumb_func
VCountIntr:
	push	{r4, lr}
	ldr	r4, .L100
	ldr	r0, [r4, #0x14]
	cmp	r0, #0
	beq	.L99	@cond_branch
	bl	_call_via_r0
.L99:
	bl	m4aSoundVSync
	ldr	r2, .L100+0x4
	ldrh	r0, [r2]
	mov	r1, #0x4
	orr	r0, r0, r1
	strh	r0, [r2]
	ldrh	r0, [r4, #0x1c]
	ldrh	r2, [r4, #0x1c]
	orr	r1, r1, r0
	strh	r1, [r4, #0x1c]
	pop	{r4}
	pop	{r0}
	bx	r0
.L101:
	.align	2, 0
.L100:
	.word	gMain
	.word	0x3007ff8
.Lfe22:
	.size	 VCountIntr,.Lfe22-VCountIntr
	.align	2, 0
	.type	 SerialIntr,function
	.thumb_func
SerialIntr:
	push	{r4, lr}
	ldr	r4, .L104
	ldr	r0, [r4, #0x18]
	cmp	r0, #0
	beq	.L103	@cond_branch
	bl	_call_via_r0
.L103:
	ldr	r2, .L104+0x4
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	ldrh	r0, [r4, #0x1c]
	ldrh	r2, [r4, #0x1c]
	orr	r1, r1, r0
	strh	r1, [r4, #0x1c]
	pop	{r4}
	pop	{r0}
	bx	r0
.L105:
	.align	2, 0
.L104:
	.word	gMain
	.word	0x3007ff8
.Lfe23:
	.size	 SerialIntr,.Lfe23-SerialIntr
	.align	2, 0
	.type	 IntrDummy,function
	.thumb_func
IntrDummy:
	bx	lr
.Lfe24:
	.size	 IntrDummy,.Lfe24-IntrDummy
	.align	2, 0
	.type	 WaitForVBlank,function
	.thumb_func
WaitForVBlank:
	ldr	r1, .L108
	ldrh	r2, [r1, #0x1c]
	ldr	r0, .L108+0x4
	and	r0, r0, r2
	ldrh	r2, [r1, #0x1c]
	strh	r0, [r1, #0x1c]
	swi 0x5
	.code	16
	bx	lr
.L109:
	.align	2, 0
.L108:
	.word	gMain
	.word	0xfffe
.Lfe25:
	.size	 WaitForVBlank,.Lfe25-WaitForVBlank
	.align	2, 0
	.globl	SetTrainerHillVBlankCounter
	.type	 SetTrainerHillVBlankCounter,function
	.thumb_func
SetTrainerHillVBlankCounter:
	ldr	r1, .L111
	str	r0, [r1]
	bx	lr
.L112:
	.align	2, 0
.L111:
	.word	gTrainerHillVBlankCounter
.Lfe26:
	.size	 SetTrainerHillVBlankCounter,.Lfe26-SetTrainerHillVBlankCounter
	.align	2, 0
	.globl	ClearTrainerHillVBlankCounter
	.type	 ClearTrainerHillVBlankCounter,function
	.thumb_func
ClearTrainerHillVBlankCounter:
	ldr	r1, .L114
	mov	r0, #0x0
	str	r0, [r1]
	bx	lr
.L115:
	.align	2, 0
.L114:
	.word	gTrainerHillVBlankCounter
.Lfe27:
	.size	 ClearTrainerHillVBlankCounter,.Lfe27-ClearTrainerHillVBlankCounter
	.align	2, 0
	.globl	DoSoftReset
	.type	 DoSoftReset,function
	.thumb_func
DoSoftReset:
	push	{r4, lr}
	ldr	r1, .L117
	mov	r0, #0x0
	strh	r0, [r1]
	bl	m4aSoundVSyncOff
	bl	ScanlineEffect_Stop
	ldr	r1, .L117+0x4
	ldrh	r2, [r1, #0xa]
	ldr	r3, .L117+0x8
	add	r0, r3, #0
	and	r0, r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r4, [r1, #0xa]
	ldr	r2, .L117+0xc
	add	r0, r2, #0
	and	r0, r0, r4
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	add	r1, r1, #0xc
	ldrh	r4, [r1, #0xa]
	add	r0, r3, #0
	and	r0, r0, r4
	strh	r0, [r1, #0xa]
	ldrh	r4, [r1, #0xa]
	add	r0, r2, #0
	and	r0, r0, r4
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	ldr	r0, .L117+0x10
	ldrh	r1, [r0, #0xa]
	and	r3, r3, r1
	strh	r3, [r0, #0xa]
	ldrh	r1, [r0, #0xa]
	and	r2, r2, r1
	strh	r2, [r0, #0xa]
	ldrh	r0, [r0, #0xa]
	bl	SiiRtcProtect
	mov	r0, #0xff
	bl	SoftReset
	pop	{r4}
	pop	{r0}
	bx	r0
.L118:
	.align	2, 0
.L117:
	.word	0x4000208
	.word	0x40000bc
	.word	0xc5ff
	.word	0x7fff
	.word	0x40000d4
.Lfe28:
	.size	 DoSoftReset,.Lfe28-DoSoftReset
	.align	2, 0
	.globl	ClearPokemonCrySongs
	.type	 ClearPokemonCrySongs,function
	.thumb_func
ClearPokemonCrySongs:
	push	{lr}
	add	sp, sp, #-0x4
	mov	r1, sp
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r1, .L120
	ldr	r2, .L120+0x4
	mov	r0, sp
	bl	CpuSet
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.L121:
	.align	2, 0
.L120:
	.word	gPokemonCrySongs
	.word	0x1000034
.Lfe29:
	.size	 ClearPokemonCrySongs,.Lfe29-ClearPokemonCrySongs
	.comm	gLinkVSyncDisabled, 4	@ 1
	.comm	gKeyRepeatStartDelay, 4	@ 2
	.comm	gLinkTransferringData, 4	@ 1
	.comm	gMain, 1084	@ 1084
	.comm	gKeyRepeatContinueDelay, 4	@ 2
	.comm	gSoftResetDisabled, 4	@ 1
	.comm	gIntrTable, 56	@ 56
	.comm	IntrMain_Buffer, 2048	@ 2048
	.comm	gPcmDmaCounter, 4	@ 1

	.lcomm	gUnknown_03000000,2
.text
	.align	2, 0

