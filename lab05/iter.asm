[bits 64]

section .text

global yield
global next

; next WILL reenter
next:
  push  rbp
  mov   rbp,rsp
  test [first],1
  je .next_for_first_time
  
  ; we are reentering - unwind and go up to prev
  
  .we_are_reentering:
   ; assume rsp, rbp is as leaved by this (next) function
  test   [rbp+16],1
  jne .done_with_this_loop
  
  mov    [rbp+16],0	; done, but yield can change this decision
  
  ; dopisać kod w zależności od zachowania yield
  
  .next_for_first_time:
  mov [first],0
  ; prepere space on stack
  sub   rsp, 40
  mov   [rbp+8],rdi	; first variable = space for result from yield
  mov   [rbp+16],1	; second variable = perform next iteration?
  
  .main_loop:
  push .we_are_reentering
  jmp    [rsi]		; go ahead to iterator
  
  ; we are done with iterator - break loop
  .done_with_this_loop:
  xor rax,rax
  add rsp,40
  pop rbp
  ret

yield:
  mov rax, [rbp]
  mov [rax+8],rdi	; save yield result


section .bss

global first

first: resd 1