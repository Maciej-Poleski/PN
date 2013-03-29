
section .text

extern malloc
extern free
extern memcmp
extern __printf_chk
extern putchar
extern realloc

; RDI nie musi wskazywać na istniejącą lokalizacje!!!!! (skanujemy od tyłu)
_ZL19parseBigendianQwordPKci:
        xor     edx, edx        ; i
        xor     eax, eax        ; result
        jmp     .check
.for:
        mov     rcx, rdx        
        neg     rcx     ; rcx=-i (U2 !!!!!!!!!!!!)
        movsx   r8d, BYTE [rdi+15+rcx]      ; char=n[15-i]
        cmp     r8b, 57 ; char, '9'
        jg      .char
        sub     r8d, 48 ; char=char-'0'
        jmp     .append_to_result
.char:
        sub     r8d, 87 ; char=char-'a'+10
        ; now we have correct nibble numeric value
        
.append_to_result:
        lea     ecx, [rdx*4]  ; ecx=i*4
        movsx   r8, r8d
        inc     rdx     ; ++i
        sal     r8, cl  ; char<<=i*4
        or      rax, r8 ; znak doklejony do wyniku
.check:
        cmp     esi, edx        ; length, i
        jg      .for
        ret

align 2
global	_ZN7Natural5shiftEm

_ZN7Natural5shiftEm:
        push    r14     ;
        mov     r14, rsi        ; i, i
        push    r13     ;
        push    r12     ;
        push    rbp     ;
        mov     rbp, rdi        ; this, this
        push    rbx     ;
        mov     r12, QWORD [rdi]    ; oldBegin, this_3(D)->begin
        mov     rbx, QWORD [rdi+8]  ; tmp92, this_3(D)->end
        sub     rbx, r12        ; tmp92, oldBegin
        sar     rbx, 3  ; tmp92,
        lea     r13, [rbx+rsi]  ; tmp93,
        sal     r13, 3  ; D.4776,
        mov     rdi, r13        ;, D.4776
        call    malloc  ;
        add     r13, rax        ; tmp95, D.4777
        mov     QWORD [rbp+0], rax  ; this_3(D)->begin, D.4777
        xor     edx, edx        ; ii
        mov     QWORD [rbp+8], r13  ; this_3(D)->end, tmp95
        jmp     .L8     ;
.L9:
        mov     QWORD [rax+rdx*8], 0        ; MEM[base: D.4777_16, index: ii_1, step: 8, offset: 0B],
        inc     rdx     ; ii
.L8:
        cmp     rdx, r14        ; ii, i
        jne     .L9     ;,
        lea     rdx, [rax+rdx*8]        ; D.4960,
        xor     eax, eax        ; ii
        jmp     .L10    ;
.L11:
        mov     rcx, QWORD [r12+rax*8]      ; D.4798, MEM[base: oldBegin_4, index: ii_2, step: 8, offset: 0B]
        mov     QWORD [rdx+rax*8], rcx      ; MEM[base: D.4960_48, index: ii_2, step: 8, offset: 0B], D.4798
        inc     rax     ; ii
.L10:
        cmp     rax, rbx        ; ii, tmp92
        jne     .L11    ;,
        pop     rbx     ;
        pop     rbp     ;
        mov     rdi, r12        ;, oldBegin
        pop     r12     ;
        pop     r13     ;
        pop     r14     ;
        jmp     free    ;

align 2
global	_ZN7NaturalC2Ev

_ZN7NaturalC2Ev:
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        mov     edi, 8  ;,
        call    malloc  ;
        lea     rdx, [rax+8]    ; tmp63,
        mov     QWORD [rbx], rax    ; this_2(D)->begin, tmp62
        mov     QWORD [rbx+8], rdx  ; this_2(D)->end, tmp63
        mov     QWORD [rax], 0      ; MEM[(long unsigned int *)D.4766_1],
        pop     rbx     ;
        ret

global	_ZN7NaturalC1Ev
_ZN7NaturalC1Ev	equ	_ZN7NaturalC2Ev
align 2
global	_ZN7NaturalC2Em

_ZN7NaturalC2Em:
        push    rbp     ;
        mov     rbp, rsi        ; n, n
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        mov     edi, 8  ;,
        push    rax     ;
        call    malloc  ;
        lea     rdx, [rax+8]    ; tmp64,
        mov     QWORD [rbx], rax    ; this_2(D)->begin, tmp63
        mov     QWORD [rbx+8], rdx  ; this_2(D)->end, tmp64
        mov     QWORD [rax], rbp    ; MEM[(long unsigned int *)D.4763_1], n
        pop     rdx     ;
        pop     rbx     ;
        pop     rbp     ;
        ret

global	_ZN7NaturalC1Em
_ZN7NaturalC1Em	equ	_ZN7NaturalC2Em
align 2
global	_ZN7NaturalC2EPKc

_ZN7NaturalC2EPKc:
        push    r15     ;
        xor     eax, eax        ; tmp172
        or      rcx, -1 ; tmp171,
        push    r14     ;
        push    r13     ;
        xor     r13d, r13d      ; tmp174
        push    r12     ;
        mov     r12, rsi        ; n, n
        push    rbp     ;
        mov     rbp, rdi        ; this, this
        mov     rdi, rsi        ; n, n
        push    rbx     ;
        sub     rsp, 24 ;,
        repnz scasb
        not     rcx     ; tmp169
        lea     rbx, [rcx-1]    ; l,
        test    bl, 15  ; l,
        mov     rax, rbx        ; tmp176, l
        setne   r13b    ;, tmp174
        shr     rax, 4  ; tmp176,
        add     r13, rax        ; tmp177, tmp176
        sal     r13, 3  ; D.4712,
        mov     rdi, r13        ;, D.4712
        call    malloc  ;
        mov     rdx, rbx        ;, l
        mov     QWORD [rbp+0], rax  ; this_13(D)->begin, D.4713
        add     r13, rax        ; D.4721, D.4713
        mov     r14, rax        ; D.4713,
        movsx   rax, ebx        ; D.5015, l
        mov     QWORD [rbp+8], r13  ; this_13(D)->end, D.4721
        sub     rdx, rax        ;, D.5015
        lea     rax, [r12-16+rax]       ;,
        xor     ebp, ebp        ; ivtmp.92
        mov     QWORD [rsp], rdx    ; %sfp,
        mov     QWORD [rsp+8], rax  ; %sfp,
        jmp     .L18    ;
.L19:
        mov     rax, QWORD [rsp]    ; tmp181, %sfp
        mov     rdi, QWORD [rsp+8]  ; tmp185, %sfp
        mov     esi, 16 ;,
        add     rax, rbp        ; tmp181, ivtmp.92
        sub     rdi, rbp        ; tmp185, ivtmp.92
        add     rbp, 16 ; ivtmp.92,
        shr     rax, 4  ; tmp181,
        lea     r15, [r14+rax*8]        ; D.4731,
        call    _ZL19parseBigendianQwordPKci    ;
        mov     QWORD [r15], rax    ; *D.4731_29, D.4735
.L18:
        mov     esi, ebx        ; i,
        sub     esi, ebp        ; i, ivtmp.92
        cmp     esi, 15 ; i,
        jg      .L19    ;,
        test    esi, esi        ; i
        jle     .L17    ;,
        movsx   rax, esi        ; i, i
        lea     rdi, [r12-16+rax]       ; tmp188,
        call    _ZL19parseBigendianQwordPKci    ;
        mov     QWORD [r13-8], rax  ; MEM[(long unsigned int *)D.4721_21 + -8B], D.4740
.L17:
        add     rsp, 24 ;,
        pop     rbx     ;
        pop     rbp     ;
        pop     r12     ;
        pop     r13     ;
        pop     r14     ;
        pop     r15     ;
        ret

global	_ZN7NaturalC1EPKc
_ZN7NaturalC1EPKc	equ	_ZN7NaturalC2EPKc
align 2
global	_ZN7NaturalC2ERKS_

_ZN7NaturalC2ERKS_:
        push    r12     ;
        mov     r12, rdi        ; this, this
        push    rbp     ;
        mov     rbp, rsi        ; n, n
        push    rbx     ;
        mov     rbx, QWORD [rsi+8]  ; D.4701, n_1(D)->end
        sub     rbx, QWORD [rsi]    ; D.4701, n_1(D)->begin
        and     rbx, -8 ; D.4701,
        mov     rdi, rbx        ;, D.4701
        call    malloc  ;
        lea     rdx, [rax+rbx]  ; tmp78,
        mov     QWORD [r12], rax    ; this_11(D)->begin, tmp77
        mov     rcx, rbx        ; D.4701, D.4701
        mov     rsi, QWORD [rbp+0]  ; n_1(D)->begin, n_1(D)->begin
        mov     rdi, rax        ; D.4702, tmp77
        mov     QWORD [r12+8], rdx  ; this_11(D)->end, tmp78
        rep movsb
        pop     rbx     ;
        pop     rbp     ;
        pop     r12     ;
        ret

global	_ZN7NaturalC1ERKS_
_ZN7NaturalC1ERKS_	equ	_ZN7NaturalC2ERKS_
align 2
global	_ZN7NaturalaSERKS_

_ZN7NaturalaSERKS_:
        push    r12     ;
        mov     r12, rsi        ; n, n
        push    rbp     ;
        mov     rbp, rdi        ; this, this
        push    rbx     ;
        mov     rdi, QWORD [rdi]    ;, this_1(D)->begin
        call    free    ;
        mov     rbx, QWORD [r12+8]  ; D.4528, n_3(D)->end
        sub     rbx, QWORD [r12]    ; D.4528, n_3(D)->begin
        and     rbx, -8 ; D.4528,
        mov     rdi, rbx        ;, D.4528
        call    malloc  ;
        lea     rdx, [rax+rbx]  ; tmp80,
        mov     QWORD [rbp+0], rax  ; this_1(D)->begin, tmp79
        mov     rdi, rax        ; D.4529, tmp79
        mov     rsi, QWORD [r12]    ; n_3(D)->begin, n_3(D)->begin
        mov     rcx, rbx        ; D.4528, D.4528
        mov     rax, rbp        ;, this
        mov     QWORD [rbp+8], rdx  ; this_1(D)->end, tmp80
        rep movsb
        pop     rbx     ;
        pop     rbp     ;
        pop     r12     ;
        ret

align 2
global	_ZNK7NaturaleqERKS_

_ZNK7NaturaleqERKS_:
        mov     r8, QWORD [rdi]     ; D.4504, this_2(D)->begin
        mov     rdx, QWORD [rdi+8]  ; tmp81, this_2(D)->end
        xor     eax, eax        ; D.4517
        mov     rdi, QWORD [rsi]    ; D.4510, n_10(D)->begin
        mov     rcx, QWORD [rsi+8]  ; tmp85, n_10(D)->end
        sub     rdx, r8 ; tmp81, D.4504
        sub     rcx, rdi        ; tmp85, D.4510
        sar     rdx, 3  ; tmp81,
        sar     rcx, 3  ; tmp85,
        cmp     rdx, rcx        ; tmp81, tmp85
        jne     .L31    ;,
        push    rcx     ;
        mov     rsi, rdi        ;, D.4510
        sal     rdx, 3  ; tmp86,
        mov     rdi, r8 ;, D.4504
        call    memcmp  ;
        pop     rsi     ;
        test    eax, eax        ; tmp87
        sete    al      ;, D.4517
.L31:
        ret

align 2
global	_ZNK7NaturalneERKS_

_ZNK7NaturalneERKS_:
        push    r8      ;
        call    _ZNK7NaturaleqERKS_     ;
        pop     r9      ;
        xor     eax, 1  ; tmp64,
        ret

section .data
_LC0: db	"%lx", 0
_LC1: db	"%.16lx", 0
section .text
align 2
global	_ZNK7Natural5PrintEv

_ZNK7Natural5PrintEv:
        push    rbp     ;
        mov     rbp, rdi        ; this, this
        mov     esi, _LC0   ;,
        push    rbx     ;
        push    r11     ;
        mov     rax, QWORD [rdi+8]  ; this_2(D)->end, this_2(D)->end
        mov     edi, 1  ;,
        mov     rdx, QWORD [rax-8]  ; MEM[(long unsigned int *)D.4478_3 + -8B], MEM[(long unsigned int *)D.4478_3 + -8B]
        xor     eax, eax        ;
        call    __printf_chk    ;
        mov     rbx, QWORD [rbp+8]  ; i, this_2(D)->end
        sub     rbx, 16 ; i,
        jmp     .L35    ;
.L36:
        mov     rdx, QWORD [rbx]    ;, MEM[base: i_1, offset: 0B]
        mov     esi, _LC1   ;,
        mov     edi, 1  ;,
        xor     eax, eax        ;
        sub     rbx, 8  ; i,
        call    __printf_chk    ;
.L35:
        cmp     rbx, QWORD [rbp+0]  ; i, this_2(D)->begin
        jae     .L36    ;,
        pop     r10     ;
        pop     rbx     ;
        pop     rbp     ;
        mov     edi, 10 ;,
        jmp     putchar ;

align 2
global	_ZNK7Natural4SizeEv

_ZNK7Natural4SizeEv:
        mov     rcx, QWORD [rdi]    ; D.4450, this_2(D)->begin
        mov     rax, QWORD [rdi+8]  ; tmp108, this_2(D)->end
        sub     rax, rcx        ; tmp108, D.4450
        sar     rax, 3  ; tmp108,
        dec     eax     ; D.4455
        movsx   rdx, eax        ; D.4455, D.4455
        lea     rdi, [rcx+rdx*8]        ; D.5107,
        xor     edx, edx        ; ivtmp.138
        jmp     .L39    ;
.L41:
        inc     rdx     ; ivtmp.138
        imul    r8, rdx, -8     ; tmp111, ivtmp.138,
        cmp     QWORD [rdi+8+r8], 0 ; MEM[base: D.5107_61, index: D.5108_62, offset: 8B],
        je      .L39    ;,
.L42:
        mov     edi, esi        ; tmp112, selectedQword
        movsx   rsi, esi        ; selectedQword, selectedQword
        xor     eax, eax        ; result
        sal     edi, 6  ; tmp112,
        mov     rdx, QWORD [rcx+rsi*8]      ; n, *D.4463_24
        movsx   rdi, edi        ; D.4469, tmp112
        jmp     .L40    ;
.L39:
        mov     esi, eax        ; selectedQword, D.4455
        sub     esi, edx        ; selectedQword, ivtmp.138
        test    esi, esi        ; selectedQword
        jg      .L41    ;,
        jmp     .L42    ;
.L43:
        shr     rdx,1     ; n
        inc     rax     ; result
.L40:
        test    rdx, rdx        ; n
        jne     .L43    ;,
        add     rax, rdi        ; tmp114, D.4469
        ret

align 2
global	_ZNK7NaturalcvbEv

_ZNK7NaturalcvbEv:
        call    _ZNK7Natural4SizeEv     ;
        test    rax, rax        ; D.4492
        setne   al      ;, tmp64
        ret

align 2
global	_ZNK7NaturalltERKS_

_ZNK7NaturalltERKS_:
        push    r12     ;
        push    rbp     ;
        mov     rbp, rsi        ; n, n
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        call    _ZNK7Natural4SizeEv     ;
        mov     rdi, rbp        ;, n
        mov     r12, rax        ; D.4549,
        call    _ZNK7Natural4SizeEv     ;
        cmp     r12, rax        ; D.4549, D.4550
        mov     dl, 1   ; D.5116,
        jb      .L47    ;,
        mov     dl, 0   ; D.5116,
        ja      .L47    ;,
        mov     rsi, QWORD [rbx]    ; D.5122, this_3(D)->begin
        mov     rax, QWORD [rbx+8]  ; tmp91, this_3(D)->end
        xor     ecx, ecx        ; ivtmp.158
        sub     rax, rsi        ; tmp91, D.5122
        sar     rax, 3  ; tmp91,
        dec     eax     ; D.5127
        movsx   rdx, eax        ; D.5127, D.5127
        sal     rdx, 3  ; ivtmp.172,
        jmp     .L48    ;
.L50:
        mov     rdi, QWORD [rbp+0]  ; n_5(D)->begin, n_5(D)->begin
        mov     r8, QWORD [rsi+rdx] ; D.5131, MEM[base: D.5122_39, index: ivtmp.172_60, offset: 0B]
        inc     rcx     ; ivtmp.158
        mov     rdi, QWORD [rdi+rdx]        ; D.5134, *D.5133_52
        sub     rdx, 8  ; ivtmp.172,
        cmp     r8, rdi ; D.5131, D.5134
        jb      .L53    ;,
.L48:
        cmp     eax, ecx        ; D.5127, ivtmp.158
        jns     .L50    ;,
        xor     edx, edx        ; D.5116
        jmp     .L47    ;
.L53:
        mov     dl, 1   ; D.5116,
.L47:
        pop     rbx     ;
        pop     rbp     ;
        mov     al, dl  ;, D.5116
        pop     r12     ;
        ret

align 2
global	_ZNK7NaturalgeERKS_

_ZNK7NaturalgeERKS_:
        call    _ZNK7NaturalltERKS_     ;
        xor     eax, 1  ; tmp64,
        ret

align 2
global	_ZNK7NaturalleERKS_

_ZNK7NaturalleERKS_:
        push    rbp     ;
        mov     rbp, rsi        ; n, n
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        push    rax     ;
        call    _ZNK7NaturalltERKS_     ;
        test    al, al  ; D.4543
        jne     .L57    ;,
        mov     rsi, rbp        ;, n
        mov     rdi, rbx        ;, this
        pop     rbp     ;
        pop     rbx     ;
        pop     rbp     ;
        jmp     _ZNK7NaturaleqERKS_     ;
.L57:
        pop     rbx     ;
        pop     rbx     ;
        mov     al, 1   ;,
        pop     rbp     ;
        ret

align 2
global	_ZNK7NaturalgtERKS_

_ZNK7NaturalgtERKS_:
        push    rax     ;
        call    _ZNK7NaturalleERKS_     ;
        pop     rdx     ;
        xor     eax, 1  ; tmp64,
        ret

align 2
global	_ZN7Natural6resizeEm

_ZN7Natural6resizeEm:
        push    rbp     ;
        lea     rbp, [0+rsi*8]  ; D.4444,
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        mov     rsi, rbp        ;, D.4444
        push    rcx     ;
        mov     rdi, QWORD [rdi]    ;, this_3(D)->begin
        call    realloc ;
        add     rbp, rax        ; tmp65, D.4446
        mov     QWORD [rbx], rax    ; this_3(D)->begin, D.4446
        mov     QWORD [rbx+8], rbp  ; this_3(D)->end, tmp65
        pop     rsi     ;
        pop     rbx     ;
        pop     rbp     ;
        ret

align 2
global	_ZN7Natural6shrinkEv

_ZN7Natural6shrinkEv:
        mov     rdx, QWORD [rdi]    ; D.4438, this_2(D)->begin
        add     rdx, 8  ; D.4438,
.L66:
        mov     rax, QWORD [rdi+8]  ; D.4439, this_2(D)->end
        cmp     rdx, rax        ; D.4438, D.4439
        jae     .L63    ;,
        cmp     QWORD [rax-8], 0    ; MEM[(long unsigned int *)D.4439_5 + -8B],
        jne     .L63    ;,
        sub     rax, 8  ; tmp66,
        mov     QWORD [rdi+8], rax  ; this_2(D)->end, tmp66
        jmp     .L66    ;
.L63:
        ret

align 2
global	_ZNK7NaturalplERKS_

_ZNK7NaturalplERKS_:
        push    r15     ;
        push    r14     ;
        push    r13     ;
        push    r12     ;
        mov     r12, rdx        ; n, n
        push    rbp     ;
        push    rbx     ;
        mov     rbx, rdi        ; <retval>, .result_ptr
        sub     rsp, 72 ;,
        mov     QWORD [rsp], rsi    ;, tmp37
        call    _ZN7NaturalC1Ev ;
        mov     r8, QWORD [rsp]     ;,
        mov     rbp, QWORD [r12+8]  ; tmp120, n_16(D)->end
        sub     rbp, QWORD [r12]    ; tmp120, n_16(D)->begin
        mov     rdi, QWORD [rbx]    ;, <retval>_7(D)->begin
        mov     r15, QWORD [r8+8]   ; tmp116, this_8(D)->end
        sub     r15, QWORD [r8]     ; tmp116, this_8(D)->begin
        sar     rbp, 3  ; tmp120,
        sar     r15, 3  ; tmp116,
        cmp     rbp, r15        ; tmp120, tmp116
        mov     rax, r15        ; tmp121, tmp116
        cmovae  rax, rbp        ; tmp120,, tmp121
        lea     rdx, [8+rax*8]  ; D.4612,
        mov     rsi, rdx        ;, D.4612
        mov     QWORD [rsp+8], rdx  ;,
        call    realloc ;
        mov     rdx, QWORD [rsp+8]  ;,
        mov     QWORD [rbx], rax    ; <retval>_7(D)->begin, i
        mov     rcx, rax        ; i, i
        mov     r8, QWORD [rsp]     ;,
        add     rdx, rax        ; D.4617, i
        mov     QWORD [rbx+8], rdx  ; <retval>_7(D)->end, D.4617
        jmp     .L68    ;
.L69:
        mov     QWORD [rcx], 0      ; MEM[base: i_1, offset: 0B],
        add     rcx, 8  ; i,
.L68:
        cmp     rcx, rdx        ; i, D.4617
        jb      .L69    ;,
        mov     rdi, rax        ; i, i
        lea     rcx, [0+r15*8]  ; tmp123,
        mov     rsi, QWORD [r8]     ; this_8(D)->begin, this_8(D)->begin
        xor     eax, eax        ; ivtmp.203
        xor     edx, edx        ; carry
        rep movsb
        jmp     .L70    ;
.L71:
        mov     rcx, QWORD [rbx]    ; <retval>_7(D)->begin, <retval>_7(D)->begin
        mov     QWORD [rsp+48], rdx ; %sfp, carry
        mov     QWORD [rsp+24], 0   ; %sfp,
        mov     QWORD [rsp+40], 0   ; %sfp,
        mov     rdi, QWORD [rsp+24] ; r, %sfp
        mov     QWORD [rsp+56], 0   ; %sfp,
        lea     rcx, [rcx+rax*8]        ; D.4633,
        mov     rsi, QWORD [rcx]    ;, *D.4633_49
        mov     QWORD [rsp+16], rsi ; %sfp,
        mov     rsi, QWORD [r12]    ; n_16(D)->begin, n_16(D)->begin
        mov     rsi, QWORD [rsi+rax*8]      ;, *D.4635_55
        mov     QWORD [rsp+32], rsi ; %sfp,
        mov     rsi, QWORD [rsp+16] ; r, %sfp
        add     rsi, QWORD [rsp+32] ; r, %sfp
        adc     rdi, QWORD [rsp+40] ; r, %sfp
        add     rsi, QWORD [rsp+48] ; r, %sfp
        adc     rdi, QWORD [rsp+56] ; r, %sfp
        inc     rax     ; ivtmp.203
        mov     QWORD [rcx], rsi    ; *D.4633_49, r
        mov     rdx, rdi        ; carry, r
.L70:
        cmp     rax, rbp        ; ivtmp.203, tmp120
        jne     .L71    ;,
        cdqe
        xor     ecx, ecx        ; ivtmp.199
        sal     rax, 3  ; D.5192,
        jmp     .L72    ;
.L73:
        lea     rdx, [rcx+rax]  ; D.4633,
        add     rdx, QWORD [rbx]    ; D.4633, <retval>_7(D)->begin
        xor     r14d, r14d      ; r
        mov     rdi, r14        ; r, r
        mov     r13, QWORD [rdx]    ; r, *D.4633_73
        mov     rsi, r13        ; r, r
        add     rsi, 1  ; r,
        adc     rdi, 0  ; r,
        mov     QWORD [rdx], rsi    ; *D.4633_73, r
        add     rcx, 8  ; ivtmp.199,
        mov     rdx, rdi        ; carry, r
.L72:
        test    rdx, rdx        ; carry
        jne     .L73    ;,
        mov     rdi, rbx        ;, <retval>
        call    _ZN7Natural6shrinkEv    ;
        add     rsp, 72 ;,
        mov     rax, rbx        ;, <retval>
        pop     rbx     ;
        pop     rbp     ;
        pop     r12     ;
        pop     r13     ;
        pop     r14     ;
        pop     r15     ;
        ret

align 2
global	_ZN7NaturalD2Ev

_ZN7NaturalD2Ev:
        mov     rdi, QWORD [rdi]    ;, this_1(D)->begin
        jmp     free    ;

global	_ZN7NaturalD1Ev
_ZN7NaturalD1Ev	equ	_ZN7NaturalD2Ev
align 2
global	_ZN7NaturalpLERKS_

_ZN7NaturalpLERKS_:
        push    rbx     ;
        mov     rdx, rsi        ; n, n
        mov     rbx, rdi        ; this, this
        mov     rsi, rdi        ;, this
        sub     rsp, 32 ;,
        lea     rdi, [rsp+16]   ;,
        call    _ZNK7NaturalplERKS_     ;
        lea     rsi, [rsp+16]   ;,
        mov     rdi, rbx        ;, this
        call    _ZN7NaturalaSERKS_      ;
        lea     rdi, [rsp+16]   ;,
        mov     QWORD [rsp+8], rax  ;,
        call    _ZN7NaturalD1Ev ;
        mov     rax, QWORD [rsp+8]  ;,
        add     rsp, 32 ;,
        pop     rbx     ;
        ret

align 2
global	_ZN7NaturalppEi

_ZN7NaturalppEi:
        push    rbp     ;
        mov     rbp, rsi        ; this, this
        push    rbx     ;
        mov     rbx, rdi        ; <retval>, .result_ptr
        sub     rsp, 24 ;,
        call    _ZN7NaturalC1ERKS_      ;
        mov     rdi, rsp        ;,
        mov     esi, 1  ;,
        call    _ZN7NaturalC1Em ;
        mov     rsi, rsp        ;,
        mov     rdi, rbp        ;, this
        call    _ZN7NaturalpLERKS_      ;
        mov     rdi, rsp        ;,
        call    _ZN7NaturalD1Ev ;
        add     rsp, 24 ;,
        mov     rax, rbx        ;, <retval>
        pop     rbx     ;
        pop     rbp     ;
        ret

align 2
global	_ZN7NaturalppEv

_ZN7NaturalppEv:
        push    rbx     ;
        mov     rbx, rdi        ; this, this
        mov     esi, 1  ;,
        sub     rsp, 32 ;,
        lea     rdi, [rsp+16]   ;,
        call    _ZN7NaturalC1Em ;
        lea     rsi, [rsp+16]   ;,
        mov     rdi, rbx        ;, this
        call    _ZN7NaturalpLERKS_      ;
        lea     rdi, [rsp+16]   ;,
        mov     QWORD [rsp+8], rax  ;,
        call    _ZN7NaturalD1Ev ;
        mov     rax, QWORD [rsp+8]  ;,
        add     rsp, 32 ;,
        pop     rbx     ;
        ret

align 2
global	_ZNK7NaturalmlERKS_

_ZNK7NaturalmlERKS_:
        push    r15     ;
        mov     r15, rsi        ; this, this
        push    r14     ;
        push    r13     ;
        push    r12     ;
        xor     r12d, r12d      ; ivtmp.245
        push    rbp     ;
        push    rbx     ;
        mov     rbx, rdx        ; n, n
        sub     rsp, 40 ;,
        mov     QWORD [rsp+8], rdi  ; %sfp, .result_ptr
        call    _ZN7NaturalC1Ev ;
        mov     rbp, QWORD [r15]    ; i, this_7(D)->begin
        jmp     .L83    ;
.L86:
        lea     rdi, [rsp+16]   ;,
        call    _ZN7NaturalC1Ev ;
        mov     rsi, QWORD [rbx+8]  ; tmp94, n_11(D)->end
        sub     rsi, QWORD [rbx]    ; tmp94, n_11(D)->begin
        lea     rdi, [rsp+16]   ;,
        sar     rsi, 3  ; tmp94,
        inc     rsi     ; tmp95
        call    _ZN7Natural6resizeEm    ;
        mov     rsi, QWORD [rbx]    ; j, n_11(D)->begin
        mov     rdi, QWORD [rbx+8]  ; D.4659, n_11(D)->end
        mov     rcx, QWORD [rsp+16] ; ivtmp.241, line.begin
        jmp     .L84    ;
.L85:
        mov     rax, QWORD [rsi]    ; D.4673, MEM[base: j_4, offset: 0B]
        mov     r13, QWORD [rcx]    ; MEM[base: D.5243_68, offset: 0B], MEM[base: D.5243_68, offset: 0B]
        xor     r14d, r14d      ; MEM[base: D.5243_68, offset: 0B]
        mul     QWORD [rbp+0]       ; MEM[base: i_2, offset: 0B]
        add     rax, r13        ; r, MEM[base: D.5243_68, offset: 0B]
        adc     rdx, r14        ; r, MEM[base: D.5243_68, offset: 0B]
        mov     QWORD [rcx], rax    ; MEM[base: D.5243_68, offset: 0B], r
        add     rsi, 8  ; j,
        mov     QWORD [rcx+8], rdx  ; MEM[base: D.5243_68, offset: 8B], tmp107
        add     rcx, 8  ; ivtmp.241,
.L84:
        cmp     rsi, rdi        ; j, D.4659
        jb      .L85    ;,
        lea     rdi, [rsp+16]   ;,
        mov     rsi, r12        ;, ivtmp.245
        add     rbp, 8  ; i,
        inc     r12     ; ivtmp.245
        call    _ZN7Natural5shiftEm     ;
        mov     rdi, QWORD [rsp+8]  ;, %sfp
        lea     rsi, [rsp+16]   ;,
        call    _ZN7NaturalpLERKS_      ;
        lea     rdi, [rsp+16]   ;,
        call    _ZN7NaturalD1Ev ;
.L83:
        cmp     rbp, QWORD [r15+8]  ; i, this_7(D)->end
        jb      .L86    ;,
        mov     rax, QWORD [rsp+8]  ;, %sfp
        add     rsp, 40 ;,
        pop     rbx     ;
        pop     rbp     ;
        pop     r12     ;
        pop     r13     ;
        pop     r14     ;
        pop     r15     ;
        ret

align 2
global	_ZN7NaturalmLERKS_

_ZN7NaturalmLERKS_:
        push    rbx     ;
        mov     rdx, rsi        ; n, n
        mov     rbx, rdi        ; this, this
        mov     rsi, rdi        ;, this
        sub     rsp, 32 ;,
        lea     rdi, [rsp+16]   ;,
        call    _ZNK7NaturalmlERKS_     ;
        lea     rsi, [rsp+16]   ;,
        mov     rdi, rbx        ;, this
        call    _ZN7NaturalaSERKS_      ;
        lea     rdi, [rsp+16]   ;,
        mov     QWORD [rsp+8], rax  ;,
        call    _ZN7NaturalD1Ev ;
        mov     rax, QWORD [rsp+8]  ;,
        add     rsp, 32 ;,
        pop     rbx     ;
        ret

