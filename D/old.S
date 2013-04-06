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
sal     r13, 3  ; D.10830,
mov     rdi, r13        ;, D.10830
call    malloc  ;
mov     rdx, rbx        ;, l
mov     QWORD PTR [rbp+0], rax  ; this_13(D)->begin, D.10831
add     r13, rax        ; D.10839, D.10831
mov     r14, rax        ; D.10831,
movsx   rax, ebx        ; D.11135, l
mov     QWORD PTR [rbp+8], r13  ; this_13(D)->end, D.10839
sub     rdx, rax        ;, D.11135
lea     rax, [r12-16+rax]       ;,
xor     ebp, ebp        ; ivtmp.94
mov     QWORD PTR [rsp], rdx    ; %sfp,
mov     QWORD PTR [rsp+8], rax  ; %sfp,
jmp     .L18    ;
.L19:
mov     rax, QWORD PTR [rsp]    ; tmp181, %sfp
mov     rdi, QWORD PTR [rsp+8]  ; tmp185, %sfp
mov     esi, 16 ;,
add     rax, rbp        ; tmp181, ivtmp.94
sub     rdi, rbp        ; tmp185, ivtmp.94
add     rbp, 16 ; ivtmp.94,
shr     rax, 4  ; tmp181,
lea     r15, [r14+rax*8]        ; D.10849,
call    _ZL19parseBigendianQwordPKci    ;
mov     QWORD PTR [r15], rax    ; *D.10849_29, D.10853
.L18:
mov     esi, ebx        ; i,
sub     esi, ebp        ; i, ivtmp.94
cmp     esi, 15 ; i,
jg      .L19    ;,
test    esi, esi        ; i
jle     .L17    ;,
movsx   rax, esi        ; i, i
lea     rdi, [r12-16+rax]       ; tmp188,
call    _ZL19parseBigendianQwordPKci    ;
mov     QWORD PTR [r13-8], rax  ; MEM[(long unsigned int *)D.10839_21 + -8B], D.10858
.L17:
add     rsp, 24 ;,
pop     rbx     ;
pop     rbp     ;
pop     r12     ;
pop     r13     ;
pop     r14     ;
pop     r15     ;
ret