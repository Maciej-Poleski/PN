	.file	"natural.cpp"
	.intel_syntax noprefix
# GNU C++ (SUSE Linux) version 4.7.2 20130108 [gcc-4_7-branch revision 195012] (x86_64-suse-linux)
#	compiled by GNU C version 4.7.2 20130108 [gcc-4_7-branch revision 195012], GMP version 5.0.5, MPFR version 3.1.1, MPC version 1.0
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE natural.cpp -masm=intel -mtune=generic
# -march=x86-64 -auxbase-strip natural4.S -Os -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
# -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
# -fpeephole -fpeephole2 -fprefetch-loop-arrays -free -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vect-loop-version -ftree-vrp -funit-at-a-time -funwind-tables
# -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
# -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.type	_ZL19parseBigendianQwordPKci, @function
_ZL19parseBigendianQwordPKci:
.LFB419:
	.cfi_startproc
	xor	edx, edx	# ivtmp.42
	xor	eax, eax	# result
	jmp	.L2	#
.L5:
	mov	rcx, rdx	# tmp105, ivtmp.42
	neg	rcx	# tmp105
	movsx	r8d, BYTE PTR [rdi+15+rcx]	# D.10430, MEM[base: n_9(D), index: D.10598_34, offset: 15B]
	cmp	r8b, 57	# D.10430,
	jg	.L3	#,
	sub	r8d, 48	# tmp107,
	jmp	.L6	#
.L3:
	sub	r8d, 87	# tmp109,
.L6:
	lea	ecx, [0+rdx*4]	# tmp110,
	movsx	r8, r8d	# D.10579, tmp109
	inc	rdx	# ivtmp.42
	sal	r8, cl	# tmp111, tmp110
	or	rax, r8	# result, tmp111
.L2:
	cmp	esi, edx	# length, ivtmp.42
	jg	.L5	#,
	ret
	.cfi_endproc
.LFE419:
	.size	_ZL19parseBigendianQwordPKci, .-_ZL19parseBigendianQwordPKci
	.align 2
	.globl	_ZN7Natural5shiftEm
	.type	_ZN7Natural5shiftEm, @function
_ZN7Natural5shiftEm:
.LFB421:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mov	r14, rsi	# i, i
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	rbp, rdi	# this, this
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	r12, QWORD PTR [rdi]	# oldBegin, this_3(D)->begin
	mov	rbx, QWORD PTR [rdi+8]	# tmp92, this_3(D)->end
	sub	rbx, r12	# tmp92, oldBegin
	sar	rbx, 3	# tmp92,
	lea	r13, [rbx+rsi]	# tmp93,
	sal	r13, 3	# D.10456,
	mov	rdi, r13	#, D.10456
	call	malloc	#
	add	r13, rax	# tmp95, D.10457
	mov	QWORD PTR [rbp+0], rax	# this_3(D)->begin, D.10457
	xor	edx, edx	# ii
	mov	QWORD PTR [rbp+8], r13	# this_3(D)->end, tmp95
	jmp	.L8	#
.L9:
	mov	QWORD PTR [rax+rdx*8], 0	# MEM[base: D.10457_16, index: ii_1, step: 8, offset: 0B],
	inc	rdx	# ii
.L8:
	cmp	rdx, r14	# ii, i
	jne	.L9	#,
	lea	rdx, [rax+rdx*8]	# D.10617,
	xor	eax, eax	# ii
	jmp	.L10	#
.L11:
	mov	rcx, QWORD PTR [r12+rax*8]	# D.10478, MEM[base: oldBegin_4, index: ii_2, step: 8, offset: 0B]
	mov	QWORD PTR [rdx+rax*8], rcx	# MEM[base: D.10617_48, index: ii_2, step: 8, offset: 0B], D.10478
	inc	rax	# ii
.L10:
	cmp	rax, rbx	# ii, tmp92
	jne	.L11	#,
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	mov	rdi, r12	#, oldBegin
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.cfi_endproc
.LFE421:
	.size	_ZN7Natural5shiftEm, .-_ZN7Natural5shiftEm
	.align 2
	.globl	_ZN7NaturalC2Ev
	.type	_ZN7NaturalC2Ev, @function
_ZN7NaturalC2Ev:
.LFB423:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	edi, 8	#,
	call	malloc	#
	lea	rdx, [rax+8]	# tmp63,
	mov	QWORD PTR [rbx], rax	# this_2(D)->begin, tmp62
	mov	QWORD PTR [rbx+8], rdx	# this_2(D)->end, tmp63
	mov	QWORD PTR [rax], 0	# MEM[(long unsigned int *)D.10446_1],
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE423:
	.size	_ZN7NaturalC2Ev, .-_ZN7NaturalC2Ev
	.globl	_ZN7NaturalC1Ev
	.set	_ZN7NaturalC1Ev,_ZN7NaturalC2Ev
	.align 2
	.globl	_ZN7NaturalC2Em
	.type	_ZN7NaturalC2Em, @function
_ZN7NaturalC2Em:
.LFB426:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# this, this
	mov	edi, 8	#,
	push	rax	#
	.cfi_def_cfa_offset 32
	call	malloc	#
	lea	rdx, [rax+8]	# tmp64,
	mov	QWORD PTR [rbx], rax	# this_2(D)->begin, tmp63
	mov	QWORD PTR [rbx+8], rdx	# this_2(D)->end, tmp64
	mov	QWORD PTR [rax], rbp	# MEM[(long unsigned int *)D.10443_1], n
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE426:
	.size	_ZN7NaturalC2Em, .-_ZN7NaturalC2Em
	.globl	_ZN7NaturalC1Em
	.set	_ZN7NaturalC1Em,_ZN7NaturalC2Em
	.align 2
	.globl	_ZN7NaturalC2EPKc
	.type	_ZN7NaturalC2EPKc, @function
_ZN7NaturalC2EPKc:
.LFB429:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xor	eax, eax	# tmp172
	or	rcx, -1	# tmp171,
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xor	r13d, r13d	# tmp174
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rsi	# n, n
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rdi	# this, this
	mov	rdi, rsi	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	repnz scasb
	not	rcx	# tmp169
	lea	rbx, [rcx-1]	# l,
	test	bl, 15	# l,
	mov	rax, rbx	# tmp176, l
	setne	r13b	#, tmp174
	shr	rax, 4	# tmp176,
	add	r13, rax	# tmp177, tmp176
	sal	r13, 3	# D.10392,
	mov	rdi, r13	#, D.10392
	call	malloc	#
	mov	rdx, rbx	#, l
	mov	QWORD PTR [rbp+0], rax	# this_13(D)->begin, D.10393
	add	r13, rax	# D.10401, D.10393
	mov	r14, rax	# D.10393,
	movsx	rax, ebx	# D.10672, l
	mov	QWORD PTR [rbp+8], r13	# this_13(D)->end, D.10401
	sub	rdx, rax	#, D.10672
	lea	rax, [r12-16+rax]	#,
	xor	ebp, ebp	# ivtmp.92
	mov	QWORD PTR [rsp], rdx	# %sfp,
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	jmp	.L18	#
.L19:
	mov	rax, QWORD PTR [rsp]	# tmp181, %sfp
	mov	rdi, QWORD PTR [rsp+8]	# tmp185, %sfp
	mov	esi, 16	#,
	add	rax, rbp	# tmp181, ivtmp.92
	sub	rdi, rbp	# tmp185, ivtmp.92
	add	rbp, 16	# ivtmp.92,
	shr	rax, 4	# tmp181,
	lea	r15, [r14+rax*8]	# D.10411,
	call	_ZL19parseBigendianQwordPKci	#
	mov	QWORD PTR [r15], rax	# *D.10411_29, D.10415
.L18:
	mov	esi, ebx	# i,
	sub	esi, ebp	# i, ivtmp.92
	cmp	esi, 15	# i,
	jg	.L19	#,
	test	esi, esi	# i
	jle	.L17	#,
	movsx	rax, esi	# i, i
	lea	rdi, [r12-16+rax]	# tmp188,
	call	_ZL19parseBigendianQwordPKci	#
	mov	QWORD PTR [r13-8], rax	# MEM[(long unsigned int *)D.10401_21 + -8B], D.10420
.L17:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE429:
	.size	_ZN7NaturalC2EPKc, .-_ZN7NaturalC2EPKc
	.globl	_ZN7NaturalC1EPKc
	.set	_ZN7NaturalC1EPKc,_ZN7NaturalC2EPKc
	.align 2
	.globl	_ZN7NaturalC2ERKS_
	.type	_ZN7NaturalC2ERKS_, @function
_ZN7NaturalC2ERKS_:
.LFB432:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdi	# this, this
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, QWORD PTR [rsi+8]	# D.10381, n_1(D)->end
	sub	rbx, QWORD PTR [rsi]	# D.10381, n_1(D)->begin
	and	rbx, -8	# D.10381,
	mov	rdi, rbx	#, D.10381
	call	malloc	#
	lea	rdx, [rax+rbx]	# tmp78,
	mov	QWORD PTR [r12], rax	# this_11(D)->begin, tmp77
	mov	rcx, rbx	# D.10381, D.10381
	mov	rsi, QWORD PTR [rbp+0]	# n_1(D)->begin, n_1(D)->begin
	mov	rdi, rax	# D.10382, tmp77
	mov	QWORD PTR [r12+8], rdx	# this_11(D)->end, tmp78
	rep movsb
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE432:
	.size	_ZN7NaturalC2ERKS_, .-_ZN7NaturalC2ERKS_
	.globl	_ZN7NaturalC1ERKS_
	.set	_ZN7NaturalC1ERKS_,_ZN7NaturalC2ERKS_
	.align 2
	.globl	_ZN7Natural4swapERS_
	.type	_ZN7Natural4swapERS_, @function
_ZN7Natural4swapERS_:
.LFB444:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi]	# __tmp, MEM[(long unsigned int * &)this_3(D)]
	mov	rdx, QWORD PTR [rsi]	# D.10560, MEM[(long unsigned int * &)n_1(D)]
	mov	QWORD PTR [rdi], rdx	# MEM[(long unsigned int * &)this_3(D)], D.10560
	mov	QWORD PTR [rsi], rax	# MEM[(long unsigned int * &)n_1(D)], __tmp
	mov	rdx, QWORD PTR [rsi+8]	# D.10564, MEM[(long unsigned int * &)n_1(D) + 8]
	mov	rax, QWORD PTR [rdi+8]	# __tmp, MEM[(long unsigned int * &)this_3(D) + 8]
	mov	QWORD PTR [rdi+8], rdx	# MEM[(long unsigned int * &)this_3(D) + 8], D.10564
	mov	QWORD PTR [rsi+8], rax	# MEM[(long unsigned int * &)n_1(D) + 8], __tmp
	ret
	.cfi_endproc
.LFE444:
	.size	_ZN7Natural4swapERS_, .-_ZN7Natural4swapERS_
	.align 2
	.globl	_ZNK7NaturaleqERKS_
	.type	_ZNK7NaturaleqERKS_, @function
_ZNK7NaturaleqERKS_:
.LFB445:
	.cfi_startproc
	mov	r8, QWORD PTR [rdi]	# D.10190, this_2(D)->begin
	mov	rdx, QWORD PTR [rdi+8]	# tmp81, this_2(D)->end
	xor	eax, eax	# D.10203
	mov	rdi, QWORD PTR [rsi]	# D.10196, n_10(D)->begin
	mov	rcx, QWORD PTR [rsi+8]	# tmp85, n_10(D)->end
	sub	rdx, r8	# tmp81, D.10190
	sub	rcx, rdi	# tmp85, D.10196
	sar	rdx, 3	# tmp81,
	sar	rcx, 3	# tmp85,
	cmp	rdx, rcx	# tmp81, tmp85
	jne	.L30	#,
	push	rcx	#
	.cfi_def_cfa_offset 16
	mov	rsi, rdi	#, D.10196
	sal	rdx, 3	# tmp86,
	mov	rdi, r8	#, D.10190
	call	memcmp	#
	pop	rsi	#
	.cfi_def_cfa_offset 8
	test	eax, eax	# tmp87
	sete	al	#, D.10203
.L30:
	ret
	.cfi_endproc
.LFE445:
	.size	_ZNK7NaturaleqERKS_, .-_ZNK7NaturaleqERKS_
	.align 2
	.globl	_ZNK7NaturalneERKS_
	.type	_ZNK7NaturalneERKS_, @function
_ZNK7NaturalneERKS_:
.LFB434:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturaleqERKS_	#
	pop	r9	#
	.cfi_def_cfa_offset 8
	xor	eax, 1	# tmp64,
	ret
	.cfi_endproc
.LFE434:
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
.LFB449:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rdi	# this, this
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi+8]	# this_2(D)->end, this_2(D)->end
	mov	edi, OFFSET FLAT:.LC0	#,
	mov	rsi, QWORD PTR [rax-8]	# MEM[(long unsigned int *)D.10167_3 + -8B], MEM[(long unsigned int *)D.10167_3 + -8B]
	xor	eax, eax	#
	call	printf	#
	mov	rbx, QWORD PTR [rbp+8]	# i, this_2(D)->end
	sub	rbx, 16	# i,
	jmp	.L34	#
.L35:
	mov	rsi, QWORD PTR [rbx]	#, MEM[base: i_1, offset: 0B]
	mov	edi, OFFSET FLAT:.LC1	#,
	xor	eax, eax	#
	sub	rbx, 8	# i,
	call	printf	#
.L34:
	cmp	rbx, QWORD PTR [rbp+0]	# i, this_2(D)->begin
	jae	.L35	#,
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE449:
	.size	_ZNK7Natural5PrintEv, .-_ZNK7Natural5PrintEv
	.align 2
	.globl	_ZNK7Natural4SizeEv
	.type	_ZNK7Natural4SizeEv, @function
_ZNK7Natural4SizeEv:
.LFB450:
	.cfi_startproc
	mov	rcx, QWORD PTR [rdi]	# D.10139, this_2(D)->begin
	mov	rax, QWORD PTR [rdi+8]	# tmp108, this_2(D)->end
	sub	rax, rcx	# tmp108, D.10139
	sar	rax, 3	# tmp108,
	dec	eax	# D.10144
	movsx	rdx, eax	# D.10144, D.10144
	lea	rdi, [rcx+rdx*8]	# D.10762,
	xor	edx, edx	# ivtmp.138
	jmp	.L38	#
.L40:
	inc	rdx	# ivtmp.138
	imul	r8, rdx, -8	# tmp111, ivtmp.138,
	cmp	QWORD PTR [rdi+8+r8], 0	# MEM[base: D.10762_61, index: D.10763_62, offset: 8B],
	je	.L38	#,
.L41:
	mov	edi, esi	# tmp112, selectedQword
	movsx	rsi, esi	# selectedQword, selectedQword
	xor	eax, eax	# result
	sal	edi, 6	# tmp112,
	mov	rdx, QWORD PTR [rcx+rsi*8]	# n, *D.10152_24
	movsx	rdi, edi	# D.10158, tmp112
	jmp	.L39	#
.L38:
	mov	esi, eax	# selectedQword, D.10144
	sub	esi, edx	# selectedQword, ivtmp.138
	test	esi, esi	# selectedQword
	jg	.L40	#,
	jmp	.L41	#
.L42:
	shr	rdx	# n
	inc	rax	# result
.L39:
	test	rdx, rdx	# n
	jne	.L42	#,
	add	rax, rdi	# tmp114, D.10158
	ret
	.cfi_endproc
.LFE450:
	.size	_ZNK7Natural4SizeEv, .-_ZNK7Natural4SizeEv
	.align 2
	.globl	_ZNK7NaturalcvbEv
	.type	_ZNK7NaturalcvbEv, @function
_ZNK7NaturalcvbEv:
.LFB448:
	.cfi_startproc
	call	_ZNK7Natural4SizeEv	#
	test	rax, rax	# D.10178
	setne	al	#, tmp64
	ret
	.cfi_endproc
.LFE448:
	.size	_ZNK7NaturalcvbEv, .-_ZNK7NaturalcvbEv
	.align 2
	.globl	_ZNK7NaturalltERKS_
	.type	_ZNK7NaturalltERKS_, @function
_ZNK7NaturalltERKS_:
.LFB441:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi	# this, this
	call	_ZNK7Natural4SizeEv	#
	mov	rdi, rbp	#, n
	mov	r12, rax	# D.10230,
	call	_ZNK7Natural4SizeEv	#
	cmp	r12, rax	# D.10230, D.10231
	mov	dl, 1	# D.10771,
	jb	.L46	#,
	mov	dl, 0	# D.10771,
	ja	.L46	#,
	mov	rsi, QWORD PTR [rbx]	# D.10777, this_3(D)->begin
	mov	rax, QWORD PTR [rbx+8]	# tmp91, this_3(D)->end
	xor	ecx, ecx	# ivtmp.158
	sub	rax, rsi	# tmp91, D.10777
	sar	rax, 3	# tmp91,
	dec	eax	# D.10782
	movsx	rdx, eax	# D.10782, D.10782
	sal	rdx, 3	# ivtmp.172,
	jmp	.L47	#
.L49:
	mov	rdi, QWORD PTR [rbp+0]	# n_5(D)->begin, n_5(D)->begin
	mov	r8, QWORD PTR [rsi+rdx]	# D.10786, MEM[base: D.10777_39, index: ivtmp.172_60, offset: 0B]
	inc	rcx	# ivtmp.158
	mov	rdi, QWORD PTR [rdi+rdx]	# D.10789, *D.10788_52
	sub	rdx, 8	# ivtmp.172,
	cmp	r8, rdi	# D.10786, D.10789
	jb	.L52	#,
.L47:
	cmp	eax, ecx	# D.10782, ivtmp.158
	jns	.L49	#,
	xor	edx, edx	# D.10771
	jmp	.L46	#
.L52:
	mov	dl, 1	# D.10771,
.L46:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	mov	al, dl	#, D.10771
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE441:
	.size	_ZNK7NaturalltERKS_, .-_ZNK7NaturalltERKS_
	.align 2
	.globl	_ZNK7NaturalgeERKS_
	.type	_ZNK7NaturalgeERKS_, @function
_ZNK7NaturalgeERKS_:
.LFB447:
	.cfi_startproc
	call	_ZNK7NaturalltERKS_	#
	xor	eax, 1	# tmp64,
	ret
	.cfi_endproc
.LFE447:
	.size	_ZNK7NaturalgeERKS_, .-_ZNK7NaturalgeERKS_
	.align 2
	.globl	_ZNK7NaturalleERKS_
	.type	_ZNK7NaturalleERKS_, @function
_ZNK7NaturalleERKS_:
.LFB442:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# this, this
	push	rax	#
	.cfi_def_cfa_offset 32
	call	_ZNK7NaturalltERKS_	#
	test	al, al	# D.10224
	jne	.L56	#,
	mov	rsi, rbp	#, n
	mov	rdi, rbx	#, this
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	jmp	_ZNK7NaturaleqERKS_	#
.L56:
	.cfi_restore_state
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	mov	al, 1	#,
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE442:
	.size	_ZNK7NaturalleERKS_, .-_ZNK7NaturalleERKS_
	.align 2
	.globl	_ZNK7NaturalgtERKS_
	.type	_ZNK7NaturalgtERKS_, @function
_ZNK7NaturalgtERKS_:
.LFB446:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturalleERKS_	#
	pop	rdx	#
	.cfi_def_cfa_offset 8
	xor	eax, 1	# tmp64,
	ret
	.cfi_endproc
.LFE446:
	.size	_ZNK7NaturalgtERKS_, .-_ZNK7NaturalgtERKS_
	.align 2
	.globl	_ZN7Natural6resizeEm
	.type	_ZN7Natural6resizeEm, @function
_ZN7Natural6resizeEm:
.LFB451:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rbp, [0+rsi*8]	# D.10133,
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# this, this
	mov	rsi, rbp	#, D.10133
	push	rcx	#
	.cfi_def_cfa_offset 32
	mov	rdi, QWORD PTR [rdi]	#, this_3(D)->begin
	call	realloc	#
	add	rbp, rax	# tmp65, D.10135
	mov	QWORD PTR [rbx], rax	# this_3(D)->begin, D.10135
	mov	QWORD PTR [rbx+8], rbp	# this_3(D)->end, tmp65
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE451:
	.size	_ZN7Natural6resizeEm, .-_ZN7Natural6resizeEm
	.align 2
	.globl	_ZN7Natural6shrinkEv
	.type	_ZN7Natural6shrinkEv, @function
_ZN7Natural6shrinkEv:
.LFB452:
	.cfi_startproc
	mov	rdx, QWORD PTR [rdi]	# D.10127, this_2(D)->begin
	add	rdx, 8	# D.10127,
.L65:
	mov	rax, QWORD PTR [rdi+8]	# D.10128, this_2(D)->end
	cmp	rdx, rax	# D.10127, D.10128
	jae	.L62	#,
	cmp	QWORD PTR [rax-8], 0	# MEM[(long unsigned int *)D.10128_5 + -8B],
	jne	.L62	#,
	sub	rax, 8	# tmp66,
	mov	QWORD PTR [rdi+8], rax	# this_2(D)->end, tmp66
	jmp	.L65	#
.L62:
	ret
	.cfi_endproc
.LFE452:
	.size	_ZN7Natural6shrinkEv, .-_ZN7Natural6shrinkEv
	.align 2
	.globl	_ZNK7NaturalplERKS_
	.type	_ZNK7NaturalplERKS_, @function
_ZNK7NaturalplERKS_:
.LFB437:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r15, rdx	# n, n
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13, rsi	# this, this
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, rdi	# <retval>, .result_ptr
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	call	_ZN7NaturalC1Ev	#
	mov	r12, QWORD PTR [r13+8]	# tmp111, this_6(D)->end
	mov	rbp, QWORD PTR [r15+8]	# tmp115, n_14(D)->end
	sub	r12, QWORD PTR [r13+0]	# tmp111, this_6(D)->begin
	sub	rbp, QWORD PTR [r15]	# tmp115, n_14(D)->begin
	mov	rdi, QWORD PTR [rbx]	#, <retval>_5(D)->begin
	sar	r12, 3	# tmp111,
	sar	rbp, 3	# tmp115,
	cmp	rbp, r12	# tmp115, tmp111
	mov	rax, r12	# tmp116, tmp111
	cmovae	rax, rbp	# tmp115,, tmp116
	lea	r14, [8+rax*8]	# D.10295,
	mov	rsi, r14	#, D.10295
	call	realloc	#
	lea	rcx, [rax+r14]	# D.10300,
	mov	QWORD PTR [rbx], rax	# <retval>_5(D)->begin, i
	mov	rdx, rax	# i, i
	mov	QWORD PTR [rbx+8], rcx	# <retval>_5(D)->end, D.10300
	jmp	.L67	#
.L68:
	mov	QWORD PTR [rdx], 0	# MEM[base: i_1, offset: 0B],
	add	rdx, 8	# i,
.L67:
	cmp	rdx, rcx	# i, D.10300
	jb	.L68	#,
	mov	rdi, rax	# i, i
	lea	rcx, [0+r12*8]	# tmp118,
	mov	rsi, QWORD PTR [r13+0]	# this_6(D)->begin, this_6(D)->begin
	xor	eax, eax	# ivtmp.192
	rep movsb
	jmp	.L69	#
.L70:
	lea	rdx, [rdx+rax*8]	# D.10316,
	movsx	rcx, ecx	# carry, carry
	mov	QWORD PTR [rsp+8], 0	# %sfp,
	mov	QWORD PTR [rsp+24], 0	# %sfp,
	mov	rdi, QWORD PTR [rsp+24]	# r, %sfp
	mov	rsi, QWORD PTR [rdx]	#, *D.10316_47
	mov	QWORD PTR [rsp], rsi	# %sfp,
	mov	rsi, QWORD PTR [r15]	# n_14(D)->begin, n_14(D)->begin
	add	rcx, QWORD PTR [rsi+rax*8]	# carry, *D.10318_53
	mov	QWORD PTR [rsp+16], rcx	# %sfp, carry
	mov	rsi, QWORD PTR [rsp+16]	# r, %sfp
	add	rsi, QWORD PTR [rsp]	# r, %sfp
	adc	rdi, QWORD PTR [rsp+8]	# r, %sfp
	inc	rax	# ivtmp.192
	mov	QWORD PTR [rdx], rsi	# *D.10316_47, r
	mov	rcx, rdi	# tmp135, r
.L69:
	cmp	rax, rbp	# ivtmp.192, tmp115
	mov	rdx, QWORD PTR [rbx]	# <retval>_5(D)->begin, <retval>_5(D)->begin
	jne	.L70	#,
	movsx	rcx, ecx	# carry, carry
	add	QWORD PTR [rdx+rax*8], rcx	# *D.10316_74, carry
	mov	rdi, rbx	#, <retval>
	call	_ZN7Natural6shrinkEv	#
	add	rsp, 40	#,
	.cfi_def_cfa_offset 56
	mov	rax, rbx	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE437:
	.size	_ZNK7NaturalplERKS_, .-_ZNK7NaturalplERKS_
	.align 2
	.globl	_ZN7NaturalD2Ev
	.type	_ZN7NaturalD2Ev, @function
_ZN7NaturalD2Ev:
.LFB454:
	.cfi_startproc
	mov	rdi, QWORD PTR [rdi]	#, this_1(D)->begin
	jmp	free	#
	.cfi_endproc
.LFE454:
	.size	_ZN7NaturalD2Ev, .-_ZN7NaturalD2Ev
	.globl	_ZN7NaturalD1Ev
	.set	_ZN7NaturalD1Ev,_ZN7NaturalD2Ev
	.align 2
	.globl	_ZN7NaturalaSERKS_
	.type	_ZN7NaturalaSERKS_, @function
_ZN7NaturalaSERKS_:
.LFB443:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 32
	mov	rdi, rsp	#,
	call	_ZN7NaturalC1ERKS_	#
	mov	rsi, rsp	#,
	mov	rdi, rbx	#, this
	call	_ZN7Natural4swapERS_	#
	mov	rdi, rsp	#,
	call	_ZN7NaturalD1Ev	#
	add	rsp, 16	#,
	.cfi_def_cfa_offset 16
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE443:
	.size	_ZN7NaturalaSERKS_, .-_ZN7NaturalaSERKS_
	.align 2
	.globl	_ZN7NaturalpLERKS_
	.type	_ZN7NaturalpLERKS_, @function
_ZN7NaturalpLERKS_:
.LFB440:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdx, rsi	# n, n
	mov	rbx, rdi	# this, this
	mov	rsi, rdi	#, this
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]	#,
	call	_ZNK7NaturalplERKS_	#
	lea	rsi, [rsp+16]	#,
	mov	rdi, rbx	#, this
	call	_ZN7NaturalaSERKS_	#
	lea	rdi, [rsp+16]	#,
	mov	QWORD PTR [rsp+8], rax	#,
	call	_ZN7NaturalD1Ev	#
	mov	rax, QWORD PTR [rsp+8]	#,
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE440:
	.size	_ZN7NaturalpLERKS_, .-_ZN7NaturalpLERKS_
	.align 2
	.globl	_ZN7NaturalppEi
	.type	_ZN7NaturalppEi, @function
_ZN7NaturalppEi:
.LFB439:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi	# this, this
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# <retval>, .result_ptr
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	call	_ZN7NaturalC1ERKS_	#
	mov	rdi, rsp	#,
	mov	esi, 1	#,
	call	_ZN7NaturalC1Em	#
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, this
	call	_ZN7NaturalpLERKS_	#
	mov	rdi, rsp	#,
	call	_ZN7NaturalD1Ev	#
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	mov	rax, rbx	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE439:
	.size	_ZN7NaturalppEi, .-_ZN7NaturalppEi
	.align 2
	.globl	_ZN7NaturalppEv
	.type	_ZN7NaturalppEv, @function
_ZN7NaturalppEv:
.LFB438:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	esi, 1	#,
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]	#,
	call	_ZN7NaturalC1Em	#
	lea	rsi, [rsp+16]	#,
	mov	rdi, rbx	#, this
	call	_ZN7NaturalpLERKS_	#
	lea	rdi, [rsp+16]	#,
	mov	QWORD PTR [rsp+8], rax	#,
	call	_ZN7NaturalD1Ev	#
	mov	rax, QWORD PTR [rsp+8]	#,
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE438:
	.size	_ZN7NaturalppEv, .-_ZN7NaturalppEv
	.align 2
	.globl	_ZNK7NaturalmlERKS_
	.type	_ZNK7NaturalmlERKS_, @function
_ZNK7NaturalmlERKS_:
.LFB435:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	mov	r13, rsi	# this, this
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xor	r12d, r12d	# ivtmp.236
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	rbp, rdi	# <retval>, .result_ptr
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdx	# n, n
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 64
	call	_ZN7NaturalC1Ev	#
	mov	r14, QWORD PTR [r13+0]	# i, this_7(D)->begin
	jmp	.L82	#
.L85:
	mov	rdi, rsp	#,
	call	_ZN7NaturalC1Ev	#
	mov	rsi, QWORD PTR [rbx+8]	# tmp93, n_11(D)->end
	sub	rsi, QWORD PTR [rbx]	# tmp93, n_11(D)->begin
	mov	rdi, rsp	#,
	sar	rsi, 3	# tmp93,
	inc	rsi	# tmp94
	call	_ZN7Natural6resizeEm	#
	mov	rsi, QWORD PTR [rbx]	# j, n_11(D)->begin
	mov	rdi, QWORD PTR [rbx+8]	# D.10339, n_11(D)->end
	mov	rcx, QWORD PTR [rsp]	# ivtmp.232, line.begin
	jmp	.L83	#
.L84:
	mov	rax, QWORD PTR [rsi]	# D.10353, MEM[base: j_4, offset: 0B]
	add	rsi, 8	# j,
	mul	QWORD PTR [r14]	# MEM[base: i_2, offset: 0B]
	add	QWORD PTR [rcx], rax	# MEM[base: D.10885_67, offset: 0B], r
	mov	QWORD PTR [rcx+8], rdx	# MEM[base: D.10885_67, offset: 8B], tmp105
	add	rcx, 8	# ivtmp.232,
.L83:
	cmp	rsi, rdi	# j, D.10339
	jb	.L84	#,
	mov	rsi, r12	#, ivtmp.236
	mov	rdi, rsp	#,
	add	r14, 8	# i,
	call	_ZN7Natural5shiftEm	#
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, <retval>
	inc	r12	# ivtmp.236
	call	_ZN7NaturalpLERKS_	#
	mov	rdi, rsp	#,
	call	_ZN7NaturalD1Ev	#
.L82:
	cmp	r14, QWORD PTR [r13+8]	# i, this_7(D)->end
	jb	.L85	#,
	add	rsp, 16	#,
	.cfi_def_cfa_offset 48
	mov	rax, rbp	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE435:
	.size	_ZNK7NaturalmlERKS_, .-_ZNK7NaturalmlERKS_
	.align 2
	.globl	_ZN7NaturalmLERKS_
	.type	_ZN7NaturalmLERKS_, @function
_ZN7NaturalmLERKS_:
.LFB436:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdx, rsi	# n, n
	mov	rbx, rdi	# this, this
	mov	rsi, rdi	#, this
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]	#,
	call	_ZNK7NaturalmlERKS_	#
	lea	rsi, [rsp+16]	#,
	mov	rdi, rbx	#, this
	call	_ZN7NaturalaSERKS_	#
	lea	rdi, [rsp+16]	#,
	mov	QWORD PTR [rsp+8], rax	#,
	call	_ZN7NaturalD1Ev	#
	mov	rax, QWORD PTR [rsp+8]	#,
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE436:
	.size	_ZN7NaturalmLERKS_, .-_ZN7NaturalmLERKS_
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"OSpwg"
	.section	.note.GNU-stack,"",@progbits
