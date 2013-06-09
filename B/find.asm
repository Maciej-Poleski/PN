bits 64

section .text

global _start

; r15=length
; r14=path
c:
    mov rdi,r14
    mov byte [rdi+r15],0           ;path[length]='\0'
    mov rax,2
    mov rsi,131072                 ; O_NOFOLLOW
    syscall
    
    test rax,rax
    jns .d
    
    cmp rax,-20                    ;if(errno==ENOTDIR)
    jne .e
    
    mov rsi,a
    mov rcx,a.end-a
    jmp .f
    
    .e:
    cmp rax,-40                    ;if(errno==ELOOP)
    je .d
    
    .b:
    mov rsi,b
    mov rcx,b.end-b
    
    .f:
    mov rax,rdi
    mov rbx,rcx
    lea rdi,[rdi+r15]
    rep movsb
    
    mov rdi,1
    lea rsi,[rax-7]
    lea rdx,[7+r15+rbx]
    mov rax,1
    syscall                     ; write error message
    ret
    
    ; od tego miejsca rejestry znów są czyste
    .d:
    mov byte [rdi+r15],0xa      ; path[length]='\n';
    
    lea rdx,[r15+1]
    mov rsi,rdi                 ; rsi=path
    mov rdi,1
    mov r13,rax                 ; r13=fd
    mov rax,1
    syscall                     ; write path
    je .g
    
    sub rsp,300 & (~0xf)            ; rsp=buf
    .h:
    mov rdi,r13
    mov rsi,rsp
    mov rdx,300 & (~0xf)
    mov rax,78
    syscall                     ; rax = getdents(fd, buf, BUF_SIZE);
    
    test rax,rax                ; rax <=BUFF_SIZE=300 & (~0xf) , rax>0 -> rax=ax
    jg .i
    add rsp,300 & (~0xf)
    mov rdi,r13
    mov rax,3
    syscall
    .g:
    ret
    
    ; state: r12,dx,rsp,r14,r15,r13
    .i:
    xor r12,r12                  ; r12w=bpos
    mov dx,ax                    ; dx=nread
    .j:
    cmp r12w,dx
    jnl .h
    lea r10,[rsp+r12]           ; r10=d=buf+bpos
    add r12w,[r10+16]           ; bpos += d->d_reclen
    
    mov dword ebx,[r10+18]      ; ebx=d->d_name[0..3]
    and ebx,0xffffff            ; ebx=d->d_name[0..2]
    cmp ebx,`..\0\0`
    je  .j
    cmp bx,`.\0`
    je  .j
    
    mov rbx,r15                 ; rbx=length+shift
    
    cmp byte [r14+r15-1],'/'    ; if(path[length-1]!='/')
    je .k
    mov byte [r14+r15],'/'
    inc rbx
    
    .k:
    lea rdi,[r14+rbx]           ; rdi=path+length+shift
    lea rsi,[r10+18]            ; rsi=d->d_name  !!!!!!!! adres tego pola niekonicznie jest adresem napisu
    xor rcx,rcx                 ; rcx=strlen(d->d_name)
    .l:
    lodsb
    stosb
    inc rcx
    test al,al
    jnz .l
    dec rcx
    
    push r12
    push rdx
    push r15
    push r13
    lea r15,[rbx+rcx]           ; r15=length+shift+strlen(d->d_name)
    call c
    pop r13
    pop r15
    pop rdx
    pop r12
    
    jmp .j




_start:
    mov rsi,[rsp+16]
    sub rsp,4096+64
    mov rax, 'find: `'
    mov [rsp],rax
    
    lea rdi,[rsp+7]
    xor r15,r15         ; r15=length
    .l:
    lodsb
    stosb
    inc r15
    test al,al
    jnz .l
    dec r15
    
    lea r14,[rsp+7]     ; r14=path
    call c

    mov rax,60
    xor rdi,rdi
    syscall
    
    ; tutaj nie dotrzemy
    
    a: db "': Not a directory",0xa
    .end:
    b: db "': No such file or directory",0xa
    .end: