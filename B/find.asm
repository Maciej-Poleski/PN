bits 64

section .text

global _start

; r15=length
; r14=path
printDirectory:
    mov rdi,r14
    mov byte [rdi+r15],0           ;path[length]='\0'
    mov rax,2
    xor rsi,rsi
    syscall
    
    test rax,rax
    jns .cont
    cmp rax,-20                    ;if(errno==ENOTDIR)
    
    jne .enoent
    mov rsi,not_a_directory
    mov rcx,not_a_directory.end-not_a_directory
    jmp .write_error
    
    .enoent:
    mov rsi,no_such_file_or_directory
    mov rcx,no_such_file_or_directory.end-no_such_file_or_directory
    
    .write_error:
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
    .cont:
    mov byte [rdi+r15],0xa      ; path[length]='\n';
    
    lea rdx,[r15+1]
    mov rsi,rdi                 ; rsi=path
    mov rdi,1
    mov r13,rax                 ; r13=fd
    mov rax,1
    syscall                     ; write path
    
    sub rsp,300 & (~0xf)            ; rsp=buf
    .for_start:
    mov rdi,r13
    mov rsi,rsp
    mov rdx,300 & (~0xf)
    mov rax,78
    syscall                     ; rax = getdents(fd, buf, BUF_SIZE);
    
    test rax,rax                ; rax <=BUFF_SIZE=300 & (~0xf) , rax>0 -> rax=ax
    jg .for_cont
    add rsp,300 & (~0xf)
    mov rdi,r13
    mov rax,3
    syscall
    ret
    
    ; state: r12,dx,rsp,r14,r15,r13
    .for_cont:
    xor r12,r12                  ; r12w=bpos
    mov dx,ax                    ; dx=nread
    .for_check:
    cmp r12w,dx
    jnl .for_start
    lea r10,[rsp+r12]           ; r10=d=buf+bpos
    add r12w,[r10+16]           ; bpos += d->d_reclen
    
    mov dword ebx,[r10+18]      ; ebx=d->d_name[0..3]
    and ebx,0xffffff            ; ebx=d->d_name[0..2]
    cmp ebx,`..\0\0`
    je  .for_check
    cmp bx,`.\0`
    je  .for_check
    
    mov rbx,r15                 ; rbx=length+shift
    
    cmp byte [r14+r15-1],'/'    ; if(path[length-1]!='/')
    je .for_prepare_recursion
    mov byte [r14+r15],'/'
    inc rbx
    
    .for_prepare_recursion:
    lea rdi,[r14+rbx]           ; rdi=path+length+shift
    lea rsi,[r10+18]            ; rsi=d->d_name  !!!!!!!! adres tego pola niekonicznie jest adresem napisu
    xor rcx,rcx                 ; rcx=strlen(d->d_name)
    .cat:
    lodsb
    stosb
    inc rcx
    test al,al
    jnz .cat
    dec rcx
    
    push r12
    push rdx
    push r15
    push r13
    lea r15,[rbx+rcx]           ; r15=length+shift+strlen(d->d_name)
    call printDirectory
    pop r13
    pop r15
    pop rdx
    pop r12
    
    jmp .for_check




_start:
    mov rsi,[rsp+16]
    sub rsp,4096+64
    mov rax, 'find: `'
    mov [rsp],rax
    
    lea rdi,[rsp+7]
    xor r15,r15         ; r15=length
    .cat:
    lodsb
    stosb
    inc r15
    test al,al
    jnz .cat
    dec r15
    
    lea r14,[rsp+7]     ; r14=path
    call printDirectory

    mov rax,60
    xor rdi,rdi
    syscall
    
    ; tutaj nie dotrzemy
    
    not_a_directory: db "': Not a directory",0xa,0
    .end:
    no_such_file_or_directory: db "': No such file or directory",0xa,0
    .end: