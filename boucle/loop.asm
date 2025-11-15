section .data
    msg db 'Resultat :    ', 0Ah
    len_msg equ $ - msg

section .text
    global _start

_start:

    mov rcx, 5
    mov rax, 0

boucle:
    add rax, rcx
    loop boucle
    
    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'

    mov [msg + 11], al
    mov [msg + 12], dl

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len_msg
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
