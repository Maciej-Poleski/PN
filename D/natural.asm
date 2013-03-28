
section .text

_ZL19parseBigendianQwordPKci:
.LFB59:
	.cfi_startproc
	xor	dword edx, edx
	xor	dword eax, eax
	jmp	dword _L2
_L5:
	movq	rcx, rdx
	negq	rcx
	movsb	dword [rdi+rcx+15], r8d
	cmp	byte r8b, 57
	jg	_L3
	sub	dword r8d, 48
	jmp	dword _L6
_L3:
	sub	dword r8d, 87
_L6:
	lea	dword ecx, [rdx*4+0]
	movslq	r8d, r8
	incq	rdx
	salq	cl, r8
	orq	r8, rax
_L2:
	cmp	dword esi, edx
	jg	_L5
	ret
	.cfi_endproc
.LFE59:

align 2
global	_ZN7Natural5shiftEm

_ZN7Natural5shiftEm:
.LFB61:
	.cfi_startproc
	pushq	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	r14, rsi
	pushq	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	rbp, rdi
	pushq	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	r12, [rdi]
	movq	rbx, [rdi+8]
	subq	r12, rbx
	sarq	3, rbx
	leaq		[rbx+rsi], r13
	salq	3, r13
	movq	rdi, r13
	call	dword malloc
	addq	rax, r13
	movq	[rbp+0], rax
	xor	dword edx, edx
	movq	[rbp+8], r13
	jmp	dword _L8
_L9:
	movq	[rax+rdx*8], 0
	incq	rdx
_L8:
	cmpq	r14, rdx
	jne	_L9
	leaq		[rax+rdx*8], rdx
	xor	dword eax, eax
	jmp	dword _L10
_L11:
	movq	rcx, [r12+rax*8]
	movq	[rdx+rax*8], rcx
	incq	rax
_L10:
	cmpq	rbx, rax
	jne	_L11
	popq	rbx
	.cfi_def_cfa_offset 40
	popq	rbp
	.cfi_def_cfa_offset 32
	movq	rdi, r12
	popq	r12
	.cfi_def_cfa_offset 24
	popq	r13
	.cfi_def_cfa_offset 16
	popq	r14
	.cfi_def_cfa_offset 8
	jmp	dword free
	.cfi_endproc
.LFE61:

align 2
global	_ZN7NaturalC2Ev

_ZN7NaturalC2Ev:
.LFB63:
	.cfi_startproc
	pushq	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	rbx, rdi
	mov	dword edi, 8
	call	dword malloc
	leaq	[rax+8], rdx
	movq	[rbx], rax
	movq	[rbx+8], rdx
	movq	[rax], 0
	popq	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:

global	_ZN7NaturalC1Ev
_ZN7NaturalC1Ev	equ	_ZN7NaturalC2Ev
align 2
global	_ZN7NaturalC2Em

_ZN7NaturalC2Em:
.LFB66:
	.cfi_startproc
	pushq	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	rbp, rsi
	pushq	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	rbx, rdi
	mov	dword edi, 8
	pushq	rax
	.cfi_def_cfa_offset 32
	call	dword malloc
	leaq	[rax+8], rdx
	movq	[rbx], rax
	movq	[rbx+8], rdx
	movq	[rax], rbp
	popq	rdx
	.cfi_def_cfa_offset 24
	popq	rbx
	.cfi_def_cfa_offset 16
	popq	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:

global	_ZN7NaturalC1Em
_ZN7NaturalC1Em	equ	_ZN7NaturalC2Em
align 2
global	_ZN7NaturalC2EPKc

_ZN7NaturalC2EPKc:
.LFB69:
	.cfi_startproc
	pushq	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xor	dword eax, eax
	orq	-1, rcx
	pushq	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xor	dword r13d, r13d
	pushq	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	r12, rsi
	pushq	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	rbp, rdi
	movq	rdi, rsi
	pushq	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	24, rsp
	.cfi_def_cfa_offset 80
	repnz[scasb]
	notq	rcx
	leaq	[rcx+-1], rbx
	test	byte bl, 15
	movq	rax, rbx
	setne	r13b
	shrq	4, rax
	addq	rax, r13
	salq	3, r13
	movq	rdi, r13
	call	dword malloc
	movq	rdx, rbx
	movq	[rbp+0], rax
	addq	rax, r13
	movq	r14, rax
	movslq	ebx, rax
	movq	[rbp+8], r13
	subq	rax, rdx
	leaq	[r12+rax+-16], rax
	xor	dword ebp, ebp
	movq	[rsp], rdx
	movq	[rsp+8], rax
	jmp	dword _L18
_L19:
	movq	rax, [rsp]
	movq	rdi, [rsp+8]
	mov	dword esi, 16
	addq	rbp, rax
	subq	rbp, rdi
	addq	16, rbp
	shrq	4, rax
	leaq		[r14+rax*8], r15
	call	dword _ZL19parseBigendianQwordPKci
	movq	[r15], rax
_L18:
	mov	dword esi, ebx
	sub	dword esi, ebp
	cmp	dword esi, 15
	jg	_L19
	test	dword esi, esi
	jle	_L17
	movslq	esi, rax
	leaq	[r12+rax+-16], rdi
	call	dword _ZL19parseBigendianQwordPKci
	movq	[r13+-8], rax
_L17:
	addq	24, rsp
	.cfi_def_cfa_offset 56
	popq	rbx
	.cfi_def_cfa_offset 48
	popq	rbp
	.cfi_def_cfa_offset 40
	popq	r12
	.cfi_def_cfa_offset 32
	popq	r13
	.cfi_def_cfa_offset 24
	popq	r14
	.cfi_def_cfa_offset 16
	popq	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:

global	_ZN7NaturalC1EPKc
_ZN7NaturalC1EPKc	equ	_ZN7NaturalC2EPKc
align 2
global	_ZN7NaturalC2ERKS_

_ZN7NaturalC2ERKS_:
.LFB72:
	.cfi_startproc
	pushq	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	r12, rdi
	pushq	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	rbp, rsi
	pushq	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	rbx, [rsi+8]
	subq	[rsi], rbx
	andq	-8, rbx
	movq	rdi, rbx
	call	dword malloc
	leaq		[rax+rbx], rdx
	movq	[r12], rax
	movq	rcx, rbx
	movq	rsi, [rbp+0]
	movq	rdi, rax
	movq	[r12+8], rdx
	rep[movsb]
	popq	rbx
	.cfi_def_cfa_offset 24
	popq	rbp
	.cfi_def_cfa_offset 16
	popq	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:

global	_ZN7NaturalC1ERKS_
_ZN7NaturalC1ERKS_	equ	_ZN7NaturalC2ERKS_
align 2
global	_ZN7NaturalaSERKS_

_ZN7NaturalaSERKS_:
.LFB83:
	.cfi_startproc
	pushq	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	r12, rsi
	pushq	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	rbp, rdi
	pushq	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	rdi, [rdi]
	call	dword free
	movq	rbx, [r12+8]
	subq	[r12], rbx
	andq	-8, rbx
	movq	rdi, rbx
	call	dword malloc
	leaq		[rax+rbx], rdx
	movq	[rbp+0], rax
	movq	rdi, rax
	movq	rsi, [r12]
	movq	rcx, rbx
	movq	rax, rbp
	movq	[rbp+8], rdx
	rep[movsb]
	popq	rbx
	.cfi_def_cfa_offset 24
	popq	rbp
	.cfi_def_cfa_offset 16
	popq	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:

align 2
global	_ZNK7NaturaleqERKS_

_ZNK7NaturaleqERKS_:
.LFB84:
	.cfi_startproc
	movq	r8, [rdi]
	movq	rdx, [rdi+8]
	xor	dword eax, eax
	movq	rdi, [rsi]
	movq	rcx, [rsi+8]
	subq	r8, rdx
	subq	rdi, rcx
	sarq	3, rdx
	sarq	3, rcx
	cmpq	rcx, rdx
	jne	_L31
	pushq	rcx
	.cfi_def_cfa_offset 16
	movq	rsi, rdi
	salq	3, rdx
	movq	rdi, r8
	call	dword memcmp
	popq	rsi
	.cfi_def_cfa_offset 8
	test	dword eax, eax
	sete	al
_L31:
	ret
	.cfi_endproc
.LFE84:

align 2
global	_ZNK7NaturalneERKS_

_ZNK7NaturalneERKS_:
.LFB74:
	.cfi_startproc
	pushq	r8
	.cfi_def_cfa_offset 16
	call	dword _ZNK7NaturaleqERKS_
	popq	r9
	.cfi_def_cfa_offset 8
	xor	dword eax, 1
	ret
	.cfi_endproc
.LFE74:

section ".rodata.str1.1"
_LC0:
 db	"%lx", 0
_LC1:
 db	"%.16lx", 0
section .text
align 2
global	_ZNK7Natural5PrintEv

_ZNK7Natural5PrintEv:
.LFB88:
	.cfi_startproc
	pushq	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	rbp, rdi
	mov	dword esi, _LC0
	pushq	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	r11
	.cfi_def_cfa_offset 32
	movq	rax, [rdi+8]
	mov	dword edi, 1
	movq	rdx, [rax+-8]
	xor	dword eax, eax
	call	dword __printf_chk
	movq	rbx, [rbp+8]
	subq	16, rbx
	jmp	dword _L35
_L36:
	movq	rdx, [rbx]
	mov	dword esi, _LC1
	mov	dword edi, 1
	xor	dword eax, eax
	subq	8, rbx
	call	dword __printf_chk
_L35:
	cmpq	[rbp+0], rbx
	jae	_L36
	popq	r10
	.cfi_def_cfa_offset 24
	popq	rbx
	.cfi_def_cfa_offset 16
	popq	rbp
	.cfi_def_cfa_offset 8
	mov	dword edi, 10
	jmp	dword putchar
	.cfi_endproc
.LFE88:

align 2
global	_ZNK7Natural4SizeEv

_ZNK7Natural4SizeEv:
.LFB89:
	.cfi_startproc
	movq	rcx, [rdi]
	movq	rax, [rdi+8]
	subq	rcx, rax
	sarq	3, rax
	dec	dword eax
	movslq	eax, rdx
	leaq		[rcx+rdx*8], rdi
	xor	dword edx, edx
	jmp	dword _L39
_L41:
	incq	rdx
	imulq	-8, rdx, r8
	cmpq	0, [rdi+r8+8]
	je	_L39
_L42:
	mov	dword edi, esi
	movslq	esi, rsi
	xor	dword eax, eax
	sal	dword edi, 6
	movq	rdx, [rcx+rsi*8]
	movslq	edi, rdi
	jmp	dword _L40
_L39:
	mov	dword esi, eax
	sub	dword esi, edx
	test	dword esi, esi
	jg	_L41
	jmp	dword _L42
_L43:
	shrq	rdx
	incq	rax
_L40:
	testq	rdx, rdx
	jne	_L43
	addq	rdi, rax
	ret
	.cfi_endproc
.LFE89:

align 2
global	_ZNK7NaturalcvbEv

_ZNK7NaturalcvbEv:
.LFB87:
	.cfi_startproc
	call	dword _ZNK7Natural4SizeEv
	testq	rax, rax
	setne	al
	ret
	.cfi_endproc
.LFE87:

align 2
global	_ZNK7NaturalltERKS_

_ZNK7NaturalltERKS_:
.LFB81:
	.cfi_startproc
	pushq	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	rbp, rsi
	pushq	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	rbx, rdi
	call	dword _ZNK7Natural4SizeEv
	movq	rdi, rbp
	movq	r12, rax
	call	dword _ZNK7Natural4SizeEv
	cmpq	rax, r12
	mov	byte dl, 1
	jb	_L47
	mov	byte dl, 0
	ja	_L47
	movq	rsi, [rbx]
	movq	rax, [rbx+8]
	xor	dword ecx, ecx
	subq	rsi, rax
	sarq	3, rax
	dec	dword eax
	movslq	eax, rdx
	salq	3, rdx
	jmp	dword _L48
_L50:
	movq	rdi, [rbp+0]
	movq	r8, [rsi+rdx]
	incq	rcx
	movq	rdi, [rdi+rdx]
	subq	8, rdx
	cmpq	rdi, r8
	jb	_L53
_L48:
	cmp	dword eax, ecx
	jns	_L50
	xor	dword edx, edx
	jmp	dword _L47
_L53:
	mov	byte dl, 1
_L47:
	popq	rbx
	.cfi_def_cfa_offset 24
	popq	rbp
	.cfi_def_cfa_offset 16
	mov	byte al, dl
	popq	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:

align 2
global	_ZNK7NaturalgeERKS_

_ZNK7NaturalgeERKS_:
.LFB86:
	.cfi_startproc
	call	dword _ZNK7NaturalltERKS_
	xor	dword eax, 1
	ret
	.cfi_endproc
.LFE86:

align 2
global	_ZNK7NaturalleERKS_

_ZNK7NaturalleERKS_:
.LFB82:
	.cfi_startproc
	pushq	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	rbp, rsi
	pushq	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	rbx, rdi
	pushq	rax
	.cfi_def_cfa_offset 32
	call	dword _ZNK7NaturalltERKS_
	test	byte al, al
	jne	_L57
	movq	rsi, rbp
	movq	rdi, rbx
	popq	rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	rbx
	.cfi_def_cfa_offset 16
	popq	rbp
	.cfi_def_cfa_offset 8
	jmp	dword _ZNK7NaturaleqERKS_
_L57:
	.cfi_restore_state
	popq	rbx
	.cfi_def_cfa_offset 24
	popq	rbx
	.cfi_def_cfa_offset 16
	mov	byte al, 1
	popq	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:

align 2
global	_ZNK7NaturalgtERKS_

_ZNK7NaturalgtERKS_:
.LFB85:
	.cfi_startproc
	pushq	rax
	.cfi_def_cfa_offset 16
	call	dword _ZNK7NaturalleERKS_
	popq	rdx
	.cfi_def_cfa_offset 8
	xor	dword eax, 1
	ret
	.cfi_endproc
.LFE85:

align 2
global	_ZN7Natural6resizeEm

_ZN7Natural6resizeEm:
.LFB90:
	.cfi_startproc
	pushq	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	[rsi*8+0], rbp
	pushq	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	rbx, rdi
	movq	rsi, rbp
	pushq	rcx
	.cfi_def_cfa_offset 32
	movq	rdi, [rdi]
	call	dword realloc
	addq	rax, rbp
	movq	[rbx], rax
	movq	[rbx+8], rbp
	popq	rsi
	.cfi_def_cfa_offset 24
	popq	rbx
	.cfi_def_cfa_offset 16
	popq	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE90:

align 2
global	_ZN7Natural6shrinkEv

_ZN7Natural6shrinkEv:
.LFB91:
	.cfi_startproc
	movq	rdx, [rdi]
	addq	8, rdx
_L66:
	movq	rax, [rdi+8]
	cmpq	rax, rdx
	jae	_L63
	cmpq	0, [rax+-8]
	jne	_L63
	subq	8, rax
	movq	[rdi+8], rax
	jmp	dword _L66
_L63:
	ret
	.cfi_endproc
.LFE91:

align 2
global	_ZNK7NaturalplERKS_

_ZNK7NaturalplERKS_:
.LFB77:
	.cfi_startproc
	pushq	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	r15, rdx
	pushq	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	r13, rsi
	pushq	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	rbx, rdi
	subq	40, rsp
	.cfi_def_cfa_offset 96
	call	dword _ZN7NaturalC1Ev
	movq	r12, [r13+8]
	movq	rbp, [r15+8]
	subq	[r13+0], r12
	subq	[r15], rbp
	movq	rdi, [rbx]
	sarq	3, r12
	sarq	3, rbp
	cmpq	r12, rbp
	movq	rax, r12
	cmovae	rax, rbp
	leaq	[rax*8+8], r14
	movq	rsi, r14
	call	dword realloc
	leaq		[rax+r14], rcx
	movq	[rbx], rax
	movq	rdx, rax
	movq	[rbx+8], rcx
	jmp	dword _L68
_L69:
	movq	[rdx], 0
	addq	8, rdx
_L68:
	cmpq	rcx, rdx
	jb	_L69
	movq	rdi, rax
	leaq	[r12*8+0], rcx
	movq	rsi, [r13+0]
	xor	dword eax, eax
	rep[movsb]
	jmp	dword _L70
_L71:
	leaq		[rdx+rax*8], rdx
	movslq	ecx, rcx
	movq	[rsp+8], 0
	movq	[rsp+24], 0
	movq	rdi, [rsp+24]
	movq	rsi, [rdx]
	movq	[rsp], rsi
	movq	rsi, [r15]
	addq		[rsi+rax*8], rcx
	movq	[rsp+16], rcx
	movq	rsi, [rsp+16]
	addq	[rsp], rsi
	adcq	[rsp+8], rdi
	incq	rax
	movq	[rdx], rsi
	movq	rcx, rdi
_L70:
	cmpq	rbp, rax
	movq	rdx, [rbx]
	jne	_L71
	movslq	ecx, rcx
	addq	rcx, 	[rdx+rax*8]
	movq	rdi, rbx
	call	dword _ZN7Natural6shrinkEv
	addq	40, rsp
	.cfi_def_cfa_offset 56
	movq	rax, rbx
	popq	rbx
	.cfi_def_cfa_offset 48
	popq	rbp
	.cfi_def_cfa_offset 40
	popq	r12
	.cfi_def_cfa_offset 32
	popq	r13
	.cfi_def_cfa_offset 24
	popq	r14
	.cfi_def_cfa_offset 16
	popq	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:

align 2
global	_ZN7NaturalD2Ev

_ZN7NaturalD2Ev:
.LFB93:
	.cfi_startproc
	movq	rdi, [rdi]
	jmp	dword free
	.cfi_endproc
.LFE93:

global	_ZN7NaturalD1Ev
_ZN7NaturalD1Ev	equ	_ZN7NaturalD2Ev
align 2
global	_ZN7NaturalpLERKS_

_ZN7NaturalpLERKS_:
.LFB80:
	.cfi_startproc
	pushq	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	rdx, rsi
	movq	rbx, rdi
	movq	rsi, rdi
	subq	32, rsp
	.cfi_def_cfa_offset 48
	leaq	[rsp+16], rdi
	call	dword _ZNK7NaturalplERKS_
	leaq	[rsp+16], rsi
	movq	rdi, rbx
	call	dword _ZN7NaturalaSERKS_
	leaq	[rsp+16], rdi
	movq	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	movq	rax, [rsp+8]
	addq	32, rsp
	.cfi_def_cfa_offset 16
	popq	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:

align 2
global	_ZN7NaturalppEi

_ZN7NaturalppEi:
.LFB79:
	.cfi_startproc
	pushq	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	rbp, rsi
	pushq	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	rbx, rdi
	subq	24, rsp
	.cfi_def_cfa_offset 48
	call	dword _ZN7NaturalC1ERKS_
	movq	rdi, rsp
	mov	dword esi, 1
	call	dword _ZN7NaturalC1Em
	movq	rsi, rsp
	movq	rdi, rbp
	call	dword _ZN7NaturalpLERKS_
	movq	rdi, rsp
	call	dword _ZN7NaturalD1Ev
	addq	24, rsp
	.cfi_def_cfa_offset 24
	movq	rax, rbx
	popq	rbx
	.cfi_def_cfa_offset 16
	popq	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:

align 2
global	_ZN7NaturalppEv

_ZN7NaturalppEv:
.LFB78:
	.cfi_startproc
	pushq	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	rbx, rdi
	mov	dword esi, 1
	subq	32, rsp
	.cfi_def_cfa_offset 48
	leaq	[rsp+16], rdi
	call	dword _ZN7NaturalC1Em
	leaq	[rsp+16], rsi
	movq	rdi, rbx
	call	dword _ZN7NaturalpLERKS_
	leaq	[rsp+16], rdi
	movq	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	movq	rax, [rsp+8]
	addq	32, rsp
	.cfi_def_cfa_offset 16
	popq	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:

align 2
global	_ZNK7NaturalmlERKS_

_ZNK7NaturalmlERKS_:
.LFB75:
	.cfi_startproc
	pushq	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	r13, rsi
	pushq	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xor	dword r12d, r12d
	pushq	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	rbp, rdi
	pushq	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	rbx, rdx
	subq	16, rsp
	.cfi_def_cfa_offset 64
	call	dword _ZN7NaturalC1Ev
	movq	r14, [r13+0]
	jmp	dword _L81
_L84:
	movq	rdi, rsp
	call	dword _ZN7NaturalC1Ev
	movq	rsi, [rbx+8]
	subq	[rbx], rsi
	movq	rdi, rsp
	sarq	3, rsi
	incq	rsi
	call	dword _ZN7Natural6resizeEm
	movq	rsi, [rbx]
	movq	rdi, [rbx+8]
	movq	rcx, [rsp]
	jmp	dword _L82
_L83:
	movq	rax, [rsi]
	addq	8, rsi
	mulq	[r14]
	addq	rax, [rcx]
	movq	[rcx+8], rdx
	addq	8, rcx
_L82:
	cmpq	rdi, rsi
	jb	_L83
	movq	rsi, r12
	movq	rdi, rsp
	addq	8, r14
	call	dword _ZN7Natural5shiftEm
	movq	rsi, rsp
	movq	rdi, rbp
	incq	r12
	call	dword _ZN7NaturalpLERKS_
	movq	rdi, rsp
	call	dword _ZN7NaturalD1Ev
_L81:
	cmpq	[r13+8], r14
	jb	_L84
	addq	16, rsp
	.cfi_def_cfa_offset 48
	movq	rax, rbp
	popq	rbx
	.cfi_def_cfa_offset 40
	popq	rbp
	.cfi_def_cfa_offset 32
	popq	r12
	.cfi_def_cfa_offset 24
	popq	r13
	.cfi_def_cfa_offset 16
	popq	r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:

align 2
global	_ZN7NaturalmLERKS_

_ZN7NaturalmLERKS_:
.LFB76:
	.cfi_startproc
	pushq	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	rdx, rsi
	movq	rbx, rdi
	movq	rsi, rdi
	subq	32, rsp
	.cfi_def_cfa_offset 48
	leaq	[rsp+16], rdi
	call	dword _ZNK7NaturalmlERKS_
	leaq	[rsp+16], rsi
	movq	rdi, rbx
	call	dword _ZN7NaturalaSERKS_
	leaq	[rsp+16], rdi
	movq	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	movq	rax, [rsp+8]
	addq	32, rsp
	.cfi_def_cfa_offset 16
	popq	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:


section ".note.GNU-stack"
