bits 64

section .text

global sleepThreadResumeThread


sleepThreadResumeThread:
; adres powrotu właśnie został zapisany na stosie
push rbx
push rbp
push r12
push r13
push r14
push r15
push rdi
push rsi


; Zapisz rsp w odpowiednim ([rdi]) miejscu
mov [rdi],rsp

; Odczytaj nowy rsp z odpowiedniego ([rsi]) miejsca
mov rsp,[rsi]

; Odczytaj stan wznawianego wątku
pop rsi
pop rdi
pop r15
pop r14
pop r13
pop r12
pop rbp
pop rbx

; ret
ret
