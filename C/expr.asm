BITS        64
SECTION     .text
GLOBAL      expr_eval:function

EXTERN      malloc
extern      expr_eval_one

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
    call expr_eval_one wrt ..plt
    
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
