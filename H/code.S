	.file	"code.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_Z8th_getidv
	.type	_Z8th_getidv, @function
_Z8th_getidv:
.LFB714:
	.cfi_startproc
	mov	eax, DWORD PTR _ZL9currentId[rip]
	ret
	.cfi_endproc
.LFE714:
	.size	_Z8th_getidv, .-_Z8th_getidv
	.p2align 4,,15
	.globl	_Z11startThreadh
	.type	_Z11startThreadh, @function
_Z11startThreadh:
.LFB715:
	.cfi_startproc
	movzx	edi, dil
	movsx	rsi, edi
	mov	DWORD PTR _ZL9currentId[rip], edi
	mov	edi, OFFSET FLAT:_ZL7mainRsp
	imul	rsi, rsi, 66352
	add	rsi, OFFSET FLAT:_ZL7threads
	jmp	sleepThreadResumeThread
	.cfi_endproc
.LFE715:
	.size	_Z11startThreadh, .-_Z11startThreadh
	.p2align 4,,15
	.globl	_Z7th_exitv
	.type	_Z7th_exitv, @function
_Z7th_exitv:
.LFB717:
	.cfi_startproc
	movsx	rdi, DWORD PTR _ZL9currentId[rip]
	mov	esi, OFFSET FLAT:_ZL7mainRsp
	mov	DWORD PTR _ZL9currentId[rip], -1
	imul	rdi, rdi, 66352
	add	rdi, OFFSET FLAT:_ZL7threads
	mov	DWORD PTR [rdi+8], -1
	jmp	sleepThreadResumeThread
	.cfi_endproc
.LFE717:
	.size	_Z7th_exitv, .-_Z7th_exitv
	.p2align 4,,15
	.globl	_Z3runv
	.type	_Z3runv, @function
_Z3runv:
.LFB718:
	.cfi_startproc
	mov	rax, QWORD PTR _ZL12threadsQueue[rip+16]
	cmp	QWORD PTR _ZL12threadsQueue[rip+48], rax
	je	.L15
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L18:
	add	rax, 1
	mov	QWORD PTR _ZL12threadsQueue[rip+16], rax
.L7:
	movzx	edi, bl
	call	_Z11startThreadh
	mov	rax, QWORD PTR _ZL12threadsQueue[rip+16]
	cmp	QWORD PTR _ZL12threadsQueue[rip+48], rax
	je	.L17
.L11:
	mov	rdx, QWORD PTR _ZL12threadsQueue[rip+32]
	movzx	ebx, BYTE PTR [rax]
	sub	rdx, 1
	cmp	rax, rdx
	jne	.L18
	mov	rdi, QWORD PTR _ZL12threadsQueue[rip+24]
	call	_ZdlPv
	mov	rax, QWORD PTR _ZL12threadsQueue[rip+40]
	lea	rdx, [rax+8]
	mov	QWORD PTR _ZL12threadsQueue[rip+40], rdx
	mov	rax, QWORD PTR [rax+8]
	lea	rdx, [rax+512]
	mov	QWORD PTR _ZL12threadsQueue[rip+24], rax
	mov	QWORD PTR _ZL12threadsQueue[rip+32], rdx
	mov	QWORD PTR _ZL12threadsQueue[rip+16], rax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L17:
	pop	rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L15:
	rep
	ret
	.cfi_endproc
.LFE718:
	.size	_Z3runv, .-_Z3runv
	.section	.text._ZNSt11_Deque_baseIhSaIhEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIhSaIhEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt11_Deque_baseIhSaIhEED2Ev
	.type	_ZNSt11_Deque_baseIhSaIhEED2Ev, @function
_ZNSt11_Deque_baseIhSaIhEED2Ev:
.LFB742:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rdi, QWORD PTR [rdi]
	test	rdi, rdi
	je	.L19
	mov	rbp, QWORD PTR [r12+72]
	mov	rbx, QWORD PTR [r12+40]
	add	rbp, 8
	cmp	rbp, rbx
	jbe	.L21
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rdi, QWORD PTR [rbx]
	add	rbx, 8
	call	_ZdlPv
	cmp	rbp, rbx
	ja	.L23
	mov	rdi, QWORD PTR [r12]
.L21:
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE742:
	.size	_ZNSt11_Deque_baseIhSaIhEED2Ev, .-_ZNSt11_Deque_baseIhSaIhEED2Ev
	.weak	_ZNSt11_Deque_baseIhSaIhEED1Ev
	.set	_ZNSt11_Deque_baseIhSaIhEED1Ev,_ZNSt11_Deque_baseIhSaIhEED2Ev
	.section	.text._ZNSt5queueIhSt5dequeIhSaIhEEED2Ev,"axG",@progbits,_ZNSt5queueIhSt5dequeIhSaIhEEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev
	.type	_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev, @function
_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev:
.LFB876:
	.cfi_startproc
	jmp	_ZNSt11_Deque_baseIhSaIhEED2Ev
	.cfi_endproc
.LFE876:
	.size	_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev, .-_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev
	.weak	_ZNSt5queueIhSt5dequeIhSaIhEEED1Ev
	.set	_ZNSt5queueIhSt5dequeIhSaIhEEED1Ev,_ZNSt5queueIhSt5dequeIhSaIhEEED2Ev
	.section	.text._ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm:
.LFB765:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA765
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mov	eax, 8
	mov	r14, rsi
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	mov	r12, rdi
	mov	rdi, rsi
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	shr	rdi, 9
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	lea	rbx, [rdi+1]
	add	rdi, 3
	cmp	rdi, 8
	cmovb	rdi, rax
	mov	QWORD PTR [r12+8], rdi
	sal	rdi, 3
.LEHB0:
	call	_Znwm
.LEHE0:
	mov	rdx, QWORD PTR [r12+8]
	mov	QWORD PTR [r12], rax
	sub	rdx, rbx
	shr	rdx
	lea	r13, [rax+rdx*8]
	lea	rbp, [r13+0+rbx*8]
	cmp	r13, rbp
	jae	.L28
	mov	rbx, r13
	.p2align 4,,10
	.p2align 3
.L29:
	mov	edi, 512
.LEHB1:
	call	_Znwm
.LEHE1:
	mov	QWORD PTR [rbx], rax
	add	rbx, 8
	cmp	rbp, rbx
	ja	.L29
.L28:
	mov	QWORD PTR [r12+40], r13
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	and	r14d, 511
	mov	rdx, QWORD PTR [r13+0]
	lea	rax, [rdx+512]
	mov	QWORD PTR [r12+24], rdx
	mov	QWORD PTR [r12+32], rax
	lea	rax, [rbp-8]
	mov	QWORD PTR [r12+72], rax
	mov	rax, QWORD PTR [rbp-8]
	mov	QWORD PTR [r12+16], rdx
	pop	rbp
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [r12+56], rax
	lea	rcx, [rax+512]
	add	rax, r14
	mov	QWORD PTR [r12+64], rcx
	mov	QWORD PTR [r12+48], rax
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.L37:
	.cfi_restore_state
	mov	rdi, rax
	call	__cxa_begin_catch
	cmp	r13, rbx
	jae	.L34
.L39:
	mov	rdi, QWORD PTR [r13+0]
	add	r13, 8
	call	_ZdlPv
	cmp	rbx, r13
	ja	.L39
.L34:
.LEHB2:
	call	__cxa_rethrow
.LEHE2:
.L38:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rdi, rbx
	call	__cxa_begin_catch
	mov	rdi, QWORD PTR [r12]
	call	_ZdlPv
	mov	QWORD PTR [r12], 0
	mov	QWORD PTR [r12+8], 0
.LEHB3:
	call	__cxa_rethrow
.LEHE3:
.L36:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rdi, rbx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
	.cfi_endproc
.LFE765:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA765:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT765-.LLSDATTD765
.LLSDATTD765:
	.byte	0x1
	.uleb128 .LLSDACSE765-.LLSDACSB765
.LLSDACSB765:
	.uleb128 .LEHB0-.LFB765
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB765
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L37-.LFB765
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB765
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L38-.LFB765
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB765
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L36-.LFB765
	.uleb128 0
	.uleb128 .LEHB4-.LFB765
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE765:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT765:
	.section	.text._ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm
	.section	.text._ZNSt5dequeIhSaIhEEC2ERKS1_,"axG",@progbits,_ZNSt5dequeIhSaIhEEC5ERKS1_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5dequeIhSaIhEEC2ERKS1_
	.type	_ZNSt5dequeIhSaIhEEC2ERKS1_, @function
_ZNSt5dequeIhSaIhEEC2ERKS1_:
.LFB752:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rsi+72]
	mov	rdx, QWORD PTR [rsi+48]
	sub	rax, QWORD PTR [rsi+40]
	mov	QWORD PTR [rdi+40], 0
	sub	rdx, QWORD PTR [rsi+56]
	mov	QWORD PTR [rdi+72], 0
	mov	QWORD PTR [rdi+24], 0
	mov	QWORD PTR [rdi+56], 0
	sar	rax, 3
	sub	rax, 1
	sal	rax, 9
	add	rax, rdx
	mov	rdx, QWORD PTR [rsi+32]
	mov	QWORD PTR [rdi+32], 0
	mov	QWORD PTR [rdi+64], 0
	sub	rdx, QWORD PTR [rsi+16]
	mov	QWORD PTR [rdi], 0
	mov	QWORD PTR [rdi+8], 0
	mov	QWORD PTR [rdi+16], 0
	mov	QWORD PTR [rdi+48], 0
	lea	rsi, [rax+rdx]
	call	_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm
	mov	r9, QWORD PTR [rbp+40]
	mov	rcx, QWORD PTR [rbp+72]
	mov	rsi, QWORD PTR [rbp+48]
	mov	rdi, QWORD PTR [rbp+32]
	mov	rax, QWORD PTR [rbp+16]
	sub	rcx, r9
	mov	rdx, QWORD PTR [rbx+16]
	sub	rsi, QWORD PTR [rbp+56]
	sar	rcx, 3
	sub	rcx, 1
	mov	r11, rdi
	mov	r8, QWORD PTR [rbx+32]
	sal	rcx, 9
	sub	r11, rax
	mov	r10, QWORD PTR [rbx+40]
	add	rcx, rsi
	add	rcx, r11
	test	rcx, rcx
	jg	.L50
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L46:
	add	rdx, 1
	cmp	rdx, r8
	je	.L53
.L47:
	sub	rcx, 1
	je	.L44
.L50:
	movzx	esi, BYTE PTR [rax]
	add	rax, 1
	cmp	rax, rdi
	mov	BYTE PTR [rdx], sil
	jne	.L46
	mov	rax, QWORD PTR [r9+8]
	add	rdx, 1
	add	r9, 8
	cmp	rdx, r8
	lea	rdi, [rax+512]
	jne	.L47
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rdx, QWORD PTR [r10+8]
	add	r10, 8
	sub	rcx, 1
	lea	r8, [rdx+512]
	jne	.L50
	.p2align 4,,10
	.p2align 3
.L44:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE752:
	.size	_ZNSt5dequeIhSaIhEEC2ERKS1_, .-_ZNSt5dequeIhSaIhEEC2ERKS1_
	.weak	_ZNSt5dequeIhSaIhEEC1ERKS1_
	.set	_ZNSt5dequeIhSaIhEEC1ERKS1_,_ZNSt5dequeIhSaIhEEC2ERKS1_
	.section	.text._ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh,"axG",@progbits,_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh
	.type	_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh, @function
_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh:
.LFB778:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx
	.cfi_offset 3, -56
	mov	rbx, rdi
	mov	QWORD PTR [rsp-40], rbp
	mov	QWORD PTR [rsp-32], r12
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	mov	r12, rsi
	mov	QWORD PTR [rsp-24], r13
	mov	QWORD PTR [rsp-16], r14
	mov	QWORD PTR [rsp-8], r15
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, QWORD PTR [rdi+72]
	mov	rcx, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rdi+8]
	mov	rax, rbp
	sub	rax, rcx
	sar	rax, 3
	mov	rsi, rdx
	sub	rsi, rax
	cmp	rsi, 1
	jbe	.L76
.L55:
	mov	edi, 512
	call	_Znwm
	mov	QWORD PTR [rbp+8], rax
	mov	rax, QWORD PTR [rbx+48]
	test	rax, rax
	je	.L61
	movzx	edx, BYTE PTR [r12]
	mov	BYTE PTR [rax], dl
.L61:
	mov	rax, QWORD PTR [rbx+72]
	mov	rbp, QWORD PTR [rsp+16]
	mov	r12, QWORD PTR [rsp+24]
	mov	r13, QWORD PTR [rsp+32]
	lea	rdx, [rax+8]
	mov	r14, QWORD PTR [rsp+40]
	mov	QWORD PTR [rbx+72], rdx
	mov	r15, QWORD PTR [rsp+48]
	mov	rax, QWORD PTR [rax+8]
	lea	rdx, [rax+512]
	mov	QWORD PTR [rbx+56], rax
	mov	QWORD PTR [rbx+64], rdx
	mov	QWORD PTR [rbx+48], rax
	mov	rbx, QWORD PTR [rsp+8]
	add	rsp, 56
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	mov	rsi, QWORD PTR [rdi+40]
	mov	rax, rbp
	sub	rax, rsi
	sar	rax, 3
	lea	r14, [rax+2]
	lea	r13, [rax+1]
	lea	rax, [r14+r14]
	cmp	rdx, rax
	ja	.L77
	test	rdx, rdx
	je	.L62
	lea	rbp, [rdx+2+rdx]
	movabs	rax, 2305843009213693951
	cmp	rbp, rax
	ja	.L78
.L59:
	lea	rdi, [0+rbp*8]
	call	_Znwm
	mov	rdx, rbp
	mov	rsi, QWORD PTR [rbx+40]
	sub	rdx, r14
	mov	r15, rax
	shr	rdx
	lea	r14, [rax+rdx*8]
	mov	rdx, QWORD PTR [rbx+72]
	add	rdx, 8
	sub	rdx, rsi
	sar	rdx, 3
	test	rdx, rdx
	je	.L60
	sal	rdx, 3
	mov	rdi, r14
	call	memmove
.L60:
	mov	rdi, QWORD PTR [rbx]
	call	_ZdlPv
	mov	QWORD PTR [rbx], r15
	mov	QWORD PTR [rbx+8], rbp
.L58:
	mov	QWORD PTR [rbx+40], r14
	lea	rbp, [r14-8+r13*8]
	mov	rax, QWORD PTR [r14]
	mov	QWORD PTR [rbx+72], rbp
	mov	QWORD PTR [rbx+24], rax
	add	rax, 512
	mov	QWORD PTR [rbx+32], rax
	mov	rax, QWORD PTR [rbp+0]
	mov	QWORD PTR [rbx+56], rax
	add	rax, 512
	mov	QWORD PTR [rbx+64], rax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L77:
	sub	rdx, r14
	add	rbp, 8
	shr	rdx
	sub	rbp, rsi
	lea	r14, [rcx+rdx*8]
	sar	rbp, 3
	cmp	rsi, r14
	jbe	.L57
	test	rbp, rbp
	je	.L58
	lea	rdx, [0+rbp*8]
	mov	rdi, r14
	call	memmove
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L62:
	mov	ebp, 3
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L57:
	test	rbp, rbp
	je	.L58
	lea	rdx, [0+rbp*8]
	lea	rdi, [r14+r13*8]
	sub	rdi, rdx
	call	memmove
	jmp	.L58
.L78:
	call	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE778:
	.size	_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh, .-_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh
	.text
	.p2align 4,,15
	.globl	_Z8th_yieldv
	.type	_Z8th_yieldv, @function
_Z8th_yieldv:
.LFB716:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	mov	rdx, QWORD PTR _ZL12threadsQueue[rip+64]
	mov	rax, QWORD PTR _ZL12threadsQueue[rip+48]
	mov	ebx, DWORD PTR _ZL9currentId[rip]
	sub	rdx, 1
	cmp	rax, rdx
	mov	BYTE PTR [rsp+15], bl
	je	.L80
	test	rax, rax
	je	.L83
	mov	BYTE PTR [rax], bl
	mov	rax, QWORD PTR _ZL12threadsQueue[rip+48]
.L81:
	add	rax, 1
	mov	QWORD PTR _ZL12threadsQueue[rip+48], rax
.L82:
	movsx	rdi, ebx
	mov	esi, OFFSET FLAT:_ZL7mainRsp
	mov	DWORD PTR _ZL9currentId[rip], -1
	imul	rdi, rdi, 66352
	add	rdi, OFFSET FLAT:_ZL7threads
	call	sleepThreadResumeThread
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L80:
	lea	rsi, [rsp+15]
	mov	edi, OFFSET FLAT:_ZL12threadsQueue
	call	_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh
	jmp	.L82
	.cfi_endproc
.LFE716:
	.size	_Z8th_yieldv, .-_Z8th_yieldv
	.p2align 4,,15
	.globl	_Z9th_createPFvmmEmm
	.type	_Z9th_createPFvmmEmm, @function
_Z9th_createPFvmmEmm:
.LFB713:
	.cfi_startproc
	mov	eax, OFFSET FLAT:_ZL7threads+8
	xor	ecx, ecx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L86:
	add	rcx, 1
	add	rax, 66352
	cmp	rcx, 256
	je	.L97
.L89:
	cmp	DWORD PTR [rax], -1
	jne	.L86
	movsx	r8, ecx
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	eax, ecx
	imul	r8, r8, 66352
	mov	BYTE PTR [rsp+31], cl
	mov	QWORD PTR _ZL7threads[r8+66288], rsi
	mov	rsi, QWORD PTR _ZL12threadsQueue[rip+64]
	mov	QWORD PTR _ZL7threads[r8+66280], rdx
	lea	rdx, _ZL7threads[r8+66280]
	mov	QWORD PTR _ZL7threads[r8], rdx
	mov	rdx, QWORD PTR _ZL12threadsQueue[rip+48]
	mov	DWORD PTR _ZL7threads[r8+8], ecx
	sub	rsi, 1
	mov	QWORD PTR _ZL7threads[r8+66344], rdi
	cmp	rdx, rsi
	je	.L98
	test	rdx, rdx
	je	.L93
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR _ZL12threadsQueue[rip+48]
.L91:
	add	rdx, 1
	mov	QWORD PTR _ZL12threadsQueue[rip+48], rdx
.L90:
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	mov	eax, -1
	ret
.L93:
	.cfi_def_cfa_offset 48
	xor	edx, edx
	jmp	.L91
.L98:
	lea	rsi, [rsp+31]
	mov	edi, OFFSET FLAT:_ZL12threadsQueue
	mov	DWORD PTR [rsp+8], ecx
	call	_ZNSt5dequeIhSaIhEE16_M_push_back_auxERKh
	mov	eax, DWORD PTR [rsp+8]
	jmp	.L90
	.cfi_endproc
.LFE713:
	.size	_Z9th_createPFvmmEmm, .-_Z9th_createPFvmmEmm
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z9th_createPFvmmEmm, @function
_GLOBAL__sub_I__Z9th_createPFvmmEmm:
.LFB878:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA878
	mov	eax, OFFSET FLAT:_ZL7threads
	mov	edx, OFFSET FLAT:_ZL7threads+16986112
	.p2align 4,,10
	.p2align 3
.L100:
	mov	DWORD PTR [rax+8], -1
	add	rax, 66352
	cmp	rax, rdx
	jne	.L100
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	esi, esi
	sub	rsp, 80
	.cfi_def_cfa_offset 96
	mov	rdi, rsp
	mov	QWORD PTR [rsp], 0
	mov	QWORD PTR [rsp+8], 0
	mov	QWORD PTR [rsp+16], 0
	mov	QWORD PTR [rsp+24], 0
	mov	QWORD PTR [rsp+32], 0
	mov	QWORD PTR [rsp+40], 0
	mov	QWORD PTR [rsp+48], 0
	mov	QWORD PTR [rsp+56], 0
	mov	QWORD PTR [rsp+64], 0
	mov	QWORD PTR [rsp+72], 0
.LEHB5:
	call	_ZNSt11_Deque_baseIhSaIhEE17_M_initialize_mapEm
.LEHE5:
	mov	rsi, rsp
	mov	edi, OFFSET FLAT:_ZL12threadsQueue
.LEHB6:
	call	_ZNSt5dequeIhSaIhEEC1ERKS1_
.LEHE6:
	mov	rdi, rsp
	call	_ZNSt11_Deque_baseIhSaIhEED2Ev
	mov	edx, OFFSET FLAT:__dso_handle
	mov	esi, OFFSET FLAT:_ZL12threadsQueue
	mov	edi, OFFSET FLAT:_ZNSt5queueIhSt5dequeIhSaIhEEED1Ev
	call	__cxa_atexit
	add	rsp, 80
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
.L102:
	.cfi_restore_state
	mov	rbx, rax
	mov	rdi, rsp
	call	_ZNSt11_Deque_baseIhSaIhEED2Ev
	mov	rdi, rbx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
	.cfi_endproc
.LFE878:
	.section	.gcc_except_table
.LLSDA878:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE878-.LLSDACSB878
.LLSDACSB878:
	.uleb128 .LEHB5-.LFB878
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB878
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L102-.LFB878
	.uleb128 0
	.uleb128 .LEHB7-.LFB878
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE878:
	.section	.text.startup
	.size	_GLOBAL__sub_I__Z9th_createPFvmmEmm, .-_GLOBAL__sub_I__Z9th_createPFvmmEmm
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9th_createPFvmmEmm
	.local	_ZL7threads
	.comm	_ZL7threads,16986112,32
	.local	_ZL12threadsQueue
	.comm	_ZL12threadsQueue,80,32
	.data
	.align 4
	.type	_ZL9currentId, @object
	.size	_ZL9currentId, 4
_ZL9currentId:
	.long	-1
	.local	_ZL7mainRsp
	.comm	_ZL7mainRsp,8,8
	.hidden	__dso_handle
	.ident	"GCC: (Gentoo 4.7.2-r1 p1.5, pie-0.5.5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
