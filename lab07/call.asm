BITS	64
GLOBAL	call

; call(f) makes sure that the stack is page-aligned and then calls f
; first argument of f is replaced by the pointer to f
; following 5 arguments (passed in registers) are left intact
; further arguments are DESTROYED
call:
	push	rdi
	mov		rdi,	rsp
	shr		rsp,	12
	shl		rsp,	12
	push	rdi
	mov		rdi,	[rdi]
	call	rdi
	pop		rsp
	pop		rdi
	ret
