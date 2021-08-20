@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gPlttBufferPreDN
	.section ewram_data,"aw"
	.align	1, 0
	.type	 gPlttBufferPreDN,object
	.size	 gPlttBufferPreDN,1024
gPlttBufferPreDN:
	.short	0x0
	.space	1022
	.type	 sOldHour,object
	.size	 sOldHour,1
sOldHour:
	.byte	0x0
	.type	 sRetintPhase,object
	.size	 sRetintPhase,1
sRetintPhase:
	.byte	0x0
	.globl	gPaletteOverrides
	.align	2, 0
	.type	 gPaletteOverrides,object
	.size	 gPaletteOverrides,16
gPaletteOverrides:
	.word	0x0
	.space	12
	.section .rodata
	.align	1, 0
	.type	 sTimeOfDayTints,object
sTimeOfDayTints:
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x99
	.short	0x100
	.short	0xcc
	.short	0xb3
	.short	0xe6
	.short	0xcc
	.short	0xb3
	.short	0xe6
	.short	0xcc
	.short	0xb3
	.short	0xe6
	.short	0xe6
	.short	0xcc
	.short	0x100
	.short	0x100
	.short	0xe6
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0x100
	.short	0xe6
	.short	0xcc
	.short	0xe6
	.short	0x99
	.short	0xab
	.short	0xb3
	.short	0x99
	.short	0xe6
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.short	0x99
	.short	0x8c
	.short	0x100
	.size	 sTimeOfDayTints,144
	.globl	gDayOfWeekTable
	.align	2, 0
	.type	 gDayOfWeekTable,object
gDayOfWeekTable:
	.word	gText_Sunday
	.word	gText_Monday
	.word	gText_Tuesday
	.word	gText_Wednesday
	.word	gText_Thursday
	.word	gText_Friday
	.word	gText_Saturday
	.size	 gDayOfWeekTable,28
.text
	.align	2, 0
	.globl	IsCurrentlyDay
	.type	 IsCurrentlyDay,function
	.thumb_func
IsCurrentlyDay:
	push	{lr}
	ldr	r0, .L5
	ldrb	r0, [r0, #0x2]
	sub	r0, r0, #0x6
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xb
	bls	.L3	@cond_branch
	mov	r0, #0x0
	b	.L4
.L6:
	.align	2, 0
.L5:
	.word	gLocalTime
.L3:
	mov	r0, #0x1
.L4:
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 IsCurrentlyDay,.Lfe1-IsCurrentlyDay
	.align	2, 0
	.globl	GetCurrentTimeOfDay
	.type	 GetCurrentTimeOfDay,function
	.thumb_func
GetCurrentTimeOfDay:
	push	{lr}
	ldr	r0, .L8
	ldrb	r0, [r0, #0x2]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	bl	GetTimeOfDay
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L9:
	.align	2, 0
.L8:
	.word	gLocalTime
.Lfe2:
	.size	 GetCurrentTimeOfDay,.Lfe2-GetCurrentTimeOfDay
	.align	2, 0
	.globl	GetTimeOfDay
	.type	 GetTimeOfDay,function
	.thumb_func
GetTimeOfDay:
	push	{lr}
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0x3
	ble	.L20	@cond_branch
	cmp	r0, #0x9
	bgt	.L13	@cond_branch
	mov	r0, #0x0
	b	.L19
.L13:
	cmp	r0, #0x11
	bgt	.L15	@cond_branch
	mov	r0, #0x1
	b	.L19
.L15:
	cmp	r0, #0x13
	ble	.L17	@cond_branch
.L20:
	mov	r0, #0x3
	b	.L19
.L17:
	mov	r0, #0x2
.L19:
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 GetTimeOfDay,.Lfe3-GetTimeOfDay
	.align	2, 0
	.globl	GetDayOfWeekString
	.type	 GetDayOfWeekString,function
	.thumb_func
GetDayOfWeekString:
	lsl	r0, r0, #0x18
	ldr	r1, .L22
	lsr	r0, r0, #0x16
	add	r0, r0, r1
	ldr	r0, [r0]
	bx	lr
.L23:
	.align	2, 0
.L22:
	.word	gDayOfWeekTable
.Lfe4:
	.size	 GetDayOfWeekString,.Lfe4-GetDayOfWeekString
	.align	2, 0
	.globl	GetTimeOfDayString
	.type	 GetTimeOfDayString,function
	.thumb_func
GetTimeOfDayString:
	ldr	r0, .L25
	ldrb	r0, [r0, #0x2]
	bx	lr
.L26:
	.align	2, 0
.L25:
	.word	gLocalTime
.Lfe5:
	.size	 GetTimeOfDayString,.Lfe5-GetTimeOfDayString
	.align	2, 0
	.globl	CopyDayOfWeekStringToVar1
	.type	 CopyDayOfWeekStringToVar1,function
	.thumb_func
CopyDayOfWeekStringToVar1:
	push	{lr}
	ldr	r1, .L30
	ldrh	r0, [r1]
	cmp	r0, #0x6
	bhi	.L28	@cond_branch
	ldr	r0, .L30+0x4
	ldr	r2, .L30+0x8
	ldrh	r1, [r1]
	lsl	r1, r1, #0x2
	add	r1, r1, r2
	ldr	r1, [r1]
	bl	StringCopy
	b	.L29
.L31:
	.align	2, 0
.L30:
	.word	gSpecialVar_0x8004
	.word	gStringVar1
	.word	gDayOfWeekTable
.L28:
	ldr	r0, .L32
	ldr	r1, .L32+0x4
	bl	StringCopy
.L29:
	pop	{r0}
	bx	r0
.L33:
	.align	2, 0
.L32:
	.word	gStringVar1
	.word	gText_None
.Lfe6:
	.size	 CopyDayOfWeekStringToVar1,.Lfe6-CopyDayOfWeekStringToVar1
	.align	2, 0
	.globl	CopyCurrentDayOfWeekStringToVar1
	.type	 CopyCurrentDayOfWeekStringToVar1,function
	.thumb_func
CopyCurrentDayOfWeekStringToVar1:
	push	{lr}
	bl	RtcCalcLocalTime
	ldr	r1, .L37
	mov	r0, #0x5
	ldrsb	r0, [r1, r0]
	cmp	r0, #0x6
	bgt	.L35	@cond_branch
	ldr	r0, .L37+0x4
	ldr	r2, .L37+0x8
	ldrb	r1, [r1, #0x5]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	lsl	r1, r1, #0x2
	add	r1, r1, r2
	ldr	r1, [r1]
	bl	StringCopy
	b	.L36
.L38:
	.align	2, 0
.L37:
	.word	gLocalTime
	.word	gStringVar1
	.word	gDayOfWeekTable
.L35:
	ldr	r0, .L39
	ldr	r1, .L39+0x4
	bl	StringCopy
.L36:
	pop	{r0}
	bx	r0
.L40:
	.align	2, 0
.L39:
	.word	gStringVar1
	.word	gText_None
.Lfe7:
	.size	 CopyCurrentDayOfWeekStringToVar1,.Lfe7-CopyCurrentDayOfWeekStringToVar1
	.align	2, 0
	.type	 LoadPaletteOverrides,function
	.thumb_func
LoadPaletteOverrides:
	push	{r4, r5, r6, r7, lr}
	bl	GetCurrentTimeOfDay
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r2, #0x0
.L45:
	ldr	r1, .L60
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r3, [r0]
	add	r6, r2, #0x1
	cmp	r3, #0
	beq	.L44	@cond_branch
	ldrb	r0, [r3]
	cmp	r0, #0xff
	beq	.L44	@cond_branch
	ldr	r1, [r3, #0x4]
	cmp	r1, #0
	beq	.L44	@cond_branch
	ldr	r0, .L60+0x4
	mov	ip, r0
.L49:
	ldrb	r0, [r3, #0x1]
	add	r5, r3, #0
	add	r5, r5, #0x8
	cmp	r0, r7
	bne	.L51	@cond_branch
	mov	r4, #0x0
	add	r2, r1, #0
	ldrb	r0, [r3]
	lsl	r0, r0, #0x5
	mov	r3, ip
	add	r1, r0, r3
.L55:
	ldrh	r0, [r2]
	cmp	r0, #0
	beq	.L54	@cond_branch
	strh	r0, [r1]
.L54:
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r2, r2, #0x2
	add	r1, r1, #0x2
	cmp	r4, #0xf
	bls	.L55	@cond_branch
.L51:
	add	r3, r5, #0
	ldrb	r0, [r5]
	cmp	r0, #0xff
	beq	.L44	@cond_branch
	ldr	r0, [r5, #0x4]
	add	r1, r0, #0
	cmp	r1, #0
	bne	.L49	@cond_branch
.L44:
	lsl	r0, r6, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x3
	bls	.L45	@cond_branch
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L61:
	.align	2, 0
.L60:
	.word	gPaletteOverrides
	.word	gPlttBufferUnfaded
.Lfe8:
	.size	 LoadPaletteOverrides,.Lfe8-LoadPaletteOverrides
	.align	2, 0
	.type	 ShouldTintOverworld,function
	.thumb_func
ShouldTintOverworld:
	push	{lr}
	ldr	r0, .L65
	ldrb	r0, [r0, #0x17]
	bl	IsMapTypeOutdoors
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L63	@cond_branch
	mov	r0, #0x0
	b	.L64
.L66:
	.align	2, 0
.L65:
	.word	gMapHeader
.L63:
	mov	r0, #0x1
.L64:
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 ShouldTintOverworld,.Lfe9-ShouldTintOverworld
	.align	2, 0
	.type	 TintPaletteForDayNight,function
	.thumb_func
TintPaletteForDayNight:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	lsl	r5, r1, #0x10
	bl	ShouldTintOverworld
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L68	@cond_branch
	bl	RtcCalcLocalTimeFast
	ldr	r3, .L70
	lsl	r1, r4, #0x1
	ldr	r0, .L70+0x4
	add	r0, r1, r0
	ldr	r2, .L70+0x8
	add	r1, r1, r2
	lsr	r2, r5, #0x11
	ldr	r6, .L70+0xc
	ldrb	r3, [r3, #0x2]
	lsl	r3, r3, #24
	asr	r3, r3, #24
	lsl	r5, r3, #0x1
	add	r5, r5, r3
	lsl	r5, r5, #0x1
	add	r3, r5, r6
	ldrh	r3, [r3]
	add	r4, r6, #0x2
	add	r4, r5, r4
	ldrh	r4, [r4]
	str	r4, [sp]
	add	r6, r6, #0x4
	add	r5, r5, r6
	ldrh	r4, [r5]
	str	r4, [sp, #0x4]
	mov	r4, #0x0
	str	r4, [sp, #0x8]
	bl	TintPalette_CustomToneWithCopy
	b	.L69
.L71:
	.align	2, 0
.L70:
	.word	gLocalTime
	.word	gPlttBufferPreDN
	.word	gPlttBufferUnfaded
	.word	sTimeOfDayTints
.L68:
	lsl	r1, r4, #0x1
	ldr	r0, .L72
	add	r0, r1, r0
	ldr	r2, .L72+0x4
	add	r1, r1, r2
	lsr	r2, r5, #0x11
	bl	CpuSet
.L69:
	bl	LoadPaletteOverrides
	add	sp, sp, #0xc
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L73:
	.align	2, 0
.L72:
	.word	gPlttBufferPreDN
	.word	gPlttBufferUnfaded
.Lfe10:
	.size	 TintPaletteForDayNight,.Lfe10-TintPaletteForDayNight
	.align	2, 0
	.globl	LoadCompressedPaletteDayNight
	.type	 LoadCompressedPaletteDayNight,function
	.thumb_func
LoadCompressedPaletteDayNight:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	r5, r1, #0
	add	r4, r2, #0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	lsl	r4, r4, #0x10
	lsr	r1, r4, #0x10
	mov	r9, r1
	ldr	r1, .L75
	mov	r8, r1
	bl	LZDecompressWram
	lsl	r6, r5, #0x1
	ldr	r1, .L75+0x4
	add	r1, r6, r1
	lsr	r4, r4, #0x11
	mov	r0, r8
	add	r2, r4, #0
	bl	CpuSet
	add	r0, r5, #0
	mov	r1, r9
	bl	TintPaletteForDayNight
	ldr	r0, .L75+0x8
	add	r0, r6, r0
	ldr	r1, .L75+0xc
	add	r6, r6, r1
	add	r1, r6, #0
	add	r2, r4, #0
	bl	CpuSet
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L76:
	.align	2, 0
.L75:
	.word	gPaletteDecompressionBuffer
	.word	gPlttBufferPreDN
	.word	gPlttBufferUnfaded
	.word	gPlttBufferFaded
.Lfe11:
	.size	 LoadCompressedPaletteDayNight,.Lfe11-LoadCompressedPaletteDayNight
	.align	2, 0
	.globl	LoadPaletteDayNight
	.type	 LoadPaletteDayNight,function
	.thumb_func
LoadPaletteDayNight:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	r5, r1, #0
	add	r4, r2, #0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	lsl	r4, r4, #0x10
	lsr	r1, r4, #0x10
	mov	r8, r1
	lsl	r6, r5, #0x1
	ldr	r1, .L78
	add	r1, r6, r1
	lsr	r4, r4, #0x11
	add	r2, r4, #0
	bl	CpuSet
	add	r0, r5, #0
	mov	r1, r8
	bl	TintPaletteForDayNight
	ldr	r0, .L78+0x4
	add	r0, r6, r0
	ldr	r1, .L78+0x8
	add	r6, r6, r1
	add	r1, r6, #0
	add	r2, r4, #0
	bl	CpuSet
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L79:
	.align	2, 0
.L78:
	.word	gPlttBufferPreDN
	.word	gPlttBufferUnfaded
	.word	gPlttBufferFaded
.Lfe12:
	.size	 LoadPaletteDayNight,.Lfe12-LoadPaletteDayNight
	.align	2, 0
	.globl	CheckClockForImmediateTimeEvents
	.type	 CheckClockForImmediateTimeEvents,function
	.thumb_func
CheckClockForImmediateTimeEvents:
	push	{lr}
	bl	ShouldTintOverworld
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L81	@cond_branch
	ldr	r0, .L82
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L81	@cond_branch
	bl	RtcCalcLocalTimeFast
.L81:
	pop	{r0}
	bx	r0
.L83:
	.align	2, 0
.L82:
	.word	sRetintPhase
.Lfe13:
	.size	 CheckClockForImmediateTimeEvents,.Lfe13-CheckClockForImmediateTimeEvents
	.align	2, 0
	.globl	ProcessImmediateTimeEvents
	.type	 ProcessImmediateTimeEvents,function
	.thumb_func
ProcessImmediateTimeEvents:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0xc
	bl	ShouldTintOverworld
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L85	@cond_branch
	ldr	r2, .L90
	ldrb	r0, [r2]
	cmp	r0, #0
	bne	.L86	@cond_branch
	ldr	r0, .L90+0x4
	ldr	r4, .L90+0x8
	ldrb	r1, [r0, #0x2]
	mov	r3, #0x2
	ldrsb	r3, [r0, r3]
	mov	r0, #0x0
	ldrsb	r0, [r4, r0]
	cmp	r3, r0
	beq	.L85	@cond_branch
	strb	r1, [r4]
	mov	r0, #0x1
	strb	r0, [r2]
	ldr	r0, .L90+0xc
	ldr	r1, .L90+0x10
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	ldr	r6, .L90+0x14
	lsl	r5, r3, #0x1
	add	r5, r5, r3
	lsl	r5, r5, #0x1
	add	r3, r5, r6
	ldrh	r3, [r3]
	add	r4, r6, #0x2
	add	r4, r5, r4
	ldrh	r4, [r4]
	str	r4, [sp]
	add	r6, r6, #0x4
	add	r5, r5, r6
	ldrh	r4, [r5]
	str	r4, [sp, #0x4]
	mov	r4, #0x1
	str	r4, [sp, #0x8]
	bl	TintPalette_CustomToneWithCopy
	b	.L85
.L91:
	.align	2, 0
.L90:
	.word	sRetintPhase
	.word	gLocalTime
	.word	sOldHour
	.word	gPlttBufferPreDN
	.word	gPlttBufferUnfaded
	.word	sTimeOfDayTints
.L86:
	mov	r0, #0x0
	strb	r0, [r2]
	ldr	r0, .L92
	ldr	r7, .L92+0x4
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	ldr	r5, .L92+0x8
	ldr	r6, .L92+0xc
	mov	r3, #0x0
	ldrsb	r3, [r6, r3]
	lsl	r1, r3, #0x1
	add	r1, r1, r3
	lsl	r1, r1, #0x1
	add	r3, r1, r5
	ldrh	r3, [r3]
	add	r4, r5, #0x2
	add	r1, r1, r4
	ldrh	r1, [r1]
	str	r1, [sp]
	mov	r4, #0x0
	ldrsb	r4, [r6, r4]
	lsl	r1, r4, #0x1
	add	r1, r1, r4
	lsl	r1, r1, #0x1
	add	r5, r5, #0x4
	add	r1, r1, r5
	ldrh	r1, [r1]
	str	r1, [sp, #0x4]
	mov	r1, #0x1
	str	r1, [sp, #0x8]
	add	r1, r7, #0
	bl	TintPalette_CustomToneWithCopy
	bl	LoadPaletteOverrides
	ldr	r0, .L92+0x10
	ldr	r0, [r0]
	ldr	r1, .L92+0x14
	add	r0, r0, r1
	ldrb	r0, [r0]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bls	.L89	@cond_branch
	ldr	r1, .L92+0x18
	add	r0, r7, r1
	ldr	r1, .L92+0x1c
	mov	r2, #0x80
	lsl	r2, r2, #0x2
	bl	CpuSet
.L89:
	bl	ChooseAmbientCrySpecies
	bl	ForceTimeBasedEvents
.L85:
	add	sp, sp, #0xc
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L93:
	.align	2, 0
.L92:
	.word	gPlttBufferPreDN+0x200
	.word	gPlttBufferUnfaded+0x200
	.word	sTimeOfDayTints
	.word	sOldHour
	.word	gWeatherPtr
	.word	0x6c6
	.word	-0x200
	.word	gPlttBufferFaded
.Lfe14:
	.size	 ProcessImmediateTimeEvents,.Lfe14-ProcessImmediateTimeEvents
	.align	2, 0
	.globl	DoLoadSpritePaletteDayNight
	.type	 DoLoadSpritePaletteDayNight,function
	.thumb_func
DoLoadSpritePaletteDayNight:
	push	{lr}
	lsl	r1, r1, #0x10
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadPaletteDayNight
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 DoLoadSpritePaletteDayNight,.Lfe15-DoLoadSpritePaletteDayNight
.text
	.align	2, 0

