	.file	"natural.cpp"
	.text
	.type	_ZL19parseBigendianQwordPKci, @function
_ZL19parseBigendianQwordPKci:
.LFB419:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L2
.L5:
	movq	%rdx, %rcx
	negq	%rcx
	movsbl	15(%rdi,%rcx), %r8d
	cmpb	$57, %r8b
	jg	.L3
	subl	$48, %r8d
	jmp	.L6
.L3:
	subl	$87, %r8d
.L6:
	leal	0(,%rdx,4), %ecx
	movslq	%r8d, %r8
	incq	%rdx
	salq	%cl, %r8
	orq	%r8, %rax
.L2:
	cmpl	%edx, %esi
	jg	.L5
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdi), %r12
	movq	8(%rdi), %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	leaq	(%rbx,%rsi), %r13
	salq	$3, %r13
	movq	%r13, %rdi
	call	malloc
	addq	%rax, %r13
	movq	%rax, 0(%rbp)
	xorl	%edx, %edx
	movq	%r13, 8(%rbp)
	jmp	.L8
.L9:
	movq	$0, (%rax,%rdx,8)
	incq	%rdx
.L8:
	cmpq	%r14, %rdx
	jne	.L9
	leaq	(%rax,%rdx,8), %rdx
	xorl	%eax, %eax
	jmp	.L10
.L11:
	movq	(%r12,%rax,8), %rcx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
.L10:
	cmpq	%rbx, %rax
	jne	.L11
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	movq	%r12, %rdi
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free
	.cfi_endproc
.LFE421:
	.size	_ZN7Natural5shiftEm, .-_ZN7Natural5shiftEm
	.align 2
	.globl	_ZN7NaturalC2Ev
	.type	_ZN7NaturalC2Ev, @function
_ZN7NaturalC2Ev:
.LFB423:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	call	malloc
	leaq	8(%rax), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	$0, (%rax)
	popq	%rbx
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	$8, %edi
	pushq	%rax
	.cfi_def_cfa_offset 32
	call	malloc
	leaq	8(%rax), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	%rbp, (%rax)
	popq	%rdx
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%eax, %eax
	orq	$-1, %rcx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	repnz scasb
	notq	%rcx
	leaq	-1(%rcx), %rbx
	testb	$15, %bl
	movq	%rbx, %rax
	setne	%r13b
	shrq	$4, %rax
	addq	%rax, %r13
	salq	$3, %r13
	movq	%r13, %rdi
	call	malloc
	movq	%rbx, %rdx
	movq	%rax, 0(%rbp)
	addq	%rax, %r13
	movq	%rax, %r14
	movslq	%ebx, %rax
	movq	%r13, 8(%rbp)
	subq	%rax, %rdx
	leaq	-16(%r12,%rax), %rax
	xorl	%ebp, %ebp
	movq	%rdx, (%rsp)
	movq	%rax, 8(%rsp)
	jmp	.L18
.L19:
	movq	(%rsp), %rax
	movq	8(%rsp), %rdi
	movl	$16, %esi
	addq	%rbp, %rax
	subq	%rbp, %rdi
	addq	$16, %rbp
	shrq	$4, %rax
	leaq	(%r14,%rax,8), %r15
	call	_ZL19parseBigendianQwordPKci
	movq	%rax, (%r15)
.L18:
	movl	%ebx, %esi
	subl	%ebp, %esi
	cmpl	$15, %esi
	jg	.L19
	testl	%esi, %esi
	jle	.L17
	movslq	%esi, %rax
	leaq	-16(%r12,%rax), %rdi
	call	_ZL19parseBigendianQwordPKci
	movq	%rax, -8(%r13)
.L17:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	8(%rsi), %rbx
	subq	(%rsi), %rbx
	andq	$-8, %rbx
	movq	%rbx, %rdi
	call	malloc
	leaq	(%rax,%rbx), %rdx
	movq	%rax, (%r12)
	movq	%rbx, %rcx
	movq	0(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rdx, 8(%r12)
	rep movsb
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
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
	movq	(%rdi), %rax
	movq	(%rsi), %rdx
	movq	%rdx, (%rdi)
	movq	%rax, (%rsi)
	movq	8(%rsi), %rdx
	movq	8(%rdi), %rax
	movq	%rdx, 8(%rdi)
	movq	%rax, 8(%rsi)
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
	movq	(%rdi), %r8
	movq	8(%rdi), %rdx
	xorl	%eax, %eax
	movq	(%rsi), %rdi
	movq	8(%rsi), %rcx
	subq	%r8, %rdx
	subq	%rdi, %rcx
	sarq	$3, %rdx
	sarq	$3, %rcx
	cmpq	%rcx, %rdx
	jne	.L30
	pushq	%rcx
	.cfi_def_cfa_offset 16
	movq	%rdi, %rsi
	salq	$3, %rdx
	movq	%r8, %rdi
	call	memcmp
	popq	%rsi
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	sete	%al
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
	pushq	%r8
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturaleqERKS_
	popq	%r9
	.cfi_def_cfa_offset 8
	xorl	$1, %eax
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%r11
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movl	$.LC0, %edi
	movq	-8(%rax), %rsi
	xorl	%eax, %eax
	call	printf
	movq	8(%rbp), %rbx
	subq	$16, %rbx
	jmp	.L34
.L35:
	movq	(%rbx), %rsi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	subq	$8, %rbx
	call	printf
.L34:
	cmpq	0(%rbp), %rbx
	jae	.L35
	popq	%r10
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	decl	%eax
	movslq	%eax, %rdx
	leaq	(%rcx,%rdx,8), %rdi
	xorl	%edx, %edx
	jmp	.L38
.L40:
	incq	%rdx
	imulq	$-8, %rdx, %r8
	cmpq	$0, 8(%rdi,%r8)
	je	.L38
.L41:
	movl	%esi, %edi
	movslq	%esi, %rsi
	xorl	%eax, %eax
	sall	$6, %edi
	movq	(%rcx,%rsi,8), %rdx
	movslq	%edi, %rdi
	jmp	.L39
.L38:
	movl	%eax, %esi
	subl	%edx, %esi
	testl	%esi, %esi
	jg	.L40
	jmp	.L41
.L42:
	shrq	%rdx
	incq	%rax
.L39:
	testq	%rdx, %rdx
	jne	.L42
	addq	%rdi, %rax
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
	call	_ZNK7Natural4SizeEv
	testq	%rax, %rax
	setne	%al
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	call	_ZNK7Natural4SizeEv
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	_ZNK7Natural4SizeEv
	cmpq	%rax, %r12
	movb	$1, %dl
	jb	.L46
	movb	$0, %dl
	ja	.L46
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	subq	%rsi, %rax
	sarq	$3, %rax
	decl	%eax
	movslq	%eax, %rdx
	salq	$3, %rdx
	jmp	.L47
.L49:
	movq	0(%rbp), %rdi
	movq	(%rsi,%rdx), %r8
	incq	%rcx
	movq	(%rdi,%rdx), %rdi
	subq	$8, %rdx
	cmpq	%rdi, %r8
	jb	.L52
.L47:
	cmpl	%ecx, %eax
	jns	.L49
	xorl	%edx, %edx
	jmp	.L46
.L52:
	movb	$1, %dl
.L46:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movb	%dl, %al
	popq	%r12
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
	call	_ZNK7NaturalltERKS_
	xorl	$1, %eax
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	pushq	%rax
	.cfi_def_cfa_offset 32
	call	_ZNK7NaturalltERKS_
	testb	%al, %al
	jne	.L56
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNK7NaturaleqERKS_
.L56:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	movb	$1, %al
	popq	%rbp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	_ZNK7NaturalleERKS_
	popq	%rdx
	.cfi_def_cfa_offset 8
	xorl	$1, %eax
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	0(,%rsi,8), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rbp, %rsi
	pushq	%rcx
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdi
	call	realloc
	addq	%rax, %rbp
	movq	%rax, (%rbx)
	movq	%rbp, 8(%rbx)
	popq	%rsi
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	movq	(%rdi), %rdx
	addq	$8, %rdx
.L65:
	movq	8(%rdi), %rax
	cmpq	%rax, %rdx
	jae	.L62
	cmpq	$0, -8(%rax)
	jne	.L62
	subq	$8, %rax
	movq	%rax, 8(%rdi)
	jmp	.L65
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	_ZN7NaturalC1Ev
	movq	8(%r13), %r12
	movq	8(%r15), %rbp
	subq	0(%r13), %r12
	subq	(%r15), %rbp
	movq	(%rbx), %rdi
	sarq	$3, %r12
	sarq	$3, %rbp
	cmpq	%r12, %rbp
	movq	%r12, %rax
	cmovae	%rbp, %rax
	leaq	8(,%rax,8), %r14
	movq	%r14, %rsi
	call	realloc
	leaq	(%rax,%r14), %rcx
	movq	%rax, (%rbx)
	movq	%rax, %rdx
	movq	%rcx, 8(%rbx)
	jmp	.L67
.L68:
	movq	$0, (%rdx)
	addq	$8, %rdx
.L67:
	cmpq	%rcx, %rdx
	jb	.L68
	movq	%rax, %rdi
	leaq	0(,%r12,8), %rcx
	movq	0(%r13), %rsi
	xorl	%eax, %eax
	rep movsb
	jmp	.L69
.L70:
	leaq	(%rdx,%rax,8), %rdx
	movslq	%ecx, %rcx
	movq	$0, 8(%rsp)
	movq	$0, 24(%rsp)
	movq	24(%rsp), %rdi
	movq	(%rdx), %rsi
	movq	%rsi, (%rsp)
	movq	(%r15), %rsi
	addq	(%rsi,%rax,8), %rcx
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rsi
	addq	(%rsp), %rsi
	adcq	8(%rsp), %rdi
	incq	%rax
	movq	%rsi, (%rdx)
	movq	%rdi, %rcx
.L69:
	cmpq	%rbp, %rax
	movq	(%rbx), %rdx
	jne	.L70
	movslq	%ecx, %rcx
	addq	%rcx, (%rdx,%rax,8)
	movq	%rbx, %rdi
	call	_ZN7Natural6shrinkEv
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
	movq	(%rdi), %rdi
	jmp	free
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsp, %rdi
	call	_ZN7NaturalC1ERKS_
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	_ZN7Natural4swapERS_
	movq	%rsp, %rdi
	call	_ZN7NaturalD1Ev
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movq	%rbx, %rax
	popq	%rbx
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	%rdi, %rsi
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	leaq	16(%rsp), %rdi
	call	_ZNK7NaturalplERKS_
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZN7NaturalaSERKS_
	leaq	16(%rsp), %rdi
	movq	%rax, 8(%rsp)
	call	_ZN7NaturalD1Ev
	movq	8(%rsp), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	call	_ZN7NaturalC1ERKS_
	movq	%rsp, %rdi
	movl	$1, %esi
	call	_ZN7NaturalC1Em
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	_ZN7NaturalpLERKS_
	movq	%rsp, %rdi
	call	_ZN7NaturalD1Ev
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	leaq	16(%rsp), %rdi
	call	_ZN7NaturalC1Em
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZN7NaturalpLERKS_
	leaq	16(%rsp), %rdi
	movq	%rax, 8(%rsp)
	call	_ZN7NaturalD1Ev
	movq	8(%rsp), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZN7NaturalC1Ev
	movq	0(%r13), %r14
	jmp	.L82
.L85:
	movq	%rsp, %rdi
	call	_ZN7NaturalC1Ev
	movq	8(%rbx), %rsi
	subq	(%rbx), %rsi
	movq	%rsp, %rdi
	sarq	$3, %rsi
	incq	%rsi
	call	_ZN7Natural6resizeEm
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	(%rsp), %rcx
	jmp	.L83
.L84:
	movq	(%rsi), %rax
	addq	$8, %rsi
	mulq	(%r14)
	addq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$8, %rcx
.L83:
	cmpq	%rdi, %rsi
	jb	.L84
	movq	%r12, %rsi
	movq	%rsp, %rdi
	addq	$8, %r14
	call	_ZN7Natural5shiftEm
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	incq	%r12
	call	_ZN7NaturalpLERKS_
	movq	%rsp, %rdi
	call	_ZN7NaturalD1Ev
.L82:
	cmpq	8(%r13), %r14
	jb	.L85
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	%rdi, %rsi
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	leaq	16(%rsp), %rdi
	call	_ZNK7NaturalmlERKS_
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZN7NaturalaSERKS_
	leaq	16(%rsp), %rdi
	movq	%rax, 8(%rsp)
	call	_ZN7NaturalD1Ev
	movq	8(%rsp), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE436:
	.size	_ZN7NaturalmLERKS_, .-_ZN7NaturalmLERKS_
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"OSpwg"
	.section	.note.GNU-stack,"",@progbits
