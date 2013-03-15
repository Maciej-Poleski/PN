	.file	"expr.c"
	.intel_syntax noprefix
	.text
	.type	expr_eval_one, @function
expr_eval_one:
.LFB6:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rsi
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	cmp	DWORD PTR [rsi], 13
	ja	.L1
	mov	eax, DWORD PTR [rsi]
	mov	r12, rdi
	mov	rbp, rdx
	jmp	[QWORD PTR .L17[0+rax*8]]
	.section	.rodata
	.align 8
	.align 4
.L17:
	.quad	.L3
	.quad	.L4
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.text
.L3:
	movss	xmm0, DWORD PTR [rsi+8]
	jmp	.L25
.L4:
	movzx	eax, BYTE PTR [rsi+8]
	movss	xmm0, DWORD PTR [rdx+rax*4]
	jmp	.L25
.L5:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+12]
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L6:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+12]
	call	expr_eval_one
	movss	xmm1, DWORD PTR .LC0[rip]
	movss	xmm0, DWORD PTR [rsp+12]
	xorps	xmm0, xmm1
	jmp	.L25
.L7:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+12]
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+12]
	call	sqrtf
	jmp	.L25
.L8:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+12]
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+12]
	call	sinf
	jmp	.L25
.L9:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+12]
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+12]
	call	cosf
	jmp	.L25
.L10:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	addss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L11:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	subss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L12:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	mulss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L13:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	divss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L14:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm1, DWORD PTR [rsp+12]
	movss	xmm0, DWORD PTR [rsp+8]
	call	powf
	jmp	.L25
.L15:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	minss	xmm0, DWORD PTR [rsp+12]
	jmp	.L25
.L16:
	mov	rsi, QWORD PTR [rsi+8]
	lea	rdi, [rsp+8]
	call	expr_eval_one
	mov	rsi, QWORD PTR [rbx+16]
	lea	rdi, [rsp+12]
	mov	rdx, rbp
	call	expr_eval_one
	movss	xmm0, DWORD PTR [rsp+8]
	maxss	xmm0, DWORD PTR [rsp+12]
.L25:
	movss	DWORD PTR [r12], xmm0
.L1:
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6:
	.size	expr_eval_one, .-expr_eval_one
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	" +%n"
.LC2:
	.string	" -%n"
	.text
	.type	expr_parse_whole, @function
expr_parse_whole:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 24
	.cfi_def_cfa_offset 48
.L33:
	call	expr_parse_term
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.LC1
	xor	eax, eax
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L27
	mov	edi, 24
	call	malloc
	mov	ecx, 6
	mov	rdi, rax
	mov	rsi, rbx
	rep movsd
	mov	DWORD PTR [rbx], 7
	jmp	.L34
.L27:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC2
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L29
	mov	edi, 24
	call	malloc
	mov	ecx, 6
	mov	rdi, rax
	mov	rsi, rbx
	rep movsd
	mov	DWORD PTR [rbx], 8
.L34:
	mov	edi, 24
	mov	QWORD PTR [rbx+8], rax
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	QWORD PTR [rbx+16], rax
	mov	rdi, rax
	add	rsi, rbp
	jmp	.L33
.L29:
	add	rsp, 24
	.cfi_def_cfa_offset 24
	mov	rax, rbp
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	expr_parse_whole, .-expr_parse_whole
	.section	.rodata.str1.1
.LC3:
	.string	" %f%n"
.LC4:
	.string	" x%hhu%n"
.LC5:
	.string	" sqrt%n"
.LC6:
	.string	" sin%n"
.LC7:
	.string	" cos%n"
.LC8:
	.string	" min (%n"
.LC9:
	.string	" ,%n"
.LC10:
	.string	" )%n"
.LC11:
	.string	" max (%n"
.LC12:
	.string	" (%n"
	.text
	.type	expr_parse_atom, @function
expr_parse_atom:
.LFB0:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	lea	r12, [rdi+8]
	xor	eax, eax
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi
	mov	rdx, r12
	mov	esi, OFFSET FLAT:.LC3
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi
	mov	rdi, rbp
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	lea	rcx, [rsp+12]
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	movsx	rax, DWORD PTR [rsp+12]
	test	eax, eax
	je	.L36
	mov	DWORD PTR [rbx], 0
	jmp	.L61
.L36:
	lea	rcx, [rsp+12]
	xor	eax, eax
	mov	rdx, r12
	mov	esi, OFFSET FLAT:.LC4
	mov	rdi, rbp
	call	__isoc99_sscanf
	movsx	rax, DWORD PTR [rsp+12]
	test	eax, eax
	je	.L38
	mov	DWORD PTR [rbx], 1
.L61:
	add	rax, rbp
	jmp	.L37
.L38:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC1
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L39
	mov	DWORD PTR [rbx], 2
	jmp	.L63
.L39:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC2
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L40
	mov	DWORD PTR [rbx], 3
.L63:
	mov	edi, 24
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	QWORD PTR [rbx+8], rax
	mov	rdi, rax
	add	rsi, rbp
	call	expr_parse_atom
	jmp	.L37
.L40:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC5
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L41
	mov	DWORD PTR [rbx], 4
	jmp	.L63
.L41:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC6
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L42
	mov	DWORD PTR [rbx], 5
	jmp	.L63
.L42:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC7
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L43
	mov	DWORD PTR [rbx], 6
	jmp	.L63
.L43:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC8
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L44
	mov	DWORD PTR [rbx], 12
.L68:
	mov	edi, 24
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	rdi, rax
	mov	QWORD PTR [rbx+8], rax
	add	rsi, rbp
	call	expr_parse_whole
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.LC9
	xor	eax, eax
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	jne	.L67
.L46:
	xor	eax, eax
	jmp	.L37
.L44:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC11
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L47
	mov	DWORD PTR [rbx], 13
	jmp	.L68
.L67:
	mov	edi, 24
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	QWORD PTR [rbx+16], rax
	mov	rdi, rax
	add	rsi, rbp
	jmp	.L65
.L47:
	lea	rdx, [rsp+12]
	mov	esi, OFFSET FLAT:.LC12
	xor	eax, eax
	mov	rdi, rbp
	call	__isoc99_sscanf
	movsx	rsi, DWORD PTR [rsp+12]
	test	esi, esi
	je	.L46
	add	rsi, rbp
	mov	rdi, rbx
.L65:
	call	expr_parse_whole
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.LC10
	xor	eax, eax
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	movsx	rax, DWORD PTR [rsp+12]
	test	eax, eax
	je	.L46
	add	rax, rbx
.L37:
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	expr_parse_atom, .-expr_parse_atom
	.section	.rodata.str1.1
.LC13:
	.string	" ^%n"
	.text
	.type	expr_parse_factor, @function
expr_parse_factor:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	call	expr_parse_atom
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.LC13
	xor	eax, eax
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L70
	mov	edi, 24
	call	malloc
	mov	ecx, 6
	mov	rdi, rax
	mov	rsi, rbx
	rep movsd
	mov	edi, 24
	mov	DWORD PTR [rbx], 11
	mov	QWORD PTR [rbx+8], rax
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	QWORD PTR [rbx+16], rax
	mov	rdi, rax
	add	rsi, rbp
	call	expr_parse_factor
	mov	rbp, rax
.L70:
	add	rsp, 24
	.cfi_def_cfa_offset 24
	mov	rax, rbp
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	expr_parse_factor, .-expr_parse_factor
	.section	.rodata.str1.1
.LC14:
	.string	" *%n"
.LC15:
	.string	" /%n"
	.text
	.type	expr_parse_term, @function
expr_parse_term:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 24
	.cfi_def_cfa_offset 48
.L79:
	call	expr_parse_factor
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.LC14
	xor	eax, eax
	mov	DWORD PTR [rsp+12], 0
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L73
	mov	edi, 24
	call	malloc
	mov	ecx, 6
	mov	rdi, rax
	mov	rsi, rbx
	rep movsd
	mov	DWORD PTR [rbx], 9
	jmp	.L80
.L73:
	lea	rdx, [rsp+12]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC15
	mov	rdi, rbp
	call	__isoc99_sscanf
	cmp	DWORD PTR [rsp+12], 0
	je	.L75
	mov	edi, 24
	call	malloc
	mov	ecx, 6
	mov	rdi, rax
	mov	rsi, rbx
	rep movsd
	mov	DWORD PTR [rbx], 10
.L80:
	mov	edi, 24
	mov	QWORD PTR [rbx+8], rax
	call	malloc
	movsx	rsi, DWORD PTR [rsp+12]
	mov	QWORD PTR [rbx+16], rax
	mov	rdi, rax
	add	rsi, rbp
	jmp	.L79
.L75:
	add	rsp, 24
	.cfi_def_cfa_offset 24
	mov	rax, rbp
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	expr_parse_term, .-expr_parse_term
	.globl	expr_create
	.type	expr_create, @function
expr_create:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rdi
	mov	edi, 24
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	push	r9
	.cfi_def_cfa_offset 32
	call	malloc
	mov	rsi, rbp
	mov	rdi, rax
	mov	rbx, rax
	call	expr_parse_whole
	pop	r10
	.cfi_def_cfa_offset 24
	mov	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4:
	.size	expr_create, .-expr_create
	.globl	expr_destroy
	.type	expr_destroy, @function
expr_destroy:
.LFB5:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [rdi]
	mov	rbx, rdi
	cmp	eax, 2
	jb	.L84
	cmp	eax, 6
	jbe	.L85
	cmp	eax, 13
	ja	.L84
	jmp	.L87
.L85:
	mov	rdi, QWORD PTR [rdi+8]
	jmp	.L89
.L87:
	mov	rdi, QWORD PTR [rdi+8]
	call	expr_destroy
	mov	rdi, QWORD PTR [rbx+16]
.L89:
	call	expr_destroy
.L84:
	mov	rdi, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	free
	.cfi_endproc
.LFE5:
	.size	expr_destroy, .-expr_destroy
	.globl	expr_eval
	.type	expr_eval, @function
expr_eval:
.LFB7:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r15, rdi
	lea	rdi, [0+rsi*4]
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14, rdx
	sal	r14, 2
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13, rsi
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rcx
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xor	ebx, ebx
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	call	malloc
	mov	rbp, rax
	jmp	.L91
.L92:
	mov	rdx, r12
	mov	rdi, rbp
	mov	rsi, r15
	mov	QWORD PTR [rsp+8], rax
	inc	rbx
	add	rbp, 4
	call	expr_eval_one
	mov	rax, QWORD PTR [rsp+8]
	add	r12, r14
.L91:
	cmp	rbx, r13
	jne	.L92
	add	rsp, 24
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.size	expr_eval, .-expr_eval
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (SUSE Linux) 4.7.1 20120723 [gcc-4_7-branch revision 189773]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"OSpWg"
	.section	.note.GNU-stack,"",@progbits
