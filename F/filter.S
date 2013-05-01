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
	.globl	filter
	.type	filter, @function
filter:
	push	r15	;
	or	r8, -1	; ivtmp.49,
	push	r14	;
	push	r13	;
	push	r12	;
	mov	r12b, r8b	; tmp191, ivtmp.49
	push	rbp	;
	push	rbx	;
.L2:
	mov	eax, DWORD PTR [rsi+12]	; D.2267, src_16(D)->height
	lea	rbp, [r8+1]	; D.2269,
	cmp	rbp, rax	; D.2269, D.2267
	jge	.L1	;,
	lea	rax, [r8+r8*2]	; D.2267,
	mov	QWORD PTR [rsp-48], rax	; %sfp, D.2267
	xor	eax, eax	; x
.L13:
	mov	ebx, DWORD PTR [rsi+8]	; D.2267, src_16(D)->width
	cmp	rax, rbx	; x, D.2267
	jge	.L10	;,
	lea	rcx, [rbx+rbx*2]	; D.2266,
	mov	r11, r8	; ivtmp.38, ivtmp.49
	xor	r13d, r13d	; ivtmp.37
	mov	QWORD PTR [rsp-40], rcx	; %sfp, D.2266
	mov	rcx, QWORD PTR [rsp-48]	; D.2266, %sfp
	xor	r10d, r10d	; ivtmp.35
	xorps	xmm0, xmm0	; output
	imul	rcx, rbx	; D.2266, D.2267
	mov	QWORD PTR [rsp-56], rcx	; %sfp, D.2266
.L11:
	mov	rcx, QWORD PTR [rsp-56]	; D.2266, %sfp
	mov	r14, r11	; tmp180, ivtmp.38
	shr	r14, 63	; tmp180,
	mov	QWORD PTR [rsp-24], r14	; %sfp, tmp180
	lea	r14, [rdx+r10]	; D.2269,
	add	rcx, r13	; D.2266, ivtmp.37
	mov	QWORD PTR [rsp-32], rcx	; %sfp, D.2266
	or	rcx, -1	; b,
.L6:
	mov	r9, rcx	; D.2269, b
	xorps	xmm2, xmm2	; D.2278
	add	r9, rax	; D.2269, x
	js	.L3	;,
	cmp	BYTE PTR [rsp-24], 0	; %sfp,
	jne	.L3	;,
	cmp	r9, rbx	; D.2269, D.2267
	jge	.L3	;,
	mov	r15d, DWORD PTR [rsi+12]	; D.2267, src_16(D)->height
	cmp	r11, r15	; ivtmp.38, D.2267
	jge	.L3	;,
	lea	r9, [r9+r9*2]	; D.2266,
	add	r9, QWORD PTR [rsp-32]	; i, %sfp
	add	r9, QWORD PTR [rsi]	; i, src_16(D)->data
	movzx	r15d, BYTE PTR [r9]	; *i_79, *i_79
	cvtsi2ss	xmm3, r15d	; D.2271, *i_79
	movzx	r15d, BYTE PTR [r9+1]	; MEM[(const uint8_t *)i_79 + 1B], MEM[(const uint8_t *)i_79 + 1B]
	movzx	r9d, BYTE PTR [r9+2]	; MEM[(const uint8_t *)i_79 + 2B], MEM[(const uint8_t *)i_79 + 2B]
	cvtsi2ss	xmm2, r15d	; D.2271, MEM[(const uint8_t *)i_79 + 1B]
	movaps	xmm4, xmm3	; tmp161, D.2271
	cvtsi2ss	xmm1, r9d	; D.2271, MEM[(const uint8_t *)i_79 + 2B]
	unpcklps	xmm4, xmm2	; tmp161, D.2271
	movaps	xmm2, xmm4	; tmp161, tmp161
	movss	DWORD PTR [rsp-12], xmm1	; %sfp, D.2271
	movss	xmm1, DWORD PTR [rsp-12]	; tmp159, %sfp
	movlhps	xmm2, xmm1	; D.2278, tmp159
.L3:
	inc	rcx	; b
	movss	xmm1, DWORD PTR [r14+rcx*4]	; D.2272, MEM[base: _10, index: _92, step: 4, offset: 0B]
	cmp	rcx, 2	; b,
	shufps	xmm1, xmm1, 0	; D.2272
	mulps	xmm1, xmm2	; D.2272, D.2278
	addps	xmm0, xmm1	; output, D.2272
	jne	.L6	;,
	add	r10, 12	; ivtmp.35,
	add	r13, QWORD PTR [rsp-40]	; ivtmp.37, %sfp
	inc	r11	; ivtmp.38
	cmp	r10, 36	; ivtmp.35,
	jne	.L11	;,
	mov	ecx, DWORD PTR [rdi+8]	; D.2267, dst_38(D)->width
	cvtps2dq	xmm0, xmm0	; D.2273, output
	movd	r9d, xmm0	; D.2275,
	imul	rcx, rbp	; D.2267, D.2269
	add	rcx, rax	; D.2267, x
	lea	rcx, [rcx+rcx*2]	; ptr,
	add	rcx, QWORD PTR [rdi]	; ptr, dst_38(D)->data
	test	r9d, r9d	; D.2275
	js	.L17	;,
	cmp	r9d, 255	; D.2275,
	cmovg	r9d, r12d	; D.2275,, iftmp.2, tmp191
	jmp	.L7	;
.L17:
	xor	r9d, r9d	; iftmp.2
.L7:
	mov	BYTE PTR [rcx], r9b	; *ptr_48, iftmp.2
	pshufd	xmm1, xmm0, 85	; tmp173, D.2273,
	movd	r9d, xmm1	; D.2275,
	test	r9d, r9d	; D.2275
	js	.L19	;,
	cmp	r9d, 255	; D.2275,
	cmovg	r9d, r12d	; D.2275,, iftmp.5, tmp191
	jmp	.L8	;
.L19:
	xor	r9d, r9d	; iftmp.5
.L8:
	mov	BYTE PTR [rcx+1], r9b	; MEM[(uint8_t *)ptr_48 + 1B], iftmp.5
	punpckhdq	xmm0, xmm0	; tmp174, D.2273
	movd	r9d, xmm0	; D.2275,
	test	r9d, r9d	; D.2275
	js	.L21	;,
	cmp	r9d, 255	; D.2275,
	cmovg	r9d, r12d	; D.2275,, iftmp.8, tmp191
	jmp	.L9	;
.L21:
	xor	r9d, r9d	; iftmp.8
.L9:
	mov	BYTE PTR [rcx+2], r9b	; MEM[(uint8_t *)ptr_48 + 2B], iftmp.8
	inc	rax	; x
	jmp	.L13	;
.L10:
	mov	r8, rbp	; ivtmp.49, D.2269
	jmp	.L2	;
.L1:
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.size	filter, .-filter
	.ident	"GCC: (Gentoo 4.8.0 p1.2, pie-0.5.5) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
