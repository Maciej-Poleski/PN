	.file	"natural.cpp"
	.text
	.globl	_ZN7Natural5shiftEm
	.align	2, 0x90
	.type	_ZN7Natural5shiftEm,@function
_ZN7Natural5shiftEm:                    # @_ZN7Natural5shiftEm
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r13, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%r15), %r14
	movq	8(%r15), %r12
	subq	%r14, %r12
	sarq	$3, %r12
	leaq	(%r12,%rbx), %r13
	leaq	(,%r13,8), %rdi
	callq	malloc
	movq	%rax, (%r15)
	leaq	(%rax,%r13,8), %rcx
	testq	%rbx, %rbx
	movq	%rcx, 8(%r15)
	je	.LBB0_2
# BB#1:                                 # %.lr.ph17
	leaq	(,%rbx,8), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
.LBB0_2:                                # %.preheader
	testq	%r12, %r12
	je	.LBB0_5
# BB#3:                                 # %.lr.ph
	shlq	$3, %rbx
	addq	(%r15), %rbx
	movq	%r14, %rax
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$8, %rbx
	addq	$8, %rax
	decq	%r12
	jne	.LBB0_4
.LBB0_5:                                # %._crit_edge
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	free                    # TAILCALL
.Ltmp16:
	.size	_ZN7Natural5shiftEm, .Ltmp16-_ZN7Natural5shiftEm
	.cfi_endproc

	.globl	_ZN7NaturalC2Ev
	.align	2, 0x90
	.type	_ZN7NaturalC2Ev,@function
_ZN7NaturalC2Ev:                        # @_ZN7NaturalC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	malloc
	movq	%rax, (%rbx)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rbx)
	movq	$0, (%rax)
	popq	%rbx
	ret
.Ltmp21:
	.size	_ZN7NaturalC2Ev, .Ltmp21-_ZN7NaturalC2Ev
	.cfi_endproc

	.globl	_ZN7NaturalC2Em
	.align	2, 0x90
	.type	_ZN7NaturalC2Em,@function
_ZN7NaturalC2Em:                        # @_ZN7NaturalC2Em
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -24
.Ltmp29:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	malloc
	movq	%rax, (%rbx)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rbx)
	movq	%r14, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp30:
	.size	_ZN7NaturalC2Em, .Ltmp30-_ZN7NaturalC2Em
	.cfi_endproc

	.globl	_ZN7NaturalC2EPKc
	.align	2, 0x90
	.type	_ZN7NaturalC2EPKc,@function
_ZN7NaturalC2EPKc:                      # @_ZN7NaturalC2EPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 64
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	%r15, %r13
	shrq	$4, %r13
	andq	$15, %rax
	cmpq	$1, %rax
	sbbq	$-1, %r13
	leaq	(,%r13,8), %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%r12, (%rbx)
	leaq	(%r12,%r13,8), %rax
	movq	%rax, 8(%rbx)
	cmpl	$16, %r15d
	jl	.LBB3_4
# BB#1:                                 # %.lr.ph
	movslq	%r15d, %rbp
	leaq	-16(%r14,%rbp), %rbx
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	%r15, %r14
	subq	%rbp, %r14
	addq	$-16, %rbp
	addl	$16, %ebp
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$16, %esi
	callq	_ZL19parseBigendianQwordPKci
	movq	%r14, %rcx
	shrq	$4, %rcx
	movq	%rax, (%r12,%rcx,8)
	addq	$-16, %rbx
	addq	$16, %r14
	addl	$-16, %ebp
	cmpl	$15, %ebp
	jg	.LBB3_2
# BB#3:                                 # %._crit_edge
	andl	$15, %r15d
	movq	(%rsp), %r14            # 8-byte Reload
.LBB3_4:
	testl	%r15d, %r15d
	jle	.LBB3_6
# BB#5:
	leal	-16(%r15), %eax
	movslq	%eax, %rax
	addq	%rax, %r14
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZL19parseBigendianQwordPKci
	movq	%rax, -8(%r12,%r13,8)
.LBB3_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp51:
	.size	_ZN7NaturalC2EPKc, .Ltmp51-_ZN7NaturalC2EPKc
	.cfi_endproc

	.type	_ZL19parseBigendianQwordPKci,@function
_ZL19parseBigendianQwordPKci:           # @_ZL19parseBigendianQwordPKci
	.cfi_startproc
# BB#0:
	xorl	%r8d, %r8d
	testl	%esi, %esi
	jle	.LBB4_1
# BB#2:
	movabsq	$64424509440, %r11      # imm = 0xF00000000
	movq	$-48, %r9
	movabsq	$-4294967296, %r10      # imm = 0xFFFFFFFF00000000
	xorl	%eax, %eax
.LBB4_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %rcx
	sarq	$32, %rcx
	movsbq	(%rdi,%rcx), %rcx
	cmpq	$58, %rcx
	movq	$-87, %rdx
	cmovlq	%r9, %rdx
	addq	%rcx, %rdx
	movb	%r8b, %cl
	andb	$-4, %cl
	shlq	%cl, %rdx
	orq	%rdx, %rax
	addq	%r10, %r11
	addq	$4, %r8
	decl	%esi
	jne	.LBB4_3
# BB#4:                                 # %._crit_edge
	ret
.LBB4_1:
	xorl	%eax, %eax
	ret
.Ltmp52:
	.size	_ZL19parseBigendianQwordPKci, .Ltmp52-_ZL19parseBigendianQwordPKci
	.cfi_endproc

	.globl	_ZN7NaturalC2ERKS_
	.align	2, 0x90
	.type	_ZN7NaturalC2ERKS_,@function
_ZN7NaturalC2ERKS_:                     # @_ZN7NaturalC2ERKS_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%r14), %rbx
	subq	(%r14), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rbx, %rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%r15)
	movq	(%r14), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp63:
	.size	_ZN7NaturalC2ERKS_, .Ltmp63-_ZN7NaturalC2ERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalneERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalneERKS_,@function
_ZNK7NaturalneERKS_:                    # @_ZNK7NaturalneERKS_
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 16
	callq	_ZNK7NaturaleqERKS_
	xorb	$1, %al
	popq	%rdx
	ret
.Ltmp66:
	.size	_ZNK7NaturalneERKS_, .Ltmp66-_ZNK7NaturalneERKS_
	.cfi_endproc

	.globl	_ZNK7NaturaleqERKS_
	.align	2, 0x90
	.type	_ZNK7NaturaleqERKS_,@function
_ZNK7NaturaleqERKS_:                    # @_ZNK7NaturaleqERKS_
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rdx
	subq	%rdi, %rdx
	movq	(%rax), %rsi
	movq	8(%rax), %rcx
	subq	%rsi, %rcx
	xorb	%al, %al
	cmpq	%rcx, %rdx
	jne	.LBB7_2
# BB#1:
	callq	memcmp
	testl	%eax, %eax
	sete	%al
.LBB7_2:
	popq	%rdx
	ret
.Ltmp69:
	.size	_ZNK7NaturaleqERKS_, .Ltmp69-_ZNK7NaturaleqERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalmlERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalmlERKS_,@function
_ZNK7NaturalmlERKS_:                    # @_ZNK7NaturalmlERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 80
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rdi, %r14
	movl	$8, %edi
	callq	malloc
	movq	%rax, (%r14)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r14)
	movq	$0, (%rax)
	movq	(%rbx), %rbp
	cmpq	8(%rbx), %rbp
	jae	.LBB8_6
# BB#1:                                 # %.lr.ph23
	xorl	%r13d, %r13d
	leaq	8(%rsp), %r15
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movl	$8, %edi
	callq	malloc
	movq	$0, (%rax)
	movq	8(%r12), %rbx
	subq	(%r12), %rbx
	shrq	$3, %rbx
	leaq	8(,%rbx,8), %rsi
	movq	%rax, %rdi
	callq	realloc
	movq	%rax, %rcx
	movq	%rcx, 8(%rsp)
	leaq	8(%rcx,%rbx,8), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rsi
	movq	8(%r12), %rdi
	cmpq	%rdi, %rsi
	jae	.LBB8_5
# BB#3:                                 # %.lr.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	(%rcx), %rbx
	addq	$8, %rcx
.LBB8_4:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rax
	mulq	(%rbp)
	addq	%rbx, %rax
	movq	%rax, -8(%rcx)
	movq	%rdx, (%rcx)
	addq	$8, %rcx
	addq	$8, %rsi
	cmpq	%rdi, %rsi
	movq	%rdx, %rbx
	jb	.LBB8_4
.LBB8_5:                                # %._crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_ZN7Natural5shiftEm
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %r15
	callq	_ZN7NaturalpLERKS_
	movq	8(%rsp), %rdi
	callq	free
	incq	%r13
	addq	$8, %rbp
	movq	(%rsp), %rax            # 8-byte Reload
	cmpq	8(%rax), %rbp
	jb	.LBB8_2
.LBB8_6:                                # %._crit_edge24
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp90:
	.size	_ZNK7NaturalmlERKS_, .Ltmp90-_ZNK7NaturalmlERKS_
	.cfi_endproc

	.globl	_ZN7Natural6resizeEm
	.align	2, 0x90
	.type	_ZN7Natural6resizeEm,@function
_ZN7Natural6resizeEm:                   # @_ZN7Natural6resizeEm
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp96:
	.cfi_def_cfa_offset 32
.Ltmp97:
	.cfi_offset %rbx, -24
.Ltmp98:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	leaq	(,%r14,8), %rsi
	callq	realloc
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,8), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp99:
	.size	_ZN7Natural6resizeEm, .Ltmp99-_ZN7Natural6resizeEm
	.cfi_endproc

	.globl	_ZN7NaturalpLERKS_
	.align	2, 0x90
	.type	_ZN7NaturalpLERKS_,@function
_ZN7NaturalpLERKS_:                     # @_ZN7NaturalpLERKS_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 48
.Ltmp108:
	.cfi_offset %rbx, -32
.Ltmp109:
	.cfi_offset %r14, -24
.Ltmp110:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %r15
	leaq	(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZNK7NaturalplERKS_
	movq	(%r15), %rdi
	callq	free
	movq	(%rsp), %r14
	movq	8(%rsp), %rbx
	subq	%r14, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rbx, %rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdi
	callq	free
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp111:
	.size	_ZN7NaturalpLERKS_, .Ltmp111-_ZN7NaturalpLERKS_
	.cfi_endproc

	.globl	_ZN7NaturalmLERKS_
	.align	2, 0x90
	.type	_ZN7NaturalmLERKS_,@function
_ZN7NaturalmLERKS_:                     # @_ZN7NaturalmLERKS_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -32
.Ltmp121:
	.cfi_offset %r14, -24
.Ltmp122:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %r15
	leaq	(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZNK7NaturalmlERKS_
	movq	(%r15), %rdi
	callq	free
	movq	(%rsp), %r14
	movq	8(%rsp), %rbx
	subq	%r14, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rbx, %rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdi
	callq	free
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp123:
	.size	_ZN7NaturalmLERKS_, .Ltmp123-_ZN7NaturalmLERKS_
	.cfi_endproc

	.globl	_ZN7NaturalaSERKS_
	.align	2, 0x90
	.type	_ZN7NaturalaSERKS_,@function
_ZN7NaturalaSERKS_:                     # @_ZN7NaturalaSERKS_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 32
.Ltmp131:
	.cfi_offset %rbx, -32
.Ltmp132:
	.cfi_offset %r14, -24
.Ltmp133:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r15), %rdi
	callq	free
	movq	8(%r14), %rbx
	subq	(%r14), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rbx, %rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%r15)
	movq	(%r14), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp134:
	.size	_ZN7NaturalaSERKS_, .Ltmp134-_ZN7NaturalaSERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalplERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalplERKS_,@function
_ZNK7NaturalplERKS_:                    # @_ZNK7NaturalplERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 96
.Ltmp149:
	.cfi_offset %rbx, -56
.Ltmp150:
	.cfi_offset %r12, -48
.Ltmp151:
	.cfi_offset %r13, -40
.Ltmp152:
	.cfi_offset %r14, -32
.Ltmp153:
	.cfi_offset %r15, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	movl	$8, %edi
	callq	malloc
	movq	$0, (%rax)
	movq	8(%rbp), %rcx
	subq	(%rbp), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	sarq	$3, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	8(%rbx), %r13
	subq	(%rbx), %r13
	movq	%r13, %rbx
	sarq	$3, %rbx
	cmpq	%rcx, %rbx
	movq	%rcx, %rbp
	cmovaq	%rbx, %rbp
	leaq	8(,%rbp,8), %rsi
	movq	%rax, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	%r14, (%r15)
	leaq	8(%r14,%rbp,8), %r12
	movq	%r12, 8(%r15)
	cmpq	%r12, %r14
	jae	.LBB13_3
# BB#1:
	movq	%r14, %rax
.LBB13_2:                               # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	addq	$8, %rax
	cmpq	%r12, %rax
	jb	.LBB13_2
.LBB13_3:                               # %._crit_edge38
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movq	32(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB13_9
# BB#4:                                 # %.lr.ph33
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%edi, %edi
	movq	%rbp, %rdx
	movq	%r14, %rsi
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	addq	(%rsi), %rdi
	sbbq	%rax, %rax
	andq	$1, %rax
	addq	(%rcx), %rdi
	movq	%rdi, (%rsi)
	adcq	$0, %rax
	addq	$8, %rsi
	addq	$8, %rcx
	decq	%rdx
	movq	%rax, %rdi
	jne	.LBB13_5
# BB#6:                                 # %.preheader
	testq	%rax, %rax
	je	.LBB13_9
# BB#7:                                 # %.lr.ph.preheader
	movq	24(%rsp), %rcx          # 8-byte Reload
	shrq	$3, %rcx
	movslq	%ecx, %rcx
	leaq	(%r14,%rcx,8), %rcx
.LBB13_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	sbbq	%rax, %rax
	andq	$1, %rax
	addq	$8, %rcx
	testq	%rax, %rax
	jne	.LBB13_8
.LBB13_9:                               # %._crit_edge
	leaq	8(%r14), %rax
	cmpq	%r12, %rax
	jae	.LBB13_13
# BB#10:                                # %.lr.ph.i.preheader
	cmpq	%rbx, %rbp
	cmovaq	%rbp, %rbx
	leaq	(%r14,%rbx,8), %rcx
.LBB13_11:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rcx)
	jne	.LBB13_13
# BB#12:                                #   in Loop: Header=BB13_11 Depth=1
	movq	%rcx, 8(%r15)
	cmpq	%rcx, %rax
	leaq	-8(%rcx), %rcx
	jb	.LBB13_11
.LBB13_13:                              # %_ZN7Natural6shrinkEv.exit
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp155:
	.size	_ZNK7NaturalplERKS_, .Ltmp155-_ZNK7NaturalplERKS_
	.cfi_endproc

	.globl	_ZN7Natural6shrinkEv
	.align	2, 0x90
	.type	_ZN7Natural6shrinkEv,@function
_ZN7Natural6shrinkEv:                   # @_ZN7Natural6shrinkEv
	.cfi_startproc
# BB#0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	addq	$8, %rax
	cmpq	%rcx, %rax
	jae	.LBB14_4
# BB#1:                                 # %.lr.ph.preheader
	addq	$-8, %rcx
.LBB14_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rcx)
	jne	.LBB14_4
# BB#3:                                 #   in Loop: Header=BB14_2 Depth=1
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rax
	leaq	-8(%rcx), %rcx
	jb	.LBB14_2
.LBB14_4:                               # %.critedge
	ret
.Ltmp156:
	.size	_ZN7Natural6shrinkEv, .Ltmp156-_ZN7Natural6shrinkEv
	.cfi_endproc

	.globl	_ZN7NaturalppEv
	.align	2, 0x90
	.type	_ZN7NaturalppEv,@function
_ZN7NaturalppEv:                        # @_ZN7NaturalppEv
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 32
.Ltmp161:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	malloc
	movq	%rax, (%rsp)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	$1, (%rax)
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN7NaturalpLERKS_
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	callq	free
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp162:
	.size	_ZN7NaturalppEv, .Ltmp162-_ZN7NaturalppEv
	.cfi_endproc

	.globl	_ZN7NaturalppEi
	.align	2, 0x90
	.type	_ZN7NaturalppEi,@function
_ZN7NaturalppEi:                        # @_ZN7NaturalppEi
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 64
.Ltmp173:
	.cfi_offset %rbx, -40
.Ltmp174:
	.cfi_offset %r12, -32
.Ltmp175:
	.cfi_offset %r14, -24
.Ltmp176:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r15), %r12
	movq	8(%r15), %rbx
	subq	%r12, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r14)
	movq	%rbx, %rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%r14)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$8, %edi
	callq	malloc
	leaq	8(%rsp), %rsi
	movq	%rax, 8(%rsp)
	leaq	8(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	$1, (%rax)
	movq	%r15, %rdi
	callq	_ZN7NaturalpLERKS_
	movq	8(%rsp), %rdi
	callq	free
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.Ltmp177:
	.size	_ZN7NaturalppEi, .Ltmp177-_ZN7NaturalppEi
	.cfi_endproc

	.globl	_ZNK7NaturalltERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalltERKS_,@function
_ZNK7NaturalltERKS_:                    # @_ZNK7NaturalltERKS_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp184:
	.cfi_def_cfa_offset 32
.Ltmp185:
	.cfi_offset %rbx, -32
.Ltmp186:
	.cfi_offset %r14, -24
.Ltmp187:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_ZNK7Natural4SizeEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZNK7Natural4SizeEv
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	%rcx, %r15
	jb	.LBB17_6
# BB#1:
	cmpq	%rcx, %r15
	ja	.LBB17_2
# BB#3:
	movq	(%r14), %rcx
	movq	8(%r14), %rsi
	subq	%rcx, %rsi
	shlq	$29, %rsi
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rsi, %rdx
	sarq	$32, %rdx
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	js	.LBB17_2
# BB#5:                                 #   in Loop: Header=BB17_4 Depth=1
	movq	(%rcx,%rdx,8), %rsi
	movq	(%rbx), %rdi
	cmpq	(%rdi,%rdx,8), %rsi
	leaq	-1(%rdx), %rdx
	jae	.LBB17_4
	jmp	.LBB17_6
.LBB17_2:
	xorb	%al, %al
.LBB17_6:                               # %.loopexit
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp188:
	.size	_ZNK7NaturalltERKS_, .Ltmp188-_ZNK7NaturalltERKS_
	.cfi_endproc

	.globl	_ZNK7Natural4SizeEv
	.align	2, 0x90
	.type	_ZNK7Natural4SizeEv,@function
_ZNK7Natural4SizeEv:                    # @_ZNK7Natural4SizeEv
	.cfi_startproc
# BB#0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	subq	%rcx, %rax
	shrq	$3, %rax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	addq	%rax, %rdx
	movslq	%edx, %rdi
	shll	$6, %edx
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	movq	%rdi, %rsi
	testl	%esi, %esi
	jle	.LBB18_3
# BB#2:                                 #   in Loop: Header=BB18_1 Depth=1
	leal	-64(%rax), %edx
	leaq	-1(%rsi), %rdi
	cmpq	$0, (%rcx,%rsi,8)
	je	.LBB18_1
.LBB18_3:
	movq	(%rcx,%rsi,8), %rdx
	xorl	%ecx, %ecx
	jmp	.LBB18_5
.LBB18_4:                               # %.lr.ph.i
                                        #   in Loop: Header=BB18_5 Depth=1
	incq	%rcx
	shrq	%rdx
.LBB18_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	jne	.LBB18_4
# BB#6:                                 # %_ZL13lengthOfQWordm.exit
	movslq	%eax, %rax
	addq	%rcx, %rax
	ret
.Ltmp189:
	.size	_ZNK7Natural4SizeEv, .Ltmp189-_ZNK7Natural4SizeEv
	.cfi_endproc

	.globl	_ZNK7NaturalleERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalleERKS_,@function
_ZNK7NaturalleERKS_:                    # @_ZNK7NaturalleERKS_
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp195:
	.cfi_def_cfa_offset 32
.Ltmp196:
	.cfi_offset %rbx, -24
.Ltmp197:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNK7NaturalltERKS_
	movb	%al, %cl
	movb	$1, %al
	testb	%cl, %cl
	jne	.LBB19_2
# BB#1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNK7NaturaleqERKS_
.LBB19_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp198:
	.size	_ZNK7NaturalleERKS_, .Ltmp198-_ZNK7NaturalleERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalgtERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalgtERKS_,@function
_ZNK7NaturalgtERKS_:                    # @_ZNK7NaturalgtERKS_
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp200:
	.cfi_def_cfa_offset 16
	callq	_ZNK7NaturalleERKS_
	xorb	$1, %al
	popq	%rdx
	ret
.Ltmp201:
	.size	_ZNK7NaturalgtERKS_, .Ltmp201-_ZNK7NaturalgtERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalgeERKS_
	.align	2, 0x90
	.type	_ZNK7NaturalgeERKS_,@function
_ZNK7NaturalgeERKS_:                    # @_ZNK7NaturalgeERKS_
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp203:
	.cfi_def_cfa_offset 16
	callq	_ZNK7NaturalltERKS_
	xorb	$1, %al
	popq	%rdx
	ret
.Ltmp204:
	.size	_ZNK7NaturalgeERKS_, .Ltmp204-_ZNK7NaturalgeERKS_
	.cfi_endproc

	.globl	_ZNK7NaturalcvbEv
	.align	2, 0x90
	.type	_ZNK7NaturalcvbEv,@function
_ZNK7NaturalcvbEv:                      # @_ZNK7NaturalcvbEv
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp206:
	.cfi_def_cfa_offset 16
	callq	_ZNK7Natural4SizeEv
	testq	%rax, %rax
	setne	%al
	popq	%rdx
	ret
.Ltmp207:
	.size	_ZNK7NaturalcvbEv, .Ltmp207-_ZNK7NaturalcvbEv
	.cfi_endproc

	.globl	_ZNK7Natural5PrintEv
	.align	2, 0x90
	.type	_ZNK7Natural5PrintEv,@function
_ZNK7Natural5PrintEv:                   # @_ZNK7Natural5PrintEv
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp213:
	.cfi_def_cfa_offset 32
.Ltmp214:
	.cfi_offset %rbx, -24
.Ltmp215:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	8(%r14), %rax
	movq	-8(%rax), %rsi
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movq	8(%r14), %rbx
	addq	$-16, %rbx
	jmp	.LBB23_2
.LBB23_1:                               # %.lr.ph
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	addq	$-8, %rbx
.LBB23_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	cmpq	(%r14), %rbx
	jae	.LBB23_1
# BB#3:                                 # %._crit_edge
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	putchar                 # TAILCALL
.Ltmp216:
	.size	_ZNK7Natural5PrintEv, .Ltmp216-_ZNK7Natural5PrintEv
	.cfi_endproc

	.globl	_ZN7NaturalD2Ev
	.align	2, 0x90
	.type	_ZN7NaturalD2Ev,@function
_ZN7NaturalD2Ev:                        # @_ZN7NaturalD2Ev
	.cfi_startproc
# BB#0:
	movq	(%rdi), %rdi
	jmp	free                    # TAILCALL
.Ltmp217:
	.size	_ZN7NaturalD2Ev, .Ltmp217-_ZN7NaturalD2Ev
	.cfi_endproc

	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	 "%.16lx"
	.size	.L.str1, 7

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "%lx"
	.size	.L.str2, 4


	.globl	_ZN7NaturalC1Ev
_ZN7NaturalC1Ev = _ZN7NaturalC2Ev
	.globl	_ZN7NaturalC1Em
_ZN7NaturalC1Em = _ZN7NaturalC2Em
	.globl	_ZN7NaturalC1EPKc
_ZN7NaturalC1EPKc = _ZN7NaturalC2EPKc
	.globl	_ZN7NaturalC1ERKS_
_ZN7NaturalC1ERKS_ = _ZN7NaturalC2ERKS_
	.globl	_ZN7NaturalD1Ev
_ZN7NaturalD1Ev = _ZN7NaturalD2Ev
	.section	".note.GNU-stack","",@progbits
