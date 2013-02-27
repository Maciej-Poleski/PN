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
    mov   r8,   rdi
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
    add   r8,   8
    jmp   .for_step
    
  .cmp_eq:
    ; if(*i==pivot)
    jne   .cmp_lt
    mov   r9,   [rdx]           ; r9=*center
    xchg  r9,   [r11]           ; swap(r9,*i)
    mov   [rdx],r9              ; *center=r9
    add   rdx,  8               ; ++center
    add   r8,   8               ; ++right
    jmp   .for_step
    
  .cmp_lt:                      ; true
    ; if(*i<pivot)
    ;mov   r9,   [rcx]           ; r9=*left
    ;xchg  r9,   [rdx]           ; swap(r9,*center)
    ;xchg  r9,   [r11]           ; swap(r9,*i)
    ;xchg  r9,   [rcx]           ; swap(r9,*left)
    push  qword [r11]           ; push *i
    mov   r9,   [rdx]           ; r9=*center
    mov   [r11],r9              ; *i=r9
    mov   r9,   [rcx]           ; r9=*left
    mov   [rdx],r9              ; *center=r9
    pop   qword [rcx]           ; pop *left
    add   rcx,  8               ; ++left
    add   rdx,  8               ; ++center
    add   r8,   8               ; ++right
    ; fall into for_step
    
  .for_step:
    add   r11,  8               ; ++i
    jmp   .for
    
  .for_end:
    push  rdx
    sub   r8,   rdx
    shr   r8,   3
    push  r8
    mov   rsi,  rcx
    sub   rsi,  rdi
    shr   rsi,  3
    call sort
    pop   rsi
    pop   rdi
    jmp   sort
    
  .end:
    ret