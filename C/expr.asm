BITS        64
SECTION     .text
GLOBAL      expr_eval:function

EXTERN      malloc
extern      powf

expr_eval_one:
    ; rdi = float * result
    ; rsi = struct expr * expr
    ; rdx = float const * vars
    sub rsp,0x18        ; 3 zmienne lokalne, stos wyrównany
    xor r8,r8           ; r8=expr->kind
    mov r8d,dword [rsi]
    cmp r8d,13
    ja .end
    call .get_address
  .get_address:         ; <- rax
    pop rax
    mov rcx,[rax+(.table-.get_address)+r8*8] ; rcx = adres względny kodu
    add rax,rcx
    jmp rax
    
    .table:
    dq .expr_const-.get_address
    dq .expr_var-.get_address
    dq .expr_plus-.get_address
    dq .expr_minus-.get_address
    dq .expr_sqrt-.get_address
    dq .expr_sin-.get_address
    dq .expr_cos-.get_address
    dq .expr_add-.get_address
    dq .expr_sub-.get_address
    dq .expr_mul-.get_address
    dq .expr_div-.get_address
    dq .expr_pow-.get_address
    dq .expr_min-.get_address
    dq .expr_max-.get_address
    
    .expr_const:
    mov eax,[rsi+8]
    mov dword [rdi],eax
    jmp .end
    
    .expr_var:
    xor rax,rax
    mov al,byte [rsi+8]
    mov eax,dword [rdx+rax*4]
    mov dword [rdi],eax
    jmp .end
    
    .expr_plus:
    push rdi
    lea rdi,[rsp+8]       ; rdi=&inner
    mov rsi,[rsi+8]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    mov eax,dword [rsp]
    mov dword [rdi],eax
    jmp .end
    
    .expr_minus:
    push rdi
    lea rdi,[rsp+8]       ; rdi=&inner
    mov rsi,[rsi+8]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp]
    fchs
    fstp dword [rdi]
    jmp .end
    
    .expr_sqrt:
    push rdi
    lea rdi,[rsp+8]       ; rdi=&inner
    mov rsi,[rsi+8]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp]
    fsqrt
    fstp dword [rdi]
    jmp .end
    
    .expr_sin:
    push rdi
    lea rdi,[rsp+8]       ; rdi=&inner
    mov rsi,[rsi+8]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp]
    fsin
    fstp dword [rdi]
    jmp .end
    
    .expr_cos:
    push rdi
    lea rdi,[rsp+8]       ; rdi=&inner
    mov rsi,[rsi+8]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp]
    fcos
    fstp dword [rdi]
    jmp .end
    
    .expr_add:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    faddp
    fstp dword[rdi]
    jmp .end
    
    .expr_sub:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    fsubp
    fstp dword[rdi]
    jmp .end
    
    .expr_mul:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    fmulp
    fstp dword[rdi]
    jmp .end
    
    .expr_div:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    fdivp
    fstp dword[rdi]
    jmp .end
    
    .expr_pow:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
;     fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
;     fld dword [rsp+16]
;     fxch st1
;     fyl2x               ; http://stackoverflow.com/questions/2882706/how-can-i-write-a-power-function-myself
;     fld st0
;     frndint
;     fsubr st1,st0
;     fxch st1
;     fchs
;     f2xm1
;     fld1
;     faddp st1,st0
;     fscale
;     fstp st1 
;     fstp dword [rdi]
    movd xmm0,dword [rsp+8]
    movd xmm1,dword [rsp+16]
    push rdi
    call powf wrt ..plt
    pop rdi
    movd dword [rdi],xmm0
    jmp .end
    
    .expr_min:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    fcomi st0, st1
    jnb .pick_now_min
    fxch st1
    .pick_now_min:
    fstp dword [rdi]
    fstp dword [rdi]
    jmp .end
    
    .expr_max:
    push rdi
    push rsi                 ; stos wyrównany
    lea rdi,[rsp+24]       ; rdi=&left
    mov rsi,[rsi+8]
    call expr_eval_one
    pop rsi
    pop rdi
    fld dword [rsp+8]
    push rdi
    lea rdi,[rsp+24]       ; rdi=&right
    mov rsi,[rsi+16]
    sub rsp,8              ; wyrównanie
    call expr_eval_one
    add rsp,8
    pop rdi
    fld dword [rsp+16]
    fcomi st0, st1
    jna .pick_now_max
    fxch st1
    .pick_now_max:
    fstp dword [rdi]
    fstp dword [rdi]
    
    .end:
    add rsp,0x18
    ret

expr_eval:
    ; rdi -- struct expr * expr
    ; rsi -- rows
    ; rdx -- cols
    ; rcx -- float const * data
    push r15
    push r14
    push r13
    push r12
    push rbx
    mov r15,rdi                 ; r15=expr
    mov r14,rsi                 ; r14=rows
    mov r13,rdx                 ; r13=cols
    mov r12,rcx                 ; r12=data, now stack is aligned
    lea     rdi,    [4*rsi]
    call    malloc  WRT ..plt
    mov rbx,rax                 ; rbx=malloc(rows*sizeof(float))
    .before_for:
    push rbp
    sub rsp,8
    xor rbp,rbp                 ; rbp=i ( for (unsigned long i = 0; i < rows; ++i))
    .check_for:
    cmp rbp,r14
    jnb .end
    
    .body_for:                  ; expr_eval_one(results + i, expr, data + (i*cols));
    mov rdi,rbp
    shl rdi,2
    add rdi,rbx                 ; rdi=results+i
    mov rsi,r15                 ; rsi=expr
    mov rax,r13
    mul rbp
    shl rax,2
    add rax,r12
    mov rdx,rax                 ; rdx=data+(i*cols)
    call expr_eval_one
    
    inc rbp
    jmp .check_for
    
    .end:
    add rsp,8
    pop rbp
    mov rax,rbx
    pop rbx
    pop r12
    pop r13
    pop r14
    pop r15
    ret
