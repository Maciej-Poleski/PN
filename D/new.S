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
sub     rsp, 40 ;,
repnz scasb
not     rcx     ; tmp169
lea     rbx, [rcx-1]    ; l,
test    bl, 15  ; l,
mov     rax, rbx        ; tmp176, l
setne   r13b    ;, tmp174
shr     rax, 4  ; tmp176,
xor     r14d, r14d      ; ivtmp.213
add     r13, rax        ; tmp177, tmp176
sal     r13, 3  ; D.10830,
mov     rdi, r13        ;, D.10830
call    malloc  ;
mov     rdx, rbx        ;, l
add     r13, rax        ; D.10839, D.10831
mov     r15, rax        ; D.10831,
mov     QWORD PTR [rbp+0], rax  ; this_13(D)->begin, D.10831
movsx   rax, ebx        ; D.11321, l
mov     QWORD PTR [rbp+8], r13  ; this_13(D)->end, D.10839
sub     rdx, rax        ;, D.11321
lea     rax, [r12-16+rax]       ;,
mov     QWORD PTR [rsp+16], rdx ; %sfp,
mov     QWORD PTR [rsp+24], rax ; %sfp,
jmp     .L70    ;
.L71:
mov     rax, QWORD PTR [rsp+16] ; tmp181, %sfp
mov     rdi, QWORD PTR [rsp+24] ; tmp185, %sfp
mov     esi, 16 ;,
add     rax, r14        ; tmp181, ivtmp.213
sub     rdi, r14        ; tmp185, ivtmp.213
add     r14, 16 ; ivtmp.213,
shr     rax, 4  ; tmp181,
lea     r8, [r15+rax*8] ; D.10849,
mov     QWORD PTR [rsp+8], r8   ;,
call    _ZL19parseBigendianQwordPKci    ;
mov     r8, QWORD PTR [rsp+8]   ;,
mov     QWORD PTR [r8], rax     ; *D.10849_29, D.10853
.L70:
mov     esi, ebx        ; i,
sub     esi, r14d       ; i, ivtmp.213
cmp     esi, 15 ; i,
jg      .L71    ;,
test    esi, esi        ; i
jle     .L72    ;,
movsx   rax, esi        ; i, i
lea     rdi, [r12-16+rax]       ; tmp188,
call    _ZL19parseBigendianQwordPKci    ;
mov     QWORD PTR [r13-8], rax  ; MEM[(long unsigned int *)D.10839_21 + -8B], D.10858
.L72:
add     rsp, 40 ;,
mov     rdi, rbp        ;, this
pop     rbx     ;
pop     rbp     ;
pop     r12     ;
pop     r13     ;
pop     r14     ;
pop     r15     ;
jmp     _ZN7Natural6shrinkEv    ;