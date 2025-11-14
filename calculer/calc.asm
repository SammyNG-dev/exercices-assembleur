section .data
    message db 'Resultat :    ', 0Ah
    len_msg equ $ - message
    msg2 db 'Resultat 2 :    ', 0Ah
    len_msg2 equ $ - msg2

section .text
    global _start

_start:

    mov rax, 20
    add rax, 12
    sub rax, 5
    
    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'

    mov [message + 11], al
    mov [message + 12], dl

    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, len_msg
    syscall

    mov rax, 50
    add rax, 20

    mov rbx, 10
    mov rdx, 0
    div rbx
    add al, '0'
    add dl, '0'

    mov [msg2 + 13], al
    mov [msg2 + 14], dl

    mov rax, 1
    mov rdi, 1
    mov rsi, msg2
    mov rdx, len_msg2
    syscall

    mov rax, 60
    mov rdi, 0
    syscall