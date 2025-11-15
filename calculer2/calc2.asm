section .data
    message db 'Resultat :      ', 0Ah
    len_message equ $ - message

section .text
    global _start

_start: 

    mov rax, 455
    add rax, 2

    mov rbx, 100
    mov rdx, 0
    div rbx
    add al, '0'

    mov [message + 11], al

    mov rax, rdx
    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'

    mov [message + 12], al
    mov [message + 13], dl

    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, len_message
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
