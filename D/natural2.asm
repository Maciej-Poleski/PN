
section .text

_ZL19parseBigendianQwordPKci:
        xor     edx, edx
        xor     eax, eax
        jmp     .L2
.L5:
        mov     rcx, rdx
        neg     rcx
        movsx   r8d, BYTE PTR [rdi+15+rcx]
        cmp     r8b, 57
        jg      .L3
        sub     r8d, 48
        jmp     .L6
.L3:
        sub     r8d, 87
.L6:
        lea     ecx, [0+rdx*4]
        movsx   r8, r8d
        inc     rdx
        sal     r8, cl
        or      rax, r8
.L2:
        cmp     esi, edx
        jg      .L5
        ret

align 2
global	_ZN7Natural5shiftEm

_ZN7Natural5shiftEm:
	push	r14
	mov	qword	r14, rsi
	push	r13
	push	r12
	push	rbp
	mov	qword	rbp, rdi
	push	rbx
	mov	qword	r12, [rdi]
	mov	qword	rbx, [rdi+8]
	subq	r12, rbx
	sarq	3, rbx
	leaq		[rbx+rsi], r13
	salq	3, r13
	mov	qword	rdi, r13
	call	dword malloc
	addq	rax, r13
	mov	qword	[rbp+0], rax
	xor	dword edx, edx
	mov	qword	[rbp+8], r13
	jmp	dword _L8
_L9:
	mov	qword	[rax+rdx*8], 0
	incq	rdx
_L8:
	cmpq	r14, rdx
	jne	_L9
	leaq		[rax+rdx*8], rdx
	xor	dword eax, eax
	jmp	dword _L10
_L11:
	mov	qword	rcx, [r12+rax*8]
	mov	qword	[rdx+rax*8], rcx
	incq	rax
_L10:
	cmpq	rbx, rax
	jne	_L11
	popq	rbx
	popq	rbp
	mov	qword	rdi, r12
	popq	r12
	popq	r13
	popq	r14
	jmp	dword free

align 2
global	_ZN7NaturalC2Ev

_ZN7NaturalC2Ev:
	push	rbx
	mov	qword	rbx, rdi
	mov	dword edi, 8
	call	dword malloc
	leaq	[rax+8], rdx
	mov	qword	[rbx], rax
	mov	qword	[rbx+8], rdx
	mov	qword	[rax], 0
	popq	rbx
	ret

global	_ZN7NaturalC1Ev
_ZN7NaturalC1Ev	equ	_ZN7NaturalC2Ev
align 2
global	_ZN7NaturalC2Em

_ZN7NaturalC2Em:
	push	rbp
	mov	qword	rbp, rsi
	push	rbx
	mov	qword	rbx, rdi
	mov	dword edi, 8
	push	rax
	call	dword malloc
	leaq	[rax+8], rdx
	mov	qword	[rbx], rax
	mov	qword	[rbx+8], rdx
	mov	qword	[rax], rbp
	popq	rdx
	popq	rbx
	popq	rbp
	ret

global	_ZN7NaturalC1Em
_ZN7NaturalC1Em	equ	_ZN7NaturalC2Em
align 2
global	_ZN7NaturalC2EPKc

_ZN7NaturalC2EPKc:
	push	r15
	xor	dword eax, eax
	orq	-1, rcx
	push	r14
	push	r13
	xor	dword r13d, r13d
	push	r12
	mov	qword	r12, rsi
	push	rbp
	mov	qword	rbp, rdi
	mov	qword	rdi, rsi
	push	rbx
	subq	24, rsp
	repnz[scasb]
	notq	rcx
	leaq	[rcx+-1], rbx
	test	byte bl, 15
	mov	qword	rax, rbx
	setne	r13b
	shrq	4, rax
	addq	rax, r13
	salq	3, r13
	mov	qword	rdi, r13
	call	dword malloc
	mov	qword	rdx, rbx
	mov	qword	[rbp+0], rax
	addq	rax, r13
	mov	qword	r14, rax
	movslq	ebx, rax
	mov	qword	[rbp+8], r13
	subq	rax, rdx
	leaq	[r12+rax+-16], rax
	xor	dword ebp, ebp
	mov	qword	[rsp], rdx
	mov	qword	[rsp+8], rax
	jmp	dword _L18
_L19:
	mov	qword	rax, [rsp]
	mov	qword	rdi, [rsp+8]
	mov	dword esi, 16
	addq	rbp, rax
	subq	rbp, rdi
	addq	16, rbp
	shrq	4, rax
	leaq		[r14+rax*8], r15
	call	dword _ZL19parseBigendianQwordPKci
	mov	qword	[r15], rax
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
	mov	qword	[r13+-8], rax
_L17:
	addq	24, rsp
	popq	rbx
	popq	rbp
	popq	r12
	popq	r13
	popq	r14
	popq	r15
	ret

global	_ZN7NaturalC1EPKc
_ZN7NaturalC1EPKc	equ	_ZN7NaturalC2EPKc
align 2
global	_ZN7NaturalC2ERKS_

_ZN7NaturalC2ERKS_:
	push	r12
	mov	qword	r12, rdi
	push	rbp
	mov	qword	rbp, rsi
	push	rbx
	mov	qword	rbx, [rsi+8]
	subq	[rsi], rbx
	andq	-8, rbx
	mov	qword	rdi, rbx
	call	dword malloc
	leaq		[rax+rbx], rdx
	mov	qword	[r12], rax
	mov	qword	rcx, rbx
	mov	qword	rsi, [rbp+0]
	mov	qword	rdi, rax
	mov	qword	[r12+8], rdx
	rep[movsb]
	popq	rbx
	popq	rbp
	popq	r12
	ret

global	_ZN7NaturalC1ERKS_
_ZN7NaturalC1ERKS_	equ	_ZN7NaturalC2ERKS_
align 2
global	_ZN7NaturalaSERKS_

_ZN7NaturalaSERKS_:
	push	r12
	mov	qword	r12, rsi
	push	rbp
	mov	qword	rbp, rdi
	push	rbx
	mov	qword	rdi, [rdi]
	call	dword free
	mov	qword	rbx, [r12+8]
	subq	[r12], rbx
	andq	-8, rbx
	mov	qword	rdi, rbx
	call	dword malloc
	leaq		[rax+rbx], rdx
	mov	qword	[rbp+0], rax
	mov	qword	rdi, rax
	mov	qword	rsi, [r12]
	mov	qword	rcx, rbx
	mov	qword	rax, rbp
	mov	qword	[rbp+8], rdx
	rep[movsb]
	popq	rbx
	popq	rbp
	popq	r12
	ret

align 2
global	_ZNK7NaturaleqERKS_

_ZNK7NaturaleqERKS_:
	mov	qword	r8, [rdi]
	mov	qword	rdx, [rdi+8]
	xor	dword eax, eax
	mov	qword	rdi, [rsi]
	mov	qword	rcx, [rsi+8]
	subq	r8, rdx
	subq	rdi, rcx
	sarq	3, rdx
	sarq	3, rcx
	cmpq	rcx, rdx
	jne	_L31
	push	rcx
	mov	qword	rsi, rdi
	salq	3, rdx
	mov	qword	rdi, r8
	call	dword memcmp
	popq	rsi
	test	dword eax, eax
	sete	al
_L31:
	ret

align 2
global	_ZNK7NaturalneERKS_

_ZNK7NaturalneERKS_:
	push	r8
	call	dword _ZNK7NaturaleqERKS_
	popq	r9
	xor	dword eax, 1
	ret

section ".rodata.str1.1"
_LC0:
 db	"%lx", 0
_LC1:
 db	"%.16lx", 0
section .text
align 2
global	_ZNK7Natural5PrintEv

_ZNK7Natural5PrintEv:
	push	rbp
	mov	qword	rbp, rdi
	mov	dword esi, _LC0
	push	rbx
	push	r11
	mov	qword	rax, [rdi+8]
	mov	dword edi, 1
	mov	qword	rdx, [rax+-8]
	xor	dword eax, eax
	call	dword __printf_chk
	mov	qword	rbx, [rbp+8]
	subq	16, rbx
	jmp	dword _L35
_L36:
	mov	qword	rdx, [rbx]
	mov	dword esi, _LC1
	mov	dword edi, 1
	xor	dword eax, eax
	subq	8, rbx
	call	dword __printf_chk
_L35:
	cmpq	[rbp+0], rbx
	jae	_L36
	popq	r10
	popq	rbx
	popq	rbp
	mov	dword edi, 10
	jmp	dword putchar

align 2
global	_ZNK7Natural4SizeEv

_ZNK7Natural4SizeEv:
	mov	qword	rcx, [rdi]
	mov	qword	rax, [rdi+8]
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
	mov	qword	rdx, [rcx+rsi*8]
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

align 2
global	_ZNK7NaturalcvbEv

_ZNK7NaturalcvbEv:
	call	dword _ZNK7Natural4SizeEv
	testq	rax, rax
	setne	al
	ret

align 2
global	_ZNK7NaturalltERKS_

_ZNK7NaturalltERKS_:
	push	r12
	push	rbp
	mov	qword	rbp, rsi
	push	rbx
	mov	qword	rbx, rdi
	call	dword _ZNK7Natural4SizeEv
	mov	qword	rdi, rbp
	mov	qword	r12, rax
	call	dword _ZNK7Natural4SizeEv
	cmpq	rax, r12
	mov	byte dl, 1
	jb	_L47
	mov	byte dl, 0
	ja	_L47
	mov	qword	rsi, [rbx]
	mov	qword	rax, [rbx+8]
	xor	dword ecx, ecx
	subq	rsi, rax
	sarq	3, rax
	dec	dword eax
	movslq	eax, rdx
	salq	3, rdx
	jmp	dword _L48
_L50:
	mov	qword	rdi, [rbp+0]
	mov	qword	r8, [rsi+rdx]
	incq	rcx
	mov	qword	rdi, [rdi+rdx]
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
	popq	rbp
	mov	byte al, dl
	popq	r12
	ret

align 2
global	_ZNK7NaturalgeERKS_

_ZNK7NaturalgeERKS_:
	call	dword _ZNK7NaturalltERKS_
	xor	dword eax, 1
	ret

align 2
global	_ZNK7NaturalleERKS_

_ZNK7NaturalleERKS_:
	push	rbp
	mov	qword	rbp, rsi
	push	rbx
	mov	qword	rbx, rdi
	push	rax
	call	dword _ZNK7NaturalltERKS_
	test	byte al, al
	jne	_L57
	mov	qword	rsi, rbp
	mov	qword	rdi, rbx
	popq	rbp
	popq	rbx
	popq	rbp
	jmp	dword _ZNK7NaturaleqERKS_
_L57:
	popq	rbx
	popq	rbx
	mov	byte al, 1
	popq	rbp
	ret

align 2
global	_ZNK7NaturalgtERKS_

_ZNK7NaturalgtERKS_:
	push	rax
	call	dword _ZNK7NaturalleERKS_
	popq	rdx
	xor	dword eax, 1
	ret

align 2
global	_ZN7Natural6resizeEm

_ZN7Natural6resizeEm:
	push	rbp
	leaq	[rsi*8+0], rbp
	push	rbx
	mov	qword	rbx, rdi
	mov	qword	rsi, rbp
	push	rcx
	mov	qword	rdi, [rdi]
	call	dword realloc
	addq	rax, rbp
	mov	qword	[rbx], rax
	mov	qword	[rbx+8], rbp
	popq	rsi
	popq	rbx
	popq	rbp
	ret

align 2
global	_ZN7Natural6shrinkEv

_ZN7Natural6shrinkEv:
	mov	qword	rdx, [rdi]
	addq	8, rdx
_L66:
	mov	qword	rax, [rdi+8]
	cmpq	rax, rdx
	jae	_L63
	cmpq	0, [rax+-8]
	jne	_L63
	subq	8, rax
	mov	qword	[rdi+8], rax
	jmp	dword _L66
_L63:
	ret

align 2
global	_ZNK7NaturalplERKS_

_ZNK7NaturalplERKS_:
	push	r15
	mov	qword	r15, rdx
	push	r14
	push	r13
	mov	qword	r13, rsi
	push	r12
	push	rbp
	push	rbx
	mov	qword	rbx, rdi
	subq	40, rsp
	call	dword _ZN7NaturalC1Ev
	mov	qword	r12, [r13+8]
	mov	qword	rbp, [r15+8]
	subq	[r13+0], r12
	subq	[r15], rbp
	mov	qword	rdi, [rbx]
	sarq	3, r12
	sarq	3, rbp
	cmpq	r12, rbp
	mov	qword	rax, r12
	cmovae	rax, rbp
	leaq	[rax*8+8], r14
	mov	qword	rsi, r14
	call	dword realloc
	leaq		[rax+r14], rcx
	mov	qword	[rbx], rax
	mov	qword	rdx, rax
	mov	qword	[rbx+8], rcx
	jmp	dword _L68
_L69:
	mov	qword	[rdx], 0
	addq	8, rdx
_L68:
	cmpq	rcx, rdx
	jb	_L69
	mov	qword	rdi, rax
	leaq	[r12*8+0], rcx
	mov	qword	rsi, [r13+0]
	xor	dword eax, eax
	rep[movsb]
	jmp	dword _L70
_L71:
	leaq		[rdx+rax*8], rdx
	movslq	ecx, rcx
	mov	qword	[rsp+8], 0
	mov	qword	[rsp+24], 0
	mov	qword	rdi, [rsp+24]
	mov	qword	rsi, [rdx]
	mov	qword	[rsp], rsi
	mov	qword	rsi, [r15]
	addq		[rsi+rax*8], rcx
	mov	qword	[rsp+16], rcx
	mov	qword	rsi, [rsp+16]
	addq	[rsp], rsi
	adcq	[rsp+8], rdi
	incq	rax
	mov	qword	[rdx], rsi
	mov	qword	rcx, rdi
_L70:
	cmpq	rbp, rax
	mov	qword	rdx, [rbx]
	jne	_L71
	movslq	ecx, rcx
	addq	rcx, 	[rdx+rax*8]
	mov	qword	rdi, rbx
	call	dword _ZN7Natural6shrinkEv
	addq	40, rsp
	mov	qword	rax, rbx
	popq	rbx
	popq	rbp
	popq	r12
	popq	r13
	popq	r14
	popq	r15
	ret

align 2
global	_ZN7NaturalD2Ev

_ZN7NaturalD2Ev:
	mov	qword	rdi, [rdi]
	jmp	dword free

global	_ZN7NaturalD1Ev
_ZN7NaturalD1Ev	equ	_ZN7NaturalD2Ev
align 2
global	_ZN7NaturalpLERKS_

_ZN7NaturalpLERKS_:
	push	rbx
	mov	qword	rdx, rsi
	mov	qword	rbx, rdi
	mov	qword	rsi, rdi
	subq	32, rsp
	leaq	[rsp+16], rdi
	call	dword _ZNK7NaturalplERKS_
	leaq	[rsp+16], rsi
	mov	qword	rdi, rbx
	call	dword _ZN7NaturalaSERKS_
	leaq	[rsp+16], rdi
	mov	qword	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	mov	qword	rax, [rsp+8]
	addq	32, rsp
	popq	rbx
	ret

align 2
global	_ZN7NaturalppEi

_ZN7NaturalppEi:
	push	rbp
	mov	qword	rbp, rsi
	push	rbx
	mov	qword	rbx, rdi
	subq	24, rsp
	call	dword _ZN7NaturalC1ERKS_
	mov	qword	rdi, rsp
	mov	dword esi, 1
	call	dword _ZN7NaturalC1Em
	mov	qword	rsi, rsp
	mov	qword	rdi, rbp
	call	dword _ZN7NaturalpLERKS_
	mov	qword	rdi, rsp
	call	dword _ZN7NaturalD1Ev
	addq	24, rsp
	mov	qword	rax, rbx
	popq	rbx
	popq	rbp
	ret

align 2
global	_ZN7NaturalppEv

_ZN7NaturalppEv:
	push	rbx
	mov	qword	rbx, rdi
	mov	dword esi, 1
	subq	32, rsp
	leaq	[rsp+16], rdi
	call	dword _ZN7NaturalC1Em
	leaq	[rsp+16], rsi
	mov	qword	rdi, rbx
	call	dword _ZN7NaturalpLERKS_
	leaq	[rsp+16], rdi
	mov	qword	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	mov	qword	rax, [rsp+8]
	addq	32, rsp
	popq	rbx
	ret

align 2
global	_ZNK7NaturalmlERKS_

_ZNK7NaturalmlERKS_:
	push	r14
	push	r13
	mov	qword	r13, rsi
	push	r12
	xor	dword r12d, r12d
	push	rbp
	mov	qword	rbp, rdi
	push	rbx
	mov	qword	rbx, rdx
	subq	16, rsp
	call	dword _ZN7NaturalC1Ev
	mov	qword	r14, [r13+0]
	jmp	dword _L81
_L84:
	mov	qword	rdi, rsp
	call	dword _ZN7NaturalC1Ev
	mov	qword	rsi, [rbx+8]
	subq	[rbx], rsi
	mov	qword	rdi, rsp
	sarq	3, rsi
	incq	rsi
	call	dword _ZN7Natural6resizeEm
	mov	qword	rsi, [rbx]
	mov	qword	rdi, [rbx+8]
	mov	qword	rcx, [rsp]
	jmp	dword _L82
_L83:
	mov	qword	rax, [rsi]
	addq	8, rsi
	mulq	[r14]
	addq	rax, [rcx]
	mov	qword	[rcx+8], rdx
	addq	8, rcx
_L82:
	cmpq	rdi, rsi
	jb	_L83
	mov	qword	rsi, r12
	mov	qword	rdi, rsp
	addq	8, r14
	call	dword _ZN7Natural5shiftEm
	mov	qword	rsi, rsp
	mov	qword	rdi, rbp
	incq	r12
	call	dword _ZN7NaturalpLERKS_
	mov	qword	rdi, rsp
	call	dword _ZN7NaturalD1Ev
_L81:
	cmpq	[r13+8], r14
	jb	_L84
	addq	16, rsp
	mov	qword	rax, rbp
	popq	rbx
	popq	rbp
	popq	r12
	popq	r13
	popq	r14
	ret

align 2
global	_ZN7NaturalmLERKS_

_ZN7NaturalmLERKS_:
	push	rbx
	mov	qword	rdx, rsi
	mov	qword	rbx, rdi
	mov	qword	rsi, rdi
	subq	32, rsp
	leaq	[rsp+16], rdi
	call	dword _ZNK7NaturalmlERKS_
	leaq	[rsp+16], rsi
	mov	qword	rdi, rbx
	call	dword _ZN7NaturalaSERKS_
	leaq	[rsp+16], rdi
	mov	qword	[rsp+8], rax
	call	dword _ZN7NaturalD1Ev
	mov	qword	rax, [rsp+8]
	addq	32, rsp
	popq	rbx
	ret


section ".note.GNU-stack"
