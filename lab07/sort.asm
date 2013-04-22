BITS        64
SECTION     .text

; void sort(unsigned long * data, unsigned long count)
; {
;     if(count<2)
;         return;
;     auto pivot=data[count/2];
;     auto left=data,center=data,right=data;
;     for(auto i=data; i<data+count; ++i)
;     {
;         assert(left<=center);
;         assert(center<=right);
;         if(*i>pivot)
;             ++right;
;         else if(*i==pivot)
;         {
;             swap(*center++,*i);
;             ++right;
;         }
;         else
;         {
;             assert(*i<pivot);
;             auto c=*i;
;             *i=*center;
;             *center=*left;
;             *left=c;
;             ++left;
;             ++center;
;             ++right;
;         }
;     }
;     assert(right==data+count);
;     ::sort(data,left-data);
;     ::sort(center,right-center);
; }

GLOBAL      sort
; adres tablicy w rdi, długość w rsi
sort:
    ; rdi=data
    ; rsi=count
    cmp   rsi,  2
    jb    .end
    
    mov   rax,  rsi		; rax=count
    shr   rax,  1               ; rax=count/2
    mov   rax,  [rdi+rax*8]	; rax=data[count/2]
    ; rax=pivot
    mov   rcx,  rdi
    mov   rdx,  rdi
    ;mov   r8,   rdi
    ; rcx=left
    ; rdx=center
    ; r8=right
    mov   r11,  rdi
    ; r11=i
    lea   r10,  [rdi+rsi*8]
    ; r10=data+count
  .for:
    cmp   r11,  r10
    jnb   .for_end
    
  .cmp_gt:
    ; if(*i>pivot)
    cmp   [r11],rax
    jna   .cmp_eq
    ;add   r8,   8
    add   r11,8
    jmp .for
    
  .cmp_eq:
    ; if(*i==pivot)
    jne   .cmp_lt
    mov   r9,   [rdx]           ; r9=*center
    ;add   r8,   8               ; ++right
    mov   r8, [r11]
    mov  qword [r11], r9        ; swap(r9,*i)
    add   r11,8
    mov  [rdx], r8              ; *center=r9
    add   rdx,  8               ; ++center
    jmp .for
    
  .cmp_lt:                      ; true
    ; if(*i<pivot)
    ;mov   r9,   [rcx]           ; r9=*left
    ;xchg  r9,   [rdx]           ; swap(r9,*center)
    ;xchg  r9,   [r11]           ; swap(r9,*i)
    ;xchg  r9,   [rcx]           ; swap(r9,*left)
    ;add   r8,   8               ; ++right
;     mov   r9,   [rdx]           ; r9=*center
;     mov   r8, [r11]             ; push *i
;     mov   [r11],r9              ; *i=r9
;     mov   [rcx], r8             ; pop *left
;     add   r11,  8               ; ++i
;     mov   r9,   [rcx]           ; r9=*left
;     mov   [rdx],r9              ; *center=r9
;     add   rcx,  8               ; ++left
;     add   rdx,  8               ; ++center
    mov r8,  qword [r11]           ; push *i
    mov   r9,   [rdx]           ; r9=*center
    mov   [r11],r9              ; *i=r9
    add   r11,8
    mov   r9,   [rcx]           ; r9=*left
    mov   [rdx],r9              ; *center=r9
    add   rdx,  8               ; ++center
    mov   qword [rcx],r8           ; pop *left
    add   rcx,  8               ; ++left
    ;add   r8,   8               ; ++right
    jmp   .for
    
  .for_end:
    push  rdx
    sub   r10,   rdx
    mov   rsi,  rcx
    shr   r10,   3
    sub   rsi,  rdi
    push  r10
    shr   rsi,  3
    call sort
    pop   rsi
    pop   rdi
    jmp   sort
    
  .end:
    ret