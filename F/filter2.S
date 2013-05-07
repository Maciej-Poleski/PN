	.file	"filter.cpp"
	.intel_syntax noprefix
; GNU C++ (Gentoo 4.8.0 p1.2, pie-0.5.5) version 4.8.0 (x86_64-pc-linux-gnu)
;	compiled by GNU C version 4.8.0, GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D_GNU_SOURCE filter.cpp -march=core2 -mcx16 -msahf
; -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
; -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
; -mno-sse4.2 -msse4.1 -mno-lzcnt -mno-rtm -mno-hle -mno-rdrnd -mno-f16c
; -mno-fsgsbase -mno-rdseed -mno-prfchw -mno-adx -mfxsr -mno-xsave
; -mno-xsaveopt --param l1-cache-size=32 --param l1-cache-line-size=64
; --param l2-cache-size=6144 -mtune=core2 -masm=intel
; -auxbase-strip filter.S -Os -O2 -Wall -Wextra -std=c++11 -fverbose-asm
; options enabled:  -faggressive-loop-optimizations
; -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
; -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
; -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
; -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
; -fearly-inlining -feliminate-unused-debug-types -fexceptions
; -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
; -fgcse-lm -fgnu-runtime -fguess-branch-probability -fhoist-adjacent-loads
; -fident -fif-conversion -fif-conversion2 -findirect-inlining -finline
; -finline-atomics -finline-functions-called-once -finline-small-functions
; -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
; -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
; -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
; -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
; -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
; -fprefetch-loop-arrays -free -freg-struct-return -fregmove
; -freorder-blocks -freorder-functions -frerun-cse-after-loop
; -fsched-critical-path-heuristic -fsched-dep-count-heuristic
; -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
; -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
; -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
; -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
; -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
; -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
; -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
; -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
; -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
; -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
; -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
; -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
; -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
; -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
; -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
; -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
; -malign-stringops -mcx16 -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
; -mieee-fp -mlong-double-80 -mmmx -mpush-args -mred-zone -msahf -msse
; -msse2 -msse3 -msse4.1 -mssse3 -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.type	computePoint, @function
computePoint:
	push	r15	;
	xorps	xmm2, xmm2	; output
	push	r14	;
	push	r13	;
	lea	r13, [rcx-1]	; D.2447,
	xor	ecx, ecx	; ivtmp.39
	push	r12	;
	lea	r14, [r13+0+r13*2]	; tmp136,
	push	rbp	;
	push	rbx	;
	lea	rbx, [r8-1]	; ivtmp.36,
.L2:
	mov	rax, rbx	; tmp203, ivtmp.36
	mov	r9, r13	; ivtmp.22, D.2447
	mov	r10, r14	; ivtmp.26, tmp136
	lea	rbp, [rdx+rcx]	; D.2459,
	shr	rax, 63	; tmp203,
	mov	r12, rax	; D.2456, tmp203
	mov	rax, -1	; b,
.L6:
	mov	r11, r9	; tmp138, ivtmp.22
	shr	r11, 63	; tmp138,
	test	r11b, r11b	; tmp138
	jne	.L7	;,
	test	r12b, r12b	; D.2456
	jne	.L7	;,
	mov	r11d, DWORD PTR [rsi+8]	; D.2447, src_12(D)->width
	xorps	xmm1, xmm1	; D.2457
	cmp	r9, r11	; ivtmp.22, D.2447
	jge	.L3	;,
	mov	r15d, DWORD PTR [rsi+12]	; D.2447, src_12(D)->height
	cmp	r15, rbx	; D.2447, ivtmp.36
	jle	.L3	;,
	imul	r11, rbx	; D.2447, ivtmp.36
	lea	r11, [r11+r11*2]	; D.2447,
	add	r11, r10	; i, ivtmp.26
	add	r11, QWORD PTR [rsi]	; i, src_12(D)->data
	movzx	r15d, BYTE PTR [r11]	; *i_66, *i_66
	cvtsi2ss	xmm1, r15d	; D.2448, *i_66
	movzx	r15d, BYTE PTR [r11+1]	; MEM[(const uint8_t *)i_66 + 1B], MEM[(const uint8_t *)i_66 + 1B]
	movzx	r11d, BYTE PTR [r11+2]	; MEM[(const uint8_t *)i_66 + 2B], MEM[(const uint8_t *)i_66 + 2B]
	cvtsi2ss	xmm3, r15d	; D.2448, MEM[(const uint8_t *)i_66 + 1B]
	cvtsi2ss	xmm0, r11d	; D.2448, MEM[(const uint8_t *)i_66 + 2B]
	unpcklps	xmm1, xmm3	; tmp156, D.2448
	insertps	xmm0, DWORD PTR .LC0[rip], 0x10	; tmp154,
	movlhps	xmm1, xmm0	; D.2457, tmp154
.L3:
	add	rax, 1	; b,
	add	r9, 1	; ivtmp.22,
	add	r10, 3	; ivtmp.26,
	movss	xmm0, DWORD PTR [rbp+0+rax*4]	; D.2449, MEM[base: _77, index: _81, step: 4, offset: 0B]
	cmp	rax, 2	; b,
	shufps	xmm0, xmm0, 0	; D.2449
	mulps	xmm0, xmm1	; D.2449, D.2457
	addps	xmm2, xmm0	; output, D.2449
	jne	.L6	;,
	add	rcx, 12	; ivtmp.39,
	add	rbx, 1	; ivtmp.36,
	cmp	rcx, 36	; ivtmp.39,
	jne	.L2	;,
	mov	eax, DWORD PTR [rdi+8]	; D.2447, dst_32(D)->width
	cvtps2dq	xmm2, xmm2	; tmp161, output
	packssdw	xmm2, xmm2	; tmp163, tmp161
	packuswb	xmm2, xmm2	; tmp164, tmp163
	imul	rax, r8	; D.2447, y
	lea	rax, [rax+rax*2]	; D.2447,
	lea	rax, [r14+3+rax]	; ptr,
	add	rax, QWORD PTR [rdi]	; ptr, dst_32(D)->data
	pextrb	BYTE PTR [rax], xmm2, 0	; *ptr_42, tmp164,
	pextrb	BYTE PTR [rax+1], xmm2, 1	; MEM[(uint8_t *)ptr_42 + 1B], tmp164,
	pextrb	BYTE PTR [rax+2], xmm2, 2	; MEM[(uint8_t *)ptr_42 + 2B], tmp164,
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorps	xmm1, xmm1	; D.2457
	jmp	.L3	;
	.size	computePoint, .-computePoint
	.p2align 4,,15
	.globl	_Z6filterP8RGBImagePKS_PKf
	.type	_Z6filterP8RGBImagePKS_PKf, @function
_Z6filterP8RGBImagePKS_PKf:
	push	r14	;
	push	r13	;
	push	r12	;
	mov	r12, rdi	; dst, dst
	push	rbp	;
	mov	rbp, rsi	; src, src
	push	rbx	;
	mov	rbx, rdx	; matrix, matrix
	mov	eax, DWORD PTR [rsi+12]	; D.2505, src_16(D)->height
	lea	edx, [rax-1]	; D.2506,
	cmp	rdx, 1	; D.2506,
	jle	.L13	;,
	mov	r11d, DWORD PTR [rsi+8]	; D.2505, src_16(D)->width
	xor	r14d, r14d	; ivtmp.84
	mov	r13d, 1	; y,
	mov	r8d, r11d	;, D.2505
	.p2align 4,,10
	.p2align 3
.L14:
	lea	edx, [r8-1]	; D.2506,
	cmp	rdx, 1	; D.2506,
	jle	.L18	;,
	mov	r9d, 3	; ivtmp.78,
	mov	r11d, 1	; x,
	.p2align 4,,10
	.p2align 3
.L20:
	lea	r10, [r8+r8*2]	; D.2506,
	xor	esi, esi	; ivtmp.73
	xorps	xmm1, xmm1	; output
	imul	r8, r14	; D.2506, ivtmp.84
	add	r8, r9	; ivtmp.70, ivtmp.78
	add	r8, QWORD PTR [rbp+0]	; ivtmp.70, MEM[(const struct RGBImage *)src_16(D)]
.L19:
	lea	rdi, [rbx+rsi]	; D.2514,
	mov	rax, r8	; ivtmp.57, ivtmp.70
	mov	rdx, -1	; b,
.L17:
	movzx	ecx, BYTE PTR [rax-3]	; MEM[base: _129, offset: -3B], MEM[base: _129, offset: -3B]
	add	rdx, 1	; b,
	add	rax, 3	; ivtmp.57,
	movss	xmm0, DWORD PTR [rdi+rdx*4]	; D.2508, MEM[base: _232, index: _240, step: 4, offset: 0B]
	shufps	xmm0, xmm0, 0	; D.2508
	cvtsi2ss	xmm2, ecx	; D.2507, MEM[base: _129, offset: -3B]
	movzx	ecx, BYTE PTR [rax-5]	; MEM[base: _129, offset: -2B], MEM[base: _129, offset: -2B]
	cvtsi2ss	xmm4, ecx	; D.2507, MEM[base: _129, offset: -2B]
	movzx	ecx, BYTE PTR [rax-4]	; MEM[base: _129, offset: -1B], MEM[base: _129, offset: -1B]
	cmp	rdx, 2	; b,
	cvtsi2ss	xmm3, ecx	; D.2507, MEM[base: _129, offset: -1B]
	unpcklps	xmm2, xmm4	; tmp165, D.2507
	insertps	xmm3, DWORD PTR .LC0[rip], 0x10	; tmp163,
	movlhps	xmm2, xmm3	; D.2515, tmp163
	mulps	xmm0, xmm2	; D.2508, D.2515
	addps	xmm1, xmm0	; output, D.2508
	jne	.L17	;,
	add	rsi, 12	; ivtmp.73,
	add	r8, r10	; ivtmp.70, D.2506
	cmp	rsi, 36	; ivtmp.73,
	jne	.L19	;,
	mov	eax, DWORD PTR [r12+8]	; D.2506, dst_45(D)->width
	cvtps2dq	xmm1, xmm1	; tmp167, output
	packssdw	xmm1, xmm1	; tmp169, tmp167
	packuswb	xmm1, xmm1	; tmp170, tmp169
	add	r11, 1	; x,
	imul	rax, r13	; D.2506, y
	lea	rax, [rax+rax*2]	; D.2506,
	add	rax, r9	; ptr, ivtmp.78
	add	r9, 3	; ivtmp.78,
	add	rax, QWORD PTR [r12]	; ptr, dst_45(D)->data
	pextrb	BYTE PTR [rax], xmm1, 0	; *ptr_55, tmp170,
	pextrb	BYTE PTR [rax+1], xmm1, 1	; MEM[(uint8_t *)ptr_55 + 1B], tmp170,
	pextrb	BYTE PTR [rax+2], xmm1, 2	; MEM[(uint8_t *)ptr_55 + 2B], tmp170,
	mov	r8d, DWORD PTR [rbp+8]	;, src_16(D)->width
	lea	eax, [r8-1]	; D.2506,
	cmp	rax, r11	; D.2506, x
	jg	.L20	;,
	mov	eax, DWORD PTR [rbp+12]	; D.2505, src_16(D)->height
.L18:
	lea	edx, [rax-1]	; D.2506,
	add	r13, 1	; y,
	add	r14, 3	; ivtmp.84,
	cmp	rdx, r13	; D.2506, y
	jg	.L14	;,
.L13:
	xor	r13d, r13d	; y
	test	eax, eax	; D.2505
	je	.L24	;,
	.p2align 4,,10
	.p2align 3
.L30:
	mov	r8, r13	;, y
	xor	ecx, ecx	;
	mov	rdx, rbx	;, matrix
	mov	rsi, rbp	;, src
	mov	rdi, r12	;, dst
	call	computePoint	;
	mov	ecx, DWORD PTR [rbp+8]	; src_16(D)->width, src_16(D)->width
	mov	r8, r13	;, y
	mov	rdx, rbx	;, matrix
	mov	rsi, rbp	;, src
	mov	rdi, r12	;, dst
	add	r13, 1	; y,
	sub	ecx, 1	; D.2506,
	call	computePoint	;
	mov	eax, DWORD PTR [rbp+12]	; D.2506, src_16(D)->height
	cmp	rax, r13	; D.2506, y
	jg	.L30	;,
.L24:
	mov	eax, DWORD PTR [rbp+8]	; src_16(D)->width, src_16(D)->width
	mov	r13d, 1	; x,
	sub	eax, 1	; D.2506,
	cmp	rax, 1	; D.2506,
	jle	.L12	;,
	.p2align 4,,10
	.p2align 3
.L31:
	xor	r8d, r8d	;
	mov	rcx, r13	;, x
	mov	rdx, rbx	;, matrix
	mov	rsi, rbp	;, src
	mov	rdi, r12	;, dst
	call	computePoint	;
	mov	r8d, DWORD PTR [rbp+12]	; src_16(D)->height, src_16(D)->height
	mov	rcx, r13	;, x
	mov	rdx, rbx	;, matrix
	mov	rsi, rbp	;, src
	mov	rdi, r12	;, dst
	add	r13, 1	; x,
	sub	r8d, 1	;,
	call	computePoint	;
	mov	eax, DWORD PTR [rbp+8]	; src_16(D)->width, src_16(D)->width
	sub	eax, 1	; D.2506,
	cmp	rax, r13	; D.2506, x
	jg	.L31	;,
.L12:
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	ret
	.size	_Z6filterP8RGBImagePKS_PKf, .-_Z6filterP8RGBImagePKS_PKf
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.ident	"GCC: (Gentoo 4.8.0 p1.2, pie-0.5.5) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
