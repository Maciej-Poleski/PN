	.file	"natural.cpp"
	.intel_syntax noprefix
	.text
	.type	_ZL19parseBigendianQwordPKci, @function
_ZL19parseBigendianQwordPKci:
.LFB59:
	.cfi_startproc
	xor	edx, edx
	xor	eax, eax
	jmp	.L2
.L5:
	mov	rcx, rdx
	neg	rcx
	movsx	r8d, BYTE PTR [rdi+15+rcx]
	cmp	r8b, 57
	jg	.L3
	sub	r8d, 48
	jmp	.L6
.L3:
	sub	r8d, 87
.L6:
	lea	ecx, [0+rdx*4]
	movsx	r8, r8d
	inc	rdx
	sal	r8, cl
	or	rax, r8
.L2:
	cmp	esi, edx
	jg	.L5
	ret
	.cfi_endproc
.LFE59:
	.size	_ZL19parseBigendianQwordPKci, .-_ZL19parseBigendianQwordPKci
	.align 2
	.globl	_ZN7Natural5shiftEm
	.type	_ZN7Natural5shiftEm, @function
_ZN7Natural5shiftEm:
.LFB61:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mov	r14, rsi
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	rbp, rdi
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	r12, QWORD PTR [rdi]
	mov	rbx, QWORD PTR [rdi+8]
	sub	rbx, r12
	sar	rbx, 3
	lea	r13, [rbx+rsi]
	sal	r13, 3
	mov	rdi, r13
	call	malloc
	add	r13, rax
	mov	QWORD PTR [rbp+0], rax
	xor	edx, edx
	mov	QWORD PTR [rbp+8], r13
	jmp	.L8
.L9:
	mov	QWORD PTR [rax+rdx*8], 0
	inc	rdx
.L8:
	cmp	rdx, r14
	jne	.L9
	lea	rdx, [rax+rdx*8]
	xor	eax, eax
	jmp	.L10
.L11:
	mov	rcx, QWORD PTR [r12+rax*8]
	mov	QWORD PTR [rdx+rax*8], rcx
	inc	rax
.L10:
	cmp	rax, rbx
	jne	.L11
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	mov	rdi, r12
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	free
	.cfi_endproc
.LFE61:
	.size	_ZN7Natural5shiftEm, .-_ZN7Natural5shiftEm
	.align 2
	.globl	_ZN7NaturalC2Ev
	.type	_ZN7NaturalC2Ev, @function
_ZN7NaturalC2Ev:
.LFB63:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	lea	rdx, [rax+8]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR [rbx+8], rdx
	mov	QWORD PTR [rax], 0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	_ZN7NaturalC2Ev, .-_ZN7NaturalC2Ev
	.globl	_ZN7NaturalC1Ev
	.set	_ZN7NaturalC1Ev,_ZN7NaturalC2Ev
	.align 2
	.globl	_ZN7NaturalC2Em
	.type	_ZN7NaturalC2Em, @function
_ZN7NaturalC2Em:
.LFB66:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	mov	edi, 8
	push	rax
	.cfi_def_cfa_offset 32
	call	malloc
	lea	rdx, [rax+8]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR [rbx+8], rdx
	mov	QWORD PTR [rax], rbp
	pop	rdx
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	_ZN7NaturalC2Em, .-_ZN7NaturalC2Em
	.globl	_ZN7NaturalC1Em
	.set	_ZN7NaturalC1Em,_ZN7NaturalC2Em
	.align 2
	.globl	_ZN7NaturalC2EPKc
	.type	_ZN7NaturalC2EPKc, @function
_ZN7NaturalC2EPKc:
.LFB69:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xor	eax, eax
	or	rcx, -1
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xor	r13d, r13d
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rsi
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rdi
	mov	rdi, rsi
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	repnz scasb
	not	rcx
	lea	rbx, [rcx-1]
	test	bl, 15
	mov	rax, rbx
	setne	r13b
	shr	rax, 4
	add	r13, rax
	sal	r13, 3
	mov	rdi, r13
	call	malloc
	mov	rdx, rbx
	mov	QWORD PTR [rbp+0], rax
	add	r13, rax
	mov	r14, rax
	movsx	rax, ebx
	mov	QWORD PTR [rbp+8], r13
	sub	rdx, rax
	lea	rax, [r12-16+rax]
	xor	ebp, ebp
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR [rsp+8], rax
	jmp	.L18
.L19:
	mov	rax, QWORD PTR [rsp]
	mov	rdi, QWORD PTR [rsp+8]
	mov	esi, 16
	add	rax, rbp
	sub	rdi, rbp
	add	rbp, 16
	shr	rax, 4
	lea	r15, [r14+rax*8]
	call	_ZL19parseBigendianQwordPKci
	mov	QWORD PTR [r15], rax
.L18:
	mov	esi, ebx
	sub	esi, ebp
	cmp	esi, 15
	jg	.L19
	test	esi, esi
	jle	.L17
	movsx	rax, esi
	lea	rdi, [r12-16+rax]
	call	_ZL19parseBigendianQwordPKci
	mov	QWORD PTR [r13-8], rax
.L17:
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
.LFE69:
	.size	_ZN7NaturalC2EPKc, .-_ZN7NaturalC2EPKc
	.globl	_ZN7NaturalC1EPKc
	.set	_ZN7NaturalC1EPKc,_ZN7NaturalC2EPKc
	.align 2
	.globl	_ZN7NaturalC2ERKS_
	.type	_ZN7NaturalC2ERKS_, @function
_ZN7NaturalC2ERKS_:
.LFB72:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, QWORD PTR [rsi+8]
	sub	rbx, QWORD PTR [rsi]
	and	rbx, -8
	mov	rdi, rbx
	call	malloc
	lea	rdx, [rax+rbx]
	mov	QWORD PTR [r12], rax
	mov	rcx, rbx
	mov	rsi, QWORD PTR [rbp+0]
	mov	rdi, rax
	mov	QWORD PTR [r12+8], rdx
	rep movsb
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:
	.size	_ZN7NaturalC2ERKS_, .-_ZN7NaturalC2ERKS_
	.globl	_ZN7NaturalC1ERKS_
	.set	_ZN7NaturalC1ERKS_,_ZN7NaturalC2ERKS_
	.align 2
	.globl	_ZN7NaturalaSERKS_
	.type	_ZN7NaturalaSERKS_, @function
_ZN7NaturalaSERKS_:
.LFB83:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rsi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rdi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rdi, QWORD PTR [rdi]
	call	free
	mov	rbx, QWORD PTR [r12+8]
	sub	rbx, QWORD PTR [r12]
	and	rbx, -8
	mov	rdi, rbx
	call	malloc
	lea	rdx, [rax+rbx]
	mov	QWORD PTR [rbp+0], rax
	mov	rdi, rax
	mov	rsi, QWORD PTR [r12]
	mov	rcx, rbx
	mov	rax, rbp
	mov	QWORD PTR [rbp+8], rdx
	rep movsb
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	_ZN7NaturalaSERKS_, .-_ZN7NaturalaSERKS_
	.align 2
	.globl	_ZNK7NaturaleqERKS_
	.type	_ZNK7NaturaleqERKS_, @function
_ZNK7NaturaleqERKS_:
.LFB84:
	.cfi_startproc
	mov	r8, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rdi+8]
	xor	eax, eax
	mov	rdi, QWORD PTR [rsi]
	mov	rcx, QWORD PTR [rsi+8]
	sub	rdx, r8
	sub	rcx, rdi
	sar	rdx, 3
	sar	rcx, 3
	cmp	rdx, rcx
	jne	.L31
	push	rcx
	.cfi_def_cfa_offset 16
	mov	rsi, rdi
	sal	rdx, 3
	mov	rdi, r8
	call	memcmp
	pop	rsi
	.cfi_def_cfa_offset 8
	test	eax, eax
	sete	al
.L31:
	ret
	.cfi_endproc
.LFE84:
	.size	_ZNK7NaturaleqERKS_, .-_ZNK7NaturaleqERKS_
	.align 2
	.globl	_ZNK7NaturalneERKS_
	.type	_ZNK7NaturalneERKS_, @function
_ZNK7NaturalneERKS_:
.LFB74:
	.cfi_startproc
	push	r8
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturaleqERKS_
	pop	r9
	.cfi_def_cfa_offset 8
	xor	eax, 1
	ret
	.cfi_endproc
.LFE74:
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
.LFB88:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rdi
	mov	esi, OFFSET FLAT:.LC0
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	push	r11
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi+8]
	mov	edi, 1
	mov	rdx, QWORD PTR [rax-8]
	xor	eax, eax
	call	__printf_chk
	mov	rbx, QWORD PTR [rbp+8]
	sub	rbx, 16
	jmp	.L35
.L36:
	mov	rdx, QWORD PTR [rbx]
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, 1
	xor	eax, eax
	sub	rbx, 8
	call	__printf_chk
.L35:
	cmp	rbx, QWORD PTR [rbp+0]
	jae	.L36
	pop	r10
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	mov	edi, 10
	jmp	putchar
	.cfi_endproc
.LFE88:
	.size	_ZNK7Natural5PrintEv, .-_ZNK7Natural5PrintEv
	.align 2
	.globl	_ZNK7Natural4SizeEv
	.type	_ZNK7Natural4SizeEv, @function
_ZNK7Natural4SizeEv:
.LFB89:
	.cfi_startproc
	mov	rcx, QWORD PTR [rdi]
	mov	rax, QWORD PTR [rdi+8]
	sub	rax, rcx
	sar	rax, 3
	dec	eax
	movsx	rdx, eax
	lea	rdi, [rcx+rdx*8]
	xor	edx, edx
	jmp	.L39
.L41:
	inc	rdx
	imul	r8, rdx, -8
	cmp	QWORD PTR [rdi+8+r8], 0
	je	.L39
.L42:
	mov	edi, esi
	movsx	rsi, esi
	xor	eax, eax
	sal	edi, 6
	mov	rdx, QWORD PTR [rcx+rsi*8]
	movsx	rdi, edi
	jmp	.L40
.L39:
	mov	esi, eax
	sub	esi, edx
	test	esi, esi
	jg	.L41
	jmp	.L42
.L43:
	shr	rdx
	inc	rax
.L40:
	test	rdx, rdx
	jne	.L43
	add	rax, rdi
	ret
	.cfi_endproc
.LFE89:
	.size	_ZNK7Natural4SizeEv, .-_ZNK7Natural4SizeEv
	.align 2
	.globl	_ZNK7NaturalcvbEv
	.type	_ZNK7NaturalcvbEv, @function
_ZNK7NaturalcvbEv:
.LFB87:
	.cfi_startproc
	call	_ZNK7Natural4SizeEv
	test	rax, rax
	setne	al
	ret
	.cfi_endproc
.LFE87:
	.size	_ZNK7NaturalcvbEv, .-_ZNK7NaturalcvbEv
	.align 2
	.globl	_ZNK7NaturalltERKS_
	.type	_ZNK7NaturalltERKS_, @function
_ZNK7NaturalltERKS_:
.LFB81:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi
	call	_ZNK7Natural4SizeEv
	mov	rdi, rbp
	mov	r12, rax
	call	_ZNK7Natural4SizeEv
	cmp	r12, rax
	mov	dl, 1
	jb	.L47
	mov	dl, 0
	ja	.L47
	mov	rsi, QWORD PTR [rbx]
	mov	rax, QWORD PTR [rbx+8]
	xor	ecx, ecx
	sub	rax, rsi
	sar	rax, 3
	dec	eax
	movsx	rdx, eax
	sal	rdx, 3
	jmp	.L48
.L50:
	mov	rdi, QWORD PTR [rbp+0]
	mov	r8, QWORD PTR [rsi+rdx]
	inc	rcx
	mov	rdi, QWORD PTR [rdi+rdx]
	sub	rdx, 8
	cmp	r8, rdi
	jb	.L53
.L48:
	cmp	eax, ecx
	jns	.L50
	xor	edx, edx
	jmp	.L47
.L53:
	mov	dl, 1
.L47:
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	mov	al, dl
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	_ZNK7NaturalltERKS_, .-_ZNK7NaturalltERKS_
	.align 2
	.globl	_ZNK7NaturalgeERKS_
	.type	_ZNK7NaturalgeERKS_, @function
_ZNK7NaturalgeERKS_:
.LFB86:
	.cfi_startproc
	call	_ZNK7NaturalltERKS_
	xor	eax, 1
	ret
	.cfi_endproc
.LFE86:
	.size	_ZNK7NaturalgeERKS_, .-_ZNK7NaturalgeERKS_
	.align 2
	.globl	_ZNK7NaturalleERKS_
	.type	_ZNK7NaturalleERKS_, @function
_ZNK7NaturalleERKS_:
.LFB82:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	push	rax
	.cfi_def_cfa_offset 32
	call	_ZNK7NaturalltERKS_
	test	al, al
	jne	.L57
	mov	rsi, rbp
	mov	rdi, rbx
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNK7NaturaleqERKS_
.L57:
	.cfi_restore_state
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	mov	al, 1
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	_ZNK7NaturalleERKS_, .-_ZNK7NaturalleERKS_
	.align 2
	.globl	_ZNK7NaturalgtERKS_
	.type	_ZNK7NaturalgtERKS_, @function
_ZNK7NaturalgtERKS_:
.LFB85:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturalleERKS_
	pop	rdx
	.cfi_def_cfa_offset 8
	xor	eax, 1
	ret
	.cfi_endproc
.LFE85:
	.size	_ZNK7NaturalgtERKS_, .-_ZNK7NaturalgtERKS_
	.align 2
	.globl	_ZN7Natural6resizeEm
	.type	_ZN7Natural6resizeEm, @function
_ZN7Natural6resizeEm:
.LFB90:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rbp, [0+rsi*8]
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	mov	rsi, rbp
	push	rcx
	.cfi_def_cfa_offset 32
	mov	rdi, QWORD PTR [rdi]
	call	realloc
	add	rbp, rax
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR [rbx+8], rbp
	pop	rsi
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE90:
	.size	_ZN7Natural6resizeEm, .-_ZN7Natural6resizeEm
	.align 2
	.globl	_ZN7Natural6shrinkEv
	.type	_ZN7Natural6shrinkEv, @function
_ZN7Natural6shrinkEv:
.LFB91:
	.cfi_startproc
	mov	rdx, QWORD PTR [rdi]
	add	rdx, 8
.L66:
	mov	rax, QWORD PTR [rdi+8]
	cmp	rdx, rax
	jae	.L63
	cmp	QWORD PTR [rax-8], 0
	jne	.L63
	sub	rax, 8
	mov	QWORD PTR [rdi+8], rax
	jmp	.L66
.L63:
	ret
	.cfi_endproc
.LFE91:
	.size	_ZN7Natural6shrinkEv, .-_ZN7Natural6shrinkEv
	.align 2
	.globl	_ZNK7NaturalplERKS_
	.type	_ZNK7NaturalplERKS_, @function
_ZNK7NaturalplERKS_:
.LFB77:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r15, rdx
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13, rsi
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, rdi
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	call	_ZN7NaturalC1Ev
	mov	r12, QWORD PTR [r13+8]
	mov	rbp, QWORD PTR [r15+8]
	sub	r12, QWORD PTR [r13+0]
	sub	rbp, QWORD PTR [r15]
	mov	rdi, QWORD PTR [rbx]
	sar	r12, 3
	sar	rbp, 3
	cmp	rbp, r12
	mov	rax, r12
	cmovae	rax, rbp
	lea	r14, [8+rax*8]
	mov	rsi, r14
	call	realloc
	lea	rcx, [rax+r14]
	mov	QWORD PTR [rbx], rax
	mov	rdx, rax
	mov	QWORD PTR [rbx+8], rcx
	jmp	.L68
.L69:
	mov	QWORD PTR [rdx], 0
	add	rdx, 8
.L68:
	cmp	rdx, rcx
	jb	.L69
	mov	rdi, rax
	lea	rcx, [0+r12*8]
	mov	rsi, QWORD PTR [r13+0]
	xor	eax, eax
	rep movsb
	jmp	.L70
.L71:
	lea	rdx, [rdx+rax*8]
	movsx	rcx, ecx
	mov	QWORD PTR [rsp+8], 0
	mov	QWORD PTR [rsp+24], 0
	mov	rdi, QWORD PTR [rsp+24]
	mov	rsi, QWORD PTR [rdx]
	mov	QWORD PTR [rsp], rsi
	mov	rsi, QWORD PTR [r15]
	add	rcx, QWORD PTR [rsi+rax*8]
	mov	QWORD PTR [rsp+16], rcx
	mov	rsi, QWORD PTR [rsp+16]
	add	rsi, QWORD PTR [rsp]
	adc	rdi, QWORD PTR [rsp+8]
	inc	rax
	mov	QWORD PTR [rdx], rsi
	mov	rcx, rdi
.L70:
	cmp	rax, rbp
	mov	rdx, QWORD PTR [rbx]
	jne	.L71
	movsx	rcx, ecx
	add	QWORD PTR [rdx+rax*8], rcx
	mov	rdi, rbx
	call	_ZN7Natural6shrinkEv
	add	rsp, 40
	.cfi_def_cfa_offset 56
	mov	rax, rbx
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
.LFE77:
	.size	_ZNK7NaturalplERKS_, .-_ZNK7NaturalplERKS_
	.align 2
	.globl	_ZN7NaturalD2Ev
	.type	_ZN7NaturalD2Ev, @function
_ZN7NaturalD2Ev:
.LFB93:
	.cfi_startproc
	mov	rdi, QWORD PTR [rdi]
	jmp	free
	.cfi_endproc
.LFE93:
	.size	_ZN7NaturalD2Ev, .-_ZN7NaturalD2Ev
	.globl	_ZN7NaturalD1Ev
	.set	_ZN7NaturalD1Ev,_ZN7NaturalD2Ev
	.align 2
	.globl	_ZN7NaturalpLERKS_
	.type	_ZN7NaturalpLERKS_, @function
_ZN7NaturalpLERKS_:
.LFB80:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdx, rsi
	mov	rbx, rdi
	mov	rsi, rdi
	sub	rsp, 32
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]
	call	_ZNK7NaturalplERKS_
	lea	rsi, [rsp+16]
	mov	rdi, rbx
	call	_ZN7NaturalaSERKS_
	lea	rdi, [rsp+16]
	mov	QWORD PTR [rsp+8], rax
	call	_ZN7NaturalD1Ev
	mov	rax, QWORD PTR [rsp+8]
	add	rsp, 32
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	_ZN7NaturalpLERKS_, .-_ZN7NaturalpLERKS_
	.align 2
	.globl	_ZN7NaturalppEi
	.type	_ZN7NaturalppEi, @function
_ZN7NaturalppEi:
.LFB79:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	call	_ZN7NaturalC1ERKS_
	mov	rdi, rsp
	mov	esi, 1
	call	_ZN7NaturalC1Em
	mov	rsi, rsp
	mov	rdi, rbp
	call	_ZN7NaturalpLERKS_
	mov	rdi, rsp
	call	_ZN7NaturalD1Ev
	add	rsp, 24
	.cfi_def_cfa_offset 24
	mov	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	_ZN7NaturalppEi, .-_ZN7NaturalppEi
	.align 2
	.globl	_ZN7NaturalppEv
	.type	_ZN7NaturalppEv, @function
_ZN7NaturalppEv:
.LFB78:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi
	mov	esi, 1
	sub	rsp, 32
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]
	call	_ZN7NaturalC1Em
	lea	rsi, [rsp+16]
	mov	rdi, rbx
	call	_ZN7NaturalpLERKS_
	lea	rdi, [rsp+16]
	mov	QWORD PTR [rsp+8], rax
	call	_ZN7NaturalD1Ev
	mov	rax, QWORD PTR [rsp+8]
	add	rsp, 32
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	_ZN7NaturalppEv, .-_ZN7NaturalppEv
	.align 2
	.globl	_ZNK7NaturalmlERKS_
	.type	_ZNK7NaturalmlERKS_, @function
_ZNK7NaturalmlERKS_:
.LFB75:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	mov	r13, rsi
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xor	r12d, r12d
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	rbp, rdi
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdx
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	call	_ZN7NaturalC1Ev
	mov	r14, QWORD PTR [r13+0]
	jmp	.L81
.L84:
	mov	rdi, rsp
	call	_ZN7NaturalC1Ev
	mov	rsi, QWORD PTR [rbx+8]
	sub	rsi, QWORD PTR [rbx]
	mov	rdi, rsp
	sar	rsi, 3
	inc	rsi
	call	_ZN7Natural6resizeEm
	mov	rsi, QWORD PTR [rbx]
	mov	rdi, QWORD PTR [rbx+8]
	mov	rcx, QWORD PTR [rsp]
	jmp	.L82
.L83:
	mov	rax, QWORD PTR [rsi]
	add	rsi, 8
	mul	QWORD PTR [r14]
	add	QWORD PTR [rcx], rax
	mov	QWORD PTR [rcx+8], rdx
	add	rcx, 8
.L82:
	cmp	rsi, rdi
	jb	.L83
	mov	rsi, r12
	mov	rdi, rsp
	add	r14, 8
	call	_ZN7Natural5shiftEm
	mov	rsi, rsp
	mov	rdi, rbp
	inc	r12
	call	_ZN7NaturalpLERKS_
	mov	rdi, rsp
	call	_ZN7NaturalD1Ev
.L81:
	cmp	r14, QWORD PTR [r13+8]
	jb	.L84
	add	rsp, 16
	.cfi_def_cfa_offset 48
	mov	rax, rbp
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	_ZNK7NaturalmlERKS_, .-_ZNK7NaturalmlERKS_
	.align 2
	.globl	_ZN7NaturalmLERKS_
	.type	_ZN7NaturalmLERKS_, @function
_ZN7NaturalmLERKS_:
.LFB76:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdx, rsi
	mov	rbx, rdi
	mov	rsi, rdi
	sub	rsp, 32
	.cfi_def_cfa_offset 48
	lea	rdi, [rsp+16]
	call	_ZNK7NaturalmlERKS_
	lea	rsi, [rsp+16]
	mov	rdi, rbx
	call	_ZN7NaturalaSERKS_
	lea	rdi, [rsp+16]
	mov	QWORD PTR [rsp+8], rax
	call	_ZN7NaturalD1Ev
	mov	rax, QWORD PTR [rsp+8]
	add	rsp, 32
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	_ZN7NaturalmLERKS_, .-_ZN7NaturalmLERKS_
	.ident	"GCC: (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
