	.file	"main.cpp"
	.intel_syntax noprefix
	.section	.text._ZN7Semafor4downEv,"axG",@progbits,_ZN7Semafor4downEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7Semafor4downEv
	.type	_ZN7Semafor4downEv, @function
_ZN7Semafor4downEv:
.LFB2600:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	rbx, [rdi]
	lea	rsp, [rsp-16]
	.cfi_def_cfa_offset 32
	jmp	.L2
	.p2align 4,,7
	.p2align 3
.L3:
	sub	ecx, 1
	mov	DWORD PTR [rsp], 0
	xor	r9d, r9d
	xor	r8d, r8d
	xor	edx, edx
	lea	rsi, [rbx]
	mov	edi, 202
	xor	eax, eax
	call	syscall
	lock add	DWORD PTR [rbx], 1
.L2:
	mov	ecx, -1
	lock xadd	DWORD PTR [rbx], ecx
	test	ecx, ecx
	jle	.L3
	lea	rsp, [rsp+16]
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2600:
	.size	_ZN7Semafor4downEv, .-_ZN7Semafor4downEv
	.section	.text._ZN7Semafor2upEv,"axG",@progbits,_ZN7Semafor2upEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7Semafor2upEv
	.type	_ZN7Semafor2upEv, @function
_ZN7Semafor2upEv:
.LFB2601:
	.cfi_startproc
	mov	eax, 1
	lock xadd	DWORD PTR [rdi], eax
	test	eax, eax
	js	.L11
	ret
	.p2align 4,,7
	.p2align 3
.L11:
	lea	rsp, [rsp-24]
	.cfi_def_cfa_offset 32
	lea	rsi, [rdi]
	mov	DWORD PTR [rsp], 0
	xor	r9d, r9d
	xor	r8d, r8d
	mov	ecx, 1
	mov	edx, 1
	mov	edi, 202
	xor	eax, eax
	call	syscall
	lea	rsp, [rsp+24]
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2601:
	.size	_ZN7Semafor2upEv, .-_ZN7Semafor2upEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2602:
	.cfi_startproc
	lea	rsp, [rsp-24]
	.cfi_def_cfa_offset 32
	lea	rdi, [rsp]
	mov	DWORD PTR [rsp], 1
	call	_ZN7Semafor4downEv
	lea	rdi, [rsp]
	call	_ZN7Semafor2upEv
	lea	rdi, [rsp]
	call	_ZN7Semafor2upEv
	lea	rdi, [rsp]
	call	_ZN7Semafor4downEv
	lea	rdi, [rsp]
	call	_ZN7Semafor4downEv
	xor	eax, eax
	lea	rsp, [rsp+24]
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2602:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2796:
	.cfi_startproc
	lea	rsp, [rsp-8]
	.cfi_def_cfa_offset 16
	mov	edi, OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	edx, OFFSET FLAT:__dso_handle
	mov	esi, OFFSET FLAT:_ZStL8__ioinit
	mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	lea	rsp, [rsp+8]
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2796:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"OspWg"
	.section	.note.GNU-stack,"",@progbits
