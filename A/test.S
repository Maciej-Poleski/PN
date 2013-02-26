	.file	"test.cxx"
# GNU C++ (Gentoo 4.6.3 p1.6, pie-0.5.2) version 4.6.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.6.3, GMP version 5.0.5, MPFR version 3.1.1, MPC version 1.0.1
# warning: GMP header version 5.0.5 differs from library version 5.1.1.
# warning: MPFR header version 3.1.1 differs from library version 3.1.1-p2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE test.cxx -mtune=generic -march=x86-64
# -auxbase-strip test.S -O3 -Wall -Wextra -pedantic -std=c++0x
# -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexceptions
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-sra -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
# -foptimize-sibling-calls -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
# -fstrict-overflow -fstrict-volatile-bitfields -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
# -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
# -ftree-ter -ftree-vect-loop-version -ftree-vectorize -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fvect-cost-model
# -fverbose-asm -fzee -fzero-initialized-in-bss -m128bit-long-double -m64
# -m80387 -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mglibc -mieee-fp -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mtls-direct-seg-refs

# Compiler executable checksum: 94e84460d19466e31695df3ec72fb195

	.section	.text._ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_,"axG",@progbits,_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_,comdat
	.p2align 4,,15
	.weak	_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_
	.type	_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_, @function
_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_:
.LFB3268:
	.cfi_startproc
	movq	(%rdi), %rax	# *__a$_M_current_64, D.56455
	movq	(%rsi), %rcx	# *__b$_M_current_63, D.56457
	movq	(%rdx), %r8	# *__c$_M_current_68, D.56464
	cmpq	%rcx, %rax	# D.56457, D.56455
	jae	.L2	#,
	cmpq	%r8, %rcx	# D.56464, D.56457
	jb	.L8	#,
	cmpq	%r8, %rax	# D.56464, D.56455
	jae	.L1	#,
.L6:
	movq	%r8, (%rdi)	# D.56481, *__a$_M_current_64
	movq	%rax, (%rdx)	# D.56455, *__c$_M_current_68
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	cmpq	%r8, %rax	# D.56481, D.56455
	jb	.L1	#,
	cmpq	%r8, %rcx	# D.56481, D.56457
	jb	.L6	#,
	movq	%rcx, (%rdi)	# D.56457, *__a$_M_current_64
	movq	%rax, (%rsi)	# D.56455, *__b$_M_current_63
.L1:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rcx, (%rdi)	# D.56457, *__a$_M_current_64
	movq	%rax, (%rsi)	# D.56455, *__b$_M_current_63
	ret
	.cfi_endproc
.LFE3268:
	.size	_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_, .-_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB3287:
	.cfi_startproc
	movq	4992(%rdi), %rax	# this_6(D)->_M_p, D.56075
	cmpq	$623, %rax	#, D.56075
	jbe	.L22	#,
	movq	(%rdi), %rsi	# this_6(D)->_M_x, this___M_x_I_lsm0.242
	xorl	%edx, %edx	# __k
	.p2align 4,,10
	.p2align 3
.L14:
	addq	$1, %rdx	#, __k
	movq	%rsi, %rax	# this___M_x_I_lsm0.242, D.56084
	movq	(%rdi,%rdx,8), %rsi	# MEM[base: this_6(D), index: __k_14, step: 8, offset: 0B], this___M_x_I_lsm0.242
	andq	$-2147483648, %rax	#, D.56084
	movq	%rsi, %rcx	# this___M_x_I_lsm0.242, __y
	andl	$2147483647, %ecx	#, __y
	orq	%rax, %rcx	# D.56084, __y
	movq	%rcx, %rax	# __y, tmp185
	shrq	%rcx	# tmp184
	andl	$1, %eax	#, tmp185
	negq	%rax	# tmp185
	andl	$2567483615, %eax	#, tmp185
	xorq	3168(%rdi,%rdx,8), %rax	# MEM[base: this_6(D), index: __k_14, step: 8, offset: 3168B], tmp185
	xorq	%rcx, %rax	# tmp184, tmp185
	cmpq	$227, %rdx	#, __k
	movq	%rax, -8(%rdi,%rdx,8)	# tmp185, MEM[base: this_6(D), index: __k_14, step: 8, offset: -8B]
	jne	.L14	#,
	movq	1816(%rdi), %rsi	# this_6(D)->_M_x, this___M_x_I_lsm0.243
	.p2align 4,,10
	.p2align 3
.L17:
	addq	$1, %rdx	#, __k
	movq	%rsi, %rax	# this___M_x_I_lsm0.243, D.56105
	movq	(%rdi,%rdx,8), %rsi	# MEM[base: this_6(D), index: __k_32, step: 8, offset: 0B], this___M_x_I_lsm0.243
	andq	$-2147483648, %rax	#, D.56105
	movq	%rsi, %rcx	# this___M_x_I_lsm0.243, __y
	andl	$2147483647, %ecx	#, __y
	orq	%rax, %rcx	# D.56105, __y
	movq	%rcx, %rax	# __y, tmp191
	shrq	%rcx	# tmp190
	andl	$1, %eax	#, tmp191
	negq	%rax	# tmp191
	andl	$2567483615, %eax	#, tmp191
	xorq	-1824(%rdi,%rdx,8), %rax	# MEM[base: this_6(D), index: __k_32, step: 8, offset: -1824B], tmp191
	xorq	%rcx, %rax	# tmp190, tmp191
	cmpq	$623, %rdx	#, __k
	movq	%rax, -8(%rdi,%rdx,8)	# tmp191, MEM[base: this_6(D), index: __k_32, step: 8, offset: -8B]
	jne	.L17	#,
	movq	(%rdi), %rcx	# this_6(D)->_M_x, prephitmp.234
	movq	4984(%rdi), %rax	# this_6(D)->_M_x, tmp193
	movq	%rcx, %rdx	# prephitmp.234, __y
	andq	$-2147483648, %rax	#, tmp193
	andl	$2147483647, %edx	#, __y
	orq	%rax, %rdx	# tmp193, __y
	movq	%rdx, %rax	# __y, tmp197
	andl	$1, %edx	#, iftmp.7
	shrq	%rax	# tmp197
	xorq	3168(%rdi), %rax	# this_6(D)->_M_x, tmp197
	negq	%rdx	# iftmp.7
	andl	$2567483615, %edx	#, iftmp.7
	xorq	%rdx, %rax	# iftmp.7, tmp197
	movq	%rax, 4984(%rdi)	# tmp197, this_6(D)->_M_x
	movl	$1, %eax	#, prephitmp.236
.L11:
	movq	%rcx, %rdx	# prephitmp.234, __z
	movq	%rax, 4992(%rdi)	# prephitmp.236, this_6(D)->_M_p
	shrq	$11, %rdx	#, __z
	andl	$4294967295, %edx	#, __z
	xorq	%rcx, %rdx	# prephitmp.234, __z
	movq	%rdx, %rax	# __z, __z
	salq	$7, %rax	#, __z
	andl	$2636928640, %eax	#, __z
	xorq	%rdx, %rax	# __z, __z
	movq	%rax, %rdx	# __z, __z
	salq	$15, %rdx	#, __z
	andl	$4022730752, %edx	#, __z
	xorq	%rax, %rdx	# __z, __z
	movq	%rdx, %rax	# __z, tmp202
	shrq	$18, %rax	#, tmp202
	xorq	%rdx, %rax	# __z, tmp202
	ret
.L22:
	movq	(%rdi,%rax,8), %rcx	# this_6(D)->_M_x, prephitmp.234
	addq	$1, %rax	#, prephitmp.236
	jmp	.L11	#
	.cfi_endproc
.LFE3287:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE:
.LFB3254:
	.cfi_startproc
	movq	%rbx, -48(%rsp)	#,
	movq	%rbp, -40(%rsp)	#,
	movl	$4294967294, %eax	#, tmp85
	movq	%r12, -32(%rsp)	#,
	movq	%r13, -24(%rsp)	#,
	movq	%rsi, %rbx	# __urng, __urng
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 6, -48
	.cfi_offset 3, -56
	movq	%r14, -16(%rsp)	#,
	movq	%r15, -8(%rsp)	#,
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 15, -16
	.cfi_offset 14, -24
	movq	8(%rdx), %rbp	# MEM[(const struct param_type *)__param_5(D) + 8B], __urange
	subq	(%rdx), %rbp	# MEM[(const struct param_type *)__param_5(D)], __urange
	movq	%rdi, %r13	# this, this
	movq	%rdx, %r12	# __param, __param
	cmpq	%rax, %rbp	# tmp85, __urange
	ja	.L24	#,
	movl	$4294967295, %r13d	#, tmp88
	addq	$1, %rbp	#, __uerange
	xorl	%edx, %edx	# tmp87
	movq	%r13, %rax	# tmp88,
	divq	%rbp	# __uerange
	imulq	%rax, %rbp	# tmp86, __past
	movq	%rax, %r13	#, tmp86
	.p2align 4,,10
	.p2align 3
.L25:
	movq	%rbx, %rdi	# __urng,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv	#
	cmpq	%rax, %rbp	# __ret, __past
	jbe	.L25	#,
	xorl	%edx, %edx	# tmp90
	divq	%r13	# tmp86
	movq	%rax, %r15	# __ret, __ret
.L26:
	movq	%r15, %rax	# __ret, tmp97
	movq	24(%rsp), %rbx	#,
	addq	(%r12), %rax	# MEM[(const struct param_type *)__param_5(D)], tmp97
	movq	32(%rsp), %rbp	#,
	movq	40(%rsp), %r12	#,
	movq	48(%rsp), %r13	#,
	movq	56(%rsp), %r14	#,
	movq	64(%rsp), %r15	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	movl	$4294967295, %eax	#, tmp91
	cmpq	%rax, %rbp	# tmp91, __urange
	je	.L27	#,
	movq	%rbp, %r14	# __urange, pretmp.271
	shrq	$32, %r14	#, pretmp.271
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%rsp, %rdx	#,
	movq	%rbx, %rsi	# __urng,
	movq	%r13, %rdi	# this,
	movq	$0, (%rsp)	#, D.54791._M_a
	movq	%r14, 8(%rsp)	# pretmp.271, D.54791._M_b
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE	#
	movq	%rax, %r15	#, __tmp
	movq	%rbx, %rdi	# __urng,
	salq	$32, %r15	#, __tmp
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv	#
	addq	%rax, %r15	# D.56067, __ret
	jb	.L32	#,
	cmpq	%rbp, %r15	# __urange, __ret
	ja	.L32	#,
	.p2align 4,,5
	jmp	.L26	#
	.p2align 4,,10
	.p2align 3
.L27:
	movq	%rsi, %rdi	# __urng,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv	#
	movq	%rax, %r15	#, __ret
	.p2align 4,,2
	jmp	.L26	#
	.cfi_endproc
.LFE3254:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_,comdat
	.p2align 4,,15
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_:
.LFB3314:
	.cfi_startproc
	leaq	-1(%rdx), %rax	#, tmp162
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %r9	# __holeIndex, __holeIndex
	movq	%rsi, %r11	# __holeIndex, __holeIndex
	movq	%rax, %rbx	# tmp162, tmp163
	shrq	$63, %rbx	#, tmp163
	addq	%rax, %rbx	# tmp162, tmp165
	sarq	%rbx	# tmp165
	cmpq	%rbx, %rsi	# tmp165, __holeIndex
	jl	.L39	#,
	jmp	.L34	#
	.p2align 4,,10
	.p2align 3
.L48:
	movq	%r9, %r11	# __secondChild, __holeIndex
.L39:
	leaq	2(%r11,%r11), %r9	#, __secondChild
	leaq	-1(%r9), %r10	#, __secondChild
	movq	(%rdi,%r9,8), %rax	# *D.57386_74, D.56357
	movq	(%rdi,%r10,8), %r8	# *D.57400_80, D.56360
	cmpq	%r8, %rax	# D.56360, D.56357
	cmovb	%r10, %r9	# __secondChild,, __secondChild
	cmovb	%r8, %rax	# D.56360,, D.56357
	cmpq	%rbx, %r9	# tmp165, __secondChild
	movq	%rax, (%rdi,%r11,8)	# D.56357, *D.57414_86
	jl	.L48	#,
.L34:
	testb	$1, %dl	#, __len
	jne	.L51	#,
	subq	$2, %rdx	#, tmp171
	movq	%rdx, %rax	# tmp171, tmp172
	shrq	$63, %rax	#, tmp172
	addq	%rax, %rdx	# tmp172, tmp174
	sarq	%rdx	# tmp174
	cmpq	%r9, %rdx	# __holeIndex, tmp174
	je	.L42	#,
.L51:
	leaq	(%rdi,%r9,8), %r10	#, prephitmp.294
.L41:
	cmpq	%r9, %rsi	# __holeIndex, __holeIndex
	jge	.L43	#,
	leaq	-1(%r9), %rax	#, D.57495
	movq	%rax, %rdx	# D.57495, tmp179
	shrq	$63, %rdx	#, tmp179
	addq	%rax, %rdx	# D.57495, __holeIndex
	sarq	%rdx	# __holeIndex
	movq	(%rdi,%rdx,8), %r8	# *D.57485_167, prephitmp.303
	cmpq	%r8, %rcx	# prephitmp.303, __value
	jbe	.L43	#,
	.p2align 4,,10
	.p2align 3
.L50:
	cmpq	%rdx, %rsi	# __holeIndex, __holeIndex
	leaq	(%rdi,%rdx,8), %r10	#, prephitmp.294
	movq	%r8, (%rdi,%r9,8)	# prephitmp.303, *D.57491_112
	jl	.L46	#,
.L43:
	movq	%rcx, (%r10)	# __value, *prephitmp.294_220
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	leaq	-1(%rdx), %rax	#, D.57495
	movq	%rax, %r8	# D.57495, tmp182
	shrq	$63, %r8	#, tmp182
	addq	%r8, %rax	# tmp182, tmp184
	sarq	%rax	# tmp184
	movq	(%rdi,%rax,8), %r8	# *D.57485_122, prephitmp.303
	cmpq	%r8, %rcx	# prephitmp.303, __value
	jbe	.L43	#,
	movq	%rdx, %r9	# __holeIndex, __holeIndex
	movq	%rax, %rdx	# tmp184, __holeIndex
	jmp	.L50	#
	.p2align 4,,10
	.p2align 3
.L42:
	leaq	1(%r9,%r9), %r9	#, __holeIndex
	leaq	(%rdi,%r9,8), %r10	#, prephitmp.294
	movq	(%r10), %rax	# MEM[(type &)prephitmp.294_104], D.56379
	movq	%rax, (%rdi,%rdx,8)	# D.56379, *D.57445_98
	jmp	.L41	#
	.cfi_endproc
.LFE3314:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_,comdat
	.p2align 4,,15
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_:
.LFB3163:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %rax	# __last, D.57965
	subq	%rdi, %rax	# __first, D.57965
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cmpq	$135, %rax	#, D.57965
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdx, %r12	# __depth_limit, __depth_limit
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# __first, __first
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	jle	.L52	#,
	testq	%rdx, %rdx	# __depth_limit
	leaq	8(%rdi), %r14	#, __last
	movq	%rsi, %r13	# __last, __last
	je	.L75	#,
.L55:
	sarq	$4, %rax	#, tmp144
	leaq	-8(%r13), %rdx	#, tmp147
	movq	%rbp, %rdi	# __first,
	leaq	0(%rbp,%rax,8), %rsi	#, tmp146
	subq	$1, %r12	#, __depth_limit
	movq	%r14, %rbx	# __last, __last
	call	_ZSt19__move_median_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_S7_	#
	movq	%r13, %rsi	# __last, __last
	.p2align 4,,10
	.p2align 3
.L65:
	movq	(%rbx), %rcx	# *__last_67, __tmp.45
	movq	0(%rbp), %rdx	# MEM[(const long unsigned int &)__first_4], D.57981
	cmpq	%rcx, %rdx	# __tmp.45, D.57981
	jbe	.L59	#,
	.p2align 4,,10
	.p2align 3
.L71:
	addq	$8, %rbx	#, __last
	movq	(%rbx), %rcx	# MEM[base: __last_55, offset: 0], __tmp.45
	cmpq	%rcx, %rdx	# __tmp.45, D.57981
	ja	.L71	#,
.L59:
	leaq	-8(%rsi), %rax	#, __last
	movq	-8(%rsi), %rsi	# MEM[(long unsigned int &)__last_58 + 0x0fffffffffffffff8], D.57983
	cmpq	%rsi, %rdx	# D.57983, D.57981
	jae	.L61	#,
	.p2align 4,,10
	.p2align 3
.L70:
	subq	$8, %rax	#, __last
	movq	(%rax), %rsi	# MEM[base: __last_61, offset: 0], D.57983
	cmpq	%rsi, %rdx	# D.57983, D.57981
	jb	.L70	#,
.L61:
	cmpq	%rax, %rbx	# __last, __last
	jae	.L76	#,
	movq	%rsi, (%rbx)	# D.57983, *__last_45
	movq	%rcx, (%rax)	# __tmp.45, *__last_113
	addq	$8, %rbx	#, __last
	movq	%rax, %rsi	# __last, __last
	jmp	.L65	#
.L76:
	movq	%r12, %rdx	# __depth_limit,
	movq	%r13, %rsi	# __last,
	movq	%rbx, %rdi	# __last,
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_	#
	movq	%rbx, %rax	# __last, D.57965
	subq	%rbp, %rax	# __first, D.57965
	cmpq	$135, %rax	#, D.57965
	jle	.L52	#,
	testq	%r12, %r12	# __depth_limit
	je	.L66	#,
	movq	%rbx, %r13	# __last, __last
	jmp	.L55	#
.L75:
	movq	%rsi, %rbx	# __last, __last
.L66:
	movq	%rax, %r13	# D.57965, tmp138
	sarq	$3, %r13	#, tmp138
	leaq	-2(%r13), %r12	#, __parent
	sarq	%r12	# __parent
	jmp	.L57	#
.L77:
	subq	$1, %r12	#, __parent
.L57:
	movq	0(%rbp,%r12,8), %rcx	# MEM[base: __first_4, index: D.58900_1, step: 8, offset: 0], __value.23
	movq	%r13, %rdx	# tmp138,
	movq	%r12, %rsi	# __parent,
	movq	%rbp, %rdi	# __first,
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_	#
	testq	%r12, %r12	# __parent
	jne	.L77	#,
.L69:
	subq	$8, %rbx	#, __last
	movq	0(%rbp), %rax	# MEM[(type &)__first_4], D.58835
	xorl	%esi, %esi	#
	movq	%rbx, %r12	# __last, D.58824
	movq	(%rbx), %rcx	# MEM[base: __last_38, offset: 0], __value.38
	movq	%rbp, %rdi	# __first,
	subq	%rbp, %r12	# __first, D.58824
	movq	%r12, %rdx	# D.58824, tmp141
	movq	%rax, (%rbx)	# D.58835, MEM[base: __last_38, offset: 0]
	sarq	$3, %rdx	#, tmp141
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmEvT_T0_S8_T1_	#
	cmpq	$15, %r12	#, D.58824
	jg	.L69	#,
.L52:
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3163:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"B\305\202\304\205d na pozycji "
.LC1:
	.string	" oczekiwano "
.LC2:
	.string	" a otrzymano "
.LC3:
	.string	"Pozosta\305\202o iteracji: "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2964:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2964
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$404, %eax	#, __x
	movl	$1, %ecx	#, __i
	movabsq	$945986875574848801, %r8	#, tmp244
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$10104, %rsp	#,
	.cfi_def_cfa_offset 10160
	leaq	5056(%rsp), %rsi	#, tmp237
	movq	$404, 5056(%rsp)	#, engine._M_x
	.p2align 4,,10
	.p2align 3
.L79:
	movq	%rax, %rdi	# __x, __x
	movq	%rcx, %rdx	# __i, tmp199
	shrq	$4, %rdx	#, tmp199
	shrq	$30, %rdi	#, __x
	xorq	%rax, %rdi	# __x, __x
	movq	%rdx, %rax	# tmp199,
	mulq	%r8	# tmp244
	movq	%rcx, %rax	# __i, tmp203
	imulq	$1812433253, %rdi, %rdi	#, __x, __x
	shrq	%rdx	# tmp198
	imulq	$624, %rdx, %rdx	#, tmp198, tmp202
	subq	%rdx, %rax	# tmp202, tmp203
	addl	%edi, %eax	# __x, __x
	movq	%rax, (%rsi,%rcx,8)	# __x, MEM[symbol: engine, index: __i_135, step: 8, offset: 0B]
	addq	$1, %rcx	#, __i
	cmpq	$624, %rcx	#, __i
	jne	.L79	#,
	leaq	48(%rsp), %rax	#,
	movq	$0, 32(%rsp)	#, MEM[(struct _Bind *)&gen]._M_a
	movq	$-1, 40(%rsp)	#, MEM[(struct _Bind *)&gen]._M_b
	leaq	48(%rsp), %rdi	#, tmp207
	movb	$113, %cl	#,
	movq	$999, 24(%rsp)	#, %sfp
	rep movsq
	movq	%rax, 16(%rsp)	#, %sfp
	movq	$624, 5040(%rsp)	#, MEM[(struct _Bind *)&gen + 16B]._M_p
	.p2align 4,,10
	.p2align 3
.L107:
	movl	$800000, %edi	#,
	xorl	%ebx, %ebx	# ivtmp.506
.LEHB0:
	call	_Znam	#
	movq	%rax, %r13	#, data
	.p2align 4,,10
	.p2align 3
.L80:
	movq	32(%rsp), %rax	# MEM[(const struct uniform_int_distribution *)&gen]._M_a, MEM[(const struct uniform_int_distribution *)&gen]._M_a
	movq	16(%rsp), %rsi	# %sfp,
	leaq	10064(%rsp), %rdx	#,
	leaq	32(%rsp), %rdi	#,
	movq	%rax, 10064(%rsp)	# MEM[(const struct uniform_int_distribution *)&gen]._M_a, D.58581._M_a
	movq	40(%rsp), %rax	# MEM[(const struct uniform_int_distribution *)&gen]._M_b, SR.80
	movq	%rax, 10072(%rsp)	# SR.80, D.58581._M_b
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE	#
	movq	%rax, 0(%r13,%rbx)	# D.58580, MEM[base: data_9, index: ivtmp.506_247, offset: 0B]
	addq	$8, %rbx	#, ivtmp.506
	cmpq	$800000, %rbx	#, ivtmp.506
	jne	.L80	#,
	movl	$800000, %edi	#,
	call	_Znwm	#
.LEHE0:
	movq	%rax, %r15	#, __first
	movl	$800000, %edx	#,
	movq	%r13, %rsi	# data,
	leaq	800000(%r15), %r14	#, __last
	movq	%rax, %rdi	# __first,
	call	memmove	#
	movq	%r14, %rbx	# __last, D.58945
	movl	$63, %edx	#, tmp223
	movq	%r14, %rsi	# __last,
	subq	%r15, %rbx	# __first, D.58945
	movq	%r15, %rdi	# __first,
	movq	%rbx, %rax	# D.58945, tmp220
	sarq	$3, %rax	#, tmp220
	bsrq	%rax, %rax	# tmp220, tmp221
	xorl	$63, %eax	#, D.58939
	cltq
	subq	%rax, %rdx	# D.58939, tmp223
	addq	%rdx, %rdx	# tmp225
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvT_S7_T0_	#
	cmpq	$135, %rbx	#, D.58945
	jle	.L87	#,
	leaq	128(%r15), %rcx	#, __last
	leaq	8(%r15), %rbp	#, ivtmp.477
	leaq	16(%r15), %r12	#, ivtmp.480
	jmp	.L93	#
	.p2align 4,,10
	.p2align 3
.L131:
	movq	%rbp, %rax	# ivtmp.477, tmp227
	subq	%r15, %rax	# __first, tmp227
	sarq	$3, %rax	#, tmp227
	testq	%rax, %rax	# tmp227
	jne	.L129	#,
.L89:
	addq	$8, %rbp	#, ivtmp.477
	addq	$8, %r12	#, ivtmp.480
	movq	%rbx, (%r15)	# D.58974, *__first_113
	cmpq	%rcx, %rbp	# __last, ivtmp.477
	je	.L130	#,
.L93:
	movq	0(%rbp), %rbx	# MEM[base: __last$_M_current_166, offset: 0], D.58974
	cmpq	(%r15), %rbx	# *__first_113, D.58974
	movq	%rbp, %rsi	# ivtmp.477, __last$_M_current
	jb	.L131	#,
	movq	-8(%rbp), %rdx	# MEM[base: __last$_M_current_166, offset: 0x0fffffffffffffff8], D.58958
	movq	%rbp, %rdi	# ivtmp.477, __last$_M_current
	leaq	-8(%rbp), %rax	#, ivtmp.466
	cmpq	%rdx, %rbx	# D.58958, D.58974
	jb	.L92	#,
	jmp	.L91	#
	.p2align 4,,10
	.p2align 3
.L116:
	movq	%rdi, %rsi	# __last$_M_current, __last$_M_current
.L92:
	movq	%rax, %rdi	# ivtmp.466, __last$_M_current
	subq	$8, %rax	#, ivtmp.466
	movq	%rdx, (%rsi)	# D.58958, *__last$_M_current_121
	movq	(%rax), %rdx	# MEM[base: D.59203_324, offset: 0], D.58958
	cmpq	%rdx, %rbx	# D.58958, D.58974
	jb	.L116	#,
.L91:
	addq	$8, %rbp	#, ivtmp.477
	addq	$8, %r12	#, ivtmp.480
	movq	%rbx, (%rdi)	# D.58974, *__last$_M_current_34
	cmpq	%rcx, %rbp	# __last, ivtmp.477
	jne	.L93	#,
.L130:
	cmpq	%rbp, %r14	# ivtmp.477, __last
	je	.L86	#,
	.p2align 4,,10
	.p2align 3
.L96:
	movq	0(%rbp), %rdi	# MEM[base: __last_246, offset: 0], __val.51
	movq	-8(%rbp), %rdx	# MEM[base: __last_246, offset: 0x0fffffffffffffff8], D.58934
	movq	%rbp, %rsi	# ivtmp.459, __last
	movq	%rbp, %rcx	# ivtmp.459, __last
	leaq	-8(%rbp), %rax	#, ivtmp.449
	cmpq	%rdi, %rdx	# __val.51, D.58934
	ja	.L95	#,
	jmp	.L94	#
	.p2align 4,,10
	.p2align 3
.L118:
	movq	%rcx, %rsi	# __last, __last
.L95:
	movq	%rax, %rcx	# ivtmp.449, __last
	subq	$8, %rax	#, ivtmp.449
	movq	%rdx, (%rsi)	# D.58934, *__last_168
	movq	(%rax), %rdx	# MEM[base: D.59180_24, offset: 0], D.58934
	cmpq	%rdx, %rdi	# D.58934, __val.51
	jb	.L118	#,
.L94:
	addq	$8, %rbp	#, ivtmp.459
	movq	%rdi, (%rcx)	# __val.51, *__last_33
	cmpq	%rbp, %r14	# ivtmp.459, __last
	jne	.L96	#,
.L86:
	movl	$100000, %esi	#,
	movq	%r13, %rdi	# data,
.LEHB1:
	call	sort	#
	xorl	%ebx, %ebx	# ivtmp.440
	.p2align 4,,10
	.p2align 3
.L104:
	movq	0(%r13,%rbx,8), %r12	# MEM[base: data_9, index: ivtmp.440_122, step: 8, offset: 0B], D.55913
	movq	(%r15,%rbx,8), %rbp	# *D.58629_132, D.55915
	cmpq	%rbp, %r12	# D.55915, D.55913
	je	.L103	#,
	movl	$18, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movl	%ebx, %esi	# i,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$12, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.55921,
	movq	%rax, %r14	#, D.55921
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	%rbp, %rsi	# D.55915,
	movq	%r14, %rdi	# D.55921,
	call	_ZNSo9_M_insertImEERSoT_	#
	movl	$13, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.58641,
	movq	%rax, %rbp	#, D.58641
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	%r12, %rsi	# D.55913,
	movq	%rbp, %rdi	# D.58641,
	call	_ZNSo9_M_insertImEERSoT_	#
	leaq	10095(%rsp), %rsi	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.58645,
	movb	$10, 10095(%rsp)	#, __c
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
.L103:
	addq	$1, %rbx	#, ivtmp.440
	cmpq	$100000, %rbx	#, ivtmp.440
	jne	.L104	#,
	movl	$21, %edx	#,
	movl	$.LC3, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	24(%rsp), %rsi	# %sfp,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertImEERSoT_	#
	leaq	10095(%rsp), %rsi	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.58649,
	movb	$10, 10095(%rsp)	#, __c
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
.LEHE1:
	testq	%r13, %r13	# data
	je	.L105	#,
	movq	%r13, %rdi	# data,
	call	_ZdaPv	#
.L105:
	testq	%r15, %r15	# __first
	je	.L106	#,
	movq	%r15, %rdi	# __first,
	call	_ZdlPv	#
.L106:
	subq	$1, 24(%rsp)	#, %sfp
	cmpq	$-1, 24(%rsp)	#, %sfp
	jne	.L107	#,
	addq	$10104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L129:
	.cfi_restore_state
	leaq	0(,%rax,8), %rdx	#, D.58964
	movq	%r12, %rdi	# ivtmp.480, tmp228
	movq	%r15, %rsi	# __first,
	movq	%rcx, 8(%rsp)	#,
	subq	%rdx, %rdi	# D.58964, tmp228
	call	memmove	#
	movq	8(%rsp), %rcx	#,
	jmp	.L89	#
.L87:
	leaq	8(%r15), %rbp	#, __last$_M_current
	cmpq	%rbp, %r14	# __last$_M_current, __last
	je	.L86	#,
	leaq	16(%r15), %r12	#, ivtmp.496
	jmp	.L102	#
	.p2align 4,,10
	.p2align 3
.L133:
	movq	%rbp, %rax	# ivtmp.493, tmp230
	movq	%r12, %rcx	# ivtmp.496, prephitmp.426
	subq	%r15, %rax	# __first, tmp230
	sarq	$3, %rax	#, tmp230
	testq	%rax, %rax	# tmp230
	jne	.L132	#,
.L98:
	movq	%rbx, (%r15)	# D.59001, *__first_113
.L99:
	addq	$8, %rbp	#, ivtmp.493
	addq	$8, %r12	#, ivtmp.496
	cmpq	%rcx, %r14	# prephitmp.426, __last
	je	.L86	#,
.L102:
	movq	0(%rbp), %rbx	# MEM[base: __last$_M_current_276, offset: 0], D.59001
	cmpq	(%r15), %rbx	# *__first_113, D.59001
	movq	%rbp, %rcx	# ivtmp.493, __last$_M_current
	jb	.L133	#,
	movq	-8(%rbp), %rdx	# MEM[base: __last$_M_current_276, offset: 0x0fffffffffffffff8], D.58985
	movq	%rbp, %rsi	# ivtmp.493, __last$_M_current
	leaq	-8(%rbp), %rax	#, ivtmp.487
	cmpq	%rdx, %rbx	# D.58985, D.59001
	jb	.L101	#,
	jmp	.L100	#
	.p2align 4,,10
	.p2align 3
.L120:
	movq	%rsi, %rcx	# __last$_M_current, __last$_M_current
.L101:
	movq	%rax, %rsi	# ivtmp.487, __last$_M_current
	subq	$8, %rax	#, ivtmp.487
	movq	%rdx, (%rcx)	# D.58985, *__last$_M_current_312
	movq	(%rax), %rdx	# MEM[base: D.59231_337, offset: 0], D.58985
	cmpq	%rdx, %rbx	# D.58985, D.59001
	jb	.L120	#,
.L100:
	movq	%rbx, (%rsi)	# D.59001, *__last$_M_current_35
	movq	%r12, %rcx	# ivtmp.496, prephitmp.426
	jmp	.L99	#
.L132:
	leaq	0(,%rax,8), %rdx	#, D.58991
	movq	%r12, %rdi	# ivtmp.496, tmp231
	movq	%r15, %rsi	# __first,
	movq	%r12, 8(%rsp)	# tmp2,
	subq	%rdx, %rdi	# D.58991, tmp231
	call	memmove	#
	movq	8(%rsp), %rcx	#,
	jmp	.L98	#
.L121:
	testq	%r15, %r15	# __first
	movq	%rax, %rbx	#, tmp235
	je	.L113	#,
	movq	%r15, %rdi	# __first,
	call	_ZdlPv	#
.L113:
	movq	%rbx, %rdi	# tmp235,
.LEHB2:
	call	_Unwind_Resume	#
.LEHE2:
	.cfi_endproc
.LFE2964:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2964:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2964-.LLSDACSB2964
.LLSDACSB2964:
	.uleb128 .LEHB0-.LFB2964
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2964
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L121-.LFB2964
	.uleb128 0
	.uleb128 .LEHB2-.LFB2964
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2964:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3337:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit	#
	.cfi_endproc
.LFE3337:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (Gentoo 4.6.3 p1.6, pie-0.5.2) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
