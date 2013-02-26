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
    jna   .end
    
    mov   r15,  rsi		; r15=count
    sar   r15,  1               ; r15=count/2
    mov   r15,  [rdi+r15*8]	; r15=data[count/2]
    ; r15=pivot
    mov   r14,  rdi
    mov   r13,  rdi
    mov   r12,  rdi
    ; r14=left
    ; r13=center
    ; r12=right
    mov   r11,  rdi
    ; r11=i
    mov   r10,  rdi
    add   r10,  rsi
    ; r10=data+count
  .for:
    cmp   r11,  r10
    jnb   .end
    ; if(*i>pivot)
    cmp   [r11],r15
    jna   .cmp_eq
    
  .cmp_eq:
    jne   .cmp_gt
    
  .cmp_gt               ; true
    
  .end:
    ret