	.file	"filter.cpp"
	.intel_syntax noprefix
; GNU C++ (Gentoo 4.8.0 p1.2, pie-0.5.5) version 4.8.0 (x86_64-pc-linux-gnu)
;	compiled by GNU C version 4.8.0, GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D_GNU_SOURCE filter.cpp -masm=intel -march=core2
; -auxbase-strip filter.S -Os -Wall -Wextra -std=c++11 -fverbose-asm
; options enabled:  -faggressive-loop-optimizations
; -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
; -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
; -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
; -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
; -fearly-inlining -feliminate-unused-debug-types -fexceptions
; -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
; -fgcse-lm -fgnu-runtime -fguess-branch-probability -fhoist-adjacent-loads
; -fident -fif-conversion -fif-conversion2 -findirect-inlining -finline
; -finline-atomics -finline-functions -finline-functions-called-once
; -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
; -fipa-reference -fipa-sra -fira-hoist-pressure -fira-share-save-slots
; -fira-share-spill-slots -fivopts -fkeep-static-consts
; -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
; -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
; -foptimize-sibling-calls -fpartial-inlining -fpeephole -fpeephole2
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
; -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msahf
; -msse -msse2 -msse3 -mssse3 -mtls-direct-seg-refs

	.text
	.globl	_Z6filterP8RGBImagePKS_PKf
	.type	_Z6filterP8RGBImagePKS_PKf, @function
_Z6filterP8RGBImagePKS_PKf:
	push	r15	;
	movaps	xmm4, XMMWORD PTR .LC1[rip]	; tmp194,
	or	r9, -1	; ivtmp.43,
	push	r14	;
	xorps	xmm3, xmm3	; output
	push	r13	;
	push	r12	;
	push	rbp	;
	push	rbx	;
.L2:
	mov	eax, DWORD PTR [rsi+12]	; D.2252, src_10(D)->height
	lea	rbp, [r9+1]	; D.2257,
	cmp	rbp, rax	; D.2257, D.2252
	jge	.L1	;,
	lea	rax, [r9+r9*2]	; D.2252,
	mov	QWORD PTR [rsp-48], rax	; %sfp, D.2252
	xor	eax, eax	; x
.L10:
	mov	ebx, DWORD PTR [rsi+8]	; D.2252, src_10(D)->width
	cmp	rax, rbx	; x, D.2252
	jge	.L7	;,
	mov	r13, QWORD PTR [rsp-48]	; D.2251, %sfp
	lea	rcx, [rbx+rbx*2]	; D.2251,
	mov	r11, r9	; ivtmp.32, ivtmp.43
	mov	QWORD PTR [rsp-40], rcx	; %sfp, D.2251
	xor	r12d, r12d	; ivtmp.31
	xor	r10d, r10d	; ivtmp.29
	xorps	xmm0, xmm0	; output
	imul	r13, rbx	; D.2251, D.2252
.L8:
	lea	rcx, [r12+r13]	; D.2251,
	mov	r14, r11	; tmp183, ivtmp.32
	shr	r14, 63	; tmp183,
	mov	QWORD PTR [rsp-32], rcx	; %sfp, D.2251
	or	rcx, -1	; b,
	mov	QWORD PTR [rsp-24], r14	; %sfp, tmp183
	lea	r14, [rdx+r10]	; D.2257,
.L6:
	mov	r8, rcx	; D.2257, b
	xorps	xmm2, xmm2	; D.2263
	add	r8, rax	; D.2257, x
	js	.L3	;,
	cmp	BYTE PTR [rsp-24], 0	; %sfp,
	jne	.L3	;,
	cmp	r8, rbx	; D.2257, D.2252
	jge	.L3	;,
	mov	r15d, DWORD PTR [rsi+12]	; D.2252, src_10(D)->height
	cmp	r11, r15	; ivtmp.32, D.2252
	jge	.L3	;,
	lea	r8, [r8+r8*2]	; D.2251,
	add	r8, QWORD PTR [rsp-32]	; i, %sfp
	add	r8, QWORD PTR [rsi]	; i, src_10(D)->data
	movzx	r15d, BYTE PTR [r8]	; *i_75, *i_75
	cvtsi2ss	xmm5, r15d	; D.2254, *i_75
	movzx	r15d, BYTE PTR [r8+1]	; MEM[(const uint8_t *)i_75 + 1B], MEM[(const uint8_t *)i_75 + 1B]
	movzx	r8d, BYTE PTR [r8+2]	; MEM[(const uint8_t *)i_75 + 2B], MEM[(const uint8_t *)i_75 + 2B]
	cvtsi2ss	xmm2, r15d	; D.2254, MEM[(const uint8_t *)i_75 + 1B]
	movaps	xmm6, xmm5	; tmp160, D.2254
	cvtsi2ss	xmm1, r8d	; D.2254, MEM[(const uint8_t *)i_75 + 2B]
	unpcklps	xmm6, xmm2	; tmp160, D.2254
	movaps	xmm2, xmm6	; tmp160, tmp160
	movss	DWORD PTR [rsp-12], xmm1	; %sfp, D.2254
	movss	xmm1, DWORD PTR [rsp-12]	; tmp158, %sfp
	movlhps	xmm2, xmm1	; D.2263, tmp158
.L3:
	inc	rcx	; b
	movss	xmm1, DWORD PTR [r14+rcx*4]	; D.2255, MEM[base: _30, index: _92, step: 4, offset: 0B]
	cmp	rcx, 2	; b,
	shufps	xmm1, xmm1, 0	; D.2255
	mulps	xmm1, xmm2	; D.2255, D.2263
	addps	xmm0, xmm1	; output, D.2255
	jne	.L6	;,
	add	r10, 12	; ivtmp.29,
	add	r12, QWORD PTR [rsp-40]	; ivtmp.31, %sfp
	inc	r11	; ivtmp.32
	cmp	r10, 36	; ivtmp.29,
	jne	.L8	;,
	mov	ecx, DWORD PTR [rdi+8]	; D.2252, dst_37(D)->width
	maxps	xmm0, xmm3	; tmp166, output
	minps	xmm0, xmm4	; tmp166, tmp194
	imul	rcx, rbp	; D.2252, D.2257
	cvtps2dq	xmm0, xmm0	; tmp168, tmp166
	movd	r8d, xmm0	; D.2260,
	pshufd	xmm1, xmm0, 85	; tmp178, tmp168,
	punpckhdq	xmm0, xmm0	; tmp180, tmp168
	add	rcx, rax	; D.2252, x
	inc	rax	; x
	lea	rcx, [rcx+rcx*2]	; ptr,
	add	rcx, QWORD PTR [rdi]	; ptr, dst_37(D)->data
	mov	BYTE PTR [rcx], r8b	; *ptr_47, D.2260
	movd	r8d, xmm1	; D.2260,
	mov	BYTE PTR [rcx+1], r8b	; MEM[(uint8_t *)ptr_47 + 1B], D.2260
	movd	r8d, xmm0	; D.2260,
	mov	BYTE PTR [rcx+2], r8b	; MEM[(uint8_t *)ptr_47 + 2B], D.2260
	jmp	.L10	;
.L7:
	mov	r9, rbp	; ivtmp.43, D.2257
	jmp	.L2	;
.L1:
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.size	_Z6filterP8RGBImagePKS_PKf, .-_Z6filterP8RGBImagePKS_PKf
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1132396544
	.long	1132396544
	.long	1132396544
	.long	1132396544
	.ident	"GCC: (Gentoo 4.8.0 p1.2, pie-0.5.5) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
