	.file	"expr.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.6.3 p1.6, pie-0.5.2) version 4.6.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.6.3, GMP version 5.0.5, MPFR version 3.1.1, MPC version 1.0.1
# warning: GMP header version 5.0.5 differs from library version 5.1.1.
# warning: MPFR header version 3.1.1 differs from library version 3.1.1-p2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  expr.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip expr.S -O2 -Wall -Wextra -pedantic -std=c99 -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
# -fipa-reference -fipa-sra -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -fpartial-inlining -fpeephole -fpeephole2 -fprefetch-loop-arrays
# -freg-struct-return -fregmove -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
# -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
# -ftree-vrp -funit-at-a-time -funwind-tables -fvect-cost-model
# -fverbose-asm -fzee -fzero-initialized-in-bss -m128bit-long-double -m64
# -m80387 -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mglibc -mieee-fp -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mtls-direct-seg-refs

# Compiler executable checksum: 86ebb10a4a46503710e382d527e20173

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" +%n"
.LC1:
	.string	" -%n"
	.text
	.p2align 4,,15
	.type	expr_parse_whole, @function
expr_parse_whole:
.LFB48:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# expr, expr
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	call	expr_parse_term	#
	mov	rbp, rax	# text,
.L6:
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, text
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	edx, DWORD PTR [rsp+12]	#, shift
	test	edx, edx	#
	jne	.L9	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rbp	#, text
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	#, shift
	test	eax, eax	#
	jne	.L10	#,
	add	rsp, 24	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	mov	rax, rbp	#, text
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [rbx]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+8]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+8], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+16]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+16], rdx	# *left_7, *expr_2(D)
	mov	DWORD PTR [rbx], 7	# expr_2(D)->kind,
.L7:
	mov	edi, 24	#,
	mov	QWORD PTR [rbx+8], rax	# expr_2(D)->D.3340.binary.left, tmp84
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	QWORD PTR [rbx+16], rax	# expr_2(D)->D.3340.binary.right, tmp88
	mov	rdi, rax	#, tmp88
	add	rsi, rbp	# D.3465, text
	call	expr_parse_term	#
	mov	rbp, rax	# text,
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L10:
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [rbx]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax], rdx	# *left_16, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+8]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+8], rdx	# *left_16, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+16]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+16], rdx	# *left_16, *expr_2(D)
	mov	DWORD PTR [rbx], 8	# expr_2(D)->kind,
	jmp	.L7	#
	.cfi_endproc
.LFE48:
	.size	expr_parse_whole, .-expr_parse_whole
	.section	.rodata.str1.1
.LC2:
	.string	" %f%n"
.LC3:
	.string	" x%hhu%n"
.LC4:
	.string	" sqrt%n"
.LC5:
	.string	" sin%n"
.LC6:
	.string	" cos%n"
.LC7:
	.string	" min (%n"
.LC8:
	.string	" ,%n"
.LC9:
	.string	" )%n"
.LC10:
	.string	" max (%n"
.LC11:
	.string	" (%n"
	.text
	.p2align 4,,15
	.type	expr_parse_atom, @function
expr_parse_atom:
.LFB45:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	rbx, rsi	# text, text
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -16
	lea	r12, [rdi+8]	# tmp129,
	lea	rcx, [rsp+12]	#,
	xor	eax, eax	#
	mov	rbp, rdi	# expr, expr
	mov	rdx, r12	#, tmp129
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rbx	#, text
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	# shift.8, shift
	test	eax, eax	# shift.8
	je	.L12	#,
	movsx	r12, eax	# shift.8, shift.8
	mov	DWORD PTR [rbp+0], 0	# expr_2(D)->kind,
	add	r12, rbx	# D.3502, text
.L13:
	mov	rax, r12	#, D.3502
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	lea	rcx, [rsp+12]	#,
	mov	rdx, r12	#, tmp129
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r12d, DWORD PTR [rsp+12]	# shift.8, shift
	test	r12d, r12d	# shift.8
	je	.L14	#,
	movsx	r12, r12d	# shift.8, shift.8
	mov	DWORD PTR [rbp+0], 1	# expr_2(D)->kind,
	add	r12, rbx	# D.3502, text
	jmp	.L13	#
	.p2align 4,,10
	.p2align 3
.L14:
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r12d, DWORD PTR [rsp+12]	#, shift
	test	r12d, r12d	#
	jne	.L34	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r11d, DWORD PTR [rsp+12]	#, shift
	test	r11d, r11d	#
	jne	.L35	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC4	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r10d, DWORD PTR [rsp+12]	#, shift
	test	r10d, r10d	#
	jne	.L36	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC5	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r9d, DWORD PTR [rsp+12]	#, shift
	test	r9d, r9d	#
	jne	.L37	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	r8d, DWORD PTR [rsp+12]	#, shift
	test	r8d, r8d	#
	jne	.L38	#,
	lea	rdx, [rsp+12]	#,
	mov	rdi, rbx	#, text
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC7	#,
	call	__isoc99_sscanf	#
	mov	edi, DWORD PTR [rsp+12]	#, shift
	test	edi, edi	#
	je	.L20	#,
	mov	DWORD PTR [rbp+0], 12	# expr_2(D)->kind,
.L33:
	mov	edi, 24	#,
	xor	r12d, r12d	# D.3502
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	rdi, rax	#, tmp170
	mov	QWORD PTR [rbp+8], rax	# expr_2(D)->D.3340.binary.left, tmp170
	add	rsi, rbx	# D.3512, text
	call	expr_parse_whole	#
	lea	rdx, [rsp+12]	#,
	mov	rdi, rax	#, text
	mov	rbx, rax	# text,
	mov	esi, OFFSET FLAT:.LC8	#,
	xor	eax, eax	#
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	ecx, DWORD PTR [rsp+12]	#, shift
	test	ecx, ecx	#
	je	.L13	#,
	mov	edi, 24	#,
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	QWORD PTR [rbp+16], rax	# expr_2(D)->D.3340.binary.right, tmp174
	mov	rdi, rax	#, tmp174
	add	rsi, rbx	# D.3512, text
.L30:
	call	expr_parse_whole	#
	lea	rdx, [rsp+12]	#,
	mov	rdi, rax	#, text
	mov	rbx, rax	# text,
	mov	esi, OFFSET FLAT:.LC9	#,
	xor	eax, eax	#
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	# shift.8, shift
	test	eax, eax	# shift.8
	je	.L13	#,
	cdqe
	lea	r12, [rbx+rax]	# D.3502,
	jmp	.L13	#
	.p2align 4,,10
	.p2align 3
.L34:
	mov	DWORD PTR [rbp+0], 2	# expr_2(D)->kind,
.L28:
	mov	edi, 24	#,
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	QWORD PTR [rbp+8], rax	# expr_2(D)->D.3340.unary.inner, tmp140
	mov	rdi, rax	#, tmp140
	add	rsi, rbx	# tmp143, text
	call	expr_parse_atom	#
	mov	r12, rax	# D.3502,
	jmp	.L13	#
	.p2align 4,,10
	.p2align 3
.L36:
	mov	DWORD PTR [rbp+0], 4	# expr_2(D)->kind,
	jmp	.L28	#
	.p2align 4,,10
	.p2align 3
.L35:
	mov	DWORD PTR [rbp+0], 3	# expr_2(D)->kind,
	jmp	.L28	#
	.p2align 4,,10
	.p2align 3
.L37:
	mov	DWORD PTR [rbp+0], 5	# expr_2(D)->kind,
	jmp	.L28	#
.L38:
	mov	DWORD PTR [rbp+0], 6	# expr_2(D)->kind,
	jmp	.L28	#
.L20:
	lea	rdx, [rsp+12]	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	xor	eax, eax	#
	mov	rdi, rbx	#, text
	call	__isoc99_sscanf	#
	mov	esi, DWORD PTR [rsp+12]	#, shift
	test	esi, esi	#
	je	.L21	#,
	mov	DWORD PTR [rbp+0], 13	# expr_2(D)->kind,
	jmp	.L33	#
.L21:
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	rdi, rbx	#, text
	xor	r12d, r12d	# D.3502
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	# shift.8, shift
	test	eax, eax	# shift.8
	je	.L13	#,
	cdqe
	mov	rdi, rbp	#, expr
	lea	rsi, [rbx+rax]	# D.3512,
	jmp	.L30	#
	.cfi_endproc
.LFE45:
	.size	expr_parse_atom, .-expr_parse_atom
	.section	.rodata.str1.1
.LC12:
	.string	" ^%n"
	.text
	.p2align 4,,15
	.type	expr_parse_factor, @function
expr_parse_factor:
.LFB46:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# expr, expr
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	call	expr_parse_atom	#
	lea	rdx, [rsp+12]	#,
	mov	rdi, rax	#, text
	mov	rbp, rax	# text,
	mov	esi, OFFSET FLAT:.LC12	#,
	xor	eax, eax	#
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	#, shift
	test	eax, eax	#
	je	.L40	#,
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [rbx]	# *expr_2(D), *expr_2(D)
	mov	edi, 24	#,
	mov	QWORD PTR [rax], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+8]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+8], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+16]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+16], rdx	# *left_7, *expr_2(D)
	mov	DWORD PTR [rbx], 11	# expr_2(D)->kind,
	mov	QWORD PTR [rbx+8], rax	# expr_2(D)->D.3340.binary.left, tmp70
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	QWORD PTR [rbx+16], rax	# expr_2(D)->D.3340.binary.right, tmp74
	mov	rdi, rax	#, tmp74
	add	rsi, rbp	# D.3493, text
	call	expr_parse_factor	#
	mov	rbp, rax	# text,
.L40:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	mov	rax, rbp	#, text
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	expr_parse_factor, .-expr_parse_factor
	.section	.rodata.str1.1
.LC13:
	.string	" *%n"
.LC14:
	.string	" /%n"
	.text
	.p2align 4,,15
	.type	expr_parse_term, @function
expr_parse_term:
.LFB47:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# expr, expr
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	call	expr_parse_factor	#
	mov	rbp, rax	# text,
.L46:
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rbp	#, text
	mov	DWORD PTR [rsp+12], 0	# shift,
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	#, shift
	test	eax, eax	#
	jne	.L48	#,
	lea	rdx, [rsp+12]	#,
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	rdi, rbp	#, text
	call	__isoc99_sscanf	#
	mov	eax, DWORD PTR [rsp+12]	#, shift
	test	eax, eax	#
	jne	.L49	#,
	add	rsp, 24	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	mov	rax, rbp	#, text
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [rbx]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+8]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+8], rdx	# *left_7, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+16]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+16], rdx	# *left_7, *expr_2(D)
	mov	DWORD PTR [rbx], 9	# expr_2(D)->kind,
.L47:
	mov	edi, 24	#,
	mov	QWORD PTR [rbx+8], rax	# expr_2(D)->D.3340.binary.left, tmp84
	call	malloc	#
	movsx	rsi, DWORD PTR [rsp+12]	# shift, shift
	mov	QWORD PTR [rbx+16], rax	# expr_2(D)->D.3340.binary.right, tmp88
	mov	rdi, rax	#, tmp88
	add	rsi, rbp	# D.3479, text
	call	expr_parse_factor	#
	mov	rbp, rax	# text,
	jmp	.L46	#
	.p2align 4,,10
	.p2align 3
.L49:
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [rbx]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax], rdx	# *left_16, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+8]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+8], rdx	# *left_16, *expr_2(D)
	mov	rdx, QWORD PTR [rbx+16]	# *expr_2(D), *expr_2(D)
	mov	QWORD PTR [rax+16], rdx	# *left_16, *expr_2(D)
	mov	DWORD PTR [rbx], 10	# expr_2(D)->kind,
	jmp	.L47	#
	.cfi_endproc
.LFE47:
	.size	expr_parse_term, .-expr_parse_term
	.p2align 4,,15
	.globl	expr_create
	.type	expr_create, @function
expr_create:
.LFB49:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -16
	.cfi_offset 3, -24
	mov	rbp, rdi	# text, text
	mov	edi, 24	#,
	call	malloc	#
	mov	rsi, rbp	#, text
	mov	rbx, rax	# tmp62,
	mov	rdi, rax	#, tmp62
	call	expr_parse_whole	#
	mov	rax, rbx	#, tmp62
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	expr_create, .-expr_create
	.p2align 4,,15
	.globl	expr_destroy
	.type	expr_destroy, @function
expr_destroy:
.LFB50:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [rdi]	# expr_1(D)->kind, expr_1(D)->kind
	mov	rbx, rdi	# expr, expr
	cmp	eax, 2	# expr_1(D)->kind,
	jb	.L52	#,
	cmp	eax, 6	# expr_1(D)->kind,
	ja	.L56	#,
	mov	rdi, QWORD PTR [rdi+8]	# expr_1(D)->D.3340.unary.inner, expr_1(D)->D.3340.unary.inner
	call	expr_destroy	#
.L52:
	mov	rdi, rbx	#, expr
	pop	rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	free	#
	.p2align 4,,10
	.p2align 3
.L56:
	.cfi_restore_state
	cmp	eax, 13	# expr_1(D)->kind,
	ja	.L52	#,
	mov	rdi, QWORD PTR [rdi+8]	# expr_1(D)->D.3340.binary.left, expr_1(D)->D.3340.binary.left
	call	expr_destroy	#
	mov	rdi, QWORD PTR [rbx+16]	# expr_1(D)->D.3340.binary.right, expr_1(D)->D.3340.binary.right
	call	expr_destroy	#
	mov	rdi, rbx	#, expr
	pop	rbx	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.cfi_endproc
.LFE50:
	.size	expr_destroy, .-expr_destroy
	.p2align 4,,15
	.globl	expr_eval_one
	.type	expr_eval_one, @function
expr_eval_one:
.LFB51:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	rbx, rsi	# expr, expr
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -16
	cmp	DWORD PTR [rsi], 13	# expr_3(D)->kind,
	mov	r12, rdi	# result, result
	mov	rbp, rdx	# vars, vars
	ja	.L57	#,
	mov	eax, DWORD PTR [rsi]	# expr_3(D)->kind, expr_3(D)->kind
	jmp	[QWORD PTR .L73[0+rax*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L73:
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.quad	.L65
	.quad	.L66
	.quad	.L67
	.quad	.L68
	.quad	.L69
	.quad	.L70
	.quad	.L71
	.quad	.L72
	.text
	.p2align 4,,10
	.p2align 3
.L72:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# iftmp.4, left
	maxss	xmm0, DWORD PTR [rsp+12]	# iftmp.4, right
.L82:
	movss	DWORD PTR [r12], xmm0	# *result_6(D), iftmp.4
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	.cfi_restore_state
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# iftmp.3, left
	minss	xmm0, DWORD PTR [rsp+12]	# iftmp.3, right
	movss	DWORD PTR [r12], xmm0	# *result_6(D), iftmp.3
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L59:
	mov	eax, DWORD PTR [rsi+8]	# D.3420, expr_3(D)->D.3340.constant
	mov	DWORD PTR [rdi], eax	# *result_6(D), D.3420
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L60:
	movzx	eax, BYTE PTR [rsi+8]	# expr_3(D)->D.3340.variable, expr_3(D)->D.3340.variable
	mov	eax, DWORD PTR [rdx+rax*4]	# D.3425, *D.3424_11
	mov	DWORD PTR [rdi], eax	# *result_6(D), D.3425
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L61:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.unary.inner, expr_3(D)->D.3340.unary.inner
	lea	rdi, [rsp+4]	#,
	call	expr_eval_one	#
	mov	eax, DWORD PTR [rsp+4]	# inner, inner
	mov	DWORD PTR [r12], eax	# *result_6(D), inner
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L62:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.unary.inner, expr_3(D)->D.3340.unary.inner
	lea	rdi, [rsp+4]	#,
	call	expr_eval_one	#
	movss	xmm1, DWORD PTR .LC15[rip]	# tmp129,
	movss	xmm0, DWORD PTR [rsp+4]	# tmp128, inner
	xorps	xmm0, xmm1	# tmp128, tmp129
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp128
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L63:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.unary.inner, expr_3(D)->D.3340.unary.inner
	lea	rdi, [rsp+4]	#,
	call	expr_eval_one	#
	sqrtss	xmm0, DWORD PTR [rsp+4]	# tmp132, inner
	ucomiss	xmm0, xmm0	# tmp132, tmp132
	jnp	.L82	#,
	movss	xmm0, DWORD PTR [rsp+4]	#, inner
	call	sqrtf	#
	jmp	.L82	#
	.p2align 4,,10
	.p2align 3
.L64:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.unary.inner, expr_3(D)->D.3340.unary.inner
	lea	rdi, [rsp+4]	#,
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+4]	#, inner
	call	sinf	#
	movss	DWORD PTR [r12], xmm0	# *result_6(D), D.3430
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L65:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.unary.inner, expr_3(D)->D.3340.unary.inner
	lea	rdi, [rsp+4]	#,
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+4]	#, inner
	call	cosf	#
	movss	DWORD PTR [r12], xmm0	# *result_6(D), D.3431
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L66:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# tmp145, left
	addss	xmm0, DWORD PTR [rsp+12]	# tmp145, right
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp145
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L67:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# tmp151, left
	subss	xmm0, DWORD PTR [rsp+12]	# tmp151, right
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp151
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L68:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# tmp157, left
	mulss	xmm0, DWORD PTR [rsp+12]	# tmp157, right
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp157
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm0, DWORD PTR [rsp+8]	# tmp163, left
	divss	xmm0, DWORD PTR [rsp+12]	# tmp163, right
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp163
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L70:
	mov	rsi, QWORD PTR [rsi+8]	# expr_3(D)->D.3340.binary.left, expr_3(D)->D.3340.binary.left
	lea	rdi, [rsp+8]	#,
	call	expr_eval_one	#
	mov	rsi, QWORD PTR [rbx+16]	# expr_3(D)->D.3340.binary.right, expr_3(D)->D.3340.binary.right
	lea	rdi, [rsp+12]	#,
	mov	rdx, rbp	#, vars
	call	expr_eval_one	#
	movss	xmm1, DWORD PTR [rsp+12]	#, right
	movss	xmm0, DWORD PTR [rsp+8]	#, left
	call	powf	#
	movss	DWORD PTR [r12], xmm0	# *result_6(D), tmp170
	jmp	.L57	#
	.cfi_endproc
.LFE51:
	.size	expr_eval_one, .-expr_eval_one
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC15:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Gentoo 4.6.3 p1.6, pie-0.5.2) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
