@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sCoordEventWeatherFuncs,object
sCoordEventWeatherFuncs:
	.byte	0x1
	.space	3
	.word	CoordEventWeather_Clouds
	.byte	0x2
	.space	3
	.word	CoordEventWeather_Sunny
	.byte	0x3
	.space	3
	.word	CoordEventWeather_Rain
	.byte	0x4
	.space	3
	.word	CoordEventWeather_Snow
	.byte	0x5
	.space	3
	.word	CoordEventWeather_Thunderstorm
	.byte	0x6
	.space	3
	.word	CoordEventWeather_HorizontalFog
	.byte	0x7
	.space	3
	.word	CoordEventWeather_DiagonalFog
	.byte	0x8
	.space	3
	.word	CoordEventWeather_Ash
	.byte	0x9
	.space	3
	.word	CoordEventWeather_Sandstorm
	.byte	0xa
	.space	3
	.word	CoordEventWeather_Shade
	.byte	0xb
	.space	3
	.word	CoordEventWeather_Drought
	.byte	0x14
	.space	3
	.word	CoordEventWeather_Route119Cycle
	.byte	0x15
	.space	3
	.word	CoordEventWeather_Route123Cycle
	.size	 sCoordEventWeatherFuncs,104
.text
	.align	2, 0
	.type	 CoordEventWeather_Clouds,function
	.thumb_func
CoordEventWeather_Clouds:
	push	{lr}
	mov	r0, #0x1
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 CoordEventWeather_Clouds,.Lfe1-CoordEventWeather_Clouds
	.align	2, 0
	.type	 CoordEventWeather_Sunny,function
	.thumb_func
CoordEventWeather_Sunny:
	push	{lr}
	mov	r0, #0x2
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 CoordEventWeather_Sunny,.Lfe2-CoordEventWeather_Sunny
	.align	2, 0
	.type	 CoordEventWeather_Rain,function
	.thumb_func
CoordEventWeather_Rain:
	push	{lr}
	mov	r0, #0x3
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 CoordEventWeather_Rain,.Lfe3-CoordEventWeather_Rain
	.align	2, 0
	.type	 CoordEventWeather_Snow,function
	.thumb_func
CoordEventWeather_Snow:
	push	{lr}
	mov	r0, #0x4
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe4:
	.size	 CoordEventWeather_Snow,.Lfe4-CoordEventWeather_Snow
	.align	2, 0
	.type	 CoordEventWeather_Thunderstorm,function
	.thumb_func
CoordEventWeather_Thunderstorm:
	push	{lr}
	mov	r0, #0x5
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 CoordEventWeather_Thunderstorm,.Lfe5-CoordEventWeather_Thunderstorm
	.align	2, 0
	.type	 CoordEventWeather_HorizontalFog,function
	.thumb_func
CoordEventWeather_HorizontalFog:
	push	{lr}
	mov	r0, #0x6
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 CoordEventWeather_HorizontalFog,.Lfe6-CoordEventWeather_HorizontalFog
	.align	2, 0
	.type	 CoordEventWeather_DiagonalFog,function
	.thumb_func
CoordEventWeather_DiagonalFog:
	push	{lr}
	mov	r0, #0x9
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 CoordEventWeather_DiagonalFog,.Lfe7-CoordEventWeather_DiagonalFog
	.align	2, 0
	.type	 CoordEventWeather_Ash,function
	.thumb_func
CoordEventWeather_Ash:
	push	{lr}
	mov	r0, #0x7
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 CoordEventWeather_Ash,.Lfe8-CoordEventWeather_Ash
	.align	2, 0
	.type	 CoordEventWeather_Sandstorm,function
	.thumb_func
CoordEventWeather_Sandstorm:
	push	{lr}
	mov	r0, #0x8
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 CoordEventWeather_Sandstorm,.Lfe9-CoordEventWeather_Sandstorm
	.align	2, 0
	.type	 CoordEventWeather_Shade,function
	.thumb_func
CoordEventWeather_Shade:
	push	{lr}
	mov	r0, #0xb
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 CoordEventWeather_Shade,.Lfe10-CoordEventWeather_Shade
	.align	2, 0
	.type	 CoordEventWeather_Drought,function
	.thumb_func
CoordEventWeather_Drought:
	push	{lr}
	mov	r0, #0xc
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe11:
	.size	 CoordEventWeather_Drought,.Lfe11-CoordEventWeather_Drought
	.align	2, 0
	.type	 CoordEventWeather_Route119Cycle,function
	.thumb_func
CoordEventWeather_Route119Cycle:
	push	{lr}
	mov	r0, #0x14
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe12:
	.size	 CoordEventWeather_Route119Cycle,.Lfe12-CoordEventWeather_Route119Cycle
	.align	2, 0
	.type	 CoordEventWeather_Route123Cycle,function
	.thumb_func
CoordEventWeather_Route123Cycle:
	push	{lr}
	mov	r0, #0x15
	bl	SetWeather
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 CoordEventWeather_Route123Cycle,.Lfe13-CoordEventWeather_Route123Cycle
	.align	2, 0
	.globl	DoCoordEventWeather
	.type	 DoCoordEventWeather,function
	.thumb_func
DoCoordEventWeather:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r2, #0x0
	ldr	r3, .L22
.L19:
	lsl	r1, r2, #0x3
	add	r0, r1, r3
	ldrb	r0, [r0]
	cmp	r0, r4
	bne	.L18	@cond_branch
	add	r0, r3, #0x4
	add	r0, r1, r0
	ldr	r0, [r0]
	bl	_call_via_r0
	b	.L15
.L23:
	.align	2, 0
.L22:
	.word	sCoordEventWeatherFuncs
.L18:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0xc
	bls	.L19	@cond_branch
.L15:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe14:
	.size	 DoCoordEventWeather,.Lfe14-DoCoordEventWeather
.text
	.align	2, 0

