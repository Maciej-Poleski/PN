	.file	"mul.cxx"
	.intel_syntax noprefix
; GNU C++ (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) version 4.7.2 (x86_64-pc-linux-gnu)
;	compiled by GNU C version 4.7.2, GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D_GNU_SOURCE mul.cxx -masm=intel -mtune=generic
; -march=x86-64 -auxbase-strip mul.S -O3 -Os -fverbose-asm -fno-exceptions
; -fno-rtti
; options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
; -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
; -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
; -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
; -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations
; -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
; -findirect-inlining -finline -finline-atomics -finline-functions
; -finline-functions-called-once -finline-small-functions -fipa-cp
; -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
; -fira-share-save-slots -fira-share-spill-slots -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
; -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
; -fpeephole -fpeephole2 -fprefetch-loop-arrays -free -freg-struct-return
; -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
; -fsched-critical-path-heuristic -fsched-dep-count-heuristic
; -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
; -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
; -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
; -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
; -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
; -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
; -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
; -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
; -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
; -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
; -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
; -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
; -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
; -ftree-vect-loop-version -ftree-vrp -funit-at-a-time -funwind-tables
; -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
; -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
; -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
; -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.align 2
	.globl	_ZNK7NaturalmlERKS_
	.type	_ZNK7NaturalmlERKS_, @function
_ZNK7NaturalmlERKS_:
	push	r15	;
	mov	r15, rdx	; n, n
	push	r14	;
	mov	r14, rsi	; this, this
	push	r13	;
	push	r12	;
	push	rbp	;
	mov	rbp, rdi	; <retval>, .result_ptr
	push	rbx	;
	sub	rsp, 56	;,
	call	_ZN7NaturalC1Ev	;
	mov	rbx, QWORD PTR [r15+8]	; tmp129, n_14(D)->end
	sub	rbx, QWORD PTR [r15]	; tmp129, n_14(D)->begin
	mov	rdi, rbp	;, <retval>
	mov	r13, QWORD PTR [r14+8]	; tmp125, this_6(D)->end
	sub	r13, QWORD PTR [r14]	; tmp125, this_6(D)->begin
	sar	rbx, 3	; tmp129,
	sar	r13, 3	; tmp125,
	mov	rsi, rbx	; tmp130, tmp129
	imul	rsi, r13	; tmp130, tmp125
	call	_ZN7Natural6resizeEm	;
	mov	rsi, QWORD PTR [rbp+0]	; i, <retval>_5(D)->begin
	mov	rdx, QWORD PTR [rbp+8]	; D.10393, <retval>_5(D)->end
	mov	rax, rsi	; i, i
	jmp	.L2	;
.L3:
	mov	QWORD PTR [rax], 0	; MEM[base: i_1, offset: 0B],
	add	rax, 8	; i,
.L2:
	cmp	rax, rdx	; i, D.10393
	jb	.L3	;,
	mov	rdi, rsi	; ivtmp.19, i
	xor	r8d, r8d	; i
	jmp	.L4	;
.L5:
	mov	rdx, QWORD PTR [r15]	; n_14(D)->begin, n_14(D)->begin
	mov	r12, QWORD PTR [r14]	; this_6(D)->begin, this_6(D)->begin
	mov	r9, QWORD PTR [rsp+40]	;, %sfp
	mov	QWORD PTR [rsp+16], r10	; %sfp, carry
	mov	QWORD PTR [rsp+8], 0	; %sfp,
	mov	QWORD PTR [rsp+24], 0	; %sfp,
	mov	r11, QWORD PTR [rdx+rcx*8]	; D.10411, *D.10410_39
	mov	r10, QWORD PTR [rsp+8]	; tmp, %sfp
	mov	rax, r11	;, D.10411
	mul	QWORD PTR [r12+r9]	; *D.10407_34
	mov	r11, rax	; tmp,
	mov	rax, QWORD PTR [rdi+rcx*8]	;, MEM[base: D.10444_55, index: j_4, step: 8, offset: 0B]
	mov	QWORD PTR [rsp], rax	; %sfp,
	mov	r9, QWORD PTR [rsp]	; tmp, %sfp
	add	r9, QWORD PTR [rsp+16]	; tmp, %sfp
	adc	r10, QWORD PTR [rsp+24]	; tmp, %sfp
	add	r9, r11	; tmp, tmp
	adc	r10, rdx	; tmp, tmp
	mov	QWORD PTR [rdi+rcx*8], r9	; MEM[base: D.10444_55, index: j_4, step: 8, offset: 0B], tmp
	inc	rcx	; j
.L7:
	cmp	rcx, rbx	; j, tmp129
	jne	.L5	;,
	mov	QWORD PTR [rdi+rbx*8], r10	; MEM[base: D.10454_86, index: l_21, step: 8, offset: 0B], carry
	inc	r8	; i
	add	rdi, 8	; ivtmp.19,
.L4:
	cmp	r8, r13	; i, tmp125
	je	.L6	;,
	mov	r9, rdi	;, ivtmp.19
	xor	ecx, ecx	; j
	xor	r10d, r10d	; carry
	sub	r9, rsi	;, i
	mov	QWORD PTR [rsp+40], r9	; %sfp,
	jmp	.L7	;
.L6:
	mov	rdi, rbp	;, <retval>
	call	_ZN7Natural6shrinkEv	;
	add	rsp, 56	;,
	mov	rax, rbp	;, <retval>
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.size	_ZNK7NaturalmlERKS_, .-_ZNK7NaturalmlERKS_
	.ident	"GCC: (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
