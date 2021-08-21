@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.type	 sGrassSpriteId,object
	.size	 sGrassSpriteId,1
sGrassSpriteId:
	.byte	0x0
	.section .rodata
	.align	1, 0
	.type	 sFarawayIslandRockCoords,object
	.size	 sFarawayIslandRockCoords,16
sFarawayIslandRockCoords:
	.short	0x15
	.short	0x10
	.short	0x19
	.short	0x10
	.short	0x10
	.short	0x11
	.short	0x14
	.short	0x14
.text
	.align	2, 0
	.type	 GetMewObjectEventId,function
	.thumb_func
GetMewObjectEventId:
	push	{lr}
	add	sp, sp, #-0x4
	ldr	r0, .L3
	ldr	r0, [r0]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	mov	r0, #0x1
	mov	r3, sp
	bl	TryGetObjectEventIdByLocalIdAndMap
	mov	r0, sp
	ldrb	r0, [r0]
	add	sp, sp, #0x4
	pop	{r1}
	bx	r1
.L4:
	.align	2, 0
.L3:
	.word	gSaveBlock1Ptr
.Lfe1:
	.size	 GetMewObjectEventId,.Lfe1-GetMewObjectEventId
	.align	2, 0
	.globl	GetMewMoveDirection
	.type	 GetMewMoveDirection,function
	.thumb_func
GetMewMoveDirection:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	GetMewObjectEventId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	ldr	r3, .L114
	add	r5, r1, r3
	ldr	r4, .L114+0x4
	ldr	r0, .L114+0x8
	ldrb	r2, [r0, #0x5]
	lsl	r2, r2, #0x19
	lsr	r1, r2, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	ldrh	r0, [r0, #0x14]
	ldrh	r1, [r5, #0x10]
	sub	r0, r0, r1
	strh	r0, [r4]
	ldr	r4, .L114+0xc
	lsr	r2, r2, #0x19
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	ldrh	r0, [r0, #0x16]
	ldrh	r1, [r5, #0x12]
	sub	r0, r0, r1
	strh	r0, [r4]
	mov	r0, #0x0
	mov	r9, r0
	ldr	r2, .L114+0x10
	mov	r1, #0x0
.L9:
	mov	r3, r9
	add	r0, r3, r2
	strb	r1, [r0]
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	cmp	r0, #0x3
	bls	.L9	@cond_branch
	ldr	r4, .L114
	ldr	r0, .L114+0x8
	ldrb	r0, [r0, #0x5]
	lsl	r3, r0, #0x19
	lsr	r0, r3, #0x19
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r4
	add	r2, r0, #0
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	mov	r7, #0x14
	ldrsh	r1, [r1, r7]
	mov	r2, #0x10
	ldrsh	r0, [r0, r2]
	cmp	r1, r0
	bne	.L11	@cond_branch
	lsr	r0, r3, #0x19
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r4
	add	r2, r0, #0
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	mov	r3, #0x16
	ldrsh	r1, [r1, r3]
	mov	r7, #0x12
	ldrsh	r0, [r0, r7]
	cmp	r1, r0
	beq	.L95	@cond_branch
.L11:
	ldr	r0, .L114+0x14
	bl	VarGet
	lsl	r0, r0, #0x10
	mov	r1, #0xe0
	lsl	r1, r1, #0xb
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L12	@cond_branch
	ldrb	r1, [r5, #0x1]
	mov	r0, #0x21
	neg	r0, r0
	and	r0, r0, r1
	b	.L96
.L115:
	.align	2, 0
.L114:
	.word	gObjectEvents
	.word	sPlayerToMewDeltaX
	.word	gPlayerAvatar
	.word	sPlayerToMewDeltaY
	.word	sMewDirectionCandidates
	.word	0x403a
.L12:
	ldrb	r0, [r5, #0x1]
	mov	r1, #0x20
	orr	r0, r0, r1
.L96:
	strb	r0, [r5, #0x1]
	ldr	r0, .L116
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x9
	bl	__umodsi3
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L14	@cond_branch
.L95:
	mov	r0, #0x0
	b	.L90
.L117:
	.align	2, 0
.L116:
	.word	0x403a
.L14:
	mov	r0, #0x0
	mov	r9, r0
	ldr	r1, .L118
	mov	sl, r1
.L18:
	ldr	r4, .L118+0x4
	ldrb	r0, [r4, #0x5]
	lsl	r6, r0, #0x19
	lsr	r1, r6, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, sl
	mov	r3, r9
	lsl	r2, r3, #0x2
	ldr	r7, .L118+0x8
	add	r1, r2, r7
	mov	r7, #0x14
	ldrsh	r3, [r0, r7]
	mov	r7, #0x0
	ldrsh	r0, [r1, r7]
	ldr	r1, .L118
	mov	ip, r1
	mov	r8, r2
	cmp	r3, r0
	beq	.LCB244
	b	.L19	@long jump
.LCB244:
	mov	r2, #0x0
	lsr	r1, r6, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, sl
	ldr	r1, .L118+0xc
	add	r1, r1, r8
	mov	r3, #0x16
	ldrsh	r0, [r0, r3]
	mov	r7, #0x0
	ldrsh	r1, [r1, r7]
	cmp	r0, r1
	bge	.L20	@cond_branch
	mov	r3, #0x12
	ldrsh	r0, [r5, r3]
	cmp	r0, r1
	bgt	.L22	@cond_branch
	b	.L19
.L119:
	.align	2, 0
.L118:
	.word	gObjectEvents
	.word	gPlayerAvatar
	.word	sFarawayIslandRockCoords
	.word	sFarawayIslandRockCoords+0x2
.L20:
	mov	r7, #0x12
	ldrsh	r0, [r5, r7]
	cmp	r0, r1
	blt	.L22	@cond_branch
	mov	r2, #0x1
.L22:
	cmp	r2, #0
	bne	.L19	@cond_branch
	ldr	r0, .L120
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	ble	.L25	@cond_branch
	mov	r3, #0x10
	ldrsh	r2, [r5, r3]
	add	r2, r2, #0x1
	ldrb	r1, [r4, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	mov	r7, #0x14
	ldrsh	r0, [r0, r7]
	cmp	r2, r0
	bne	.L28	@cond_branch
	ldrh	r0, [r5, #0x10]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L28	@cond_branch
.L113:
	mov	r0, #0x4
	b	.L90
.L121:
	.align	2, 0
.L120:
	.word	sPlayerToMewDeltaX
.L25:
	cmp	r0, #0
	bge	.L28	@cond_branch
	mov	r3, #0x10
	ldrsh	r2, [r5, r3]
	sub	r2, r2, #0x1
	ldrb	r1, [r4, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	mov	r7, #0x14
	ldrsh	r0, [r0, r7]
	cmp	r2, r0
	bne	.L28	@cond_branch
	ldrh	r0, [r5, #0x10]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB374
	b	.L110	@long jump
.LCB374:
.L28:
	ldr	r0, .L122
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, sl
	mov	r3, #0x10
	ldrsh	r1, [r5, r3]
	mov	r7, #0x14
	ldrsh	r0, [r0, r7]
	cmp	r1, r0
	bne	.L19	@cond_branch
	ldr	r0, .L122+0x4
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	ble	.L33	@cond_branch
	mov	r2, #0x10
	ldrsh	r0, [r5, r2]
	ldrh	r1, [r5, #0x12]
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L19	@cond_branch
.L112:
	mov	r0, #0x2
	b	.L90
.L123:
	.align	2, 0
.L122:
	.word	gPlayerAvatar
	.word	sPlayerToMewDeltaY
.L33:
	mov	r3, #0x10
	ldrsh	r0, [r5, r3]
	ldrh	r1, [r5, #0x12]
	add	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L111	@cond_branch
.L19:
	ldr	r3, .L124
	ldr	r4, .L124+0x4
	ldrb	r0, [r4, #0x5]
	lsl	r6, r0, #0x19
	lsr	r1, r6, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	ldr	r1, .L124+0x8
	add	r1, r1, r8
	mov	r7, #0x16
	ldrsh	r2, [r0, r7]
	mov	r7, #0x0
	ldrsh	r0, [r1, r7]
	mov	ip, r3
	cmp	r2, r0
	beq	.LCB466
	b	.L17	@long jump
.LCB466:
	mov	r2, #0x0
	lsr	r1, r6, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	ldr	r1, .L124+0xc
	add	r1, r1, r8
	mov	r3, #0x14
	ldrsh	r0, [r0, r3]
	mov	r7, #0x0
	ldrsh	r1, [r1, r7]
	cmp	r0, r1
	bge	.L38	@cond_branch
	mov	r3, #0x10
	ldrsh	r0, [r5, r3]
	cmp	r0, r1
	bgt	.L40	@cond_branch
	b	.L17
.L125:
	.align	2, 0
.L124:
	.word	gObjectEvents
	.word	gPlayerAvatar
	.word	sFarawayIslandRockCoords+0x2
	.word	sFarawayIslandRockCoords
.L38:
	mov	r7, #0x10
	ldrsh	r0, [r5, r7]
	cmp	r0, r1
	blt	.L40	@cond_branch
	mov	r2, #0x1
.L40:
	cmp	r2, #0
	bne	.L17	@cond_branch
	ldr	r0, .L126
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	ble	.L43	@cond_branch
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	add	r2, r2, #0x1
	ldrb	r1, [r4, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	mov	r7, #0x16
	ldrsh	r0, [r0, r7]
	cmp	r2, r0
	bne	.L46	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r5, r1]
	ldrh	r1, [r5, #0x12]
	add	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L46	@cond_branch
.L111:
	mov	r0, #0x1
	b	.L90
.L127:
	.align	2, 0
.L126:
	.word	sPlayerToMewDeltaY
.L43:
	cmp	r0, #0
	bge	.L46	@cond_branch
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	sub	r2, r2, #0x1
	ldrb	r1, [r4, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	mov	r7, #0x16
	ldrsh	r0, [r0, r7]
	cmp	r2, r0
	bne	.L46	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r5, r1]
	ldrh	r1, [r5, #0x12]
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB596
	b	.L112	@long jump
.LCB596:
.L46:
	ldr	r0, .L128
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, sl
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	mov	r3, #0x16
	ldrsh	r0, [r0, r3]
	cmp	r1, r0
	bne	.L17	@cond_branch
	ldr	r0, .L128+0x4
	mov	r7, #0x0
	ldrsh	r0, [r0, r7]
	cmp	r0, #0
	ble	.L51	@cond_branch
	ldrh	r0, [r5, #0x10]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L17	@cond_branch
.L110:
	mov	r0, #0x3
	b	.L90
.L129:
	.align	2, 0
.L128:
	.word	gPlayerAvatar
	.word	sPlayerToMewDeltaX
.L51:
	ldrh	r0, [r5, #0x10]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r3, #0x12
	ldrsh	r1, [r5, r3]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB662
	b	.L113	@long jump
.LCB662:
.L17:
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	cmp	r0, #0x3
	bhi	.LCB672
	b	.L18	@long jump
.LCB672:
	add	r0, r5, #0
	mov	r1, #0x0
	bl	ShouldMewMoveNorth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L56	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveEast
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L57	@cond_branch
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L57:
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveWest
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LCB704
	b	.L112	@long jump
.LCB704:
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L56:
	add	r0, r5, #0
	mov	r1, #0x0
	bl	ShouldMewMoveSouth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L61	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveEast
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L62	@cond_branch
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L62:
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveWest
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LCB741
	b	.L111	@long jump
.LCB741:
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L61:
	add	r0, r5, #0
	mov	r1, #0x0
	bl	ShouldMewMoveEast
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L66	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveNorth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L67	@cond_branch
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L67:
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveSouth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LCB778
	b	.L113	@long jump
.LCB778:
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L66:
	add	r0, r5, #0
	mov	r1, #0x0
	bl	ShouldMewMoveWest
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L71	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveNorth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L72	@cond_branch
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L72:
	add	r0, r5, #0
	mov	r1, #0x1
	bl	ShouldMewMoveSouth
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LCB815
	b	.L110	@long jump
.LCB815:
	mov	r0, #0x2
	bl	GetRandomMewDirectionCandidate
	b	.L98
.L71:
	ldr	r0, .L130
	mov	r7, #0x0
	ldrsh	r0, [r0, r7]
	cmp	r0, #0
	bne	.L76	@cond_branch
	ldr	r2, .L130+0x4
	ldr	r0, .L130+0x8
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r2, #0x12
	ldrsh	r1, [r0, r2]
	ldrh	r2, [r5, #0x12]
	mov	r3, #0x12
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	ble	.L77	@cond_branch
	mov	r7, #0x10
	ldrsh	r0, [r5, r7]
	sub	r1, r2, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB860
	b	.L112	@long jump
.LCB860:
.L77:
	ldr	r2, .L130+0x4
	ldr	r0, .L130+0x8
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r2, #0x12
	ldrsh	r1, [r0, r2]
	ldrh	r2, [r5, #0x12]
	mov	r3, #0x12
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bge	.L79	@cond_branch
	mov	r7, #0x10
	ldrsh	r0, [r5, r7]
	add	r1, r2, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB893
	b	.L111	@long jump
.LCB893:
.L79:
	mov	r1, #0x10
	ldrsh	r0, [r5, r1]
	ldrh	r1, [r5, #0x12]
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB907
	b	.L112	@long jump
.LCB907:
	mov	r2, #0x10
	ldrsh	r0, [r5, r2]
	ldrh	r1, [r5, #0x12]
	add	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB920
	b	.L111	@long jump
.LCB920:
.L76:
	ldr	r0, .L130+0xc
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp	r0, #0
	bne	.L83	@cond_branch
	ldr	r2, .L130+0x4
	ldr	r0, .L130+0x8
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r7, #0x10
	ldrsh	r1, [r0, r7]
	ldrh	r2, [r5, #0x10]
	mov	r3, #0x10
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	ble	.L84	@cond_branch
	sub	r0, r2, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r7, #0x12
	ldrsh	r1, [r5, r7]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB960
	b	.L110	@long jump
.LCB960:
.L84:
	ldr	r2, .L130+0x4
	ldr	r0, .L130+0x8
	ldrb	r1, [r0, #0x5]
	lsl	r1, r1, #0x19
	lsr	r1, r1, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r2, #0x10
	ldrsh	r1, [r0, r2]
	ldrh	r2, [r5, #0x10]
	mov	r3, #0x10
	ldrsh	r0, [r5, r3]
	cmp	r1, r0
	bge	.L86	@cond_branch
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r7, #0x12
	ldrsh	r1, [r5, r7]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB993
	b	.L113	@long jump
.LCB993:
.L86:
	ldrh	r0, [r5, #0x10]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB1007
	b	.L113	@long jump
.LCB1007:
	ldrh	r0, [r5, #0x10]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r3, #0x12
	ldrsh	r1, [r5, r3]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB1020
	b	.L110	@long jump
.LCB1020:
.L83:
	mov	r0, #0x0
	bl	GetValidMewMoveDirection
.L98:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L90:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L131:
	.align	2, 0
.L130:
	.word	sPlayerToMewDeltaY
	.word	gObjectEvents
	.word	gPlayerAvatar
	.word	sPlayerToMewDeltaX
.Lfe2:
	.size	 GetMewMoveDirection,.Lfe2-GetMewMoveDirection
	.align	2, 0
	.type	 CanMewMoveToCoords,function
	.thumb_func
CanMewMoveToCoords:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	ldr	r5, .L135
	ldr	r1, .L135+0x4
	ldrb	r1, [r1, #0x5]
	lsl	r3, r1, #0x19
	lsr	r2, r3, #0x19
	lsl	r1, r2, #0x3
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r5
	mov	r2, #0x10
	ldrsh	r1, [r1, r2]
	lsr	r2, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r1, r0
	bne	.L133	@cond_branch
	lsr	r1, r3, #0x19
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	mov	r3, #0x12
	ldrsh	r1, [r0, r3]
	lsl	r0, r4, #0x10
	asr	r0, r0, #0x10
	cmp	r1, r0
	bne	.L133	@cond_branch
	mov	r0, #0x0
	b	.L134
.L136:
	.align	2, 0
.L135:
	.word	gObjectEvents
	.word	gPlayerAvatar
.L133:
	lsl	r0, r2, #0x10
	asr	r0, r0, #0x10
	lsl	r1, r4, #0x10
	asr	r1, r1, #0x10
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsPokeGrass
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L134:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 CanMewMoveToCoords,.Lfe3-CanMewMoveToCoords
	.align	2, 0
	.type	 GetValidMewMoveDirection,function
	.thumb_func
GetValidMewMoveDirection:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	mov	r5, #0x0
	bl	GetMewObjectEventId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	ldr	r0, .L152
	add	r4, r1, r0
	mov	r1, #0x0
	ldr	r3, .L152+0x4
	mov	r2, #0x0
.L141:
	add	r0, r1, r3
	strb	r2, [r0]
	add	r0, r1, #0x1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x3
	bls	.L141	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r4, r1]
	ldrh	r1, [r4, #0x12]
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L143	@cond_branch
	cmp	r6, #0x2
	beq	.L143	@cond_branch
	ldr	r0, .L152+0x4
	add	r0, r5, r0
	mov	r1, #0x2
	strb	r1, [r0]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L143:
	ldrh	r0, [r4, #0x10]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0x12
	ldrsh	r1, [r4, r2]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L144	@cond_branch
	cmp	r6, #0x4
	beq	.L144	@cond_branch
	ldr	r0, .L152+0x4
	add	r0, r5, r0
	mov	r1, #0x4
	strb	r1, [r0]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L144:
	mov	r1, #0x10
	ldrsh	r0, [r4, r1]
	ldrh	r1, [r4, #0x12]
	add	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x1
	bne	.L145	@cond_branch
	cmp	r6, #0x1
	beq	.L145	@cond_branch
	ldr	r0, .L152+0x4
	add	r0, r5, r0
	strb	r1, [r0]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L145:
	ldrh	r0, [r4, #0x10]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0x12
	ldrsh	r1, [r4, r2]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L146	@cond_branch
	cmp	r6, #0x3
	beq	.L146	@cond_branch
	ldr	r0, .L152+0x4
	add	r0, r5, r0
	mov	r1, #0x3
	strb	r1, [r0]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L146:
	cmp	r5, #0x1
	bhi	.L147	@cond_branch
	ldr	r0, .L152+0x4
	b	.L151
.L153:
	.align	2, 0
.L152:
	.word	gObjectEvents
	.word	sMewDirectionCandidates
.L147:
	ldr	r4, .L154
	ldr	r0, .L154+0x4
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r1, r5, #0
	bl	__modsi3
	add	r0, r0, r4
.L151:
	ldrb	r0, [r0]
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L155:
	.align	2, 0
.L154:
	.word	sMewDirectionCandidates
	.word	0x403a
.Lfe4:
	.size	 GetValidMewMoveDirection,.Lfe4-GetValidMewMoveDirection
	.align	2, 0
	.globl	UpdateFarawayIslandStepCounter
	.type	 UpdateFarawayIslandStepCounter,function
	.thumb_func
UpdateFarawayIslandStepCounter:
	push	{r4, lr}
	ldr	r4, .L160
	add	r0, r4, #0
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldr	r0, .L160+0x4
	ldr	r0, [r0]
	ldrh	r1, [r0, #0x4]
	ldr	r0, .L160+0x8
	cmp	r1, r0
	bne	.L157	@cond_branch
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldr	r0, .L160+0xc
	cmp	r2, r0
	bls	.L158	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x0
	bl	VarSet
	b	.L157
.L161:
	.align	2, 0
.L160:
	.word	0x403a
	.word	gSaveBlock1Ptr
	.word	0x391a
	.word	0x270e
.L158:
	add	r0, r4, #0
	add	r1, r2, #0
	bl	VarSet
.L157:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 UpdateFarawayIslandStepCounter,.Lfe5-UpdateFarawayIslandStepCounter
	.align	2, 0
	.globl	ObjectEventIsFarawayIslandMew
	.type	 ObjectEventIsFarawayIslandMew,function
	.thumb_func
ObjectEventIsFarawayIslandMew:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .L166
	ldr	r0, [r0]
	ldrh	r1, [r0, #0x4]
	ldr	r0, .L166+0x4
	cmp	r1, r0
	bne	.L163	@cond_branch
	ldrb	r0, [r2, #0x5]
	cmp	r0, #0xe5
	bne	.L163	@cond_branch
	mov	r0, #0x1
	b	.L165
.L167:
	.align	2, 0
.L166:
	.word	gSaveBlock1Ptr
	.word	0x391a
.L163:
	mov	r0, #0x0
.L165:
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 ObjectEventIsFarawayIslandMew,.Lfe6-ObjectEventIsFarawayIslandMew
	.align	2, 0
	.globl	IsMewPlayingHideAndSeek
	.type	 IsMewPlayingHideAndSeek,function
	.thumb_func
IsMewPlayingHideAndSeek:
	push	{lr}
	ldr	r0, .L172
	ldr	r0, [r0]
	ldrh	r1, [r0, #0x4]
	ldr	r0, .L172+0x4
	cmp	r1, r0
	bne	.L169	@cond_branch
	mov	r0, #0xe5
	lsl	r0, r0, #0x1
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L169	@cond_branch
	ldr	r0, .L172+0x8
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L169	@cond_branch
	mov	r0, #0x1
	b	.L171
.L173:
	.align	2, 0
.L172:
	.word	gSaveBlock1Ptr
	.word	0x391a
	.word	0x2ce
.L169:
	mov	r0, #0x0
.L171:
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 IsMewPlayingHideAndSeek,.Lfe7-IsMewPlayingHideAndSeek
	.align	2, 0
	.globl	ShouldMewShakeGrass
	.type	 ShouldMewShakeGrass,function
	.thumb_func
ShouldMewShakeGrass:
	push	{r4, lr}
	ldr	r4, .L177
	add	r0, r4, #0
	bl	VarGet
	lsl	r0, r0, #0x10
	ldr	r1, .L177+0x4
	cmp	r0, r1
	beq	.L175	@cond_branch
	add	r0, r4, #0
	bl	VarGet
	lsl	r0, r0, #0x10
	mov	r1, #0xc0
	lsl	r1, r1, #0xa
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L175	@cond_branch
	mov	r0, #0x1
	b	.L176
.L178:
	.align	2, 0
.L177:
	.word	0x403a
	.word	-0x10000
.L175:
	mov	r0, #0x0
.L176:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 ShouldMewShakeGrass,.Lfe8-ShouldMewShakeGrass
	.align	2, 0
	.globl	SetMewAboveGrass
	.type	 SetMewAboveGrass,function
	.thumb_func
SetMewAboveGrass:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	bl	GetMewObjectEventId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	ldr	r0, .L184
	add	r5, r1, r0
	ldrb	r1, [r5, #0x1]
	mov	r0, #0x21
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r5, #0x1]
	ldr	r0, .L184+0x4
	ldrh	r4, [r0]
	cmp	r4, #0x1
	bne	.L180	@cond_branch
	ldrb	r0, [r5, #0x3]
	mov	r1, #0x4
	orr	r0, r0, r1
	strb	r0, [r5, #0x3]
	ldr	r3, .L184+0x8
	ldrb	r1, [r5, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x42
	ldrb	r2, [r0]
	mov	r1, #0x3f
	and	r1, r1, r2
	mov	r2, #0x80
	orr	r1, r1, r2
	strb	r1, [r0]
	ldrb	r1, [r5, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x43
	strb	r4, [r0]
	b	.L181
.L185:
	.align	2, 0
.L184:
	.word	gObjectEvents
	.word	gSpecialVar_0x8004
	.word	gSprites
.L180:
	ldr	r0, .L186
	ldr	r1, .L186+0x4
	bl	VarSet
	ldrb	r0, [r5, #0x3]
	mov	r1, #0x4
	orr	r0, r0, r1
	strb	r0, [r5, #0x3]
	ldr	r6, .L186+0x8
	ldrb	r1, [r5, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r6
	add	r0, r0, #0x42
	ldrb	r2, [r0]
	mov	r1, #0x3f
	and	r1, r1, r2
	mov	r2, #0x80
	orr	r1, r1, r2
	strb	r1, [r0]
	ldr	r0, .L186+0xc
	ldrh	r0, [r0]
	cmp	r0, #0x2
	beq	.L182	@cond_branch
	ldrb	r0, [r5, #0x4]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r6
	add	r1, r1, #0x43
	mov	r0, #0x1
	strb	r0, [r1]
.L182:
	ldr	r4, .L186+0x10
	add	r0, r4, #0
	bl	LoadSpritePalette
	ldrh	r0, [r4, #0x4]
	bl	IndexOfSpritePaletteTag
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	UpdateSpritePaletteWithWeather
	ldrh	r1, [r5, #0x10]
	mov	r0, sp
	strh	r1, [r0]
	ldrh	r0, [r5, #0x12]
	mov	r4, sp
	add	r4, r4, #0x2
	strh	r0, [r4]
	mov	r0, sp
	add	r1, r4, #0
	mov	r2, #0x8
	mov	r3, #0x8
	bl	SetSpritePosToOffsetMapCoords
	ldr	r0, .L186+0x14
	ldr	r0, [r0, #0x3c]
	mov	r1, sp
	mov	r2, #0x0
	ldrsh	r1, [r1, r2]
	mov	r3, #0x0
	ldrsh	r2, [r4, r3]
	ldrb	r4, [r5, #0x4]
	lsl	r3, r4, #0x4
	add	r3, r3, r4
	lsl	r3, r3, #0x2
	add	r3, r3, r6
	add	r3, r3, #0x43
	ldrb	r3, [r3]
	sub	r3, r3, #0x1
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	bl	CreateSpriteAtEnd
	ldr	r1, .L186+0x18
	strb	r0, [r1]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x40
	beq	.L181	@cond_branch
	ldrb	r0, [r1]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r6
	add	r3, r1, #0
	add	r3, r3, #0x3e
	ldrb	r0, [r3]
	mov	r2, #0x2
	orr	r0, r0, r2
	strb	r0, [r3]
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xd
	neg	r0, r0
	and	r0, r0, r2
	mov	r2, #0x8
	orr	r0, r0, r2
	strb	r0, [r1, #0x5]
	ldr	r0, .L186+0x1c
	str	r0, [r1, #0x1c]
.L181:
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L187:
	.align	2, 0
.L186:
	.word	0x403a
	.word	0xffff
	.word	gSprites
	.word	gSpecialVar_Facing
	.word	gSpritePalette_GeneralFieldEffect1
	.word	gFieldEffectObjectTemplatePointers
	.word	sGrassSpriteId
	.word	SpriteCallbackDummy
.Lfe9:
	.size	 SetMewAboveGrass,.Lfe9-SetMewAboveGrass
	.align	2, 0
	.globl	DestroyMewEmergingGrassSprite
	.type	 DestroyMewEmergingGrassSprite,function
	.thumb_func
DestroyMewEmergingGrassSprite:
	push	{lr}
	ldr	r1, .L190
	ldrb	r0, [r1]
	cmp	r0, #0x40
	beq	.L189	@cond_branch
	add	r1, r0, #0
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L190+0x4
	add	r0, r0, r1
	bl	DestroySprite
.L189:
	pop	{r0}
	bx	r0
.L191:
	.align	2, 0
.L190:
	.word	sGrassSpriteId
	.word	gSprites
.Lfe10:
	.size	 DestroyMewEmergingGrassSprite,.Lfe10-DestroyMewEmergingGrassSprite
	.align	2, 0
	.type	 ShouldMewMoveNorth,function
	.thumb_func
ShouldMewMoveNorth:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	ldr	r0, .L195
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	ble	.L193	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r2, r1]
	ldrh	r1, [r2, #0x12]
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L193	@cond_branch
	ldr	r0, .L195+0x4
	add	r0, r4, r0
	mov	r1, #0x2
	strb	r1, [r0]
	mov	r0, #0x1
	b	.L194
.L196:
	.align	2, 0
.L195:
	.word	sPlayerToMewDeltaY
	.word	sMewDirectionCandidates
.L193:
	mov	r0, #0x0
.L194:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe11:
	.size	 ShouldMewMoveNorth,.Lfe11-ShouldMewMoveNorth
	.align	2, 0
	.type	 ShouldMewMoveEast,function
	.thumb_func
ShouldMewMoveEast:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	ldr	r0, .L200
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bge	.L198	@cond_branch
	ldrh	r0, [r2, #0x10]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r3, #0x12
	ldrsh	r1, [r2, r3]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L198	@cond_branch
	ldr	r0, .L200+0x4
	add	r0, r4, r0
	mov	r1, #0x4
	strb	r1, [r0]
	mov	r0, #0x1
	b	.L199
.L201:
	.align	2, 0
.L200:
	.word	sPlayerToMewDeltaX
	.word	sMewDirectionCandidates
.L198:
	mov	r0, #0x0
.L199:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 ShouldMewMoveEast,.Lfe12-ShouldMewMoveEast
	.align	2, 0
	.type	 ShouldMewMoveSouth,function
	.thumb_func
ShouldMewMoveSouth:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	ldr	r0, .L205
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bge	.L203	@cond_branch
	mov	r1, #0x10
	ldrsh	r0, [r2, r1]
	ldrh	r1, [r2, #0x12]
	add	r1, r1, #0x1
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L203	@cond_branch
	ldr	r0, .L205+0x4
	add	r0, r4, r0
	mov	r1, #0x1
	strb	r1, [r0]
	mov	r0, #0x1
	b	.L204
.L206:
	.align	2, 0
.L205:
	.word	sPlayerToMewDeltaY
	.word	sMewDirectionCandidates
.L203:
	mov	r0, #0x0
.L204:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 ShouldMewMoveSouth,.Lfe13-ShouldMewMoveSouth
	.align	2, 0
	.type	 ShouldMewMoveWest,function
	.thumb_func
ShouldMewMoveWest:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	ldr	r0, .L210
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	ble	.L208	@cond_branch
	ldrh	r0, [r2, #0x10]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r3, #0x12
	ldrsh	r1, [r2, r3]
	bl	CanMewMoveToCoords
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L208	@cond_branch
	ldr	r0, .L210+0x4
	add	r0, r4, r0
	mov	r1, #0x3
	strb	r1, [r0]
	mov	r0, #0x1
	b	.L209
.L211:
	.align	2, 0
.L210:
	.word	sPlayerToMewDeltaX
	.word	sMewDirectionCandidates
.L208:
	mov	r0, #0x0
.L209:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 ShouldMewMoveWest,.Lfe14-ShouldMewMoveWest
	.align	2, 0
	.type	 GetRandomMewDirectionCandidate,function
	.thumb_func
GetRandomMewDirectionCandidate:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r5, .L213
	ldr	r0, .L213+0x4
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r1, r4, #0
	bl	__modsi3
	add	r0, r0, r5
	ldrb	r0, [r0]
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L214:
	.align	2, 0
.L213:
	.word	sMewDirectionCandidates
	.word	0x403a
.Lfe15:
	.size	 GetRandomMewDirectionCandidate,.Lfe15-GetRandomMewDirectionCandidate

	.lcomm	sPlayerToMewDeltaX,2

	.lcomm	sPlayerToMewDeltaY,2

	.lcomm	sMewDirectionCandidates,4
.text
	.align	2, 0

