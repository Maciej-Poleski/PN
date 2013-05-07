[bits 64]

section .text

global _Z6filterP8RGBImagePKS_PKf
global filter

filter equ _Z6filterP8RGBImagePKS_PKf

computePoint:
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx

        lea     rbp, [r8-1]
        lea     r15, [rcx-1]
        lea     rax, [r15+r15*2]
        mov     QWORD [rsp-16], rax
        mov     QWORD [rsp-24], rax
        xor     ebx, ebx
        xorps   xmm1, xmm1      ; output
        xorps   xmm5, xmm5
        jmp     .prepare_next_row

.load:
        mov     r10, rcx
        shr     r10, 63
        test    r10b, r10b
        jne     .zero

        test    r13b, r13b
        jne     .zero

        mov     r10d, DWORD [rsi+8]
        xorps   xmm0, xmm0
        cmp     rcx, r10
        jge     .compute

        mov     r11d, DWORD [rsi+12]
        cmp     r14, r11
        jge     .compute

        imul    r10, r14
        lea     r10, [r10+r10*2]
        add     r10, r9
        add     r10, QWORD [rsi]
        movzx   r11d, BYTE [r10]
        cvtsi2ss        xmm0, r11d
        movzx   r11d, BYTE [r10+1]
        cvtsi2ss        xmm4, r11d
        movzx   r10d, BYTE [r10+2]
        cvtsi2ss        xmm2, r10d
        unpcklps        xmm2, xmm5
        unpcklps        xmm0, xmm4
        movlhps xmm0, xmm2
        jmp     .compute

.zero:
        xorps  xmm0, xmm0

.compute:
        add     rax, 1  ; ++b
        movss   xmm2, [r12+rax*4]
        shufps  xmm2, xmm2, 0
        mulps   xmm0, xmm2
        addps   xmm1, xmm0
        add     rcx, 1
        add     r9, 3
        cmp     rax, 2
        jne     .load

        add     rbx, 12
        add     rbp, 1
        cmp     rbx, 36
        je      .store

.prepare_next_row:
        mov     rcx, r15
        mov     r9, QWORD [rsp-24]
        mov     rax, -1
        mov     r14, rbp
        mov     r13, rbp
        shr     r13, 63
        lea     r12, [rdx+rbx]
        jmp     .load

.store:
        cvtps2dq        xmm1, xmm1
        packssdw        xmm1, xmm1
        packuswb        xmm1, xmm1
        mov     eax, DWORD [rdi+8]
        imul    r8, rax
        lea     rax, [r8+r8*2]
        mov     rdx, QWORD [rsp-16]
        lea     rax, [rdx+3+rax]
        add     rax, QWORD [rdi]
        pextrb  BYTE [rax], xmm1, 0
        pextrb  BYTE [rax+1], xmm1, 1
        pextrb  BYTE [rax+2], xmm1, 2
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret


_Z6filterP8RGBImagePKS_PKf:
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 8

        mov     r12, rdi
        mov     rbp, rsi
        mov     rbx, rdx
        mov     eax, DWORD [rsi+12]
        sub     eax, 1
        cmp     rax, 1
        jle     .end_of_interior

        mov     r15d, 0
        mov     r14d, 1
        xorps   xmm5, xmm5
        xorps   xmm6, xmm6      ; output
        jmp     .prepare_next_row

.compute:
        add     rdx, 1  ; ++b
        movss   xmm2, [rdi+rdx*4]
        shufps  xmm2, xmm2, 0
        movzx   ecx, BYTE [rax-3]
        cvtsi2ss        xmm1, ecx
        movzx   ecx, BYTE [rax-2]
        cvtsi2ss        xmm4, ecx
        movzx   ecx, BYTE [rax-1]
        cvtsi2ss        xmm3, ecx
        unpcklps        xmm3, xmm5
        unpcklps        xmm1, xmm4
        movlhps xmm1, xmm3
        mulps   xmm1, xmm2
        addps   xmm0, xmm1
        add     rax, 3
        cmp     rdx, 2
        jne     .compute

        add     r8, r10
        add     rsi, 12
        cmp     rsi, 36
        je      .store

.prepare_next:
        mov     rax, r8
        mov     rdx, -1
        lea     rdi, [rbx+rsi]
        jmp     .compute

.store:
        cvtps2dq        xmm0, xmm0
        packssdw        xmm0, xmm0
        packuswb        xmm0, xmm0
        mov     eax, DWORD [r12+8]
        imul    rax, r14
        lea     rax, [rax+rax*2]
        add     rax, r9
        add     rax, QWORD [r12]
        pextrb  BYTE [rax], xmm0, 0
        pextrb  BYTE [rax+1], xmm0, 1
        pextrb  BYTE [rax+2], xmm0, 2
        add     r11, 1
        mov     r8d, DWORD [rbp+8]
        add     r9, 3
        lea     eax, [r8-1]
        cmp     rax, r11
        jle     .check_for2

.check_for1:
        mov     r8d, r8d
        lea     r10, [r8+r8*2]
        imul    r8, r15
        add     r8, r9
        add     r8, QWORD [rbp+0]
        mov     esi, 0
        movaps  xmm0, xmm6
        jmp     .prepare_next

.check_for2:
        add     r14, 1
        add     r15, 3
        mov     eax, DWORD [rbp+12]
        sub     eax, 1
        cmp     rax, r14
        jle     .end_of_interior

.prepare_next_row:
        mov     r8d, DWORD [rbp+8]
        lea     eax, [r8-1]
        cmp     rax, 1
        jle     .check_for2

        mov     r9d, 3
        mov     r11d, 1
        jmp     .check_for1

.end_of_interior:
        cmp     DWORD [rbp+12], 0
        je      .end_external1

        xor     r13d, r13d

.external1:
        mov     r8, r13
        xor     ecx, ecx
        mov     rdx, rbx
        mov     rsi, rbp
        mov     rdi, r12
        call    computePoint

        mov     ecx, DWORD [rbp+8]
        sub     ecx, 1
        mov     r8, r13
        mov     rdx, rbx
        mov     rsi, rbp
        mov     rdi, r12
        call    computePoint

        add     r13, 1
        mov     eax, DWORD [rbp+12]
        cmp     rax, r13
        jg      .external1

.end_external1:
        mov     eax, DWORD [rbp+8]
        sub     eax, 1
        cmp     rax, 1
        jle     .end_external2

        mov     r13d, 1
.external2:
        xor     r8d, r8d
        mov     rcx, r13
        mov     rdx, rbx
        mov     rsi, rbp
        mov     rdi, r12
        call    computePoint

        mov     r8d, DWORD [rbp+12]
        sub     r8d, 1
        mov     rcx, r13
        mov     rdx, rbx
        mov     rsi, rbp
        mov     rdi, r12
        call    computePoint

        add     r13, 1
        mov     eax, DWORD [rbp+8]
        sub     eax, 1
        cmp     rax, r13
        jg      .external2

.end_external2:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
