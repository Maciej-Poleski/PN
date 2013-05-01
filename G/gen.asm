[bits 64]

section .text

;  pop rax
;  add rsp,0x12341234
;  jmp rax
;
; \x58\x48\x81\xc4\x34\x12\x34\x12\xff\xe0

; pop rsi
; pop rdi
; mov rax,0x1234123412341234
; call rax
; push rax
;
; \x5e\x5f\x48\xb8\x34\x12\x34\x12\x34\x12\x34\x12\xff\xd0\x50


; mov rax,[rsp+0x12341234]
; push rax
;
; \x48\x8b\x84\x24\x34\x12\x34\x12\x50*/

; mov rax,0x1234123412341234
; push rax
; mov rax,0x4321432143214321
; push rax
; ret


; mov rax,0x1234123412341234
; push rax
; mov rcx,0x4321432143214321
; jmp rcx
