[bits 64]

section .text

extern malloc
extern free
extern memcmp
extern __printf_chk ; może printf zadziała
extern putchar
extern realloc

; static unsigned long parseBigendianQword(const char *n, int length=16)
; RDI nie musi wskazywać na istniejącą lokalizacje!!!!! (skanujemy od tyłu)
_ZL19parseBigendianQwordPKci:
    xor     rdx, rdx        ; i
    xor     rax, rax        ; result
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
    lea     rcx, [rdx*4]  ; ecx=i*4
    movsx   r8, r8d
    inc     rdx     ; ++i
    sal     r8, cl  ; char<<=i*4
    or      rax, r8 ; znak doklejony do wyniku
.check:
    cmp     rsi, rdx        ; length> i
    jg      .for
    ret


global	_ZN7Natural5shiftEm

_ZN7Natural5shiftEm:
    push    r14
    push    r13
    push    r12
    push    rbp
    push    rbx
    mov     r14, rsi        ; i
    mov     rbp, rdi        ; this
    mov     r12, QWORD [rdi]    ; oldBegin = this->begin
    mov     rbx, QWORD [rdi+8]  ; size = this->end
    sub     rbx, r12        ; size = size- oldBegin
    sar     rbx, 3  ; size/8
    lea     r13, [rbx+rsi]
    sal     r13, 3
    mov     rdi, r13        ; r13=rdi=size for malloc
    call    malloc
    add     r13, rax        ; end=begin+malloc(...)
    mov     QWORD [rbp+0], rax  ; this->begin = begin
    mov     QWORD [rbp+8], r13  ; this->end = end

    xor     rdx, rdx        ; ii=0
    jmp     .check_clear_loop
.clear_loop:
    mov     QWORD [rax+rdx*8], 0        ; clean first i qwords
    inc     rdx
.check_clear_loop:
    cmp     rdx, r14
    jne     .clear_loop
    lea     rdx, [rax+rdx*8]
    xor     rax, rax        ; ii = 0
    jmp     .check_move_loop
.move_loop:
    mov     rcx, QWORD [r12+rax*8]
    mov     QWORD [rdx+rax*8], rcx     ; begin[ii+i]=oldBegin[ii];
    inc     rax
.check_move_loop:
    cmp     rax, rbx
    jne     .move_loop

    mov     rdi, r12
    pop     rbx
    pop     rbp
    pop     r12
    pop     r13
    pop     r14
    jmp     free    ; free(oldBegin)


global	_ZN7NaturalC2Ev

_ZN7NaturalC2Ev:
    push    rbx
    mov     rbx, rdi        ; rbx=this
    mov     rdi, 8
    call    malloc          ; malloc(8)
    lea     rdx, [rax+8]    ; end
    mov     QWORD [rbx], rax    ; this->begin = malloc(8)
    mov     QWORD [rbx+8], rdx  ; this->end = end
    mov     QWORD [rax], 0      ; *begin=0
    pop     rbx
    ret

global	_ZN7NaturalC1Ev
_ZN7NaturalC1Ev	equ	_ZN7NaturalC2Ev

global	_ZN7NaturalC2Em

_ZN7NaturalC2Em:
    push    rbp
    push    rbx
    mov     rbp, rsi        ; rbp=n
    mov     rbx, rdi        ; rbx=this
    mov     rdi, 8
    push    rax     ; padding
    call    malloc
    lea     rdx, [rax+8]    ; rdx=end
    mov     QWORD [rbx], rax    ; this->begin = begin
    mov     QWORD [rbx+8], rdx  ; this->end = end
    mov     QWORD [rax], rbp    ; *begin=n
    pop     rdx
    pop     rbx
    pop     rbp
    ret

global	_ZN7NaturalC1Em
_ZN7NaturalC1Em	equ	_ZN7NaturalC2Em

global	_ZN7NaturalC2EPKc

_ZN7NaturalC2EPKc:
    push    r15
    push    r14
    push    r13
    push    r12
    push    rbp
    push    rbx
    xor     rax, rax
    or      rcx, -1
    xor     r13, r13        ; size_for_malloc
    mov     r12, rsi        ; r12=n
    mov     rbp, rdi        ; rbp=this
    mov     rdi, rsi        ; rdi=n

    sub     rsp, 24
    repnz scasb

    not     rcx
    lea     rbx, [rcx-1]    ; l = strlen(n)
    test    bl, 15
    mov     rax, rbx
    setne   r13b    ; part_of_size_for_malloc (part qword)
    shr     rax, 4
    add     r13, rax
    sal     r13, 3
    mov     rdi, r13        ; rdi=size_for_malloc
    call    malloc
    mov     rdx, rbx        ; rdx=l
    mov     QWORD [rbp], rax  ; this->begin = begin
    add     r13, rax        ; r13=end
    mov     r14, rax        ; r14=begin
    movsx   rax, ebx        ; rax = l
    mov     QWORD [rbp+8], r13  ; this->end = end
    sub     rdx, rax
    lea     rax, [r12-16+rax]
    xor     rbp, rbp        ; aux (0)
    mov     QWORD [rsp], rdx
    mov     QWORD [rsp+8], rax
    jmp     .for_check
.for:
    mov     rax, QWORD [rsp]
    mov     rdi, QWORD [rsp+8]
    mov     rsi, 16
    add     rax, rbp
    sub     rdi, rbp
    add     rbp, 16
    shr     rax, 4
    lea     r15, [r14+rax*8]
    call    _ZL19parseBigendianQwordPKci    ; begin[(l-i)/16]=parseBigendianQword(&n[i-16]);
    mov     QWORD [r15], rax
.for_check:
    mov     esi, ebx
    sub     esi, ebp
    cmp     esi, 15
    jg      .for
    test    esi, esi
    jle     .end_for
    movsx   rax, esi
    lea     rdi, [r12-16+rax]
    call    _ZL19parseBigendianQwordPKci
    mov     QWORD [r13-8], rax  ; end[-1]=parseBigendianQword(&n[i-16],i);
.end_for:
    add     rsp, 24
    pop     rbx
    pop     rbp
    pop     r12
    pop     r13
    pop     r14
    pop     r15
    ret

global	_ZN7NaturalC1EPKc
_ZN7NaturalC1EPKc	equ	_ZN7NaturalC2EPKc

global	_ZN7NaturalC2ERKS_

_ZN7NaturalC2ERKS_:
    push    r12
    push    rbp
    push    rbx
    mov     r12, rdi        ; r12=this
    mov     rbp, rsi        ; rbp=n
    mov     rbx, QWORD [rsi+8]  ; size= n->end
    sub     rbx, QWORD [rsi]    ; size-= n->begin
    and     rbx, -8 ; padding (sometimes helps...)
    mov     rdi, rbx        ; rdi=size
    call    malloc
    lea     rdx, [rax+rbx]  ; rdx=end
    mov     QWORD [r12], rax    ; this->begin = begin
    mov     rcx, rbx        ; rcx=size
    mov     rsi, QWORD [rbp+0]  ; rsi=n->begin
    mov     rdi, rax        ; rdi = begin
    mov     QWORD [r12+8], rdx  ; this->end = end
    rep movsb               ; memcpy(...)
    pop     rbx
    pop     rbp
    pop     r12
    ret

global	_ZN7NaturalC1ERKS_
_ZN7NaturalC1ERKS_	equ	_ZN7NaturalC2ERKS_

global	_ZN7NaturalaSERKS_

_ZN7NaturalaSERKS_:
    push    r12
    push    rbp
    push    rbx
    mov     r12, rsi        ; r12=n n
    mov     rbp, rdi        ; rbp=this
    mov     rdi, QWORD [rdi]    ; rdi = this->begin
    call    free
    mov     rbx, QWORD [r12+8]  ; size= n->end
    sub     rbx, QWORD [r12]    ; size-= n->begin
    and     rbx, -8
    mov     rdi, rbx
    call    malloc
    lea     rdx, [rax+rbx]  ; rdx=end
    mov     QWORD [rbp+0], rax  ; this->begin = begin
    mov     rdi, rax        ; rdi = begin
    mov     rsi, QWORD [r12]    ; rsi =n->begin
    mov     rcx, rbx        ; rcx = size
    mov     rax, rbp        ; rax = this (result)
    mov     QWORD [rbp+8], rdx  ; this->end = end
    rep movsb               ; memcpy(...)
    pop     rbx
    pop     rbp
    pop     r12
    ret


global	_ZNK7NaturaleqERKS_

_ZNK7NaturaleqERKS_:
    mov     r8, QWORD [rdi]     ; r8 = begin = this->begin
    mov     rdx, QWORD [rdi+8]  ; rdx = size = this->end
    xor     rax, rax        ; result = false
    mov     rdi, QWORD [rsi]    ; rdi = nBegin = n->begin
    mov     rcx, QWORD [rsi+8]  ; nSize = rcx = n->end
    sub     rdx, r8         ; size-= begin
    sub     rcx, rdi        ; nSize-= nBegin
    sar     rdx, 3
    sar     rcx, 3
    cmp     rdx, rcx        ; size == nSize
    jne     .done
    push    rcx
    mov     rsi, rdi        ; rsi = nBegin
    sal     rdx, 3
    mov     rdi, r8
    call    memcmp
    pop     rsi
    test    eax, eax    ; return memcmp(begin,n.begin,size*sizeof(unsigned long))==0;
    sete    al
.done:
    ret


global	_ZNK7NaturalneERKS_

_ZNK7NaturalneERKS_:
    push    r8
    call    _ZNK7NaturaleqERKS_
    pop     r9
    xor     eax, 1  ; return !(*this==n);
    ret

section .data
number_without_pad: db	"%lx", 0
number_with_pad: db	"%.16lx", 0
section .text

global	_ZNK7Natural5PrintEv

_ZNK7Natural5PrintEv:
    push    rbp
    push    rbx
    push    r11
    mov     rbp, rdi        ; rbp = this
    mov     rsi, number_without_pad
    mov     rax, QWORD [rdi+8]  ; rax = this->end
    mov     rdi, 1
    mov     rdx, QWORD [rax-8]  ; printULong(*(end-1));
    xor     rax, rax
    call    __printf_chk
    mov     rbx, QWORD [rbp+8]  ; i = this->end
    sub     rbx, 16 ; i-=16
    jmp     .check
.for:
    mov     rdx, QWORD [rbx]    ; rdx=*i
    mov     rsi, number_with_pad
    mov     rdi, 1
    xor     rax, rax
    sub     rbx, 8  ; i-=8
    call    __printf_chk    ; printULongWithPad(*i);
.check:
    cmp     rbx, QWORD [rbp+0]  ; i >= this->begin
    jae     .for

    pop     r10
    pop     rbx
    pop     rbp
    mov     rdi, 10 ; '\n'
    jmp     putchar


global	_ZNK7Natural4SizeEv

_ZNK7Natural4SizeEv:
    mov     rcx, QWORD [rdi]    ; rcx = this->begin
    mov     rax, QWORD [rdi+8]  ; rax = this->end
    sub     rax, rcx
    sar     rax, 3
    dec     rax
    mov     rdx, rax
    lea     rdi, [rcx+rdx*8]
    xor     rdx, rdx        ; i = 0
    jmp     .nothing_to_multiply
.check_multiply:
    inc     rdx
    imul    r8, rdx, -8
    cmp     QWORD [rdi+8+r8], 0
    je      .nothing_to_multiply
.do_multiply:
    mov     rdi, rsi        ;  selectedQword
    mov     rsi, rsi
    xor     rax, rax        ; result
    sal     rdi, 6
    mov     rdx, QWORD [rcx+rsi*8]
    jmp     .check_done
.nothing_to_multiply:
    mov     rsi, rax
    sub     rsi, rdx
    test    rsi, rsi
    jg      .check_multiply
    jmp     .do_multiply
.add_rest:
    shr     rdx,1     ; n
    inc     rax     ; result
.check_done:
    test    rdx, rdx        ; n
    jne     .add_rest
    add     rax, rdi
    ret


global	_ZNK7NaturalcvbEv

_ZNK7NaturalcvbEv:
    call    _ZNK7Natural4SizeEv
    test    rax, rax
    setne   al      ; return Size()!=0;
    ret


global	_ZNK7NaturalltERKS_

_ZNK7NaturalltERKS_:
    push    r12
    push    rbp
    push    rbx
    mov     rbp, rsi        ; rbp = n
    mov     rbx, rdi        ; rbx = this
    call    _ZNK7Natural4SizeEv     ; *this.Size()
    mov     rdi, rbp
    mov     r12, rax
    call    _ZNK7Natural4SizeEv     ; n.Size()
    cmp     r12, rax        ; compare results
    mov     dl, 1   ; result = true (and return) or...
    jb      .return
    mov     dl, 0   ; result = false (and return) or ...
    ja      .return

    ; perform real comparison
    mov     rsi, QWORD [rbx]    ; rsi = this->begin
    mov     rax, QWORD [rbx+8]  ; rax = this->end
    xor     rcx, rcx        ; rcx = i = 0
    sub     rax, rsi        ; rax = his->end - this->begin
    sar     rax, 3          ; rax = size (by qword)
    dec     rax
    mov     rdx, rax
    sal     rdx, 3
    jmp     .check_for
.for:
    mov     rdi, QWORD [rbp+0]  ; rdi = n->begin
    mov     r8, QWORD [rsi+rdx]
    inc     rcx     ; ++i
    mov     rdi, QWORD [rdi+rdx]
    sub     rdx, 8
    cmp     r8, rdi ; if(begin[i]<n.begin[i]) return true;
    jb      .return_true
.check_for:
    cmp     rax, rcx
    jns     .for
    xor     rdx, rdx        ; result = false
    jmp     .return         ; return false;
.return_true:
    mov     dl, 1   ; result = true
.return:
    mov     al, dl  ; result
    pop     rbx
    pop     rbp
    pop     r12
    ret             ; return result


global	_ZNK7NaturalgeERKS_

_ZNK7NaturalgeERKS_:
    call    _ZNK7NaturalltERKS_
    xor     rax, 1  ; return !(*this<n);
    ret


global	_ZNK7NaturalleERKS_

_ZNK7NaturalleERKS_:
    push    rbp
    push    rbx
    mov     rbp, rsi        ; rbp = n
    mov     rbx, rdi        ; rbx = this
    push    rax             ; padding
    call    _ZNK7NaturalltERKS_     ; *this<n
    test    al, al
    jne     .return_true
    mov     rsi, rbp        ; rsi = n
    mov     rdi, rbx        ; rdi = this
    pop     rbp     ; padding
    pop     rbx
    pop     rbp
    jmp     _ZNK7NaturaleqERKS_   ; return *this<n || *this==n;
    ; dead

.return_true:
    mov     al, 1
    pop     rbx     ; padding
    pop     rbx
    pop     rbp
    ret


global	_ZNK7NaturalgtERKS_

_ZNK7NaturalgtERKS_:
    push    rax     ; padding
    call    _ZNK7NaturalleERKS_
    pop     rdx
    xor     eax, 1  ; return !(*this<=n);
    ret


global	_ZN7Natural6resizeEm

_ZN7Natural6resizeEm:
    push    rbp
    push    rbx
    lea     rbp, [rsi*8]    ; rbp = size in bytes
    mov     rbx, rdi        ; rbx = this
    mov     rsi, rbp        ; rsi = size in bytes
    push    rcx             ; padding
    mov     rdi, QWORD [rdi]    ; rdi = this->begin
    call    realloc
    add     rbp, rax            ; rbp = end = begin+size
    mov     QWORD [rbx], rax    ; this->begin = begin
    mov     QWORD [rbx+8], rbp  ; this->end = end
    pop     rsi     ; padding
    pop     rbx
    pop     rbp
    ret


global	_ZN7Natural6shrinkEv

_ZN7Natural6shrinkEv:
    mov     rdx, QWORD [rdi]    ; rdx = this->begin
    add     rdx, 8
.while:
    mov     rax, QWORD [rdi+8]  ; rax = this->end
    cmp     rdx, rax
    jae     .done
    cmp     QWORD [rax-8], 0
    jne     .done
    sub     rax, 8  ; --end
    mov     QWORD [rdi+8], rax  ; while(begin+1<end && end[-1]==0UL) --end;
    jmp     .while
.done:
    ret


global	_ZNK7NaturalplERKS_

_ZNK7NaturalplERKS_:
    push    r15
    push    r14
    push    r13
    push    r12
    push    rbp
    push    rbx
    mov     r12, rdx        ; r12 = n
    mov     rbx, rdi        ; rbx = result
    sub     rsp, 72         ; powinno wystarczyć (+ padding)
    mov     QWORD [rsp], rsi ; this
    call    _ZN7NaturalC1Ev
    mov     r8, QWORD [rsp]
    mov     rbp, QWORD [r12+8]  ; rbp = rightSize = n->end
    sub     rbp, QWORD [r12]    ; rbp = rightSize-= n->begin
    mov     rdi, QWORD [rbx]    ; rdi = result->begin
    mov     r15, QWORD [r8+8]   ; r15 = leftSize = this->end
    sub     r15, QWORD [r8]     ; r15 = leftSize-= this->begin
    sar     rbp, 3  ; rightSize/=8
    sar     r15, 3  ; leftSize/=8
    cmp     rbp, r15        ; rightSize, leftSize
    mov     rax, r15
    cmovae  rax, rbp        ; rax = maxSize = max(leftSize,rightSize)
    lea     rdx, [8+rax*8]
    mov     rsi, rdx        ; rsi = (maxSize+1)*8
    mov     QWORD [rsp+8], rdx  ; persist
    call    realloc
    mov     rdx, QWORD [rsp+8]  ; reload
    mov     QWORD [rbx], rax    ; result->begin = begin
    mov     rcx, rax        ; rcx = i = begin
    mov     r8, QWORD [rsp]     ; r8 = this
    add     rdx, rax        ; rdx = begin + size... = end
    mov     QWORD [rbx+8], rdx  ; result->end = end
    jmp     .check_initial_clear_for
.initial_clear_for:
    mov     QWORD [rcx], 0     ; for(unsigned long *i=result.begin;i<result.end;++i) *i=0UL;
    add     rcx, 8
.check_initial_clear_for:
    cmp     rcx, rdx        ; begin, end
    jb      .initial_clear_for

    mov     rdi, rax        ; rdi = begin
    lea     rcx, [r15*8]    ; rcx = size (bytes)
    mov     rsi, QWORD [r8]     ; rsi = this->begin
    xor     rax, rax        ; rax = i = 0
    xor     rdx, rdx        ; rdx = carry = 0
    rep movsb       ; memcpy(result.begin,begin,leftSize*(sizeof(unsigned long)));
    jmp     .first_for_check

.first_for:
    mov     rcx, QWORD [rbx]    ; rcx = result->begin
    mov     QWORD [rsp+48], rdx ; carry
    mov     QWORD [rsp+24], 0
    mov     QWORD [rsp+40], 0
    mov     rdi, QWORD [rsp+24] ; rdi = r = 0
    mov     QWORD [rsp+56], 0
    lea     rcx, [rcx+rax*8]        ; rcx = &result.begin[i]
    mov     rsi, QWORD [rcx]    ; rsi = result.begin[i]
    mov     QWORD [rsp+16], rsi
    mov     rsi, QWORD [r12]    ; rsi = n.begin
    mov     rsi, QWORD [rsi+rax*8]      ; rsi = n.begin[i]
    mov     QWORD [rsp+32], rsi
    mov     rsi, QWORD [rsp+16] ; rsi = r = result.begin[i]
    add     rsi, QWORD [rsp+32] ; r+= n.begin[i] (lower 64)
    adc     rdi, QWORD [rsp+40] ; rdi = carry1 (upper 64)
    add     rsi, QWORD [rsp+48] ; r+= carry (lower 64)
    adc     rdi, QWORD [rsp+56] ; rdi += carry (upper 64)
    inc     rax     ; ++i
    mov     QWORD [rcx], rsi    ; result.begin[i] = r (lower 64)
    mov     rdx, rdi        ; carry = r (upper 64)
.first_for_check:
    cmp     rax, rbp        ; i, rightSize
    jne     .first_for

    xor     rcx, rcx        ; rcx = i = 0 (displacement)
    sal     rax, 3
    jmp     .second_for_check
.second_for:
    lea     rdx, [rcx+rax]  ; rdx = i + displacement
    add     rdx, QWORD [rbx]    ; rdx = &result.begin[i]
    xor     r14, r14
    mov     rdi, r14        ; rdi = 0
    mov     r13, QWORD [rdx]    ; r13 = r = result.begin[i]
    mov     rsi, r13        ; rsi = r
    add     rsi, 1  ; r+=1 (carry)
    adc     rdi, 0  ; rdi = carry (upper 64)
    mov     QWORD [rdx], rsi    ; result.begin[i] = r (lower 64)
    add     rcx, 8  ; ++i
    mov     rdx, rdi        ; carry = r (upper 64)
.second_for_check:
    test    rdx, rdx        ; carry
    jne     .second_for

    mov     rdi, rbx        ; rdi = result
    call    _ZN7Natural6shrinkEv   ; result.shrink();
    add     rsp, 72
    mov     rax, rbx        ; rax = result
    pop     rbx
    pop     rbp
    pop     r12
    pop     r13
    pop     r14
    pop     r15
    ret


global	_ZN7NaturalD2Ev

_ZN7NaturalD2Ev:
    mov     rdi, QWORD [rdi]    ;, this->begin
    jmp     free

global	_ZN7NaturalD1Ev
_ZN7NaturalD1Ev	equ	_ZN7NaturalD2Ev

global	_ZN7NaturalpLERKS_

_ZN7NaturalpLERKS_:
    push    rbx
    mov     rdx, rsi        ; rdx = n
    mov     rbx, rdi        ; rbx = this
    mov     rsi, rdi        ; rsi = this
    sub     rsp, 32 ; place for result
    lea     rdi, [rsp+16]
    call    _ZNK7NaturalplERKS_
    lea     rsi, [rsp+16]   ; rsi = result
    mov     rdi, rbx        ; rdi = this
    call    _ZN7NaturalaSERKS_      ; return *this=*this+n;
    lea     rdi, [rsp+16]   ; temporary object
    mov     QWORD [rsp+8], rax  ; result
    call    _ZN7NaturalD1Ev ; destroy temporary object !!!!!!!!!!!!!!!
    mov     rax, QWORD [rsp+8]  ; result
    add     rsp, 32
    pop     rbx
    ret


global	_ZN7NaturalppEi

_ZN7NaturalppEi:
    push    rbp
    push    rbx
    mov     rbp, rsi        ; rbp = this
    mov     rbx, rdi        ; rbx = result
    sub     rsp, 24 ; place for result (temporary object)
    call    _ZN7NaturalC1ERKS_     ; Natural result(*this); (construct result)
    mov     rdi, rsp
    mov     rsi, 1
    call    _ZN7NaturalC1Em ; make temporary 1
    mov     rsi, rsp
    mov     rdi, rbp
    call    _ZN7NaturalpLERKS_      ; *this+=1;
    mov     rdi, rsp
    call    _ZN7NaturalD1Ev ; destroy temporary
    add     rsp, 24
    mov     rax, rbx        ; rax = result
    pop     rbx
    pop     rbp
    ret                     ; return result;


global	_ZN7NaturalppEv

_ZN7NaturalppEv:
    push    rbx
    mov     rbx, rdi        ; rbx = this
    mov     rsi, 1
    sub     rsp, 32
    lea     rdi, [rsp+16]
    call    _ZN7NaturalC1Em ; make temporary 1
    lea     rsi, [rsp+16]
    mov     rdi, rbx        ; rdi = this
    call    _ZN7NaturalpLERKS_      ; return *this+=1;
    lea     rdi, [rsp+16]
    mov     QWORD [rsp+8], rax  ; persist result
    call    _ZN7NaturalD1Ev ; destroy temporary
    mov     rax, QWORD [rsp+8]  ; reload result
    add     rsp, 32
    pop     rbx
    ret


global	_ZNK7NaturalmlERKS_

_ZNK7NaturalmlERKS_:
    push    r15
    push    r14
    push    r13
    push    r12
    push    rbp
    push    rbx
    mov     r15, rsi        ; r15 = this
    xor     r12, r12        ; r12 = s = 0 (for shift)
    mov     rbx, rdx        ; rbx = n
    sub     rsp, 40
    mov     QWORD [rsp+8], rdi  ; result
    call    _ZN7NaturalC1Ev
    mov     rbp, QWORD [r15]    ; i, this->begin
    jmp     .for_external_check
.for_external:
    lea     rdi, [rsp+16]   ; temporary object starts here !!!!!!!!!
    call    _ZN7NaturalC1Ev
    mov     rsi, QWORD [rbx+8]  ; rsi = n->end
    sub     rsi, QWORD [rbx]    ; rsi-= n->begin (rsi = size) (still in bytes)
    lea     rdi, [rsp+16]   ; temporary
    sar     rsi, 3  ; size/=8
    inc     rsi     ; ++size
    call    _ZN7Natural6resizeEm    ; line.resize(n.end-n.begin+1);
    mov     rsi, QWORD [rbx]    ; rsi = j = n->begin
    mov     rdi, QWORD [rbx+8]  ; rdi = n->end
    mov     rcx, QWORD [rsp+16] ; rcx = ii = line.begin (including base)
    jmp     .for_internal_check
.for_internal:
    mov     rax, QWORD [rsi]
    mov     r13, QWORD [rcx]
    xor     r14, r14
    mul     QWORD [rbp]         ; *i * *j
    add     rax, r13        ; r+=line.begin[ii];
    adc     rdx, r14        ; r+= carry (upper 64)
    mov     QWORD [rcx], rax    ; line.begin[ii]=r&(~0UL);
    add     rsi, 8  ; ++j
    mov     QWORD [rcx+8], rdx  ; line.begin[ii+1]=r>>64;
    add     rcx, 8  ; ++ii
.for_internal_check:
    cmp     rsi, rdi        ; j, n->end
    jb      .for_internal

    lea     rdi, [rsp+16]
    mov     rsi, r12        ; s (for shift)
    add     rbp, 8  ; ++i
    inc     r12     ; s (for shift)
    call    _ZN7Natural5shiftEm     ; line.shift(s);
    mov     rdi, QWORD [rsp+8]
    lea     rsi, [rsp+16]
    call    _ZN7NaturalpLERKS_      ; result+=line;
    lea     rdi, [rsp+16]
    call    _ZN7NaturalD1Ev
.for_external_check:
    cmp     rbp, QWORD [r15+8]  ; i, this->end
    jb      .for_external

    mov     rax, QWORD [rsp+8]
    add     rsp, 40
    pop     rbx
    pop     rbp
    pop     r12
    pop     r13
    pop     r14
    pop     r15
    ret


global	_ZN7NaturalmLERKS_

_ZN7NaturalmLERKS_:
    push    rbx
    mov     rdx, rsi        ; rdx = n
    mov     rbx, rdi        ; rbx = this
    mov     rsi, rdi        ; rsi = this
    sub     rsp, 32
    lea     rdi, [rsp+16]
    call    _ZNK7NaturalmlERKS_    ; return *this=*this*n;
    lea     rsi, [rsp+16]
    mov     rdi, rbx
    call    _ZN7NaturalaSERKS_
    lea     rdi, [rsp+16]
    mov     QWORD [rsp+8], rax  ; result
    call    _ZN7NaturalD1Ev
    mov     rax, QWORD [rsp+8]  ; result
    add     rsp, 32
    pop     rbx
    ret

