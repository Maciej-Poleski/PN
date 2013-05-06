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
        or      r9, -1
.for1:
        mov     eax, DWORD [rsi+12]
        lea     rbp, [r9+1]
        cmp     rbp, rax
        jge     .return

        lea     rax, [r9+r9*2]
        mov     QWORD [rsp-40], rax
        xor     eax, eax        ; x
.for2:
        mov     ebx, DWORD [rsi+8]
        cmp     rax, rbx
        jge     .for2_end

        mov     r13, QWORD [rsp-40]
        lea     rcx, [rbx+rbx*2]
        mov     r11, r9
        mov     QWORD [rsp-32], rcx
        xor     r12d, r12d
        xor     r10d, r10d
        xorps   xmm0, xmm0      ; output
        imul    r13, rbx
.step1: ; prepare matrix
        lea     rcx, [r12+r13]
        mov     r14, r11
        shr     r14, 63 ; bit znaku
        mov     QWORD [rsp-24], rcx
        or      rcx, -1 ; b = -1
        mov     QWORD [rsp-16], r14
        lea     r14, [rdx+r10]
.step2: ; prepare next vector (RGB)
        mov     r8, rcx
        xorps   xmm2, xmm2      ; vector
        add     r8, rax
        js      .step3

        cmp     BYTE [rsp-16], 0
        jne     .step3

        cmp     r8, rbx
        jge     .step3

        mov     r15d, DWORD [rsi+12]
        cmp     r11, r15
        jge     .step3

        lea     r8, [r8+r8*2]
        add     r8, QWORD [rsp-24]
        add     r8, QWORD [rsi]
        movzx   r15d, BYTE [r8]
        cvtsi2ss        xmm2, r15d
        movzx   r15d, BYTE [r8+1]
        movzx   r8d, BYTE [r8+2]
        cvtsi2ss        xmm3, r15d
        cvtsi2ss        xmm1, r8d
        unpcklps        xmm2, xmm3
        insertps        xmm1, DWORD [zero], 0x10
        movlhps xmm2, xmm1
.step3:
        inc     rcx     ; ++b
        movss   xmm1, DWORD [r14+rcx*4]     ; get value from matrix
        cmp     rcx, 2
        shufps  xmm1, xmm1, 0   ; make vector
        mulps   xmm1, xmm2      ; mul
        addps   xmm0, xmm1      ; add to output
        jne     .step2

        add     r10, 12
        add     r12, QWORD [rsp-32]
        inc     r11
        cmp     r10, 36
        jne     .step1

        ; prepare output
        mov     ecx, DWORD [rdi+8]
        cvtps2dq        xmm0, xmm0      ; float -> int
        packssdw        xmm0, xmm0      ; int -> short
        packuswb        xmm0, xmm0      ; short -> unsigned char
        imul    rcx, rbp
        add     rcx, rax
        inc     rax                     ; ++x
        lea     rcx, [rcx+rcx*2]        ; ptr
        add     rcx, QWORD [rdi]
        pextrb  BYTE [rcx], xmm0, 0
        pextrb  BYTE [rcx+1], xmm0, 1
        pextrb  BYTE [rcx+2], xmm0, 2
        jmp     .for2
.for2_end:
        mov     r9, rbp
        jmp     .for1
.return:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret

section .text align=16
    zero: dd 0
