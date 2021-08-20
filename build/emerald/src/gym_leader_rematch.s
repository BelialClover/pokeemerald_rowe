@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	1, 0
	.type	 GymLeaderRematches_AfterNewMauville,object
GymLeaderRematches_AfterNewMauville:
	.short	0x41
	.short	0x42
	.short	0x43
	.short	0x44
	.short	0x45
	.short	0x46
	.short	0x47
	.short	0x48
	.size	 GymLeaderRematches_AfterNewMauville,16
	.align	1, 0
	.type	 GymLeaderRematches_BeforeNewMauville,object
GymLeaderRematches_BeforeNewMauville:
	.short	0x41
	.short	0x42
	.short	0x44
	.short	0x45
	.short	0x46
	.short	0x47
	.short	0x48
	.size	 GymLeaderRematches_BeforeNewMauville,14
.text
	.align	2, 0
	.globl	UpdateGymLeaderRematch
	.type	 UpdateGymLeaderRematch,function
	.thumb_func
UpdateGymLeaderRematch:
	push	{lr}
	ldr	r0, .L6
	bl	FlagGet
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L3	@cond_branch
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x64
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x1e
	bhi	.L3	@cond_branch
	mov	r0, #0x5b
	bl	FlagGet
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L4	@cond_branch
	ldr	r0, .L6+0x4
	mov	r1, #0x8
	mov	r2, #0x5
	bl	UpdateGymLeaderRematchFromArray
	b	.L3
.L7:
	.align	2, 0
.L6:
	.word	0x864
	.word	GymLeaderRematches_AfterNewMauville
.L4:
	ldr	r0, .L8
	mov	r1, #0x7
	mov	r2, #0x1
	bl	UpdateGymLeaderRematchFromArray
.L3:
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	GymLeaderRematches_BeforeNewMauville
.Lfe1:
	.size	 UpdateGymLeaderRematch,.Lfe1-UpdateGymLeaderRematch
	.align	2, 0
	.type	 UpdateGymLeaderRematchFromArray,function
	.thumb_func
UpdateGymLeaderRematchFromArray:
	push	{lr}
	lsl	r1, r1, #0x1
	add	r1, r1, r0
	ldrh	r0, [r1]
	bl	GetRematchIndex
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 UpdateGymLeaderRematchFromArray,.Lfe2-UpdateGymLeaderRematchFromArray
	.align	2, 0
	.type	 GetRematchIndex,function
	.thumb_func
GetRematchIndex:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	mov	r4, #0x0
	ldr	r6, .L20
.L16:
	lsl	r0, r4, #0x1
	lsl	r1, r5, #0x4
	add	r0, r0, r1
	add	r0, r0, r6
	ldrh	r0, [r0]
	bl	HasTrainerBeenFought
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L15	@cond_branch
	add	r0, r4, #0
	b	.L19
.L21:
	.align	2, 0
.L20:
	.word	gRematchTable
.L15:
	add	r4, r4, #0x1
	cmp	r4, #0x4
	ble	.L16	@cond_branch
	mov	r0, #0x5
.L19:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 GetRematchIndex,.Lfe3-GetRematchIndex
.text
	.align	2, 0

