	.file	"natural.cpp"
	.intel_syntax noprefix
; GNU C++ (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) version 4.7.2 (x86_64-pc-linux-gnu)
;	compiled by GNU C version 4.7.2, GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D_GNU_SOURCE natural.cpp -masm=intel -mtune=generic
; -march=x86-64 -auxbase-strip natural2.S -Os -fverbose-asm
; options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
; -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
; -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
; -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
; -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
; -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
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
	.type	_ZL19parseBigendianQwordPKci, @function
_ZL19parseBigendianQwordPKci:
	xor	edx, edx	; ivtmp.42
	xor	eax, eax	; result
	jmp	.L2	;
.L5:
	mov	rcx, rdx	; tmp105, ivtmp.42
	neg	rcx	; tmp105
	movsx	r8d, BYTE PTR [rdi+15+rcx]	; D.4750, MEM[base: n_9(D), index: D.4941_34, offset: 15B]
	cmp	r8b, 57	; D.4750,
	jg	.L3	;,
	sub	r8d, 48	; tmp107,
	jmp	.L6	;
.L3:
	sub	r8d, 87	; tmp109,
.L6:
	lea	ecx, [0+rdx*4]	; tmp110,
	movsx	r8, r8d	; D.4922, tmp109
	inc	rdx	; ivtmp.42
	sal	r8, cl	; tmp111, tmp110
	or	rax, r8	; result, tmp111
.L2:
	cmp	esi, edx	; length, ivtmp.42
	jg	.L5	;,
	ret
	.size	_ZL19parseBigendianQwordPKci, .-_ZL19parseBigendianQwordPKci
	.align 2
	.globl	_ZN7Natural5shiftEm
	.type	_ZN7Natural5shiftEm, @function
_ZN7Natural5shiftEm:
	push	r14	;
	mov	r14, rsi	; i, i
	push	r13	;
	push	r12	;
	push	rbp	;
	mov	rbp, rdi	; this, this
	push	rbx	;
	mov	r12, QWORD PTR [rdi]	; oldBegin, this_3(D)->begin
	mov	rbx, QWORD PTR [rdi+8]	; tmp92, this_3(D)->end
	sub	rbx, r12	; tmp92, oldBegin
	sar	rbx, 3	; tmp92,
	lea	r13, [rbx+rsi]	; tmp93,
	sal	r13, 3	; D.4776,
	mov	rdi, r13	;, D.4776
	call	malloc	;
	add	r13, rax	; tmp95, D.4777
	mov	QWORD PTR [rbp+0], rax	; this_3(D)->begin, D.4777
	xor	edx, edx	; ii
	mov	QWORD PTR [rbp+8], r13	; this_3(D)->end, tmp95
	jmp	.L8	;
.L9:
	mov	QWORD PTR [rax+rdx*8], 0	; MEM[base: D.4777_16, index: ii_1, step: 8, offset: 0B],
	inc	rdx	; ii
.L8:
	cmp	rdx, r14	; ii, i
	jne	.L9	;,
	lea	rdx, [rax+rdx*8]	; D.4960,
	xor	eax, eax	; ii
	jmp	.L10	;
.L11:
	mov	rcx, QWORD PTR [r12+rax*8]	; D.4798, MEM[base: oldBegin_4, index: ii_2, step: 8, offset: 0B]
	mov	QWORD PTR [rdx+rax*8], rcx	; MEM[base: D.4960_48, index: ii_2, step: 8, offset: 0B], D.4798
	inc	rax	; ii
.L10:
	cmp	rax, rbx	; ii, tmp92
	jne	.L11	;,
	pop	rbx	;
	pop	rbp	;
	mov	rdi, r12	;, oldBegin
	pop	r12	;
	pop	r13	;
	pop	r14	;
	jmp	free	;
	.size	_ZN7Natural5shiftEm, .-_ZN7Natural5shiftEm
	.align 2
	.globl	_ZN7NaturalC2Ev
	.type	_ZN7NaturalC2Ev, @function
_ZN7NaturalC2Ev:
	push	rbx	;
	mov	rbx, rdi	; this, this
	mov	edi, 8	;,
	call	malloc	;
	lea	rdx, [rax+8]	; tmp63,
	mov	QWORD PTR [rbx], rax	; this_2(D)->begin, tmp62
	mov	QWORD PTR [rbx+8], rdx	; this_2(D)->end, tmp63
	mov	QWORD PTR [rax], 0	; MEM[(long unsigned int *)D.4766_1],
	pop	rbx	;
	ret
	.size	_ZN7NaturalC2Ev, .-_ZN7NaturalC2Ev
	.globl	_ZN7NaturalC1Ev
	.set	_ZN7NaturalC1Ev,_ZN7NaturalC2Ev
	.align 2
	.globl	_ZN7NaturalC2Em
	.type	_ZN7NaturalC2Em, @function
_ZN7NaturalC2Em:
	push	rbp	;
	mov	rbp, rsi	; n, n
	push	rbx	;
	mov	rbx, rdi	; this, this
	mov	edi, 8	;,
	push	rax	;
	call	malloc	;
	lea	rdx, [rax+8]	; tmp64,
	mov	QWORD PTR [rbx], rax	; this_2(D)->begin, tmp63
	mov	QWORD PTR [rbx+8], rdx	; this_2(D)->end, tmp64
	mov	QWORD PTR [rax], rbp	; MEM[(long unsigned int *)D.4763_1], n
	pop	rdx	;
	pop	rbx	;
	pop	rbp	;
	ret
	.size	_ZN7NaturalC2Em, .-_ZN7NaturalC2Em
	.globl	_ZN7NaturalC1Em
	.set	_ZN7NaturalC1Em,_ZN7NaturalC2Em
	.align 2
	.globl	_ZN7NaturalC2EPKc
	.type	_ZN7NaturalC2EPKc, @function
_ZN7NaturalC2EPKc:
	push	r15	;
	xor	eax, eax	; tmp172
	or	rcx, -1	; tmp171,
	push	r14	;
	push	r13	;
	xor	r13d, r13d	; tmp174
	push	r12	;
	mov	r12, rsi	; n, n
	push	rbp	;
	mov	rbp, rdi	; this, this
	mov	rdi, rsi	; n, n
	push	rbx	;
	sub	rsp, 24	;,
	repnz scasb
	not	rcx	; tmp169
	lea	rbx, [rcx-1]	; l,
	test	bl, 15	; l,
	mov	rax, rbx	; tmp176, l
	setne	r13b	;, tmp174
	shr	rax, 4	; tmp176,
	add	r13, rax	; tmp177, tmp176
	sal	r13, 3	; D.4712,
	mov	rdi, r13	;, D.4712
	call	malloc	;
	mov	rdx, rbx	;, l
	mov	QWORD PTR [rbp+0], rax	; this_13(D)->begin, D.4713
	add	r13, rax	; D.4721, D.4713
	mov	r14, rax	; D.4713,
	movsx	rax, ebx	; D.5015, l
	mov	QWORD PTR [rbp+8], r13	; this_13(D)->end, D.4721
	sub	rdx, rax	;, D.5015
	lea	rax, [r12-16+rax]	;,
	xor	ebp, ebp	; ivtmp.92
	mov	QWORD PTR [rsp], rdx	; %sfp,
	mov	QWORD PTR [rsp+8], rax	; %sfp,
	jmp	.L18	;
.L19:
	mov	rax, QWORD PTR [rsp]	; tmp181, %sfp
	mov	rdi, QWORD PTR [rsp+8]	; tmp185, %sfp
	mov	esi, 16	;,
	add	rax, rbp	; tmp181, ivtmp.92
	sub	rdi, rbp	; tmp185, ivtmp.92
	add	rbp, 16	; ivtmp.92,
	shr	rax, 4	; tmp181,
	lea	r15, [r14+rax*8]	; D.4731,
	call	_ZL19parseBigendianQwordPKci	;
	mov	QWORD PTR [r15], rax	; *D.4731_29, D.4735
.L18:
	mov	esi, ebx	; i,
	sub	esi, ebp	; i, ivtmp.92
	cmp	esi, 15	; i,
	jg	.L19	;,
	test	esi, esi	; i
	jle	.L17	;,
	movsx	rax, esi	; i, i
	lea	rdi, [r12-16+rax]	; tmp188,
	call	_ZL19parseBigendianQwordPKci	;
	mov	QWORD PTR [r13-8], rax	; MEM[(long unsigned int *)D.4721_21 + -8B], D.4740
.L17:
	add	rsp, 24	;,
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.size	_ZN7NaturalC2EPKc, .-_ZN7NaturalC2EPKc
	.globl	_ZN7NaturalC1EPKc
	.set	_ZN7NaturalC1EPKc,_ZN7NaturalC2EPKc
	.align 2
	.globl	_ZN7NaturalC2ERKS_
	.type	_ZN7NaturalC2ERKS_, @function
_ZN7NaturalC2ERKS_:
	push	r12	;
	mov	r12, rdi	; this, this
	push	rbp	;
	mov	rbp, rsi	; n, n
	push	rbx	;
	mov	rbx, QWORD PTR [rsi+8]	; D.4701, n_1(D)->end
	sub	rbx, QWORD PTR [rsi]	; D.4701, n_1(D)->begin
	and	rbx, -8	; D.4701,
	mov	rdi, rbx	;, D.4701
	call	malloc	;
	lea	rdx, [rax+rbx]	; tmp78,
	mov	QWORD PTR [r12], rax	; this_11(D)->begin, tmp77
	mov	rcx, rbx	; D.4701, D.4701
	mov	rsi, QWORD PTR [rbp+0]	; n_1(D)->begin, n_1(D)->begin
	mov	rdi, rax	; D.4702, tmp77
	mov	QWORD PTR [r12+8], rdx	; this_11(D)->end, tmp78
	rep movsb
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	ret
	.size	_ZN7NaturalC2ERKS_, .-_ZN7NaturalC2ERKS_
	.globl	_ZN7NaturalC1ERKS_
	.set	_ZN7NaturalC1ERKS_,_ZN7NaturalC2ERKS_
	.align 2
	.globl	_ZN7NaturalaSERKS_
	.type	_ZN7NaturalaSERKS_, @function
_ZN7NaturalaSERKS_:
	push	r12	;
	mov	r12, rsi	; n, n
	push	rbp	;
	mov	rbp, rdi	; this, this
	push	rbx	;
	mov	rdi, QWORD PTR [rdi]	;, this_1(D)->begin
	call	free	;
	mov	rbx, QWORD PTR [r12+8]	; D.4528, n_3(D)->end
	sub	rbx, QWORD PTR [r12]	; D.4528, n_3(D)->begin
	and	rbx, -8	; D.4528,
	mov	rdi, rbx	;, D.4528
	call	malloc	;
	lea	rdx, [rax+rbx]	; tmp80,
	mov	QWORD PTR [rbp+0], rax	; this_1(D)->begin, tmp79
	mov	rdi, rax	; D.4529, tmp79
	mov	rsi, QWORD PTR [r12]	; n_3(D)->begin, n_3(D)->begin
	mov	rcx, rbx	; D.4528, D.4528
	mov	rax, rbp	;, this
	mov	QWORD PTR [rbp+8], rdx	; this_1(D)->end, tmp80
	rep movsb
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	ret
	.size	_ZN7NaturalaSERKS_, .-_ZN7NaturalaSERKS_
	.align 2
	.globl	_ZNK7NaturaleqERKS_
	.type	_ZNK7NaturaleqERKS_, @function
_ZNK7NaturaleqERKS_:
	mov	r8, QWORD PTR [rdi]	; D.4504, this_2(D)->begin
	mov	rdx, QWORD PTR [rdi+8]	; tmp81, this_2(D)->end
	xor	eax, eax	; D.4517
	mov	rdi, QWORD PTR [rsi]	; D.4510, n_10(D)->begin
	mov	rcx, QWORD PTR [rsi+8]	; tmp85, n_10(D)->end
	sub	rdx, r8	; tmp81, D.4504
	sub	rcx, rdi	; tmp85, D.4510
	sar	rdx, 3	; tmp81,
	sar	rcx, 3	; tmp85,
	cmp	rdx, rcx	; tmp81, tmp85
	jne	.L31	;,
	push	rcx	;
	mov	rsi, rdi	;, D.4510
	sal	rdx, 3	; tmp86,
	mov	rdi, r8	;, D.4504
	call	memcmp	;
	pop	rsi	;
	test	eax, eax	; tmp87
	sete	al	;, D.4517
.L31:
	ret
	.size	_ZNK7NaturaleqERKS_, .-_ZNK7NaturaleqERKS_
	.align 2
	.globl	_ZNK7NaturalneERKS_
	.type	_ZNK7NaturalneERKS_, @function
_ZNK7NaturalneERKS_:
	push	r8	;
	call	_ZNK7NaturaleqERKS_	;
	pop	r9	;
	xor	eax, 1	; tmp64,
	ret
	.size	_ZNK7NaturalneERKS_, .-_ZNK7NaturalneERKS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%lx"
.LC1:
	.string	"%.16lx"
	.text
	.align 2
	.globl	_ZNK7Natural5PrintEv
	.type	_ZNK7Natural5PrintEv, @function
_ZNK7Natural5PrintEv:
	push	rbp	;
	mov	rbp, rdi	; this, this
	mov	esi, OFFSET FLAT:.LC0	;,
	push	rbx	;
	push	r11	;
	mov	rax, QWORD PTR [rdi+8]	; this_2(D)->end, this_2(D)->end
	mov	edi, 1	;,
	mov	rdx, QWORD PTR [rax-8]	; MEM[(long unsigned int *)D.4478_3 + -8B], MEM[(long unsigned int *)D.4478_3 + -8B]
	xor	eax, eax	;
	call	__printf_chk	;
	mov	rbx, QWORD PTR [rbp+8]	; i, this_2(D)->end
	sub	rbx, 16	; i,
	jmp	.L35	;
.L36:
	mov	rdx, QWORD PTR [rbx]	;, MEM[base: i_1, offset: 0B]
	mov	esi, OFFSET FLAT:.LC1	;,
	mov	edi, 1	;,
	xor	eax, eax	;
	sub	rbx, 8	; i,
	call	__printf_chk	;
.L35:
	cmp	rbx, QWORD PTR [rbp+0]	; i, this_2(D)->begin
	jae	.L36	;,
	pop	r10	;
	pop	rbx	;
	pop	rbp	;
	mov	edi, 10	;,
	jmp	putchar	;
	.size	_ZNK7Natural5PrintEv, .-_ZNK7Natural5PrintEv
	.align 2
	.globl	_ZNK7Natural4SizeEv
	.type	_ZNK7Natural4SizeEv, @function
_ZNK7Natural4SizeEv:
	mov	rcx, QWORD PTR [rdi]	; D.4450, this_2(D)->begin
	mov	rax, QWORD PTR [rdi+8]	; tmp108, this_2(D)->end
	sub	rax, rcx	; tmp108, D.4450
	sar	rax, 3	; tmp108,
	dec	eax	; D.4455
	movsx	rdx, eax	; D.4455, D.4455
	lea	rdi, [rcx+rdx*8]	; D.5107,
	xor	edx, edx	; ivtmp.138
	jmp	.L39	;
.L41:
	inc	rdx	; ivtmp.138
	imul	r8, rdx, -8	; tmp111, ivtmp.138,
	cmp	QWORD PTR [rdi+8+r8], 0	; MEM[base: D.5107_61, index: D.5108_62, offset: 8B],
	je	.L39	;,
.L42:
	mov	edi, esi	; tmp112, selectedQword
	movsx	rsi, esi	; selectedQword, selectedQword
	xor	eax, eax	; result
	sal	edi, 6	; tmp112,
	mov	rdx, QWORD PTR [rcx+rsi*8]	; n, *D.4463_24
	movsx	rdi, edi	; D.4469, tmp112
	jmp	.L40	;
.L39:
	mov	esi, eax	; selectedQword, D.4455
	sub	esi, edx	; selectedQword, ivtmp.138
	test	esi, esi	; selectedQword
	jg	.L41	;,
	jmp	.L42	;
.L43:
	shr	rdx	; n
	inc	rax	; result
.L40:
	test	rdx, rdx	; n
	jne	.L43	;,
	add	rax, rdi	; tmp114, D.4469
	ret
	.size	_ZNK7Natural4SizeEv, .-_ZNK7Natural4SizeEv
	.align 2
	.globl	_ZNK7NaturalcvbEv
	.type	_ZNK7NaturalcvbEv, @function
_ZNK7NaturalcvbEv:
	call	_ZNK7Natural4SizeEv	;
	test	rax, rax	; D.4492
	setne	al	;, tmp64
	ret
	.size	_ZNK7NaturalcvbEv, .-_ZNK7NaturalcvbEv
	.align 2
	.globl	_ZNK7NaturalltERKS_
	.type	_ZNK7NaturalltERKS_, @function
_ZNK7NaturalltERKS_:
	push	r12	;
	push	rbp	;
	mov	rbp, rsi	; n, n
	push	rbx	;
	mov	rbx, rdi	; this, this
	call	_ZNK7Natural4SizeEv	;
	mov	rdi, rbp	;, n
	mov	r12, rax	; D.4549,
	call	_ZNK7Natural4SizeEv	;
	cmp	r12, rax	; D.4549, D.4550
	mov	dl, 1	; D.5116,
	jb	.L47	;,
	mov	dl, 0	; D.5116,
	ja	.L47	;,
	mov	rsi, QWORD PTR [rbx]	; D.5122, this_3(D)->begin
	mov	rax, QWORD PTR [rbx+8]	; tmp91, this_3(D)->end
	xor	ecx, ecx	; ivtmp.158
	sub	rax, rsi	; tmp91, D.5122
	sar	rax, 3	; tmp91,
	dec	eax	; D.5127
	movsx	rdx, eax	; D.5127, D.5127
	sal	rdx, 3	; ivtmp.172,
	jmp	.L48	;
.L50:
	mov	rdi, QWORD PTR [rbp+0]	; n_5(D)->begin, n_5(D)->begin
	mov	r8, QWORD PTR [rsi+rdx]	; D.5131, MEM[base: D.5122_39, index: ivtmp.172_60, offset: 0B]
	inc	rcx	; ivtmp.158
	mov	rdi, QWORD PTR [rdi+rdx]	; D.5134, *D.5133_52
	sub	rdx, 8	; ivtmp.172,
	cmp	r8, rdi	; D.5131, D.5134
	jb	.L53	;,
.L48:
	cmp	eax, ecx	; D.5127, ivtmp.158
	jns	.L50	;,
	xor	edx, edx	; D.5116
	jmp	.L47	;
.L53:
	mov	dl, 1	; D.5116,
.L47:
	pop	rbx	;
	pop	rbp	;
	mov	al, dl	;, D.5116
	pop	r12	;
	ret
	.size	_ZNK7NaturalltERKS_, .-_ZNK7NaturalltERKS_
	.align 2
	.globl	_ZNK7NaturalgeERKS_
	.type	_ZNK7NaturalgeERKS_, @function
_ZNK7NaturalgeERKS_:
	call	_ZNK7NaturalltERKS_	;
	xor	eax, 1	; tmp64,
	ret
	.size	_ZNK7NaturalgeERKS_, .-_ZNK7NaturalgeERKS_
	.align 2
	.globl	_ZNK7NaturalleERKS_
	.type	_ZNK7NaturalleERKS_, @function
_ZNK7NaturalleERKS_:
	push	rbp	;
	mov	rbp, rsi	; n, n
	push	rbx	;
	mov	rbx, rdi	; this, this
	push	rax	;
	call	_ZNK7NaturalltERKS_	;
	test	al, al	; D.4543
	jne	.L57	;,
	mov	rsi, rbp	;, n
	mov	rdi, rbx	;, this
	pop	rbp	;
	pop	rbx	;
	pop	rbp	;
	jmp	_ZNK7NaturaleqERKS_	;
.L57:
	pop	rbx	;
	pop	rbx	;
	mov	al, 1	;,
	pop	rbp	;
	ret
	.size	_ZNK7NaturalleERKS_, .-_ZNK7NaturalleERKS_
	.align 2
	.globl	_ZNK7NaturalgtERKS_
	.type	_ZNK7NaturalgtERKS_, @function
_ZNK7NaturalgtERKS_:
	push	rax	;
	call	_ZNK7NaturalleERKS_	;
	pop	rdx	;
	xor	eax, 1	; tmp64,
	ret
	.size	_ZNK7NaturalgtERKS_, .-_ZNK7NaturalgtERKS_
	.align 2
	.globl	_ZN7Natural6resizeEm
	.type	_ZN7Natural6resizeEm, @function
_ZN7Natural6resizeEm:
	push	rbp	;
	lea	rbp, [0+rsi*8]	; D.4444,
	push	rbx	;
	mov	rbx, rdi	; this, this
	mov	rsi, rbp	;, D.4444
	push	rcx	;
	mov	rdi, QWORD PTR [rdi]	;, this_3(D)->begin
	call	realloc	;
	add	rbp, rax	; tmp65, D.4446
	mov	QWORD PTR [rbx], rax	; this_3(D)->begin, D.4446
	mov	QWORD PTR [rbx+8], rbp	; this_3(D)->end, tmp65
	pop	rsi	;
	pop	rbx	;
	pop	rbp	;
	ret
	.size	_ZN7Natural6resizeEm, .-_ZN7Natural6resizeEm
	.align 2
	.globl	_ZN7Natural6shrinkEv
	.type	_ZN7Natural6shrinkEv, @function
_ZN7Natural6shrinkEv:
	mov	rdx, QWORD PTR [rdi]	; D.4438, this_2(D)->begin
	add	rdx, 8	; D.4438,
.L66:
	mov	rax, QWORD PTR [rdi+8]	; D.4439, this_2(D)->end
	cmp	rdx, rax	; D.4438, D.4439
	jae	.L63	;,
	cmp	QWORD PTR [rax-8], 0	; MEM[(long unsigned int *)D.4439_5 + -8B],
	jne	.L63	;,
	sub	rax, 8	; tmp66,
	mov	QWORD PTR [rdi+8], rax	; this_2(D)->end, tmp66
	jmp	.L66	;
.L63:
	ret
	.size	_ZN7Natural6shrinkEv, .-_ZN7Natural6shrinkEv
	.align 2
	.globl	_ZNK7NaturalplERKS_
	.type	_ZNK7NaturalplERKS_, @function
_ZNK7NaturalplERKS_:
	push	r15	;
	push	r14	;
	push	r13	;
	push	r12	;
	mov	r12, rdx	; n, n
	push	rbp	;
	push	rbx	;
	mov	rbx, rdi	; <retval>, .result_ptr
	sub	rsp, 72	;,
	mov	QWORD PTR [rsp], rsi	;, tmp37
	call	_ZN7NaturalC1Ev	;
	mov	r8, QWORD PTR [rsp]	;,
	mov	rbp, QWORD PTR [r12+8]	; tmp120, n_16(D)->end
	sub	rbp, QWORD PTR [r12]	; tmp120, n_16(D)->begin
	mov	rdi, QWORD PTR [rbx]	;, <retval>_7(D)->begin
	mov	r15, QWORD PTR [r8+8]	; tmp116, this_8(D)->end
	sub	r15, QWORD PTR [r8]	; tmp116, this_8(D)->begin
	sar	rbp, 3	; tmp120,
	sar	r15, 3	; tmp116,
	cmp	rbp, r15	; tmp120, tmp116
	mov	rax, r15	; tmp121, tmp116
	cmovae	rax, rbp	; tmp120,, tmp121
	lea	rdx, [8+rax*8]	; D.4612,
	mov	rsi, rdx	;, D.4612
	mov	QWORD PTR [rsp+8], rdx	;,
	call	realloc	;
	mov	rdx, QWORD PTR [rsp+8]	;,
	mov	QWORD PTR [rbx], rax	; <retval>_7(D)->begin, i
	mov	rcx, rax	; i, i
	mov	r8, QWORD PTR [rsp]	;,
	add	rdx, rax	; D.4617, i
	mov	QWORD PTR [rbx+8], rdx	; <retval>_7(D)->end, D.4617
	jmp	.L68	;
.L69:
	mov	QWORD PTR [rcx], 0	; MEM[base: i_1, offset: 0B],
	add	rcx, 8	; i,
.L68:
	cmp	rcx, rdx	; i, D.4617
	jb	.L69	;,
	mov	rdi, rax	; i, i
	lea	rcx, [0+r15*8]	; tmp123,
	mov	rsi, QWORD PTR [r8]	; this_8(D)->begin, this_8(D)->begin
	xor	eax, eax	; ivtmp.203
	xor	edx, edx	; carry
	rep movsb
	jmp	.L70	;
.L71:
	mov	rcx, QWORD PTR [rbx]	; <retval>_7(D)->begin, <retval>_7(D)->begin
	mov	QWORD PTR [rsp+48], rdx	; %sfp, carry
	mov	QWORD PTR [rsp+24], 0	; %sfp,
	mov	QWORD PTR [rsp+40], 0	; %sfp,
	mov	rdi, QWORD PTR [rsp+24]	; r, %sfp
	mov	QWORD PTR [rsp+56], 0	; %sfp,
	lea	rcx, [rcx+rax*8]	; D.4633,
	mov	rsi, QWORD PTR [rcx]	;, *D.4633_49
	mov	QWORD PTR [rsp+16], rsi	; %sfp,
	mov	rsi, QWORD PTR [r12]	; n_16(D)->begin, n_16(D)->begin
	mov	rsi, QWORD PTR [rsi+rax*8]	;, *D.4635_55
	mov	QWORD PTR [rsp+32], rsi	; %sfp,
	mov	rsi, QWORD PTR [rsp+16]	; r, %sfp
	add	rsi, QWORD PTR [rsp+32]	; r, %sfp
	adc	rdi, QWORD PTR [rsp+40]	; r, %sfp
	add	rsi, QWORD PTR [rsp+48]	; r, %sfp
	adc	rdi, QWORD PTR [rsp+56]	; r, %sfp
	inc	rax	; ivtmp.203
	mov	QWORD PTR [rcx], rsi	; *D.4633_49, r
	mov	rdx, rdi	; carry, r
.L70:
	cmp	rax, rbp	; ivtmp.203, tmp120
	jne	.L71	;,
	cdqe
	xor	ecx, ecx	; ivtmp.199
	sal	rax, 3	; D.5192,
	jmp	.L72	;
.L73:
	lea	rdx, [rcx+rax]	; D.4633,
	add	rdx, QWORD PTR [rbx]	; D.4633, <retval>_7(D)->begin
	xor	r14d, r14d	; r
	mov	rdi, r14	; r, r
	mov	r13, QWORD PTR [rdx]	; r, *D.4633_73
	mov	rsi, r13	; r, r
	add	rsi, 1	; r,
	adc	rdi, 0	; r,
	mov	QWORD PTR [rdx], rsi	; *D.4633_73, r
	add	rcx, 8	; ivtmp.199,
	mov	rdx, rdi	; carry, r
.L72:
	test	rdx, rdx	; carry
	jne	.L73	;,
	mov	rdi, rbx	;, <retval>
	call	_ZN7Natural6shrinkEv	;
	add	rsp, 72	;,
	mov	rax, rbx	;, <retval>
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	pop	r15	;
	ret
	.size	_ZNK7NaturalplERKS_, .-_ZNK7NaturalplERKS_
	.align 2
	.globl	_ZN7NaturalD2Ev
	.type	_ZN7NaturalD2Ev, @function
_ZN7NaturalD2Ev:
	mov	rdi, QWORD PTR [rdi]	;, this_1(D)->begin
	jmp	free	;
	.size	_ZN7NaturalD2Ev, .-_ZN7NaturalD2Ev
	.globl	_ZN7NaturalD1Ev
	.set	_ZN7NaturalD1Ev,_ZN7NaturalD2Ev
	.align 2
	.globl	_ZN7NaturalpLERKS_
	.type	_ZN7NaturalpLERKS_, @function
_ZN7NaturalpLERKS_:
	push	rbx	;
	mov	rdx, rsi	; n, n
	mov	rbx, rdi	; this, this
	mov	rsi, rdi	;, this
	sub	rsp, 32	;,
	lea	rdi, [rsp+16]	;,
	call	_ZNK7NaturalplERKS_	;
	lea	rsi, [rsp+16]	;,
	mov	rdi, rbx	;, this
	call	_ZN7NaturalaSERKS_	;
	lea	rdi, [rsp+16]	;,
	mov	QWORD PTR [rsp+8], rax	;,
	call	_ZN7NaturalD1Ev	;
	mov	rax, QWORD PTR [rsp+8]	;,
	add	rsp, 32	;,
	pop	rbx	;
	ret
	.size	_ZN7NaturalpLERKS_, .-_ZN7NaturalpLERKS_
	.align 2
	.globl	_ZN7NaturalppEi
	.type	_ZN7NaturalppEi, @function
_ZN7NaturalppEi:
	push	rbp	;
	mov	rbp, rsi	; this, this
	push	rbx	;
	mov	rbx, rdi	; <retval>, .result_ptr
	sub	rsp, 24	;,
	call	_ZN7NaturalC1ERKS_	;
	mov	rdi, rsp	;,
	mov	esi, 1	;,
	call	_ZN7NaturalC1Em	;
	mov	rsi, rsp	;,
	mov	rdi, rbp	;, this
	call	_ZN7NaturalpLERKS_	;
	mov	rdi, rsp	;,
	call	_ZN7NaturalD1Ev	;
	add	rsp, 24	;,
	mov	rax, rbx	;, <retval>
	pop	rbx	;
	pop	rbp	;
	ret
	.size	_ZN7NaturalppEi, .-_ZN7NaturalppEi
	.align 2
	.globl	_ZN7NaturalppEv
	.type	_ZN7NaturalppEv, @function
_ZN7NaturalppEv:
	push	rbx	;
	mov	rbx, rdi	; this, this
	mov	esi, 1	;,
	sub	rsp, 32	;,
	lea	rdi, [rsp+16]	;,
	call	_ZN7NaturalC1Em	;
	lea	rsi, [rsp+16]	;,
	mov	rdi, rbx	;, this
	call	_ZN7NaturalpLERKS_	;
	lea	rdi, [rsp+16]	;,
	mov	QWORD PTR [rsp+8], rax	;,
	call	_ZN7NaturalD1Ev	;
	mov	rax, QWORD PTR [rsp+8]	;,
	add	rsp, 32	;,
	pop	rbx	;
	ret
	.size	_ZN7NaturalppEv, .-_ZN7NaturalppEv
	.align 2
	.globl	_ZNK7NaturalmlERKS_
	.type	_ZNK7NaturalmlERKS_, @function
_ZNK7NaturalmlERKS_:
	push	r14	;
	push	r13	;
	mov	r13, rsi	; this, this
	push	r12	;
	xor	r12d, r12d	; ivtmp.245
	push	rbp	;
	mov	rbp, rdi	; <retval>, .result_ptr
	push	rbx	;
	mov	rbx, rdx	; n, n
	sub	rsp, 16	;,
	call	_ZN7NaturalC1Ev	;
	mov	r14, QWORD PTR [r13+0]	; i, this_7(D)->begin
	jmp	.L83	;
.L86:
	mov	rdi, rsp	;,
	call	_ZN7NaturalC1Ev	;
	mov	rsi, QWORD PTR [rbx+8]	; tmp93, n_11(D)->end
	sub	rsi, QWORD PTR [rbx]	; tmp93, n_11(D)->begin
	mov	rdi, rsp	;,
	sar	rsi, 3	; tmp93,
	inc	rsi	; tmp94
	call	_ZN7Natural6resizeEm	;
	mov	rsi, QWORD PTR [rbx]	; j, n_11(D)->begin
	mov	rdi, QWORD PTR [rbx+8]	; D.4659, n_11(D)->end
	mov	rcx, QWORD PTR [rsp]	; ivtmp.241, line.begin
	jmp	.L84	;
.L85:
	mov	rax, QWORD PTR [rsi]	; D.4673, MEM[base: j_4, offset: 0B]
	add	rsi, 8	; j,
	mul	QWORD PTR [r14]	; MEM[base: i_2, offset: 0B]
	add	QWORD PTR [rcx], rax	; MEM[base: D.5243_67, offset: 0B], r
	mov	QWORD PTR [rcx+8], rdx	; MEM[base: D.5243_67, offset: 8B], tmp105
	add	rcx, 8	; ivtmp.241,
.L84:
	cmp	rsi, rdi	; j, D.4659
	jb	.L85	;,
	mov	rsi, r12	;, ivtmp.245
	mov	rdi, rsp	;,
	add	r14, 8	; i,
	call	_ZN7Natural5shiftEm	;
	mov	rsi, rsp	;,
	mov	rdi, rbp	;, <retval>
	inc	r12	; ivtmp.245
	call	_ZN7NaturalpLERKS_	;
	mov	rdi, rsp	;,
	call	_ZN7NaturalD1Ev	;
.L83:
	cmp	r14, QWORD PTR [r13+8]	; i, this_7(D)->end
	jb	.L86	;,
	add	rsp, 16	;,
	mov	rax, rbp	;, <retval>
	pop	rbx	;
	pop	rbp	;
	pop	r12	;
	pop	r13	;
	pop	r14	;
	ret
	.size	_ZNK7NaturalmlERKS_, .-_ZNK7NaturalmlERKS_
	.align 2
	.globl	_ZN7NaturalmLERKS_
	.type	_ZN7NaturalmLERKS_, @function
_ZN7NaturalmLERKS_:
	push	rbx	;
	mov	rdx, rsi	; n, n
	mov	rbx, rdi	; this, this
	mov	rsi, rdi	;, this
	sub	rsp, 32	;,
	lea	rdi, [rsp+16]	;,
	call	_ZNK7NaturalmlERKS_	;
	lea	rsi, [rsp+16]	;,
	mov	rdi, rbx	;, this
	call	_ZN7NaturalaSERKS_	;
	lea	rdi, [rsp+16]	;,
	mov	QWORD PTR [rsp+8], rax	;,
	call	_ZN7NaturalD1Ev	;
	mov	rax, QWORD PTR [rsp+8]	;,
	add	rsp, 32	;,
	pop	rbx	;
	ret
	.size	_ZN7NaturalmLERKS_, .-_ZN7NaturalmLERKS_
	.ident	"GCC: (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
