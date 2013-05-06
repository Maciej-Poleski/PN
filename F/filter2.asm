[bits 64]

section .text

global _Z6filterP8RGBImagePKS_PKf
global filter

filter equ _Z6filterP8RGBImagePKS_PKf

_Z6filterP8RGBImagePKS_PKf:
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        or      r8, -1
        mov     r12b, r8b
.for1:
        mov     eax, DWORD [rsi+12]
        lea     rbp, [r8+1]
        cmp     rbp, rax
        jge     .return

        lea     rax, [r8+r8*2]
        mov     QWORD [rsp-48], rax
        xor     eax, eax        ; x
.for2:
        mov     ebx, DWORD [rsi+8]
        cmp     rax, rbx
        jge     .for2_end

        lea     rcx, [rbx+rbx*2]
        mov     r11, r8
        xor     r13d, r13d
        mov     QWORD [rsp-40], rcx
        mov     rcx, QWORD [rsp-48]
        xor     r10d, r10d
        xorps   xmm0, xmm0      ; output
        imul    rcx, rbx
        mov     QWORD [rsp-56], rcx
.step1: ; prepare matrix
        mov     rcx, QWORD [rsp-56]
        mov     r14, r11
        shr     r14, 63 ; bit znaku
        mov     QWORD [rsp-24], r14
        lea     r14, [rdx+r10]
        add     rcx, r13
        mov     QWORD [rsp-32], rcx
        or      rcx, -1 ; b = -1
.step2: ; prepare next vector (RGB)
        mov     r9, rcx
        xorps   xmm2, xmm2      ; vector
        add     r9, rax
        js      .step3

        cmp     BYTE [rsp-24], 0
        jne     .step3

        cmp     r9, rbx
        jge     .step3

        mov     r15d, DWORD [rsi+12]
        cmp     r11, r15
        jge     .step3

        lea     r9, [r9+r9*2]
        add     r9, QWORD [rsp-32]
        add     r9, QWORD [rsi]
        movzx   r15d, BYTE [r9]
        cvtsi2ss        xmm3, r15d
        movzx   r15d, BYTE [r9+1]
        movzx   r9d, BYTE [r9+2]
        cvtsi2ss        xmm2, r15d
        movaps  xmm4, xmm3
        cvtsi2ss        xmm1, r9d
        unpcklps        xmm4, xmm2
        movaps  xmm2, xmm4
        movss   [rsp-12], xmm1
        movss   xmm1, [rsp-12]
        movlhps xmm2, xmm1
.step3:
        inc     rcx     ; ++b
        movss   xmm1, [r14+rcx*4]     ; get value from matrix
        cmp     rcx, 2
        shufps  xmm1, xmm1, 0   ; make vector
        mulps   xmm1, xmm2      ; mul
        addps   xmm0, xmm1      ; add to output
        jne     .step2

        add     r10, 12
        add     r13, QWORD [rsp-40]
        inc     r11
        cmp     r10, 36
        jne     .step1

        ; prepare output
        mov     ecx, DWORD [rdi+8]
        cvtps2dq        xmm0, xmm0      ; float -> int
        movd    r9d, xmm0
        imul    rcx, rbp
        add     rcx, rax
        lea     rcx, [rcx+rcx*2]
        add     rcx, QWORD [rdi]
        test    r9d, r9d
        js      .we_need_0_here1
        cmp     r9d, 255
        cmovg   r9d, r12d       ; saturation
        jmp     .store1

.we_need_0_here1:
        xor     r9d, r9d

.store1:
        mov     BYTE [rcx], r9b

        pshufd  xmm1, xmm0, 85
        movd    r9d, xmm1
        test    r9d, r9d
        js      .we_need_0_here2

        cmp     r9d, 255
        cmovg   r9d, r12d       ; saturation
        jmp     .store2

.we_need_0_here2:
        xor     r9d, r9d

.store2:
        mov     BYTE [rcx+1], r9b

        punpckhdq       xmm0, xmm0
        movd    r9d, xmm0
        test    r9d, r9d
        js      .we_need_0_here3

        cmp     r9d, 255
        cmovg   r9d, r12d       ; saturation
        jmp     .store3

.we_need_0_here3:
        xor     r9d, r9d

.store3:
        mov     BYTE [rcx+2], r9b

        inc     rax     ; ++x
        jmp     .for2

.for2_end:
        mov     r8, rbp
        jmp     .for1

.return:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret