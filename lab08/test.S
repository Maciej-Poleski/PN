	.file	"test.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_Z5apsind
	.type	_Z5apsind, @function
_Z5apsind:
.LFB114:
	.cfi_startproc
	lea	rsp, [rsp-24]
	.cfi_def_cfa_offset 32
	movapd	xmm1, xmm0
	divsd	xmm1, QWORD PTR .LC0[rip]
	movsd	QWORD PTR [rsp], xmm1
	movapd	xmm0, xmm1
	call	floor
	cvttsd2si	rax, xmm0
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR [rsp]
	test	al, 1
	subsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	je	.L2
	movsd	xmm1, QWORD PTR .LC0[rip]
	subsd	xmm1, xmm0
	movapd	xmm0, xmm1
.L2:
	movapd	xmm2, xmm0
	test	al, 2
	mulsd	xmm2, xmm0
	movapd	xmm1, xmm2
	movapd	xmm3, xmm2
	divsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm3, QWORD PTR .LC2[rip]
	movapd	xmm4, xmm2
	divsd	xmm4, QWORD PTR .LC5[rip]
	mulsd	xmm1, xmm0
	subsd	xmm0, xmm1
	mulsd	xmm3, xmm1
	xorpd	xmm1, xmm1
	addsd	xmm1, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm3
	mulsd	xmm4, xmm0
	subsd	xmm3, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC6[rip]
	addsd	xmm1, xmm3
	movapd	xmm3, xmm2
	divsd	xmm3, QWORD PTR .LC7[rip]
	mulsd	xmm0, xmm4
	subsd	xmm4, xmm0
	addsd	xmm1, xmm4
	movapd	xmm4, xmm2
	divsd	xmm4, QWORD PTR .LC9[rip]
	mulsd	xmm3, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC8[rip]
	mulsd	xmm0, xmm3
	subsd	xmm3, xmm0
	mulsd	xmm4, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC11[rip]
	addsd	xmm1, xmm3
	movapd	xmm3, xmm2
	divsd	xmm3, QWORD PTR .LC10[rip]
	divsd	xmm2, QWORD PTR .LC12[rip]
	mulsd	xmm3, xmm4
	mulsd	xmm0, xmm3
	subsd	xmm4, xmm3
	addsd	xmm1, xmm4
	mulsd	xmm2, xmm0
	subsd	xmm0, xmm2
	addsd	xmm0, xmm1
	je	.L3
	movsd	xmm1, QWORD PTR .LC13[rip]
	xorpd	xmm0, xmm1
.L3:
	lea	rsp, [rsp+24]
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	_Z5apsind, .-_Z5apsind
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"%+14.10lf = 0x%016lx\n"
	.text
	.p2align 4,,15
	.globl	_Z4showd
	.type	_Z4showd, @function
_Z4showd:
.LFB115:
	.cfi_startproc
	movd	rsi, xmm0
	mov	edi, OFFSET FLAT:.LC14
	mov	eax, 1
	jmp	printf
	.cfi_endproc
.LFE115:
	.size	_Z4showd, .-_Z4showd
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB116:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	edx, 10
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	lea	rsp, [rsp-56]
	.cfi_def_cfa_offset 80
	mov	rdi, QWORD PTR [rsi+8]
	xor	esi, esi
	call	strtol
	test	eax, eax
	lea	ebp, [rax]
	xorpd	xmm7, xmm7
	jle	.L15
	xorpd	xmm7, xmm7
	xor	ebx, ebx
	xor	edx, edx
	movapd	xmm1, xmm7
	movsd	xmm6, QWORD PTR .LC0[rip]
	.p2align 4,,15
.L28:
	movapd	xmm2, xmm1
	and	edx, 2
	mulsd	xmm2, xmm1
	movapd	xmm0, xmm2
	movapd	xmm3, xmm2
	divsd	xmm0, QWORD PTR .LC1[rip]
	divsd	xmm3, QWORD PTR .LC2[rip]
	movapd	xmm4, xmm2
	divsd	xmm4, QWORD PTR .LC5[rip]
	mulsd	xmm0, xmm1
	subsd	xmm1, xmm0
	mulsd	xmm3, xmm0
	xorpd	xmm0, xmm0
	addsd	xmm1, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm3
	mulsd	xmm4, xmm0
	subsd	xmm3, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC6[rip]
	addsd	xmm1, xmm3
	movapd	xmm3, xmm2
	divsd	xmm3, QWORD PTR .LC7[rip]
	mulsd	xmm0, xmm4
	subsd	xmm4, xmm0
	addsd	xmm1, xmm4
	movapd	xmm4, xmm2
	divsd	xmm4, QWORD PTR .LC9[rip]
	mulsd	xmm3, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC8[rip]
	mulsd	xmm0, xmm3
	subsd	xmm3, xmm0
	mulsd	xmm4, xmm0
	movapd	xmm0, xmm2
	divsd	xmm0, QWORD PTR .LC11[rip]
	addsd	xmm1, xmm3
	movapd	xmm3, xmm2
	divsd	xmm3, QWORD PTR .LC10[rip]
	divsd	xmm2, QWORD PTR .LC12[rip]
	mulsd	xmm3, xmm4
	mulsd	xmm0, xmm3
	subsd	xmm4, xmm3
	addsd	xmm1, xmm4
	mulsd	xmm2, xmm0
	subsd	xmm0, xmm2
	addsd	xmm1, xmm0
	je	.L17
	xorpd	xmm1, XMMWORD PTR .LC13[rip]
.L17:
	lea	ebx, [rbx+1]
	addsd	xmm7, xmm1
	cmp	ebx, ebp
	jge	.L15
	cvtsi2sd	xmm1, ebx
	divsd	xmm1, xmm6
	movsd	QWORD PTR [rsp+16], xmm6
	movsd	QWORD PTR [rsp], xmm7
	movsd	QWORD PTR [rsp+32], xmm1
	movapd	xmm0, xmm1
	call	floor
	cvttsd2si	rdx, xmm0
	cvtsi2sd	xmm0, rdx
	movsd	xmm1, QWORD PTR [rsp+32]
	test	dl, 1
	subsd	xmm1, xmm0
	movsd	xmm6, QWORD PTR [rsp+16]
	movsd	xmm7, QWORD PTR [rsp]
	mulsd	xmm1, xmm6
	je	.L28
	movapd	xmm0, xmm6
	subsd	xmm0, xmm1
	movapd	xmm1, xmm0
	jmp	.L28
	.p2align 4,,7
	.p2align 3
.L15:
	movapd	xmm0, xmm7
	call	_Z4showd
	lea	rsp, [rsp+56]
	.cfi_def_cfa_offset 24
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1413754136
	.long	1073291771
	.align 8
.LC1:
	.long	0
	.long	1075314688
	.align 8
.LC2:
	.long	0
	.long	1077149696
	.align 8
.LC4:
	.long	0
	.long	1078263808
	.align 8
.LC5:
	.long	0
	.long	1079115776
	.align 8
.LC6:
	.long	0
	.long	1079738368
	.align 8
.LC7:
	.long	0
	.long	1080262656
	.align 8
.LC8:
	.long	0
	.long	1080705024
	.align 8
.LC9:
	.long	0
	.long	1081147392
	.align 8
.LC10:
	.long	0
	.long	1081434112
	.align 8
.LC11:
	.long	0
	.long	1081753600
	.align 8
.LC12:
	.long	0
	.long	1082105856
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"OspWg"
	.section	.note.GNU-stack,"",@progbits
