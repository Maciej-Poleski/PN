BITS	64
EXTERN	putchar
; extern emitBraces
;
; GLOBAL	main
;
; SECTION	.text
;
; K:
;     pop rax
;     pop rcx
;     jmp rax
;
; S:
;     pop rax     ; x
;     pop rdi     ; y
;     pop rsi     ; z
;     push rax
;     push rsi
;     call emitBraces
;     pop rcx
;     pop rdx
;     push rax
;     push rcx
;     jmp rdx
;
; ; the 'write 0' combinator
; W0:
; 	mov		dil,	'0'
; 	jmp putchar
;
; ; the 'write 1' combinator
; W1:
; 	mov		dil,	'1'
; 	jmp putchar
;
; ; this should print '01011011'
; print:
; 	push	K
; 	push	W1
; 	push	W0
; 	push	K
; 	push	W1
; 	push	W0
; 	push	S
; 	push	S
; 	push	S
; 	push	S
; 	push	S
; 	push	S
; 	ret
;
; ; wrap it up
; main:
; 	call	print
; 	mov		dil,	10
; 	call	putchar
; 	xor		al,		al
; 	ret
;
