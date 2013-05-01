	.file	"filter.cpp"
	.intel_syntax noprefix
; GNU C++ (Gentoo 4.8.0 p1.2, pie-0.5.5) version 4.8.0 (x86_64-pc-linux-gnu)
;	compiled by GNU C version 4.8.0, GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D_GNU_SOURCE filter.cpp -masm=intel -march=core2
; -auxbase-strip filter.S -O3 -Os -Wall -Wextra -std=c++11 -fverbose-asm
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
	xorps	xmm3, xmm3	; tmp247
	or	r9, -1	; ivtmp.51,
	push	r14	;
	movaps	xmm4, xmm3	; tmp248, tmp247
	push	r13	;
	push	r12	;
	push	rbp	;
	push	rbx	;
	movss	xmm0, DWORD PTR [rdx]	; *matrix_16(D), *matrix_16(D)
	movss	DWORD PTR [rsp-44], xmm0	; localMatrix, *matrix_16(D)
	movss	xmm0, DWORD PTR [rdx+4]	; MEM[(const float *)matrix_16(D) + 4B], MEM[(const float *)matrix_16(D) + 4B]
	movss	DWORD PTR [rsp-40], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 4B]
	movss	xmm0, DWORD PTR [rdx+8]	; MEM[(const float *)matrix_16(D) + 8B], MEM[(const float *)matrix_16(D) + 8B]
	movss	DWORD PTR [rsp-36], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 8B]
	movss	xmm0, DWORD PTR [rdx+12]	; MEM[(const float *)matrix_16(D) + 12B], MEM[(const float *)matrix_16(D) + 12B]
	movss	DWORD PTR [rsp-32], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 12B]
	movss	xmm0, DWORD PTR [rdx+16]	; MEM[(const float *)matrix_16(D) + 16B], MEM[(const float *)matrix_16(D) + 16B]
	movss	DWORD PTR [rsp-28], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 16B]
	movss	xmm0, DWORD PTR [rdx+20]	; MEM[(const float *)matrix_16(D) + 20B], MEM[(const float *)matrix_16(D) + 20B]
	movss	DWORD PTR [rsp-24], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 20B]
	movss	xmm0, DWORD PTR [rdx+24]	; MEM[(const float *)matrix_16(D) + 24B], MEM[(const float *)matrix_16(D) + 24B]
	movss	DWORD PTR [rsp-20], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 24B]
	movss	xmm0, DWORD PTR [rdx+28]	; MEM[(const float *)matrix_16(D) + 28B], MEM[(const float *)matrix_16(D) + 28B]
	movss	DWORD PTR [rsp-16], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 28B]
	movss	xmm0, DWORD PTR [rdx+32]	; MEM[(const float *)matrix_16(D) + 32B], MEM[(const float *)matrix_16(D) + 32B]
	movss	DWORD PTR [rsp-12], xmm0	; localMatrix, MEM[(const float *)matrix_16(D) + 32B]
.L2:
	mov	eax, DWORD PTR [rsi+12]	; D.2281, src_35(D)->height
	lea	rcx, [r9+1]	; D.2282,
	cmp	rcx, rax	; D.2282, D.2281
	jge	.L1	;,
	lea	rax, [r9+r9*2]	; D.2281,
	mov	rbp, -3	; ivtmp.46,
	mov	QWORD PTR [rsp-80], rax	; %sfp, D.2281
	xor	eax, eax	; j
.L13:
	mov	r11d, DWORD PTR [rsi+8]	; D.2281, src_35(D)->width
	cmp	rax, r11	; j, D.2281
	jge	.L10	;,
	mov	r12, QWORD PTR [rsp-80]	; D.2281, %sfp
	lea	rdx, [r11+r11*2]	; D.2279,
	mov	r10, r9	; ivtmp.41, ivtmp.51
	lea	rbx, [rsp-56]	; ivtmp.35,
	mov	QWORD PTR [rsp-72], rdx	; %sfp, D.2279
	xorps	xmm0, xmm0	; output
	imul	r12, r11	; D.2281, D.2281
	add	r12, rbp	; ivtmp.38, ivtmp.46
.L11:
	mov	r14, r10	; tmp232, ivtmp.41
	mov	r8, r12	; ivtmp.23, ivtmp.38
	or	rdx, -1	; b,
	shr	r14, 63	; tmp232,
.L6:
	mov	r13, rdx	; D.2281, b
	xorps	xmm2, xmm2	; D.2289
	add	r13, rax	; D.2281, j
	js	.L3	;,
	test	r14b, r14b	; tmp232
	jne	.L3	;,
	cmp	r13, r11	; D.2281, D.2281
	jge	.L3	;,
	mov	r13d, DWORD PTR [rsi+12]	; D.2281, src_35(D)->height
	cmp	r10, r13	; ivtmp.41, D.2281
	jge	.L3	;,
	mov	r13, QWORD PTR [rsi]	; D.2286, src_35(D)->data
	movzx	r15d, BYTE PTR [r13+0+r8]	; *_109, *_109
	cvtsi2ss	xmm5, r15d	; D.2283, *_109
	movzx	r15d, BYTE PTR [r13+1+r8]	; *_113, *_113
	movzx	r13d, BYTE PTR [r13+2+r8]	; *_117, *_117
	cvtsi2ss	xmm2, r15d	; D.2283, *_113
	movaps	xmm6, xmm5	; tmp195, D.2283
	cvtsi2ss	xmm1, r13d	; D.2283, *_117
	unpcklps	xmm6, xmm2	; tmp195, D.2283
	movaps	xmm2, xmm6	; tmp195, tmp195
	movss	DWORD PTR [rsp-60], xmm1	; %sfp, D.2283
	movss	xmm1, DWORD PTR [rsp-60]	; tmp193, %sfp
	movlhps	xmm2, xmm1	; D.2289, tmp193
.L3:
	inc	rdx	; b
	add	r8, 3	; ivtmp.23,
	movss	xmm1, DWORD PTR [rbx+12+rdx*4]	; D.2285, MEM[base: _4, index: _3, step: 4, offset: 12B]
	cmp	rdx, 2	; b,
	shufps	xmm1, xmm1, 0	; D.2285
	mulps	xmm1, xmm2	; D.2285, D.2289
	addps	xmm0, xmm1	; output, D.2285
	jne	.L6	;,
	add	rbx, 12	; ivtmp.35,
	add	r12, QWORD PTR [rsp-72]	; ivtmp.38, %sfp
	inc	r10	; ivtmp.41
	lea	rdx, [rsp-20]	; tmp258,
	cmp	rbx, rdx	; ivtmp.35, tmp258
	jne	.L11	;,
	mov	edx, DWORD PTR [rdi+8]	; D.2281, dst_52(D)->width
	movaps	xmm1, xmm0	; D.2283,
	imul	rdx, rcx	; D.2281, D.2282
	add	rdx, rax	; D.2281, j
	lea	rdx, [rdx+rdx*2]	; D.2286,
	add	rdx, QWORD PTR [rdi]	; D.2286, dst_52(D)->data
	ucomiss	xmm3, xmm1	; tmp247, D.2283
	ja	.L17	;,
	ucomiss	xmm1, DWORD PTR .LC1[rip]	; D.2283,
	mov	r8b, -1	; iftmp.2,
	ja	.L7	;,
	cvttss2si	r8d, xmm1	; iftmp.2, D.2283
	jmp	.L7	;
.L17:
	xor	r8d, r8d	; iftmp.2
.L7:
	mov	BYTE PTR [rdx], r8b	; *_60, iftmp.2
	movaps	xmm1, xmm0	; tmp212, output
	mov	edx, DWORD PTR [rdi+8]	; D.2281, dst_52(D)->width
	shufps	xmm1, xmm0, 85	; tmp212, output,
	mov	r8, QWORD PTR [rdi]	; dst_52(D)->data, dst_52(D)->data
	imul	rdx, rcx	; D.2281, D.2282
	add	rdx, rax	; D.2281, j
	ucomiss	xmm4, xmm1	; tmp248, D.2283
	lea	rdx, [rdx+rdx*2]	; D.2281,
	lea	r8, [r8+1+rdx]	; D.2286,
	ja	.L19	;,
	ucomiss	xmm1, DWORD PTR .LC1[rip]	; D.2283,
	mov	dl, -1	; iftmp.4,
	ja	.L8	;,
	cvttss2si	edx, xmm1	; iftmp.4, D.2283
	jmp	.L8	;
.L19:
	xor	edx, edx	; iftmp.4
.L8:
	mov	BYTE PTR [r8], dl	; *_72, iftmp.4
	unpckhps	xmm0, xmm0	; tmp222, output
	mov	edx, DWORD PTR [rdi+8]	; D.2281, dst_52(D)->width
	mov	r8, QWORD PTR [rdi]	; dst_52(D)->data, dst_52(D)->data
	imul	rdx, rcx	; D.2281, D.2282
	add	rdx, rax	; D.2281, j
	ucomiss	xmm4, xmm0	; tmp248, D.2283
	lea	rdx, [rdx+rdx*2]	; D.2281,
	lea	r8, [r8+2+rdx]	; D.2286,
	ja	.L21	;,
	ucomiss	xmm0, DWORD PTR .LC1[rip]	; D.2283,
	mov	dl, -1	; iftmp.6,
	ja	.L9	;,
	cvttss2si	edx, xmm0	; iftmp.6, D.2283
	jmp	.L9	;
.L21:
	xor	edx, edx	; iftmp.6
.L9:
	mov	BYTE PTR [r8], dl	; *_85, iftmp.6
	inc	rax	; j
	add	rbp, 3	; ivtmp.46,
	jmp	.L13	;
.L10:
	mov	r9, rcx	; ivtmp.51, D.2282
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1132396544
	.ident	"GCC: (Gentoo 4.8.0 p1.2, pie-0.5.5) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
